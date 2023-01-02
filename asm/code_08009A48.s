    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08009A48
func_08009A48: @ 0x08009A48
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    adds r0, r5, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, #0xc
    bls _08009A5C
    movs r4, #0xc
_08009A5C:
    adds r0, r6, #0
    adds r1, r5, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
    ldrh r1, [r6, #0x10]
    ldr r0, _08009ACC @ =0xFFFFFC00
    ands r0, r1
    strh r0, [r6, #0x10]
    ldrb r1, [r6, #0x11]
    movs r0, #5
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #8
    orrs r0, r1
    movs r1, #0x11
    rsbs r1, r1, #0
    ands r0, r1
    strb r0, [r6, #0x11]
    adds r0, r6, #0
    adds r0, #0x40
    bl __11ShippingBin
    movs r1, #0xf0
    lsls r1, r1, #1
    adds r0, r6, r1
    bl __9FarmHouse
    movs r1, #0xff
    lsls r1, r1, #2
    adds r0, r6, r1
    bl __4Coop
    ldr r1, _08009AD0 @ =0x000005DC
    adds r0, r6, r1
    bl __4Barn
    ldr r0, _08009AD4 @ =0x000009C8
    adds r4, r6, r0
    ldr r5, _08009AD8 @ =0x00000432
    movs r7, #1
    rsbs r7, r7, #0
_08009AB6:
    adds r0, r4, #0
    bl func_08009F8C
    adds r4, #4
    subs r5, #1
    cmp r5, r7
    bne _08009AB6
    adds r0, r6, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_08009ACC: .4byte 0xFFFFFC00
_08009AD0: .4byte 0x000005DC
_08009AD4: .4byte 0x000009C8
_08009AD8: .4byte 0x00000432

    thumb_func_start func_08009ADC
func_08009ADC: @ 0x08009ADC
    movs r1, #0xfc
    lsls r1, r1, #1
    movs r2, #0x84
    strh r1, [r0]
    strh r2, [r0, #2]
    bx lr

    thumb_func_start func_08009AE8
func_08009AE8: @ 0x08009AE8
    movs r1, #0x8f
    movs r2, #0x83
    lsls r2, r2, #2
    strh r1, [r0]
    strh r2, [r0, #2]
    bx lr

    thumb_func_start func_08009AF4
func_08009AF4: @ 0x08009AF4
    bx lr
    .align 2, 0

    thumb_func_start func_08009AF8
func_08009AF8: @ 0x08009AF8
    ldrh r0, [r0, #0x10]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    bx lr

    thumb_func_start func_08009B00
func_08009B00: @ 0x08009B00
    push {lr}
    adds r1, r0, #0
    ldrb r0, [r1, #0x11]
    lsls r0, r0, #0x1d
    movs r2, #0
    cmp r0, #0
    bge _08009B12
    adds r2, r1, #0
    adds r2, #0x14
_08009B12:
    adds r0, r2, #0
    pop {r1}
    bx r1

    thumb_func_start func_08009B18
func_08009B18: @ 0x08009B18
    ldrb r0, [r0, #0x11]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08009B20
func_08009B20: @ 0x08009B20
    push {r4, r5, r6, lr}
    movs r5, #0
    ldr r1, _08009B44 @ =0x000009C8
    adds r6, r0, r1
    movs r4, #0
_08009B2A:
    movs r3, #0
    adds r2, r4, r6
_08009B2E:
    ldr r1, [r2]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    beq _08009B48
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x1a
    bne _08009B48
    movs r0, #1
    b _08009B5A
    .align 2, 0
_08009B44: .4byte 0x000009C8
_08009B48:
    adds r2, #4
    adds r3, #1
    cmp r3, #0x2a
    bls _08009B2E
    adds r4, #0xac
    adds r5, #1
    cmp r5, #0x18
    bls _08009B2A
    movs r0, #0
_08009B5A:
    pop {r4, r5, r6}
    pop {r1}
    bx r1

    thumb_func_start func_08009B60
func_08009B60: @ 0x08009B60
    ldrb r0, [r0, #0x11]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08009B68
func_08009B68: @ 0x08009B68
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    ldr r2, _08009BA0 @ =0x000003E7
    str r2, [sp]
    ldrh r4, [r5, #0x10]
    lsls r0, r4, #0x16
    lsrs r0, r0, #0x16
    adds r0, r0, r1
    str r0, [sp, #4]
    add r3, sp, #4
    mov r1, sp
    cmp r2, r0
    bls _08009B86
    adds r1, r3, #0
_08009B86:
    ldr r1, [r1]
    ldr r2, _08009BA4 @ =0x000003FF
    adds r0, r2, #0
    ands r1, r0
    ldr r0, _08009BA8 @ =0xFFFFFC00
    ands r0, r4
    orrs r0, r1
    strh r0, [r5, #0x10]
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08009BA0: .4byte 0x000003E7
_08009BA4: .4byte 0x000003FF
_08009BA8: .4byte 0xFFFFFC00

    thumb_func_start func_08009BAC
func_08009BAC: @ 0x08009BAC
    push {r4, lr}
    adds r3, r0, #0
    ldrh r2, [r3, #0x10]
    lsls r0, r2, #0x16
    lsrs r0, r0, #0x16
    cmp r0, r1
    bhi _08009BC4
    ldr r0, _08009BC0 @ =0xFFFFFC00
    ands r0, r2
    b _08009BD2
    .align 2, 0
_08009BC0: .4byte 0xFFFFFC00
_08009BC4:
    subs r1, r0, r1
    ldr r4, _08009BDC @ =0x000003FF
    adds r0, r4, #0
    ands r1, r0
    ldr r0, _08009BE0 @ =0xFFFFFC00
    ands r0, r2
    orrs r0, r1
_08009BD2:
    strh r0, [r3, #0x10]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
_08009BDC: .4byte 0x000003FF
_08009BE0: .4byte 0xFFFFFC00

    thumb_func_start func_08009BE4
func_08009BE4: @ 0x08009BE4
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r5, r1, #0
    ldrb r0, [r6, #0x11]
    lsls r0, r0, #0x1d
    cmp r0, #0
    blt _08009C36
    adds r4, r6, #0
    adds r4, #0x14
    cmp r4, #0
    beq _08009C2E
    adds r0, r4, #0
    bl __as__6AnimalRC6Animal
    ldrb r0, [r5, #0x1c]
    strb r0, [r4, #0x1c]
    ldrb r3, [r5, #0x1d]
    lsls r1, r3, #0x1f
    lsrs r1, r1, #0x1f
    ldrb r2, [r4, #0x1d]
    movs r0, #2
    rsbs r0, r0, #0
    ands r0, r2
    orrs r0, r1
    movs r1, #2
    ands r1, r3
    movs r2, #3
    rsbs r2, r2, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r4, #0x1d]
    ldr r0, [r5, #0x20]
    str r0, [r4, #0x20]
    ldr r0, [r5, #0x24]
    ldr r1, [r5, #0x28]
    str r0, [r4, #0x24]
    str r1, [r4, #0x28]
_08009C2E:
    ldrb r0, [r6, #0x11]
    movs r1, #4
    orrs r0, r1
    strb r0, [r6, #0x11]
_08009C36:
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_08009C3C
func_08009C3C: @ 0x08009C3C
    push {lr}
    adds r1, r0, #0
    ldrb r0, [r1, #0x11]
    lsls r0, r0, #0x1d
    movs r2, #0
    cmp r0, #0
    bge _08009C4E
    adds r2, r1, #0
    adds r2, #0x14
_08009C4E:
    adds r0, r2, #0
    pop {r1}
    bx r1

    thumb_func_start func_08009C54
func_08009C54: @ 0x08009C54
    ldrb r2, [r0, #0x11]
    movs r1, #5
    rsbs r1, r1, #0
    ands r1, r2
    strb r1, [r0, #0x11]
    bx lr

    thumb_func_start func_08009C60
func_08009C60: @ 0x08009C60
    ldrb r2, [r0, #0x11]
    movs r1, #9
    rsbs r1, r1, #0
    ands r1, r2
    strb r1, [r0, #0x11]
    bx lr

    thumb_func_start func_08009C6C
func_08009C6C: @ 0x08009C6C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x28
    adds r5, r0, #0
    adds r7, r1, #0
    adds r6, r2, #0
    ldrb r0, [r5, #0x11]
    movs r1, #8
    orrs r0, r1
    strb r0, [r5, #0x11]
    adds r0, r5, #0
    bl func_08009C3C
    cmp r0, #0
    beq _08009C94
    bl DayUpdate__5Horse
_08009C94:
    movs r1, #0xf0
    lsls r1, r1, #1
    adds r0, r5, r1
    ldrb r1, [r6]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
    bl DayUpdate__9FarmHouse6Season
    movs r2, #0xff
    lsls r2, r2, #2
    adds r0, r5, r2
    bl DayUpdate__4Coop
    ldr r1, _08009D2C @ =0x000005DC
    adds r0, r5, r1
    bl DayUpdate__4Barn
    ldr r2, _08009D30 @ =0x000009C8
    adds r2, r2, r5
    mov r8, r2
    mov r4, r8
    ldr r1, _08009D34 @ =0x00001A94
    adds r0, r5, r1
    subs r2, r7, #3
    mov sb, r2
    cmp r8, r0
    bhs _08009CDC
    adds r5, r0, #0
_08009CCC:
    adds r0, r4, #0
    adds r1, r7, #0
    adds r2, r6, #0
    bl func_0800A7B0
    adds r4, #4
    cmp r4, r5
    blo _08009CCC
_08009CDC:
    mov r0, sb
    cmp r0, #1
    bls _08009CE4
    b _08009F6E
_08009CE4:
    bl rand
    movs r1, #1
    ands r1, r0
    movs r2, #0x23
    str r2, [sp, #0x10]
    cmp r1, #0
    beq _08009CF8
    movs r0, #0x1f
    str r0, [sp, #0x10]
_08009CF8:
    mov r1, sp
    str r1, [sp, #0x14]
    movs r0, #0
    ldr r2, [sp, #0x10]
    cmp r2, #0x1a
    ble _08009D06
    movs r0, #1
_08009D06:
    mov sl, r0
    movs r0, #0
    str r0, [sp, #0x18]
    mov r1, sp
    adds r1, #8
    str r1, [sp, #0x24]
_08009D12:
    mov r2, sl
    cmp r2, #0
    beq _08009D38
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b _08009D4A
    .align 2, 0
_08009D2C: .4byte 0x000005DC
_08009D30: .4byte 0x000009C8
_08009D34: .4byte 0x00001A94
_08009D38:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
_08009D4A:
    bl __umodsi3
    adds r5, r0, #0
    movs r0, #0x2b
    mov sb, r0
    mov r4, sb
    muls r4, r5, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl func_0800A78C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08009DB0
    mov r1, sl
    cmp r1, #0
    beq _08009DA6
    adds r7, r6, #1
    adds r0, r7, r4
    lsls r0, r0, #2
    add r0, r8
    bl func_0800A78C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08009DB0
    adds r0, r5, #1
    mov r4, sb
    muls r4, r0, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl func_0800A78C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08009DB0
    adds r0, r7, r4
    lsls r0, r0, #2
    add r0, r8
    bl func_0800A78C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08009DB0
_08009DA6:
    ldr r2, [sp, #0x14]
    str r6, [r2]
    str r5, [r2, #4]
    movs r0, #1
    b _08009DBC
_08009DB0:
    ldr r0, [sp, #0x18]
    adds r0, #1
    str r0, [sp, #0x18]
    cmp r0, #0x63
    bls _08009D12
    movs r0, #0
_08009DBC:
    cmp r0, #0
    beq _08009E2E
    movs r5, #0
    ldr r1, [sp, #0x10]
    cmp r1, #0x1a
    ble _08009DCA
    movs r5, #1
_08009DCA:
    ldr r0, [sp]
    ldr r1, [sp, #4]
    movs r4, #0x2b
    muls r1, r4, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r1, [sp, #0x10]
    movs r2, #8
    bl func_0800A134
    cmp r5, #0
    beq _08009E2E
    ldr r0, [sp]
    adds r0, #1
    ldr r1, [sp, #4]
    muls r1, r4, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r1, [sp, #0x10]
    adds r1, #1
    movs r2, #8
    bl func_0800A134
    ldr r0, [sp]
    ldr r1, [sp, #4]
    adds r1, #1
    muls r1, r4, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r1, [sp, #0x10]
    adds r1, #2
    movs r2, #8
    bl func_0800A134
    ldr r0, [sp]
    adds r0, #1
    ldr r1, [sp, #4]
    adds r1, #1
    muls r1, r4, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r1, [sp, #0x10]
    adds r1, #3
    movs r2, #8
    bl func_0800A134
_08009E2E:
    bl rand
    movs r1, #1
    ands r1, r0
    movs r2, #0x23
    str r2, [sp, #0x10]
    cmp r1, #0
    beq _08009E42
    movs r0, #0x1f
    str r0, [sp, #0x10]
_08009E42:
    ldr r1, [sp, #0x24]
    str r1, [sp, #0x1c]
    movs r0, #0
    ldr r2, [sp, #0x10]
    cmp r2, #0x1a
    ble _08009E50
    movs r0, #1
_08009E50:
    mov sl, r0
    movs r0, #0
    str r0, [sp, #0x20]
_08009E56:
    mov r1, sl
    cmp r1, #0
    beq _08009E70
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b _08009E82
_08009E70:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
_08009E82:
    bl __umodsi3
    adds r5, r0, #0
    movs r2, #0x2b
    mov sb, r2
    mov r4, sb
    muls r4, r5, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl func_0800A78C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08009EE8
    mov r0, sl
    cmp r0, #0
    beq _08009EDE
    adds r7, r6, #1
    adds r0, r7, r4
    lsls r0, r0, #2
    add r0, r8
    bl func_0800A78C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08009EE8
    adds r0, r5, #1
    mov r4, sb
    muls r4, r0, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl func_0800A78C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08009EE8
    adds r0, r7, r4
    lsls r0, r0, #2
    add r0, r8
    bl func_0800A78C
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08009EE8
_08009EDE:
    ldr r1, [sp, #0x1c]
    str r6, [r1]
    str r5, [r1, #4]
    movs r0, #1
    b _08009EF4
_08009EE8:
    ldr r2, [sp, #0x20]
    adds r2, #1
    str r2, [sp, #0x20]
    cmp r2, #0x63
    bls _08009E56
    movs r0, #0
_08009EF4:
    cmp r0, #0
    beq _08009F6E
    movs r5, #0
    ldr r0, [sp, #0x10]
    cmp r0, #0x1a
    ble _08009F02
    movs r5, #1
_08009F02:
    ldr r0, [sp, #8]
    ldr r2, [sp, #0x24]
    ldr r1, [r2, #4]
    movs r4, #0x2b
    muls r1, r4, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r1, [sp, #0x10]
    movs r2, #8
    bl func_0800A134
    cmp r5, #0
    beq _08009F6E
    ldr r0, [sp, #8]
    adds r0, #1
    ldr r2, [sp, #0x24]
    ldr r1, [r2, #4]
    muls r1, r4, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r1, [sp, #0x10]
    adds r1, #1
    movs r2, #8
    bl func_0800A134
    ldr r0, [sp, #8]
    ldr r2, [sp, #0x24]
    ldr r1, [r2, #4]
    adds r1, #1
    muls r1, r4, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r1, [sp, #0x10]
    adds r1, #2
    movs r2, #8
    bl func_0800A134
    ldr r0, [sp, #8]
    adds r0, #1
    ldr r2, [sp, #0x24]
    ldr r1, [r2, #4]
    adds r1, #1
    muls r1, r4, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r1, [sp, #0x10]
    adds r1, #3
    movs r2, #8
    bl func_0800A134
_08009F6E:
    add sp, #0x28
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08009F80
func_08009F80: @ 0x08009F80
    ldrb r1, [r0, #0x11]
    movs r2, #0x10
    orrs r1, r2
    strb r1, [r0, #0x11]
    bx lr
    .align 2, 0

    thumb_func_start func_08009F8C
func_08009F8C: @ 0x08009F8C
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0
    strb r0, [r4]
    ldrb r1, [r4, #1]
    subs r0, #0x10
    ands r0, r1
    strb r0, [r4, #1]
    ldr r0, [r4]
    ldr r1, _08009FC4 @ =0xFFFE0FFF
    ands r0, r1
    str r0, [r4]
    adds r0, r4, #0
    bl func_0800A014
    movs r1, #7
    ands r0, r1
    lsls r0, r0, #1
    ldrb r2, [r4, #2]
    movs r1, #0xf
    rsbs r1, r1, #0
    ands r1, r2
    orrs r1, r0
    strb r1, [r4, #2]
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08009FC4: .4byte 0xFFFE0FFF

    thumb_func_start func_08009FC8
func_08009FC8: @ 0x08009FC8
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #3
    lsls r2, r2, #2
    ands r1, r0
    orrs r2, r1
    strb r2, [r4]
    movs r0, #0xf
    ands r3, r0
    ldrb r1, [r4, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r4, #1]
    ldr r0, [r4]
    ldr r1, _0800A010 @ =0xFFFE0FFF
    ands r0, r1
    str r0, [r4]
    adds r0, r4, #0
    bl func_0800A014
    movs r1, #7
    ands r0, r1
    lsls r0, r0, #1
    ldrb r2, [r4, #2]
    movs r1, #0xf
    rsbs r1, r1, #0
    ands r1, r2
    orrs r1, r0
    strb r1, [r4, #2]
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_0800A010: .4byte 0xFFFE0FFF

    thumb_func_start func_0800A014
func_0800A014: @ 0x0800A014
    push {lr}
    movs r2, #1
    ldr r1, [r0]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    beq _0800A076
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    subs r0, #0x1a
    cmp r0, #0xc
    bhi _0800A076
    lsls r0, r0, #2
    ldr r1, _0800A038 @ =_0800A03C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800A038: .4byte _0800A03C
_0800A03C: @ jump table
    .4byte _0800A070 @ case 0
    .4byte _0800A070 @ case 1
    .4byte _0800A070 @ case 2
    .4byte _0800A070 @ case 3
    .4byte _0800A070 @ case 4
    .4byte _0800A074 @ case 5
    .4byte _0800A074 @ case 6
    .4byte _0800A074 @ case 7
    .4byte _0800A074 @ case 8
    .4byte _0800A070 @ case 9
    .4byte _0800A070 @ case 10
    .4byte _0800A070 @ case 11
    .4byte _0800A070 @ case 12
_0800A070:
    movs r2, #6
    b _0800A076
_0800A074:
    movs r2, #3
_0800A076:
    adds r0, r2, #0
    pop {r1}
    bx r1

    thumb_func_start func_0800A07C
func_0800A07C: @ 0x0800A07C
    push {lr}
    ldr r1, [r0]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    blt _0800A09C
    cmp r0, #1
    ble _0800A09C
    cmp r0, #8
    bgt _0800A09C
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x14
    beq _0800A09C
    movs r0, #1
    b _0800A09E
_0800A09C:
    movs r0, #0
_0800A09E:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800A0A4
func_0800A0A4: @ 0x0800A0A4
    push {lr}
    ldr r1, [r0]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    blt _0800A118
    cmp r0, #7
    ble _0800A118
    cmp r0, #8
    bne _0800A118
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    subs r0, #0x1b
    cmp r0, #0xb
    bhi _0800A118
    lsls r0, r0, #2
    ldr r1, _0800A0CC @ =_0800A0D0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800A0CC: .4byte _0800A0D0
_0800A0D0: @ jump table
    .4byte _0800A100 @ case 0
    .4byte _0800A100 @ case 1
    .4byte _0800A100 @ case 2
    .4byte _0800A100 @ case 3
    .4byte _0800A110 @ case 4
    .4byte _0800A110 @ case 5
    .4byte _0800A110 @ case 6
    .4byte _0800A110 @ case 7
    .4byte _0800A106 @ case 8
    .4byte _0800A106 @ case 9
    .4byte _0800A106 @ case 10
    .4byte _0800A106 @ case 11
_0800A100:
    movs r0, #0xf3
    lsls r0, r0, #2
    b _0800A11A
_0800A106:
    ldr r0, _0800A10C @ =0x000003CB
    b _0800A11A
    .align 2, 0
_0800A10C: .4byte 0x000003CB
_0800A110:
    ldr r0, _0800A114 @ =0x000003CA
    b _0800A11A
    .align 2, 0
_0800A114: .4byte 0x000003CA
_0800A118:
    movs r0, #0
_0800A11A:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800A120
func_0800A120: @ 0x0800A120
    movs r2, #3
    ands r1, r2
    ldrb r3, [r0]
    movs r2, #4
    rsbs r2, r2, #0
    ands r2, r3
    orrs r2, r1
    strb r2, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_0800A134
func_0800A134: @ 0x0800A134
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r2, #0
    lsls r1, r1, #2
    ldrb r2, [r5]
    movs r0, #3
    ands r0, r2
    orrs r0, r1
    strb r0, [r5]
    movs r0, #0xf
    adds r1, r4, #0
    ands r1, r0
    ldrb r2, [r5, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r5, #1]
    adds r0, r5, #0
    bl func_0800A014
    movs r1, #7
    ands r0, r1
    lsls r0, r0, #1
    ldrb r2, [r5, #2]
    movs r1, #0xf
    rsbs r1, r1, #0
    ands r1, r2
    orrs r1, r0
    strb r1, [r5, #2]
    cmp r4, #8
    bne _0800A188
    ldr r0, [r5]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #3
    beq _0800A188
    ldrb r1, [r5]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r5]
_0800A188:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0800A190
func_0800A190: @ 0x0800A190
    push {r4, r5, lr}
    adds r3, r0, #0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    adds r5, r1, #0
    movs r4, #0
    ldr r2, [r3]
    lsls r0, r2, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #0
    bne _0800A1F8
    lsls r0, r2, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _0800A1CE
    movs r2, #2
    cmp r1, #0
    beq _0800A1B6
    movs r2, #1
_0800A1B6:
    ldrb r1, [r3]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r2
    strb r0, [r3]
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r3, #1]
    movs r4, #1
_0800A1CE:
    cmp r4, #1
    bne _0800A230
    bl rand
    adds r1, r0, #0
    movs r0, #0xff
    ands r1, r0
    cmp r1, #9
    bhi _0800A1E4
    movs r4, #2
    b _0800A230
_0800A1E4:
    subs r1, #0xa
    cmp r1, #2
    bhi _0800A1EE
    movs r4, #4
    b _0800A230
_0800A1EE:
    subs r1, #3
    cmp r1, #4
    bhi _0800A230
    movs r4, #3
    b _0800A230
_0800A1F8:
    subs r0, #1
    cmp r0, #1
    bhi _0800A230
    lsls r0, r2, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #7
    beq _0800A210
    cmp r0, #7
    bgt _0800A230
    cmp r0, #1
    bne _0800A230
    b _0800A224
_0800A210:
    movs r2, #2
    cmp r5, #0
    beq _0800A218
    movs r2, #1
_0800A218:
    ldrb r1, [r3]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r2
    strb r0, [r3]
_0800A224:
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r3, #1]
    movs r4, #1
_0800A230:
    adds r0, r4, #0
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_0800A238
func_0800A238: @ 0x0800A238
    push {r4, lr}
    adds r3, r0, #0
    adds r2, r1, #0
    ldr r1, [r3]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _0800A260
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1e
    subs r0, #1
    cmp r0, #1
    bhi _0800A25C
    ldrb r1, [r3]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r3]
_0800A25C:
    movs r0, #1
    b _0800A336
_0800A260:
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    subs r0, #0x16
    cmp r0, #0x10
    bhi _0800A2BC
    lsls r0, r0, #2
    ldr r1, _0800A274 @ =_0800A278
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800A274: .4byte _0800A278
_0800A278: @ jump table
    .4byte _0800A2C0 @ case 0
    .4byte _0800A2BC @ case 1
    .4byte _0800A2C6 @ case 2
    .4byte _0800A2CC @ case 3
    .4byte _0800A2D2 @ case 4
    .4byte _0800A2BC @ case 5
    .4byte _0800A2BC @ case 6
    .4byte _0800A2BC @ case 7
    .4byte _0800A2BC @ case 8
    .4byte _0800A2D8 @ case 9
    .4byte _0800A2D8 @ case 10
    .4byte _0800A2D8 @ case 11
    .4byte _0800A2D8 @ case 12
    .4byte _0800A2DE @ case 13
    .4byte _0800A2DE @ case 14
    .4byte _0800A2DE @ case 15
    .4byte _0800A2DE @ case 16
_0800A2BC:
    movs r0, #0
    b _0800A336
_0800A2C0:
    movs r1, #0
    movs r4, #3
    b _0800A2E2
_0800A2C6:
    movs r1, #0
    movs r4, #5
    b _0800A2E2
_0800A2CC:
    movs r1, #0
    movs r4, #6
    b _0800A2E2
_0800A2D2:
    movs r1, #3
    movs r4, #4
    b _0800A2E2
_0800A2D8:
    movs r1, #1
    movs r4, #7
    b _0800A2E2
_0800A2DE:
    movs r1, #2
    movs r4, #8
_0800A2E2:
    subs r2, r2, r1
    cmp r2, #0
    ble _0800A334
    ldr r0, [r3]
    lsls r1, r0, #0xc
    lsrs r0, r1, #0x1d
    cmp r2, r0
    blo _0800A31E
    ldrb r1, [r3, #2]
    movs r0, #0xf
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r3, #2]
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r3, #1]
    ldr r0, [r3]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #3
    beq _0800A31A
    ldrb r1, [r3]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r3]
_0800A31A:
    adds r0, r4, #0
    b _0800A336
_0800A31E:
    lsrs r1, r1, #0x1d
    subs r1, r1, r2
    movs r0, #7
    ands r1, r0
    lsls r1, r1, #1
    ldrb r2, [r3, #2]
    movs r0, #0xf
    rsbs r0, r0, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r3, #2]
_0800A334:
    movs r0, #2
_0800A336:
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_0800A33C
func_0800A33C: @ 0x0800A33C
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    ldr r2, [r3]
    lsls r0, r2, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    beq _0800A360
    lsls r0, r2, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x17
    beq _0800A364
    cmp r0, #0x17
    blt _0800A360
    cmp r0, #0x1e
    bgt _0800A360
    cmp r0, #0x1b
    bge _0800A36A
_0800A360:
    movs r0, #0
    b _0800A3C2
_0800A364:
    movs r1, #0
    movs r5, #1
    b _0800A36E
_0800A36A:
    movs r1, #1
    movs r5, #2
_0800A36E:
    subs r2, r4, r1
    cmp r2, #0
    ble _0800A3C0
    ldr r0, [r3]
    lsls r1, r0, #0xc
    lsrs r0, r1, #0x1d
    cmp r2, r0
    blo _0800A3AA
    ldrb r1, [r3, #2]
    movs r0, #0xf
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r3, #2]
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r3, #1]
    ldr r0, [r3]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #3
    beq _0800A3A6
    ldrb r1, [r3]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r3]
_0800A3A6:
    adds r0, r5, #0
    b _0800A3C2
_0800A3AA:
    lsrs r1, r1, #0x1d
    subs r1, r1, r2
    movs r0, #7
    ands r1, r0
    lsls r1, r1, #1
    ldrb r2, [r3, #2]
    movs r0, #0xf
    rsbs r0, r0, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r3, #2]
_0800A3C0:
    movs r0, #3
_0800A3C2:
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_0800A3C8
func_0800A3C8: @ 0x0800A3C8
    push {lr}
    adds r3, r0, #0
    ldr r2, [r3]
    lsls r0, r2, #0x14
    lsrs r1, r0, #0x1c
    cmp r1, #0
    beq _0800A430
    lsls r0, r2, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x14
    bne _0800A400
    cmp r1, #5
    bne _0800A430
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #7
    orrs r0, r1
    strb r0, [r3, #1]
    ldr r0, [r3]
    ldr r1, _0800A3FC @ =0xFFFE0FFF
    ands r0, r1
    str r0, [r3]
    movs r0, #1
    b _0800A432
    .align 2, 0
_0800A3FC: .4byte 0xFFFE0FFF
_0800A400:
    cmp r0, #0x15
    beq _0800A422
    lsls r0, r2, #0x1e
    lsrs r0, r0, #0x1e
    subs r0, #1
    cmp r0, #1
    bhi _0800A430
    cmp r1, #6
    beq _0800A422
    cmp r1, #2
    beq _0800A422
    cmp r1, #3
    beq _0800A422
    cmp r1, #4
    beq _0800A422
    cmp r1, #5
    bne _0800A430
_0800A422:
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r3, #1]
    movs r0, #2
    b _0800A432
_0800A430:
    movs r0, #0
_0800A432:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800A438
func_0800A438: @ 0x0800A438
    push {lr}
    adds r2, r0, #0
    ldr r0, [r2]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    beq _0800A44A
    movs r0, #0
    b _0800A45A
_0800A44A:
    ldrb r0, [r2]
    movs r1, #4
    rsbs r1, r1, #0
    ands r1, r0
    movs r0, #2
    orrs r1, r0
    strb r1, [r2]
    movs r0, #1
_0800A45A:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800A460
func_0800A460: @ 0x0800A460
    push {lr}
    adds r3, r0, #0
    adds r2, r1, #0
    ldr r1, [r3]
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1e
    subs r0, #1
    cmp r0, #1
    bhi _0800A49C
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _0800A49C
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #1
    orrs r0, r1
    strb r0, [r3, #1]
    lsls r2, r2, #2
    ldrb r1, [r3]
    movs r0, #3
    ands r0, r1
    orrs r0, r2
    strb r0, [r3]
    ldr r0, [r3]
    ldr r1, _0800A4A0 @ =0xFFFE0FFF
    ands r0, r1
    str r0, [r3]
_0800A49C:
    pop {r0}
    bx r0
    .align 2, 0
_0800A4A0: .4byte 0xFFFE0FFF

    thumb_func_start func_0800A4A4
func_0800A4A4: @ 0x0800A4A4
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r3, r1, #0
    ldr r1, [r3]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #5
    beq _0800A4BE
    cmp r0, #8
    bne _0800A4BC
    b _0800A644
_0800A4BC:
    b _0800A678
_0800A4BE:
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    subs r0, #2
    cmp r0, #0x12
    bls _0800A4CA
    b _0800A624
_0800A4CA:
    lsls r0, r0, #2
    ldr r1, _0800A4D4 @ =_0800A4D8
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800A4D4: .4byte _0800A4D8
_0800A4D8: @ jump table
    .4byte _0800A524 @ case 0
    .4byte _0800A544 @ case 1
    .4byte _0800A624 @ case 2
    .4byte _0800A564 @ case 3
    .4byte _0800A584 @ case 4
    .4byte _0800A624 @ case 5
    .4byte _0800A624 @ case 6
    .4byte _0800A5A4 @ case 7
    .4byte _0800A5C4 @ case 8
    .4byte _0800A624 @ case 9
    .4byte _0800A5E4 @ case 10
    .4byte _0800A624 @ case 11
    .4byte _0800A604 @ case 12
    .4byte _0800A624 @ case 13
    .4byte _0800A624 @ case 14
    .4byte _0800A624 @ case 15
    .4byte _0800A624 @ case 16
    .4byte _0800A624 @ case 17
    .4byte _0800A678 @ case 18
_0800A524:
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #2
    orrs r0, r1
    strb r0, [r3, #1]
    ldr r0, [r3]
    ldr r1, _0800A540 @ =0xFFFE0FFF
    ands r0, r1
    movs r1, #0x80
    lsls r1, r1, #7
    orrs r0, r1
    b _0800A634
    .align 2, 0
_0800A540: .4byte 0xFFFE0FFF
_0800A544:
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #3
    orrs r0, r1
    strb r0, [r3, #1]
    ldr r0, [r3]
    ldr r1, _0800A560 @ =0xFFFE0FFF
    ands r0, r1
    movs r1, #0xc0
    lsls r1, r1, #7
    orrs r0, r1
    b _0800A634
    .align 2, 0
_0800A560: .4byte 0xFFFE0FFF
_0800A564:
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #4
    orrs r0, r1
    strb r0, [r3, #1]
    ldr r0, [r3]
    ldr r1, _0800A580 @ =0xFFFE0FFF
    ands r0, r1
    movs r1, #0xc0
    lsls r1, r1, #7
    orrs r0, r1
    b _0800A634
    .align 2, 0
_0800A580: .4byte 0xFFFE0FFF
_0800A584:
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #4
    orrs r0, r1
    strb r0, [r3, #1]
    ldr r0, [r3]
    ldr r1, _0800A5A0 @ =0xFFFE0FFF
    ands r0, r1
    movs r1, #0xb0
    lsls r1, r1, #8
    orrs r0, r1
    b _0800A634
    .align 2, 0
_0800A5A0: .4byte 0xFFFE0FFF
_0800A5A4:
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #4
    orrs r0, r1
    strb r0, [r3, #1]
    ldr r0, [r3]
    ldr r1, _0800A5C0 @ =0xFFFE0FFF
    ands r0, r1
    movs r1, #0xf0
    lsls r1, r1, #8
    orrs r0, r1
    b _0800A634
    .align 2, 0
_0800A5C0: .4byte 0xFFFE0FFF
_0800A5C4:
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #3
    orrs r0, r1
    strb r0, [r3, #1]
    ldr r0, [r3]
    ldr r1, _0800A5E0 @ =0xFFFE0FFF
    ands r0, r1
    movs r1, #0xc0
    lsls r1, r1, #7
    orrs r0, r1
    b _0800A634
    .align 2, 0
_0800A5E0: .4byte 0xFFFE0FFF
_0800A5E4:
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #2
    orrs r0, r1
    strb r0, [r3, #1]
    ldr r0, [r3]
    ldr r1, _0800A600 @ =0xFFFE0FFF
    ands r0, r1
    movs r1, #0xc0
    lsls r1, r1, #6
    orrs r0, r1
    b _0800A634
    .align 2, 0
_0800A600: .4byte 0xFFFE0FFF
_0800A604:
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #4
    orrs r0, r1
    strb r0, [r3, #1]
    ldr r0, [r3]
    ldr r1, _0800A620 @ =0xFFFE0FFF
    ands r0, r1
    movs r1, #0xa0
    lsls r1, r1, #7
    orrs r0, r1
    b _0800A634
    .align 2, 0
_0800A620: .4byte 0xFFFE0FFF
_0800A624:
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r3, #1]
    ldr r0, [r3]
    ldr r1, _0800A63C @ =0xFFFE0FFF
    ands r0, r1
_0800A634:
    str r0, [r3]
    ldr r2, _0800A640 @ =0x080E93F8
    b _0800A662
    .align 2, 0
_0800A63C: .4byte 0xFFFE0FFF
_0800A640: .4byte 0x080E93F8
_0800A644:
    ldr r2, _0800A680 @ =0x080E93F8
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x1a
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r2
    ldrh r0, [r0, #0xa]
    cmp r0, #0xff
    beq _0800A662
    ldrb r1, [r3, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r3, #1]
_0800A662:
    ldr r0, [r3]
    lsls r0, r0, #0x18
    lsrs r3, r0, #0x1a
    lsls r0, r3, #1
    adds r0, r0, r3
    lsls r0, r0, #2
    adds r0, r0, r2
    ldrh r1, [r0, #0xa]
    adds r2, r1, #0
    cmp r1, #0xff
    bne _0800A684
_0800A678:
    adds r0, r5, #0
    bl __12RucksackItem
    b _0800A6BE
    .align 2, 0
_0800A680: .4byte 0x080E93F8
_0800A684:
    cmp r3, #0xe
    bgt _0800A6AC
    mov r0, sp
    bl __4FoodUi
    mov r0, sp
    ldrb r1, [r0]
    adds r0, #1
    ldrb r0, [r0]
    lsls r0, r0, #8
    orrs r0, r1
    mov r1, sp
    adds r1, #2
    ldrb r1, [r1]
    lsls r1, r1, #0x10
    orrs r1, r0
    adds r0, r5, #0
    bl __12RucksackItemG4Food
    b _0800A6BE
_0800A6AC:
    add r4, sp, #4
    adds r0, r4, #0
    adds r1, r2, #0
    bl __7ArticleUi
    ldrb r1, [r4]
    adds r0, r5, #0
    bl __12RucksackItemG7Article
_0800A6BE:
    adds r0, r5, #0
    add sp, #8
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_0800A6C8
func_0800A6C8: @ 0x0800A6C8
    push {lr}
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _0800A6EE
    adds r0, r1, #0
    bl GetId__C7Article
    cmp r0, #0x31
    blt _0800A6EE
    cmp r0, #0x32
    ble _0800A6EA
    cmp r0, #0x5a
    bgt _0800A6EE
    cmp r0, #0x59
    blt _0800A6EE
_0800A6EA:
    movs r0, #1
    b _0800A6F0
_0800A6EE:
    movs r0, #0
_0800A6F0:
    pop {r1}
    bx r1

    thumb_func_start func_0800A6F4
func_0800A6F4: @ 0x0800A6F4
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    bl func_0800A6C8
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0800A786
    adds r0, r5, #0
    bl GetId__C7Article
    cmp r0, #0x32
    beq _0800A740
    cmp r0, #0x32
    bgt _0800A718
    cmp r0, #0x31
    beq _0800A722
    b _0800A786
_0800A718:
    cmp r0, #0x59
    beq _0800A72C
    cmp r0, #0x5a
    beq _0800A736
    b _0800A786
_0800A722:
    ldrb r0, [r4]
    movs r1, #3
    ands r1, r0
    movs r0, #0x58
    b _0800A748
_0800A72C:
    ldrb r0, [r4]
    movs r1, #3
    ands r1, r0
    movs r0, #0x60
    b _0800A748
_0800A736:
    ldrb r0, [r4]
    movs r1, #3
    ands r1, r0
    movs r0, #0x68
    b _0800A748
_0800A740:
    ldrb r0, [r4]
    movs r1, #3
    ands r1, r0
    movs r0, #0x5c
_0800A748:
    orrs r1, r0
    strb r1, [r4]
    ldrb r1, [r4, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #8
    orrs r0, r1
    strb r0, [r4, #1]
    ldr r0, [r4]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #3
    beq _0800A76E
    ldrb r1, [r4]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r4]
_0800A76E:
    adds r0, r4, #0
    bl func_0800A014
    movs r1, #7
    ands r0, r1
    lsls r0, r0, #1
    ldrb r2, [r4, #2]
    movs r1, #0xf
    rsbs r1, r1, #0
    ands r1, r2
    orrs r1, r0
    strb r1, [r4, #2]
_0800A786:
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_0800A78C
func_0800A78C: @ 0x0800A78C
    push {lr}
    ldr r1, [r0]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    beq _0800A7A8
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x26
    bgt _0800A7A8
    cmp r0, #0x1b
    blt _0800A7A8
    movs r0, #1
    b _0800A7AA
_0800A7A8:
    movs r0, #0
_0800A7AA:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800A7B0
func_0800A7B0: @ 0x0800A7B0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0
    mov r8, r1
    adds r7, r2, #0
    ldr r1, [r5]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #1
    bne _0800A856
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x13
    bhi _0800A856
    lsls r0, r0, #2
    ldr r1, _0800A7D8 @ =_0800A7DC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800A7D8: .4byte _0800A7DC
_0800A7DC: @ jump table
    .4byte _0800A82C @ case 0
    .4byte _0800A82C @ case 1
    .4byte _0800A82C @ case 2
    .4byte _0800A82C @ case 3
    .4byte _0800A82C @ case 4
    .4byte _0800A836 @ case 5
    .4byte _0800A836 @ case 6
    .4byte _0800A836 @ case 7
    .4byte _0800A836 @ case 8
    .4byte _0800A836 @ case 9
    .4byte _0800A842 @ case 10
    .4byte _0800A842 @ case 11
    .4byte _0800A842 @ case 12
    .4byte _0800A842 @ case 13
    .4byte _0800A842 @ case 14
    .4byte _0800A82C @ case 15
    .4byte _0800A836 @ case 16
    .4byte _0800A842 @ case 17
    .4byte _0800A842 @ case 18
    .4byte _0800A82C @ case 19
_0800A82C:
    ldrb r0, [r7]
    lsls r0, r0, #0x1e
    cmp r0, #0
    beq _0800A856
    b _0800A84C
_0800A836:
    ldrb r0, [r7]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    beq _0800A856
    b _0800A84C
_0800A842:
    ldrb r0, [r7]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #2
    beq _0800A856
_0800A84C:
    ldrb r1, [r5, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r5, #1]
_0800A856:
    ldr r1, [r5]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _0800A862
    b _0800A9B2
_0800A862:
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x26
    bls _0800A86C
    b _0800A9B2
_0800A86C:
    lsls r0, r0, #2
    ldr r1, _0800A878 @ =_0800A87C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800A878: .4byte _0800A87C
_0800A87C: @ jump table
    .4byte _0800A918 @ case 0
    .4byte _0800A918 @ case 1
    .4byte _0800A918 @ case 2
    .4byte _0800A918 @ case 3
    .4byte _0800A918 @ case 4
    .4byte _0800A918 @ case 5
    .4byte _0800A918 @ case 6
    .4byte _0800A918 @ case 7
    .4byte _0800A918 @ case 8
    .4byte _0800A918 @ case 9
    .4byte _0800A918 @ case 10
    .4byte _0800A918 @ case 11
    .4byte _0800A918 @ case 12
    .4byte _0800A918 @ case 13
    .4byte _0800A918 @ case 14
    .4byte _0800A918 @ case 15
    .4byte _0800A918 @ case 16
    .4byte _0800A918 @ case 17
    .4byte _0800A918 @ case 18
    .4byte _0800A918 @ case 19
    .4byte _0800A94C @ case 20
    .4byte _0800A9B2 @ case 21
    .4byte _0800A9B2 @ case 22
    .4byte _0800A9B2 @ case 23
    .4byte _0800A9B2 @ case 24
    .4byte _0800A9B2 @ case 25
    .4byte _0800A9B2 @ case 26
    .4byte _0800A9B2 @ case 27
    .4byte _0800A9B2 @ case 28
    .4byte _0800A9B2 @ case 29
    .4byte _0800A9B2 @ case 30
    .4byte _0800A9B2 @ case 31
    .4byte _0800A9B2 @ case 32
    .4byte _0800A9B2 @ case 33
    .4byte _0800A9B2 @ case 34
    .4byte _0800A9B2 @ case 35
    .4byte _0800A9B2 @ case 36
    .4byte _0800A9B2 @ case 37
    .4byte _0800A9B2 @ case 38
_0800A918:
    ldr r2, [r5]
    lsls r0, r2, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #1
    blt _0800A9B2
    cmp r0, #4
    bgt _0800A9B2
    lsls r0, r2, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #2
    bne _0800A9CA
    lsls r0, r2, #0xf
    lsrs r0, r0, #0x1b
    adds r0, #1
    movs r1, #0x1f
    ands r0, r1
    lsls r0, r0, #0xc
    ldr r1, _0800A948 @ =0xFFFE0FFF
    ands r1, r2
    orrs r1, r0
    str r1, [r5]
    lsls r3, r1, #0x14
    lsrs r3, r3, #0x1c
    b _0800A97E
    .align 2, 0
_0800A948: .4byte 0xFFFE0FFF
_0800A94C:
    ldrb r0, [r7]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #3
    beq _0800A9B2
    ldr r2, [r5]
    lsls r0, r2, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #5
    beq _0800A9B2
    lsls r0, r2, #0xf
    lsrs r0, r0, #0x1b
    adds r0, #1
    movs r1, #0x1f
    ands r0, r1
    lsls r0, r0, #0xc
    ldr r1, _0800A9F0 @ =0xFFFE0FFF
    ands r1, r2
    orrs r1, r0
    str r1, [r5]
    lsls r0, r1, #0x14
    lsrs r3, r0, #0x1c
    cmp r3, #7
    bne _0800A97E
    movs r3, #1
_0800A97E:
    ldr r6, _0800A9F4 @ =0x080E8D14
    lsls r4, r1, #0xf
    lsrs r0, r4, #0x1b
    lsls r0, r0, #2
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x1a
    movs r2, #0x54
    muls r1, r2, r1
    adds r0, r0, r1
    adds r0, r0, r6
    ldr r0, [r0]
    cmp r3, r0
    beq _0800A9B2
    lsrs r0, r4, #0x1b
    lsls r0, r0, #2
    adds r0, r0, r1
    adds r0, r0, r6
    ldr r1, [r0]
    movs r0, #0xf
    ands r1, r0
    ldrb r2, [r5, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r5, #1]
_0800A9B2:
    ldr r0, [r5]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #2
    bne _0800A9CA
    ldrb r0, [r5]
    movs r1, #4
    rsbs r1, r1, #0
    ands r1, r0
    movs r0, #1
    orrs r1, r0
    strb r1, [r5]
_0800A9CA:
    mov r0, r8
    cmp r0, #3
    beq _0800A9FC
    cmp r0, #3
    ble _0800A9D8
    cmp r0, #4
    beq _0800AA04
_0800A9D8:
    ldrb r0, [r7]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1a
    ldr r1, _0800A9F8 @ =0x080E8CC4
    adds r0, r0, r1
    mov r1, r8
    cmp r1, #0
    bne _0800A9EA
    adds r0, #8
_0800A9EA:
    adds r4, r0, #0
    b _0800AA06
    .align 2, 0
_0800A9F0: .4byte 0xFFFE0FFF
_0800A9F4: .4byte 0x080E8D14
_0800A9F8: .4byte 0x080E8CC4
_0800A9FC:
    ldr r4, _0800AA00 @ =0x080E8D04
    b _0800AA06
    .align 2, 0
_0800AA00: .4byte 0x080E8D04
_0800AA04:
    ldr r4, _0800AA30 @ =0x080E8D0C
_0800AA06:
    ldr r1, [r5]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    beq _0800AA52
    cmp r0, #1
    bne _0800AA34
    bl rand
    asrs r0, r0, #3
    movs r1, #0xff
    ands r0, r1
    ldrb r4, [r4, #7]
    cmp r0, r4
    bhs _0800AAD2
    ldrb r1, [r5, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r5, #1]
    b _0800AAD2
    .align 2, 0
_0800AA30: .4byte 0x080E8D0C
_0800AA34:
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x18
    bne _0800AAD2
    bl rand
    asrs r0, r0, #3
    movs r1, #0xff
    ands r0, r1
    ldrb r4, [r4]
    cmp r0, r4
    bhs _0800AAD2
    adds r0, r5, #0
    movs r1, #0x19
    b _0800AAB6
_0800AA52:
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #0
    beq _0800AA5E
    cmp r0, #3
    bne _0800AA8C
_0800AA5E:
    bl rand
    asrs r1, r0, #3
    movs r0, #0xff
    ands r1, r0
    ldrb r2, [r4, #4]
    cmp r1, r2
    blt _0800AAB2
    ldrb r3, [r4, #5]
    adds r0, r3, r2
    cmp r1, r0
    bge _0800AA7C
    adds r0, r5, #0
    movs r1, #0x16
    b _0800AAB6
_0800AA7C:
    ldrb r0, [r4, #6]
    adds r0, r0, r3
    adds r0, r0, r2
    cmp r1, r0
    bge _0800AAD2
    adds r0, r5, #0
    movs r1, #0x17
    b _0800AAB6
_0800AA8C:
    cmp r0, #1
    bne _0800AAD2
    bl rand
    asrs r1, r0, #3
    movs r0, #0xff
    ands r1, r0
    ldrb r2, [r4, #1]
    cmp r1, r2
    bge _0800AAAA
    adds r0, r5, #0
    movs r1, #0
    bl func_0800A120
    b _0800AAD2
_0800AAAA:
    ldrb r3, [r4, #2]
    adds r0, r3, r2
    cmp r1, r0
    bge _0800AABE
_0800AAB2:
    adds r0, r5, #0
    movs r1, #0x15
_0800AAB6:
    movs r2, #8
    bl func_0800A134
    b _0800AAD2
_0800AABE:
    ldrb r0, [r4, #3]
    adds r0, r0, r3
    adds r0, r0, r2
    cmp r1, r0
    bge _0800AAD2
    adds r0, r5, #0
    movs r1, #0x16
    movs r2, #8
    bl func_0800A134
_0800AAD2:
    mov r0, r8
    cmp r0, #0
    bne _0800AAEC
    ldr r0, [r5]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #2
    bne _0800AAFE
    adds r0, r5, #0
    movs r1, #1
    bl func_0800A120
    b _0800AAFE
_0800AAEC:
    ldr r0, [r5]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne _0800AAFE
    adds r0, r5, #0
    movs r1, #2
    bl func_0800A120
_0800AAFE:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0800AB08
func_0800AB08: @ 0x0800AB08
    push {r4, lr}
    adds r4, r0, #0
    cmp r1, #1
    bne _0800AB12
    b _0800AC54
_0800AB12:
    cmp r1, #1
    bgt _0800AB1C
    cmp r1, #0
    beq _0800AB2A
    b _0800AF1A
_0800AB1C:
    cmp r1, #2
    bne _0800AB22
    b _0800AD22
_0800AB22:
    cmp r1, #3
    bne _0800AB28
    b _0800AE30
_0800AB28:
    b _0800AF1A
_0800AB2A:
    adds r0, r4, #0
    movs r1, #0
    bl func_0800A120
    ldr r1, [r4]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    beq _0800AC26
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x26
    bhi _0800AC26
    lsls r0, r0, #2
    ldr r1, _0800AB50 @ =_0800AB54
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800AB50: .4byte _0800AB54
_0800AB54: @ jump table
    .4byte _0800AC1C @ case 0
    .4byte _0800AC1C @ case 1
    .4byte _0800AC1C @ case 2
    .4byte _0800AC1C @ case 3
    .4byte _0800AC1C @ case 4
    .4byte _0800AC1C @ case 5
    .4byte _0800AC1C @ case 6
    .4byte _0800AC1C @ case 7
    .4byte _0800AC1C @ case 8
    .4byte _0800AC1C @ case 9
    .4byte _0800AC1C @ case 10
    .4byte _0800AC1C @ case 11
    .4byte _0800AC1C @ case 12
    .4byte _0800AC1C @ case 13
    .4byte _0800AC1C @ case 14
    .4byte _0800AC1C @ case 15
    .4byte _0800AC1C @ case 16
    .4byte _0800AC1C @ case 17
    .4byte _0800AC1C @ case 18
    .4byte _0800AC1C @ case 19
    .4byte _0800ABF0 @ case 20
    .4byte _0800AC1C @ case 21
    .4byte _0800AC26 @ case 22
    .4byte _0800AC26 @ case 23
    .4byte _0800AC26 @ case 24
    .4byte _0800AC26 @ case 25
    .4byte _0800AC26 @ case 26
    .4byte _0800AC26 @ case 27
    .4byte _0800AC26 @ case 28
    .4byte _0800AC26 @ case 29
    .4byte _0800AC26 @ case 30
    .4byte _0800AC26 @ case 31
    .4byte _0800AC26 @ case 32
    .4byte _0800AC26 @ case 33
    .4byte _0800AC26 @ case 34
    .4byte _0800AC26 @ case 35
    .4byte _0800AC26 @ case 36
    .4byte _0800AC26 @ case 37
    .4byte _0800AC26 @ case 38
_0800ABF0:
    ldrb r1, [r4, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #7
    orrs r0, r1
    strb r0, [r4, #1]
    ldrb r1, [r4]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #1
    orrs r0, r1
    strb r0, [r4]
    ldr r0, [r4]
    ldr r1, _0800AC18 @ =0xFFFE0FFF
    ands r0, r1
    str r0, [r4]
    b _0800AC26
    .align 2, 0
_0800AC18: .4byte 0xFFFE0FFF
_0800AC1C:
    ldrb r1, [r4, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r4, #1]
_0800AC26:
    ldrh r1, [r4]
    ldr r0, _0800AC50 @ =0x00000F03
    ands r0, r1
    cmp r0, #0
    beq _0800AC32
    b _0800AF1A
_0800AC32:
    bl rand
    asrs r0, r0, #3
    movs r1, #0xff
    ands r0, r1
    cmp r0, #9
    bls _0800AC42
    b _0800AF1A
_0800AC42:
    adds r0, r4, #0
    movs r1, #0x15
    movs r2, #8
    bl func_0800A134
    b _0800AF1A
    .align 2, 0
_0800AC50: .4byte 0x00000F03
_0800AC54:
    ldr r1, [r4]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    adds r2, r1, #0
    cmp r0, #0
    bne _0800AC62
    b _0800AF1A
_0800AC62:
    lsls r0, r2, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x26
    bls _0800AC6C
    b _0800AF1A
_0800AC6C:
    lsls r0, r0, #2
    ldr r1, _0800AC78 @ =_0800AC7C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800AC78: .4byte _0800AC7C
_0800AC7C: @ jump table
    .4byte _0800AD18 @ case 0
    .4byte _0800AD18 @ case 1
    .4byte _0800AD18 @ case 2
    .4byte _0800AD18 @ case 3
    .4byte _0800AD18 @ case 4
    .4byte _0800AE16 @ case 5
    .4byte _0800AE16 @ case 6
    .4byte _0800AE16 @ case 7
    .4byte _0800AE16 @ case 8
    .4byte _0800AE16 @ case 9
    .4byte _0800AE16 @ case 10
    .4byte _0800AE16 @ case 11
    .4byte _0800AE16 @ case 12
    .4byte _0800AE16 @ case 13
    .4byte _0800AE16 @ case 14
    .4byte _0800AD18 @ case 15
    .4byte _0800AE16 @ case 16
    .4byte _0800AE16 @ case 17
    .4byte _0800AE16 @ case 18
    .4byte _0800AD18 @ case 19
    .4byte _0800AF1A @ case 20
    .4byte _0800AF1A @ case 21
    .4byte _0800AF1A @ case 22
    .4byte _0800AF1A @ case 23
    .4byte _0800AF1A @ case 24
    .4byte _0800AF1A @ case 25
    .4byte _0800AF1A @ case 26
    .4byte _0800AF1A @ case 27
    .4byte _0800AF1A @ case 28
    .4byte _0800AF1A @ case 29
    .4byte _0800AF1A @ case 30
    .4byte _0800AF1A @ case 31
    .4byte _0800AF1A @ case 32
    .4byte _0800AF1A @ case 33
    .4byte _0800AF1A @ case 34
    .4byte _0800AF1A @ case 35
    .4byte _0800AF1A @ case 36
    .4byte _0800AF1A @ case 37
    .4byte _0800AF1A @ case 38
_0800AD18:
    lsls r0, r2, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #1
    beq _0800ADEC
    b _0800ADF8
_0800AD22:
    ldr r1, [r4]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    adds r2, r1, #0
    cmp r0, #0
    bne _0800AD30
    b _0800AF1A
_0800AD30:
    lsls r0, r2, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x26
    bls _0800AD3A
    b _0800AF1A
_0800AD3A:
    lsls r0, r0, #2
    ldr r1, _0800AD44 @ =_0800AD48
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800AD44: .4byte _0800AD48
_0800AD48: @ jump table
    .4byte _0800AE16 @ case 0
    .4byte _0800AE16 @ case 1
    .4byte _0800AE16 @ case 2
    .4byte _0800AE16 @ case 3
    .4byte _0800AE16 @ case 4
    .4byte _0800ADE4 @ case 5
    .4byte _0800ADE4 @ case 6
    .4byte _0800ADE4 @ case 7
    .4byte _0800ADE4 @ case 8
    .4byte _0800ADE4 @ case 9
    .4byte _0800AE16 @ case 10
    .4byte _0800AE16 @ case 11
    .4byte _0800AE16 @ case 12
    .4byte _0800AE16 @ case 13
    .4byte _0800AE16 @ case 14
    .4byte _0800AE16 @ case 15
    .4byte _0800ADE4 @ case 16
    .4byte _0800AE16 @ case 17
    .4byte _0800AE16 @ case 18
    .4byte _0800AE16 @ case 19
    .4byte _0800AF1A @ case 20
    .4byte _0800AF1A @ case 21
    .4byte _0800AF1A @ case 22
    .4byte _0800AF1A @ case 23
    .4byte _0800AF1A @ case 24
    .4byte _0800AF1A @ case 25
    .4byte _0800AF1A @ case 26
    .4byte _0800AF1A @ case 27
    .4byte _0800AF1A @ case 28
    .4byte _0800AF1A @ case 29
    .4byte _0800AF1A @ case 30
    .4byte _0800AF1A @ case 31
    .4byte _0800AF1A @ case 32
    .4byte _0800AF1A @ case 33
    .4byte _0800AF1A @ case 34
    .4byte _0800AF1A @ case 35
    .4byte _0800AF1A @ case 36
    .4byte _0800AF1A @ case 37
    .4byte _0800AF1A @ case 38
_0800ADE4:
    lsls r0, r2, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #1
    bne _0800ADF8
_0800ADEC:
    ldrb r1, [r4, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r4, #1]
    b _0800AE06
_0800ADF8:
    ldrb r0, [r4, #1]
    movs r1, #0x10
    rsbs r1, r1, #0
    ands r1, r0
    movs r0, #6
    orrs r1, r0
    strb r1, [r4, #1]
_0800AE06:
    ldrb r0, [r4]
    movs r1, #4
    rsbs r1, r1, #0
    ands r1, r0
    movs r0, #1
    orrs r1, r0
    strb r1, [r4]
    b _0800AF1A
_0800AE16:
    ldrb r1, [r4, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r4, #1]
    ldrb r1, [r4]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #1
    orrs r0, r1
    strb r0, [r4]
    b _0800AF1A
_0800AE30:
    ldrb r0, [r4]
    movs r1, #3
    orrs r0, r1
    strb r0, [r4]
    ldr r1, [r4]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    beq _0800AF1A
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x26
    bhi _0800AF1A
    lsls r0, r0, #2
    ldr r1, _0800AE54 @ =_0800AE58
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800AE54: .4byte _0800AE58
_0800AE58: @ jump table
    .4byte _0800AF10 @ case 0
    .4byte _0800AF10 @ case 1
    .4byte _0800AF10 @ case 2
    .4byte _0800AF10 @ case 3
    .4byte _0800AF10 @ case 4
    .4byte _0800AF10 @ case 5
    .4byte _0800AF10 @ case 6
    .4byte _0800AF10 @ case 7
    .4byte _0800AF10 @ case 8
    .4byte _0800AF10 @ case 9
    .4byte _0800AF10 @ case 10
    .4byte _0800AF10 @ case 11
    .4byte _0800AF10 @ case 12
    .4byte _0800AF10 @ case 13
    .4byte _0800AF10 @ case 14
    .4byte _0800AF10 @ case 15
    .4byte _0800AF10 @ case 16
    .4byte _0800AF10 @ case 17
    .4byte _0800AF10 @ case 18
    .4byte _0800AF10 @ case 19
    .4byte _0800AEF4 @ case 20
    .4byte _0800AF10 @ case 21
    .4byte _0800AF1A @ case 22
    .4byte _0800AF1A @ case 23
    .4byte _0800AF1A @ case 24
    .4byte _0800AF1A @ case 25
    .4byte _0800AF1A @ case 26
    .4byte _0800AF1A @ case 27
    .4byte _0800AF1A @ case 28
    .4byte _0800AF1A @ case 29
    .4byte _0800AF1A @ case 30
    .4byte _0800AF1A @ case 31
    .4byte _0800AF1A @ case 32
    .4byte _0800AF1A @ case 33
    .4byte _0800AF1A @ case 34
    .4byte _0800AF1A @ case 35
    .4byte _0800AF1A @ case 36
    .4byte _0800AF1A @ case 37
    .4byte _0800AF1A @ case 38
_0800AEF4:
    ldrb r1, [r4, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #7
    orrs r0, r1
    strb r0, [r4, #1]
    ldr r0, [r4]
    ldr r1, _0800AF0C @ =0xFFFE0FFF
    ands r0, r1
    str r0, [r4]
    b _0800AF1A
    .align 2, 0
_0800AF0C: .4byte 0xFFFE0FFF
_0800AF10:
    ldrb r1, [r4, #1]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r4, #1]
_0800AF1A:
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_0800AF20
func_0800AF20: @ 0x0800AF20
    push {lr}
    ldr r0, [r0]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    beq _0800AF44
    cmp r0, #1
    bgt _0800AF36
    cmp r0, #0
    beq _0800AF3C
    b _0800AF54
_0800AF36:
    cmp r0, #2
    beq _0800AF4C
    b _0800AF54
_0800AF3C:
    ldr r0, _0800AF40 @ =0x086D6518
    b _0800AF56
    .align 2, 0
_0800AF40: .4byte 0x086D6518
_0800AF44:
    ldr r0, _0800AF48 @ =0x086D6520
    b _0800AF56
    .align 2, 0
_0800AF48: .4byte 0x086D6520
_0800AF4C:
    ldr r0, _0800AF50 @ =0x086D6528
    b _0800AF56
    .align 2, 0
_0800AF50: .4byte 0x086D6528
_0800AF54:
    movs r0, #0
_0800AF56:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800AF5C
func_0800AF5C: @ 0x0800AF5C
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r7, r1, #0
    adds r6, r2, #0
    ldr r2, _0800AF88 @ =0x080E93F8
    ldr r1, [r5]
    lsls r0, r1, #0x18
    lsrs r3, r0, #0x1a
    lsls r0, r3, #1
    adds r0, r0, r3
    lsls r0, r0, #2
    adds r0, r0, r2
    ldr r0, [r0]
    mov ip, r0
    movs r4, #0xff
    lsls r1, r1, #0x14
    lsrs r0, r1, #0x1c
    cmp r0, #0
    bne _0800AF90
    ldr r0, _0800AF8C @ =0x086D6458
    b _0800B0D4
    .align 2, 0
_0800AF88: .4byte 0x080E93F8
_0800AF8C: .4byte 0x086D6458
_0800AF90:
    cmp r0, #1
    bne _0800AF9C
    ldr r0, _0800AF98 @ =0x086D6608
    b _0800B0D4
    .align 2, 0
_0800AF98: .4byte 0x086D6608
_0800AF9C:
    cmp r3, #0x14
    beq _0800B03E
    subs r0, #2
    cmp r0, #6
    bls _0800AFA8
    b _0800B0CC
_0800AFA8:
    lsls r0, r0, #2
    ldr r1, _0800AFB4 @ =_0800AFB8
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800AFB4: .4byte _0800AFB8
_0800AFB8: @ jump table
    .4byte _0800AFD4 @ case 0
    .4byte _0800AFE6 @ case 1
    .4byte _0800AFF8 @ case 2
    .4byte _0800B00A @ case 3
    .4byte _0800B01C @ case 4
    .4byte _0800B0CC @ case 5
    .4byte _0800B02E @ case 6
_0800AFD4:
    ldr r1, [r5]
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x1a
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r2
    ldrb r4, [r0, #4]
    b _0800B0CC
_0800AFE6:
    ldr r1, [r5]
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x1a
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r2
    ldrb r4, [r0, #5]
    b _0800B0CC
_0800AFF8:
    ldr r1, [r5]
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x1a
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r2
    ldrb r4, [r0, #6]
    b _0800B0CC
_0800B00A:
    ldr r1, [r5]
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x1a
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r2
    ldrb r4, [r0, #7]
    b _0800B0CC
_0800B01C:
    ldr r1, [r5]
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x1a
    lsls r0, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r0, r0, r2
    ldrb r4, [r0, #8]
    b _0800B0CC
_0800B02E:
    ldr r0, [r5]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    movs r4, #1
    cmp r0, #3
    beq _0800B0CC
    movs r4, #0
    b _0800B0CC
_0800B03E:
    cmp r0, #7
    bne _0800B046
    movs r4, #0xc
    b _0800B0CC
_0800B046:
    cmp r0, #4
    beq _0800B05E
    cmp r0, #4
    bgt _0800B054
    cmp r0, #3
    beq _0800B05A
    b _0800B064
_0800B054:
    cmp r0, #5
    beq _0800B062
    b _0800B064
_0800B05A:
    movs r4, #0
    b _0800B064
_0800B05E:
    movs r4, #4
    b _0800B064
_0800B062:
    movs r4, #8
_0800B064:
    cmp r7, #0
    beq _0800B084
    ldr r1, [r7]
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x14
    bne _0800B084
    lsls r0, r1, #0x14
    lsrs r1, r0, #0x1c
    cmp r1, #7
    beq _0800B084
    ldr r0, [r5]
    lsls r0, r0, #0x14
    lsrs r3, r0, #0x1c
    cmp r1, r3
    bge _0800B0A8
_0800B084:
    cmp r6, #0
    beq _0800B0CC
    ldr r2, [r6]
    lsls r0, r2, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x14
    bne _0800B0CC
    lsls r0, r2, #0x14
    lsrs r2, r0, #0x1c
    cmp r2, #7
    beq _0800B0CC
    ldr r0, [r5]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r2, r0
    blt _0800B0CC
    adds r0, r4, #1
    b _0800B0C8
_0800B0A8:
    cmp r6, #0
    beq _0800B0C2
    ldr r2, [r6]
    lsls r0, r2, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x14
    bne _0800B0C2
    lsls r0, r2, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #7
    beq _0800B0C2
    cmp r0, r3
    bge _0800B0C6
_0800B0C2:
    adds r0, r4, #2
    b _0800B0C8
_0800B0C6:
    adds r0, r4, #3
_0800B0C8:
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
_0800B0CC:
    lsls r0, r4, #1
    adds r0, r0, r4
    lsls r0, r0, #2
    add r0, ip
_0800B0D4:
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
