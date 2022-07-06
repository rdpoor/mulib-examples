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

#include "stm32g4xx_hal.h"
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

// *****************************************************************************
// Private (static) code
