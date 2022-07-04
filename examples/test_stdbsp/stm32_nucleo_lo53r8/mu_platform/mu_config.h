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
 * @file mu_config.h
 *
 * @brief Platform specific definitions and declarations required by mulib.
 *
 * If you are porting mulib to a specific platform, create the required
 * definitions and declarations in mu_config.h and mu_time.h and implementation
 * in mu_time.c.  If you are using mulib in your project, you must find (or
 & create) the appropriate mu_config and mu_time files for your config.
 */

#ifndef _MU_CONFIG_H_
#define _MU_CONFIG_H_

// *****************************************************************************
// Includes

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

// Optional: un-comment this if your config supports floating point operations
// #define MU_CONFIG_HAS_FLOAT

// Optional: Define the number of events that may be scheduled in mu_sched.
// Leave commented to accept the default.
// #define MU_CONFIG_MAX_EVENTS <n>

// Optional: Uncomment the following to generate profiling functions for mu_task
// and mu_sched, at the expense of larger storage and slightly slower executiion
// times.
// define MU_CONFIG_PROFILING_TASKS

// Optional: If implementing power management, the minimum time the system will
// sleep for.
// #define MU_CONFIG_SLEEP_TIME_MIN mu_time_ms_to_rel(1)

// *****************************************************************************
// Public declarations

// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_CONFIG_H_ */
