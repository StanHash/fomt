    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_080002E0
func_080002E0: @ 0x080002E0
    push {r4, r5, lr}
    sub sp, #0x28
    adds r4, r0, #0
    mov r1, sp
    movs r2, #0
    movs r3, #0x20
    bl func_080006E4
    ldr r5, _08000324 @ =gUnk_03000400
    ldrh r0, [r5]
    cmp r0, #0
    bne _08000320
    str r0, [sp, #0x20]
    add r1, sp, #0x20
    adds r0, r4, #0
    movs r2, #0x20
    movs r3, #4
    bl func_080006E4
    ldrh r0, [r5]
    cmp r0, #0
    bne _08000320
    str r0, [sp, #0x24]
    add r1, sp, #0x24
    adds r0, r4, #0
    movs r2, #0x24
    movs r3, #4
    bl func_080006E4
    ldrh r0, [r5]
    cmp r0, #0
    beq _08000328
_08000320:
    movs r0, #0
    b _0800034C
    .align 2, 0
_08000324: .4byte gUnk_03000400
_08000328:
    movs r4, #0
    ldr r1, _08000354 @ =gUnk_080E862C
    mov r0, sp
    movs r2, #0x20
    bl memcmp
    cmp r0, #0
    bne _0800034A
    ldr r1, [sp, #0x20]
    movs r0, #3
    ands r0, r1
    cmp r0, r1
    bne _0800034A
    ldr r0, [sp, #0x24]
    cmp r0, #1
    bhi _0800034A
    movs r4, #1
_0800034A:
    adds r0, r4, #0
_0800034C:
    add sp, #0x28
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
_08000354: .4byte gUnk_080E862C

    thumb_func_start func_08000358
func_08000358: @ 0x08000358
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r2, _08000398 @ =gUnk_080E862C
    movs r1, #0
    movs r3, #0x20
    bl func_080006A4
    ldr r5, _0800039C @ =gUnk_03000400
    ldrh r0, [r5]
    cmp r0, #0
    bne _08000390
    str r0, [sp]
    adds r0, r4, #0
    movs r1, #0x20
    mov r2, sp
    movs r3, #4
    bl func_080006A4
    ldrh r0, [r5]
    cmp r0, #0
    bne _08000390
    adds r0, r4, #0
    movs r1, #0x24
    mov r2, sp
    movs r3, #4
    bl func_080006A4
_08000390:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08000398: .4byte gUnk_080E862C
_0800039C: .4byte gUnk_03000400

    thumb_func_start func_080003A0
func_080003A0: @ 0x080003A0
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    bl func_080002E0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080003D0
    movs r0, #0
    str r0, [sp]
    adds r0, r4, #0
    mov r1, sp
    movs r2, #0x20
    movs r3, #4
    bl func_080006E4
    ldr r0, _080003CC @ =gUnk_03000400
    ldrh r0, [r0]
    cmp r0, #0
    bne _080003D0
    ldr r0, [sp]
    b _080003D2
    .align 2, 0
_080003CC: .4byte gUnk_03000400
_080003D0:
    movs r0, #0
_080003D2:
    add sp, #4
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080003DC
func_080003DC: @ 0x080003DC
    ldr r0, _080003E4 @ =0x00003FEC
    muls r0, r1, r0
    adds r0, #0x28
    bx lr
    .align 2, 0
_080003E4: .4byte 0x00003FEC

    thumb_func_start func_080003E8
func_080003E8: @ 0x080003E8
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r1, #0
    movs r0, #0
    str r0, [sp]
    adds r0, r4, #0
    mov r1, sp
    movs r2, #0x20
    movs r3, #4
    bl func_080006E4
    ldr r0, _08000428 @ =gUnk_03000400
    ldrh r0, [r0]
    cmp r0, #0
    bne _0800041E
    movs r1, #1
    lsls r1, r5
    ldr r0, [sp]
    orrs r0, r1
    str r0, [sp]
    adds r0, r4, #0
    movs r1, #0x20
    mov r2, sp
    movs r3, #4
    bl func_080006A4
_0800041E:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08000428: .4byte gUnk_03000400
_0800042C:
    .byte 0x30, 0xB5, 0x81, 0xB0
    .byte 0x04, 0x1C, 0x0D, 0x1C, 0x00, 0x20, 0x00, 0x90, 0x20, 0x1C, 0x69, 0x46, 0x20, 0x22, 0x04, 0x23
    .byte 0x00, 0xF0, 0x50, 0xF9, 0x09, 0x48, 0x00, 0x88, 0x00, 0x28, 0x0A, 0xD1, 0x01, 0x21, 0xA9, 0x40
    .byte 0x00, 0x98, 0x88, 0x43, 0x00, 0x90, 0x20, 0x1C, 0x20, 0x21, 0x6A, 0x46, 0x04, 0x23, 0x00, 0xF0
    .byte 0x21, 0xF9, 0x01, 0xB0, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x04, 0x00, 0x03

    thumb_func_start func_08000470
func_08000470: @ 0x08000470
    push {lr}
    sub sp, #4
    str r1, [sp]
    movs r1, #0x24
    mov r2, sp
    movs r3, #4
    bl func_080006A4
    add sp, #4
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08000488
func_08000488: @ 0x08000488
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    bl func_080002E0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080004B8
    movs r0, #0
    str r0, [sp]
    adds r0, r4, #0
    mov r1, sp
    movs r2, #0x24
    movs r3, #4
    bl func_080006E4
    ldr r0, _080004B4 @ =gUnk_03000400
    ldrh r0, [r0]
    cmp r0, #0
    bne _080004B8
    ldr r0, [sp]
    b _080004BA
    .align 2, 0
_080004B4: .4byte gUnk_03000400
_080004B8:
    movs r0, #0
_080004BA:
    add sp, #4
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
