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
 * @file blink_3.h
 *
 * @brief Repeatedly blink an LED with the letter 'A' using morse code.
 *
 * This example shows a common pattern for mulib: invoke one task when another
 * task completes.
 *
 * In this case, the blink_3 task triggers a call to the morse_blink task.  The
 * morse_blink task handles all the timing to blink the letter 'A', and when it
 * finishes, it invokes the blink_3 task, which simply restarts the process.
 */

#ifndef _BLINK_3_H_
#define _BLINK_3_H_

// *****************************************************************************
// Includes

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

// *****************************************************************************
// Public declarations

/**
 * @brief Initialize the blink_3 application.  Called once at startup.
 */
void blink_3_init(void);

/**
 * @brief Run the blink_3 application.  Called frequently from main().
 */
void blink_3_step(void);

#ifdef __cplusplus
}
#endif

#endif // _BLINK_3_H_
