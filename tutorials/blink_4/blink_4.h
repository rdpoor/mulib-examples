/**
 * MIT License
 *
 * Copyright (c) 2020 R. D. Poor <rdpoor@gmail.com>
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
 * @file blink_4.h
 *
 * @brief Repeatedly blink an entire phrase on an LED using Morse code.
 *
 * This example shows how mulitple tasks can be nested, using the on_callback
 * pattern to create complex behavior from simple tasks.
 *
 * In this case, the blink_4 task passes an AsCII string to morse_str, which
 * feeds one letter at a time to morse_blinker.  As morse_blinker completes each
 * letter, it invokes its callback function to fetch the next letter from
 * morse_str.  And when morse_str completes, it calls back to blink_4, which
 * restarts the entire process.
 */

 #ifndef _BLINK_4_H_
 #define _BLINK_4_H_

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
 * @brief Initialize the blink_4 application.  Called once at startup.
 */
void blink_4_init(void);

/**
 * @brief Run the blink_4 application.  Called frequently from main().
 */
void blink_4_step(void);

#ifdef __cplusplus
}
#endif

#endif // _BLINK_4_H_
