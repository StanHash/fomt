#pragma once

#ifdef __cplusplus
#  define EXTERN_C extern "C" {
#  define EXTERN_C_END }
#else
#  define EXTERN_C
#  define EXTERN_C_END
#endif

EXTERN_C

#include <stddef.h>
#include <stdint.h>

#include "types.h"

#define nullptr 0

#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")

#define NAKED __attribute__((naked))
#define ALIAS(n) __attribute__((alias(# n)))
#define SECTION(n) __attribute__((section(n)))
#define PACKED __attribute__((packed))
#define ALIGN(n) __attribute__((aligned(n)))

// macro for marking data and methods that should be const but can't be for matching
#if defined(MODERN) && MODERN != 0
#  define SHOULD_BE_CONST const
#else
#  define SHOULD_BE_CONST
#endif

#define ARRAY_COUNT(array) (size_t)(sizeof(array) / sizeof((array)[0]))

#define CONST_MIN(a, b) (((a) < (b)) ? (a) : (b))
#define CONST_MAX(a, b) (((a) > (b)) ? (a) : (b))

#define STRUCT_PAD(from, to) unsigned char pad_ ## from [(to) - (from)]

// helper for temporary declarations
#define EC extern "C"

EXTERN_C_END
