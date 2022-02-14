#pragma once

#ifdef __cplusplus
extern "C"
{
#endif

#include "types.h"

#define NULL ((void *) 0)
#define nullptr 0

#define TRUE  1
#define FALSE 0

#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")

#define NAKED __attribute__((naked))
#define PACKED __attribute__((packed))
#define ALIGNED(a) __attribute__((aligned(a)))
#define ALIAS(n) __attribute__((alias(# n)));

// TODO: those were likely inline functions rather than macros
#define min(a, b) (((a) < (b)) ? (a) : (b))
#define MAX(a, b) (((a) > (b)) ? (a) : (b))

#ifdef __cplusplus
}
#endif
