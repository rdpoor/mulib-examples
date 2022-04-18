/**
 * MIT License
 *
 * Copyright (c) 2020 R. D. Poor <rdpoor@gmail.com>
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
 * @file blink_3.c
 *
 * @brief Repeatedly blink an LED with the letter 'X' using morse code.
 *
 * This example shows a common pattern for mulib: invoke one task when another
 * task completes.
 *
 * In this case, the blink_3 task triggers a call to the morse_blink task.  The
 * morse_blink task handles all the timing to blink the letter 'A', and when it
 * finishes, it invokes the blink_3 task, which simply restarts the process.
 */

// *****************************************************************************
// Includes

#include "tutorial.h"

#include "morse_blinker.h" // define morse_blinker_*
#include "mu_sched.h"      // define mu_sched_*
#include "mu_task.h"       // define mu_task_*
#include <stddef.h>        // define NULL

// *****************************************************************************
// Private types and definitions

typedef struct {
  morse_blinker_t morse_blinker;
} blink_3_ctx_t;

// *****************************************************************************
// Private (static) storage

// Allocate a mu_task object for blink_3
static mu_task_t s_blink_3_task;

// Allocate the blink_3 context
static blink_3_ctx_t s_blink_3_ctx;

// *****************************************************************************
// Private (forward) declarations

static void blink_3_fn(void *ctx, void *arg);

// *****************************************************************************
// Public code

void tutorial_init(void) {
  mu_sched_init();
  mu_time_init();

  // initialize s_blink_3_task to associate its function (blink_3_fn) with
  // its context (s_blink_3_ctx)
  mu_task_init(&s_blink_3_task, blink_3_fn, &s_blink_3_ctx, "Blink 3");

  // Invoke the initial call to blink_3 task.  The on_completion callback from
  // morse_blinker will re-trigger it.
  mu_task_call(&s_blink_3_task, NULL);
}

void tutorial_step(void) {
  // This function is called repeatedly.  It only needs to call mu_sched_step()
  // to keep things running.
  mu_sched_step();
}

// *****************************************************************************
// Private (static) code

static void blink_3_fn(void *ctx, void *arg) {
  (void)ctx;  // unused
  (void)arg;  // unused

  // Schedule sub-task to blink the ascii and upon completion, call this task.
  // Note a few things:
  // * morse_blinker_init() returns a (pointer to a) task which can be called
  //   directly.
  // * morse_blinker_init() takes an on_completion argument, which is a task to
  //   be called when the morse blinker task completes.  In this case, the
  //   on_completion argument is the blink_3 task (i.e. this function), so the
  //   process repeats indefinitely.
  mu_task_call(morse_blinker_init(&s_blink_3_ctx.morse_blinker,
                                  'X',
                                  &s_blink_3_task),
               NULL);
}
