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

#include "definitions.h"
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
  RTC_Timer32Start();
  mu_stdbsp_led_off();
}

void mu_stdbsp_led_on(void) { LED_On(); }

void mu_stdbsp_led_off(void) { LED_Off(); }

void mu_stdbsp_led_toggle(void) { LED_Toggle(); }

bool mu_stdbsp_button_is_pressed(void) {
  return SWITCH_Get() == SWITCH_STATE_PRESSED;
}

bool mu_stdbsp_serial_tx_is_ready(void) {
  return SERCOM2_USART_TransmitterIsReady();
}

bool mu_stbsp_serial_tx_is_idle(void) {
  return SERCOM2_USART_TransmitComplete();
}

bool mu_stdbsp_serial_tx_byte(uint8_t ch) {
  SERCOM2_USART_WriteByte(ch);
  return true;
}

bool mu_stdbsp_serial_rx_is_ready(void) {
  return SERCOM2_USART_ReceiverIsReady();
}

bool mu_stdbsp_serial_rx_byte(uint8_t *ch) {
  while (!SERCOM2_USART_ReceiverIsReady()) {
    asm("nop");
  }
  *ch = SERCOM2_USART_ReadByte();
  return true;
}

// *****************************************************************************
// Private (static) code
