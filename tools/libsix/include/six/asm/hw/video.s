@
@ This Source Code Form is subject to the terms of the Mozilla Public
@ License, v. 2.0. If a copy of the MPL was not distributed with this
@ file, You can obtain one at https://mozilla.org/MPL/2.0/.
@

.ifndef  _LIBSIX_ASM_HW_VIDEO_S
.equiv   _LIBSIX_ASM_HW_VIDEO_S, 1

.include "six/asm/base.s"

REG      DISPCNT,  0x04000000
REG      GREENSWP, 0x04000002
REG      DISPSTAT, 0x04000004
REG      VCOUNT,   0x04000006

REG      BG0CNT, 0x04000008
REG      BG1CNT, 0x0400000A
REG      BG2CNT, 0x0400000C
REG      BG3CNT, 0x0400000E

REG      BG0HOFS, 0x04000010
REG      BG0VOFS, 0x04000012
REG      BG1HOFS, 0x04000014
REG      BG1VOFS, 0x04000016
REG      BG2HOFS, 0x04000018
REG      BG2VOFS, 0x0400001A
REG      BG3HOFS, 0x0400001C
REG      BG3VOFS, 0x0400001E

@ Affine

REG      BG2PA, 0x04000020
REG      BG2PB, 0x04000022
REG      BG2PC, 0x04000024
REG      BG2PD, 0x04000026
REG      BG2X,  0x04000028
REG      BG2Y,  0x0400002C

REG      BG3PA, 0x04000030
REG      BG3PB, 0x04000032
REG      BG3PC, 0x04000034
REG      BG3PD, 0x04000036
REG      BG3X,  0x04000038
REG      BG3Y,  0x0400003C

@ Window

REG      WIN0H, 0x04000040
REG      WIN1H, 0x04000042
REG      WIN0V, 0x04000044
REG      WIN1V, 0x04000046

REG      WIN0IN,  0x04000048
REG      WIN1IN,  0x04000049
REG      WIN0OUT, 0x0400004A
REG      WIN1OUT, 0x0400004B

@ Mosaic

REG      MOSAIC, 0x0400004C

@ Blending

REG      BLDCNT,   0x04000050
REG      BLDALPHA, 0x04000052
REG      BLDCOEFF, 0x04000054

CONST    BF_LCD_MODE_OFFSET, 0
CONST    BF_LCD_MODE_LENGTH, 3

BITFIELD LCD_MODE 0, 0
BITFIELD LCD_MODE 1, 1
BITFIELD LCD_MODE 2, 2
BITFIELD LCD_MODE 3, 3
BITFIELD LCD_MODE 4, 4
BITFIELD LCD_MODE 5, 5

CONST    LCD_MODE_TILED,           LCD_MODE_0
CONST    LCD_MODE_MIXED,           LCD_MODE_1
CONST    LCD_MODE_AFFINE,          LCD_MODE_2
CONST    LCD_MODE_BITMAP,          LCD_MODE_3
CONST    LCD_MODE_BITMAP_PALETTED, LCD_MODE_4
CONST    LCD_MODE_BITMAP_SMALL,    LCD_MODE_5

BIT      LCD_FRAME_SELECT,         4
BIT      LCD_HBLANK_OAM_ACCESS,    5
BIT      LCD_OBJ_MAPPING_1D,       6
CONST    LCD_OBJ_MAPPING_2D,       !LCD_OBJ_MAPPING_1D

BIT      LCD_FORCE_BLANK,          7
BIT      LCD_BG0_ENABLE,           8
BIT      LCD_BG1_ENABLE,           9
BIT      LCD_BG2_ENABLE,           10
BIT      LCD_BG3_ENABLE,           11
BIT      LCD_OBJ_ENABLE,           12
BIT      LCD_WIN0_ENABLE,          13
BIT      LCD_WIN1_ENABLE,          14
BIT      LCD_OBJ_WINDOW_ENABLE,    15

BIT      LCD_IN_VBLANK,            0
BIT      LCD_IN_HBLANK,            1
BIT      LCD_VCOUNT_MATCH,         2
BIT      LCD_VBLANK_IRQ_ENABLE,    3
BIT      LCD_HBLANK_IRQ_ENABLE,    4
BIT      LCD_VCOUNT_IRQ_EMABLE,    5

CONST    VCOUNT_DISPLAY_START,     0
CONST    VCOUNT_VBLANK_START,      160
CONST    VCOUNT_TOTAL_SCANLINES,   228 @ note: not part of libseven

CONST    BF_BG_PRIO_OFFSET,        0
CONST    BF_BG_PRIO_LENGTH,        2

CONST    BF_BG_SIZE_OFFSET,        14
CONST    BF_BG_SIZE_LENGTH,        2
CONST    BF_BG_AFF_SIZE_OFFSET,    14
CONST    BF_BG_AFF_SIZE_LENGTH,    2

BITFIELD BG_PRIO 0, 0
BITFIELD BG_PRIO 1, 1
BITFIELD BG_PRIO 2, 2
BITFIELD BG_PRIO 3, 3

CONST    BF_BG_GFX_BASE_OFFSET, 2
CONST    BF_BG_GFX_BASE_LENGTH, 2

CONST    BF_BG_MAP_BASE_OFFSET, 8
CONST    BF_BG_MAP_BASE_LENGTH, 5

CONST    BG_PRIO_MIN, BG_PRIO_3
CONST    BG_PRIO_MAX, BG_PRIO_0

BIT      BG_MOSAIC_ENABLE, 6
BIT      BG_256_COLOR, 7
CONST    BG_USE_PALETTES, !BG_256_COLOR
BIT      BG_AFF_WRAP, 13

BITFIELD BG_SIZE 256x256, 0
BITFIELD BG_SIZE 512x256, 1
BITFIELD BG_SIZE 256x512, 2
BITFIELD BG_SIZE 512x512, 3

CONST    BG_AFF_SIZE_128x128,   BG_SIZE_256x256
CONST    BG_AFF_SIZE_256x256,   BG_SIZE_512x256
CONST    BG_AFF_SIZE_512x512,   BG_SIZE_256x512
CONST    BG_AFF_SIZE_1024x1024, BG_SIZE_512x512

BIT      WIN_BG0_ENABLE,   0
BIT      WIN_BG1_ENABLE,   1
BIT      WIN_BG2_ENABLE,   2
BIT      WIN_BG3_ENABLE,   3
BIT      WIN_OBJ_ENABLE,   4
BIT      WIN_BLEND_ENABLE, 5

CONST    BF_MOSAIC_BG_H_OFFSET,  0
CONST    BF_MOSAIC_BG_H_LENGTH,  4

CONST    BF_MOSAIC_BG_V_OFFSET,  4
CONST    BF_MOSAIC_BG_V_LENGTH,  4

CONST    BF_MOSAIC_OBJ_H_OFFSET, 8
CONST    BF_MOSAIC_OBJ_H_LENGTH, 4

CONST    BF_MOSAIC_OBJ_V_OFFSET, 12
CONST    BF_MOSAIC_OBJ_V_LENGTH, 4

CONST    BF_BLD_MODE_OFFSET, 6
CONST    BF_BLD_MODE_LENGTH, 2

BIT      BLD_TARGET_BG0, 0
BIT      BLD_TARGET_BG1, 1
BIT      BLD_TARGET_BG2, 2
BIT      BLD_TARGET_BG3, 3
BIT      BLD_TARGET_OBJ, 4
BIT      BLD_TARGET_BD,  5

BITFIELD BLD_MODE NONE, 0
BITFIELD BLD_MODE ALPHA, 1
BITFIELD BLD_MODE WHITE, 2
BITFIELD BLD_MODE BLACK, 3

BIT      BLD_TARGET2_BG0, 8
BIT      BLD_TARGET2_BG1, 9
BIT      BLD_TARGET2_BG2, 10
BIT      BLD_TARGET2_BG3, 11
BIT      BLD_TARGET2_OBJ, 12
BIT      BLD_TARGET2_BD,  13

@ Color

CONST    BF_COLOR_R_OFFSET, 0
CONST    BF_COLOR_R_LENGTH, 5
CONST    BF_COLOR_G_OFFSET, 5
CONST    BF_COLOR_G_LENGTH, 5
CONST    BF_COLOR_B_OFFSET, 10
CONST    BF_COLRO_B_LENGTH, 5

.macro RGB5 id:req r:req g:req b:req
    CONST \id, ((\r) & 31) | (((\g) & 31) << 5) | (((\b) & 31) << 10)
.endm

.macro RGB8 id:req r:req g:req b:req
    CONST \id, (((\r) >> 3) & 31) | ((((\g) >> 3) & 31) << 5) | ((((\b) >> 3) & 31) << 10)
.endm

CONST    BG_PALETTE, MEM_PALETTE
CONST    OBJ_PALETTE, MEM_PALETTE+512

.endif @ !_LIBSIX_ASM_HW_VIDEO_S

@ vim: ft=armv4 et sta sw=4 sts=8
