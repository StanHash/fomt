    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_0800059C
func_0800059C: @ 0x0800059C
    push {r4, lr}
    adds r4, r0, #0
_080005A0:
    adds r0, r4, #0
    bl func_080D01F8
    cmp r0, #0
    bne _080005BE
    ldr r0, _080005B8 @ =__new_handler
    ldr r0, [r0]
    cmp r0, #0
    beq _080005BC
    bl _call_via_r0
    b _080005A0
    .align 2, 0
_080005B8: .4byte __new_handler
_080005BC:
    movs r0, #0
_080005BE:
    pop {r4}
    pop {r1}
    bx r1
_080005C4:
    .byte 0x02, 0x49, 0x0A, 0x68, 0x08, 0x60, 0x10, 0x1C, 0x70, 0x47, 0x00, 0x00
    .byte 0xC0, 0x04, 0x00, 0x03

    thumb_func_start __builtin_new
__builtin_new: @ 0x080005D4
    push {lr}
    bl func_0800059C
    cmp r0, #0
    bne _080005E0
    movs r0, #0
_080005E0:
    pop {r1}
    bx r1

    thumb_func_start __builtin_vec_new
__builtin_vec_new: @ 0x080005E4
    push {lr}
    bl __builtin_new
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080005F0
func_080005F0: @ 0x080005F0
    push {lr}
    bl func_0800059C
    pop {r1}
    bx r1
    .align 2, 0
_080005FC:
    .byte 0x00, 0xB5, 0xFF, 0xF7
    .byte 0xF7, 0xFF, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

    thumb_func_start __builtin_delete
__builtin_delete: @ 0x08000608
    push {lr}
    bl func_080D0260
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start __builtin_vec_delete
__builtin_vec_delete: @ 0x08000614
    push {lr}
    bl __builtin_delete
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08000620
func_08000620: @ 0x08000620
    push {lr}
    bl func_080D0260
    pop {r0}
    bx r0
    .align 2, 0
_0800062C:
    .byte 0x00, 0xB5, 0xFF, 0xF7
    .byte 0xF7, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
