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

// =============================================================================
// includes

#include "mu_pqueue.h"
#include <stdbool.h>
#include <stddef.h>

// =============================================================================
// local types and definitions

// =============================================================================
// local (forward) declarations

static void *find_fn(void *item, void *arg);

// =============================================================================
// local storage

// =============================================================================
// public code

mu_pqueue_t *mu_pqueue_init(mu_pqueue_t *q, void **store, size_t capacity) {
  q->store = store;
  q->capacity = capacity;
  return mu_pqueue_reset(q);
}

mu_pqueue_t *mu_pqueue_reset(mu_pqueue_t *q) {
  q->getr = 0;
  q->putr = 0;
  q->count = 0;
  return q;
}

size_t mu_pqueue_capacity(mu_pqueue_t *q) {
  return q->capacity;
}

size_t mu_pqueue_count(mu_pqueue_t *q) {
  return q->count;
}

bool mu_pqueue_is_empty(mu_pqueue_t *q) {
  return q->count == 0;
}

bool mu_pqueue_is_full(mu_pqueue_t *q) {
  return q->count == q->capacity;
}

bool mu_pqueue_contains(mu_pqueue_t *q, void *item) {
  return mu_pqueue_visit(q, find_fn, item) ? true : false;
}

void *mu_pqueue_put(mu_pqueue_t *q, void *item) {
  if (mu_pqueue_is_full(q)) {
    return NULL;
  }
  q->store[q->putr++] = item;
  q->count += 1;
  if (q->putr == q->capacity) {
    q->putr = 0;
  }
  return item;
}

void *mu_pqueue_get(mu_pqueue_t *q) {
  void *item;
  if (mu_pqueue_is_empty(q)) {
    return NULL;
  }
  item = q->store[q->getr++];
  q->count -= 1;
  if (q->getr == q->capacity) {
    q->getr = 0;
  }
  return item;
}

void *mu_pqueue_delete(mu_pqueue_t *q, void *item) {
  void *deleted = NULL;
  size_t count = mu_pqueue_count(q);
  for (size_t i=0; i<count; i++) {
    void *e = mu_pqueue_get(q);
    if (e == item) {
      deleted = e;
    } else {
      mu_pqueue_put(q, e);
    }
  }
  return deleted;
}

void *mu_pqueue_visit(mu_pqueue_t *q, mu_pqueue_visit_fn user_fn, void *arg) {
  size_t count = mu_pqueue_count(q);
  size_t index = q->getr;
  for (size_t i=0; i<count; i++) {
    // call user function with item, return on non-NULL result
    void *ret = user_fn(q->store[index++], arg);
    if (ret) {
      return ret;
    }
    // handle wraparound of index
    if (index == q->capacity) {
      index = 0;
    }
  }
  return NULL;
}

// =============================================================================
// local (static) code

static void *find_fn(void *item, void *arg) {
  if (item == arg) {
    return item;
  } else {
    return NULL;
  }
}

// =============================================================================
// Standalone tests

// Run this command to run the standalone tests.
// (gcc -Wall -DMU_PQUEUE_STANDALONE_TESTS -o mu_pqueue_test mu_pqueue.c && ./mu_pqueue_test && rm ./mu_pqueue_test)

#ifdef MU_PQUEUE_STANDALONE_TESTS

#include <stdio.h>

#define CAPACITY 4
#define ASSERT(e) assert(e, #e, __FILE__, __LINE__)

static void *store[CAPACITY];
static mu_pqueue_t s_q;

static void assert(bool expr, const char *str, const char *file, int line) {
  if (!expr) {
    printf("\nassertion %s failed at %s:%d", str, file, line);
  }
}

static void setup(void) {
  ASSERT(mu_pqueue_init(&s_q, store, CAPACITY) == &s_q);
  ASSERT(mu_pqueue_count(&s_q) == 0);
  ASSERT(mu_pqueue_is_empty(&s_q) == true);
  ASSERT(mu_pqueue_is_full(&s_q) == false);

  ASSERT(mu_pqueue_put(&s_q, (void *)1) == (void *)1);
  ASSERT(mu_pqueue_put(&s_q, (void *)2) == (void *)2);
  ASSERT(mu_pqueue_put(&s_q, (void *)3) == (void *)3);

  ASSERT(mu_pqueue_count(&s_q) == 3);
  ASSERT(mu_pqueue_is_empty(&s_q) == false);
  ASSERT(mu_pqueue_is_full(&s_q) == false);
}

int main(void) {
  printf("\nStarting mu_pqueue tests...");
  ASSERT(mu_pqueue_init(&s_q, store, CAPACITY) == &s_q);
  ASSERT(mu_pqueue_capacity(&s_q) == CAPACITY);
  ASSERT(mu_pqueue_count(&s_q) == 0);
  ASSERT(mu_pqueue_is_empty(&s_q) == true);
  ASSERT(mu_pqueue_is_full(&s_q) == false);
  ASSERT(mu_pqueue_contains(&s_q, (void *)1) == false);
  ASSERT(mu_pqueue_get(&s_q) == NULL);

  ASSERT(mu_pqueue_put(&s_q, (void *)1) == (void *)1);
  ASSERT(mu_pqueue_count(&s_q) == 1);
  ASSERT(mu_pqueue_is_empty(&s_q) == false);
  ASSERT(mu_pqueue_is_full(&s_q) == false);
  ASSERT(mu_pqueue_contains(&s_q, (void *)1) == true);

  ASSERT(mu_pqueue_put(&s_q, (void *)2) == (void *)2);
  ASSERT(mu_pqueue_is_full(&s_q) == false);
  ASSERT(mu_pqueue_count(&s_q) == 2);
  ASSERT(mu_pqueue_put(&s_q, (void *)3) == (void *)3);
  ASSERT(mu_pqueue_is_full(&s_q) == false);
  ASSERT(mu_pqueue_count(&s_q) == 3);
  ASSERT(mu_pqueue_put(&s_q, (void *)4) == (void *)4);
  ASSERT(mu_pqueue_is_full(&s_q) == true);
  ASSERT(mu_pqueue_count(&s_q) == 4);
  ASSERT(mu_pqueue_put(&s_q, (void *)5) == NULL);
  ASSERT(mu_pqueue_is_full(&s_q) == true);
  ASSERT(mu_pqueue_count(&s_q) == 4);

  ASSERT(mu_pqueue_contains(&s_q, (void *)2) == true);
  ASSERT(mu_pqueue_contains(&s_q, (void *)3) == true);
  ASSERT(mu_pqueue_contains(&s_q, (void *)4) == true);
  ASSERT(mu_pqueue_contains(&s_q, (void *)5) == false);

  ASSERT(mu_pqueue_get(&s_q) == (void *)1);
  ASSERT(mu_pqueue_get(&s_q) == (void *)2);
  ASSERT(mu_pqueue_get(&s_q) == (void *)3);
  ASSERT(mu_pqueue_get(&s_q) == (void *)4);
  ASSERT(mu_pqueue_get(&s_q) == NULL);

  setup();
  ASSERT(mu_pqueue_delete(&s_q, (void *)1) == (void *)1);
  ASSERT(mu_pqueue_delete(&s_q, (void *)1) == NULL);
  ASSERT(mu_pqueue_count(&s_q) == 2);

  setup();
  ASSERT(mu_pqueue_delete(&s_q, (void *)2) == (void *)2);
  ASSERT(mu_pqueue_delete(&s_q, (void *)2) == NULL);
  ASSERT(mu_pqueue_count(&s_q) == 2);

  setup();
  ASSERT(mu_pqueue_delete(&s_q, (void *)3) == (void *)3);
  ASSERT(mu_pqueue_delete(&s_q, (void *)3) == NULL);
  ASSERT(mu_pqueue_count(&s_q) == 2);

  setup();
  ASSERT(mu_pqueue_delete(&s_q, (void *)4) == NULL);
  ASSERT(mu_pqueue_count(&s_q) == 3);

  printf("\n...tests complete\n");
  return 0;
}

#endif // #ifdef MU_PQUEUE_STANDALONE_TESTS
