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

#ifndef __MU_MACROS_H_
#define __MU_MACROS_H_

#ifdef __cplusplus
extern "C" {
#endif

// =============================================================================
// includes

#include <stdint.h>

// =============================================================================
// types and definitions

#define MU_MAX(a, b)                                                           \
  ({                                                                           \
    __typeof__(a) _a = (a);                                                    \
    __typeof__(b) _b = (b);                                                    \
    _a > _b ? _a : _b;                                                         \
  })

#define MU_MIN(a, b)                                                           \
  ({                                                                           \
    __typeof__(a) _a = (a);                                                    \
    __typeof__(b) _b = (b);                                                    \
    _a < _b ? _a : _b;                                                         \
  })

#define MU_ABS(a)                                                              \
  ({                                                                           \
    __typeof__(a) _a = (a);                                                    \
    _a < 0 ? -_a : _a;                                                         \
  })

#define MU_SIGNUM(a)                                                           \
  ({                                                                           \
    __typeof__(a) _a = (a);                                                    \
    _a < 0 ? -1 : ((a > 0) ? 1 : 0);                                           \
  })

#define MU_CLAMP(lo, x, hi)                                                    \
  ({                                                                           \
    __typeof__(lo) _lo = (lo);                                                 \
    __typeof__(x) _x = (x);                                                    \
    __typeof__(hi) _hi = (hi);                                                 \
    (_x < _lo) ? _lo : ((_x > _hi) ? _hi : _x);                                \
  })

// =============================================================================
// declarations

#ifdef __cplusplus
}
#endif

#endif /* #ifndef __MU_MACROS_H_ */
