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

// *****************************************************************************
// Includes

#include "blink_4.h"

#include "morse_str.h"     // define morse_str_*
#include "mu_sched.h"      // define mu_sched_*
#include "mu_task.h"       // define mu_task_*

// *****************************************************************************
// Private types and definitions

#define MESSAGE "Hello, world!"

typedef struct {
  morse_str_t morse_str;
} blink_4_ctx_t;

// *****************************************************************************
// Private (static) storage

// Allocate a mu_task object for blink_4
static mu_task_t s_blink_4_task;

// Allocate the blink_4 context
static blink_4_ctx_t s_blink_4_ctx;

// *****************************************************************************
// Private (forward) declarations

static void blink_4_fn(void *ctx, void *arg);

// *****************************************************************************
// Public code

void blink_4_init(void) {
  mu_sched_init();
  mu_platform_init();

  // initialize s_blink_4_task to associate its function (blink_4_fn) with
  // its context (s_blink_4_ctx)
  mu_task_init(&s_blink3_task, blink_4_fn, &s_blink_4_ctx, "Blink 4");

  // Invoke the initial call to blink_4 task.  The on_completion callback from
  // morse_blinker will re-trigger it.
  mu_task_call(&s_blink_4_task);
}

void blink_4_step(void) {
  // This function is called repeatedly.  It only needs to call mu_sched_step()
  // to keep things running.
  mu_sched_step();
}

// *****************************************************************************
// Private (static) code

static void blink_4_fn(void *ctx, void *arg) {
  (void)ctx;  // unused
  (void)arg;  // unused

  // Schedule sub-task to blink the ascii and upon completion, call this task.
  // Note a few things:
  // * morse_str_init() returns a (pointer to a) task which can be called
  //   directly.
  // * morse_str_init() takes an on_completion argument, which is a task to
  //   be called when the morse str task completes.  In this case, the
  //   on_completion argument is the blink_4 task (i.e. this function), so the
  //   process repeats indefinitely.
  mu_task_call(morse_str_init(&s_blink_3_ctx.morse_str,
                              MESSAGE,
                              &s_blink_4_task));
}
