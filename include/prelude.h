#ifndef PRELUDE_H
#define PRELUDE_H

// clang-format off
// IWYU pragma: always_keep

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

#include "types.h" // IWYU pragma: export

#define nullptr 0

#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")

#define NAKED __attribute__((naked))
#define ALIAS(n) __attribute__((alias(# n)))
#define SECTION(n) __attribute__((section(n)))
#define PACKED __attribute__((packed))
#define ALIGN(n) __attribute__((aligned(n)))

// macro for marking things that should or shouldn't be something but can't or have to be to produce matching code
#if defined(MODERN) && MODERN != 0
#  define SHOULD_BE(__term) __term
#  define SHOULD_NOT_BE(__term)
#else
#  define SHOULD_BE(__term)
#  define SHOULD_NOT_BE(__term) __term
#endif

#define ARRAY_COUNT(array) (size_t)(sizeof(array) / sizeof((array)[0]))

#define CONST_MIN(a, b) (((a) < (b)) ? (a) : (b))
#define CONST_MAX(a, b) (((a) > (b)) ? (a) : (b))

#define STRUCT_PAD(from, to) unsigned char pad_ ## from [(to) - (from)]

// helper for temporary declarations
#define EC extern "C"

EXTERN_C_END

// clang-format on

#endif // PRELUDE_H
