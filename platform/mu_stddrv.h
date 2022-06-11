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
 * @file mu_stddrv.h
 *
 * @brief API for standard mulib based drivers.
 */

#ifndef _MU_STDDRV_H_
#define _MU_STDDRV_H_

// *****************************************************************************
// Includes

#include "mu_str.h"
#include "mu_task.h"
#include "mu_time.h"
#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

typedef enum {
  MU_STDDRV_ERR_NONE,
} mu_stddrv_err_t;

// Public declarations
// *****************************************************************************

/**
 * @brief Perform platform-specific initialization.  Called once at startup.
 */
void mu_stddrv_init(void);

/**
 * @brief Register a mu_task to be called whenever the standard button changes
 * state.
 */
void mu_stddrv_register_button_task(mu_task_t *on_change);

/**
 * @brief Transmit a string over the standard serial line, calling the
 * `on_completion` task when the last byte has been sent.
 */
mu_stddrv_err_t mu_stddrv_serial_tx(mu_str_t *txbuf, mu_task_t *on_completion);

/**
 * @brief Start receiving bytes over the serial line, calling the on_reception
 * task when one or more bytes have been written into rxbuf.  A null value for
 * rx_buf or for on_reception will stop the receive process.
 */
mu_stddrv_err_t mu_stddrv_serial_rx(mu_str_t *rxbuf, mu_task_t *on_reception);

/**
 * @brief Set an alarm that will trigger when `mu_time_now()` equals `at`.
 * Passing on_expiration == NULL will clear the alarm.
 * Only one alarm is in effect at a time.  For multiple alarms, use `mu_sched`.
 */
void mu_stddrv_set_alarm(mu_time_abs_t at, mu_task_t *on_expiration);

/**
 * @brief Put the processor into a low-power mode, waking on an external
 * interrupt or when the time specified by mu_stddrv_set_alarm() arrives.
 */
void mu_stddrv_sleep(mu_task_t *on_wake);

// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_STDDRV_H_ */
