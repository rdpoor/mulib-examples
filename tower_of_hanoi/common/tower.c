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
This app visually solves the Tower of Hanoi puzzle.  It consists of three rods
and a number of disks of various diameters, which can slide onto any rod. The
puzzle begins with the disks stacked on one rod in order of decreasing size,
the smallest at the top, thus approximating a conical shape. The objective of
the puzzle is to move the entire stack to the last rod, obeying the following
rules:

* Only one disk may be moved at a time.
* Each move consists of taking the upper disk from one of the stacks and placing
  it on top of another stack or on an empty rod.
* No disk may be placed on top of a disk that is smaller than it.

The minimal number of moves required to solve the puzzle is 2n − 1, where n is
the number of disks.

Implementation notes:

A satisfactory maximum puzzle size is N = 7.  The disk widths range from 1 pixel
wide at the most narrow to 13 (2N - 1) at the widest.  From this, we can compute
the size of the screen buffer as follows:

POST_WIDTH = 2N + 1           // post base is 2 units wider than the widest disk
SCREEN_WID = 3 * POST_WID + 2 // 3 posts, one space between each one
           = 6N + 3 + 2
           = 47

The screen height is N + 1 + 2 // one row for each disk + base + "crusing space"
for animating the movement:
SCREEN_HEIGHT = N + 1 + 2
              = 10

Therfore, the screen will be 47 * 10 = 470 pixels.
*/

// *****************************************************************************
// Includes

#include "tower.h"

#include "animator.h"
#include "ansi_term.h"
#include "disk.h"
#include "mulib.h"
#include "mu_stdbsp.h"
#include "pole.h"

#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// *****************************************************************************
// Local types and definitions

#define POLE_A 0
#define POLE_B 1
#define POLE_C 2

#define SCREEN_WIDTH ((POLE_WIDTH  + 1) * N_POLES)
#define SCREEN_HEIGHT (CRUISING_ALTITUDE)

typedef enum {
    PHASE_INIT,
            PHASE_A,
            PHASE_B,
            PHASE_C,
} phase_t;

typedef struct {
  mu_task_t task;
  uint8_t phase;
} tower_ctx_t;

// *****************************************************************************
// Local storage

static mu_task_t s_tower_task;
static tower_ctx_t s_tower_ctx;
static disk_t s_disks[N_DISKS];
static pole_t s_poles[N_POLES];

// *****************************************************************************
// Local (forward) declarations

/**
 * @brief This is the function that gets called when the tower task runs.
 */
static void tower_task_fn(void *ctx, void *arg);

/**
 * @brief Move a disk between two poles.
 *
 * Note: we don't know which pole is the source and which is the destination;
 * see find_destination_pole() for that...
 *
 * @return true if there are more moves to make, false otherwise.
 */
static bool move_disk(pole_t *p1, pole_t *p2);

/**
 * @brief Decide which of the two poles is the destination pole.
 *
 * If one pole is empty, it is alwasys the destination.  If both poles have
 * disks, the one with the larger disk is the destination.  If both poles are
 * empty, then the algorithm has terminated and this function returns NULL.
 */
static pole_t *find_destination_pole(pole_t *p1, pole_t *p2);

/**
 * @brief Transfer a disk from src to dst, and start the task to animate the
 * the move.
 */
static void move_disk_aux(pole_t *src, pole_t *dst);

/**
 * @brief Reset the towers and disks.
 */
static void reset(void);

/**
 * @brief Redraw the entire screen.
 */
static void redraw_screen(void);

/**
 * @brief If any characters present on serial input, slurp them ane return true.
 */
static bool character_was_typed(void);

// *****************************************************************************
// Public code

void tower_init(void) {
  mu_sched_init();
  mu_stdbsp_init();
  // mu_stdbsp_serial_tx_byte takes uint8_t, ansi_term_init takes char: Re-cast
  ansi_term_init((ansi_term_putc_fn)mu_stdbsp_serial_tx_byte);
  mu_task_init(&s_tower_task, tower_task_fn, &s_tower_ctx, "Tower");

  s_tower_ctx.phase = PHASE_INIT;
  mu_sched_now(&s_tower_task);
}

void tower_step(void) { mu_sched_step(); }

void tower_draw_y(int y) {
  int row = SCREEN_HEIGHT - y - 1;
  ansi_term_set_cursor_position(row, 0);
  for (int x=0; x<SCREEN_WIDTH; x++) {
    char ch = ' ';   // assume x, y will be filled with a space
    // The disks occlude the poles, so draw them first.  Stop if we get a
    // non-blank char at x, y
    for (int i=0; i<N_DISKS && ch == ' '; i++) {
      ch = disk_char_at(&s_disks[i], x, y);
    }
    // If the char at x, y is still blank, draw the poles.
    for (int i=0; i<N_POLES && ch == ' '; i++) {
      ch = pole_char_at(&s_poles[i], x, y);
    }
    mu_stdbsp_serial_tx_byte(ch);
  }
}

// *****************************************************************************
// Local (static) code

static void tower_task_fn(void *ctx, void *arg) {
  tower_ctx_t *self = (tower_ctx_t *)ctx;
  (void)arg;
  bool running = false;

  // If any character is typed, restart the process.  This is expecially useful
  // if the screen needs to be redrawn.
  if (character_was_typed() || (self->phase == PHASE_INIT)) {
      reset();
      self->phase = PHASE_A;
  }

  // move_disk() will start the animator task, which will progressively move one
  // disk from one pole to another.  When it completes, it will call back to
  // this task.  If there are no more moves (running == false), this task will
  // wait five seconds before starting all over.

  if (self->phase == PHASE_A) {
    // Phase A: move a disk between pole A and pole C
    running = move_disk(&s_poles[POLE_A], &s_poles[POLE_C]);
    self->phase = PHASE_B;

  } else if (self->phase == PHASE_B) {
    // Phase B: move a disk between pole A and pole B
    running = move_disk(&s_poles[POLE_A], &s_poles[POLE_B]);
    self->phase = PHASE_C;

  } else /* if (self->phase == 2) */ {
    // Phase C: move a disk between pole B and pole C
    running = move_disk(&s_poles[POLE_B], &s_poles[POLE_C]);
    self->phase = PHASE_A;
  }

  if (!running) {
    // Algo completed.  Delay briefly before restarting the process.
    mu_sched_in(&s_tower_task, mu_time_ms_to_rel(5000));
    self->phase = PHASE_INIT;
  }
}

static bool move_disk(pole_t *p1, pole_t *p2) {
  pole_t *dst;

  // which of the two poles is the destination?
  dst = find_destination_pole(p1, p2);
  if (dst == NULL) {
    return false; // algorithm has completed
  } else if (dst == p1) {
    move_disk_aux(p2, p1);
  } else {
    move_disk_aux(p1, p2);
  }
  return true;
}

static pole_t *find_destination_pole(pole_t *p1, pole_t *p2) {
  // Find the topmost disk on pole 1 and pole 2
  disk_t *d1 = pole_top(p1);
  disk_t *d2 = pole_top(p2);
  if (d1 == NULL && d2 == NULL) {
    // both poles empty: algo is complete.
    return NULL;
  } else if (d1 == NULL) {
    // pole 1 is empty: it is the destination
    return p1;
  } else if (d2 == NULL) {
    // pole 2 is empty: it is the destination
    return p2;
  } else {
    // the pole with the larger disk is the destination
    return (disk_get_width(d1) > disk_get_width(d2)) ? p1 : p2;
  }
}

static void move_disk_aux(pole_t *src, pole_t *dst) {
  // Update the internal state: move the disk on the src pole to the dst pole
  disk_t *disk = pole_pop(src);
  pole_push(dst, disk);

  // Graphically animate the move by starting the animator task.  When the
  // animator completes the move, call back to this task.
  mu_task_t *animator =
      animator_init(disk, pole_top_x(dst), pole_top_y(dst), &s_tower_task);
  mu_sched_now(animator);
}

static void reset(void) {
  // Initialize all poles
  for (int i = 0; i < N_POLES; i++) {
    uint8_t xpos = i * (POLE_WIDTH + 1) + POLE_WIDTH / 2 + 1;
    pole_init(&s_poles[i], xpos);
  }

  // Initialize each disk, push them onto POLE_A (largest first), and set their
  // initial coordinates.
  pole_t *pole = &s_poles[POLE_A];
  for (int i = N_DISKS - 1; i >= 0; i--) {
    disk_t *disk = &s_disks[i];
    uint8_t width = i * 2 + 1;
    disk_init(disk, width);
    pole_push(pole, disk);
    disk_set_position(disk, pole_top_x(pole), pole_top_y(pole));
  }

  // redraw screen from scratch
  ansi_term_home();
  ansi_term_clear_buffer();  // clear the screen
  ansi_term_show_cursor(false);
  redraw_screen();
}

static void redraw_screen(void) {
  for (int row=0; row<SCREEN_HEIGHT; row++) {
    int y = SCREEN_HEIGHT - row - 1;
    tower_draw_y(y);
  }
}

static bool character_was_typed(void) {
  bool any_typed = false;
  while (mu_stdbsp_serial_rx_is_ready()) {
    uint8_t ch;;
    mu_stdbsp_serial_rx_byte(&ch);
    any_typed = true;
  }
  return any_typed;
}
