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

#include "tower_fb.h"

#include "ansi_term.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>

// *****************************************************************************
// Local types and definitions

#define GLYPH_SPACE 0
#define GLYPH_OCTOTHORPE 1
#define GLYPH_EQUALS 2

typedef struct {
  char *backing_store;
  char *display_store;
  uint8_t width;
  uint8_t height;
} tower_fb_t;

// *****************************************************************************
// Local storage

static tower_fb_t s_fb;

// *****************************************************************************
// Local (forward) declarations

static void clear_display(void);

static glyph_t compress_glyph(char ch);

static char expand_glyph(char glyph);

static glyph_t glyph_get(char *buf, int byte_offset, int bit_offset);

static void glyph_set(char *buf,
                      int byte_offset,
                      int bit_offset,
                      glyph_t glyph);

// *****************************************************************************
// Public code

void tower_fb_init(uint8_t width,
                   uint8_t height,
                   char *backing_store,
                   char *display_store) {
  s_fb.width = width;
  s_fb.height = height;
  s_fb.backing_store = backing_store;
  s_fb.display_store = display_store;
  tower_fb_reset();
}

void tower_fb_reset(void) {
  clear_display();
  tower_fb_clear();
}

void tower_fb_clear(void) {
  // Assumes that GLYPH_SPACE = 0
  memset(s_fb.backing_store, 0, s_fb.width * s_fb.height / GLYPHS_PER_BYTE);
}

void tower_fb_draw(uint8_t x, uint8_t y, char ch) {
  int glyph_index = y + x * s_fb.width;
  int byte_offset = glyph_index / GLYPHS_PER_BYTE;
  int bit_offset = glyph_index & (GLYPHS_PER_BYTE - 1);

  glyph_set(s_fb.backing_store, byte_offset, bit_offset, compress_glyph(ch));
}

// Step through each glyph in the backing_store.  If it differs from the glyph
// in the display_store, expand the glyph into its original ASCII, display it
// and update the display_store to reflect the change.
void tower_fb_show(void) {
  for (uint8_t y = 0; y < s_fb.height; y++) {
    for (uint8_t x = 0; x < s_fb.width; x++) {
      int glyph_index = y + x * s_fb.width;
      int byte_offset = glyph_index / GLYPHS_PER_BYTE;
      int bit_offset = glyph_index & (GLYPHS_PER_BYTE - 1);

      glyph_t gb = glyph_get(s_fb.backing_store, byte_offset, bit_offset);
      glyph_t gd = glyph_get(s_fb.display_store, byte_offset, bit_offset);
      if (gb != gd) {
        // backing_store != display_store: update the physical screen
        ansi_term_set_cursor_position(y, x);
        putchar(expand_glyph(gb));
        glyph_set(s_fb.display_store, byte_offset, bit_offset, gb);
      }
    }
  }
  ansi_term_home();
}

void tower_fb_refresh(void) {
  // clear the display_store but leave backing_store intact.  Then call show().
  clear_display();
  tower_fb_show();
}

// *****************************************************************************
// Local (static) code

static void clear_display(void) {
  ansi_term_home();
  ansi_term_clear_screen();
  memset(s_fb.display_store, 0, s_fb.width * s_fb.height / GLYPHS_PER_BYTE);
}

static glyph_t compress_glyph(char ch) {
  if (ch == '#') {
    return GLYPH_OCTOTHORPE;
  } else if (ch == '=') {
    return GLYPH_EQUALS;
  } else {
    return GLYPH_SPACE;
  }
}

static char expand_glyph(char glyph) {
  if (glyph == GLYPH_OCTOTHORPE) {
    return '#';
  } else if (glyph == GLYPH_EQUALS) {
    return '=';
  } else {
    return GLYPH_SPACE;
  }
}

static glyph_t glyph_get(char *buf, int byte_offset, int bit_offset) {
  return (buf[byte_offset] >> bit_offset) & (GLYPHS_PER_BYTE - 1);
}

static void glyph_set(char *buf,
                      int byte_offset,
                      int bit_offset,
                      glyph_t glyph) {
  char mask = (GLYPHS_PER_BYTE - 1) << bit_offset;

  buf[byte_offset] &= ~mask; // clear any bits
  if (glyph != 0) {
    // Since the tower app has lots of spaces (represented as glyph = 0), this
    // is a useful optimization
    buf[byte_offset] |= (glyph << bit_offset);
  }
}
