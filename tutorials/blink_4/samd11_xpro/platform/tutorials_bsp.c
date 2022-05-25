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

#include "tutorials_bsp.h"

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

void tutorials_bsp_init(void) {
  // no intialization needed
}

void tutorials_bsp_led_on(void) { LED_Clear(); }

void tutorials_bsp_led_off(void) { LED_Set(); }

void tutorials_bsp_led_toggle(void) { LED_Toggle(); }

bool tutorials_bsp_button_is_pressed(void) {
  return !BUTTON_Get();
}

bool tutorials_bsp_kbhit(void) { return SERCOM2_USART_ReceiverIsReady(); }

char tutorials_bsp_getch(void) { return SERCOM2_USART_ReadByte(); }

void tutorials_bsp_puts(const char *str) {
  while (*str) {
    SERCOM2_USART_WriteByte(*str++);
  }
}

// *****************************************************************************
// Private (static) code
