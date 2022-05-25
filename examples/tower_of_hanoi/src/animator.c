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

#include "animator.h"

#include "tower.h"
#include "mu_sched.h"
#include "mu_task.h"

#include <stdint.h>
#include <stdbool.h>

// *****************************************************************************
// Local types and definitions

#define REDRAW_DELAY_MS MU_TIME_MS_TO_REL(20)

typedef enum {
  MOVING_UP,
  MOVING_OVER,
  MOVING_DOWN,
  ARRIVED
} state_t;

typedef struct {
  disk_t *disk;
  uint8_t xdst;
  uint8_t ydst;
  state_t state;
  mu_task_t *on_completion;
} animator_ctx_t;

// *****************************************************************************
// Local storage

static animator_ctx_t s_animator_ctx;
static mu_task_t s_animator_task;

// *****************************************************************************
// Local (forward) declarations

static void animator_task_fn(void *ctx, void *arg);

// *****************************************************************************
// Public code

mu_task_t *animator_init(disk_t *disk,
                         uint8_t final_x,
                         uint8_t final_y,
                         mu_task_t *on_completion) {
  mu_task_init(&s_animator_task, animator_task_fn, &s_animator_ctx, "Mover");
  s_animator_ctx.disk = disk;
  s_animator_ctx.xdst = final_x;
  s_animator_ctx.ydst = final_y;
  s_animator_ctx.state = MOVING_UP;
  s_animator_ctx.on_completion = on_completion;

  // Return the task object, ready to be passed to the scheduler
  return &s_animator_task;

}

// *****************************************************************************
// Local (static) code

static void animator_task_fn(void *ctx, void *arg) {
  animator_ctx_t *self = (animator_ctx_t *)ctx;
  (void)arg;  // unused
  int prev_y, curr_y;

  prev_y = disk_get_ypos(self->disk);

  switch(self->state) {
    case MOVING_UP: {
      // Moving up off the source pole
      if (disk_get_ypos(self->disk) == CRUISING_ALTITUDE-1) {
        self->state = MOVING_OVER;
      } else {
        disk_move_y(self->disk, 1);
      }
    } break;

    case MOVING_OVER: {
      // Moving left or right towards the destination pole
      int dx = (int)self->xdst - (int)disk_get_xpos(self->disk);
      if (dx > 0) {
        disk_move_x(self->disk, 1);
      } else if (dx < 0) {
        disk_move_x(self->disk, -1);
      } else {
        self->state = MOVING_DOWN;
      }
    } break;

    case MOVING_DOWN: {
      // Moving down onto the destination pole
      if (disk_get_ypos(self->disk) == self->ydst) {
        self->state = ARRIVED;
      } else {
        disk_move_y(self->disk, -1);
      }
    } break;

    case ARRIVED: {
    } break;
  }

  curr_y = disk_get_ypos(self->disk);

  // redraw only those rows that have changed.
  tower_draw_y(curr_y);
  if (prev_y != curr_y) {
    tower_draw_y(prev_y);
  }

  if (self->state != ARRIVED) {
    // keep on moving until disk has arrived at its destination
    mu_sched_in(&s_animator_task, REDRAW_DELAY_MS);
  } else if (self->on_completion != NULL) {
    // when arrived, call the on_completion task
    mu_sched_now(self->on_completion);
  }

}
