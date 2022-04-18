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
 * @file tutorials_bsp.h
 *
 * @brief Define platform-specific functions required for the mulib tutorials.
 */

#ifndef _TUTORIALS_BSP_H_
#define _TUTORIALS_BSP_H_

// *****************************************************************************
// Includes

#include <stdbool.h>
#include <stdio.h>

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

#define tutorials_bsp_printf(...) printf(__VA_ARGS__)

// *****************************************************************************
// Public declarations

void tutorials_bsp_led_on(void);

void tutorials_bsp_led_off(void);

void tutorials_bsp_led_toggle(void);

bool tutorials_bsp_button_is_pressed(void);

// *****************************************************************************
// End of file

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _TUTORIALS_BSP_H_ */
