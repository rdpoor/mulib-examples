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

#include "mu_list.h"
#include <stdbool.h>
#include <stddef.h>

// =============================================================================
// local types and definitions

// =============================================================================
// local (forward) declarations

static void *list_find_aux(mu_list_t *list_lead, void *arg);

static void *list_delete_aux(mu_list_t *list_ref, void *arg);

// =============================================================================
// local storage

// =============================================================================
// public code

mu_list_t *mu_list_init(mu_list_t *list_ref) {
  list_ref->next = NULL;
  return list_ref;
}

bool mu_list_is_empty(mu_list_t *list_ref) {
  return list_ref ? list_ref->next == NULL : true;
}

mu_list_t *mu_list_first(mu_list_t *list_ref) { return list_ref; }

mu_list_t *mu_list_rest(mu_list_t *list_ref) {
  return list_ref ? list_ref->next : NULL;
}

size_t mu_list_length(mu_list_t *list_ref) {
  size_t length = 0;
  while (list_ref && (list_ref->next != NULL)) {
    length += 1;
    list_ref = list_ref->next;
  }
  return length;
}

bool mu_list_contains(mu_list_t *list_ref, mu_list_t *element) {
  return mu_list_find(list_ref, element) != NULL;
}

mu_list_t *mu_list_push(mu_list_t *list_ref, mu_list_t *element) {
  if (list_ref) {
    element->next = list_ref->next;
    list_ref->next = element;
  }
  return list_ref;
}

mu_list_t *mu_list_pop(mu_list_t *list_ref) {
  mu_list_t *element = NULL;

  if (list_ref && (list_ref->next != NULL)) {
    element = list_ref->next;
    list_ref->next = element->next;
    element->next = NULL;
  }
  return element;
}

mu_list_t *mu_list_find(mu_list_t *list_ref, mu_list_t *element) {
  return mu_list_traverse(list_ref, list_find_aux, element);
}

mu_list_t *mu_list_delete(mu_list_t *list_ref, mu_list_t *element) {
  return mu_list_traverse(list_ref, list_delete_aux, element);
}

mu_list_t *mu_list_reverse(mu_list_t *list_ref) {
  if (list_ref != NULL) {
    mu_list_t reversed;

    mu_list_init(&reversed);
    while (!mu_list_is_empty(list_ref)) {
      mu_list_push(&reversed, mu_list_pop(list_ref));
    }
    list_ref->next = reversed.next;
  }
  return list_ref;
}

void *mu_list_traverse(mu_list_t *list_ref, mu_list_traverse_fn fn, void *arg) {
  void *result = NULL;

  while (list_ref != NULL && result == NULL) {
    result = fn(list_ref, arg);
    list_ref = list_ref->next;
  }
  return result;
}

// =============================================================================
// local (static) code

static void *list_find_aux(mu_list_t *list_ref, void *arg) {
  if (list_ref->next == arg) {
    return arg;
  } else {
    return NULL;
  }
}

static void *list_delete_aux(mu_list_t *list_ref, void *arg) {
  if (list_ref->next == arg) {
    return mu_list_pop(list_ref);
  } else {
    return NULL;
  }
}
