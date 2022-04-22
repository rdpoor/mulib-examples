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

#include "mu_spsc.h"
#include "mu_task.h"
#include "mu_time.h"
#include <stdbool.h>
#include <stdint.h>
#include <string.h>

#include <stdio.h> // debugging

// *****************************************************************************
// Local (private) types and definitions

#ifndef MU_SCHED_MAX_DEFERRED_TASKS
#define MU_SCHED_MAX_DEFERRED_TASKS 30
#endif

#ifndef MU_SCHED_MAX_IRQ_TASKS
#define MU_SCHED_MAX_IRQ_TASKS 8 // must be a power of two!
#endif

typedef struct {
  mu_task_t *current_task;  // the task currently being processed.
  mu_clock_fn clock_fn;     // the function to call to get the current time.
  mu_task_t *idle_task;     // the task to run when nothing else is runnable.
  mu_sched_event_t events[MU_SCHED_MAX_DEFERRED_TASKS]; // the actual schedule.
  size_t event_count;       // index of next available event
  mu_spsc_item_t irq_tasks[MU_SCHED_MAX_IRQ_TASKS];
  mu_spsc_t irq_spsc;
} mu_sched_t;

// *****************************************************************************
// Local (private, static) forward declarations

/**
 * @brief Transfer tasks from the IRQ queue to the main schedule.
 */
static void process_irq_tasks(void);

/**
 * @brief Schedule the given task at the given time.
 */
static mu_sched_err_t sched_aux(mu_task_t *task, mu_time_abs_t at);

/**
 * @brief Debugging: print contents of schedule
 */
static void print_sched(void);

// *****************************************************************************
// Local (private, static) storage

static mu_sched_t s_sched;

// *****************************************************************************
// Public code

void mu_sched_init(void) {
  s_sched.current_task = NULL;
  s_sched.event_count = 0;
  s_sched.clock_fn = mu_time_now;
  mu_spsc_init(&s_sched.irq_spsc, s_sched.irq_tasks, MU_SCHED_MAX_IRQ_TASKS);
}

void mu_sched_reset(void) {
  s_sched.event_count = 0;
  mu_spsc_reset(&s_sched.irq_spsc);
}

mu_sched_err_t mu_sched_step(void) {
  mu_sched_event_t *event;
  mu_time_abs_t now = mu_sched_get_current_time();

  process_irq_tasks();
  event = mu_sched_peek_next_event();
  if (event && !mu_time_follows(event->at, now)) {
    // time has arrived!
    s_sched.event_count -= 1;
    // printf("\n%9ld: (%d in sched) Running %s",
    //        now,
    //        s_sched.event_count,
    //        event->task->name);
    print_sched();
    s_sched.current_task = event->task;
    mu_task_call(event->task, NULL);
    s_sched.current_task = NULL;

  } else if (s_sched.idle_task != NULL) {
    // No event i sready to run -- run the idle task if provided.
    mu_task_call(s_sched.idle_task, NULL);
  }
  return MU_SCHED_ERR_NONE;
}

mu_clock_fn mu_sched_get_clock_source(void) { return s_sched.clock_fn; }

void mu_sched_set_clock_source(mu_clock_fn clock_fn) {
  s_sched.clock_fn = clock_fn;
}

mu_time_abs_t mu_sched_get_current_time(void) { return s_sched.clock_fn(); }

mu_task_t *mu_sched_get_idle_task(void) { return s_sched.idle_task; }

void mu_sched_set_idle_task(mu_task_t *task) { s_sched.idle_task = task; }

mu_task_t *mu_sched_get_current_task(void) { return s_sched.current_task; }

mu_sched_event_t *mu_sched_peek_next_event(void) {
  mu_sched_event_t *event = NULL;
  if (s_sched.event_count > 0) {
    event = &s_sched.events[s_sched.event_count - 1];
  }
  return event;
}

mu_sched_err_t mu_sched_remove_task(mu_task_t *task) {
  mu_sched_err_t err = MU_SCHED_ERR_NOT_FOUND;

  size_t i = s_sched.event_count;
  while (i > 0) {
    mu_sched_event_t *event = &s_sched.events[i-1];
    if (event->task == task) {
      // use memmove to close slot at i-1
      size_t to_move = s_sched.event_count - i;
      if (to_move > 0) {
        mu_sched_event_t *src = &s_sched.events[i];
        memmove(event, src, to_move * sizeof(mu_sched_event_t));
      }
      s_sched.event_count -= 1;
      err = MU_SCHED_ERR_NONE;
    }
    i -= 1;
  }
  return err;
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
  if (mu_spsc_put(&s_sched.irq_spsc, task) == MU_SPSC_ERR_FULL) {
    return MU_SCHED_ERR_FULL;
  }
  return MU_SCHED_ERR_NONE;
}

void *mu_sched_visit_deferred_events(mu_sched_visit_event_fn user_fn, void *arg) {
  size_t i = s_sched.event_count;

  while (i > 0) {
    mu_sched_event_t *event = &s_sched.events[i-1];
    void *r = user_fn(event, arg);
    if (r) {
      return r;
    }
  }
  return NULL;
}

void *mu_sched_visit_immediate_tasks(mu_sched_visit_task_fn user_fn, void *arg) {
  // stub for now
  return NULL;
}

// *****************************************************************************
// Local (private, static) code

static void process_irq_tasks(void) {
  mu_spsc_item_t item;
  // Transfer events from irq task list to main schedule
  while (mu_spsc_get(&s_sched.irq_spsc, &item) == MU_SPSC_ERR_NONE) {
    mu_sched_now((mu_task_t *)item);
  }
}

static mu_sched_err_t sched_aux(mu_task_t *task, mu_time_abs_t at) {
  mu_sched_event_t *event;

  if (s_sched.event_count == MU_SCHED_MAX_DEFERRED_TASKS) {
    // printf("\n%09ld: Cannot schedule %s: schedule is full",
    //        mu_time_now(),
    //        task->name);
    return MU_SCHED_ERR_FULL;
  }

  // perform a linear search to find the insertion point
  size_t i = s_sched.event_count;
  while (i > 0) {
    event = &s_sched.events[i-1];
    // Strict ordering: if a task already is scheduled for 'at', schedule this
    // new event to follow it.
    if (mu_time_follows(event->at, at)) {
      break;
    }
    i -= 1;
  }

  // Here, i is the index for the new event.  If needed, open a slot at i.
  int to_move = s_sched.event_count - i;
  if (to_move > 0) {
    mu_sched_event_t *src = &s_sched.events[i];
    mu_sched_event_t *dst = &s_sched.events[i + 1];
    memmove(dst, src, to_move * sizeof(mu_sched_event_t));
  }

  // Write the time and task into the event, bump the event count.
  event = &s_sched.events[i];
  event->at = at;
  event->task = task;
  s_sched.event_count += 1;
  // printf("\n%9ld: (%d in sched) Schedule %s at %ld",
  //        mu_time_now(),
  //        s_sched.event_count,
  //        event->task->name,
  //        at);
  print_sched();
  return MU_SCHED_ERR_NONE;
}

// debugging
static void print_sched(void) {
  // printf("\nAt %9ld:", mu_time_now());
  //
  // if (s_sched.event_count == 0) {
  //   printf("\n  schedule is empty");
  //   return;
  // }
  //
  // for (size_t i=0; i<s_sched.event_count; i++) {
  //   mu_sched_event_t *event = &s_sched.events[i];
  //   printf("\n[%02d] %9ld: %s", i, event->at, event->task->name);
  // }
}
