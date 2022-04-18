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
 * @file Support for singly linked-list queues.
 */

#ifndef _MU_CBUF_H_
#define _MU_CBUF_H_

#ifdef __cplusplus
extern "C" {
#endif

// =============================================================================
// includes

#include "mu_list.h"
#include <stdbool.h>

// =============================================================================
// types and definitions

// A mu_queue is implemented as a singly linked list with an extra pointer to
// the end of the list (the tail).  An item is appended to the tail of the queue
// by pushing it after the tail and then updating the tail pointer:
//
// Before Appending:
// +-------+     +---------+     +---------+
// | head .|---->| item1 . |---->| item2 ^ |
// +-------+     +---------+  /  +---------+
// | tail .|------------------
// +-------+
//
// After Appending:
// +-------+     +---------+     +---------+     +---------+
// | head .|---->| item1 . |---->| item2 . |---->| item3 ^ |
// +-------+     +---------+     +---------+  /  +---------+
// | tail .|----------------------------------
// +-------+
//
// Removing an item from the head of the queue done by pushing at the head:
//
// After Removing:
// +-------+     +---------+     +---------+
// | head .|---->| item2 . |---->| item3 ^ |
// +-------+     +---------+  /  +---------+
// | tail .|------------------
// +-------+

typedef struct {
  mu_list_t head; // items are removed (popped) from the head
  mu_list_t tail; // items are added (pushed) after the tail
} mu_queue_t;

// =============================================================================
// declarations

/**
 * @brief Initialize a mu_queue structure
 *
 * @return An empty queue.
 */
mu_queue_t *mu_queue_init(mu_queue_t *q);

/**
 * @brief Return the list head of the queue
 */
mu_list_t *mu_queue_list(mu_queue_t *q);

/**
 * @brief Add an item to the end of the queue.  It will be the last item to be
 * removed.
 *
 * @return The queue object.
 */
mu_queue_t *mu_queue_append(mu_queue_t *q, mu_list_t *item);

/**
 * @brief Add an item to the head of the queue.  It will be first last item to
 * be removed.  (Usually the queue acts like a FIFO, but this is "butting in",
 * which makes it more stack-like.)
 *
 * @return The queue object.
 */
mu_queue_t *mu_queue_prepend(mu_queue_t *q, mu_list_t *item);

/**
 * @brief Remove an item from the head of the queue.
 *
 * @return The list item removed, or NULL if the queue is empty.
 */
mu_list_t *mu_queue_remove(mu_queue_t *q);

/**
 * @brief Remove a list item from the queue.
 *
 * @param q The queue.
 * @param item The item to be removed.
 * @return the removed item if the it was present in the queue, NULL otherwise.
 */
mu_list_t *mu_queue_delete(mu_queue_t *q, mu_list_t *item);

/**
 * @brief Return true if the queue is empty
 */
bool mu_queue_is_empty(mu_queue_t *q);

/**
 * @brief Reset the queue to its empty state.
 */
mu_queue_t *mu_queue_reset(mu_queue_t *q);

/**
 * @brief Return true if the queue contains the given list item.
 */
bool mu_queue_contains(mu_queue_t *q, mu_list_t *item);

/**
 * @brief Return the number of items in the queue.
 */
int mu_queue_length(mu_queue_t *q);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_CBUF_H_ */
