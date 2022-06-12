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

void mu_stddrv_init(void) {

}

void mu_stddrv_register_button_task(mu_task_t *on_change) {

}

mu_stddrv_err_t mu_stddrv_serial_tx(mu_str_t *txbuf, mu_task_t *on_completion) {

}

mu_stddrv_err_t mu_stddrv_serial_rx(mu_str_t *rxbuf, mu_task_t *on_reception) {

}

void mu_stddrv_set_alarm(mu_time_abs_t at, mu_task_t *on_expiration) {
  if (on_expiration == NULL) {
    RTC_Timer32InterruptDisable(RTC_TIMER32_INT_MASK_COMPARE_MATCH);
  } else {
    RTC_Timer32CompareSet(at);
    RTC_Timer32CallbackRegister(rtc_cb, on_expiration);
    RTC_Timer32InterruptEnable(RTC_TIMER32_INT_MASK_COMPARE_MATCH);
  }
}

void mu_stddrv_sleep(mu_task_t *on_wake) {

}

// *****************************************************************************
// Private (static) code

static void rtc_cb(RTC_TIMER32_INT_MASK intCause, uintptr_t context) {
  RTC_Timer32InterruptDisable(intCause);
  mu_irq_queue_task((mu_task_t *)context);
}
