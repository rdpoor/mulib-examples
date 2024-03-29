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

#ifndef POLE_H_
#define POLE_H_

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// includes

#include "disk.h"
#include "tower.h"
#include <stddef.h>
#include <stdint.h>

// *****************************************************************************
// types and definitions

typedef struct {
  uint8_t xpos;
  disk_t *disks;
} pole_t;

// *****************************************************************************
// declarations

/**
 * @brief Create a pole.
 */
void pole_init(pole_t *pole, uint8_t xpos);

/**
 * Return the x coordinate of the top element of the pole.
 *
 * When placing a disk on the pole, this is the final x coord.
 */
uint8_t pole_top_x(pole_t *pole);

/**
 * Return the y coordinate of the top element of the pole.
 *
 * When placing a disk on the pole, this is the final y coord.
 */
uint8_t pole_top_y(pole_t *pole);

/**
 * Return the # of disks on the pole.
 */
uint8_t pole_disk_count(pole_t *pole);

/**
 * Stack a disk on top of the pile on the pole.
 */
void pole_push(pole_t *pole, disk_t *disk);

/**
 * Remove a disk from the top of the stack, or NULL if the pole is empty.
 */
disk_t *pole_pop(pole_t *pole);

/**
 * Return the top disk of the pole, or NULL if the pole is empty.
 */
disk_t *pole_top(pole_t *pole);

/**
 * @brief Return a '#' char if x, y is occupied by the pole, ' ' otherwise.
 */
char pole_char_at(pole_t *pole, int x, int y);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef POLE_H_ */
