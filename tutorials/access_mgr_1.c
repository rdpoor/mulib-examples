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

#include "tutorial.h"

#include "mu_access_mgr.h"
#include "mu_periodic.h"
#include "mu_sched.h"
#include "mu_task.h"
#include "mu_time.h"
#include "tutorials_bsp.h" // define led_off(), led_toggle()
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

// *****************************************************************************
// Private types and definitions

#define TUTORIAL_INTERVAL_MS 2500
#define RESERVE_MS 500

#define MAX_PENDING_TASKS 2

typedef enum {
  REQUESTOR_STATE_IDLE,         // requestor is idle
  REQUESTOR_STATE_AWAIT_STDOUT, // requestor is awaiting access to stdout
  REQUESTOR_STATE_HOLDING,      // requestor is has exclusive access to stdout
} requestor_state_t;

typedef struct {
  mu_task_t task;          // this requestor's task
  const char *name;        // this requestor's name
  requestor_state_t state; // this requestor's state
} requestor_ctx_t;

// *****************************************************************************
// Private (static) storage

// A timer object to trigger the periodic task at regular intervals.
static mu_periodic_t s_timer;

// A requestor that is called periodically
static requestor_ctx_t s_periodic_requestor_ctx;

// A requestor that is invoked whenever the user types any key
static requestor_ctx_t s_async_requestor_ctx;

// s_access_mgr grants exclusive access to stdout to a requestor
static mu_access_mgr_t s_access_mgr;

// A queue of pending tasks, used by s_access_mgr.
static void *s_pending_tasks[MAX_PENDING_TASKS];

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief Initialize a requestor object.
 */
static mu_task_t *requestor_init(requestor_ctx_t *requestor, const char *name);

/**
 * @brief The function that is called when a requestor runs.
 */
static void requestor_fn(void *ctx, void *arg);

// *****************************************************************************
// Public code

void tutorial_init(void) {
  // Called once at startup.

  mu_sched_init();      // initialize the scheduler
  mu_time_init();       // perform platform-specific initializations
  tutorials_bsp_init(); // platform-specific initialization for tutorials

  mu_access_mgr_init(&s_access_mgr, s_pending_tasks, MAX_PENDING_TASKS);

  // Initialize and start the periodic timer.  It will invoke the
  // periodic requestor once every TUTORIAL_INTERVAL_MS milliseconds.
  mu_periodic_start(mu_periodic_init(&s_timer),
                    mu_time_ms_to_rel(TUTORIAL_INTERVAL_MS),
                    requestor_init(&s_periodic_requestor_ctx, "Periodic"));
}

void tutorial_step(void) {
  // Called frequently from the main() loop.  Poll tutorials_bsp_kbhit() to see
  // if the user has typed any key.  If so, start a task that requests access
  // to stdout.  Regardless, always run the scheduler.

  if (tutorials_bsp_kbhit()) {
     tutorials_bsp_getch(); // consume the character just typed.
     mu_sched_now(requestor_init(&s_async_requestor_ctx, "Async"));
  }
  mu_sched_step();
}

// *****************************************************************************
// Private (static) code

static mu_task_t *requestor_init(requestor_ctx_t *requestor, const char *name) {
  requestor->name = name;
  requestor->state = REQUESTOR_STATE_IDLE;

  if (requestor == &s_async_requestor_ctx) {
      tutorials_bsp_led_toggle();
  }

  return mu_task_init(&requestor->task, requestor_fn, requestor, name);
}

static void requestor_fn(void *ctx, void *arg) {
  requestor_ctx_t *self = (requestor_ctx_t *)ctx;
  (void)arg;

  switch (self->state) {
  case REQUESTOR_STATE_IDLE: {
    // Here when the task first starts. Request access to standard output.
    self->state = REQUESTOR_STATE_AWAIT_STDOUT;
    // access_mgr will invovke this task when access is granted.
    mu_access_mgr_request_ownership(&s_access_mgr, &self->task);
  } break;

  case REQUESTOR_STATE_AWAIT_STDOUT: {
    // Here when access_mgr has granted access to stdout.  Print the first
    // half of a message, and wait for a random interval.
    tutorials_bsp_puts("\n");
    tutorials_bsp_puts(self->name);
    tutorials_bsp_puts(" reserving stdout...");
    self->state = REQUESTOR_STATE_HOLDING;
    // the scheduler will invoke this task when the interval has elapsed.
    mu_sched_in(&self->task, mu_time_ms_to_rel(RESERVE_MS));
  } break;

  case REQUESTOR_STATE_HOLDING: { // Here when the RESERVE_MS has expired.
                                  // Print the second half of
    // a message before relinquishing exclusive access to stdout.
    tutorials_bsp_puts("releasing stdout.");
    mu_access_mgr_release_ownership(&s_access_mgr, &self->task);
    self->state = REQUESTOR_STATE_IDLE;
  } break;
  }
}
