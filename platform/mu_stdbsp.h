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
 * @file mu_stdbsp.h
 *
 * @brief Short description of what this module does
 */

#ifndef _MU_STDBSP_H_
#define _MU_STDBSP_H_

// *****************************************************************************
// Includes

#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

// *****************************************************************************
// Public declarations

/**
 * @brief Perform platform-specific initialization.  Called once at startup.
 */
void mu_stdbsp_init(void);

/**
 * @brief Turn on the "standard LED"
 */
void mu_stdbsp_led_on(void);
/**
 * @brief Turn off the "standard LED"
 */
void mu_stdbsp_led_off(void);
/**
 * @brief Toggle the "standard LED"
 */
void mu_stdbsp_led_toggle(void);

/**
 * @brief Return true if the "standard button" is pressed
 */
bool mu_stdbsp_button_is_pressed(void);

/**
 * @brief Return true if the next call to `mu_stdbsp_serial_tx_byte()` will not
 * block.
 */
bool mu_stdbsp_serial_tx_is_ready(void);

/**
 * @brief Return true if the serial transmitter is idle.
 *
 * This is different from mu_stdbsp_serial_tx_is_ready(), which tells you if
 * the serial transmitter is ready to accept another byte.  By contrast, this
 * function is useful for determining if it is safe to shut down the transmitter
 * without losing a byte.
 */
bool mu_stbsp_serial_tx_is_idle(void);

/**
 * @brief Transmit a byte over the "standard serial" line.  Note that this may
 * block.  See also `mu_stdbsp_serial_tx_is_ready()`.
 *
 * @return true on success, false on any kind of failure.
 */
bool mu_stdbsp_serial_tx_byte(uint8_t ch);

/**
 * @brief Return true if the next call to `mu_stdbsp_serial_rx_byte()` will not
 * block.
 */
bool mu_stdbsp_serial_rx_is_ready(void);

/**
 * @brief Receive a byte over the serial line.  Note that this may block.  See
 * also `mu_stdbsp_serial_rx_is_ready()`.
 *
 * @return true on success, false on any kind of failure.
 */
bool mu_stdbsp_serial_rx_byte(uint8_t *ch);

/**
 * @brief Print a null-terminated string.
 */
void mu_stdbsp_puts(const char *str);

#ifdef INCLUDE_HIGHER_LEVEL_MULIB_FUNCTIONS
// I have not yet decided if these belong in mu_stdbsp.h or if they should be
// partitioned into a separate file.  I think they believe in a separate file.

#include "mu_str.h"
#include "mu_task.h"

/**
 * @brief Register a mu_task to be called whenever the standard button changes
 * state.
 */
void mu_stdbsp_register_button_task(mu_task_t *on_change);

/**
 * @brief Transmit a string over the standard serial line, calling the
 * `on_completion` task when the last byte has been sent.
 */
mu_stdbsp_err_t mu_stdbsp_serial_tx(mu_str_t *txbuf, mu_task_t *on_completion);

/**
 * @brief Start receiving bytes over the serial line, calling the on_reception
 * task when one or more bytes have been written into rxbuf.  A null value for
 * rx_buf or for on_reception will stop the receive process.
 */
mu_stdbsp_err_t mu_stdbsp_serial_rx(mu_str_t *rxbuf, mu_task_t *on_reception);

/**
 * @brief Set an alarm that will trigger when `mu_time_now()` equals `at`.
 * Passing on_expiration == NULL will clear the alarm.
 * Only one alarm is in effect at a time.  For multiple alarms, use `mu_sched`.
 */
void mu_stdbsp_set_alarm(mu_time_abs_t at, mu_task_t *on_expiration);

/**
 * @brief Put the processor into a low-power mode, waking on an external
 * interrupt or when the time specified by mu_stdbsp_set_alarm() arrives.
 */
void mu_stdbsp_sleep(mu_task_t *on_wake);

#endif  // #ifdef INCLUDE_HIGHER_LEVEL_MULIB_FUNCTIONS




// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_STDBSP_H_ */
