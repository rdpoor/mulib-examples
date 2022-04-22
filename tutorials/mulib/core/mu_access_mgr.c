/**
 * MIT License
 *
 * Copyright (c) 2021-2022 R. D. Poor <rdpoor@gmail.com>
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

// *****************************************************************************
// Includes

#include "mu_access_mgr.h"

#include "mu_pqueue.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

// *****************************************************************************
// Private (forward) declarations

// *****************************************************************************
// Public code

mu_access_mgr_t *mu_access_mgr_init(mu_access_mgr_t *mgr,
                                    void *qstorage,
                                    size_t capacity) {
  mgr->owner = NULL;
  mu_pqueue_init(&mgr->pending, qstorage, capacity);
  return mgr;
}

void mu_access_mgr_reset(mu_access_mgr_t *mgr) {
  mu_task_t *task;

  mgr->owner = NULL;
  while ((task = (mu_task_t *)mu_pqueue_get(&mgr->pending)) != NULL) {
    // invoke each pending task.
    mu_task_call(task, NULL);
  }
}

mu_access_mgr_err_t mu_access_mgr_request_ownership(mu_access_mgr_t *mgr,
                                                    mu_task_t *task) {
  if (mgr->owner == NULL) {
    // no tasks currently own the resource -- grab it immediately.
    mgr->owner = task;
    mu_task_call(task, NULL);
    return MU_ACCESS_MGR_ERR_NONE;

  } else if (mu_pqueue_put(&mgr->pending, task) == NULL) {
    // could not queue task.
    return MU_ACCESS_MGR_ERR_TASK_UNAVAILABLE;

  } else {
    // request queued
    return MU_ACCESS_MGR_ERR_NONE;
  }
}

mu_access_mgr_err_t mu_access_mgr_release_ownership(mu_access_mgr_t *mgr,
                                                    mu_task_t *task) {
  if (task == mgr->owner) {
    // The current owner is releasing ownership: trigger the next task (if any).
    mgr->owner = (mu_task_t *)mu_pqueue_get(&mgr->pending);
    mu_task_call(mgr->owner, NULL);  // mu_task_call accepts null task argument.

  } else if (mu_pqueue_delete(&mgr->pending, task) == NULL) {
    return MU_ACCESS_MGR_ERR_NOT_PENDING;
  }

  return MU_ACCESS_MGR_ERR_NONE;
}

bool mu_access_mgr_has_ownership(mu_access_mgr_t *mgr, mu_task_t *task) {
  return task == mgr->owner;
}

// *****************************************************************************
// Private (static) code
