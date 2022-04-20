/**
 * @file mu_sched.c
 *
 * MIT License
 *
 * Copyright (c) 2022 R. Dunbar Poor
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */

// *****************************************************************************
// Includes

#include "mu_sched.h"

#include "mu_event.h"
#include "mu_spsc.h"
#include "mu_task.h"
#include "mu_time.h"
#include <stdbool.h>
#include <stdint.h>
#include <string.h>

// *****************************************************************************
// Local (private) types and definitions

#ifndef MU_SCHED_MAX_EVENTS
#define MU_SCHED_MAX_EVENTS 30
#endif

#ifndef MU_SCHED_MAX_IRQ_TASKS
#define MU_SCHED_MAX_IRQ_TASKS 8 // must be a power of two!
#endif

typedef struct {
  mu_event_t current_event; // the event currently being processed.
  mu_task_t *current_task;  // the task currently being processed.
  mu_clock_fn clock_fn;     // the function to call to get the current time.
  mu_task_t *idle_task;     // the task to run when nothing else is runnable.
  mu_event_t events[MU_SCHED_MAX_EVENTS]; // the actual schedule...
  int event_idx;                          // index of next available event
  mu_spsc_item_t irq_tasks[MU_SCHED_MAX_IRQ_TASKS];
  mu_spsc_t irq_spsc;
} mu_sched_t;

// *****************************************************************************
// Local (private, static) forward declarations

/**
 * @brief Transfer tasks from the IRQ queue to the main schedule.
 */
static void process_irq_events(void);

/**
 * @brief Make the next event be the current event and remove from schedule.
 *
 * Returns NULL if no event was on the queue.
 */
static mu_event_t *pop_next_event(void);

/**
 * @brief Invoke the tasks in the current event.
 */
static void process_current_event(void);

/**
 * @brief Schedule the given task at the given time.
 */
static mu_sched_err_t sched_aux(mu_task_t *task, mu_time_abs_t at);

/**
 * @brief Find or create an event at the specified time.
 *
 * If needed, this will open a slot in the events[] array and adjust event_idx.
 * It will return a pointer to the event, or NULL if the event could not be
 * created (i.e. if the events[] array is full).
 */
static mu_event_t *find_or_create_event(mu_time_abs_t at);

/**
 * @brief Return the event to which the task belongs to, or NULL if the task
 * does not belong to any event.
 */
static mu_event_t *find_task_event(mu_task_t *task);

// *****************************************************************************
// Local (private, static) storage

static mu_sched_t s_sched;

// *****************************************************************************
// Public code

void mu_sched_init(void) {
  memset(&s_sched, 0, sizeof(s_sched)); //
  mu_event_init(&s_sched.current_event);
  s_sched.clock_fn = mu_time_now;
  mu_spsc_init(&s_sched.irq_spsc, s_sched.irq_tasks, MU_SCHED_MAX_IRQ_TASKS);
}

void mu_sched_reset(void) {
  mu_spsc_reset(&s_sched.irq_spsc);
  do {
    mu_event_reset(&s_sched.current_event);
  } while (pop_next_event() != NULL);
}

mu_sched_err_t mu_sched_step(void) {
  mu_event_t *next_event;
  mu_time_abs_t now = mu_sched_get_current_time();

  process_irq_events();
  next_event = mu_sched_peek_next_event();
  if (next_event && !mu_time_follows(mu_event_get_time(next_event), now)) {
    // time has arrived!
    pop_next_event();        // make the next event be the current event
    process_current_event(); // process the tasks in the current event
  } else if (s_sched.idle_task != NULL) {
    // No event ready for running -- run the idle task if provided.
    mu_task_call(s_sched.idle_task, NULL);
  } else {
    // No idle task provided.
    __asm("nop");
  }
  return MU_SCHED_ERR_NONE;
}

mu_clock_fn mu_sched_get_clock_source(void) { return s_sched.clock_fn; }

void mu_sched_set_clock_source(mu_clock_fn clock_fn) {
  s_sched.clock_fn = clock_fn;
}

mu_task_t *mu_sched_get_idle_task(void) { return s_sched.idle_task; }

void mu_sched_set_idle_task(mu_task_t *task) { s_sched.idle_task = task; }

bool mu_sched_is_empty(void) {
  // TODO: is there a safe way to take spsc into account?
  return (s_sched.event_idx == 0) &&
         (mu_event_is_empty(&s_sched.current_event));
}

mu_time_abs_t mu_sched_get_current_time(void) { return s_sched.clock_fn(); }

mu_task_t *mu_sched_get_current_task(void) { return s_sched.current_task; }

mu_event_t *mu_sched_get_current_event(void) {
  if (s_sched.current_task) {
    // NOTE we cannot simply return mu_task_get_event(task) because the current
    // task is removed from the event queue before it is called. (For more info,
    // see process_current_event)
    return &s_sched.current_event;
  } else {
    return NULL;
  }
}

mu_event_t *mu_sched_peek_next_event(void) {
  mu_event_t *event = NULL;
  if (s_sched.event_idx > 0) {
    event = &s_sched.events[s_sched.event_idx - 1];
  }
  return event;
}

mu_task_t *mu_sched_remove_task(mu_task_t *task) {
  mu_event_t *event = find_task_event(task);
  if (event == NULL) {
    // task does not appear on any event...
    return NULL;
  } else {
    // NOTE: if this removes the last task of the event, the schedule will have
    // an empty event.  It's probably not worth checking for that case here,
    // since the empty even will get removed when its time arrives.
    return mu_event_remove_task(event, task);
  }
}

mu_sched_err_t mu_sched_now(mu_task_t *task) {
  return sched_aux(task, mu_sched_get_current_time());
}

mu_sched_err_t mu_sched_at(mu_task_t *task, mu_time_abs_t at) {
  return sched_aux(task, at);
}

mu_sched_err_t mu_sched_in(mu_task_t *task, mu_time_rel_t in) {
  mu_time_abs_t at = mu_time_offset(mu_sched_get_current_time(), in);
  return sched_aux(task, at);
}

mu_sched_err_t mu_sched_from_isr(mu_task_t *task) {
  if (mu_task_get_task_list(task) != NULL) {
    // task is part of another event -- it may only participate in one.
    return MU_SCHED_ERR_ALREADY_SCHEDULED;
  }
  if (mu_spsc_put(&s_sched.irq_spsc, task) == MU_SPSC_ERR_FULL) {
    return MU_SCHED_ERR_FULL;
  }
  return MU_SCHED_ERR_NONE;
}

mu_sched_task_status_t mu_sched_get_task_status(mu_task_t *task) {
  (void)task;
  // TODO: stub.  Will this ever be used?
  return MU_SCHED_TASK_STATUS_IDLE;
}

mu_task_t *mu_sched_traverse(mu_sched_traverse_fn user_fn, void *arg) {
  (void)user_fn;
  (void)arg;
  // TODO: stub.  Will this ever be used?
  return NULL;
}

// *****************************************************************************
// Local (private, static) code

static void process_irq_events(void) {
  mu_spsc_err_t err;
  mu_spsc_item_t item;
  // Transfer events from irq task list to main schedule
  while (true) {
    err = mu_spsc_get(&s_sched.irq_spsc, &item);
    if (err == MU_SPSC_ERR_NONE) {
      mu_sched_now((mu_task_t *)item);
    } else {
      break;
    }
  }
}

static mu_event_t *pop_next_event(void) {
  if (s_sched.event_idx > 0) {
    // Copy the "soonest" event to s_sched.current_event
    mu_event_t *event = &s_sched.events[s_sched.event_idx - 1];
    memcpy(&s_sched.current_event, event, sizeof(mu_event_t));
    s_sched.event_idx -= 1;
    return &s_sched.current_event;
  } else {
    // Schedule is empty.
    return NULL;
  }
}

static void process_current_event(void) {
  mu_task_t *task = NULL;
  while ((task = mu_event_pop_task(&s_sched.current_event)) != NULL) {
    s_sched.current_task = task;
    mu_task_call(task, NULL);
    s_sched.current_task = NULL;
  }
}

static mu_sched_err_t sched_aux(mu_task_t *task, mu_time_abs_t at) {
  mu_sched_err_t err = MU_SCHED_ERR_NONE;
  do {
    if (mu_task_get_task_list(task) != NULL) {
      // task is part of another event -- it may only participate in one.
      err = MU_SCHED_ERR_ALREADY_SCHEDULED;
      break;
    }
    mu_event_t *event = find_or_create_event(at);
    if (event == NULL) {
      // the schedule's queue is full
      err = MU_SCHED_ERR_FULL;
      break;
    }
    mu_event_append_task(event, task);
  } while (false);

  return err;
}

static mu_event_t *find_or_create_event(mu_time_abs_t at) {
  mu_event_t *candidate_event;
  int i = s_sched.event_idx;

  while (i > 0) {
    candidate_event = &s_sched.events[--i];
    mu_time_abs_t candidate_time = mu_event_get_time(candidate_event);

    if (mu_time_equals(at, candidate_time)) {
      // exact match!
      return candidate_event;

    } else if (mu_time_precedes(at, candidate_time)) {
      i += 1; // back up by one to claim our insertion point
      break;

    } else {
      // at follows candidate_time -- keep searching
    }
  }

  // Before creating a new event, make sure there's room.
  if (s_sched.event_idx == MU_SCHED_MAX_EVENTS - 1) {
    return NULL;
  }

  // Here, i is the index at which we need to create a new event.  Start by
  // making a hole as needed
  int to_move = s_sched.event_idx - i;
  if (to_move > 0) {
    // use memmove to open a slot at i
    mu_event_t *src = &s_sched.events[i];
    mu_event_t *dst = &s_sched.events[i + 1];
    memmove(dst, src, to_move * sizeof(mu_event_t));
  }

  // Create a new event at s_sched.events[i]
  candidate_event = &s_sched.events[i];
  mu_event_init(candidate_event);
  mu_event_set_time(candidate_event, at);

  s_sched.event_idx += 1;

  return candidate_event;
}

static mu_event_t *find_task_event(mu_task_t *task) {
  mu_task_list_t *tasks;

  if (task == NULL) {
    return NULL;
  } else if ((tasks = (mu_task_list_t *)mu_task_get_task_list(task)) == NULL) {
    // task is not on any task list...
    return NULL;
  } else {
    // perform a linear search of scheduled events
    mu_event_t *event;
    int i = s_sched.event_idx;

    while (i > 0) {
      event = &s_sched.events[--i];
      if (&event->tasks == tasks) {
        return event;
      }
    }
    return NULL;
  }
}
