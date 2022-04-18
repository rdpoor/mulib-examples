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

#include "mu_periodic.h"

#include "mu_sched.h"
#include "mu_task.h"
#include "mu_time.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include <stdio.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

// *****************************************************************************
// Private (forward) declarations

static void timer_fn(void *ctx, void *arg);

// *****************************************************************************
// Public code

mu_periodic_t *mu_periodic_init(mu_periodic_t *timer) {
  mu_task_init(&timer->_task, timer_fn, timer, "Timer");
  timer->_target_task = 0;
  timer->_period = 0;

  return timer;
}

bool mu_periodic_start(mu_periodic_t *timer,
                       mu_time_rel_t period,
                       mu_task_t *target_task) {
  if (mu_periodic_is_running(timer)) {
    return false;
  }
  mu_time_abs_t now = mu_sched_get_clock_source()(); // whoo!
  timer->_target_task = target_task;
  timer->_period = period;
  timer->_trigger_at = mu_time_offset(now, period);
  // invoke the target task now, and reschedule after period elapses
  mu_task_call(target_task, NULL);
  mu_sched_at(&timer->_task, timer->_trigger_at);

  return true;
}

bool mu_periodic_stop(mu_periodic_t *timer) {
  if (!mu_periodic_is_running(timer)) {
    return false;
  }
  mu_sched_remove_task(&timer->_task);
  timer->_period = 0; // signifies that the timer is stopped.
  return true;
}

bool mu_periodic_is_running(mu_periodic_t *timer) {
  return timer->_period != 0;
}

// *****************************************************************************
// Private (static) code

static void timer_fn(void *ctx, void *arg) {
  mu_periodic_t *timer = (mu_periodic_t *)ctx;
  (void)arg;

  // called periodically by the scheduler
  if (mu_periodic_is_running(timer)) {
    // invoke target task, update trigger time and reschedule...
    mu_task_call(timer->_target_task, NULL);
    timer->_trigger_at = mu_time_offset(timer->_trigger_at, timer->_period);
    mu_sched_at(&timer->_task, timer->_trigger_at);
  }
}
