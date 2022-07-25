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
 * @file blink_2.c
 *
 * @brief Blink an LED, using mu_periodic to assure drift-free timing.
 *
 * There is a small flaw in the blink_1 example: The blink_1 task will run every
 * BLINK_INTERVAL_MS + epsilon milliseconds, where epsilon is the time spent
 * triggering the task.  Though epsilon is small, over time it will accumulate.
 *
 * In blink_2, we use mu_periodic to trigger our task regularly without the
 * small drift in blink_1.
 */

// *****************************************************************************
// Includes

#include "blink_2.h"

#include "mulib.h"
#include "mu_stdbsp.h"

// *****************************************************************************
// Private types and definitions

// Define the blink interval in milliseconds
#define BLINK_INTERVAL_MS 1000

// Define a structure to hold the blink_1 context.
typedef struct {
  mu_periodic_t timer;
} blink_2_ctx_t;

// *****************************************************************************
// Private (static) storage

// Allocate a mu_task object for blink_2
static mu_task_t s_blink_2_task;

// Allocate the blink_2 context
static blink_2_ctx_t s_blink_2_ctx;

// *****************************************************************************
// Private (forward) declarations

static void blink_2_fn(void *ctx, void *arg);

// *****************************************************************************
// Public code

void blink_2_init(void) {
  mu_sched_init();      // initialize the scheduler
  mu_stdbsp_init();       // perform platform-specific initializations

  // initialize s_blink_2_task to associate its function (blink_2_fn) with
  // its context (s_blink_2_ctx)
  mu_task_init(&s_blink_2_task, blink_2_fn, &s_blink_2_ctx, "Blink 2");

  // Make sure the LED is initially off
  mu_stdbsp_led_off();

  // Initialize and start the periodic timer
  mu_periodic_init(&s_blink_2_ctx.timer);
  mu_periodic_start(&s_blink_2_ctx.timer,
                    mu_time_ms_to_rel(BLINK_INTERVAL_MS),
                    &s_blink_2_task);
}


void blink_2_step(void) {
  // This function is called repeatedly.  It only needs to call mu_sched_step()
  // to keep things running.
  mu_sched_step();
}

// *****************************************************************************
// Private (static) code

// blink_2_fn() is invoked whenever blink_2's task is triggered by the periodic
// timer.  It is called with blink_2's context and a user-supplied argument
// (currently unused).
//
// All blink_2_fn() does is toggle the led.
//
static void blink_2_fn(void *ctx, void *arg) {
  (void)ctx;   // unused
  (void)arg;   // unused

  // Toggle the LED
  mu_stdbsp_led_toggle();
}
