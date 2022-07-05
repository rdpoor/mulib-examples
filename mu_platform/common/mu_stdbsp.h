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


// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_STDBSP_H_ */
