/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

#ifndef _LIBSIX_SVC_MATH_H
#define _LIBSIX_SVC_MATH_H

#include <six/base.h>

_LIBSIX_EXTERN_C

struct Div
{
    i32 quot;
    i32 rem;
};

extern struct Div SvcDiv(i32 numerator, i32 denominator);
extern u16 SvcSqrt(u32 x);
extern i16 SvcArcTan(i16 tan);
extern u16 SvcArcTan2(i16 x, i16 y);

_LIBSIX_EXTERN_C_END

#endif /* !_LIBSIX_SVC_MATH_H */
