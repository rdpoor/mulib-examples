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
 * @file ansi_term.h
 *
 * Support for the more common ANSI terminal escape sequences.
 */

#ifndef _ANSI_TERM_H_
#define _ANSI_TERM_H_

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// includes

#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// types and definitions

#define ANSI_TERM_COLORS(M)                                                    \
  M(ANSI_TERM_BLACK, 30, 40)                                                   \
  M(ANSI_TERM_RED, 31, 41)                                                     \
  M(ANSI_TERM_GREEN, 32, 42)                                                   \
  M(ANSI_TERM_YELLOW, 33, 43)                                                  \
  M(ANSI_TERM_BLUE, 34, 44)                                                    \
  M(ANSI_TERM_MAGENTA, 35, 45)                                                 \
  M(ANSI_TERM_CYAN, 36, 46)                                                    \
  M(ANSI_TERM_WHITE, 37, 47)                                                   \
  M(ANSI_TERM_GRAY, 90, 100)                                                   \
  M(ANSI_TERM_BRIGHT_RED, 91, 101)                                             \
  M(ANSI_TERM_BRIGHT_GREEN, 92, 102)                                           \
  M(ANSI_TERM_BRIGHT_YELLOW, 93, 103)                                          \
  M(ANSI_TERM_BRIGHT_BLUE, 94, 104)                                            \
  M(ANSI_TERM_BRIGHT_MAGENTA, 95, 105)                                         \
  M(ANSI_TERM_BRIGHT_CYAN, 96, 106)                                            \
  M(ANSI_TERM_DEFAULT_COLOR, 39, 49)                                           \
  M(ANSI_TERM_BRIGHT_WHITE, 97, 107)

#define ANSI_TERM_EXPAND_NAMES(_name, _foreground, _background) _name,
typedef enum {
  ANSI_TERM_COLORS(ANSI_TERM_EXPAND_NAMES) ANSI_TERM_COLOR_COUNT
} ansi_term_color_t;

/**
 * @brief Signature of the user-supplied function to print a character.
 */
typedef void (*ansi_term_putc_fn)(char ch);

// *****************************************************************************
// declarations

/**
 * @brief Initialize the ansi terminal module.  putc_fn is a user supplied
 * function to print a single character on the screen.
 */
void ansi_term_init(ansi_term_putc_fn fn);

/**
 * @brief Standard ansi term reset
 */
void ansi_term_reset();

/**
 * @brief Set cursor visibility
 */
void ansi_term_show_cursor(bool isVisible);

/**
 * @brief Move cursor to 0, 0
 */
void ansi_term_home(void);

/**
 * @brief Erase screen and scrollback
 */
void ansi_term_clear_buffer(void);

/**
 * @brief Erase screen
 */
void ansi_term_clear_screen(void);

/**
 * @brief Erase screen from current cursor position
 */
void ansi_term_clear_to_end_of_screen(void);

/**
 * @brief Erase current line
 */
void ansi_term_clear_line(void);

/**
 * @brief Erase line from current cursor position
 */
void ansi_term_clear_to_end_of_line(void);

/**
 * @brief Set Cursor Position
 */
void ansi_term_set_cursor_position(uint8_t row, uint8_t col);

/**
 * @brief Get foreground and background color
 */
void ansi_term_get_colors(ansi_term_color_t *fg, ansi_term_color_t *bg);

/**
 * @brief Set foreground and background color
 */
void ansi_term_set_colors(ansi_term_color_t fg, ansi_term_color_t bg);

/**
 * @brief Ring bell (or visual bell)
 */
void ansi_term_terminal_bell(void);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _ANSI_TERM_H_ */
