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
 * @file mu_periodic.h
 *
 * @brief Invoke a task periodically (without accumulated time error)
 *
 * Example usage:
 *
 *  // To invoke my_task once every 1000 milliseconds:
 *  mu_periodic_t timer;
 *  mu_periodic_init(&timer);
 *  mu_periodic_start(&timer, mu_time_ms_to_rel(1000), my_task);
 */

#ifndef _MU_PERIODIC_H_
#define _MU_PERIODIC_H_

// *****************************************************************************
// Includes

#include "mu_task.h"
#include "mu_time.h"

#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

typedef struct {
  mu_task_t _task;
  mu_task_t *_target_task;
  mu_time_rel_t _period;
  mu_time_abs_t _trigger_at;
} mu_periodic_t;

// *****************************************************************************
// Public declarations

/**
 * @brief Initialize the periodic timer.
 */
mu_periodic_t *mu_periodic_init(mu_periodic_t *timer);

/**
 * @brief Start the periodic timer.
 *
 * The target task is triggered immediately, and thereafter once every
 * interval units of time.
 *
 * @note If the timer is already running, this has no effect and returns false.
 *
 * @param timer The periodic timer object.
 * @param period The repetition interval.  Must be strictly positive.
 * @param target_task The task to be triggered.
 * @return true if the timer started, false if it was already running.
 */
bool mu_periodic_start(mu_periodic_t *timer,
                       mu_time_rel_t period,
                       mu_task_t *target_task);

/**
 * @brief Stop the periodic timer.
 *
 * The timer stops invoking the target task.
 *
 * @note If the timer is already stopped, this returns false and has no effect.
 *
 * @param timer The periodic timer object.
 * @return true if the timer stopped, false if it was already stopped.
 */
bool mu_periodic_stop(mu_periodic_t *timer);

/**
 * @brief Return true if the timer is running.
 *
 * @param timer The periodic timer object.
 * @return true if the timer is running, false otherwise.
 */
bool mu_periodic_is_running(mu_periodic_t *timer);

// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_PERIODIC_H_ */
