/**
 * MIT License
 *
 * Copyright (c) 2020 R. Dunbar Poor <rdpoor@gmail.com>
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
 */

/**
Implmeentation notes:

mu_sched implements a discrete time, run-to-completion scheduler.  A
mu_task can be scheduled to run at some point in the future through the
following calls:

   mu_sched_err_t mu_sched_now(mu_task_t *task);
   mu_sched_err_t mu_sched_at(mu_task_t *task, mu_time_abs_t at);
   mu_sched_err_t mu_sched_in(mu_task_t *task, mu_time_rel_t in);

Each of these functions add a task to the scheduler's queue.

mu_sched also supports safely scheduling a task from interrupt level:

   mu_sched_err_t mu_sched_from_isr(mu_task_t *task);

Any task scheduled from interrupt level is saved in an interrupt safe
"single producer, single consumer" queue.  Upon returning from interrupt level,
the next time mu_sched_step() is called, any tasks on the queue are added
to the regular schedule as if mu_sched_now() was called.

The function

   mu_sched_err_t mu_sched_step(void);

is where all the magic happens.  The scheduler examines the first task in
the queue, and if its start time has arrived, the task is removed from the
queue and is called.

*/

#ifndef _MU_SCHED_H_
#define _MU_SCHED_H_

#ifdef __cplusplus
extern "C" {
#endif

// =============================================================================
// includes

#include "mu_task.h"
#include "mu_time.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// =============================================================================
// types and definitions

#ifndef MU_SCHED_MAX_DEFERRED_TASKS
#define MU_SCHED_MAX_DEFERRED_TASKS 30
#endif

typedef enum {
  MU_SCHED_ERR_NONE,
  MU_SCHED_ERR_ILLEGAL_ARG,
  MU_SCHED_ERR_EMPTY,
  MU_SCHED_ERR_FULL,
  MU_SCHED_ERR_NOT_FOUND,
} mu_sched_err_t;

// Signature for clock source function.  Returns the current time.
typedef mu_time_abs_t (*mu_clock_fn)(void);

// A mu_sched_event associates a task and a time.
typedef struct {
  mu_time_abs_t at;
  mu_task_t *task;
} mu_sched_event_t;

/**
 * @brief Signature for a function passed to mu_sched_visit_events.
 *
 * @param event a pointer to an event.
 * @param arg A user-supplied argument.
 * @return A NULL value to continue traversing, a non-null value to stop.
 */
typedef void *(*mu_sched_visit_event_fn)(mu_sched_event_t *event, void *arg);

/**
 * @brief Signature for a function passed to mu_sched_visit_immediate_tasks.
 *
 * @param task a pointer to a task.
 * @param arg A user-supplied argument.
 * @return A NULL value to continue traversing, a non-null value to stop.
 */
typedef void *(*mu_sched_visit_task_fn)(mu_task_t *task, void *arg);

// =============================================================================
// declarations

/**
 * @brief initialize the schedule module.  Not interrupt safe.
 */
void mu_sched_init(void);

/**
 * @brief  Remove all scheduled items from the schedule.  Not interrupt safe.
 */
void mu_sched_reset(void);

/**
 * @brief Process the next runnable task or -- if none are runnable -- the idle
 * task.
 */
mu_sched_err_t mu_sched_step(void);

/**
 * @brief Return the current clock source.
 */
mu_clock_fn mu_sched_get_clock_source(void);

/**
 * @brief Set the clock source for the scheduler.
 *
 * This function is provided primarily for unit testing.
 *
 * @param clock_fn A function that returns the current time.
 */
void mu_sched_set_clock_source(mu_clock_fn clock_fn);

/**
 * @brief Return the scheduler's idea of time according to the clock source.
 */
mu_time_abs_t mu_sched_get_current_time(void);

/**
 * @brief Return the idle task.
 */
mu_task_t *mu_sched_get_idle_task(void);

/**
 * @brief Set the task to be invoked when there are no tasks to run.
 *
 * Setting this to NULL runs the default idle task.
 */
void mu_sched_set_idle_task(mu_task_t *task);

/**
 * @brief Return the current task being processed, or NULL if none.
 */
mu_task_t *mu_sched_get_current_task(void);

/**
 * @brief Return the next task to be run or NULL if there isn't one.
 */
mu_sched_event_t *mu_sched_peek_next_event(void);

/**
 * @brief Remove a scheduled task.
 *
 * @param task The task to be removed.
 * @return MU_SCHED_ERR_NOT_FOUND if the task was not present in the schedule,
 *         MU_SCHED_ERR_NONE otherwise.
 */
mu_sched_err_t mu_sched_remove_task(mu_task_t *task);

/**
 * @brief Schedule (or reschedule) a task to be run as soon as possible.
 *
 * Note: If there are other runnable tasks, the new task will be scheduled after
 * those have run.
 */
mu_sched_err_t mu_sched_now(mu_task_t *task);

/**
 * @brief Schedule a task to be run at a particular time in the future.
 */
mu_sched_err_t mu_sched_at(mu_task_t *task, mu_time_abs_t at);

/**
 * @brief Schedule a task to be run after a given interval.
 */
mu_sched_err_t mu_sched_in(mu_task_t *task, mu_time_rel_t in);

/**
 * @brief Schedule a task from interrupt level.
 *
 * @param task The task to be scheduled.
 * @return MU_SCHED_ERR_NONE on no error, MU_SCHED_ERR_FULL if the interrupt
 *         queue is full.
 */
mu_sched_err_t mu_sched_from_isr(mu_task_t *task);

/**
 * @brief Call a user-supplied function for each deferred event in the schedule.
 *
 * The user-supplied function has the signature:
 *
 *    mu_task_t *user_fn(mu_sched_event_t *event, void *arg)
 *
 * Traversing the list continues until all events have been visited, or the
 * user function returns a non-null value.
 *
 * @param user_fn The function to call with each event in the schedule.
 * @param arg The value supplied as the second argument to the user fun.
 * @return A non-null value returned by the user function, or NULL otherwise.
 */
void *mu_sched_visit_deferred_events(mu_sched_visit_event_fn user_fn, void *arg);

/**
 * @brief Call a user-supplied function for each immediate task in the schedule.
 *
 * The user-supplied function has the signature:
 *
 *    mu_task_t *user_fn(mu_task_t *task, void *arg)
 *
 * Traversing the list continues until all immediate tasks have been visited, or
 * the user function returns a non-null value.
 *
 * @param user_fn The function to call with each task the immediate queue.
 * @param arg The value supplied as the second argument to the user fun.
 * @return A non-null value returned by the user function, or NULL otherwise.
 */
void *mu_sched_visit_immediate_tasks(mu_sched_visit_task_fn user_fn, void *arg);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_SCHED_H_ */
