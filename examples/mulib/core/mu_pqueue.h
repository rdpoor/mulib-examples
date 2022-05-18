/**
 * MIT License
 *
 * Copyright (c) 2020 R. Dunbar Poor <rdpoor@gmail.com>
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
 * @file mu_pqueue implements a queue of "pointer sized objects" (void *)
 */

#ifndef _MU_PQUEUE_H_
#define _MU_PQUEUE_H_

#ifdef __cplusplus
extern "C" {
#endif

// =============================================================================
// includes

#include <stdbool.h>
#include <stddef.h>

// =============================================================================
// types and definitions

typedef void *(*mu_pqueue_visit_fn)(void *item, void *arg);

// A mu_pqueue is implemented as circular buffer with two indeces: the getr and
// the putr.

typedef struct {
  void **store;
  size_t capacity;
  size_t count;
  size_t getr;    // index for the next item to fetch
  size_t putr;    // index for the next item to store
} mu_pqueue_t;

// =============================================================================
// declarations

/**
 * @brief Initialize a mu_pqueue structure
 *
 * @return An empty queue.
 */
mu_pqueue_t *mu_pqueue_init(mu_pqueue_t *q, void **store, size_t capacity);

/**
* @brief Reset the queue to its empty state.
*/
mu_pqueue_t *mu_pqueue_reset(mu_pqueue_t *q);

/**
* @brief Return the capacity of the queue.
*/
size_t mu_pqueue_capacity(mu_pqueue_t *q);

/**
* @brief Return the number of items in the queue.
*/
size_t mu_pqueue_count(mu_pqueue_t *q);

/**
* @brief Return true if the queue is empty
*/
bool mu_pqueue_is_empty(mu_pqueue_t *q);

/**
* @brief Return true if the queue is full
*/
bool mu_pqueue_is_full(mu_pqueue_t *q);

/**
* @brief Return true if the queue contains the given item, false otherwise.
*/
bool mu_pqueue_contains(mu_pqueue_t *q, void *item);

/**
 * @brief Add an item to the end of the queue.
 *
 * @return The item added or NULL if the queue was full.
 */
void *mu_pqueue_put(mu_pqueue_t *q, void *item);

/**
 * @brief Remove an item from the head of the queue.
 *
 * @return The item removed, or NULL if the queue is empty.
 */
void *mu_pqueue_get(mu_pqueue_t *q);

/**
 * @brief Remove an item from the queue.
 *
 * @param q The queue.
 * @param item The item to be removed.
 * @return the removed item if the it was present in the queue, NULL otherwise.
 */
void *mu_pqueue_delete(mu_pqueue_t *q, void *item);

/**
 * @brief Visit each item in the queue
 *
 * Each item is visited in turn.  The process stops when the user function
 * returns a non-NULL value or all items are visited, whichever comes first.
 *
 * @param q The queue.
 * @param user_fn The user function to call.
 * @param arg An argument to pass to the user fn.
 * @return The final value returned by the user function.
 */
void *mu_pqueue_visit(mu_pqueue_t *q, mu_pqueue_visit_fn user_fn, void *arg);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_PQUEUE_H_ */
