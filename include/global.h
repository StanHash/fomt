#pragma once

#include <stddef.h>

#ifdef __cplusplus
extern "C"
{
#endif

typedef char           u8; // TODO: unsigned char
typedef unsigned short u16;
typedef unsigned int   u32;

typedef signed char    i8;
typedef signed short   i16;

typedef signed char s8;
typedef int         s32;

typedef u8 bool8;

#define nullptr 0

#define TRUE  1
#define FALSE 0

#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")

#define NAKED __attribute__((naked))
#define ALIAS(n) __attribute__((alias(# n)))

#define PACKED __attribute__((packed))
#define ALIGNED(a) __attribute__((aligned(a)))

// dummy macro for marking data and methods that should be const but can't be for matching
#if defined(MODERN) && MODERN != 0
#  define SHOULD_BE_CONST const
#else
#  define SHOULD_BE_CONST
#endif

#define ARRAY_COUNT(array) (size_t)(sizeof(array) / sizeof((array)[0]))

#define CONST_MIN(a, b) (((a) < (b)) ? (a) : (b))
#define CONST_MAX(a, b) (((a) > (b)) ? (a) : (b))

#ifdef __cplusplus
}
#endif
