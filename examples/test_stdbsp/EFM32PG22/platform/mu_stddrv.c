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

#include "mu_stddrv.h"
#include "mu_str.h"
#include "mu_task.h"
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

void mu_stddrv_init(void) {
}

void mu_stddrv_register_button_task(mu_task_t *on_change) {
}

mu_stddrv_err_t mu_stddrv_serial_tx(mu_str_t *txbuf, mu_task_t *on_completion) {
  return MU_STDDRV_ERR_NONE;
}

mu_stddrv_err_t mu_stddrv_serial_rx(mu_str_t *rxbuf, mu_task_t *on_reception) {
  return MU_STDDRV_ERR_NONE;
}

void mu_stddrv_set_alarm(mu_time_abs_t at, mu_task_t *on_expiration) {
}

void mu_stddrv_sleep(mu_task_t *on_wake) {
}

// *****************************************************************************
// Private (static) code
