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
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// *****************************************************************************
// Private types and definitions

#define TICS_PER_SECOND 32768

#define STATE_DEFINITIONS(M)                                                   \
  M(TEST_STDBSP_STATE_INIT)                                                    \
  M(TEST_STDBSP_STATE_LED_HELP)                                                \
  M(TEST_STDBSP_STATE_LED_TEST)                                                \
  M(TEST_STDBSP_STATE_BUTTON_HELP)                                             \
  M(TEST_STDBSP_STATE_BUTTON_TEST)                                             \
  M(TEST_STDBSP_STATE_TIME_HELP)                                               \
  M(TEST_STDBSP_STATE_TIME_TEST)                                               \
  M(TEST_STDBSP_STATE_ERR)

#define EXPAND_STATES(_name) _name,
typedef enum { STATE_DEFINITIONS(EXPAND_STATES) } test_stdbsp_state_t;

typedef struct {
  test_stdbsp_state_t state;
  uint32_t time_at;
#ifdef __C51__
  uint8_t prev_button;
#else
  bool prev_button;
#endif
} test_stdbsp_ctx_t;

// *****************************************************************************
// Private (static) storage

static test_stdbsp_ctx_t s_test_stdbsp_ctx;

// *****************************************************************************
// Private (forward) declarations

static void test_putstr(const char *str);

static bool user_typed_space(void);

static void print_uint32(uint32_t n);

static bool time_precedes(uint32_t t1, uint32_t t2);

static uint32_t time_offset(uint32_t t1, int32_t dt);

// *****************************************************************************
// Public code

void test_stdbsp_init(void) {
  s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_INIT;
  mu_stdbsp_init();
}

void test_stdbsp_step(void) {
  switch (s_test_stdbsp_ctx.state) {
  case TEST_STDBSP_STATE_INIT: {
    test_putstr("\n##########"
                "\ntest_stdbsp: exercise the mu_stdbsp API");
    s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_LED_HELP;
  } break;

  case TEST_STDBSP_STATE_LED_HELP: {
    test_putstr("\nType 0 to turn off LED, 1 to turn on, 2 to toggle, "
                "<space> to advance to next test.");
    s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_LED_TEST;
  } break;

  case TEST_STDBSP_STATE_LED_TEST: {
    uint8_t ch;
    test_putstr("\ncmd: ");
    if (!mu_stdbsp_serial_rx_byte(&ch)) {
      test_putstr("\nmu_stdbsp_serial_rx_byte() failed -- quitting");
      s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_ERR;
    } else {
      mu_stdbsp_serial_tx_byte(ch); // echo char
      switch (ch) {
      case '0': {
        mu_stdbsp_led_off();
      } break;
      case '1': {
        mu_stdbsp_led_on();
      } break;
      case '2': {
        mu_stdbsp_led_toggle();
      } break;
      case ' ': {
        s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_BUTTON_HELP;
      } break;
      default: {
        test_putstr("\nUnrecognized command '");
        mu_stdbsp_serial_tx_byte(ch);
        test_putstr("'");
        s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_LED_HELP;
      }
      }
    }
  } break;

  case TEST_STDBSP_STATE_BUTTON_HELP: {
    test_putstr("\nPress button to turn on LED, release button to turn off, "
                "<space> to advance to next test: ");
    s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_BUTTON_TEST;
    s_test_stdbsp_ctx.prev_button = false;
  } break;

  case TEST_STDBSP_STATE_BUTTON_TEST: {
    if (user_typed_space()) {
      s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_TIME_HELP;
    } else {
      bool curr_button = mu_stdbsp_button_is_pressed();
      if (curr_button != s_test_stdbsp_ctx.prev_button) {
        if (curr_button) {
          test_putstr("\nButton pressed");
          mu_stdbsp_led_on();
        } else {
          test_putstr("\nButton released");
          mu_stdbsp_led_off();
        }
        s_test_stdbsp_ctx.prev_button = curr_button;
      }
    }
  } break;

  case TEST_STDBSP_STATE_TIME_HELP: {
    test_putstr("\nWatch for messages once per second.  "
                "Type <space> to quit: ");
    s_test_stdbsp_ctx.time_at = time_offset(mu_stdbsp_now(), TICS_PER_SECOND);
    s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_TIME_TEST;
  } break;

  case TEST_STDBSP_STATE_TIME_TEST: {
    uint32_t now = mu_stdbsp_now();
    if (user_typed_space()) {
      s_test_stdbsp_ctx.state = TEST_STDBSP_STATE_INIT;
    } else if (!time_precedes(now, s_test_stdbsp_ctx.time_at)) {
      // time has elapsed...
      mu_stdbsp_led_toggle();
      mu_stdbsp_serial_tx_byte('\n');
      print_uint32(now);
      s_test_stdbsp_ctx.time_at =
          time_offset(s_test_stdbsp_ctx.time_at, TICS_PER_SECOND);
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

static void test_putstr(const char *str) {
  while (*str) {
    mu_stdbsp_serial_tx_byte((uint8_t)*str++);
  }
}

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

static void print_uint32(uint32_t v) {
  uint8_t n_digits = 0;
  uint32_t v2 = 0;
  // Reverse the decimal digits in v into v2.  If v == 007890, then v2 == 0987
  // and n_digits = 4.

  if (v == 0) {
    // Handle the special case where v == 0
    n_digits = 1;
  }

  while (v != 0) {
    v2 *= 10;
    v2 += v % 10;
    v /= 10;
    n_digits += 1;
  }
  // Now v2 has reversed digits.  Print n_digits.
  while (n_digits-- != 0) {
    mu_stdbsp_serial_tx_byte(v2 % 10 + '0');
    v2 /= 10;
  }
}

#ifndef INT32_MAX
#define INT32_MAX 0x7ffffff
#endif

static bool time_precedes(uint32_t t1, uint32_t t2) {
  return (t1 - t2) > INT32_MAX;
}

static uint32_t time_offset(uint32_t t1, int32_t dt) { return t1 + dt; }
