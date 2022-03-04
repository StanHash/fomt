/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

#ifndef _LIBSIX_BASE_ATTRIBUTES_H
#define _LIBSIX_BASE_ATTRIBUTES_H

#include <six/base.h>

_LIBSIX_EXTERN_C

#define _LIBSIX_SECCOUNT      _LIBSIX_STR2(__COUNTER__)

#define PACKED                  __attribute__((packed))
#define ALIGN(n)                __attribute__((aligned(n)))
#define NORETURN                __attribute__((__noreturn__))
#define NOINLINE                __attribute__((noinline))
#define ARM_CODE                __attribute__((target("arm")))
#define THUMB_CODE              __attribute__((target("thumb")))

#define SECTION(name)           __attribute__((section(name)))

#define IWRAM_SECTION(suffix)   SECTION(".iwram" suffix)
#define IWRAM_OVERLAY(number)   SECTION(".iwram" #number)

#define IWRAM_CODE              IWRAM_SECTION(".text." _LIBSIX_SECCOUNT) NOINLINE
#define IWRAM_DATA              IWRAM_SECTION(".data." _LIBSIX_SECCOUNT)
#define IWRAM_BSS               SECTION(".bss." _LIBSIX_SECCOUNT)

#define EWRAM_SECTION(suffix)   SECTION(".ewram" suffix)
#define EWRAM_OVERLAY(number)   SECTION(".ewram" #number)

#define EWRAM_CODE              EWRAM_SECTION(".text." _LIBSIX_SECCOUNT) NOINLINE
#define EWRAM_DATA              EWRAM_SECTION(".data." _LIBSIX_SECCOUNT)
#define EWRAM_BSS               SECTION(".sbss." _LIBSIX_SECCOUNT)

_LIBSIX_EXTERN_C_END

#endif /* !_LIBSIX_BASE_ATTRIBUTES_H */
