/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

#ifndef _LIBSIX_SVC_MEMORY_H
#define _LIBSIX_SVC_MEMORY_H

#include <six/base.h>

_LIBSIX_EXTERN_C

enum CpuSetFlags
{
    CS_SRC_FIXED        = BIT(24),
    CS_32BIT            = BIT(26),
    CS_16BIT            = !CS_32BIT,
};

extern void SvcCpuSet(const void *src, void *dst, u32 ctrl);

enum CpuFastSetFlags
{
    CFS_SRC_FIXED       = BIT(24),
};

extern void SvcCpuFastSet(const void *src, void *dst, u32 ctrl);

_LIBSIX_EXTERN_C_END

#endif /* !_LIBSIX_SVC_MEMORY_H */
