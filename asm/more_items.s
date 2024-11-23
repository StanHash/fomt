    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    @ this is the continuation of rucksack_item
    @ and other model stuff

    thumb_func_start func_0800FF8C
func_0800FF8C: @ 0x0800FF8C
    push {r4, r5, lr}
    movs r1, #0
    str r1, [r0]
    adds r4, r0, #0
    adds r4, #0x24
    movs r5, #0x8d
    lsls r5, r5, #2
    ldrh r2, [r0, #0x24]
    ldr r3, _0800FFCC @ =0xFFFFFC00
    adds r1, r3, #0
    ands r1, r2
    orrs r1, r5
    strh r1, [r0, #0x24]
    ldrb r5, [r4, #1]
    movs r2, #3
    adds r1, r2, #0
    ands r1, r5
    strb r1, [r4, #1]
    ldrh r5, [r4, #2]
    adds r1, r3, #0
    ands r1, r5
    strh r1, [r4, #2]
    ldrb r1, [r4, #3]
    ands r2, r1
    strb r2, [r4, #3]
    ldrh r1, [r4, #4]
    ands r3, r1
    strh r3, [r4, #4]
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
_0800FFCC: .4byte 0xFFFFFC00

    thumb_func_start func_0800FFD0
func_0800FFD0: @ 0x0800FFD0
    ldr r0, [r0]
    bx lr

    thumb_func_start func_0800FFD4
func_0800FFD4: @ 0x0800FFD4
    adds r0, #4
    bx lr

    thumb_func_start func_0800FFD8
func_0800FFD8: @ 0x0800FFD8
    ldr r1, [r0]
    adds r1, #4
    adds r0, r0, r1
    bx lr

    thumb_func_start func_0800FFE0
func_0800FFE0: @ 0x0800FFE0
    push {r4, lr}
    adds r4, r0, #0
    adds r1, #0x24
    movs r2, #6
    bl memcpy
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_0800FFF4
func_0800FFF4: @ 0x0800FFF4
    push {lr}
    adds r2, r0, #0
    ldr r0, [r2]
    cmp r0, #0x1d
    bhi _0801000E
    adds r0, #4
    adds r0, r2, r0
    cmp r0, #0
    beq _08010008
    strb r1, [r0]
_08010008:
    ldr r0, [r2]
    adds r0, #1
    str r0, [r2]
_0801000E:
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08010014
func_08010014: @ 0x08010014
    push {lr}
    adds r0, #0x24
    movs r2, #6
    bl memcpy
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08010024
func_08010024: @ 0x08010024
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r5, r3, #4
    ldr r0, [r3]
    adds r0, #4
    adds r0, r3, r0
    adds r2, r0, #0
    adds r1, r5, #0
    ldr r4, [r3]
    cmp r1, r2
    beq _08010040
_0801003A:
    adds r1, #1
    cmp r1, r2
    bne _0801003A
_08010040:
    subs r0, r0, r5
    subs r0, r4, r0
    str r0, [r3]
    pop {r4, r5}
    pop {r0}
    bx r0
