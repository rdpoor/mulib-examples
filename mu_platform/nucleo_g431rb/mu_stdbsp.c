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

#include "main.h"
// #include "stm32g4xx_hal.h"
#include <stdbool.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

// synthesized high-order 16 bits of a virtual 32 bit timer.
static volatile uint16_t s_timer_hi;

static LPTIM_HandleTypeDef *s_hlptim;

// *****************************************************************************
// Private (forward) declarations

static uint32_t read_lptim_count(void);

// *****************************************************************************
// Public code

void mu_stdbsp_init(void) {
  // configure s_hlptim to interrupt once every 2^16 / 32768 = 2 seconds.
  s_timer_hi = 0;
  s_hlptim = main_get_hpltim_handle();
  HAL_LPTIM_Counter_Start_IT(s_hlptim, 0xffff); // should period = 0xffff or 0x0?
  mu_stdbsp_led_off();
}

void mu_stdbsp_led_on(void) { GPIOA->BSRR = GPIO_PIN_5; }

void mu_stdbsp_led_off(void) { GPIOA->BRR = GPIO_PIN_5; }

void mu_stdbsp_led_toggle(void) {
    if (GPIOA->ODR & GPIO_PIN_5) {
        GPIOA->BRR = GPIO_PIN_5;
    } else {
        GPIOA->BSRR = GPIO_PIN_5;
    }
}

bool mu_stdbsp_button_is_pressed(void) {
    return GPIOC->IDR & GPIO_PIN_13;
}

bool mu_stdbsp_serial_tx_is_ready(void) {
    return LPUART1->ISR & USART_ISR_TXE;
}

bool mu_stbsp_serial_tx_is_idle(void) {
    return LPUART1->ISR & USART_ISR_TC;
}

bool mu_stdbsp_serial_tx_byte(uint8_t ch) {
    while (!mu_stdbsp_serial_tx_is_ready()) {
        asm("nop");
    }
    LPUART1->TDR = ch;
    return true;
}

bool mu_stdbsp_serial_rx_is_ready(void) {
    return LPUART1->ISR & USART_ISR_RXNE;
}

bool mu_stdbsp_serial_rx_byte(uint8_t *ch) {
    while (!mu_stdbsp_serial_rx_is_ready()) {
        asm("nop");
    }
	*ch = LPUART1->RDR;
	return true;
}

uint32_t mu_stdbsp_now(void) {
  // This is a technique for creating a 32 bit RTC without disabling interrupts
  // nb: s_hlptim counter is 16 bits wide, but read as a 32 bit value.
  uint32_t hi, lo;
  do {
    hi = s_timer_hi;            // make a copy of high 16 bits
    lo = read_lptim_count();    // make a copy of low 16 bits
  } while (s_timer_hi != hi);   // repeat if rolled over
  return (hi << 16) | lo;       // return 32 bit composite value
}

// *****************************************************************************
// Private (static) code

/**
 * @brief Return the latest reading from LPTIM1
 */
static uint32_t read_lptim_count(void) {
  // NOTE from the documentation:
  //
  // When the LPTIM is running with an asynchronous clock, reading the LPTIM_CNT
  // register may return unreliable values. So in this case it is necessary to
  // perform two consecutive read accesses and verify that the two returned
  // values are identical.
  //
  // It should be noted that for a reliable LPTIM_CNT register read access, two
  // consecutive read accesses must be performed and compared. A read access can
  // be considered reliable when the values of the two consecutive read accesses
  // are equal.
  //
  // NOTE also: though this returns a 32 bit value, the counter is only 16 bits
  uint32_t val;
  do {
    val = HAL_LPTIM_ReadCounter(s_hlptim);
  } while (val != HAL_LPTIM_ReadCounter(s_hlptim));
  return val;
}

/**
 * Called whenever s_hlptim overflows every (1<<16)/32768 = 2 seconds
 *
 * This overrides a weak pointer defined in
 * Drivers\STM32G4xx_HAL_Driver\Src\stm32g4xx_hal_lptim.c
 */
void HAL_LPTIM_AutoReloadMatchCallback(LPTIM_HandleTypeDef *hlptim) {
  (void)hlptim;
  s_timer_hi += 1;
}
