#pragma once

#include "global.h"
#include "gbaio.h"

enum
{
    GBA_RESET_EWRAM    = 1 << 0,
    GBA_RESET_IWRAM    = 1 << 1,
    GBA_RESET_PALETTE  = 1 << 2,
    GBA_RESET_VRAM     = 1 << 3,
    GBA_RESET_OAM      = 1 << 4,
    GBA_RESET_SIO_IO   = 1 << 5,
    GBA_RESET_SOUND_IO = 1 << 6,
    GBA_RESET_IO       = 1 << 7,
    GBA_RESET_ALL      = (1 << 8) - 1,
};

enum
{
    CPUSET_SRC_FIXED = 0x01000000,
    CPUSET_32BIT     = 0x04000000,
    CPUSET_16BIT     = 0x00000000,
};

/* svc 00 */ void SoftReset(u32 reset_flags);
// svc 01 */ void RegisterRamReset(u32 reset_flags);
// svc 02 */ void Halt(void);
// svc 03 */ void Stop(void);
/* svc 04 */ void IntrWait(bool wait_next, fu16 intr_flags);
// svc 05 */ void VBlankIntrWait(void);
// svc 06 */ i32  Div(i32 lhs, i32 rhs);
// svc 06 */ i32  DivRem(i32 lhs, i32 rhs);
// svc 07 */ i32  DivArm(i32 rhs, i32 lhs);
/* svc 08 */ u16  Sqrt(u32 num);
// svc 09 */ u32  ArcTan(u16 tan);
/* svc 0A */ u16  ArcTan2(i16 x, i16 y);
/* svc 0B */ void CpuSet(const void * src, void * dst, u32 control);
/* svc 0C */ void CpuFastSet(const void * src, void * dst, u32 control);
// svc 0D */ u32  GetBiosChecksum(void);
// svc 0E */ void BgAffineSet(struct BgAffineSetSrc const * src, struct BgAffineSetDst * dst, i32 count);
// svc 0F */ void ObjAffineSet(struct ObjAffineSetSrc const * src, void * dest, i32 count, i32 offset);
// svc 10 */ void BitUnpack(void const * src, void * dst, struct BitUnpackInfo const * info);
// svc 11 */ void LZ77UnCompWram(void const * src, void * dst);
// svc 12 */ void LZ77UnCompVram(void const * src, void * dst);
// svc 13 */ void HuffUnComp(void const * src, void * dst);
// svc 14 */ void RLUnCompWram(void const * src, void * dst);
// svc 15 */ void RLUnCompVram(void const * src, void * dst);
// svc 16 */ void Diff8bitUnFilterWram(void const * src, void * dst);
// svc 17 */ void Diff8bitUnFilterVram(void const * src, void * dst);
// svc 18 */ void Diff16bitUnFilter(void const * src, void * dst);
// svc 19 */ void SoundBiasReset(void);
// svc 19 */ void SoundBiasSet(void);
// ...

#define CPU_FILL(value, dest, size, bit)                                            \
{                                                                                   \
    u##bit volatile tmp = (u##bit volatile) value;                                  \
    CpuSet((void *)&tmp,                                                            \
           dest,                                                                    \
           CPUSET_##bit##BIT | CPUSET_SRC_FIXED | ((size) / (bit / 8) & 0x1FFFFF)); \
}

#define CpuFill16(value, dest, size) CPU_FILL(value, dest, size, 16)
#define CpuFill32(value, dest, size) CPU_FILL(value, dest, size, 32)

#define CPU_COPY(src, dest, size, bit) CpuSet(src, dest, CPUSET_##bit##BIT | ((size) / (bit / 8) & 0x1FFFFF))

#define CpuCopy16(src, dest, size) CPU_COPY(src, dest, size, 16)
#define CpuCopy32(src, dest, size) CPU_COPY(src, dest, size, 32)
