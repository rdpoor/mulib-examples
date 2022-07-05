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

#include "mcc.h"
#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

static volatile uint16_t s_rtc_hi;  // high order 16 bits of "synthesized" RTC

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief Called at interrupt level, increment the overflow counter for the RTC.
 * s_rtc_hi will increment once every 64K counts, i.e. every 2 seconds.  Refer
 * to mu_time_now() to see how it's used.
 */
static void rtc_ovf_cb(void);

// *****************************************************************************
// Public code

void mu_time_init(void) {
  s_rtc_hi = 0;
  RTC_SetOVFIsrCallback(rtc_ovf_cb);
}

// mu_time_now() deserves some explanation:
//
// The AVR's RTC is a 16 bit counter.  Clocked at 32867 Hz, it will roll over
// once every 2 seconds, which is too short for many practical applications, so
// this code synthesizes a 32 bit counter.
//
// Whenever the RTC rolls over, it increments s_rtc_hi at interrupt level.
// Called at foreground level, mu_time_now() works as follows:
// 1. It captures a snapshot of s_rtc_hi in hi.
// 2. It captures a snapshot of the RTC 16 bit counter in lo.
// 3. It conpares the snapshot value of hi to s_rtc_hi
// 4. If s_rtc_hi has changed since step 1, it re-runs steps 1-4
//
// Commentary: copying and comparing 16 bit values is NOT atomic on an AVR
// processor but the above code still works because, at step 4., one of two
// conditions must be true:
//
// A: The expression evaluates to true: This means that the loop detected that
// s_rtc_hi changed after the snapshot was taken, so it does another pass
// through the loop to capture fresh snapshots.
//
// B: The expression evaluates to false: This means that s_rtc_hi is unchanged,
// or (possibly) might be in the process of changing.  But we've already
// captured snapshots for lo and hi so we don't need to re-run the loop.
//
mu_time_abs_t mu_time_now(void) {
  uint16_t lo;
  uint16_t hi;
  do {
    hi = s_rtc_hi;
    lo = RTC_ReadCounter();
  } while (hi != s_rtc_hi);
  return ((uint32_t)(hi) << 16) | lo;
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
  return MU_TIME_REL_TO_MS(dt);
}

mu_time_rel_t mu_time_ms_to_rel(int ms) {
  return MU_TIME_MS_TO_REL(ms);
}

// *****************************************************************************
// Private (static) code

static void rtc_ovf_cb(void) {
  s_rtc_hi += 1;
}
