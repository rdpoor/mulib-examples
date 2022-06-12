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
Implementation Notes:

This app exercises all of the functions defined in mu_stdbsp.h.  In general
these functions cannot be tested using stubbing / mocking methods found in
unit testing.  Rather, they depend upon user interactions for verification.
*/

// *****************************************************************************
// Includes

#include "test_stdbsp.h"

#include "mu_stdbsp.h"
#include "mu_time.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

// *****************************************************************************
// Private types and definitions

#define STATE_DEFINITIONS(M)                                                   \
  M(TEST_STDBSP_STATE_INIT)                                                    \
  M(TEST_STDBSP_STATE_LED_START)                                               \
  M(TEST_STDBSP_STATE_LED_TEST)                                                \
  M(TEST_STDBSP_STATE_BUTTON_START)                                            \
  M(TEST_STDBSP_STATE_BUTTON_TEST)                                             \
  M(TEST_STDBSP_STATE_TIME_START)                                              \
  M(TEST_STDBSP_STATE_TIME_TEST)                                               \
  M(TEST_STDBSP_STATE_ERR)

#define EXPAND_STATES(_name) _name,
typedef enum { STATE_DEFINITIONS(EXPAND_STATES) } test_stdbsp_state_t;

typedef struct {
  test_stdbsp_state_t state;
  mu_time_abs_t time_at;
  bool pressed;
} test_stdbsp_ctx_t;

// *****************************************************************************
// Private (static) storage

static test_stdbsp_ctx_t s_test_stdbsp_ctx;

// *****************************************************************************
// Private (forward) declarations

static bool user_typed_space(void);

static void print_int(uint32_t v);

// *****************************************************************************
// Public code

void test_stdbsp_init(void) {
  s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_INIT;
  mu_stdbsp_init();
  mu_time_init();
}

void test_stdbsp_step(void) {
  switch (s_test_stdbsp_ctx.state) {
  case TEST_STDBSP_STATE_INIT: {
    mu_stdbsp_puts("\n##########"
                   "\ntest_stdbsp: exercise the mu_stdbsp API");
    s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_LED_START;
  } break;

  case TEST_STDBSP_STATE_LED_START: {
    mu_stdbsp_puts("\nType 0 to turn off LED, 1 to turn on, 2 to toggle, "
                   "<space> to advance to next test.");
    s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_LED_TEST;
  } break;

  case TEST_STDBSP_STATE_LED_TEST: {
    uint8_t ch;
    mu_stdbsp_puts("\ncmd: ");
    if (!mu_stdbsp_serial_rx_byte(&ch)) {
      mu_stdbsp_puts("\nmu_stdbsp_serial_rx_byte() failed -- quitting");
      s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_ERR;
    } else {
      switch (ch) {
      case '0': {
        mu_stdbsp_puts("0 LED off");
        mu_stdbsp_led_off();
      } break;
      case '1': {
        mu_stdbsp_puts("1 LED on");
        mu_stdbsp_led_on();
      } break;
      case '2': {
        mu_stdbsp_puts("2 LED toggle");
        mu_stdbsp_led_toggle();
      } break;
      case ' ': {
        s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_BUTTON_START;
      } break;
      default: {
        mu_stdbsp_puts("\nUnrecognized command '");
        mu_stdbsp_serial_tx_byte(ch);
        mu_stdbsp_puts("'");
        s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_LED_START;
      }
      }
    }
  } break;

  case TEST_STDBSP_STATE_BUTTON_START: {
    mu_stdbsp_puts("\nPress button to turn on LED, release button to turn off, "
                   "<space> to advance to next test: ");
    s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_BUTTON_TEST;
    s_test_stdbsp_ctx.pressed = mu_stdbsp_button_is_pressed();
  } break;

  case TEST_STDBSP_STATE_BUTTON_TEST: {
    if (user_typed_space()) {
      s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_TIME_START;
    } else {
      bool pressed = mu_stdbsp_button_is_pressed();
      if (pressed != s_test_stdbsp_ctx.pressed) {
        s_test_stdbsp_ctx.pressed = pressed;
        if (pressed) {
          mu_stdbsp_led_on();
          mu_stdbsp_puts("\nLED on...");
        } else {
          mu_stdbsp_led_off();
          mu_stdbsp_puts("\nLED off...");
        }
      }
    }
  } break;

  case TEST_STDBSP_STATE_TIME_START: {
    mu_stdbsp_puts("\nWatch for messages once per second.  "
                   "Type <space> to quit: ");
    s_test_stdbsp_ctx.time_at =
        mu_time_offset(mu_time_now(), MU_TIME_MS_TO_REL(1000));
    s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_TIME_TEST;
  } break;

  case TEST_STDBSP_STATE_TIME_TEST: {
    mu_time_abs_t now = mu_time_now();
    if (user_typed_space()) {
      s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_INIT;
    } else if (!mu_time_precedes(now, s_test_stdbsp_ctx.time_at)) {
      // time has elapsed...
      mu_stdbsp_led_toggle();
      mu_stdbsp_serial_tx_byte('\n');
      print_int(now);
      s_test_stdbsp_ctx.time_at =
          mu_time_offset(s_test_stdbsp_ctx.time_at, MU_TIME_MS_TO_REL(1000));
      // remain in this state...
    }
  } break;

  case TEST_STDBSP_STATE_ERR: {
    // should not normally arrive here.
  } break;

  } // switch
}

// *****************************************************************************
// Private (static) code

static bool user_typed_space(void) {
  uint8_t ch;

  if (!mu_stdbsp_serial_rx_is_ready()) {
    // no key typed: return false
    return false;

  } else if (!mu_stdbsp_serial_rx_byte(&ch)) {
    // some rx error: return false
    return false;

  } else if (ch != ' ') {
    // char typed, but not a space
    return false;

  } else {
    // space was typed.
    return true;
  }
}

static void print_int(uint32_t v) {
  int n_digits;
  char buf[20];

  if (v == 0) {
    mu_stdbsp_serial_tx_byte('0');
    return;
  }
  // compute digits from least significant to most, store in buf
  for (n_digits = 0; v != 0; n_digits++, v = v / 10) {
    buf[n_digits] = (v % 10) + '0';
  }
  // printf the digits in reverse order
  do {
    mu_stdbsp_serial_tx_byte(buf[--n_digits]);
  } while (n_digits != 0);
}
