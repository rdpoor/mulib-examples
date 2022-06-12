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
#include "sl_simple_led_led0_config.h"
#include "sl_simple_button_btn0_config.h"
#include "sl_uartdrv_usart_vcom_config.h"
#include "em_usart.h"
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

void mu_stdbsp_led_on(void) {
  GPIO_PinOutSet(SL_SIMPLE_LED_LED0_PORT, SL_SIMPLE_LED_LED0_PIN);
}

void mu_stdbsp_led_off(void) {
  GPIO_PinOutClear(SL_SIMPLE_LED_LED0_PORT, SL_SIMPLE_LED_LED0_PIN);
}

void mu_stdbsp_led_toggle(void) {
  GPIO_PinOutToggle(SL_SIMPLE_LED_LED0_PORT, SL_SIMPLE_LED_LED0_PIN);
}

bool mu_stdbsp_button_is_pressed(void) {
  return !GPIO_PinInGet(SL_SIMPLE_BUTTON_BTN0_PORT, SL_SIMPLE_BUTTON_BTN0_PIN);
}

bool mu_stdbsp_serial_tx_is_ready(void) {
    return SL_UARTDRV_USART_VCOM_PERIPHERAL->STATUS & USART_STATUS_TXBL;
}

bool mu_stbsp_serial_tx_is_idle(void) {
  return SL_UARTDRV_USART_VCOM_PERIPHERAL->STATUS & USART_STATUS_TXC;
}

bool mu_stdbsp_serial_tx_byte(uint8_t ch) {
    // block until tx buffer is available before writing the data
    while (!(SL_UARTDRV_USART_VCOM_PERIPHERAL->STATUS & USART_STATUS_TXBL)) {
    }
    SL_UARTDRV_USART_VCOM_PERIPHERAL->TXDATA = (uint32_t)ch;
    return true;
}

bool mu_stdbsp_serial_rx_is_ready(void) {
  return SL_UARTDRV_USART_VCOM_PERIPHERAL->STATUS & USART_STATUS_RXDATAV;
}

bool mu_stdbsp_serial_rx_byte(uint8_t *ch) {
  // block until a char is available before reading the byte
  while (!(SL_UARTDRV_USART_VCOM_PERIPHERAL->STATUS & USART_STATUS_RXDATAV)) {
  }
  *ch = (uint8_t)SL_UARTDRV_USART_VCOM_PERIPHERAL->RXDATA;
  return true;
}

void mu_stdbsp_puts(const char *str) {
    while (*str) {
      mu_stdbsp_serial_tx_byte(*str++);
    }
}

// *****************************************************************************
// Private (static) code
