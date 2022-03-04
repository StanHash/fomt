/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

#ifndef _LIBSIX_BASE_H
#define _LIBSIX_BASE_H

#ifdef __cplusplus
#define _LIBSIX_EXTERN_C extern "C" {
#define _LIBSIX_EXTERN_C_END }
#else
#define _LIBSIX_EXTERN_C
#define _LIBSIX_EXTERN_C_END
#endif

#define _LIBSIX_STR(s) #s
#define _LIBSIX_STR2(s) _LIBSIX_STR(s)

_LIBSIX_EXTERN_C

#include <six/base/addresses.h>
#include <six/base/attributes.h>
#include <six/base/bits.h>
#include <six/base/types.h>

_LIBSIX_EXTERN_C_END

#endif /* !_LIBSIX_BASE_H */
