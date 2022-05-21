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
 * @file ansi_fb.h
 *
 * ansi_fb uses a double buffer and ANSI terminal escape sequences to
 * efficiently render ASCII art onto a screen.
 */

#ifndef ANSI_FB_H_
#define ANSI_FB_H_

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// includes

#include <stdint.h>

// *****************************************************************************
// types and definitions

// *****************************************************************************
// declarations

/**
 * @brief Initialize the frame buffer with backing store and display store.
 *
 * NB: sizeof(backing_store) and sizeof(display_store) MUST equal width * height
 */
void ansi_fb_init(uint8_t width,
                  uint8_t height,
                  char *backing_store,
                  char *display_store);

/**
 * @brief erase the screen and reset the backing store.
 */
void ansi_fb_reset(void);

/**
 * @brief Clear the backing store without affecting the screen.
 */
void ansi_fb_clear(void);

/**
 * @brief Draw character into the frame buffer backing store at x, y
 *
 * Note: [x=0, y=0] is at bottom left
 */
void ansi_fb_draw(uint8_t x, uint8_t y, char ch);

/**
 * @brief Make the contents of the backing store visible on the screen.
 *
 * Implementation note: this only updates the visible display where it differs
 * from the backing store.
 */
void ansi_fb_show(void);

/**
 * @brief Force the contents of the backing store to be re-drawn, e.g. if the
 * display gets corrupted.
 */
void ansi_fb_refresh(void);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef ANSI_FB_H_ */
