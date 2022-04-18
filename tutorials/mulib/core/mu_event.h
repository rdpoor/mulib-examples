/**
 * @file mu_event.h
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

#ifndef _MU_EVENT_H_
#define _MU_EVENT_H_

// *****************************************************************************
// Includes

#include "mu_task.h"
#include "mu_task_list.h"
#include "mu_time.h"

#include <stdbool.h>
#include <stdint.h>

// =============================================================================
// C++ compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

/**
 * A `mu_event` comprises a list of tasks and a time at which to invoke them.
 */

typedef struct _mu_event {
  mu_task_list_t tasks; // a collection of tasks to be invoked sequentially
  mu_time_abs_t at;     // the time at which to invoke them
} mu_event_t;

// *****************************************************************************
// Public declarations

mu_event_t *mu_event_init(mu_event_t *event);

/**
 * @brief Remove all the tasks in the event.
 */
mu_event_t *mu_event_reset(mu_event_t *event);

/**
 * @brief Set the time for this event.
 */
mu_event_t *mu_event_set_time(mu_event_t *event, mu_time_abs_t at);

/**
 * @brief Get the time for this event.
 */
mu_time_abs_t mu_event_get_time(mu_event_t *event);

/**
 * @brief Return true if there are no events in the task_list.
 */
bool mu_event_is_empty(mu_event_t *event);

/**
 * @brief Add a task at the tail of the event task_list.
 *
 * The task will be invoked after other tasks.
 *
 * @param event The event argument
 * @param task The task to be added to the event
 * @return task if successfully added, NULL if task is already on a task_list
 */
mu_task_t *mu_event_append_task(mu_event_t *event, mu_task_t *task);

/**
 * @brief Add a task at the head of the event task_listd.
 *
 * The task will be invoked before other tasks.
 *
 * @param event The event argument
 * @param task The task to be added to the event
 * @return task if successfully added, NULL if task is already on a task_list
 */
mu_task_t *mu_event_prepend_task(mu_event_t *event, mu_task_t *task);

/**
 * @brief Remove a task from an event.
 *
 * @param event The event object.
 * @param task The task to remove.
 * @return The task if it was present, NULL if it was not present.
 */
mu_task_t *mu_event_remove_task(mu_event_t *event, mu_task_t *task);

/**
 * @brief Remove the first task from the list of tasks.
 *
 * Returns NULL if the task_list is empty.
 */
mu_task_t *mu_event_pop_task(mu_event_t *event);

/**
 * @brief Sequentially invoke all of the tasks in this event.
 *
 * @param event The event object.
 * @param arg argument passed to each task
 * @param retain If true, the event is unmodified.  If false, tasks are removed
 *        from the event before being called.
 */
void mu_event_call(mu_event_t *event, void *arg, bool retain);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_EVENT_H_ */
