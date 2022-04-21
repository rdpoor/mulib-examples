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

/**
 * @file access_mgr.h
 *
 * @brief Manage access to a shared resource
 */

#ifndef _ACCESS_MGR_H_
#define _ACCESS_MGR_H_

// *****************************************************************************
// Includes

#include "mu_task.h"
#include "mu_pqueue.h"
#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

typedef enum {
  MU_ACCESS_MGR_ERR_NONE,
  MU_ACCESS_MGR_ERR_BAD_PARAM,
  MU_ACCESS_MGR_ERR_TASK_UNAVAILABLE,
  MU_ACCESS_MGR_ERR_NOT_PENDING,
} mu_access_mgr_err_t;

typedef struct {
  mu_task_t *owner;       // task that owns the resource now
  mu_pqueue_t pending;    // a queue of tasks waiting to be granted ownership
} mu_access_mgr_t;

// *****************************************************************************
// Public declarations

/**
 * @brief Initialize the access manager.
 */
 mu_access_mgr_t *mu_access_mgr_init(mu_access_mgr_t *mgr,
                                     void *qstorage,
                                     size_t capacity);

/**
 * @brief Reset the access manager.
 *
 * Any tasks waiting for ownership are triggered, albeit without gaining
 * ownership.
 */
void mu_access_mgr_reset(mu_access_mgr_t *mgr);

/**
 * @brief Request exclusive ownership to a resource.
 *
 * @note When ownership is granted, the access manager will invoke the task.
 *
 * @param mgr The access manager.
 * @param task The task requesting ownership.
 * @return MU_ACCESS_MGR_ERR_NONE on success, other values on error.
 */
mu_access_mgr_err_t mu_access_mgr_request_ownership(mu_access_mgr_t *mgr,
                                                    mu_task_t *task);

/**
 * @brief Relinquish ownership of a resource, or stop waiting.
 *
 * @note If task currently has ownership, and if another task is waiting, the
 * waiting task will granted ownership.
 * @note If task currently is waiting for ownership, it will be removed from the
 * waiting queue.
 *
 * @param mgr The access manager.
 * @param task The task releasing ownership.
 * @return MU_ACCESS_MGR_ERR_NONE on success, other values on error.
 */
mu_access_mgr_err_t mu_access_mgr_release_ownership(mu_access_mgr_t *mgr,
                                                    mu_task_t *task);

/**
 * @brief Return true if the given task has ownership of the resource.
 */
bool mu_access_mgr_has_ownership(mu_access_mgr_t *mgr, mu_task_t *task);

// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _ACCESS_MGR_H_ */
