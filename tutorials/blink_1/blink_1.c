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

#include "blink_1.h"

#include "bsp.h"          // define led_off(), led_toggle()
#include "mu_platform.h"  // define mu_time_*
#include "mu_sched.h"     // define mu_sched_*
#include "mu_task.h"      // define mu_task_*

// *****************************************************************************
// Private types and definitions

// Define the blink interval in milliseconds
#define BLINK_INTERVAL_MS 1000

// Define a structure to hold the blink_1 context.
typedef struct {
  mu_time_rel_t blink_interval;
} blink_1_ctx_t;

// *****************************************************************************
// Private (static) storage

// Allocate a mu_task object for blink_1
static mu_task_t s_blink_1_task;

// Allocate the blink_1 context
static blink_1_ctx_t s_blink_1_ctx;

// *****************************************************************************
// Private (forward) declarations

static void blink_1_fn(void *ctx, void *arg);

// *****************************************************************************
// Public code

void blink_1_init(void) {
  mu_sched_init();      // initialize the scheduler
  mu_platform_init();   // perform any platform-specific initializations

  // initialize s_blink_task to associate its function (blink_1_fn) with
  // its context (s_blink_1_ctx)
  mu_task_init(&s_blink_1_task, blink_1_fn, &s_blink_1_ctx, "Blink 1");

  // Initialize the context's initial state
  s_blink_1_ctx.blink_interval = mu_time_rel_to_ms(BLINK_INTERVAL_MS);

  // Make sure the LED is initially off
  bsp_led_off();

  // Make the first call to the scheduler to start things off.  blink_1_fn()
  // will reschedule itself thereafter.
  mu_sched_task_now(&s_blink_1_task);
}


void blink_1_step(void) {
  // This function is called repeatedly.  It only needs to call mu_sched_step()
  // to keep things running.
  mu_sched_step();
}

// *****************************************************************************
// Private (static) code

// blink_1_fn() is invoked whenever blink_1's task is triggered.  It is called
// with two arguments: blink_1's state ('context') and a user-supplied argument
// (currently unused).
//
// All blink_1_fn() does is toggle the led and re-schedule in BLINK_INTERVAL_MS
// milliseconds in the future.
//
static void blink_1_fn(void *ctx, void *arg) {
  blink_1_ctx_t *self = (blink_1_ctx_t *)ctx; // Recast ctx to (blink_1_ctx *)
  (void)arg;                                  // unused

  // Toggle LED and reschedule to run in BLINK_INTERVAL_MS in the future
  bsp_led_toggle();
  mu_sched_reschedule_in(self->blink_interval);
}
