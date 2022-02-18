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

typedef signed char s8;
typedef int         s32;

typedef u8 bool8;

#define nullptr 0

#define TRUE  1
#define FALSE 0

#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")

#define NAKED __attribute__((naked))
#define PACKED __attribute__((packed))
#define ALIGNED(a) __attribute__((aligned(a)))
#define ALIAS(n) __attribute__((alias(# n)));

#define ARRAY_COUNT(array) (size_t)(sizeof(array) / sizeof((array)[0]))

#define CONST_MIN(a, b) (((a) < (b)) ? (a) : (b))
#define CONST_MAX(a, b) (((a) > (b)) ? (a) : (b))

#ifdef __cplusplus
}
#endif
