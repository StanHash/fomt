@ temporary as libseven doesn't define sound registers yet
@ this is CC0

.ifndef  _LIBSIX_ASM_HW_SOUND_S
.equiv   _LIBSIX_ASM_HW_SOUND_S, 1

.include "six/asm/base.s"

REG SOUND_BASE,  0x04000060

REG SOUND1CNT,   REG_SOUND_BASE + 0x00
REG SOUND1CNT_L, REG_SOUND1CNT  + 0
REG SOUND1CNT_H, REG_SOUND1CNT  + 2
REG SOUND1CNT_X, REG_SOUND1CNT  + 4

REG SOUND2CNT,   REG_SOUND_BASE + 0x08
REG SOUND2CNT_L, REG_SOUND2CNT  + 0
REG SOUND2CNT_H, REG_SOUND2CNT  + 4

REG SOUND3CNT,   REG_SOUND_BASE + 0x10
REG SOUND3CNT_L, REG_SOUND3CNT  + 0
REG SOUND3CNT_H, REG_SOUND3CNT  + 2
REG SOUND3CNT_X, REG_SOUND3CNT  + 4

REG SOUND4CNT,   REG_SOUND_BASE + 0x18
REG SOUND4CNT_L, REG_SOUND4CNT  + 0
REG SOUND4CNT_H, REG_SOUND4CNT  + 4

.endif @ !_LIBSIX_ASM_HW_SOUND_S

@ vim: ft=armv4 et sta sw=4 sts=8
