/**
 * MIT License
 *
 * Copyright (c) 2020-2022 R. D. Poor <rdpoor@gmail.com>
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
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO task_list SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

#ifndef _MU_TASK_LIST_H_
#define _MU_TASK_LIST_H_

// *****************************************************************************
// Includes

#include "mu_queue.h"
#include "mu_task.h"

// =============================================================================
// C++ compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

/**
 * A `mu_task_list` is an ordered group of mu_task objects.
 *
 * It is implemented as a thin interface on top of the mu_queue object.
 */

typedef struct {
  mu_queue_t tasks; // a LIFO list of tasks
} mu_task_list_t;

// *****************************************************************************
// Public declarations

/**
 * @brief Initialize a task object with its function and context.
 */
mu_task_list_t *mu_task_list_init(mu_task_list_t *task_list);

/**
 * @brief Remove all the tasks in the task_list.
 */
mu_task_list_t *mu_task_list_reset(mu_task_list_t *task_list);

/**
 * @brief Return true if there are no tasks in the list.
 */
bool mu_task_list_is_empty(mu_task_list_t *task_list);

/**
 * @brief Add a task at the tail of the task_list.
 *
 * The task will be invoked after other tasks.
 */
mu_task_t *mu_task_list_append_task(mu_task_list_t *task_list, mu_task_t *task);

/**
 * @brief Add a task at the head of the task_list queued.
 *
 * The task will be invoked before other tasks.
 */
mu_task_t *mu_task_list_prepend_task(mu_task_list_t *task_list,
                                     mu_task_t *task);

/**
 * @brief Remove a task from an task_list.
 *
 * @param task_list The task_list object.
 * @param task The task to remove.
 * @return The task if it was present, NULL if it was not present.
 */
mu_task_t *mu_task_list_remove_task(mu_task_list_t *task_list, mu_task_t *task);

/**
 * @brief Remove the first task from the list of tasks.
 *
 * Returns NULL if the queue is empty.
 */
mu_task_t *mu_task_list_pop_task(mu_task_list_t *task_list);

/**
 * @brief Sequentially invoke all of the tasks in this task_list.
 *
 * @param task_list The task_list object.
 * @param arg argument passed to each task
 * @param retain If true, the task_list is unmodified.  If false, tasks are
 *        removed from the task_list before being called.
 */
void mu_task_list_call(mu_task_list_t *task_list, void *arg, bool retain);

#ifdef __cplusplus
}
#endif

#endif // #ifndef _MU_TASK_LIST_H_
