/**
 * MIT License
 *
 * Copyright (c) 2021 R. D. Poor <rdpoor@gmail.com>
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

#include "mu_time.h"

#include "definitions.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

// *****************************************************************************
// Private (forward) declarations

// *****************************************************************************
// Public code

void mu_time_init(void) {
  RTC_Timer32Start();
}

mu_time_abs_t mu_time_now(void) {
  return RTC_Timer32CounterGet();    
}

mu_time_abs_t mu_time_offset(mu_time_abs_t t, mu_time_rel_t dt) {
  return t + dt;
}

mu_time_rel_t mu_time_difference(mu_time_abs_t t1, mu_time_abs_t t2) {
  return t1 - t2;
}

bool mu_time_precedes(mu_time_abs_t t1, mu_time_abs_t t2) {
  return (t1 - t2) > MU_TIME_MAX_TIME_REL;
}

bool mu_time_equals(mu_time_abs_t t1, mu_time_abs_t t2) { return t1 == t2; }

bool mu_time_follows(mu_time_abs_t t1, mu_time_abs_t t2) {
  return (t1 - t2) < MU_TIME_MAX_TIME_REL;
}

int mu_time_rel_to_ms(mu_time_rel_t dt) {
  return (dt * 1000) / RTC_Timer32FrequencyGet();
}

mu_time_rel_t mu_time_ms_to_rel(int ms) {
  return ms * RTC_Timer32FrequencyGet() / 1000;
}

// *****************************************************************************
// Private (static) code
