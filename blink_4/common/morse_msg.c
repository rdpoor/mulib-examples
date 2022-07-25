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

// =============================================================================
// Includes

#include "morse_msg.h"

#include "mulib.h"

// =============================================================================
// Local types and definitions

// =============================================================================
// Local (forward) declarations

static void morse_msg_fn(void *ctx, void *arg);

// =============================================================================
// Local storage

// =============================================================================
// Public code

mu_task_t *morse_msg_init(morse_msg_t *morse_msg,
                          const char *message,
                          mu_task_t *on_completion) {
  mu_task_init(&morse_msg->task, morse_msg_fn, morse_msg, "Morse Msg");

  // Initialize s_morse_msg_ctx
  morse_msg->message = message;
  morse_msg->on_completion = on_completion;

  // Return the task object, ready to be passed to the scheduler
  return &morse_msg->task;

}

// =============================================================================
// Local (private) code

static void morse_msg_fn(void *ctx, void *arg) {
  morse_msg_t *self = (morse_msg_t *)ctx;   // cast void *ctx to morse_mst_t *
  (void)arg;  // unused

  // Fetch the next character in the message
  char ch = *(self->message++);

  if (ch != '\0') {
    // Schedule sub-task to blink the ascii as morse code, and upon completion,
    // call this task again.
    mu_task_call(morse_blinker_init(&self->blinker, ch, &self->task), NULL);
  } else {
    // Completed the message.   Call the on_completion task (if provided) after
    // a one second delay.
    if (self->on_completion != NULL) {
      mu_sched_in(self->on_completion, mu_time_ms_to_rel(1000));
    }
  }
}
