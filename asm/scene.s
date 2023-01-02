    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_080007EC
func_080007EC: @ 0x080007EC
    push {lr}
    adds r2, r0, #0
    ldr r0, _08000808 @ =0x080E59CC
    str r0, [r2]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq _08000802
    adds r0, r2, #0
    bl __builtin_delete
_08000802:
    pop {r0}
    bx r0
    .align 2, 0
_08000808: .4byte 0x080E59CC

    thumb_func_start func_0800080C
func_0800080C: @ 0x0800080C
    push {lr}
    adds r2, r0, #0
    ldr r0, _08000828 @ =0x080E59DC
    str r0, [r2]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq _08000822
    adds r0, r2, #0
    bl __builtin_delete
_08000822:
    pop {r0}
    bx r0
    .align 2, 0
_08000828: .4byte 0x080E59DC

    thumb_func_start func_0800082C
func_0800082C: @ 0x0800082C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    adds r5, r0, #0
    ldr r0, [r5]
    cmp r0, #0
    beq _080008F8
    add r7, sp, #4
    add r6, sp, #8
_0800083C:
    ldr r1, [r5]
    ldr r2, [r1]
    adds r0, r7, #0
    ldr r2, [r2, #0xc]
    bl _call_via_r2
    ldr r1, [sp, #4]
    str r7, [sp, #0xc]
    str r1, [sp, #0x10]
    movs r0, #0
    str r0, [r7]
    str r1, [sp]
    ldr r1, [sp, #4]
    cmp r1, #0
    beq _08000866
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08000866:
    movs r4, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _0800087E
    cmp r1, #0
    beq _0800087E
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0800087E:
    str r4, [r5]
    ldr r3, [sp]
    cmp r3, #0
    beq _080008F8
    ldr r1, [r3]
    adds r0, r6, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    ldr r0, [sp, #8]
    str r6, [sp, #0x14]
    str r0, [sp, #0x18]
    movs r4, #0
    str r4, [r6]
    str r0, [sp, #4]
    ldr r1, [sp, #8]
    cmp r1, #0
    beq _080008B0
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080008B0:
    ldr r0, [sp, #4]
    str r4, [sp, #4]
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _080008CC
    cmp r1, #0
    beq _080008CC
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080008CC:
    str r4, [r5]
    ldr r1, [sp, #4]
    cmp r1, #0
    beq _080008E0
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080008E0:
    ldr r1, [sp]
    cmp r1, #0
    beq _080008F2
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080008F2:
    ldr r0, [r5]
    cmp r0, #0
    bne _0800083C
_080008F8:
    ldr r1, [r5]
    cmp r1, #0
    beq _0800090A
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0800090A:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
