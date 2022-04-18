/**
 * @file mu_task_list.c
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

#include "mu_task_list.h"

#include "mu_list.h"
#include "mu_queue.h"
#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// Local (private) types and definitions

// *****************************************************************************
// Local (private, static) forward declarations

static void *call_task(mu_list_t *list, void *arg);

// *****************************************************************************
// Local (private, static) storage

// *****************************************************************************
// Public code

mu_task_list_t *mu_task_list_init(mu_task_list_t *task_list) {
  mu_queue_init(&task_list->tasks);
  return task_list;
}

mu_task_list_t *mu_task_list_reset(mu_task_list_t *task_list) {
  mu_task_t *task = NULL;
  while ((task = mu_task_list_pop_task(task_list)) != NULL) {
    // remove all tasks
  }
  return task_list;
}

bool mu_task_list_is_empty(mu_task_list_t *task_list) {
  return mu_queue_is_empty(&task_list->tasks);
}

mu_task_t *mu_task_list_append_task(mu_task_list_t *task_list,
                                    mu_task_t *task) {
  if (mu_task_get_task_list(task) != NULL) {
    // Task is already assigned to a task_list
    return NULL;
  }
  mu_queue_append(&task_list->tasks, MU_LIST_REF(task, _link));
  task->_task_list = (struct _mu_task_list *)task_list; // install back pointer
  return task;
}

mu_task_t *mu_task_list_prepend_task(mu_task_list_t *task_list,
                                     mu_task_t *task) {
  if (mu_task_get_task_list(task) != NULL) {
    // Task is already assigned to an task_list
    return NULL;
  }
  mu_queue_prepend(&task_list->tasks, MU_LIST_REF(task, _link));
  task->_task_list = (struct _mu_task_list *)task_list; // install back pointer
  return task;
}

mu_task_t *mu_task_list_remove_task(mu_task_list_t *task_list,
                                    mu_task_t *task) {
  mu_list_t *removed =
      mu_queue_delete(&task_list->tasks, MU_LIST_REF(task, _link));
  if (removed) {
    task->_task_list = NULL; // remove back pointer
    return task;
  } else {
    return NULL;
  }
}

mu_task_t *mu_task_list_pop_task(mu_task_list_t *task_list) {
  mu_list_t *list = mu_queue_remove(&task_list->tasks);
  if (list != NULL) {
    mu_task_t *task = MU_LIST_CONTAINER(list, mu_task_t, _link);
    task->_task_list = NULL; // remove back pointer.
    return task;
  } else {
    return NULL;
  }
}

void mu_task_list_call(mu_task_list_t *task_list, void *arg, bool retain) {
  if (retain) {
    // TODO: mu_queue API needs a function to return a pointer to the head
    mu_list_traverse(&task_list->tasks.head, call_task, arg);
  } else {
    mu_list_t *list;
    while ((list = mu_queue_remove(&task_list->tasks)) != NULL) {
      mu_task_t *task = MU_LIST_CONTAINER(list, mu_task_t, _link);
      task->_task_list = NULL; // remove back pointer.
      mu_task_call(task, arg);
    }
  }
}

// *****************************************************************************
// Local (private, static) code

static void *call_task(mu_list_t *list_ref, void *arg) {
  mu_list_t *list = list_ref->next;
  if (list != NULL) {
    mu_task_t *task = MU_LIST_CONTAINER(list, mu_task_t, _link);
    mu_task_call(task, arg);
  }
  return NULL;
}
