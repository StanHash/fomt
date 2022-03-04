#pragma once

#include "global.h"
#include "six/svc/memory.h"

#define CPU_FILL(value, dest, size, bit)                                \
{                                                                       \
    volatile u##bit tmp = (volatile u##bit) value;                      \
    SvcCpuSet((void *)&tmp,                                             \
           dest,                                                        \
           CS_##bit##BIT | CS_SRC_FIXED | ((size)/(bit/8) & 0x1FFFFF)); \
}

#define CpuFill16(value, dest, size) CPU_FILL(value, dest, size, 16)
#define CpuFill32(value, dest, size) CPU_FILL(value, dest, size, 32)

#define CPU_COPY(src, dest, size, bit) SvcCpuSet(src, dest, CS_##bit##BIT | ((size)/(bit/8) & 0x1FFFFF))

#define CpuCopy16(src, dest, size) CPU_COPY(src, dest, size, 16)
#define CpuCopy32(src, dest, size) CPU_COPY(src, dest, size, 32)
