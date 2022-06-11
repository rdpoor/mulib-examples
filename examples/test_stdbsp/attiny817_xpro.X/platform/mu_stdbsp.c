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

#include "mu_stdbsp.h"

#include "mcc.h"
#include "mu_time.h"
#include <stdbool.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

// *****************************************************************************
// Private (forward) declarations

// *****************************************************************************
// Public code

void mu_stdbsp_init(void) {
  mu_time_init();
}

void mu_stdbsp_led_on(void) { LED__SetLow(); }

void mu_stdbsp_led_off(void) { LED__SetHigh(); }

void mu_stdbsp_led_toggle(void) { LED__Toggle(); }

bool mu_stdbsp_button_is_pressed(void) { return BUTTON__GetValue() == 0; }

bool mu_stdbsp_serial_tx_is_ready(void) { return USART0_IsTxReady(); }

bool mu_stbsp_serial_tx_is_idle(void) { return USART0_IsTxDone(); }

bool mu_stdbsp_serial_tx_byte(uint8_t ch) {
    USART0_Write(ch);
    return true;
}

bool mu_stdbsp_serial_rx_is_ready(void) { return USART0_IsRxReady(); }

bool mu_stdbsp_serial_rx_byte(uint8_t *ch) {
    *ch = USART0_Read();
    return true;
}

void mu_stdbsp_puts(const char *str) {
    while (*str) {
        USART0_Write(*str++);
    }
}

// *****************************************************************************
// Private (static) code
