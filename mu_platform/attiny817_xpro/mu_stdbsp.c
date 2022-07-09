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

#include "mcc_generated_files/mcc.h"
#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

// synthesized high-order 16 bits of a virtual 32 bit timer.
static volatile uint16_t s_timer_hi;

// *****************************************************************************
// Private (forward) declarations

/**
 * Called whenever the RTC overflows every (1<<16)/32768 = 2 seconds
 */
static void rtc_cb(void);

/*
 * Get the current RTC value.
 */
static uint16_t read_rtc(void);

// *****************************************************************************
// Public code

void mu_stdbsp_init(void) {
  s_timer_hi = 0;
  RTC_SetOVFIsrCallback(rtc_cb);
  RTC_EnableOVFInterrupt();
  mu_stdbsp_led_off();
}

void mu_stdbsp_led_on(void) { LED0_SetLow(); }

void mu_stdbsp_led_off(void) { LED0_SetHigh(); }

void mu_stdbsp_led_toggle(void) { LED0_Toggle(); }

bool mu_stdbsp_button_is_pressed(void) {
  return !SW0_GetValue();
}

bool mu_stdbsp_serial_tx_is_ready(void) {
  return USART0_IsTxReady();
}

bool mu_stbsp_serial_tx_is_idle(void) {
  return USART0_IsTxDone();
}

bool mu_stdbsp_serial_tx_byte(uint8_t ch) {
  USART0_Write(ch);  // includes busy wait
  return true;
}

bool mu_stdbsp_serial_rx_is_ready(void) {
  return USART0_IsRxReady();
}

bool mu_stdbsp_serial_rx_byte(uint8_t *ch) {
  *ch = USART0_Read();  // includes busy wait
  return true;
}

uint32_t mu_stdbsp_now(void) {
  uint16_t hi, lo;
  do {
    hi = s_timer_hi;
    lo = read_rtc();
  } while (s_timer_hi != hi);
  return ((uint32_t)hi << 16) | lo;
}

// *****************************************************************************
// Private (static) code

static void rtc_cb(void) {
  s_timer_hi += 1;
}

uint16_t read_rtc(void) {
  return RTC_ReadCounter();
}
