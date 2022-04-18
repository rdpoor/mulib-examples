/**
 * @file mu_event.c
 *
 * MIT License
 *
 * Copyright (c) 2022 R. Dunbar Poor
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
 *
 */

// *****************************************************************************
// Includes

#include "mu_event.h"

#include "mu_list.h"
#include "mu_task_list.h"
#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// Local (private) types and definitions

// *****************************************************************************
// Local (private, static) forward declarations

// *****************************************************************************
// Local (private, static) storage

// *****************************************************************************
// Public code

mu_event_t *mu_event_init(mu_event_t *event) {
  mu_task_list_init(&event->tasks);
  return event;
}

mu_event_t *mu_event_reset(mu_event_t *event) {
  mu_task_list_reset(&event->tasks);
  return event;
}

mu_event_t *mu_event_set_time(mu_event_t *event, mu_time_abs_t at) {
  event->at = at;
  return event;
}

mu_time_abs_t mu_event_get_time(mu_event_t *event) { return event->at; }

bool mu_event_is_empty(mu_event_t *event) {
  return mu_task_list_is_empty(&event->tasks);
}

mu_task_t *mu_event_append_task(mu_event_t *event, mu_task_t *task) {
  return mu_task_list_append_task(&event->tasks, task);
}

mu_task_t *mu_event_prepend_task(mu_event_t *event, mu_task_t *task) {
  return mu_task_list_prepend_task(&event->tasks, task);
}

mu_task_t *mu_event_remove_task(mu_event_t *event, mu_task_t *task) {
  return mu_task_list_remove_task(&event->tasks, task);
}

mu_task_t *mu_event_pop_task(mu_event_t *event) {
  return mu_task_list_pop_task(&event->tasks);
}

void mu_event_call(mu_event_t *event, void *arg, bool retain) {
  mu_task_list_call(&event->tasks, arg, retain);
}

// *****************************************************************************
// Local (private, static) code
