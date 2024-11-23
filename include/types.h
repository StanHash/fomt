#ifndef TYPES_H
#define TYPES_H

#include <stdint.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef int8_t i8;
typedef int16_t i16;
typedef int32_t i32;
typedef int64_t i64;

typedef uintptr_t uptr;
typedef intptr_t iptr;

typedef u8 fu8;
typedef u16 fu16;
typedef i8 fi8;
typedef i16 fi16;

#if !defined(__cplusplus)
#if defined(MODERN)
#include <stdbool.h>
#else
typedef int bool;
#endif
#endif

enum
{
    FALSE = 0,
    TRUE = 1,
};

#endif // TYPES_H
