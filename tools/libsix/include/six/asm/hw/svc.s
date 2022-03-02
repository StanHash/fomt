@
@ This Source Code Form is subject to the terms of the Mozilla Public
@ License, v. 2.0. If a copy of the MPL was not distributed with this
@ file, You can obtain one at https://mozilla.org/MPL/2.0/.
@

.ifndef  _LIBSIX_ASM_HW_SVC_S
.equiv   _LIBSIX_ASM_HW_SVC_S, 1

.include "six/asm/base.s"

CONST SVC_SOFTRESET,             0
CONST SVC_REGISTERRAMRESET,      1
CONST SVC_HALT,                  2
CONST SVC_STOP,                  3
CONST SVC_INTRWAIT,              4
CONST SVC_VBLANKINTRWAIT,        5
CONST SVC_DIV,                   6
CONST SVC_SQRT,                  8
CONST SVC_ARCTAN,                9
CONST SVC_ARCTAN2,              10
CONST SVC_CPUSET,               11
CONST SVC_CPUFASTSET,           12
CONST SVC_BIOSCHECKSUM,         13
CONST SVC_BGAFFINESET,          14
CONST SVC_OBJAFFINESET,         15
CONST SVC_BITUNPACK,            16
CONST SVC_LZ77UNCOMPWRAM,       17
CONST SVC_LZ77UNCOMPVRAM,       18
CONST SVC_HUFFUNCOMP,           19
CONST SVC_RLUNCOMPWRAM,         20
CONST SVC_RLUNCOMPVRAM,         21
CONST SVC_DIFF8BITUNFILTERWRAM, 22
CONST SVC_DIFF8BITUNFILTERVRAM, 23
CONST SVC_DIFF16BITUNFILTER,    24
CONST SVC_SOUNDBIAS,            25
CONST SVC_SOUNDDRIVERINIT,      26
CONST SVC_SOUNDDRIVERMODE,      27
CONST SVC_SOUNDDRIVERMAIN,      28
CONST SVC_SOUNDDRIVERVSYNC,     29
CONST SVC_SOUNDCHANNELCLEAR,    30
CONST SVC_MIDIKEY2FREQ,         31
CONST SVC_MUSICPLAYEROPEN,      32
CONST SVC_MUSICPLAYERSTART,     33
CONST SVC_MUSICPLAYERSTOP,      34
CONST SVC_MUSICPLAYERCONTINUE,  35
CONST SVC_MUSICPLAYERFADEOUT,   36
CONST SVC_MULTIBOOT,            37
CONST SVC_HARDRESET,            38
CONST SVC_SOUNDDRIVERVSYNCOFF,  40
CONST SVC_SOUNDDRIVERVSYNCON,   41

EXTFN SvcSoftReset
EXTFN SvcRegisterRamReset
EXTFN SvcHalt
EXTFN SvcStop
EXTFN SvcIntrWait
EXTFN SvcVBlankIntrWait
EXTFN SvcSqrt
EXTFN SvcArcTan
EXTFN SvcArcTan2
EXTFN SvcCpuSet
EXTFN SvcCpuFastSet
EXTFN SvcBiosChecksum
EXTFN SvcBgAffineSet
EXTFN SvcObjAffineSet
EXTFN SvcBitUnPack
EXTFN SvcLZ77UnCompWram
EXTFN SvcLZ77UnCompVram
EXTFN SvcHuffUnComp
EXTFN SvcRLUnCompWram
EXTFN SvcRLUnCompVram
EXTFN SvcDiff8bitUnFilterWram
EXTFN SvcDiff8bitUnFilterVram
EXTFN SvcDiff16bitUnFilter
EXTFN SvcSoundBiasChange
EXTFN SvcSoundDriverInit
EXTFN SvcSoundDriverMode
EXTFN SvcSoundDriverMain
EXTFN SvcSoundDriverVSync
EXTFN SvcSoundChannelClear
EXTFN SvcMidiKey2Freq
EXTFN SvcMusicPlayerOpen
EXTFN SvcMusicPlayerStart
EXTFN SvcMusicPlayerStop
EXTFN SvcMusicPlayerContinue
EXTFN SvcMusicPlayerFadeOut
EXTFN SvcMultiBoot
EXTFN SvcHardReset
EXTFN SvcSoundDriverVSyncOff
EXTFN SvcSoundDriverVSyncOn

EXTFN SvcSoftResetEx
EXTFN SvcIntrWaitEx
EXTFN SvcCpuSetFixed
EXTFN SvcCpuFastSetFixed
EXTFN SvcIsSystemDS

.endif @ !_LIBSIX_ASM_HW_SVC_S

@ vim: ft=armv4 et sta sw=4 sts=8
