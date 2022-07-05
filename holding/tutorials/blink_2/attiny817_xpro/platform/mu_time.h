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
 * @file mu_time.h
 *
 * @brief Platform specific declarations for mulib time functions.
 *
 * On the EFM32GG12, the RTCC is a 32 bit counter, clocked at 32768 Hz.
 * Configure it to run continually and roll over at maximum count.
 */

#ifndef _MU_TIME_H_
#define _MU_TIME_H_

// *****************************************************************************
// Includes

#include <stdint.h>
#include <stdbool.h>

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

// Specific to this platform
#define MU_TIME_CLOCK_FREQUENCY 32768

// Required: define a macro to convert milliseconds to mu_time_rel_t
#define MU_TIME_MS_TO_REL(ms) \
  (mu_time_rel_t)((ms) * (MU_TIME_CLOCK_FREQUENCY / 1000))

// Required: define a macro to convert mu_time_rel_t to milliseconds
#define MU_TIME_REL_TO_MS(time) \
  (int)(((time) * 1000) / MU_TIME_CLOCK_FREQUENCY)

// Required: define a data type to hold absolute time.
typedef uint32_t mu_time_abs_t;

// Required: define a data type to hold relative time, i.e. an interval between
// two absolute times.  Note that this may be negative.
typedef int32_t mu_time_rel_t;

// Required: define the maximum relative time.  Note that this will be used to
// distinguish between a long time in the future and a long time in the past.
#define MU_TIME_MAX_TIME_REL INT32_MAX

// Optional: If implementing power management, the minimum time the system will
// sleep for.
// #define MU_TIME_SLEEP_TIME_MIN mu_time_ms_to_rel(1)

// *****************************************************************************
// Public declarations

/**
 * @brief Initialize the mu_time module as needed.  Called once at startup.
 */
void mu_time_init(void);

/**
 * @brief Get the current time.
 *
 * NOTE: If you plan to implement low-power sleep, the timer used for this
 * function must continue to run in sleep mode.
 *
 * Note: mulib library functions properly handle mu_time_abs_t rolling over as
 * long as the relative time is less than MU_TIME_MAX_TIME_REL
 *
 * @return The current absolute time.
 */
mu_time_abs_t mu_time_now(void);

/**
 * @brief Add a time and a duration.
 *
 * `mu_time_offset` adds an absolute time and a relative time to produce a new
 * absolute time.
 *
 * @param t1 a time object
 * @param dt a duration object
 * @return t1 offset by dt
 */
mu_time_abs_t mu_time_offset(mu_time_abs_t t, mu_time_rel_t dt);

/**
 * @brief Take the difference between two time objects
 *
 * `mu_time_difference` subtracts absolute time t2 from absolute time t1 to
 * produce a relative time.
 *
 * @param t1 A time object
 * @param t2 A time object
 * @return (t1-t2) as a relative time
 */
mu_time_rel_t mu_time_difference(mu_time_abs_t t1, mu_time_abs_t t2);

/**
 * @brief Return true if t1 is strictly before t2
 *
 * Note that if you want to know if t1 is before or equal to t2, you can use the
 * construct `!mu_time_follows(t2, t1)``
 *
 * @param t1 A time object
 * @param t2 A time object
 * @return true if t1 is strictly before t2, false otherwise.
 */
bool mu_time_precedes(mu_time_abs_t t1, mu_time_abs_t t2);

/**
 * @brief Return true if t1 is equal to t2
 *
 * @param t1 A time object
 * @param t2 A time object
 * @return true if t1 equals t2, false otherwise.
 */
bool mu_time_equals(mu_time_abs_t t1, mu_time_abs_t t2);

/**
 * @brief Return true if t1 is strictly after t2
 *
 * Note that if you want to know if t1 is equal to or after t2, you can use the
 * construct `!mu_time_precedes(t2, t1)``
 *
 * @param t1 A time object
 * @param t2 A time object
 * @return true if t1 is strictly after t2, false otherwise.
 */
bool mu_time_follows(mu_time_abs_t t1, mu_time_abs_t t2);

/**
 * @brief Convert a mu_time_rel_t to milliseconds;
 *
 * @param dt A relative time object
 * @return dt converted to milliseconds
 */
int mu_time_rel_to_ms(mu_time_rel_t dt);

/**
 * @brief Convert milliseconds to a mu_time_rel_t
 *
 * @param ms A relative time in milliseconds
 * @return milliseconds converted to mu_time_rel_t
 */
mu_time_rel_t mu_time_ms_to_rel(int ms);

#ifdef MU_TIME_HAS_FLOAT
/**
 * @brief Convert a duration to seconds.
 *
 * @param dt A relative time
 * @return dt converted to seconds
 */
MU_FLOAT mu_time_rel_to_s(mu_time_rel_t dt);

/**
 * @brief Convert seconds to a duration.
 *
 * @param s A relative time in seconds
 * @return seconds converted to mu_time_rel_t
 */
mu_time_rel_t mu_time_s_to_rel(MU_FLOAT s);
#endif


// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_TIME_H_ */
