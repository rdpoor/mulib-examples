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

// *****************************************************************************
// Includes

#include "ansi_term.h"

#include <stdint.h>
#include <stdio.h>

// *****************************************************************************
// Local types and definitions

#define ANSI_TERM_ESC "\33["
#define ANSI_TERM_RESET "0m"
#define ANSI_TERM_SHOW_CURSOR "?25h"
#define ANSI_TERM_HIDE_CURSOR "?25l"

// *****************************************************************************
// Local storage

static ansi_term_color_t s_fg_color;
static ansi_term_color_t s_bg_color;

#define EXPAND_FG_COLORS(_name, _fg, _bg) _fg,
static const uint8_t s_fg_colormap[] = {ANSI_TERM_COLORS(EXPAND_FG_COLORS)};

#define EXPAND_BG_COLORS(_name, _fg, _bg) _bg,
static const uint8_t s_bg_colormap[] = {ANSI_TERM_COLORS(EXPAND_BG_COLORS)};

// *****************************************************************************
// Local (forward) declarations

static void puts_escaped(const char *s);

/**
 * @brief ANSI_TERM_ESC<x>;<y><suffix>
 */
static void puts_xy(int x, int y, const char *suffix);
static void print_int(int v);
static uint8_t map_fg_color(ansi_term_color_t color);
static uint8_t map_bg_color(ansi_term_color_t color);

// *****************************************************************************
// Public code

void ansi_term_init(void) {
  ansi_term_set_colors(ANSI_TERM_DEFAULT_COLOR, ANSI_TERM_DEFAULT_COLOR);
}

void ansi_term_reset() {
  puts_escaped(ANSI_TERM_RESET);
  ansi_term_show_cursor(true);
}

void ansi_term_show_cursor(bool isVisible) {
  puts_escaped(isVisible ? ANSI_TERM_SHOW_CURSOR : ANSI_TERM_HIDE_CURSOR);
}

void ansi_term_home(void) { puts_escaped("H"); }

void ansi_term_clear_buffer(void) { puts_escaped("3J"); }

void ansi_term_clear_screen(void) { puts_escaped("2J"); }

void ansi_term_clear_to_end_of_screen(void) { puts_escaped("J"); }

void ansi_term_clear_line(void) { puts_escaped("2K"); }

void ansi_term_clear_to_end_of_line(void) { puts_escaped("K"); }

void ansi_term_set_cursor_position(uint8_t row, uint8_t col) {
  if ((row == 0) && (col == 0)) {
    ansi_term_home();
  } else {
    // at least one vendor has a printf() that needlessly bloats the image
    // printf(ANSI_TERM_ESC "%d;%dH", row + 1, col + 1);
    puts_xy(row+1, col+1, "H");
  }
}

void ansi_term_set_colors(ansi_term_color_t fg, ansi_term_color_t bg) {
  s_fg_color = fg;
  s_bg_color = bg;
  // printf(ANSI_TERM_ESC "%d;%dm", map_fg_color(fg), map_bg_color(bg));
  puts_xy(map_fg_color(fg), map_bg_color(bg), "m");
}

void ansi_term_get_colors(ansi_term_color_t *fg, ansi_term_color_t *bg) {
  *fg = s_fg_color;
  *bg = s_bg_color;
}

void ansi_term_terminal_bell() { puts("\a"); }

// *****************************************************************************
// Local (static) code

static void puts_escaped(const char *s) {
  puts(ANSI_TERM_ESC);
  puts(s);
}

static void puts_xy(int x, int y, const char *suffix) {
  fputs(ANSI_TERM_ESC, stdout);
  print_int(x);
  putchar(';');
  print_int(y);
  fputs(suffix, stdout);
}

static void print_int(int v) {
  // Handle the special case where v == 0
  if (v == 0) {
    putchar('0');
    return;
  }
  // Handle negative values
  if (v < 0) {
    putchar('-');
    v = -v;
  }
  // Reverse the decimal digits in v into v2.  If v == 7890, then v2 == 0987.
  int n_digits = 0;
  int v2 = 0;
  while (v != 0) {
    v2 *= 10;
    v2 += v % 10;
    v /= 10;
    n_digits += 1;
  }
  // Now v2 has reversed digits.  Print from least to most significant digit.
  while (n_digits-- != 0) {
    putchar(v2 % 10 + '0');
    v2 /= 10;
  }
}

static uint8_t map_fg_color(ansi_term_color_t color) {
  if (color >= ANSI_TERM_COLOR_COUNT) {
    color = ANSI_TERM_DEFAULT_COLOR;
  }
  return s_fg_colormap[color];
}

static uint8_t map_bg_color(ansi_term_color_t color) {
  if (color >= ANSI_TERM_COLOR_COUNT) {
    color = ANSI_TERM_DEFAULT_COLOR;
  }
  return s_bg_colormap[color];
}
