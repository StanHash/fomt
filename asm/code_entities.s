    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08020018
func_08020018: @ 0x08020018
    push {lr}
    adds r1, r0, #0
    muls r1, r0, r1
    lsls r0, r1, #3
    subs r0, r0, r1
    lsls r0, r0, #2
    subs r0, r0, r1
    lsls r0, r0, #4
    ldr r1, _08020034 @ =0x0000F424
    bl __udivsi3
    adds r0, #0x30
    pop {r1}
    bx r1
    .align 2, 0
_08020034: .4byte 0x0000F424

    thumb_func_start func_08020038
func_08020038: @ 0x08020038
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    str r3, [sp]
    movs r3, #2
    bl func_080320DC
    ldr r0, _0802005C @ =vtable_unk_080E6554
    str r0, [r4, #0x14]
    adds r1, r4, #0
    adds r1, #0x30
    movs r0, #0
    strb r0, [r1]
    adds r0, r4, #0
    add sp, #4
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_0802005C: .4byte vtable_unk_080E6554

    thumb_func_start func_08020060
func_08020060: @ 0x08020060
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x14]
    bl _call_via_r1
    movs r1, #0
    ldrh r4, [r4, #4]
    cmp r0, r4
    bne _08020078
    movs r1, #1
_08020078:
    adds r0, r1, #0
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08020080
func_08020080: @ 0x08020080
    push {r4, r5, lr}
    adds r3, r0, #0
    movs r4, #0
    movs r5, #0
    cmp r1, #0
    beq _080200B8
    adds r0, #0x20
    ldrb r0, [r0]
    adds r2, r0, #0
    cmp r0, #1
    beq _080200AE
    cmp r0, #1
    bgt _080200A0
    cmp r0, #0
    beq _080200AA
    b _080200B8
_080200A0:
    cmp r2, #2
    beq _080200B2
    cmp r2, #3
    beq _080200B6
    b _080200B8
_080200AA:
    adds r5, r1, #0
    b _080200B8
_080200AE:
    rsbs r5, r1, #0
    b _080200B8
_080200B2:
    rsbs r4, r1, #0
    b _080200B8
_080200B6:
    adds r4, r1, #0
_080200B8:
    str r4, [r3, #0x18]
    str r5, [r3, #0x1c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080200C4
func_080200C4: @ 0x080200C4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    mov r8, r1
    adds r6, r4, #0
    adds r6, #0x30
    ldrb r0, [r6]
    cmp r0, #0
    bne _08020126
    adds r0, r4, #0
    bl func_08020060
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08020126
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    adds r7, r6, #0
    mov r0, r8
    lsls r6, r0, #0x10
    cmp r4, r5
    beq _08020118
_08020102:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08020112
    ldr r0, [r4]
    b _0802011C
_08020112:
    adds r4, #4
    cmp r4, r5
    bne _08020102
_08020118:
    subs r0, r5, #4
    ldr r0, [r0]
_0802011C:
    lsrs r1, r6, #0x10
    bl func_08008B6C
    movs r0, #1
    strb r0, [r7]
_08020126:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08020130
func_08020130: @ 0x08020130
    push {r4, lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    beq _08020166
    movs r4, #0
    adds r2, r0, #0
    adds r2, #0x30
    movs r1, #0
    ldrh r0, [r2, #0xe]
    cmp r0, #0
    beq _08020150
    movs r0, #0x10
    ldrsh r1, [r2, r0]
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r1, r0, #0x1f
_08020150:
    cmp r1, #0
    beq _08020160
    adds r0, r2, #0
    bl func_0805E894
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08020162
_08020160:
    movs r4, #1
_08020162:
    adds r0, r4, #0
    b _08020168
_08020166:
    movs r0, #1
_08020168:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08020170
func_08020170: @ 0x08020170
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r7, r0, #0
    ldr r2, [r7, #8]
    ldr r3, [r7, #0xc]
    ldr r0, [r7, #0x18]
    adds r0, r0, r2
    mov sl, r0
    ldr r0, [r7, #0x1c]
    adds r0, r0, r3
    mov sb, r0
    cmp r1, #0
    beq _08020286
    adds r4, r1, #0
    asrs r2, r2, #0x10
    str r2, [sp]
    asrs r6, r3, #0x10
    asrs r0, r0, #0x10
    subs r5, r0, r6
    mov r1, sl
    asrs r0, r1, #0x10
    subs r2, r0, r2
    mov r8, r2
    cmp r5, #0
    ble _080201DC
    ldr r1, [r4]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble _080201BC
    adds r0, r4, #0
    bl func_080AB85C
    ldr r0, [r4]
    b _080201BE
_080201BC:
    adds r0, r1, #0
_080201BE:
    cmp r5, r0
    ble _080201DC
    ldr r1, [r4]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble _080201D4
    adds r0, r4, #0
    bl func_080AB85C
    ldr r0, [r4]
    b _080201D6
_080201D4:
    adds r0, r1, #0
_080201D6:
    adds r0, r6, r0
    lsls r0, r0, #0x10
    mov sb, r0
_080201DC:
    cmp r5, #0
    bge _08020212
    ldr r1, [r4, #4]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge _080201F2
    adds r0, r4, #0
    bl func_080AB8D0
    ldr r0, [r4, #4]
    b _080201F4
_080201F2:
    adds r0, r1, #0
_080201F4:
    cmp r5, r0
    bge _08020212
    ldr r1, [r4, #4]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge _0802020A
    adds r0, r4, #0
    bl func_080AB8D0
    ldr r0, [r4, #4]
    b _0802020C
_0802020A:
    adds r0, r1, #0
_0802020C:
    adds r0, r6, r0
    lsls r0, r0, #0x10
    mov sb, r0
_08020212:
    mov r0, r8
    cmp r0, #0
    bge _0802024C
    ldr r1, [r4, #8]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge _0802022A
    adds r0, r4, #0
    bl func_080AB948
    ldr r0, [r4, #8]
    b _0802022C
_0802022A:
    adds r0, r1, #0
_0802022C:
    cmp r8, r0
    bge _0802024C
    ldr r1, [r4, #8]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge _08020242
    adds r0, r4, #0
    bl func_080AB948
    ldr r0, [r4, #8]
    b _08020244
_08020242:
    adds r0, r1, #0
_08020244:
    ldr r1, [sp]
    adds r0, r1, r0
    lsls r0, r0, #0x10
    mov sl, r0
_0802024C:
    mov r0, r8
    cmp r0, #0
    ble _08020286
    ldr r1, [r4, #0xc]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble _08020264
    adds r0, r4, #0
    bl func_080AB9C4
    ldr r0, [r4, #0xc]
    b _08020266
_08020264:
    adds r0, r1, #0
_08020266:
    cmp r8, r0
    ble _08020286
    ldr r1, [r4, #0xc]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble _0802027C
    adds r0, r4, #0
    bl func_080AB9C4
    ldr r0, [r4, #0xc]
    b _0802027E
_0802027C:
    adds r0, r1, #0
_0802027E:
    ldr r1, [sp]
    adds r0, r1, r0
    lsls r0, r0, #0x10
    mov sl, r0
_08020286:
    mov r0, sl
    str r0, [r7, #8]
    mov r1, sb
    str r1, [r7, #0xc]
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080202A0
func_080202A0: @ 0x080202A0
    push {r4, lr}
    movs r3, #0xa
    ldrsh r2, [r1, r3]
    movs r4, #0xe
    ldrsh r3, [r1, r4]
    subs r1, r2, #7
    strh r1, [r0]
    adds r1, r3, #0
    subs r1, #9
    strh r1, [r0, #2]
    adds r2, #7
    strh r2, [r0, #4]
    adds r3, #5
    strh r3, [r0, #6]
    pop {r4}
    pop {r2}
    bx r2
    .align 2, 0

    thumb_func_start func_080202C4
func_080202C4: @ 0x080202C4
    bx lr
    .align 2, 0

    thumb_func_start func_080202C8
func_080202C8: @ 0x080202C8
    bx lr
    .align 2, 0
_080202CC:
    .byte 0x00, 0x20, 0x70, 0x47
    .byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
    .byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00
    .byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x05, 0x20, 0x70, 0x47
    .byte 0x05, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

    thumb_func_start func_08020310
func_08020310: @ 0x08020310
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    adds r6, r0, #0
    adds r7, r1, #0
    adds r4, r2, #0
    adds r5, r3, #0
    add r0, sp, #4
    adds r1, r4, #0
    bl __5ActorRC5Actor
    movs r3, #0xd0
    lsls r3, r3, #2
    adds r0, r6, #0
    adds r1, r7, #0
    add r2, sp, #4
    bl func_08020038
    ldr r0, _08020378 @ =vtable_unk_080E64C8
    str r0, [r6, #0x14]
    str r4, [r6, #0x34]
    str r5, [r6, #0x38]
    adds r1, r6, #0
    adds r1, #0x40
    movs r0, #0
    strb r0, [r1]
    ldr r0, [r4, #0x20]
    cmp r0, #5
    bne _08020384
    ldr r0, [r7]
    ldr r2, [r0, #0x40]
    adds r0, r7, #0
    movs r1, #0x4b
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _08020384
    ldrh r0, [r4, #4]
    ldrh r1, [r6, #4]
    cmp r0, r1
    bne _0802037C
    ldr r1, [r6, #8]
    ldr r2, [r6, #0xc]
    ldrh r3, [r6, #0x22]
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    str r0, [sp]
    adds r0, r4, #0
    bl func_08038374
    b _08020384
    .align 2, 0
_08020378: .4byte vtable_unk_080E64C8
_0802037C:
    adds r0, r6, #0
    movs r1, #0
    bl func_08020410
_08020384:
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_080211E4
    adds r0, r6, #0
    add sp, #0xc
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_080203A4:
    .byte 0x70, 0xB5, 0x82, 0xB0, 0x05, 0x1C, 0x0E, 0x1C, 0x16, 0x48, 0x68, 0x61
    .byte 0x28, 0x1C, 0x40, 0x30, 0x00, 0x78, 0x00, 0x28, 0x07, 0xD0, 0x3C, 0x21, 0x68, 0x5E, 0x00, 0x04
    .byte 0xA8, 0x60, 0x3E, 0x21, 0x68, 0x5E, 0x00, 0x04, 0xE8, 0x60, 0x6C, 0x6B, 0x68, 0x46, 0x29, 0x1C
    .byte 0x11, 0xF0, 0xCE, 0xFE, 0x20, 0x1C, 0x69, 0x46, 0x7A, 0xF0, 0xA4, 0xFE, 0x0B, 0x48, 0x68, 0x61
    .byte 0x29, 0x69, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0xB3, 0xF0
    .byte 0x91, 0xFA, 0x01, 0x20, 0x30, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x28, 0x1C, 0xE0, 0xF7, 0x04, 0xF9
    .byte 0x02, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xC8, 0x64, 0x0E, 0x08, 0x50, 0x62, 0x0E, 0x08

    thumb_func_start func_08020410
func_08020410: @ 0x08020410
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, [r4, #0x34]
    ldr r0, [r0, #0x20]
    cmp r0, #5
    bne _08020426
    adds r0, r4, #0
    bl func_080212C0
_08020426:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    ldr r2, _08020458 @ =0xFFFF0000
    ldr r0, [sp]
    ands r0, r2
    orrs r0, r1
    ldr r1, _0802045C @ =0xFF00FFFF
    ands r0, r1
    str r0, [sp]
    ldr r0, [r4, #0x34]
    mov r1, sp
    bl method_0809BB48__3DogPC15UnkBarnAnimal2C
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r4, #0
    movs r1, #0
    bl func_080211E4
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08020458: .4byte 0xFFFF0000
_0802045C: .4byte 0xFF00FFFF

    thumb_func_start func_08020460
func_08020460: @ 0x08020460
    push {lr}
    movs r1, #0
    ldr r0, [r0, #0x34]
    ldr r0, [r0, #0x20]
    cmp r0, #5
    bne _0802046E
    movs r1, #1
_0802046E:
    adds r0, r1, #0
    pop {r1}
    bx r1
_08020474:
    .byte 0x10, 0xB5, 0x04, 0x1C, 0x00, 0xF0, 0x28, 0xF8, 0x21, 0x1C, 0x30, 0x31
    .byte 0x00, 0x20, 0x08, 0x70, 0xA0, 0x8C, 0x00, 0x28, 0x01, 0xD0, 0x01, 0x38, 0x00, 0xE0, 0xE0, 0x8C
    .byte 0xA0, 0x84, 0x22, 0x69, 0x00, 0x2A, 0x04, 0xD0, 0x50, 0x68, 0xC1, 0x68, 0x10, 0x1C, 0xB3, 0xF0
    .byte 0x37, 0xFA, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x11, 0xF0
    .byte 0x5F, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x02, 0xD0, 0x20, 0x1C, 0x00, 0xF0, 0x07, 0xF8, 0x20, 0x1C
    .byte 0x29, 0x1C, 0x11, 0xF0, 0xB3, 0xFF, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_080204CC
func_080204CC: @ 0x080204CC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xfc
    adds r6, r0, #0
    ldr r0, [r6]
    str r0, [sp, #0xd8]
    ldr r1, [r6, #0x34]
    mov sl, r1
    mov r0, sl
    bl GetGrowthStage__C3Dog
    adds r5, r0, #0
    ldrh r2, [r6, #4]
    str r2, [sp, #0xdc]
    ldr r3, [sp, #0xd8]
    ldr r1, [r3]
    add r0, sp, #8
    ldr r3, [r1, #0x34]
    ldr r1, [sp, #0xd8]
    bl _call_via_r3
    ldr r1, [r6, #0x14]
    add r4, sp, #0x7c
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    movs r1, #0
    movs r0, #0
    mov r8, r4
    ldr r4, [sp, #0xdc]
    cmp r4, #8
    bgt _08020518
    movs r0, #1
_08020518:
    cmp r0, #0
    beq _08020522
    cmp r5, #1
    bne _08020522
    movs r1, #1
_08020522:
    adds r2, r1, #0
    cmp r2, #0
    beq _0802053C
    mov r7, r8
    movs r1, #4
    ldrsh r0, [r7, r1]
    add r1, sp, #0x7c
    movs r3, #0
    ldrsh r1, [r1, r3]
    subs r0, r0, r1
    adds r0, #0x10
    str r0, [sp, #0xe0]
    b _08020540
_0802053C:
    movs r4, #0
    str r4, [sp, #0xe0]
_08020540:
    cmp r2, #0
    beq _08020556
    mov r7, r8
    movs r1, #6
    ldrsh r0, [r7, r1]
    movs r2, #2
    ldrsh r1, [r7, r2]
    subs r0, r0, r1
    adds r0, #0x10
    str r0, [sp, #0xe4]
    b _0802055A
_08020556:
    movs r3, #0
    str r3, [sp, #0xe4]
_0802055A:
    add r4, sp, #0x14
    movs r7, #0x21
    str r7, [sp, #0x14]
    movs r0, #0x21
    rsbs r0, r0, #0
    str r0, [r4, #4]
    str r0, [r4, #8]
    str r7, [r4, #0xc]
    add r1, sp, #0x28
    add r0, sp, #8
    ldm r0!, {r2, r3, r7}
    stm r1!, {r2, r3, r7}
    ldr r0, [sp, #0x7c]
    ldr r1, [sp, #0x80]
    str r0, [sp, #0x34]
    str r1, [sp, #0x38]
    movs r0, #0x20
    str r0, [r4, #0x28]
    ldr r1, [sp, #0xe0]
    str r1, [sp, #0x40]
    ldr r2, [sp, #0xe4]
    str r2, [sp, #0x44]
    ldr r3, [sp, #0xd8]
    ldr r0, [r3]
    ldr r2, [r0, #0x40]
    adds r0, r3, #0
    movs r1, #0
    bl _call_via_r2
    mov sb, r0
    ldr r7, [sp, #0xd8]
    ldr r0, [r7]
    ldr r2, [r0, #0x40]
    adds r0, r7, #0
    movs r1, #0x4a
    bl _call_via_r2
    adds r7, r0, #0
    movs r0, #0
    str r0, [sp, #0xe8]
    adds r0, r6, #0
    adds r0, #0x40
    ldrb r1, [r0]
    str r0, [sp, #0xf8]
    cmp r1, #0
    bne _080205B8
    b _080206EE
_080205B8:
    movs r1, #0
    ldrh r0, [r6, #0x24]
    cmp r0, #0
    bne _080205C2
    movs r1, #1
_080205C2:
    cmp r1, #0
    bne _080205C8
    b _080206EE
_080205C8:
    add r1, sp, #0xe8
    ldrb r2, [r1]
    ldr r1, [sp, #0xf8]
    strb r2, [r1]
    movs r2, #0x3c
    ldrsh r0, [r6, r2]
    lsls r0, r0, #0x10
    str r0, [r6, #8]
    movs r3, #0x3e
    ldrsh r0, [r6, r3]
    lsls r0, r0, #0x10
    str r0, [r6, #0xc]
    ldr r1, [r6, #0x14]
    add r4, sp, #0x84
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    ldr r0, [r4]
    ldr r1, [r4, #4]
    str r0, [sp, #0x7c]
    str r1, [sp, #0x80]
    mov r4, r8
    movs r0, #4
    ldrsh r5, [r4, r0]
    movs r1, #0
    ldrsh r0, [r4, r1]
    subs r5, r5, r0
    adds r5, #0x10
    mov ip, r5
    movs r2, #6
    ldrsh r4, [r4, r2]
    mov r3, r8
    movs r5, #2
    ldrsh r0, [r3, r5]
    subs r4, r4, r0
    adds r4, #0x10
    mov r8, r4
    add r1, sp, #0x48
    movs r0, #0x21
    str r0, [sp, #0x48]
    movs r2, #0x21
    rsbs r2, r2, #0
    str r2, [r1, #4]
    str r2, [r1, #8]
    str r0, [r1, #0xc]
    add r2, sp, #0x5c
    add r0, sp, #8
    ldm r0!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldr r2, [sp, #0x7c]
    ldr r3, [sp, #0x80]
    str r2, [sp, #0x68]
    str r3, [sp, #0x6c]
    movs r0, #0x20
    str r0, [r1, #0x28]
    mov r2, ip
    str r2, [sp, #0x74]
    mov r3, r8
    str r3, [sp, #0x78]
    add r0, sp, #0x14
    movs r2, #0x34
    bl memcpy
    mov r4, sb
    cmp r4, #0
    beq _08020670
    ldrh r0, [r4, #4]
    ldr r5, [sp, #0xdc]
    cmp r0, r5
    bne _08020670
    ldr r1, [r4, #0x14]
    add r4, sp, #0x8c
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    mov r1, sb
    bl _call_via_r2
    add r0, sp, #0x14
    adds r1, r4, #0
    movs r2, #1
    bl func_080ABA90
_08020670:
    cmp r7, #0
    beq _08020694
    ldrh r0, [r7, #4]
    ldr r1, [sp, #0xdc]
    cmp r0, r1
    bne _08020694
    ldr r1, [r7, #0x14]
    add r4, sp, #0x94
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    add r0, sp, #0x14
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
_08020694:
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r2, [r4]
    adds r0, r6, #0
    bl func_080211E4
    mov r2, sl
    ldr r0, [r2, #0x20]
    cmp r0, #5
    beq _080206B4
    bl _080210A0
_080206B4:
    ldr r3, [sp, #0xe8]
    cmp r3, #0
    bne _080206D2
    ldr r5, [sp, #0xd8]
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    movs r1, #0x4b
    bl _call_via_r2
    str r0, [sp, #0xe8]
    cmp r0, #0
    bne _080206D2
    bl _080210A0
_080206D2:
    ldr r7, [sp, #0xe8]
    ldrh r0, [r7, #4]
    ldr r1, [sp, #0xdc]
    cmp r0, r1
    beq _080206E0
    bl _080210A0
_080206E0:
    ldrh r1, [r6, #0x22]
    ldrb r2, [r4]
    adds r0, r7, #0
    bl func_08038398
    bl _080210A0
_080206EE:
    mov r2, sb
    cmp r2, #0
    beq _08020714
    ldrh r0, [r2, #4]
    ldr r3, [sp, #0xdc]
    cmp r0, r3
    bne _08020714
    ldr r1, [r2, #0x14]
    add r4, sp, #0x9c
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    mov r1, sb
    bl _call_via_r2
    add r0, sp, #0x14
    adds r1, r4, #0
    movs r2, #1
    bl func_080ABA90
_08020714:
    cmp r7, #0
    beq _08020738
    ldrh r0, [r7, #4]
    ldr r4, [sp, #0xdc]
    cmp r0, r4
    bne _08020738
    ldr r1, [r7, #0x14]
    add r4, sp, #0xa4
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    add r0, sp, #0x14
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
_08020738:
    ldr r7, [sp, #0xf8]
    ldrb r0, [r7]
    cmp r0, #0
    beq _08020742
    b _0802089A
_08020742:
    cmp r5, #1
    beq _08020748
    b _0802089A
_08020748:
    movs r1, #0xa
    ldrsh r0, [r6, r1]
    str r0, [sp, #0xec]
    movs r3, #0xe
    ldrsh r2, [r6, r3]
    str r2, [sp, #0xf0]
    ldr r4, [r6, #0x18]
    mov r8, r4
    ldr r7, [r6, #0x1c]
    adds r4, r0, #0
    adds r5, r2, #0
    cmp r7, #0
    ble _08020794
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble _08020774
    add r0, sp, #0x14
    bl func_080AB85C
    ldr r0, [sp, #0x14]
    b _08020776
_08020774:
    adds r0, r1, #0
_08020776:
    cmp r0, #0
    bne _08020794
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble _08020788
    add r0, sp, #0x14
    bl func_080AB85C
_08020788:
    add r1, sp, #0x24
    ldrb r0, [r1]
    cmp r0, #0
    beq _08020794
    ldr r2, [sp, #0xe4]
    adds r5, r5, r2
_08020794:
    cmp r7, #0
    bge _080207CC
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x3c]
    cmn r1, r0
    bge _080207AA
    add r0, sp, #0x14
    bl func_080AB8D0
    ldr r0, [sp, #0x18]
    b _080207AC
_080207AA:
    adds r0, r1, #0
_080207AC:
    cmp r0, #0
    bne _080207CC
    ldr r1, [sp, #0x3c]
    ldr r0, [sp, #0x18]
    cmn r0, r1
    bge _080207BE
    add r0, sp, #0x14
    bl func_080AB8D0
_080207BE:
    movs r3, #0x25
    add r3, sp
    ldrb r0, [r3]
    cmp r0, #0
    beq _080207CC
    ldr r7, [sp, #0xe4]
    subs r5, r5, r7
_080207CC:
    mov r0, r8
    cmp r0, #0
    bge _08020806
    ldr r1, [sp, #0x1c]
    ldr r0, [sp, #0x3c]
    cmn r1, r0
    bge _080207E4
    add r0, sp, #0x14
    bl func_080AB948
    ldr r0, [sp, #0x1c]
    b _080207E6
_080207E4:
    adds r0, r1, #0
_080207E6:
    cmp r0, #0
    bne _08020806
    ldr r1, [sp, #0x3c]
    ldr r0, [sp, #0x1c]
    cmn r0, r1
    bge _080207F8
    add r0, sp, #0x14
    bl func_080AB948
_080207F8:
    movs r1, #0x26
    add r1, sp
    ldrb r0, [r1]
    cmp r0, #0
    beq _08020806
    ldr r2, [sp, #0xe0]
    subs r4, r4, r2
_08020806:
    mov r3, r8
    cmp r3, #0
    ble _08020840
    ldr r1, [sp, #0x20]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble _0802081E
    add r0, sp, #0x14
    bl func_080AB9C4
    ldr r0, [sp, #0x20]
    b _08020820
_0802081E:
    adds r0, r1, #0
_08020820:
    cmp r0, #0
    bne _08020840
    ldr r1, [sp, #0x20]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble _08020832
    add r0, sp, #0x14
    bl func_080AB9C4
_08020832:
    movs r7, #0x27
    add r7, sp
    ldrb r0, [r7]
    cmp r0, #0
    beq _08020840
    ldr r0, [sp, #0xe0]
    adds r4, r4, r0
_08020840:
    ldr r1, [sp, #0xec]
    cmp r4, r1
    bne _0802084C
    ldr r2, [sp, #0xf0]
    cmp r5, r2
    beq _0802089A
_0802084C:
    strh r4, [r6, #0x3c]
    strh r5, [r6, #0x3e]
    movs r0, #1
    ldr r3, [sp, #0xf8]
    strb r0, [r3]
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r2, [r4]
    adds r0, r6, #0
    movs r1, #0xc
    bl func_080211E4
    mov r5, sl
    ldr r0, [r5, #0x20]
    cmp r0, #5
    bne _0802089A
    ldr r7, [sp, #0xe8]
    cmp r7, #0
    bne _08020886
    ldr r1, [sp, #0xd8]
    ldr r0, [r1]
    ldr r2, [r0, #0x40]
    adds r0, r1, #0
    movs r1, #0x4b
    bl _call_via_r2
    str r0, [sp, #0xe8]
    cmp r0, #0
    beq _0802089A
_08020886:
    ldr r2, [sp, #0xe8]
    ldrh r0, [r2, #4]
    ldr r3, [sp, #0xdc]
    cmp r0, r3
    bne _0802089A
    ldrh r1, [r6, #0x22]
    ldrb r2, [r4]
    ldr r0, [sp, #0xe8]
    bl func_08038398
_0802089A:
    mov r4, sl
    ldr r0, [r4, #0x20]
    cmp r0, #6
    bls _080208A6
    bl _080210A0
_080208A6:
    lsls r0, r0, #2
    ldr r1, _080208B0 @ =_080208B4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080208B0: .4byte _080208B4
_080208B4: @ jump table
    .4byte _080208D0 @ case 0
    .4byte _08020A54 @ case 1
    .4byte _08020B38 @ case 2
    .4byte _08020C14 @ case 3
    .4byte _08020D38 @ case 4
    .4byte _08020DE4 @ case 5
    .4byte _08020F0C @ case 6
_080208D0:
    movs r5, #0x24
    add r5, sl
    mov sb, r5
    mov r7, sl
    ldrh r4, [r7, #0x24]
    cmp r4, #0
    beq _08020968
    ldr r5, [r6, #0x18]
    ldr r7, [r6, #0x1c]
    movs r0, #0
    mov r8, r0
    cmp r5, #0
    bge _08020902
    ldr r1, [sp, #0x1c]
    ldr r0, [sp, #0x3c]
    cmn r1, r0
    bge _080208FA
    add r0, sp, #0x14
    bl func_080AB948
    ldr r1, [sp, #0x1c]
_080208FA:
    movs r0, #0x10
    rsbs r0, r0, #0
    cmp r1, r0
    bgt _08020956
_08020902:
    cmp r5, #0
    ble _0802091E
    ldr r1, [sp, #0x20]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble _08020918
    add r0, sp, #0x14
    bl func_080AB9C4
    ldr r0, [sp, #0x20]
    b _0802091A
_08020918:
    adds r0, r1, #0
_0802091A:
    cmp r0, #0xf
    ble _08020956
_0802091E:
    cmp r7, #0
    bge _0802093A
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x3c]
    cmn r1, r0
    bge _08020932
    add r0, sp, #0x14
    bl func_080AB8D0
    ldr r1, [sp, #0x18]
_08020932:
    movs r0, #0x10
    rsbs r0, r0, #0
    cmp r1, r0
    bgt _08020956
_0802093A:
    cmp r7, #0
    ble _0802095A
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble _08020950
    add r0, sp, #0x14
    bl func_080AB85C
    ldr r0, [sp, #0x14]
    b _08020952
_08020950:
    adds r0, r1, #0
_08020952:
    cmp r0, #0xf
    bgt _0802095A
_08020956:
    movs r1, #1
    mov r8, r1
_0802095A:
    mov r2, r8
    cmp r2, #0
    beq _08020964
    movs r4, #0
    b _08020A48
_08020964:
    subs r4, #1
    b _08020A48
_08020968:
    ldr r3, [sp, #0xf8]
    ldrb r0, [r3]
    cmp r0, #0
    bne _08020A48
    adds r0, r6, #0
    bl func_08020130
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08020A48
    mov r0, sl
    bl GetGrowthStage__C3Dog
    cmp r0, #1
    bne _080209C8
    ldr r4, [sp, #0xd8]
    ldr r0, [r4]
    ldr r2, [r0, #0x40]
    adds r0, r4, #0
    movs r1, #0x2d
    bl _call_via_r2
    cmp r0, #0
    beq _080209C8
    ldrh r0, [r0, #4]
    ldr r5, [sp, #0xdc]
    cmp r0, r5
    bne _080209C8
    adds r0, r6, #0
    movs r1, #0xa9
    bl func_080200C4
    ldr r2, _080209C0 @ =0xFFFF0000
    add r1, sp, #0xac
    ldr r0, [r1]
    ands r0, r2
    ldr r2, _080209C4 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    mov r0, sl
    bl method_0809BB9C__3DogPC15UnkBarnAnimal2C
    b _08020FD6
    .align 2, 0
_080209C0: .4byte 0xFFFF0000
_080209C4: .4byte 0xFF00FFFF
_080209C8:
    ldr r7, [sp, #0xd8]
    ldr r0, [r7]
    movs r1, #0xa2
    lsls r1, r1, #1
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r7, #0
    bl _call_via_r1
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    movs r4, #0
    subs r0, #6
    cmp r0, #0xe
    bls _080209EA
    movs r4, #1
_080209EA:
    mov r0, sl
    bl GetGrowthStage__C3Dog
    movs r1, #0x68
    muls r4, r1, r4
    movs r1, #0x34
    muls r0, r1, r0
    ldr r1, _08020A50 @ =0x080F0838
    adds r0, r0, r1
    adds r4, r4, r0
    adds r0, r4, #0
    movs r1, #0xd
    bl func_080AB82C
    adds r7, r0, #0
    lsls r0, r7, #2
    adds r4, r4, r0
    movs r5, #0x3c
    ldrb r0, [r4, #2]
    muls r0, r5, r0
    bl func_080AB788
    ldrb r1, [r4, #1]
    muls r1, r5, r1
    adds r4, r1, r0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r5, [r0]
    movs r0, #4
    bl func_080AB788
    adds r1, r0, #0
    cmp r1, #0
    beq _08020A3A
    cmp r1, #3
    beq _08020A3A
    adds r0, r5, #0
    bl func_080AB7A4
    adds r5, r0, #0
_08020A3A:
    mov r2, sb
    strb r7, [r2, #2]
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r5, #0
    bl func_080211E4
_08020A48:
    mov r3, sb
    strh r4, [r3]
    b _080210A0
    .align 2, 0
_08020A50: .4byte 0x080F0838
_08020A54:
    mov r4, sl
    adds r4, #0x24
    mov r7, sl
    ldrh r5, [r7, #0x24]
    cmp r5, #0
    beq _08020A62
    subs r5, #1
_08020A62:
    ldrh r2, [r4, #2]
    cmp r2, #0
    beq _08020A6A
    subs r2, #1
_08020A6A:
    ldr r1, [sp, #0xf8]
    ldrb r0, [r1]
    cmp r0, #0
    beq _08020A7A
    mov r3, sl
    strh r5, [r3, #0x24]
    strh r2, [r4, #2]
    b _080210A0
_08020A7A:
    cmp r5, #0
    beq _08020B1A
    mov r7, sb
    cmp r7, #0
    beq _08020B1A
    ldrh r0, [r7, #4]
    ldr r1, [sp, #0xdc]
    cmp r0, r1
    bne _08020B1A
    movs r7, #0xa
    ldrsh r3, [r6, r7]
    movs r0, #0xe
    ldrsh r1, [r6, r0]
    mov r7, sb
    movs r0, #0xa
    ldrsh r7, [r7, r0]
    mov r8, r7
    mov r7, sb
    movs r0, #0xe
    ldrsh r7, [r7, r0]
    mov sb, r7
    mov r7, r8
    subs r0, r7, r3
    cmp r0, #0
    bge _08020AAE
    rsbs r0, r0, #0
_08020AAE:
    cmp r0, #0xf
    bgt _08020AC0
    mov r7, sb
    subs r0, r7, r1
    cmp r0, #0
    bge _08020ABC
    rsbs r0, r0, #0
_08020ABC:
    cmp r0, #0xf
    ble _08020B1A
_08020AC0:
    cmp r2, #0
    beq _08020AE4
    movs r7, #4
    ldrsh r0, [r4, r7]
    subs r0, r0, r3
    cmp r0, #0
    bge _08020AD0
    rsbs r0, r0, #0
_08020AD0:
    cmp r0, #0xf
    bgt _08020B14
    movs r7, #6
    ldrsh r0, [r4, r7]
    subs r0, r0, r1
    cmp r0, #0
    bge _08020AE0
    rsbs r0, r0, #0
_08020AE0:
    cmp r0, #0xf
    bgt _08020B14
_08020AE4:
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    add r2, sp, #0x14
    str r2, [sp]
    str r0, [sp, #4]
    adds r0, r3, #0
    mov r2, r8
    mov r3, sb
    bl func_080ABC40
    adds r2, r0, #0
    adds r0, r6, #0
    movs r1, #2
    bl func_080211E4
    movs r0, #0x1e
    bl func_080AB788
    adds r2, r0, #1
    mov r3, r8
    strh r3, [r4, #4]
    mov r7, sb
    strh r7, [r4, #6]
_08020B14:
    strh r5, [r4]
    strh r2, [r4, #2]
    b _080210A0
_08020B1A:
    ldr r2, _08020B30 @ =0xFFFF0000
    add r1, sp, #0xb0
    ldr r0, [r1]
    ands r0, r2
    movs r2, #0xb4
    orrs r0, r2
    ldr r2, _08020B34 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    b _08020FD0
    .align 2, 0
_08020B30: .4byte 0xFFFF0000
_08020B34: .4byte 0xFF00FFFF
_08020B38:
    mov r7, sl
    adds r7, #0x24
    mov r0, sl
    ldrh r0, [r0, #0x24]
    mov r8, r0
    cmp r0, #0
    beq _08020B4C
    movs r1, #1
    rsbs r1, r1, #0
    add r8, r1
_08020B4C:
    mov r2, sl
    ldr r1, [r2, #0x24]
    lsls r0, r1, #9
    lsrs r5, r0, #0x19
    cmp r5, #0
    beq _08020B5A
    subs r5, #1
_08020B5A:
    ldrb r4, [r7, #3]
    cmp r4, #0
    beq _08020B62
    subs r4, #1
_08020B62:
    ldr r3, [sp, #0xf8]
    ldrb r0, [r3]
    cmp r0, #0
    beq _08020B72
    mov r1, r8
    mov r0, sl
    strh r1, [r0, #0x24]
    b _08020BDC
_08020B72:
    mov r2, r8
    cmp r2, #0
    beq _08020BF0
    lsls r0, r1, #8
    cmp r0, #0
    bge _08020B90
    ldr r3, [sp, #0xd8]
    ldr r0, [r3]
    ldr r2, [r0, #0x40]
    adds r0, r3, #0
    movs r1, #0x2d
    bl _call_via_r2
    adds r3, r0, #0
    b _08020B92
_08020B90:
    mov r3, sb
_08020B92:
    cmp r3, #0
    beq _08020BF0
    ldrh r0, [r3, #4]
    ldr r1, [sp, #0xdc]
    cmp r0, r1
    bne _08020BF0
    cmp r4, #0
    bne _08020BD8
    movs r2, #0xa
    ldrsh r0, [r6, r2]
    movs r4, #0xe
    ldrsh r1, [r6, r4]
    movs r4, #0xa
    ldrsh r2, [r3, r4]
    movs r4, #0xe
    ldrsh r3, [r3, r4]
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r4, [r4]
    mov sb, r4
    add r4, sp, #0x14
    str r4, [sp]
    mov r4, sb
    str r4, [sp, #4]
    bl func_080ABE58
    adds r2, r0, #0
    adds r0, r6, #0
    movs r1, #2
    bl func_080211E4
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
_08020BD8:
    mov r0, r8
    strh r0, [r7]
_08020BDC:
    movs r0, #0x7f
    ands r5, r0
    ldrb r1, [r7, #2]
    movs r0, #0x80
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r5
    strb r0, [r7, #2]
    strb r4, [r7, #3]
    b _080210A0
_08020BF0:
    adds r0, r6, #0
    bl func_080323C8
    ldr r2, _08020C0C @ =0xFFFF0000
    add r1, sp, #0xb4
    ldr r0, [r1]
    ands r0, r2
    movs r2, #0xb4
    orrs r0, r2
    ldr r2, _08020C10 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    b _08020FD0
    .align 2, 0
_08020C0C: .4byte 0xFFFF0000
_08020C10: .4byte 0xFF00FFFF
_08020C14:
    mov r5, sl
    adds r5, #0x24
    mov r1, sl
    ldrh r7, [r1, #0x24]
    cmp r7, #0
    beq _08020C22
    subs r7, #1
_08020C22:
    ldrh r4, [r5, #2]
    cmp r4, #0
    beq _08020C2A
    subs r4, #1
_08020C2A:
    ldr r2, [sp, #0xf8]
    ldrb r0, [r2]
    cmp r0, #0
    beq _08020C3A
    mov r3, sl
    strh r7, [r3, #0x24]
    strh r4, [r5, #2]
    b _080210A0
_08020C3A:
    cmp r7, #0
    beq _08020D1A
    ldr r1, [sp, #0xd8]
    ldr r0, [r1]
    ldr r2, [r0, #0x40]
    adds r0, r1, #0
    movs r1, #0x4b
    bl _call_via_r2
    str r0, [sp, #0xe8]
    cmp r0, #0
    beq _08020D08
    ldrh r0, [r0, #4]
    ldr r2, [sp, #0xdc]
    cmp r0, r2
    bne _08020D08
    movs r3, #0xa
    ldrsh r2, [r6, r3]
    movs r0, #0xe
    ldrsh r1, [r6, r0]
    ldr r3, [sp, #0xe8]
    movs r0, #0xa
    ldrsh r3, [r3, r0]
    mov sb, r3
    ldr r3, [sp, #0xe8]
    movs r0, #0xe
    ldrsh r3, [r3, r0]
    mov r8, r3
    mov r3, sb
    subs r0, r3, r2
    cmp r0, #0
    bge _08020C7C
    rsbs r0, r0, #0
_08020C7C:
    cmp r0, #7
    bgt _08020C8E
    mov r3, r8
    subs r0, r3, r1
    cmp r0, #0
    bge _08020C8A
    rsbs r0, r0, #0
_08020C8A:
    cmp r0, #7
    ble _08020CE4
_08020C8E:
    cmp r4, #0
    beq _08020CB2
    movs r3, #4
    ldrsh r0, [r5, r3]
    subs r0, r0, r2
    cmp r0, #0
    bge _08020C9E
    rsbs r0, r0, #0
_08020C9E:
    cmp r0, #7
    bgt _08020D0C
    movs r3, #6
    ldrsh r0, [r5, r3]
    subs r0, r0, r1
    cmp r0, #0
    bge _08020CAE
    rsbs r0, r0, #0
_08020CAE:
    cmp r0, #7
    bgt _08020D0C
_08020CB2:
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    add r4, sp, #0x14
    str r4, [sp]
    str r0, [sp, #4]
    adds r0, r2, #0
    mov r2, sb
    mov r3, r8
    bl func_080ABC40
    adds r2, r0, #0
    adds r0, r6, #0
    movs r1, #2
    bl func_080211E4
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
    mov r0, sb
    strh r0, [r5, #4]
    mov r1, r8
    strh r1, [r5, #6]
    b _08020D0C
_08020CE4:
    movs r0, #0x78
    bl func_080AB788
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r3, _08020D04 @ =0xFFFF0000
    add r1, sp, #0xb8
    ldr r2, [r1]
    ands r2, r3
    orrs r2, r0
    str r2, [r1]
    mov r0, sl
    bl method_0809BB80__3DogPC15UnkBarnAnimal2C
    b _08020FD6
    .align 2, 0
_08020D04: .4byte 0xFFFF0000
_08020D08:
    cmp r4, #0
    beq _08020D12
_08020D0C:
    strh r7, [r5]
    strh r4, [r5, #2]
    b _080210A0
_08020D12:
    adds r0, r6, #0
    movs r1, #0xaa
    bl func_080200C4
_08020D1A:
    ldr r2, _08020D30 @ =0xFFFF0000
    add r1, sp, #0xbc
    ldr r0, [r1]
    ands r0, r2
    movs r2, #0xb4
    orrs r0, r2
    ldr r2, _08020D34 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    b _08020FD0
    .align 2, 0
_08020D30: .4byte 0xFFFF0000
_08020D34: .4byte 0xFF00FFFF
_08020D38:
    ldr r2, [sp, #0xd8]
    ldr r0, [r2]
    ldr r2, [r0, #0x40]
    ldr r0, [sp, #0xd8]
    movs r1, #0x4b
    bl _call_via_r2
    str r0, [sp, #0xe8]
    mov r3, sl
    ldrh r1, [r3, #0x24]
    cmp r1, #0
    beq _08020D52
    subs r1, #1
_08020D52:
    ldr r4, [sp, #0xe8]
    cmp r4, #0
    beq _08020DC0
    ldrh r0, [r4, #4]
    ldr r5, [sp, #0xdc]
    cmp r0, r5
    bne _08020DC0
    cmp r1, #0
    bne _08020DBA
    adds r0, r6, #0
    movs r1, #0xa9
    bl func_080200C4
    mov r0, sl
    bl GetAffection__C6Animal
    adds r1, r0, #0
    lsls r0, r1, #4
    subs r0, r0, r1
    lsls r0, r0, #6
    movs r1, #0xfb
    bl __udivsi3
    movs r7, #0xf0
    lsls r7, r7, #1
    adds r0, r0, r7
    lsls r0, r0, #0x10
    add r1, sp, #0xc0
    lsrs r0, r0, #0x10
    str r0, [r1]
    ldr r0, [r6, #0x34]
    bl method_0809BB8C__3DogPC18UnkBarnAnimal2C_x2
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r2, [r4]
    adds r0, r6, #0
    bl func_080211E4
    ldr r1, [r6, #8]
    ldr r2, [r6, #0xc]
    ldrh r3, [r6, #0x22]
    ldrb r0, [r4]
    str r0, [sp]
    ldr r0, [sp, #0xe8]
    bl func_08038374
    b _080210A0
_08020DBA:
    mov r0, sl
    strh r1, [r0, #0x24]
    b _080210A0
_08020DC0:
    adds r0, r6, #0
    movs r1, #0xaa
    bl func_080200C4
    ldr r2, _08020DDC @ =0xFFFF0000
    add r1, sp, #0xc8
    ldr r0, [r1]
    ands r0, r2
    movs r2, #0xb4
    orrs r0, r2
    ldr r2, _08020DE0 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    b _08020FD0
    .align 2, 0
_08020DDC: .4byte 0xFFFF0000
_08020DE0: .4byte 0xFF00FFFF
_08020DE4:
    mov r5, sl
    adds r5, #0x24
    ldr r1, [sp, #0xd8]
    ldr r0, [r1]
    ldr r2, [r0, #0x40]
    adds r0, r1, #0
    movs r1, #0x4b
    bl _call_via_r2
    str r0, [sp, #0xe8]
    mov r2, sl
    ldrh r7, [r2, #0x24]
    cmp r7, #0
    beq _08020E02
    subs r7, #1
_08020E02:
    ldrh r2, [r5, #2]
    cmp r2, #0
    beq _08020E0A
    subs r2, #1
_08020E0A:
    ldr r3, [sp, #0xf8]
    ldrb r0, [r3]
    cmp r0, #0
    beq _08020E1A
    mov r4, sl
    strh r7, [r4, #0x24]
    strh r2, [r5, #2]
    b _080210A0
_08020E1A:
    ldr r0, [sp, #0xe8]
    cmp r0, #0
    beq _08020ED8
    ldrh r0, [r0, #4]
    ldr r1, [sp, #0xdc]
    cmp r0, r1
    bne _08020ED8
    cmp r7, #0
    beq _08020EEA
    mov r3, sb
    cmp r3, #0
    beq _08020EEA
    ldrh r0, [r3, #4]
    cmp r0, r1
    bne _08020EEA
    movs r4, #0xa
    ldrsh r3, [r6, r4]
    movs r0, #0xe
    ldrsh r1, [r6, r0]
    mov r4, sb
    movs r0, #0xa
    ldrsh r4, [r4, r0]
    str r4, [sp, #0xf4]
    mov r4, sb
    movs r0, #0xe
    ldrsh r4, [r4, r0]
    mov r8, r4
    ldr r4, [sp, #0xf4]
    subs r0, r4, r3
    cmp r0, #0
    bge _08020E5A
    rsbs r0, r0, #0
_08020E5A:
    cmp r0, #0xf
    bgt _08020E6C
    mov r4, r8
    subs r0, r4, r1
    cmp r0, #0
    bge _08020E68
    rsbs r0, r0, #0
_08020E68:
    cmp r0, #0xf
    ble _08020ECE
_08020E6C:
    cmp r2, #0
    beq _08020E90
    movs r4, #4
    ldrsh r0, [r5, r4]
    subs r0, r0, r3
    cmp r0, #0
    bge _08020E7C
    rsbs r0, r0, #0
_08020E7C:
    cmp r0, #0xf
    bgt _08020EDC
    movs r4, #6
    ldrsh r0, [r5, r4]
    subs r0, r0, r1
    cmp r0, #0
    bge _08020E8C
    rsbs r0, r0, #0
_08020E8C:
    cmp r0, #0xf
    bgt _08020EDC
_08020E90:
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r0, [r4]
    add r2, sp, #0x14
    str r2, [sp]
    str r0, [sp, #4]
    adds r0, r3, #0
    ldr r2, [sp, #0xf4]
    mov r3, r8
    bl func_080ABC40
    adds r2, r0, #0
    adds r0, r6, #0
    movs r1, #2
    bl func_080211E4
    ldrh r1, [r6, #0x22]
    ldrb r2, [r4]
    ldr r0, [sp, #0xe8]
    bl func_08038398
    movs r0, #0x1e
    bl func_080AB788
    adds r2, r0, #1
    add r3, sp, #0xf4
    ldrh r3, [r3]
    strh r3, [r5, #4]
    mov r4, r8
    strh r4, [r5, #6]
    b _08020EDC
_08020ECE:
    adds r0, r6, #0
    movs r1, #0xa9
    bl func_080200C4
    b _08020EEA
_08020ED8:
    cmp r2, #0
    beq _08020EE2
_08020EDC:
    strh r7, [r5]
    strh r2, [r5, #2]
    b _080210A0
_08020EE2:
    adds r0, r6, #0
    movs r1, #0xaa
    bl func_080200C4
_08020EEA:
    adds r0, r6, #0
    bl func_080212C0
    ldr r2, _08020F04 @ =0xFFFF0000
    add r1, sp, #0xcc
    ldr r0, [r1]
    ands r0, r2
    movs r2, #0xb4
    orrs r0, r2
    ldr r2, _08020F08 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    b _08020FD0
    .align 2, 0
_08020F04: .4byte 0xFFFF0000
_08020F08: .4byte 0xFF00FFFF
_08020F0C:
    movs r5, #0x24
    add r5, sl
    mov r8, r5
    mov sb, r8
    mov r7, sl
    ldrh r4, [r7, #0x24]
    cmp r4, #0
    beq _08020F1E
    subs r4, #1
_08020F1E:
    ldr r1, [sp, #0xf8]
    ldrb r0, [r1]
    cmp r0, #0
    beq _08020F2C
    mov r2, sl
    strh r4, [r2, #0x24]
    b _080210A0
_08020F2C:
    ldr r3, [sp, #0xd8]
    ldr r0, [r3]
    ldr r2, [r0, #0x40]
    adds r0, r3, #0
    movs r1, #0x2d
    bl _call_via_r2
    adds r5, r0, #0
    cmp r5, #0
    bne _08020F42
    b _08021074
_08020F42:
    ldrh r0, [r5, #4]
    ldr r7, [sp, #0xdc]
    cmp r0, r7
    beq _08020F4C
    b _08021074
_08020F4C:
    movs r1, #0xa
    ldrsh r0, [r6, r1]
    mov ip, r0
    movs r2, #0xe
    ldrsh r1, [r6, r2]
    movs r3, #0xa
    ldrsh r2, [r5, r3]
    movs r7, #0xe
    ldrsh r3, [r5, r7]
    mov r7, r8
    ldrb r0, [r7, #2]
    cmp r0, #0
    beq _08021008
    cmp r4, #0
    bne _08021002
    mov r4, ip
    subs r0, r2, r4
    cmp r0, #0
    bge _08020F74
    rsbs r0, r0, #0
_08020F74:
    cmp r0, #0xf
    bgt _08020FA0
    subs r1, r3, r1
    cmp r1, #0
    bge _08020F80
    rsbs r1, r1, #0
_08020F80:
    cmp r1, #0xf
    bgt _08020FA0
    ldr r0, [r5, #0x14]
    ldr r1, [r0, #0x44]
    adds r0, r5, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08020FA0
    ldr r0, [r5, #0x14]
    adds r0, #0x80
    ldr r1, [r0]
    adds r0, r5, #0
    bl _call_via_r1
_08020FA0:
    movs r0, #0xfb
    bl func_080AB788
    adds r4, r0, #0
    mov r0, sl
    bl GetAdequacy__C3Pet
    movs r1, #0xfb
    subs r1, r1, r0
    cmp r4, r1
    bhs _08020FF4
    movs r0, #0xb4
    bl func_080AB788
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r3, _08020FEC @ =0xFFFF0000
    add r1, sp, #0xd0
    ldr r2, [r1]
    ands r2, r3
    orrs r2, r0
    ldr r0, _08020FF0 @ =0xFF00FFFF
    ands r2, r0
    str r2, [r1]
_08020FD0:
    mov r0, sl
    bl method_0809BB48__3DogPC15UnkBarnAnimal2C
_08020FD6:
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_080211E4
    b _080210A0
    .align 2, 0
_08020FEC: .4byte 0xFFFF0000
_08020FF0: .4byte 0xFF00FFFF
_08020FF4:
    movs r0, #0
    mov r5, sb
    strb r0, [r5, #2]
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
_08021002:
    mov r7, sb
    strh r4, [r7]
    b _080210A0
_08021008:
    mov r5, ip
    subs r0, r2, r5
    cmp r0, #0
    bge _08021012
    rsbs r0, r0, #0
_08021012:
    cmp r0, #0xf
    bgt _08021022
    subs r0, r3, r1
    cmp r0, #0
    bge _0802101E
    rsbs r0, r0, #0
_0802101E:
    cmp r0, #0xf
    ble _08021050
_08021022:
    cmp r4, #0
    bne _0802104A
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    add r7, sp, #0x14
    str r7, [sp]
    str r0, [sp, #4]
    mov r0, ip
    bl func_080ABC40
    adds r2, r0, #0
    adds r0, r6, #0
    movs r1, #2
    bl func_080211E4
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
_0802104A:
    mov r0, sb
    strh r4, [r0]
    b _080210A0
_08021050:
    adds r0, r6, #0
    movs r1, #0xd2
    bl func_080200C4
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    movs r1, #0xb
    bl func_080211E4
    movs r0, #1
    mov r1, sb
    strb r0, [r1, #2]
    movs r0, #0x24
    mov r2, sl
    strh r0, [r2, #0x24]
    b _080210A0
_08021074:
    ldr r2, _08021104 @ =0xFFFF0000
    add r1, sp, #0xd4
    ldr r0, [r1]
    ands r0, r2
    movs r2, #0xb4
    orrs r0, r2
    ldr r2, _08021108 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    mov r0, sl
    bl method_0809BB48__3DogPC15UnkBarnAnimal2C
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_080211E4
_080210A0:
    ldr r0, [r6, #0x18]
    cmp r0, #0
    bne _080210AC
    ldr r0, [r6, #0x1c]
    cmp r0, #0
    beq _080210D6
_080210AC:
    ldr r3, [sp, #0xdc]
    cmp r3, #2
    beq _080210C4
    ldr r4, [sp, #0xd8]
    ldr r0, [r4]
    ldr r1, [r0, #0x14]
    adds r0, r4, #0
    bl _call_via_r1
    ldr r5, [sp, #0xdc]
    cmp r5, r0
    bne _080210D6
_080210C4:
    ldr r7, [sp, #0xf8]
    ldrb r0, [r7]
    add r1, sp, #0x14
    cmp r0, #0
    beq _080210D0
    movs r1, #0
_080210D0:
    adds r0, r6, #0
    bl func_08020170
_080210D6:
    mov r1, sl
    ldr r0, [r1, #0x20]
    cmp r0, #5
    bne _080210F4
    ldr r2, [sp, #0xe8]
    cmp r2, #0
    beq _080210F4
    ldrh r0, [r2, #4]
    ldr r3, [sp, #0xdc]
    cmp r0, r3
    bne _080210F4
    ldr r0, [r6, #8]
    str r0, [r2, #8]
    ldr r0, [r6, #0xc]
    str r0, [r2, #0xc]
_080210F4:
    add sp, #0xfc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08021104: .4byte 0xFFFF0000
_08021108: .4byte 0xFF00FFFF

    thumb_func_start func_0802110C
func_0802110C: @ 0x0802110C
    push {r4, r5, lr}
    adds r4, r1, #0
    ldr r5, _0802112C @ =0x080F0908
    lsls r4, r4, #1
    ldr r0, [r0, #0x34]
    bl GetGrowthStage__C3Dog
    cmp r0, #1
    bne _08021120
    adds r4, #0x1a
_08021120:
    adds r0, r4, r5
    ldrh r0, [r0]
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
_0802112C: .4byte 0x080F0908

    thumb_func_start func_08021130
func_08021130: @ 0x08021130
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    cmp r1, #0xc
    bhi _0802117C
    lsls r0, r1, #2
    ldr r1, _08021144 @ =_08021148
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08021144: .4byte _08021148
_08021148: @ jump table
    .4byte _0802117C @ case 0
    .4byte _08021180 @ case 1
    .4byte _08021186 @ case 2
    .4byte _0802117C @ case 3
    .4byte _0802117C @ case 4
    .4byte _0802117C @ case 5
    .4byte _0802117C @ case 6
    .4byte _0802117C @ case 7
    .4byte _0802117C @ case 8
    .4byte _0802117C @ case 9
    .4byte _0802117C @ case 10
    .4byte _0802117C @ case 11
    .4byte _0802118C @ case 12
_0802117C:
    movs r0, #0
    b _080211DA
_08021180:
    movs r0, #0x80
    lsls r0, r0, #8
    b _080211DA
_08021186:
    movs r0, #0x80
    lsls r0, r0, #9
    b _080211DA
_0802118C:
    ldr r1, [r4, #0x14]
    mov r0, sp
    ldr r2, [r1, #0xc]
    adds r1, r4, #0
    bl _call_via_r2
    ldr r0, [sp]
    ldr r1, [sp, #4]
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    add r1, sp, #8
    movs r2, #0x10
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    adds r3, r1, #0
    cmp r0, #0
    blt _080211D2
    cmp r0, #1
    ble _080211BA
    cmp r0, #3
    ble _080211C4
    b _080211D2
_080211BA:
    movs r1, #6
    ldrsh r0, [r3, r1]
    movs r2, #2
    ldrsh r1, [r3, r2]
    b _080211CC
_080211C4:
    movs r2, #4
    ldrsh r0, [r1, r2]
    movs r2, #0
    ldrsh r1, [r1, r2]
_080211CC:
    subs r0, r0, r1
    adds r2, r0, #0
    adds r2, #0x10
_080211D2:
    lsls r0, r2, #0x10
    movs r1, #0x1e
    bl __divsi3
_080211DA:
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080211E4
func_080211E4: @ 0x080211E4
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    cmp r5, #0xc
    beq _080211FA
    adds r0, #0x40
    ldrb r0, [r0]
    cmp r0, #0
    beq _080211FA
    movs r5, #0xc
_080211FA:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0802110C
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq _08021210
    adds r0, r4, #0
    bl func_080321B0
_08021210:
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r6
    beq _08021222
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_08032198
_08021222:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08021130
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08020080
    adds r0, r4, #0
    adds r0, #0x41
    adds r6, r0, #0
    ldrb r0, [r6]
    cmp r5, r0
    beq _0802125C
    movs r1, #1
    rsbs r1, r1, #0
    cmp r5, #8
    bne _08021248
    movs r1, #8
_08021248:
    cmp r1, #0
    blt _08021256
    adds r0, r4, #0
    movs r2, #1
    bl func_08032384
    b _0802125C
_08021256:
    adds r0, r4, #0
    bl func_080323C8
_0802125C:
    strb r5, [r6]
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_08021264
func_08021264: @ 0x08021264
    push {lr}
    adds r2, r0, #0
    ldr r0, [r2, #0x34]
    ldr r0, [r0, #0x20]
    cmp r0, #6
    bhi _0802129C
    lsls r0, r0, #2
    ldr r1, _0802127C @ =_08021280
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802127C: .4byte _08021280
_08021280: @ jump table
    .4byte _080212A0 @ case 0
    .4byte _080212A8 @ case 1
    .4byte _080212A8 @ case 2
    .4byte _080212A8 @ case 3
    .4byte _0802129C @ case 4
    .4byte _080212A8 @ case 5
    .4byte _080212AC @ case 6
_0802129C:
    movs r0, #3
    b _080212BC
_080212A0:
    ldr r0, [r2, #0x34]
    adds r0, #0x26
    ldrb r0, [r0]
    b _080212BC
_080212A8:
    movs r0, #2
    b _080212BC
_080212AC:
    ldr r0, [r2, #0x34]
    adds r0, #0x26
    ldrb r0, [r0]
    movs r1, #2
    cmp r0, #0
    beq _080212BA
    movs r1, #0xb
_080212BA:
    adds r0, r1, #0
_080212BC:
    pop {r1}
    bx r1

    thumb_func_start func_080212C0
func_080212C0: @ 0x080212C0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    adds r6, r0, #0
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4b
    bl _call_via_r2
    adds r5, r0, #0
    cmp r5, #0
    beq _08021394
    adds r0, #0x26
    ldrb r0, [r0]
    cmp r0, #0
    beq _08021394
    ldr r0, [r6, #8]
    mov sb, r0
    ldr r2, [r6, #0xc]
    mov r8, r2
    movs r0, #8
    mov sl, r0
    ldrh r7, [r6, #4]
    ldr r4, [r6]
    ldr r0, [r4]
    ldr r1, [r0, #0x14]
    adds r0, r4, #0
    bl _call_via_r1
    cmp r7, r0
    beq _0802130E
    cmp r7, #2
    beq _0802130E
    movs r2, #0
    mov sl, r2
_0802130E:
    ldr r1, [r4]
    mov r0, sp
    ldr r3, [r1, #0x34]
    adds r1, r4, #0
    adds r2, r7, #0
    bl _call_via_r3
    mov r7, sp
    adds r6, #0x20
    b _0802133E
_08021322:
    ldr r1, [r5, #0x14]
    add r4, sp, #0xc
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r5, #0
    bl _call_via_r2
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_080AC070
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802138E
_0802133E:
    mov r0, sl
    lsls r1, r0, #0x10
    ldrb r0, [r6]
    adds r2, r0, #0
    cmp r0, #1
    beq _08021368
    cmp r0, #1
    bgt _08021354
    cmp r0, #0
    beq _0802135E
    b _08021382
_08021354:
    cmp r2, #2
    beq _08021372
    cmp r2, #3
    beq _08021378
    b _08021382
_0802135E:
    mov r2, sb
    str r2, [r5, #8]
    mov r2, r8
    adds r0, r2, r1
    b _08021380
_08021368:
    mov r0, sb
    str r0, [r5, #8]
    mov r2, r8
    subs r0, r2, r1
    b _08021380
_08021372:
    mov r2, sb
    subs r0, r2, r1
    b _0802137C
_08021378:
    mov r2, sb
    adds r0, r2, r1
_0802137C:
    str r0, [r5, #8]
    mov r0, r8
_08021380:
    str r0, [r5, #0xc]
_08021382:
    movs r2, #1
    rsbs r2, r2, #0
    add sl, r2
    mov r0, sl
    cmp r0, #0
    bge _08021322
_0802138E:
    adds r0, r5, #0
    bl func_080384FC
_08021394:
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
_080213A4:
    .byte 0x40, 0x30, 0x00, 0x78, 0x01, 0x21, 0x48, 0x40, 0x70, 0x47, 0x00, 0x00
    .byte 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x40, 0x30, 0x00, 0x78, 0x00, 0x28, 0x35, 0xD1, 0x60, 0x6B
    .byte 0x00, 0x6A, 0x05, 0x28, 0x02, 0xD1, 0x20, 0x1C, 0xFF, 0xF7, 0x7A, 0xFF, 0x78, 0x20, 0x8A, 0xF0
    .byte 0xDB, 0xF9, 0xF0, 0x30, 0x00, 0x04, 0x00, 0x0C, 0x16, 0x4A, 0x00, 0x99, 0x11, 0x40, 0x01, 0x43
    .byte 0x15, 0x48, 0x01, 0x40, 0xF0, 0x20, 0x80, 0x03, 0x01, 0x43, 0x14, 0x48, 0x01, 0x40, 0x14, 0x48
    .byte 0x01, 0x40, 0x00, 0x91, 0x60, 0x6B, 0x69, 0x46, 0x7A, 0xF0, 0xB4, 0xFB, 0x20, 0x1C, 0xFF, 0xF7
    .byte 0x31, 0xFF, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C, 0xFF, 0xF7, 0xEA, 0xFE
    .byte 0x60, 0x6B, 0x0A, 0x21, 0x79, 0xF0, 0x62, 0xFF, 0x20, 0x1C, 0x02, 0x21, 0x00, 0x22, 0x10, 0xF0
    .byte 0xB1, 0xFF, 0x20, 0x1C, 0xAA, 0x21, 0xFE, 0xF7, 0x4D, 0xFE, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC
    .byte 0x00, 0x47, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x80, 0xFF, 0xFF, 0xFF, 0x7F, 0xFF
    .byte 0xFF, 0xFF, 0xFF, 0x00

    thumb_func_start func_08021444
func_08021444: @ 0x08021444
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    adds r7, r1, #0
    ldrh r0, [r7]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    ldrh r1, [r6, #4]
    cmp r0, r1
    bne _0802150A
    ldr r1, [r6, #0x34]
    ldr r0, [r1, #0x20]
    cmp r0, #5
    beq _0802150A
    adds r0, r1, #0
    bl GetAffection__C6Animal
    mov r8, r0
    bl func_08020018
    movs r1, #0xa
    ldrsh r3, [r6, r1]
    ldrb r1, [r7, #1]
    lsrs r1, r1, #2
    ldrh r2, [r7, #2]
    ldr r4, _08021518 @ =0x000003FF
    ands r2, r4
    lsls r2, r2, #6
    orrs r2, r1
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    subs r2, r2, r3
    movs r3, #0xe
    ldrsh r5, [r6, r3]
    ldrb r3, [r7, #3]
    lsrs r3, r3, #2
    ldrh r1, [r7, #4]
    ands r1, r4
    lsls r1, r1, #6
    orrs r1, r3
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    subs r1, r1, r5
    adds r3, r2, #0
    muls r3, r2, r3
    adds r2, r3, #0
    adds r3, r1, #0
    muls r3, r1, r3
    adds r1, r3, #0
    adds r2, r2, r1
    adds r1, r0, #0
    muls r1, r0, r1
    adds r0, r1, #0
    cmp r2, r0
    bgt _0802150A
    ldr r0, [r6, #0x34]
    ldr r0, [r0, #0x20]
    cmp r0, #5
    bne _080214C4
    adds r0, r6, #0
    bl func_080212C0
_080214C4:
    mov r3, r8
    lsls r0, r3, #4
    subs r0, r0, r3
    lsls r0, r0, #6
    movs r1, #0xfb
    bl __udivsi3
    movs r1, #0xf0
    lsls r1, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    str r0, [sp]
    ldr r0, [r6, #0x34]
    mov r1, sp
    bl method_0809BB54__3DogPC18UnkBarnAnimal2C_x2
    adds r0, r6, #0
    adds r0, #0x40
    ldrb r0, [r0]
    cmp r0, #0
    bne _08021504
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_080211E4
_08021504:
    ldr r0, [r6, #0x34]
    bl SetHasTalkedToday__3Pet
_0802150A:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08021518: .4byte 0x000003FF

    thumb_func_start func_0802151C
func_0802151C: @ 0x0802151C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    adds r7, r1, #0
    ldr r0, [r6, #0x34]
    bl GetGrowthStage__C3Dog
    cmp r0, #1
    bne _080215EC
    ldrh r0, [r7]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    ldrh r1, [r6, #4]
    cmp r0, r1
    bne _080215EC
    ldr r0, [r6, #0x34]
    bl GetAdequacy__C3Pet
    mov r8, r0
    bl func_08020018
    movs r1, #0xa
    ldrsh r3, [r6, r1]
    ldrb r1, [r7, #1]
    lsrs r1, r1, #2
    ldrh r2, [r7, #2]
    ldr r4, _080215F8 @ =0x000003FF
    ands r2, r4
    lsls r2, r2, #6
    orrs r2, r1
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    subs r2, r2, r3
    movs r3, #0xe
    ldrsh r5, [r6, r3]
    ldrb r3, [r7, #3]
    lsrs r3, r3, #2
    ldrh r1, [r7, #4]
    ands r1, r4
    lsls r1, r1, #6
    orrs r1, r3
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    subs r1, r1, r5
    adds r3, r2, #0
    muls r3, r2, r3
    adds r2, r3, #0
    adds r3, r1, #0
    muls r3, r1, r3
    adds r1, r3, #0
    adds r2, r2, r1
    adds r1, r0, #0
    muls r1, r0, r1
    adds r0, r1, #0
    cmp r2, r0
    bgt _080215EC
    adds r0, r6, #0
    movs r1, #0xa9
    bl func_080200C4
    ldr r0, [r6, #0x34]
    ldr r0, [r0, #0x20]
    cmp r0, #5
    bne _080215A6
    adds r0, r6, #0
    bl func_080212C0
_080215A6:
    mov r3, r8
    lsls r0, r3, #4
    subs r0, r0, r3
    lsls r0, r0, #6
    movs r1, #0xfb
    bl __udivsi3
    movs r1, #0xf0
    lsls r1, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    str r0, [sp]
    ldr r0, [r6, #0x34]
    mov r1, sp
    bl method_0809BB70__3DogPC18UnkBarnAnimal2C_x2
    adds r0, r6, #0
    adds r0, #0x40
    ldrb r0, [r0]
    cmp r0, #0
    bne _080215E6
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_080211E4
_080215E6:
    ldr r0, [r6, #0x34]
    bl SetHasPlayedToday__3Pet
_080215EC:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080215F8: .4byte 0x000003FF
_080215FC:
    .byte 0x10, 0xB5, 0x0A, 0x23
    .byte 0xCA, 0x5E, 0x0E, 0x24, 0x0B, 0x5F, 0xD1, 0x1F, 0x01, 0x80, 0x19, 0x1F, 0x41, 0x80, 0x07, 0x32
    .byte 0x82, 0x80, 0x05, 0x33, 0xC3, 0x80, 0x10, 0xBC, 0x04, 0xBC, 0x10, 0x47

    thumb_func_start func_0802161C
func_0802161C: @ 0x0802161C
    movs r0, #0
    bx lr

    thumb_func_start func_08021620
func_08021620: @ 0x08021620
    push {lr}
    cmp r0, #0
    beq _0802162A
    cmp r0, #1
    beq _0802162E
_0802162A:
    movs r0, #6
    b _08021630
_0802162E:
    movs r0, #8
_08021630:
    pop {r1}
    bx r1
_08021634:
    .byte 0x70, 0xB5, 0x46, 0x46, 0x40, 0xB4, 0x84, 0xB0, 0x05, 0x1C, 0x68, 0x6B
    .byte 0x7A, 0xF0, 0x78, 0xFA, 0x06, 0x1C, 0x8C, 0x20, 0xDE, 0xF7, 0xC4, 0xFF, 0x80, 0x46, 0x30, 0x1C
    .byte 0xFF, 0xF7, 0xE4, 0xFF, 0x04, 0x1C, 0x30, 0x1C, 0xFF, 0xF7, 0xE2, 0xFF, 0x00, 0x94, 0x01, 0x90
    .byte 0x00, 0x26, 0x02, 0x96, 0x03, 0xA8, 0x06, 0x70, 0x40, 0x46, 0x29, 0x1C, 0x02, 0x22, 0x06, 0x23
    .byte 0x10, 0xF0, 0x24, 0xFF, 0x04, 0x1C, 0xA0, 0x46, 0x41, 0x35, 0x28, 0x78, 0x08, 0x28, 0x15, 0xD1
    .byte 0x20, 0x1C, 0x70, 0x30, 0x08, 0x21, 0x3D, 0xF0, 0xEB, 0xF8, 0x20, 0x1C, 0x84, 0x30, 0x01, 0x21
    .byte 0x01, 0x70, 0x02, 0x30, 0x06, 0x70, 0x01, 0x30, 0x01, 0x70, 0x22, 0x1C, 0x8A, 0x32, 0x02, 0x23
    .byte 0x11, 0x78, 0x04, 0x20, 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0x40, 0x46, 0x04, 0xB0
    .byte 0x08, 0xBC, 0x98, 0x46, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_080216BC
func_080216BC: @ 0x080216BC
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    mov r0, sp
    adds r1, r5, #0
    bl __5ActorRC5Actor
    ldr r3, _08021734 @ =0x00000782
    adds r0, r6, #0
    adds r1, r4, #0
    mov r2, sp
    bl func_08020038
    ldr r0, _08021738 @ =vtable_unk_080E6428
    str r0, [r6, #0x14]
    str r5, [r6, #0x34]
    adds r1, r6, #0
    adds r1, #0x3d
    movs r0, #0
    strb r0, [r1]
    ldr r0, [r4]
    ldr r2, [r0, #0x40]
    adds r0, r4, #0
    movs r1, #0
    bl _call_via_r2
    adds r2, r0, #0
    movs r0, #0
    cmp r2, #0
    beq _0802170E
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x40]
    adds r0, r2, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    rsbs r0, r0, #0
    lsrs r0, r0, #0x1f
_0802170E:
    adds r1, r6, #0
    adds r1, #0x3e
    strb r0, [r1]
    adds r0, r6, #0
    bl func_080220D4
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_08022048
    adds r0, r6, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08021734: .4byte 0x00000782
_08021738: .4byte vtable_unk_080E6428
_0802173C:
    .byte 0x70, 0xB5, 0x82, 0xB0
    .byte 0x05, 0x1C, 0x0E, 0x1C, 0x16, 0x48, 0x68, 0x61, 0x28, 0x1C, 0x3D, 0x30, 0x00, 0x78, 0x00, 0x28
    .byte 0x07, 0xD0, 0x38, 0x21, 0x68, 0x5E, 0x00, 0x04, 0xA8, 0x60, 0x3A, 0x21, 0x68, 0x5E, 0x00, 0x04
    .byte 0xE8, 0x60, 0x6C, 0x6B, 0x68, 0x46, 0x29, 0x1C, 0x10, 0xF0, 0x02, 0xFD, 0x20, 0x1C, 0x69, 0x46
    .byte 0x79, 0xF0, 0xD8, 0xFC, 0x0B, 0x48, 0x68, 0x61, 0x29, 0x69, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68
    .byte 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0xB2, 0xF0, 0xC5, 0xF8, 0x01, 0x20, 0x30, 0x40, 0x00, 0x28
    .byte 0x02, 0xD0, 0x28, 0x1C, 0xDE, 0xF7, 0x38, 0xFF, 0x02, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47
    .byte 0x28, 0x64, 0x0E, 0x08, 0x50, 0x62, 0x0E, 0x08, 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x09, 0x04
    .byte 0x09, 0x0C, 0x0C, 0x4A, 0x00, 0x98, 0x10, 0x40, 0x08, 0x43, 0x0B, 0x49, 0x08, 0x40, 0x00, 0x90
    .byte 0x60, 0x6B, 0x69, 0x46, 0x7A, 0xF0, 0x2E, 0xFA, 0x20, 0x1C, 0x00, 0xF0, 0x83, 0xFC, 0x01, 0x1C
    .byte 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C, 0x00, 0xF0, 0x36, 0xFC, 0x01, 0xB0, 0x10, 0xBC
    .byte 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xF0, 0xB5, 0x57, 0x46
    .byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0xB6, 0xB0, 0x06, 0x1C, 0x30, 0x68, 0x82, 0x46, 0x30, 0x1C
    .byte 0x3E, 0x30, 0x00, 0x78, 0x00, 0x28, 0x00, 0xD0, 0x2F, 0xE3, 0x71, 0x6B, 0x2F, 0x91, 0x08, 0x1C
    .byte 0x7A, 0xF0, 0xFE, 0xF9, 0x05, 0x1C, 0xB2, 0x88, 0x30, 0x92, 0x53, 0x46, 0x19, 0x68, 0x02, 0xA8
    .byte 0x4B, 0x6B, 0x51, 0x46, 0xB2, 0xF0, 0x78, 0xF8, 0x71, 0x69, 0x1F, 0xAC, 0x20, 0x1C, 0xCA, 0x68
    .byte 0x31, 0x1C, 0xB2, 0xF0, 0x6F, 0xF8, 0x00, 0x21, 0x00, 0x20, 0xA0, 0x46, 0x30, 0x9C, 0x08, 0x2C
    .byte 0x00, 0xDC, 0x01, 0x20, 0x00, 0x28, 0x02, 0xD0, 0x01, 0x2D, 0x00, 0xD1, 0x01, 0x21, 0x0A, 0x1C
    .byte 0x00, 0x2A, 0x09, 0xD0, 0x47, 0x46, 0x04, 0x21, 0x78, 0x5E, 0x1F, 0xA9, 0x00, 0x23, 0xC9, 0x5E
    .byte 0x40, 0x1A, 0x10, 0x30, 0x31, 0x90, 0x01, 0xE0, 0x00, 0x24, 0x31, 0x94, 0x00, 0x2A, 0x08, 0xD0
    .byte 0x47, 0x46, 0x06, 0x21, 0x78, 0x5E, 0x02, 0x22, 0xB9, 0x5E, 0x40, 0x1A, 0x10, 0x30, 0x32, 0x90
    .byte 0x01, 0xE0, 0x00, 0x23, 0x32, 0x93, 0x05, 0xAC, 0x21, 0x27, 0x05, 0x97, 0x21, 0x20, 0x40, 0x42
    .byte 0x60, 0x60, 0xA0, 0x60, 0xE7, 0x60, 0x0A, 0xA9, 0x02, 0xA8, 0x8C, 0xC8, 0x8C, 0xC1, 0x1F, 0x98
    .byte 0x20, 0x99, 0x0D, 0x90, 0x0E, 0x91, 0x20, 0x20, 0xA0, 0x62, 0x31, 0x99, 0x10, 0x91, 0x32, 0x9A
    .byte 0x11, 0x92, 0x53, 0x46, 0x18, 0x68, 0x02, 0x6C, 0x50, 0x46, 0x00, 0x21, 0xB2, 0xF0, 0x2A, 0xF8
    .byte 0x81, 0x46, 0x57, 0x46, 0x38, 0x68, 0x02, 0x6C, 0x50, 0x46, 0x4A, 0x21, 0xB2, 0xF0, 0x22, 0xF8
    .byte 0x07, 0x1C, 0x30, 0x1C, 0x3D, 0x30, 0x01, 0x78, 0x35, 0x90, 0x00, 0x29, 0x6E, 0xD0, 0x00, 0x21
    .byte 0xB0, 0x8C, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0x67, 0xD0, 0x00, 0x20, 0x35, 0x99
    .byte 0x08, 0x70, 0x38, 0x22, 0xB0, 0x5E, 0x00, 0x04, 0xB0, 0x60, 0x3A, 0x23, 0xF0, 0x5E, 0x00, 0x04
    .byte 0xF0, 0x60, 0x71, 0x69, 0x21, 0xAC, 0x20, 0x1C, 0xCA, 0x68, 0x31, 0x1C, 0xB2, 0xF0, 0x02, 0xF8
    .byte 0x20, 0x68, 0x61, 0x68, 0x1F, 0x90, 0x20, 0x91, 0x44, 0x46, 0x04, 0x20, 0x25, 0x5E, 0x00, 0x21
    .byte 0x60, 0x5E, 0x2D, 0x1A, 0x10, 0x35, 0xAA, 0x46, 0x06, 0x22, 0xA4, 0x5E, 0x43, 0x46, 0x02, 0x25
    .byte 0x58, 0x5F, 0x24, 0x1A, 0x10, 0x34, 0xA0, 0x46, 0x12, 0xA9, 0x21, 0x20, 0x12, 0x90, 0x21, 0x22
    .byte 0x52, 0x42, 0x4A, 0x60, 0x8A, 0x60, 0xC8, 0x60, 0x17, 0xAA, 0x02, 0xA8, 0x38, 0xC8, 0x38, 0xC2
    .byte 0x1F, 0x9A, 0x20, 0x9B, 0x1A, 0x92, 0x1B, 0x93, 0x20, 0x20, 0x88, 0x62, 0x52, 0x46, 0x1D, 0x92
    .byte 0x43, 0x46, 0x1E, 0x93, 0x05, 0xA8, 0x34, 0x22, 0xB2, 0xF0, 0x14, 0xF8, 0x4C, 0x46, 0x00, 0x2C
    .byte 0x0F, 0xD0, 0xA0, 0x88, 0x30, 0x9D, 0xA8, 0x42, 0x0B, 0xD1, 0x61, 0x69, 0x23, 0xAC, 0x20, 0x1C
    .byte 0xCA, 0x68, 0x49, 0x46, 0xB1, 0xF0, 0xC6, 0xFF, 0x05, 0xA8, 0x21, 0x1C, 0x01, 0x22, 0x8A, 0xF0
    .byte 0x7F, 0xF8, 0x00, 0x2F, 0x00, 0xD1, 0xE2, 0xE1, 0xB8, 0x88, 0x30, 0x99, 0x88, 0x42, 0x00, 0xD0
    .byte 0xDD, 0xE1, 0x79, 0x69, 0x25, 0xAC, 0x20, 0x1C, 0xCA, 0x68, 0x39, 0x1C, 0xB1, 0xF0, 0xB2, 0xFF
    .byte 0x05, 0xA8, 0x21, 0x1C, 0x00, 0x22, 0x8A, 0xF0, 0x6B, 0xF8, 0xD0, 0xE1, 0x4A, 0x46, 0x00, 0x2A
    .byte 0x0F, 0xD0, 0x90, 0x88, 0x30, 0x9B, 0x98, 0x42, 0x0B, 0xD1, 0x51, 0x69, 0x27, 0xAC, 0x20, 0x1C
    .byte 0xCA, 0x68, 0x49, 0x46, 0xB1, 0xF0, 0x9E, 0xFF, 0x05, 0xA8, 0x21, 0x1C, 0x01, 0x22, 0x8A, 0xF0
    .byte 0x57, 0xF8, 0x00, 0x2F, 0x0F, 0xD0, 0xB8, 0x88, 0x30, 0x9C, 0xA0, 0x42, 0x0B, 0xD1, 0x79, 0x69
    .byte 0x29, 0xAC, 0x20, 0x1C, 0xCA, 0x68, 0x39, 0x1C, 0xB1, 0xF0, 0x8C, 0xFF, 0x05, 0xA8, 0x21, 0x1C
    .byte 0x00, 0x22, 0x8A, 0xF0, 0x45, 0xF8, 0x35, 0x9F, 0x38, 0x78, 0x00, 0x28, 0x00, 0xD0, 0x90, 0xE0
    .byte 0x01, 0x2D, 0x00, 0xD0, 0x8D, 0xE0, 0x0A, 0x21, 0x70, 0x5E, 0x33, 0x90, 0x0E, 0x23, 0xF2, 0x5E
    .byte 0x34, 0x92, 0xB4, 0x69, 0xA0, 0x46, 0xF7, 0x69, 0x04, 0x1C, 0x15, 0x1C, 0x00, 0x2F, 0x18, 0xDD
    .byte 0x05, 0x99, 0x0F, 0x98, 0x81, 0x42, 0x04, 0xDD, 0x05, 0xA8, 0x89, 0xF0, 0x0F, 0xFF, 0x05, 0x98
    .byte 0x00, 0xE0, 0x08, 0x1C, 0x00, 0x28, 0x0C, 0xD1, 0x05, 0x99, 0x0F, 0x98, 0x81, 0x42, 0x02, 0xDD
    .byte 0x05, 0xA8, 0x89, 0xF0, 0x03, 0xFF, 0x09, 0xA9, 0x08, 0x78, 0x00, 0x28, 0x01, 0xD0, 0x32, 0x9A
    .byte 0xAD, 0x18, 0x00, 0x2F, 0x19, 0xDA, 0x06, 0x99, 0x0F, 0x98, 0xC1, 0x42, 0x04, 0xDA, 0x05, 0xA8
    .byte 0x89, 0xF0, 0x2E, 0xFF, 0x06, 0x98, 0x00, 0xE0, 0x08, 0x1C, 0x00, 0x28, 0x0D, 0xD1, 0x0F, 0x99
    .byte 0x06, 0x98, 0xC8, 0x42, 0x02, 0xDA, 0x05, 0xA8, 0x89, 0xF0, 0x22, 0xFF, 0x25, 0x23, 0x6B, 0x44
    .byte 0x18, 0x78, 0x00, 0x28, 0x01, 0xD0, 0x32, 0x9F, 0xED, 0x1B, 0x40, 0x46, 0x00, 0x28, 0x19, 0xDA
    .byte 0x07, 0x99, 0x0F, 0x98, 0xC1, 0x42, 0x04, 0xDA, 0x05, 0xA8, 0x89, 0xF0, 0x4D, 0xFF, 0x07, 0x98
    .byte 0x00, 0xE0, 0x08, 0x1C, 0x00, 0x28, 0x0D, 0xD1, 0x0F, 0x99, 0x07, 0x98, 0xC8, 0x42, 0x02, 0xDA
    .byte 0x05, 0xA8, 0x89, 0xF0, 0x41, 0xFF, 0x26, 0x21, 0x69, 0x44, 0x08, 0x78, 0x00, 0x28, 0x01, 0xD0
    .byte 0x31, 0x9A, 0xA4, 0x1A, 0x43, 0x46, 0x00, 0x2B, 0x19, 0xDD, 0x08, 0x99, 0x0F, 0x98, 0x81, 0x42
    .byte 0x04, 0xDD, 0x05, 0xA8, 0x89, 0xF0, 0x6E, 0xFF, 0x08, 0x98, 0x00, 0xE0, 0x08, 0x1C, 0x00, 0x28
    .byte 0x0D, 0xD1, 0x08, 0x99, 0x0F, 0x98, 0x81, 0x42, 0x02, 0xDD, 0x05, 0xA8, 0x89, 0xF0, 0x62, 0xFF
    .byte 0x27, 0x27, 0x6F, 0x44, 0x38, 0x78, 0x00, 0x28, 0x01, 0xD0, 0x31, 0x98, 0x24, 0x18, 0x33, 0x99
    .byte 0x8C, 0x42, 0x02, 0xD1, 0x34, 0x9A, 0x95, 0x42, 0x0B, 0xD0, 0x34, 0x87, 0x75, 0x87, 0x01, 0x20
    .byte 0x35, 0x9B, 0x18, 0x70, 0x30, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x30, 0x1C, 0x06, 0x21, 0x00, 0xF0
    .byte 0x8B, 0xFA, 0x2F, 0x9C, 0x20, 0x6A, 0x01, 0x28, 0x00, 0xD1, 0xA5, 0xE0, 0x01, 0x28, 0x02, 0xDC
    .byte 0x00, 0x28, 0x04, 0xD0, 0x88, 0xE1, 0x02, 0x28, 0x00, 0xD1, 0x17, 0xE1, 0x84, 0xE1, 0x2F, 0x9D
    .byte 0x24, 0x35, 0xA9, 0x46, 0x2F, 0x9F, 0xBC, 0x8C, 0x00, 0x2C, 0x44, 0xD0, 0xB5, 0x69, 0xF7, 0x69
    .byte 0x00, 0x20, 0x80, 0x46, 0x00, 0x2D, 0x0B, 0xDA, 0x07, 0x99, 0x0F, 0x98, 0xC1, 0x42, 0x03, 0xDA
    .byte 0x05, 0xA8, 0x89, 0xF0, 0xE9, 0xFE, 0x07, 0x99, 0x10, 0x20, 0x40, 0x42, 0x81, 0x42, 0x29, 0xDC
    .byte 0x00, 0x2D, 0x0B, 0xDD, 0x08, 0x99, 0x0F, 0x98, 0x81, 0x42, 0x04, 0xDD, 0x05, 0xA8, 0x89, 0xF0
    .byte 0x19, 0xFF, 0x08, 0x98, 0x00, 0xE0, 0x08, 0x1C, 0x0F, 0x28, 0x1B, 0xDD, 0x00, 0x2F, 0x0B, 0xDA
    .byte 0x06, 0x99, 0x0F, 0x98, 0xC1, 0x42, 0x03, 0xDA, 0x05, 0xA8, 0x89, 0xF0, 0x91, 0xFE, 0x06, 0x99
    .byte 0x10, 0x20, 0x40, 0x42, 0x81, 0x42, 0x0D, 0xDC, 0x00, 0x2F, 0x0D, 0xDD, 0x05, 0x99, 0x0F, 0x98
    .byte 0x81, 0x42, 0x04, 0xDD, 0x05, 0xA8, 0x89, 0xF0, 0x49, 0xFE, 0x05, 0x98, 0x00, 0xE0, 0x08, 0x1C
    .byte 0x0F, 0x28, 0x01, 0xDC, 0x01, 0x21, 0x88, 0x46, 0x42, 0x46, 0x00, 0x2A, 0x01, 0xD0, 0x00, 0x24
    .byte 0x4D, 0xE0, 0x01, 0x3C, 0x4B, 0xE0, 0x35, 0x9B, 0x18, 0x78, 0x00, 0x28, 0x47, 0xD1, 0x30, 0x1C
    .byte 0xFE, 0xF7, 0x9E, 0xFA, 0x00, 0x06, 0x00, 0x28, 0x41, 0xD0, 0x54, 0x46, 0x20, 0x68, 0xA2, 0x25
    .byte 0x6D, 0x00, 0x40, 0x19, 0x01, 0x68, 0x50, 0x46, 0xB1, 0xF0, 0x82, 0xFE, 0x80, 0x7A, 0xC0, 0x06
    .byte 0xC0, 0x0E, 0x00, 0x25, 0x06, 0x38, 0x0E, 0x28, 0x00, 0xD9, 0x01, 0x25, 0x2F, 0x98, 0x79, 0xF0
    .byte 0xF7, 0xFF, 0xEC, 0x00, 0x64, 0x1B, 0xE4, 0x00, 0xC1, 0x00, 0x09, 0x1A, 0x89, 0x00, 0x15, 0x48
    .byte 0x09, 0x18, 0x64, 0x18, 0x20, 0x1C, 0x07, 0x21, 0x89, 0xF0, 0xF8, 0xFD, 0x07, 0x1C, 0xB8, 0x00
    .byte 0x24, 0x18, 0x3C, 0x25, 0xA0, 0x78, 0x68, 0x43, 0x89, 0xF0, 0x9E, 0xFD, 0x61, 0x78, 0x69, 0x43
    .byte 0x0C, 0x18, 0x30, 0x1C, 0x20, 0x30, 0x05, 0x78, 0x04, 0x20, 0x89, 0xF0, 0x95, 0xFD, 0x01, 0x1C
    .byte 0x00, 0x29, 0x05, 0xD0, 0x03, 0x29, 0x03, 0xD0, 0x28, 0x1C, 0x89, 0xF0, 0x9B, 0xFD, 0x05, 0x1C
    .byte 0x48, 0x46, 0x87, 0x70, 0x30, 0x1C, 0x39, 0x1C, 0x2A, 0x1C, 0x00, 0xF0, 0xE5, 0xF9, 0x49, 0x46
    .byte 0x0C, 0x80, 0xE9, 0xE0, 0x3C, 0x09, 0x0F, 0x08, 0x2F, 0x9C, 0x24, 0x34, 0x2F, 0x9A, 0x95, 0x8C
    .byte 0x00, 0x2D, 0x00, 0xD0, 0x01, 0x3D, 0x62, 0x88, 0x00, 0x2A, 0x00, 0xD0, 0x01, 0x3A, 0x00, 0x2D
    .byte 0x51, 0xD0, 0x4B, 0x46, 0x00, 0x2B, 0x4E, 0xD0, 0x98, 0x88, 0x30, 0x9F, 0xB8, 0x42, 0x4A, 0xD1
    .byte 0x0A, 0x20, 0x33, 0x5E, 0x0E, 0x27, 0xF1, 0x5F, 0x48, 0x46, 0x0A, 0x27, 0xC0, 0x5F, 0x80, 0x46
    .byte 0x48, 0x46, 0x0E, 0x27, 0xC0, 0x5F, 0x81, 0x46, 0x47, 0x46, 0xF8, 0x1A, 0x00, 0x28, 0x00, 0xDA
    .byte 0x40, 0x42, 0x0F, 0x28, 0x06, 0xDC, 0x4F, 0x46, 0x78, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42
    .byte 0x0F, 0x28, 0x30, 0xDD, 0x35, 0x9F, 0x38, 0x78, 0x00, 0x28, 0x29, 0xD1, 0x00, 0x2A, 0x0F, 0xD0
    .byte 0x04, 0x27, 0xE0, 0x5F, 0xC0, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x1F, 0xDC
    .byte 0x06, 0x27, 0xE0, 0x5F, 0x40, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x17, 0xDC
    .byte 0x30, 0x1C, 0x20, 0x30, 0x00, 0x78, 0x05, 0xAA, 0x00, 0x92, 0x01, 0x90, 0x18, 0x1C, 0x42, 0x46
    .byte 0x4B, 0x46, 0x89, 0xF0, 0x8D, 0xFF, 0x02, 0x1C, 0x30, 0x1C, 0x02, 0x21, 0x00, 0xF0, 0x8C, 0xF9
    .byte 0x1E, 0x20, 0x89, 0xF0, 0x29, 0xFD, 0x42, 0x1C, 0x43, 0x46, 0xA3, 0x80, 0x4F, 0x46, 0xE7, 0x80
    .byte 0x25, 0x80, 0x62, 0x80, 0x88, 0xE0, 0x0B, 0x4A, 0x2B, 0xA9, 0x08, 0x68, 0x10, 0x40, 0xB4, 0x22
    .byte 0x10, 0x43, 0x09, 0x4A, 0x10, 0x40, 0x08, 0x60, 0x2F, 0x98, 0x79, 0xF0, 0x63, 0xFF, 0x30, 0x1C
    .byte 0x00, 0xF0, 0xB8, 0xF9, 0x01, 0x1C, 0x30, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x30, 0x1C, 0x00, 0xF0
    .byte 0x6B, 0xF9, 0x71, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0x2F, 0x98, 0x24, 0x30
    .byte 0x81, 0x46, 0x33, 0x1C, 0x20, 0x33, 0x1C, 0x78, 0x0A, 0x22, 0xB1, 0x5E, 0x8C, 0x46, 0x0E, 0x27
    .byte 0xF5, 0x5F, 0x2C, 0xAA, 0x78, 0x20, 0xD0, 0x21, 0x10, 0x80, 0x51, 0x80, 0x2D, 0xA8, 0xBC, 0x21
    .byte 0x89, 0x00, 0x88, 0x46, 0x84, 0x21, 0x47, 0x46, 0x07, 0x80, 0x41, 0x80, 0x9A, 0x46, 0x01, 0x1C
    .byte 0x30, 0x98, 0x09, 0x28, 0x12, 0xD1, 0x00, 0x2C, 0x10, 0xD1, 0x02, 0x23, 0xD1, 0x5E, 0x28, 0x1C
    .byte 0x08, 0x38, 0x08, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x07, 0x28, 0x28, 0xDC, 0x30, 0x1C
    .byte 0x02, 0x21, 0x42, 0x46, 0x94, 0x23, 0xFE, 0xF7, 0x4F, 0xF8, 0x21, 0xE0, 0x30, 0x9F, 0x02, 0x2F
    .byte 0x1E, 0xD1, 0x01, 0x2C, 0x1C, 0xD1, 0x00, 0x23, 0xC8, 0x5E, 0x64, 0x46, 0x00, 0x1B, 0x00, 0x28
    .byte 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x13, 0xDC, 0x02, 0x27, 0xC9, 0x5F, 0x28, 0x1C, 0x08, 0x30
    .byte 0x08, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x07, 0x28, 0x09, 0xDC, 0x00, 0x20, 0x12, 0x5E
    .byte 0x2C, 0xA8, 0x02, 0x21, 0x43, 0x5E, 0x20, 0x3B, 0x30, 0x1C, 0x09, 0x21, 0xFE, 0xF7, 0x2C, 0xF8
    .byte 0x4A, 0x46, 0x10, 0x88, 0x00, 0x28, 0x02, 0xD0, 0x01, 0x38, 0x10, 0x80, 0x14, 0xE0, 0x13, 0x4A
    .byte 0x2E, 0xA9, 0x08, 0x68, 0x10, 0x40, 0xB4, 0x22, 0x10, 0x43, 0x11, 0x4A, 0x10, 0x40, 0x08, 0x60
    .byte 0x2F, 0x98, 0x79, 0xF0, 0xEF, 0xFE, 0x30, 0x1C, 0x00, 0xF0, 0x44, 0xF9, 0x01, 0x1C, 0x53, 0x46
    .byte 0x1A, 0x78, 0x30, 0x1C, 0x00, 0xF0, 0xF8, 0xF8, 0x35, 0x9C, 0x20, 0x78, 0x05, 0xA9, 0x00, 0x28
    .byte 0x00, 0xD0, 0x00, 0x21, 0x30, 0x1C, 0xFE, 0xF7, 0x83, 0xF9, 0x31, 0x1C, 0x30, 0x31, 0x00, 0x20
    .byte 0x08, 0x70, 0xB0, 0x8C, 0x00, 0x28, 0x05, 0xD0, 0x01, 0x38, 0x04, 0xE0, 0x00, 0x00, 0xFF, 0xFF
    .byte 0xFF, 0xFF, 0x00, 0xFF, 0xF0, 0x8C, 0xB0, 0x84, 0x33, 0x69, 0x00, 0x2B, 0x04, 0xD0, 0x58, 0x68
    .byte 0xC1, 0x68, 0x18, 0x1C, 0xB1, 0xF0, 0x3C, 0xFD, 0x36, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46
    .byte 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x3E, 0x30
    .byte 0x00, 0x78, 0x00, 0x28, 0x0D, 0xD0, 0x20, 0x68, 0x01, 0x68, 0x0A, 0x6C, 0x00, 0x21, 0xB1, 0xF0
    .byte 0x29, 0xFD, 0x41, 0x69, 0xA0, 0x31, 0x09, 0x68, 0xB1, 0xF0, 0x22, 0xFD, 0x00, 0x06, 0x00, 0x28
    .byte 0x03, 0xD1, 0x20, 0x1C, 0x29, 0x1C, 0x10, 0xF0, 0xA9, 0xFA, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_08021EE0
func_08021EE0: @ 0x08021EE0
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, [r4, #0x34]
    bl GetGrowthStage__C5Horse
    adds r5, r0, #0
    cmp r5, #1
    bne _08021F2A
    ldr r1, _08021F34 @ =0xFFFF0000
    ldr r0, [sp]
    ands r0, r1
    movs r1, #0x78
    orrs r0, r1
    ldr r1, _08021F38 @ =0xFF00FFFF
    ands r0, r1
    str r0, [sp]
    ldr r0, [r4, #0x34]
    mov r1, sp
    bl method_0809BC24__5HorsePC15UnkBarnAnimal2C
    adds r0, r4, #0
    bl func_080220D4
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r4, #0
    bl func_08022048
    adds r0, r4, #0
    adds r0, #0x3e
    strb r5, [r0]
    ldr r0, [r4, #0x34]
    bl SetHasPlayedToday__3Pet
_08021F2A:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08021F34: .4byte 0xFFFF0000
_08021F38: .4byte 0xFF00FFFF

    thumb_func_start func_08021F3C
func_08021F3C: @ 0x08021F3C
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x3e
    movs r0, #0
    strb r0, [r1]
    ldr r1, _08021F80 @ =0xFFFF0000
    ldr r0, [sp]
    ands r0, r1
    movs r1, #0x78
    orrs r0, r1
    ldr r1, _08021F84 @ =0xFF00FFFF
    ands r0, r1
    str r0, [sp]
    ldr r0, [r4, #0x34]
    mov r1, sp
    bl method_0809BC24__5HorsePC15UnkBarnAnimal2C
    adds r0, r4, #0
    bl func_080220D4
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r4, #0
    bl func_08022048
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
_08021F80: .4byte 0xFFFF0000
_08021F84: .4byte 0xFF00FFFF

    thumb_func_start func_08021F88
func_08021F88: @ 0x08021F88
    push {r4, r5, lr}
    adds r4, r1, #0
    ldr r5, _08021FA8 @ =0x080F09AC
    ldr r0, [r0, #0x34]
    bl GetGrowthStage__C5Horse
    lsls r1, r0, #3
    subs r1, r1, r0
    adds r1, r1, r4
    lsls r1, r1, #1
    adds r1, r1, r5
    ldrh r0, [r1]
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
_08021FA8: .4byte 0x080F09AC

    thumb_func_start func_08021FAC
func_08021FAC: @ 0x08021FAC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    cmp r1, #6
    bhi _08021FE0
    lsls r0, r1, #2
    ldr r1, _08021FC0 @ =_08021FC4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08021FC0: .4byte _08021FC4
_08021FC4: @ jump table
    .4byte _08021FE0 @ case 0
    .4byte _08021FE4 @ case 1
    .4byte _08021FEA @ case 2
    .4byte _08021FE0 @ case 3
    .4byte _08021FE0 @ case 4
    .4byte _08021FE0 @ case 5
    .4byte _08021FF0 @ case 6
_08021FE0:
    movs r0, #0
    b _0802203E
_08021FE4:
    movs r0, #0x80
    lsls r0, r0, #8
    b _0802203E
_08021FEA:
    movs r0, #0x80
    lsls r0, r0, #9
    b _0802203E
_08021FF0:
    ldr r1, [r4, #0x14]
    mov r0, sp
    ldr r2, [r1, #0xc]
    adds r1, r4, #0
    bl _call_via_r2
    ldr r0, [sp]
    ldr r1, [sp, #4]
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    add r1, sp, #8
    movs r2, #0x10
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    adds r3, r1, #0
    cmp r0, #0
    blt _08022036
    cmp r0, #1
    ble _0802201E
    cmp r0, #3
    ble _08022028
    b _08022036
_0802201E:
    movs r1, #6
    ldrsh r0, [r3, r1]
    movs r2, #2
    ldrsh r1, [r3, r2]
    b _08022030
_08022028:
    movs r2, #4
    ldrsh r0, [r1, r2]
    movs r2, #0
    ldrsh r1, [r1, r2]
_08022030:
    subs r0, r0, r1
    adds r2, r0, #0
    adds r2, #0x10
_08022036:
    lsls r0, r2, #0x10
    movs r1, #0xc
    bl __divsi3
_0802203E:
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08022048
func_08022048: @ 0x08022048
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    cmp r5, #6
    beq _0802205E
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _0802205E
    movs r5, #6
_0802205E:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08021F88
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq _08022074
    adds r0, r4, #0
    bl func_080321B0
_08022074:
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r6
    beq _08022086
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_08032198
_08022086:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08021FAC
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08020080
    adds r0, r4, #0
    adds r0, #0x3c
    adds r6, r0, #0
    ldrb r0, [r6]
    cmp r5, r0
    beq _080220CA
    adds r0, r4, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #0
    bne _080220CA
    movs r1, #1
    rsbs r1, r1, #0
    cmp r5, #4
    bne _080220B6
    movs r1, #8
_080220B6:
    cmp r1, #0
    blt _080220C4
    adds r0, r4, #0
    movs r2, #1
    bl func_08032384
    b _080220CA
_080220C4:
    adds r0, r4, #0
    bl func_080323C8
_080220CA:
    strb r5, [r6]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080220D4
func_080220D4: @ 0x080220D4
    push {lr}
    ldr r0, [r0, #0x34]
    ldr r1, [r0, #0x20]
    cmp r1, #1
    beq _080220F6
    cmp r1, #1
    bgt _080220E8
    cmp r1, #0
    beq _080220F0
    b _080220EC
_080220E8:
    cmp r1, #2
    beq _080220FA
_080220EC:
    movs r0, #0
    b _080220FC
_080220F0:
    adds r0, #0x26
    ldrb r0, [r0]
    b _080220FC
_080220F6:
    movs r0, #2
    b _080220FC
_080220FA:
    movs r0, #1
_080220FC:
    pop {r1}
    bx r1
_08022100:
    .byte 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x62, 0x6B, 0x10, 0x6A, 0x02, 0x28, 0x1A, 0xD1, 0x0F, 0x49
    .byte 0x00, 0x98, 0x08, 0x40, 0xB4, 0x21, 0x08, 0x43, 0x0D, 0x49, 0x08, 0x40, 0x00, 0x90, 0x10, 0x1C
    .byte 0x69, 0x46, 0x79, 0xF0, 0x7F, 0xFD, 0x20, 0x1C, 0x3D, 0x30, 0x00, 0x78, 0x00, 0x28, 0x09, 0xD1
    .byte 0x20, 0x1C, 0xFF, 0xF7, 0xCF, 0xFF, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C
    .byte 0xFF, 0xF7, 0x82, 0xFF, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFF, 0xFF
    .byte 0xFF, 0xFF, 0x00, 0xFF, 0x00, 0xB5, 0x40, 0x6B, 0x79, 0xF0, 0x6A, 0xF8, 0x01, 0x21, 0x48, 0x40
    .byte 0x02, 0xBC, 0x08, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0x60, 0x6B, 0x79, 0xF0, 0x61, 0xF8, 0x00, 0x06
    .byte 0x00, 0x28, 0x06, 0xD1, 0x60, 0x6B, 0x01, 0x21, 0x79, 0xF0, 0x96, 0xF8, 0x60, 0x6B, 0x79, 0xF0
    .byte 0x7B, 0xF8, 0x20, 0x1C, 0x01, 0x21, 0x00, 0x22, 0x10, 0xF0, 0xFC, 0xF8, 0x20, 0x1C, 0xA7, 0x21
    .byte 0xFD, 0xF7, 0x98, 0xFF, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x81, 0xB0
    .byte 0x04, 0x1C, 0x3B, 0x2A, 0x1E, 0xD9, 0x25, 0x1C, 0x20, 0x35, 0x28, 0x78, 0x88, 0x42, 0x02, 0xD0
    .byte 0x20, 0x1C, 0x0F, 0xF0, 0xF1, 0xFF, 0x0D, 0x49, 0x00, 0x98, 0x08, 0x40, 0x3C, 0x21, 0x08, 0x43
    .byte 0x00, 0x90, 0x60, 0x6B, 0x69, 0x46, 0x79, 0xF0, 0x3B, 0xFD, 0x20, 0x1C, 0x3D, 0x30, 0x00, 0x78
    .byte 0x00, 0x28, 0x07, 0xD1, 0x20, 0x1C, 0xFF, 0xF7, 0x7D, 0xFF, 0x01, 0x1C, 0x2A, 0x78, 0x20, 0x1C
    .byte 0xFF, 0xF7, 0x32, 0xFF, 0x01, 0xB0, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFF, 0xFF

    thumb_func_start func_080221F0
func_080221F0: @ 0x080221F0
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    adds r7, r1, #0
    ldrh r0, [r7]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    ldrh r1, [r6, #4]
    cmp r0, r1
    bne _0802229A
    ldr r0, [r6, #0x34]
    bl GetAffection__C6Animal
    bl func_08020018
    movs r1, #0xa
    ldrsh r3, [r6, r1]
    ldrb r1, [r7, #1]
    lsrs r1, r1, #2
    ldrh r2, [r7, #2]
    ldr r4, _080222A4 @ =0x000003FF
    ands r2, r4
    lsls r2, r2, #6
    orrs r2, r1
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    subs r2, r2, r3
    movs r3, #0xe
    ldrsh r5, [r6, r3]
    ldrb r3, [r7, #3]
    lsrs r3, r3, #2
    ldrh r1, [r7, #4]
    ands r1, r4
    lsls r1, r1, #6
    orrs r1, r3
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    subs r1, r1, r5
    adds r3, r2, #0
    muls r3, r2, r3
    adds r2, r3, #0
    adds r3, r1, #0
    muls r3, r1, r3
    adds r1, r3, #0
    adds r2, r2, r1
    adds r1, r0, #0
    muls r1, r0, r1
    adds r0, r1, #0
    cmp r2, r0
    bgt _0802229A
    ldr r0, [r6, #0x34]
    bl GetAffection__C6Animal
    lsls r1, r0, #4
    subs r1, r1, r0
    lsls r1, r1, #6
    lsrs r1, r1, #8
    movs r3, #0xf0
    lsls r3, r3, #1
    adds r1, r1, r3
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    str r1, [sp]
    ldr r0, [r6, #0x34]
    mov r1, sp
    bl method_0809BC30__5HorsePC18UnkBarnAnimal2C_x2
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    bne _08022294
    adds r0, r6, #0
    bl func_080220D4
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_08022048
_08022294:
    ldr r0, [r6, #0x34]
    bl SetHasTalkedToday__3Pet
_0802229A:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080222A4: .4byte 0x000003FF

    thumb_func_start func_080222A8
func_080222A8: @ 0x080222A8
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #0x10
    adds r6, r0, #0
    mov r8, r1
    adds r4, r2, #0
    adds r0, r4, #0
    bl func_08022320
    adds r5, r0, #0
    adds r0, r4, #0
    bl func_08022334
    str r5, [sp]
    str r0, [sp, #4]
    movs r1, #0
    str r1, [sp, #8]
    add r0, sp, #0xc
    strb r1, [r0]
    adds r0, r6, #0
    mov r1, r8
    movs r2, #5
    movs r3, #0xd
    bl func_080324BC
    ldr r0, _080222F0 @ =vtable_unk_080E64B4
    str r0, [r6, #4]
    adds r0, r6, #0
    add sp, #0x10
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_080222F0: .4byte vtable_unk_080E64B4
_080222F4:
    .byte 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x22, 0x68, 0x90, 0x88, 0x0A, 0x23
    .byte 0xD1, 0x5E, 0x0E, 0x23, 0xD2, 0x5E, 0x10, 0xF0, 0xFB, 0xFA, 0x21, 0x1C, 0x8B, 0x31, 0x08, 0x70
    .byte 0x20, 0x1C, 0x29, 0x1C, 0x10, 0xF0, 0xBC, 0xF9, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

    thumb_func_start func_08022320
func_08022320: @ 0x08022320
    push {lr}
    cmp r0, #0
    beq _0802232A
    cmp r0, #1
    beq _0802232E
_0802232A:
    movs r0, #1
    b _08022330
_0802232E:
    movs r0, #2
_08022330:
    pop {r1}
    bx r1

    thumb_func_start func_08022334
func_08022334: @ 0x08022334
    push {lr}
    cmp r0, #0
    beq _0802233E
    cmp r0, #1
    beq _08022342
_0802233E:
    movs r0, #0xe
    b _08022344
_08022342:
    movs r0, #0xf
_08022344:
    pop {r1}
    bx r1
_08022348:
    .byte 0x70, 0xB5, 0x04, 0x1C, 0x8C, 0x20, 0xDE, 0xF7
    .byte 0x41, 0xF9, 0x05, 0x1C, 0x60, 0x6B, 0x79, 0xF0, 0x5B, 0xFC, 0x02, 0x1C, 0x28, 0x1C, 0x21, 0x1C
    .byte 0xFF, 0xF7, 0xA2, 0xFF, 0x05, 0x1C, 0x2E, 0x1C, 0x3C, 0x34, 0x20, 0x78, 0x04, 0x28, 0x16, 0xD1
    .byte 0x28, 0x1C, 0x70, 0x30, 0x08, 0x21, 0x3C, 0xF0, 0x73, 0xFA, 0x28, 0x1C, 0x84, 0x30, 0x00, 0x22
    .byte 0x01, 0x21, 0x01, 0x70, 0x02, 0x30, 0x02, 0x70, 0x01, 0x30, 0x01, 0x70, 0x2A, 0x1C, 0x8A, 0x32
    .byte 0x02, 0x23, 0x11, 0x78, 0x04, 0x20, 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0x30, 0x1C
    .byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_080223A8
func_080223A8: @ 0x080223A8
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r0, sp
    adds r1, r6, #0
    bl __5ActorRC5Actor
    movs r3, #0xe4
    lsls r3, r3, #3
    adds r0, r4, #0
    adds r1, r5, #0
    mov r2, sp
    bl func_08020038
    ldr r0, _080223EC @ =vtable_unk_080E639C
    str r0, [r4, #0x14]
    str r6, [r4, #0x34]
    adds r0, r4, #0
    bl func_08022950
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r4, #0
    bl func_080228B4
    adds r0, r4, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_080223EC: .4byte vtable_unk_080E639C
_080223F0:
    .byte 0x70, 0xB5, 0x82, 0xB0, 0x05, 0x1C, 0x0E, 0x1C, 0x10, 0x48, 0x68, 0x61, 0x6C, 0x6B, 0x68, 0x46
    .byte 0x29, 0x1C, 0x0F, 0xF0, 0xB5, 0xFE, 0x20, 0x1C, 0x69, 0x46, 0x78, 0xF0, 0x8B, 0xFE, 0x0C, 0x48
    .byte 0x68, 0x61, 0x29, 0x69, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21
    .byte 0xB1, 0xF0, 0x78, 0xFA, 0x01, 0x20, 0x30, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x28, 0x1C, 0xDE, 0xF7
    .byte 0xEB, 0xF8, 0x02, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x9C, 0x63, 0x0E, 0x08
    .byte 0x50, 0x62, 0x0E, 0x08, 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x0C, 0x4A
    .byte 0x00, 0x98, 0x10, 0x40, 0x08, 0x43, 0x0B, 0x49, 0x08, 0x40, 0x00, 0x90, 0x60, 0x6B, 0x69, 0x46
    .byte 0x79, 0xF0, 0x5E, 0xFC, 0x20, 0x1C, 0x00, 0xF0, 0x73, 0xFA, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30
    .byte 0x02, 0x78, 0x20, 0x1C, 0x00, 0xF0, 0x1E, 0xFA, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
    .byte 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0x10, 0xB5, 0x04, 0x1C, 0x00, 0xF0, 0x2A, 0xF8
    .byte 0x21, 0x1C, 0x30, 0x31, 0x00, 0x20, 0x08, 0x70, 0xA0, 0x8C, 0x00, 0x28, 0x01, 0xD0, 0x01, 0x38
    .byte 0x00, 0xE0, 0xE0, 0x8C, 0xA0, 0x84, 0x22, 0x69, 0x00, 0x2A, 0x04, 0xD0, 0x50, 0x68, 0xC1, 0x68
    .byte 0x10, 0x1C, 0xB1, 0xF0, 0x2D, 0xFA, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x30, 0xB5, 0x04, 0x1C
    .byte 0x0D, 0x1C, 0x0F, 0xF0, 0x55, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x03, 0xD0, 0x20, 0x1C, 0x29, 0x1C
    .byte 0x00, 0xF0, 0x08, 0xF8, 0x20, 0x1C, 0x29, 0x1C, 0x0F, 0xF0, 0xA8, 0xFF, 0x30, 0xBC, 0x01, 0xBC
    .byte 0x00, 0x47, 0x00, 0x00

    thumb_func_start func_080224E4
func_080224E4: @ 0x080224E4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x74
    mov sb, r0
    ldr r7, [r0, #0x34]
    ldr r0, [r0]
    mov r8, r0
    mov r2, sb
    ldrh r2, [r2, #4]
    str r2, [sp, #0x64]
    cmp r2, #2
    bne _080225A6
    ldrb r0, [r1, #4]
    cmp r0, #0
    beq _080225A6
    adds r0, r7, #0
    bl GetCurrentOutdoorMinutes__C9Livestock
    adds r5, r0, #0
    adds r0, r7, #0
    movs r1, #1
    bl AddOutdoorMinutes__9LivestockUi
    adds r0, r7, #0
    bl GetCurrentOutdoorMinutes__C9Livestock
    adds r4, r0, #0
    cmp r5, #0xb3
    bhi _08022552
    cmp r4, #0xb3
    bls _08022552
    mov r3, r8
    ldr r0, [r3]
    movs r6, #0xa2
    lsls r6, r6, #1
    adds r0, r0, r6
    ldr r1, [r0]
    mov r0, r8
    bl _call_via_r1
    ldr r0, [r0]
    cmp r0, #0
    beq _08022552
    adds r0, r7, #0
    bl IsUnhappy__C9Livestock
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08022552
    adds r0, r7, #0
    bl SetUnhappy__9Livestock
_08022552:
    cmp r5, #0xef
    bhi _08022560
    cmp r4, #0xef
    bls _08022560
    adds r0, r7, #0
    bl SetFed__7Chicken
_08022560:
    ldr r0, _08022670 @ =0x0000012B
    cmp r5, r0
    bhi _080225A6
    cmp r4, r0
    bls _080225A6
    mov r1, r8
    ldr r0, [r1]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r0, r0, r2
    ldr r1, [r0]
    mov r0, r8
    bl _call_via_r1
    ldr r0, [r0]
    cmp r0, #0
    bne _080225A6
    adds r0, r7, #0
    bl IsUnhappy__C9Livestock
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802259E
    movs r0, #0x64
    bl func_080AB788
    cmp r0, #0x1d
    bhi _0802259E
    adds r0, r7, #0
    bl ResetUnhappy__9Livestock
_0802259E:
    adds r0, r7, #0
    movs r1, #1
    bl AddAffection__6Animali
_080225A6:
    mov r3, r8
    ldr r1, [r3]
    add r0, sp, #8
    ldr r3, [r1, #0x34]
    mov r1, r8
    ldr r2, [sp, #0x64]
    bl _call_via_r3
    mov r6, sb
    ldr r1, [r6, #0x14]
    add r0, sp, #0x48
    ldr r2, [r1, #0xc]
    mov r1, sb
    bl _call_via_r2
    ldr r0, [sp, #0x48]
    ldr r1, [sp, #0x4c]
    str r0, [sp, #0x6c]
    str r1, [sp, #0x70]
    add r4, sp, #0x14
    movs r1, #0x10
    mov sl, r1
    movs r5, #0
    movs r1, #0x11
    str r1, [sp, #0x14]
    movs r0, #0x11
    rsbs r0, r0, #0
    str r0, [r4, #4]
    str r0, [r4, #8]
    str r1, [r4, #0xc]
    add r1, sp, #0x28
    add r0, sp, #8
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldr r0, [sp, #0x6c]
    ldr r1, [sp, #0x70]
    str r0, [sp, #0x34]
    str r1, [sp, #0x38]
    mov r1, sl
    str r1, [r4, #0x28]
    str r5, [r4, #0x2c]
    str r5, [r4, #0x30]
    mov r2, r8
    ldr r0, [r2]
    ldr r2, [r0, #0x40]
    mov r0, r8
    movs r1, #0
    bl _call_via_r2
    adds r6, r0, #0
    mov r3, r8
    ldr r0, [r3]
    ldr r2, [r0, #0x40]
    mov r0, r8
    movs r1, #0x4a
    bl _call_via_r2
    adds r5, r0, #0
    cmp r6, #0
    beq _0802263E
    ldrh r0, [r6, #4]
    ldr r1, [sp, #0x64]
    cmp r0, r1
    bne _0802263E
    ldr r1, [r6, #0x14]
    add r4, sp, #0x50
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    add r0, sp, #0x14
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
_0802263E:
    cmp r5, #0
    beq _08022662
    ldrh r0, [r5, #4]
    ldr r2, [sp, #0x64]
    cmp r0, r2
    bne _08022662
    ldr r1, [r5, #0x14]
    add r4, sp, #0x58
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r5, #0
    bl _call_via_r2
    add r0, sp, #0x14
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
_08022662:
    ldr r0, [r7, #0x24]
    cmp r0, #0
    beq _08022674
    cmp r0, #1
    bne _0802266E
    b _080227B4
_0802266E:
    b _08022894
    .align 2, 0
_08022670: .4byte 0x0000012B
_08022674:
    movs r3, #0x28
    adds r3, r3, r7
    mov sl, r3
    ldrh r4, [r7, #0x28]
    cmp r4, #0
    beq _08022706
    mov r6, sb
    ldr r5, [r6, #0x18]
    ldr r6, [r6, #0x1c]
    movs r7, #0
    cmp r5, #0
    bge _080226A4
    ldr r1, [sp, #0x1c]
    ldr r0, [sp, #0x3c]
    cmn r1, r0
    bge _0802269C
    add r0, sp, #0x14
    bl func_080AB948
    ldr r1, [sp, #0x1c]
_0802269C:
    movs r0, #0x10
    rsbs r0, r0, #0
    cmp r1, r0
    bgt _080226F8
_080226A4:
    cmp r5, #0
    ble _080226C0
    ldr r1, [sp, #0x20]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble _080226BA
    add r0, sp, #0x14
    bl func_080AB9C4
    ldr r0, [sp, #0x20]
    b _080226BC
_080226BA:
    adds r0, r1, #0
_080226BC:
    cmp r0, #0xf
    ble _080226F8
_080226C0:
    cmp r6, #0
    bge _080226DC
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x3c]
    cmn r1, r0
    bge _080226D4
    add r0, sp, #0x14
    bl func_080AB8D0
    ldr r1, [sp, #0x18]
_080226D4:
    movs r0, #0x10
    rsbs r0, r0, #0
    cmp r1, r0
    bgt _080226F8
_080226DC:
    cmp r6, #0
    ble _080226FA
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble _080226F2
    add r0, sp, #0x14
    bl func_080AB85C
    ldr r0, [sp, #0x14]
    b _080226F4
_080226F2:
    adds r0, r1, #0
_080226F4:
    cmp r0, #0xf
    bgt _080226FA
_080226F8:
    movs r7, #1
_080226FA:
    cmp r7, #0
    beq _08022702
    movs r4, #0
    b _080227AA
_08022702:
    subs r4, #1
    b _080227AA
_08022706:
    mov r0, sb
    bl func_08020130
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080227AA
    mov r1, r8
    ldr r0, [r1]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r0, r0, r2
    ldr r1, [r0]
    mov r0, r8
    bl _call_via_r1
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    movs r6, #0
    subs r0, #6
    cmp r0, #0xe
    bls _08022734
    movs r6, #1
_08022734:
    adds r0, r7, #0
    bl GetGrowthStage__C7Chicken
    adds r5, r0, #0
    adds r0, r7, #0
    bl IsSick__C9Livestock
    lsls r4, r6, #2
    adds r4, r4, r6
    lsls r4, r4, #4
    lsls r1, r5, #2
    adds r1, r1, r5
    lsls r1, r1, #3
    ldr r2, _080227B0 @ =0x080F09C8
    adds r1, r1, r2
    adds r4, r4, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    lsls r1, r0, #2
    adds r1, r1, r0
    lsls r1, r1, #2
    adds r4, r4, r1
    adds r0, r4, #0
    movs r1, #5
    bl func_080AB82C
    adds r6, r0, #0
    lsls r0, r6, #2
    adds r4, r4, r0
    movs r5, #0x3c
    ldrb r0, [r4, #2]
    muls r0, r5, r0
    bl func_080AB788
    ldrb r1, [r4, #1]
    muls r1, r5, r1
    adds r4, r1, r0
    mov r0, sb
    adds r0, #0x20
    ldrb r5, [r0]
    movs r0, #4
    bl func_080AB788
    adds r1, r0, #0
    cmp r1, #0
    beq _0802279C
    cmp r1, #3
    beq _0802279C
    adds r0, r5, #0
    bl func_080AB7A4
    adds r5, r0, #0
_0802279C:
    mov r0, sb
    adds r1, r6, #0
    adds r2, r5, #0
    bl func_080228B4
    mov r3, sl
    strb r6, [r3, #2]
_080227AA:
    mov r6, sl
    strh r4, [r6]
    b _08022894
    .align 2, 0
_080227B0: .4byte 0x080F09C8
_080227B4:
    adds r0, r7, #0
    adds r0, #0x28
    str r0, [sp, #0x68]
    ldrh r1, [r7, #0x28]
    mov sl, r1
    cmp r1, #0
    beq _080227C8
    movs r2, #1
    rsbs r2, r2, #0
    add sl, r2
_080227C8:
    ldr r1, [r7, #0x28]
    lsls r0, r1, #9
    lsrs r5, r0, #0x19
    cmp r5, #0
    beq _080227D4
    subs r5, #1
_080227D4:
    ldr r3, [sp, #0x68]
    ldrb r4, [r3, #3]
    cmp r4, #0
    beq _080227DE
    subs r4, #1
_080227DE:
    mov r0, sl
    cmp r0, #0
    beq _08022868
    lsls r0, r1, #8
    cmp r0, #0
    bge _080227FC
    mov r1, r8
    ldr r0, [r1]
    ldr r2, [r0, #0x40]
    mov r0, r8
    movs r1, #0x2d
    bl _call_via_r2
    adds r1, r0, #0
    b _080227FE
_080227FC:
    adds r1, r6, #0
_080227FE:
    cmp r1, #0
    beq _08022868
    ldrh r0, [r1, #4]
    ldr r2, [sp, #0x64]
    cmp r0, r2
    bne _08022868
    cmp r4, #0
    bne _0802284E
    mov r3, sb
    movs r0, #0xa
    ldrsh r6, [r3, r0]
    movs r2, #0xe
    ldrsh r4, [r3, r2]
    movs r3, #0xa
    ldrsh r2, [r1, r3]
    movs r0, #0xe
    ldrsh r3, [r1, r0]
    movs r7, #1
    cmp r5, #0
    beq _08022828
    movs r7, #4
_08022828:
    mov r0, sb
    adds r0, #0x20
    ldrb r0, [r0]
    add r1, sp, #0x14
    str r1, [sp]
    str r0, [sp, #4]
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_080ABE58
    adds r2, r0, #0
    mov r0, sb
    adds r1, r7, #0
    bl func_080228B4
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
_0802284E:
    mov r3, sl
    ldr r2, [sp, #0x68]
    strh r3, [r2]
    movs r0, #0x7f
    ands r5, r0
    ldrb r1, [r2, #2]
    movs r0, #0x80
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r5
    strb r0, [r2, #2]
    strb r4, [r2, #3]
    b _08022894
_08022868:
    ldr r1, _080228AC @ =0xFFFF0000
    ldr r0, [sp, #0x60]
    ands r0, r1
    movs r1, #0xb4
    orrs r0, r1
    ldr r1, _080228B0 @ =0xFF00FFFF
    ands r0, r1
    str r0, [sp, #0x60]
    add r1, sp, #0x60
    adds r0, r7, #0
    bl method_0809BD20__7ChickenPC15UnkBarnAnimal2C
    mov r0, sb
    bl func_08022950
    adds r1, r0, #0
    mov r0, sb
    adds r0, #0x20
    ldrb r2, [r0]
    mov r0, sb
    bl func_080228B4
_08022894:
    mov r0, sb
    add r1, sp, #0x14
    bl func_08020170
    add sp, #0x74
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080228AC: .4byte 0xFFFF0000
_080228B0: .4byte 0xFF00FFFF

    thumb_func_start func_080228B4
func_080228B4: @ 0x080228B4
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    bl func_08022980
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq _080228CE
    adds r0, r4, #0
    bl func_080321B0
_080228CE:
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r6
    beq _080228E0
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_08032198
_080228E0:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080229A4
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08020080
    adds r0, r4, #0
    adds r0, #0x38
    adds r7, r0, #0
    ldrb r0, [r7]
    cmp r5, r0
    beq _08022946
    movs r6, #1
    rsbs r6, r6, #0
    ldr r0, [r4, #0x34]
    bl GetGrowthStage__C7Chicken
    movs r1, #0
    cmp r0, #0
    beq _0802290E
    movs r1, #3
_0802290E:
    cmp r5, r1
    bne _08022930
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    subs r0, #6
    cmp r0, #0xe
    bls _08022930
    movs r6, #8
_08022930:
    cmp r6, #0
    blt _08022940
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #1
    bl func_08032384
    b _08022946
_08022940:
    adds r0, r4, #0
    bl func_080323C8
_08022946:
    strb r5, [r7]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08022950
func_08022950: @ 0x08022950
    push {lr}
    ldr r0, [r0, #0x34]
    ldr r1, [r0, #0x24]
    cmp r1, #0
    beq _08022962
    cmp r1, #1
    beq _08022968
    movs r0, #0
    b _0802297A
_08022962:
    adds r0, #0x2a
    ldrb r0, [r0]
    b _0802297A
_08022968:
    adds r0, #0x2a
    ldrb r1, [r0]
    movs r0, #0x7f
    ands r0, r1
    movs r1, #1
    cmp r0, #0
    beq _08022978
    movs r1, #4
_08022978:
    adds r0, r1, #0
_0802297A:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08022980
func_08022980: @ 0x08022980
    push {r4, r5, lr}
    adds r4, r1, #0
    ldr r5, _080229A0 @ =0x080F0A68
    ldr r0, [r0, #0x34]
    bl GetGrowthStage__C7Chicken
    lsls r1, r0, #2
    adds r1, r1, r0
    adds r1, r1, r4
    lsls r1, r1, #1
    adds r1, r1, r5
    ldrh r0, [r1]
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
_080229A0: .4byte 0x080F0A68

    thumb_func_start func_080229A4
func_080229A4: @ 0x080229A4
    push {lr}
    cmp r1, #1
    beq _080229AE
    movs r0, #0
    b _080229B2
_080229AE:
    movs r0, #0x80
    lsls r0, r0, #8
_080229B2:
    pop {r1}
    bx r1
    .align 2, 0
_080229B8:
    .byte 0x01, 0x20, 0x70, 0x47, 0x00, 0xB5, 0x40, 0x6B
    .byte 0x78, 0xF0, 0xA4, 0xFD, 0x02, 0xBC, 0x08, 0x47, 0x30, 0xB5, 0x04, 0x1C, 0x00, 0x25, 0xA0, 0x88
    .byte 0x02, 0x28, 0x0C, 0xD1, 0x60, 0x6B, 0x78, 0xF0, 0x99, 0xFD, 0x00, 0x06, 0x00, 0x28, 0x06, 0xD1
    .byte 0x60, 0x6B, 0x78, 0xF0, 0x8F, 0xFD, 0x00, 0x06, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x25, 0x28, 0x1C
    .byte 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x78, 0x20
    .byte 0x88, 0xF0, 0xC2, 0xFE, 0xF0, 0x30, 0x00, 0x04, 0x00, 0x0C, 0x1B, 0x4A, 0x00, 0x99, 0x11, 0x40
    .byte 0x01, 0x43, 0x1A, 0x48, 0x01, 0x40, 0xF0, 0x20, 0x80, 0x03, 0x01, 0x43, 0x18, 0x48, 0x01, 0x40
    .byte 0x18, 0x48, 0x01, 0x40, 0x00, 0x91, 0x60, 0x6B, 0x69, 0x46, 0x79, 0xF0, 0x7F, 0xF9, 0x20, 0x1C
    .byte 0xFF, 0xF7, 0x8E, 0xFF, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C, 0xFF, 0xF7
    .byte 0x39, 0xFF, 0x60, 0x6B, 0x0A, 0x21, 0x78, 0xF0, 0x49, 0xFC, 0x60, 0x6B, 0x78, 0xF0, 0xF4, 0xFD
    .byte 0x20, 0x1C, 0x02, 0x21, 0x00, 0x22, 0x0F, 0xF0, 0x95, 0xFC, 0x60, 0x6B, 0x79, 0xF0, 0x26, 0xF9
    .byte 0xA5, 0x21, 0x01, 0x28, 0x00, 0xD1, 0xA6, 0x21, 0x20, 0x1C, 0xFD, 0xF7, 0x2B, 0xFB, 0x01, 0xB0
    .byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x80, 0xFF
    .byte 0xFF, 0xFF, 0x7F, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x10, 0xB5, 0x04, 0x1C, 0x60, 0x6B, 0x78, 0xF0
    .byte 0xC9, 0xFD, 0x60, 0x6B, 0x78, 0xF0, 0x36, 0xFD, 0x00, 0x06, 0x00, 0x28, 0x02, 0xD0, 0x60, 0x6B
    .byte 0x78, 0xF0, 0xD0, 0xFD, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x81, 0xB0
    .byte 0x04, 0x1C, 0x78, 0x20, 0x88, 0xF0, 0x68, 0xFE, 0xF0, 0x30, 0x00, 0x04, 0x00, 0x0C, 0x1B, 0x4A
    .byte 0x00, 0x99, 0x11, 0x40, 0x01, 0x43, 0x1A, 0x48, 0x01, 0x40, 0xF0, 0x20, 0x80, 0x03, 0x01, 0x43
    .byte 0x80, 0x20, 0x00, 0x04, 0x01, 0x43, 0x17, 0x48, 0x01, 0x40, 0x00, 0x91, 0x60, 0x6B, 0x69, 0x46
    .byte 0x79, 0xF0, 0x24, 0xF9, 0x20, 0x1C, 0xFF, 0xF7, 0x33, 0xFF, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30
    .byte 0x02, 0x78, 0x20, 0x1C, 0xFF, 0xF7, 0xDE, 0xFE, 0x60, 0x6B, 0x0A, 0x21, 0x78, 0xF0, 0xEE, 0xFB
    .byte 0x60, 0x6B, 0x78, 0xF0, 0x99, 0xFD, 0x20, 0x1C, 0x02, 0x21, 0x00, 0x22, 0x0F, 0xF0, 0x3A, 0xFC
    .byte 0x60, 0x6B, 0x79, 0xF0, 0xCB, 0xF8, 0xA5, 0x21, 0x01, 0x28, 0x00, 0xD1, 0xA6, 0x21, 0x20, 0x1C
    .byte 0xFD, 0xF7, 0xD0, 0xFA, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFF, 0xFF
    .byte 0xFF, 0xFF, 0x80, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x10, 0xB5, 0x0A, 0x23, 0xCA, 0x5E, 0x0E, 0x24
    .byte 0x0B, 0x5F, 0xD1, 0x1F, 0x01, 0x80, 0x19, 0x1F, 0x41, 0x80, 0x07, 0x32, 0x82, 0x80, 0x05, 0x33
    .byte 0xC3, 0x80, 0x10, 0xBC, 0x04, 0xBC, 0x10, 0x47

    thumb_func_start func_08022B58
func_08022B58: @ 0x08022B58
    movs r0, #0
    bx lr

    thumb_func_start func_08022B5C
func_08022B5C: @ 0x08022B5C
    push {lr}
    cmp r0, #0
    beq _08022B66
    cmp r0, #1
    beq _08022B6A
_08022B66:
    movs r0, #6
    b _08022B6C
_08022B6A:
    movs r0, #7
_08022B6C:
    pop {r1}
    bx r1
_08022B70:
    .byte 0xF0, 0xB5, 0x84, 0xB0, 0x07, 0x1C, 0x78, 0x6B, 0x79, 0xF0, 0x98, 0xF8, 0x05, 0x1C, 0x8C, 0x20
    .byte 0xDD, 0xF7, 0x28, 0xFD, 0x06, 0x1C, 0x28, 0x1C, 0xFF, 0xF7, 0xE6, 0xFF, 0x04, 0x1C, 0x28, 0x1C
    .byte 0xFF, 0xF7, 0xE4, 0xFF, 0x00, 0x94, 0x01, 0x90, 0x00, 0x25, 0x02, 0x95, 0x03, 0xA8, 0x05, 0x70
    .byte 0x30, 0x1C, 0x39, 0x1C, 0x02, 0x22, 0x09, 0x23, 0x0F, 0xF0, 0x88, 0xFC, 0x04, 0x1C, 0x78, 0x6B
    .byte 0x79, 0xF0, 0x7C, 0xF8, 0x00, 0x21, 0x00, 0x28, 0x00, 0xD0, 0x03, 0x21, 0x38, 0x1C, 0x38, 0x30
    .byte 0x00, 0x78, 0x88, 0x42, 0x23, 0xD1, 0x38, 0x68, 0x01, 0x68, 0xA2, 0x22, 0x52, 0x00, 0x89, 0x18
    .byte 0x09, 0x68, 0xB0, 0xF0, 0x9D, 0xFE, 0x80, 0x7A, 0xC0, 0x06, 0xC0, 0x0E, 0x06, 0x38, 0x0E, 0x28
    .byte 0x15, 0xD9, 0x20, 0x1C, 0x70, 0x30, 0x08, 0x21, 0x3B, 0xF0, 0x3A, 0xFE, 0x20, 0x1C, 0x84, 0x30
    .byte 0x01, 0x21, 0x01, 0x70, 0x02, 0x30, 0x05, 0x70, 0x01, 0x30, 0x01, 0x70, 0x23, 0x1C, 0x8A, 0x33
    .byte 0x02, 0x22, 0x19, 0x78, 0x04, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x43, 0x18, 0x70, 0x20, 0x1C
    .byte 0x04, 0xB0, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47

    thumb_func_start func_08022C18
func_08022C18: @ 0x08022C18
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r0, sp
    adds r1, r6, #0
    bl __5ActorRC5Actor
    movs r3, #0xac
    lsls r3, r3, #2
    adds r0, r4, #0
    adds r1, r5, #0
    mov r2, sp
    bl func_08020038
    ldr r0, _08022C5C @ =vtable_unk_080E6310
    str r0, [r4, #0x14]
    str r6, [r4, #0x34]
    adds r0, r4, #0
    bl func_08023378
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r4, #0
    bl func_08023308
    adds r0, r4, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08022C5C: .4byte vtable_unk_080E6310
_08022C60:
    .byte 0x70, 0xB5, 0x82, 0xB0, 0x05, 0x1C, 0x0E, 0x1C, 0x10, 0x48, 0x68, 0x61, 0x6C, 0x6B, 0x68, 0x46
    .byte 0x29, 0x1C, 0x0F, 0xF0, 0x7D, 0xFA, 0x20, 0x1C, 0x69, 0x46, 0x78, 0xF0, 0x53, 0xFA, 0x0C, 0x48
    .byte 0x68, 0x61, 0x29, 0x69, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21
    .byte 0xB0, 0xF0, 0x40, 0xFE, 0x01, 0x20, 0x30, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x28, 0x1C, 0xDD, 0xF7
    .byte 0xB3, 0xFC, 0x02, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x10, 0x63, 0x0E, 0x08
    .byte 0x50, 0x62, 0x0E, 0x08, 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x0C, 0x4A
    .byte 0x00, 0x98, 0x10, 0x40, 0x08, 0x43, 0x0B, 0x49, 0x08, 0x40, 0x00, 0x90, 0x60, 0x6B, 0x69, 0x46
    .byte 0x78, 0xF0, 0x36, 0xFE, 0x20, 0x1C, 0x00, 0xF0, 0x4F, 0xFB, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30
    .byte 0x02, 0x78, 0x20, 0x1C, 0x00, 0xF0, 0x10, 0xFB, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
    .byte 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
    .byte 0xE0, 0xB4, 0xA8, 0xB0, 0x80, 0x46, 0x07, 0x68, 0x40, 0x6B, 0x81, 0x46, 0x42, 0x46, 0x92, 0x88
    .byte 0x24, 0x92, 0x02, 0x2A, 0x62, 0xD1, 0x08, 0x79, 0x00, 0x28, 0x5F, 0xD0, 0x48, 0x46, 0x78, 0xF0
    .byte 0xFD, 0xFB, 0x05, 0x1C, 0x48, 0x46, 0x01, 0x21, 0x78, 0xF0, 0x28, 0xFC, 0x48, 0x46, 0x78, 0xF0
    .byte 0xF5, 0xFB, 0x04, 0x1C, 0xB3, 0x2D, 0x15, 0xD8, 0xB3, 0x2C, 0x13, 0xD9, 0x38, 0x68, 0xA2, 0x23
    .byte 0x5B, 0x00, 0xC0, 0x18, 0x01, 0x68, 0x38, 0x1C, 0xB0, 0xF0, 0xE2, 0xFD, 0x00, 0x68, 0x00, 0x28
    .byte 0x08, 0xD0, 0x48, 0x46, 0x78, 0xF0, 0xD6, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x02, 0xD1, 0x48, 0x46
    .byte 0x78, 0xF0, 0x6A, 0xFC, 0xEF, 0x2D, 0x17, 0xD8, 0xEF, 0x2C, 0x15, 0xD9, 0x38, 0x68, 0x84, 0x26
    .byte 0x76, 0x00, 0x80, 0x19, 0x41, 0x46, 0x0A, 0x23, 0xCA, 0x5E, 0x0E, 0x26, 0x8B, 0x5F, 0x12, 0xA9
    .byte 0x0A, 0x80, 0x4B, 0x80, 0x02, 0x68, 0x38, 0x1C, 0xB0, 0xF0, 0xC4, 0xFD, 0x00, 0x06, 0x00, 0x28
    .byte 0x02, 0xD0, 0x48, 0x46, 0x78, 0xF0, 0xAC, 0xFD, 0x43, 0x48, 0x85, 0x42, 0x1E, 0xD8, 0x84, 0x42
    .byte 0x1C, 0xD9, 0x38, 0x68, 0xA2, 0x21, 0x49, 0x00, 0x40, 0x18, 0x01, 0x68, 0x38, 0x1C, 0xB0, 0xF0
    .byte 0xAF, 0xFD, 0x00, 0x68, 0x00, 0x28, 0x11, 0xD1, 0x48, 0x46, 0x78, 0xF0, 0xA3, 0xFB, 0x00, 0x06
    .byte 0x00, 0x28, 0x07, 0xD0, 0x64, 0x20, 0x88, 0xF0, 0xDF, 0xFC, 0x1D, 0x28, 0x02, 0xD8, 0x48, 0x46
    .byte 0x78, 0xF0, 0x38, 0xFC, 0x48, 0x46, 0x01, 0x21, 0x78, 0xF0, 0x66, 0xFA, 0x39, 0x68, 0x02, 0xA8
    .byte 0x4B, 0x6B, 0x39, 0x1C, 0x24, 0x9A, 0xB0, 0xF0, 0x97, 0xFD, 0x42, 0x46, 0x51, 0x69, 0x13, 0xA8
    .byte 0xCA, 0x68, 0x41, 0x46, 0xB0, 0xF0, 0x8E, 0xFD, 0x13, 0x98, 0x14, 0x99, 0x26, 0x90, 0x27, 0x91
    .byte 0x05, 0xAC, 0x10, 0x21, 0x8A, 0x46, 0x00, 0x25, 0x11, 0x21, 0x05, 0x91, 0x11, 0x20, 0x40, 0x42
    .byte 0x60, 0x60, 0xA0, 0x60, 0xE1, 0x60, 0x0A, 0xA9, 0x02, 0xA8, 0x4C, 0xC8, 0x4C, 0xC1, 0x26, 0x98
    .byte 0x27, 0x99, 0x0D, 0x90, 0x0E, 0x91, 0x51, 0x46, 0xA1, 0x62, 0xE5, 0x62, 0x25, 0x63, 0x38, 0x68
    .byte 0x02, 0x6C, 0x38, 0x1C, 0x00, 0x21, 0xB0, 0xF0, 0x6D, 0xFD, 0x06, 0x1C, 0x38, 0x68, 0x02, 0x6C
    .byte 0x38, 0x1C, 0x4A, 0x21, 0xB0, 0xF0, 0x66, 0xFD, 0x05, 0x1C, 0x00, 0x2E, 0x0F, 0xD0, 0xB0, 0x88
    .byte 0x24, 0x9A, 0x90, 0x42, 0x0B, 0xD1, 0x71, 0x69, 0x15, 0xAC, 0x20, 0x1C, 0xCA, 0x68, 0x31, 0x1C
    .byte 0xB0, 0xF0, 0x58, 0xFD, 0x05, 0xA8, 0x21, 0x1C, 0x00, 0x22, 0x88, 0xF0, 0x11, 0xFE, 0x00, 0x2D
    .byte 0x0F, 0xD0, 0xA8, 0x88, 0x24, 0x9B, 0x98, 0x42, 0x0B, 0xD1, 0x69, 0x69, 0x17, 0xAC, 0x20, 0x1C
    .byte 0xCA, 0x68, 0x29, 0x1C, 0xB0, 0xF0, 0x46, 0xFD, 0x05, 0xA8, 0x21, 0x1C, 0x00, 0x22, 0x88, 0xF0
    .byte 0xFF, 0xFD, 0x49, 0x46, 0x88, 0x6A, 0x01, 0x28, 0x00, 0xD1, 0xB7, 0xE0, 0x01, 0x28, 0x05, 0xDC
    .byte 0x00, 0x28, 0x0A, 0xD0, 0x08, 0xE2, 0x00, 0x00, 0x2B, 0x01, 0x00, 0x00, 0x02, 0x28, 0x00, 0xD1
    .byte 0x16, 0xE1, 0x03, 0x28, 0x00, 0xD1, 0x85, 0xE1, 0xFE, 0xE1, 0x2C, 0x22, 0x4A, 0x44, 0x92, 0x46
    .byte 0x4B, 0x46, 0x9C, 0x8D, 0x00, 0x2C, 0x42, 0xD0, 0x46, 0x46, 0xB5, 0x69, 0xF6, 0x69, 0x00, 0x27
    .byte 0x00, 0x2D, 0x0B, 0xDA, 0x07, 0x99, 0x0F, 0x98, 0xC1, 0x42, 0x03, 0xDA, 0x05, 0xA8, 0x88, 0xF0
    .byte 0x33, 0xFD, 0x07, 0x99, 0x10, 0x20, 0x40, 0x42, 0x81, 0x42, 0x29, 0xDC, 0x00, 0x2D, 0x0B, 0xDD
    .byte 0x08, 0x99, 0x0F, 0x98, 0x81, 0x42, 0x04, 0xDD, 0x05, 0xA8, 0x88, 0xF0, 0x63, 0xFD, 0x08, 0x98
    .byte 0x00, 0xE0, 0x08, 0x1C, 0x0F, 0x28, 0x1B, 0xDD, 0x00, 0x2E, 0x0B, 0xDA, 0x06, 0x99, 0x0F, 0x98
    .byte 0xC1, 0x42, 0x03, 0xDA, 0x05, 0xA8, 0x88, 0xF0, 0xDB, 0xFC, 0x06, 0x99, 0x10, 0x20, 0x40, 0x42
    .byte 0x81, 0x42, 0x0D, 0xDC, 0x00, 0x2E, 0x0C, 0xDD, 0x05, 0x99, 0x0F, 0x98, 0x81, 0x42, 0x04, 0xDD
    .byte 0x05, 0xA8, 0x88, 0xF0, 0x93, 0xFC, 0x05, 0x98, 0x00, 0xE0, 0x08, 0x1C, 0x0F, 0x28, 0x00, 0xDC
    .byte 0x01, 0x27, 0x00, 0x2F, 0x01, 0xD0, 0x00, 0x24, 0x5D, 0xE0, 0x01, 0x3C, 0x5B, 0xE0, 0x40, 0x46
    .byte 0xFD, 0xF7, 0xEE, 0xF8, 0x00, 0x06, 0x00, 0x28, 0x55, 0xD0, 0x38, 0x68, 0xA2, 0x21, 0x49, 0x00
    .byte 0x40, 0x18, 0x01, 0x68, 0x38, 0x1C, 0xB0, 0xF0, 0xD3, 0xFC, 0x80, 0x7A, 0xC0, 0x06, 0xC0, 0x0E
    .byte 0x00, 0x21, 0x06, 0x38, 0x0E, 0x28, 0x00, 0xD9, 0x01, 0x21, 0xC8, 0x00, 0x40, 0x1A, 0x40, 0x01
    .byte 0x09, 0x49, 0x45, 0x18, 0x48, 0x46, 0x78, 0xF0, 0xC1, 0xFA, 0x00, 0x06, 0x00, 0x0E, 0xC1, 0x00
    .byte 0x09, 0x1A, 0x8C, 0x00, 0x48, 0x46, 0x78, 0xF0, 0x8B, 0xFC, 0x00, 0x06, 0x00, 0x28, 0x05, 0xD0
    .byte 0x20, 0x1C, 0xA8, 0x30, 0x2D, 0x18, 0x09, 0xE0, 0x7C, 0x0A, 0x0F, 0x08, 0x48, 0x46, 0x78, 0xF0
    .byte 0xEF, 0xFE, 0xC1, 0x00, 0x09, 0x1A, 0xC9, 0x00, 0x69, 0x18, 0x0D, 0x19, 0x28, 0x1C, 0x07, 0x21
    .byte 0x88, 0xF0, 0x34, 0xFC, 0x06, 0x1C, 0xB4, 0x00, 0x2C, 0x19, 0x3C, 0x25, 0xA0, 0x78, 0x68, 0x43
    .byte 0x88, 0xF0, 0xDA, 0xFB, 0x61, 0x78, 0x69, 0x43, 0x0C, 0x18, 0x40, 0x46, 0x20, 0x30, 0x05, 0x78
    .byte 0x04, 0x20, 0x88, 0xF0, 0xD1, 0xFB, 0x01, 0x1C, 0x00, 0x29, 0x05, 0xD0, 0x03, 0x29, 0x03, 0xD0
    .byte 0x28, 0x1C, 0x88, 0xF0, 0xD7, 0xFB, 0x05, 0x1C, 0x40, 0x46, 0x31, 0x1C, 0x2A, 0x1C, 0x00, 0xF0
    .byte 0x83, 0xF9, 0x52, 0x46, 0x96, 0x70, 0x53, 0x46, 0x1C, 0x80, 0x55, 0xE1, 0x48, 0x46, 0x2C, 0x30
    .byte 0x25, 0x90, 0x49, 0x46, 0x89, 0x8D, 0x8A, 0x46, 0x00, 0x29, 0x02, 0xD0, 0x01, 0x22, 0x52, 0x42
    .byte 0x92, 0x44, 0x4B, 0x46, 0xD9, 0x6A, 0x48, 0x02, 0x45, 0x0E, 0x00, 0x2D, 0x00, 0xD0, 0x01, 0x3D
    .byte 0x25, 0x98, 0xC4, 0x78, 0x00, 0x2C, 0x00, 0xD0, 0x01, 0x3C, 0x52, 0x46, 0x00, 0x2A, 0x40, 0xD0
    .byte 0x08, 0x02, 0x00, 0x28, 0x07, 0xDA, 0x38, 0x68, 0x02, 0x6C, 0x38, 0x1C, 0x2D, 0x21, 0xB0, 0xF0
    .byte 0x61, 0xFC, 0x01, 0x1C, 0x00, 0xE0, 0x31, 0x1C, 0x00, 0x29, 0x32, 0xD0, 0x88, 0x88, 0x24, 0x9B
    .byte 0x98, 0x42, 0x2E, 0xD1, 0x00, 0x2C, 0x1F, 0xD1, 0x47, 0x46, 0x0A, 0x20, 0x3E, 0x5E, 0x0E, 0x22
    .byte 0xBC, 0x5E, 0x0A, 0x23, 0xCA, 0x5E, 0x0E, 0x27, 0xCB, 0x5F, 0x01, 0x27, 0x00, 0x2D, 0x00, 0xD0
    .byte 0x06, 0x27, 0x40, 0x46, 0x20, 0x30, 0x00, 0x78, 0x05, 0xA9, 0x00, 0x91, 0x01, 0x90, 0x30, 0x1C
    .byte 0x21, 0x1C, 0x88, 0xF0, 0xE1, 0xFE, 0x02, 0x1C, 0x40, 0x46, 0x39, 0x1C, 0x00, 0xF0, 0x34, 0xF9
    .byte 0x1E, 0x20, 0x88, 0xF0, 0x71, 0xFB, 0x44, 0x1C, 0x53, 0x46, 0x25, 0x9A, 0x13, 0x80, 0x7F, 0x20
    .byte 0x05, 0x40, 0x91, 0x78, 0x80, 0x20, 0x40, 0x42, 0x08, 0x40, 0x28, 0x43, 0x90, 0x70, 0xD4, 0x70
    .byte 0xFA, 0xE0, 0x05, 0x49, 0x19, 0x98, 0x08, 0x40, 0xB4, 0x21, 0x08, 0x43, 0x03, 0x49, 0x08, 0x40
    .byte 0x19, 0x90, 0x19, 0xA9, 0x63, 0xE0, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF
    .byte 0x4C, 0x46, 0x2C, 0x34, 0x4F, 0x46, 0xBD, 0x8D, 0x00, 0x2D, 0x00, 0xD0, 0x01, 0x3D, 0x62, 0x88
    .byte 0x00, 0x2A, 0x00, 0xD0, 0x01, 0x3A, 0x00, 0x2D, 0x48, 0xD0, 0x00, 0x2E, 0x46, 0xD0, 0xB0, 0x88
    .byte 0x24, 0x99, 0x88, 0x42, 0x42, 0xD1, 0x47, 0x46, 0x0A, 0x20, 0x3B, 0x5E, 0x0E, 0x20, 0x39, 0x5E
    .byte 0x0A, 0x20, 0x37, 0x5E, 0xBA, 0x46, 0x0E, 0x27, 0xF6, 0x5F, 0x57, 0x46, 0xF8, 0x1A, 0x00, 0x28
    .byte 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x05, 0xDC, 0x70, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42
    .byte 0x0F, 0x28, 0x2B, 0xDD, 0x00, 0x2A, 0x0F, 0xD0, 0x04, 0x27, 0xE0, 0x5F, 0xC0, 0x1A, 0x00, 0x28
    .byte 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x1E, 0xDC, 0x06, 0x27, 0xE0, 0x5F, 0x40, 0x1A, 0x00, 0x28
    .byte 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x16, 0xDC, 0x40, 0x46, 0x20, 0x30, 0x00, 0x78, 0x05, 0xAA
    .byte 0x00, 0x92, 0x01, 0x90, 0x18, 0x1C, 0x52, 0x46, 0x33, 0x1C, 0x88, 0xF0, 0x69, 0xFD, 0x02, 0x1C
    .byte 0x40, 0x46, 0x01, 0x21, 0x00, 0xF0, 0xC8, 0xF8, 0x1E, 0x20, 0x88, 0xF0, 0x05, 0xFB, 0x42, 0x1C
    .byte 0x53, 0x46, 0xA3, 0x80, 0xE6, 0x80, 0x25, 0x80, 0x62, 0x80, 0x95, 0xE0, 0x0B, 0x49, 0x1A, 0x98
    .byte 0x08, 0x40, 0xB4, 0x21, 0x08, 0x43, 0x0A, 0x49, 0x08, 0x40, 0x1A, 0x90, 0x1A, 0xA9, 0x48, 0x46
    .byte 0x78, 0xF0, 0xCE, 0xFB, 0x40, 0x46, 0x00, 0xF0, 0xE7, 0xF8, 0x01, 0x1C, 0x40, 0x46, 0x20, 0x30
    .byte 0x02, 0x78, 0x40, 0x46, 0x00, 0xF0, 0xA8, 0xF8, 0x7E, 0xE0, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF
    .byte 0xFF, 0xFF, 0x00, 0xFF, 0x4E, 0x46, 0x2C, 0x36, 0x40, 0x46, 0x20, 0x30, 0x01, 0x78, 0x47, 0x46
    .byte 0x0A, 0x22, 0xBC, 0x5E, 0x0E, 0x23, 0xFD, 0x5E, 0x07, 0x1C, 0x24, 0x98, 0x25, 0x28, 0x21, 0xD1
    .byte 0x00, 0x29, 0x1F, 0xD1, 0x1B, 0xA8, 0xE9, 0xF7, 0x37, 0xFE, 0x1B, 0x98, 0x1C, 0x90, 0x1C, 0xA8
    .byte 0x02, 0x22, 0x81, 0x5E, 0x28, 0x1C, 0x08, 0x38, 0x08, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42
    .byte 0x07, 0x28, 0x3F, 0xDC, 0x1D, 0xA8, 0xE6, 0xF7, 0x69, 0xFC, 0x1D, 0x98, 0x1E, 0x90, 0x1E, 0xA8
    .byte 0x00, 0x23, 0xC2, 0x5E, 0x02, 0x21, 0x43, 0x5E, 0x10, 0x33, 0x40, 0x46, 0x02, 0x21, 0xFC, 0xF7
    .byte 0x2B, 0xFE, 0x2F, 0xE0, 0x24, 0x9A, 0x02, 0x2A, 0x2C, 0xD1, 0x01, 0x29, 0x2A, 0xD1, 0x1F, 0xA8
    .byte 0xE6, 0xF7, 0x54, 0xFC, 0x1F, 0x98, 0x20, 0x90, 0x20, 0xA8, 0x01, 0x1C, 0x00, 0x23, 0xC8, 0x5E
    .byte 0x00, 0x1B, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x1B, 0xDC, 0x02, 0x20, 0x09, 0x5E
    .byte 0x28, 0x1C, 0x08, 0x30, 0x08, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x07, 0x28, 0x11, 0xDC
    .byte 0x21, 0xA8, 0xE9, 0xF7, 0xF9, 0xFD, 0x21, 0x99, 0x22, 0xA8, 0x01, 0x60, 0x00, 0x21, 0x42, 0x5E
    .byte 0x02, 0x21, 0x43, 0x5E, 0x20, 0x3B, 0x40, 0x46, 0x25, 0x21, 0xFC, 0xF7, 0xFD, 0xFD, 0x48, 0x46
    .byte 0x78, 0xF0, 0xC2, 0xF9, 0x30, 0x88, 0x00, 0x28, 0x02, 0xD0, 0x01, 0x38, 0x30, 0x80, 0x13, 0xE0
    .byte 0x11, 0x4A, 0x23, 0xA9, 0x08, 0x68, 0x10, 0x40, 0xB4, 0x22, 0x10, 0x43, 0x0F, 0x4A, 0x10, 0x40
    .byte 0x08, 0x60, 0x48, 0x46, 0x78, 0xF0, 0x4C, 0xFB, 0x40, 0x46, 0x00, 0xF0, 0x65, 0xF8, 0x01, 0x1C
    .byte 0x3A, 0x78, 0x40, 0x46, 0x00, 0xF0, 0x28, 0xF8, 0x40, 0x46, 0x05, 0xA9, 0xFC, 0xF7, 0x58, 0xFF
    .byte 0x41, 0x46, 0x30, 0x31, 0x00, 0x20, 0x08, 0x70, 0x42, 0x46, 0x90, 0x8C, 0x00, 0x28, 0x07, 0xD0
    .byte 0x01, 0x38, 0x90, 0x84, 0x07, 0xE0, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF
    .byte 0x43, 0x46, 0xD8, 0x8C, 0x98, 0x84, 0x46, 0x46, 0x32, 0x69, 0x00, 0x2A, 0x04, 0xD0, 0x50, 0x68
    .byte 0xC1, 0x68, 0x10, 0x1C, 0xB0, 0xF0, 0x0C, 0xFB, 0x28, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46
    .byte 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_08023308
func_08023308: @ 0x08023308
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    bl func_080233B4
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq _08023322
    adds r0, r4, #0
    bl func_080321B0
_08023322:
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r6
    beq _08023334
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_08032198
_08023334:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08023400
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08020080
    adds r0, r4, #0
    adds r0, #0x38
    adds r6, r0, #0
    ldrb r0, [r6]
    cmp r5, r0
    beq _0802336E
    movs r1, #1
    rsbs r1, r1, #0
    cmp r5, #4
    bne _0802335A
    movs r1, #8
_0802335A:
    cmp r1, #0
    blt _08023368
    adds r0, r4, #0
    movs r2, #1
    bl func_08032384
    b _0802336E
_08023368:
    adds r0, r4, #0
    bl func_080323C8
_0802336E:
    strb r5, [r6]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08023378
func_08023378: @ 0x08023378
    push {lr}
    ldr r0, [r0, #0x34]
    ldr r1, [r0, #0x28]
    cmp r1, #1
    beq _0802339A
    cmp r1, #1
    bgt _0802338C
    cmp r1, #0
    beq _08023394
    b _08023390
_0802338C:
    cmp r1, #3
    ble _080233AE
_08023390:
    movs r0, #0
    b _080233B0
_08023394:
    adds r0, #0x2e
    ldrb r0, [r0]
    b _080233B0
_0802339A:
    adds r0, #0x2e
    ldrb r1, [r0]
    movs r0, #0x7f
    ands r0, r1
    movs r1, #1
    cmp r0, #0
    beq _080233AA
    movs r1, #6
_080233AA:
    adds r0, r1, #0
    b _080233B0
_080233AE:
    movs r0, #1
_080233B0:
    pop {r1}
    bx r1

    thumb_func_start func_080233B4
func_080233B4: @ 0x080233B4
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    movs r6, #0
    ldr r0, [r4, #0x34]
    bl IsPregnant__C10BarnAnimal
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080233D4
    ldr r0, [r4, #0x34]
    bl GetDaysPregnant__C10BarnAnimal
    rsbs r1, r0, #0
    orrs r1, r0
    lsrs r6, r1, #0x1f
_080233D4:
    ldr r7, _080233E4 @ =0x080F0C3C
    lsls r5, r5, #1
    cmp r6, #0
    beq _080233E8
    adds r0, r5, #0
    adds r0, #0x2a
    b _080233F6
    .align 2, 0
_080233E4: .4byte 0x080F0C3C
_080233E8:
    ldr r0, [r4, #0x34]
    bl GetGrowthStage__C3Cow
    lsls r1, r0, #3
    subs r1, r1, r0
    lsls r1, r1, #1
    adds r0, r5, r1
_080233F6:
    adds r0, r7, r0
    ldrh r0, [r0]
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08023400
func_08023400: @ 0x08023400
    push {lr}
    cmp r1, #1
    beq _0802340A
    movs r0, #0
    b _0802340E
_0802340A:
    movs r0, #0x80
    lsls r0, r0, #8
_0802340E:
    pop {r1}
    bx r1
    .align 2, 0
_08023414:
    .byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x82, 0xB0, 0x06, 0x1C, 0x0F, 0x1C
    .byte 0x38, 0x88, 0x80, 0x05, 0x80, 0x0D, 0xB1, 0x88, 0x88, 0x42, 0x5F, 0xD1, 0x70, 0x6B, 0x78, 0xF0
    .byte 0x3F, 0xFA, 0x00, 0x06, 0x00, 0x28, 0x59, 0xD1, 0x70, 0x6B, 0x77, 0xF0, 0xF5, 0xFE, 0x80, 0x46
    .byte 0xFC, 0xF7, 0xEA, 0xFD, 0x0A, 0x21, 0x73, 0x5E, 0x79, 0x78, 0x89, 0x08, 0x7A, 0x88, 0x13, 0x4C
    .byte 0x22, 0x40, 0x92, 0x01, 0x0A, 0x43, 0x12, 0x04, 0x12, 0x14, 0xD2, 0x1A, 0x0E, 0x23, 0xF5, 0x5E
    .byte 0xFB, 0x78, 0x9B, 0x08, 0xB9, 0x88, 0x21, 0x40, 0x89, 0x01, 0x19, 0x43, 0x09, 0x04, 0x09, 0x14
    .byte 0x49, 0x1B, 0x13, 0x1C, 0x53, 0x43, 0x1A, 0x1C, 0x0B, 0x1C, 0x4B, 0x43, 0x19, 0x1C, 0x52, 0x18
    .byte 0x01, 0x1C, 0x41, 0x43, 0x08, 0x1C, 0x82, 0x42, 0x30, 0xDC, 0x70, 0x6B, 0x78, 0xF0, 0x3E, 0xF8
    .byte 0x00, 0x06, 0x00, 0x28, 0x04, 0xD0, 0x1E, 0x24, 0x0A, 0xE0, 0x00, 0x00, 0xFF, 0x03, 0x00, 0x00
    .byte 0x70, 0x6B, 0x78, 0xF0, 0x2F, 0xF8, 0x00, 0x06, 0x64, 0x24, 0x00, 0x28, 0x00, 0xD0, 0x46, 0x24
    .byte 0x64, 0x20, 0x88, 0xF0, 0x69, 0xF9, 0xA0, 0x42, 0x18, 0xD2, 0x43, 0x46, 0x18, 0x01, 0xC0, 0x1A
    .byte 0x80, 0x01, 0x00, 0x0A, 0xF0, 0x21, 0x49, 0x00, 0x40, 0x18, 0x00, 0x04, 0x00, 0x0C, 0x00, 0x90
    .byte 0x70, 0x6B, 0x69, 0x46, 0x78, 0xF0, 0x40, 0xFA, 0x30, 0x1C, 0xFF, 0xF7, 0x4D, 0xFF, 0x01, 0x1C
    .byte 0x30, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x30, 0x1C, 0xFF, 0xF7, 0x0E, 0xFF, 0x02, 0xB0, 0x08, 0xBC
    .byte 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x62, 0x6B
    .byte 0x90, 0x6A, 0x03, 0x28, 0x15, 0xD1, 0x0D, 0x49, 0x00, 0x98, 0x08, 0x40, 0xB4, 0x21, 0x08, 0x43
    .byte 0x0B, 0x49, 0x08, 0x40, 0x00, 0x90, 0x10, 0x1C, 0x69, 0x46, 0x78, 0xF0, 0x11, 0xFA, 0x20, 0x1C
    .byte 0xFF, 0xF7, 0x2A, 0xFF, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C, 0xFF, 0xF7
    .byte 0xEB, 0xFE, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF
    .byte 0xFF, 0xFF, 0x00, 0xFF, 0x01, 0x20, 0x70, 0x47, 0x30, 0xB5, 0x04, 0x1C, 0x00, 0x25, 0x60, 0x6B
    .byte 0x78, 0xF0, 0xAE, 0xF9, 0x00, 0x06, 0x00, 0x28, 0x06, 0xD1, 0x60, 0x6B, 0x78, 0xF0, 0x54, 0xFC
    .byte 0x00, 0x06, 0x00, 0x0E, 0x40, 0x42, 0xC5, 0x0F, 0x28, 0x1C, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47
    .byte 0x00, 0xB5, 0x40, 0x6B, 0x77, 0xF0, 0x5C, 0xFE, 0x01, 0x21, 0x48, 0x40, 0x02, 0xBC, 0x08, 0x47
    .byte 0x00, 0xB5, 0x40, 0x6B, 0x78, 0xF0, 0x1C, 0xFC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0xB5, 0x40, 0x6B
    .byte 0x77, 0xF0, 0xBC, 0xFF, 0x02, 0xBC, 0x08, 0x47, 0x30, 0xB5, 0x04, 0x1C, 0x00, 0x25, 0xA0, 0x88
    .byte 0x02, 0x28, 0x0C, 0xD1, 0x60, 0x6B, 0x77, 0xF0, 0xB1, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x06, 0xD1
    .byte 0x60, 0x6B, 0x77, 0xF0, 0xA7, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x25, 0x28, 0x1C
    .byte 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x60, 0x6B
    .byte 0x78, 0xF0, 0x6E, 0xF9, 0x00, 0x06, 0x00, 0x28, 0x21, 0xD1, 0x78, 0x20, 0x88, 0xF0, 0xD4, 0xF8
    .byte 0xF0, 0x30, 0x00, 0x04, 0x00, 0x0C, 0x18, 0x4A, 0x00, 0x99, 0x11, 0x40, 0x01, 0x43, 0x17, 0x48
    .byte 0x01, 0x40, 0xF0, 0x20, 0x80, 0x03, 0x01, 0x43, 0x15, 0x48, 0x01, 0x40, 0x15, 0x48, 0x01, 0x40
    .byte 0x00, 0x91, 0x60, 0x6B, 0x69, 0x46, 0x78, 0xF0, 0xA1, 0xF9, 0x20, 0x1C, 0xFF, 0xF7, 0xB4, 0xFE
    .byte 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C, 0xFF, 0xF7, 0x75, 0xFE, 0x60, 0x6B
    .byte 0x0A, 0x21, 0x77, 0xF0, 0x5B, 0xFE, 0x60, 0x6B, 0x78, 0xF0, 0x06, 0xF8, 0x20, 0x1C, 0x00, 0x21
    .byte 0x00, 0x22, 0x0E, 0xF0, 0xA7, 0xFE, 0x20, 0x1C, 0xA2, 0x21, 0xFC, 0xF7, 0x43, 0xFD, 0x01, 0xB0
    .byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x80, 0xFF
    .byte 0xFF, 0xFF, 0x7F, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0xB5, 0x40, 0x6B, 0x78, 0xF0, 0x4E, 0xF9
    .byte 0x01, 0xBC, 0x00, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0x60, 0x6B, 0x77, 0xF0, 0xE1, 0xFD, 0x00, 0x06
    .byte 0x00, 0x28, 0x06, 0xD1, 0x60, 0x6B, 0x01, 0x21, 0x77, 0xF0, 0x16, 0xFE, 0x60, 0x6B, 0x77, 0xF0
    .byte 0xFB, 0xFD, 0x60, 0x6B, 0x77, 0xF0, 0x3E, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x07, 0xD0, 0x64, 0x20
    .byte 0x88, 0xF0, 0x7A, 0xF8, 0x1D, 0x28, 0x02, 0xD8, 0x60, 0x6B, 0x77, 0xF0, 0xD3, 0xFF, 0x60, 0x6B
    .byte 0x77, 0xF0, 0x34, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x08, 0xD1, 0x20, 0x1C, 0x01, 0x21, 0x00, 0x22
    .byte 0x0E, 0xF0, 0x68, 0xFE, 0x20, 0x1C, 0xA1, 0x21, 0xFC, 0xF7, 0x04, 0xFD, 0x10, 0xBC, 0x01, 0xBC
    .byte 0x00, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x04, 0x1C, 0x01, 0x21, 0x00, 0x22, 0x0E, 0xF0, 0x5A, 0xFE
    .byte 0x20, 0x1C, 0xA1, 0x21, 0xFC, 0xF7, 0xF6, 0xFC, 0x60, 0x6B, 0x78, 0xF0, 0xB3, 0xFB, 0x10, 0xBC
    .byte 0x02, 0xBC, 0x08, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0x60, 0x6B, 0x77, 0xF0, 0x9B, 0xFF, 0x60, 0x6B
    .byte 0x77, 0xF0, 0x08, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x02, 0xD0, 0x60, 0x6B, 0x77, 0xF0, 0xA2, 0xFF
    .byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x60, 0x6B
    .byte 0x78, 0xF0, 0xCE, 0xF8, 0x00, 0x06, 0x00, 0x28, 0x22, 0xD1, 0x78, 0x20, 0x88, 0xF0, 0x34, 0xF8
    .byte 0xF0, 0x30, 0x00, 0x04, 0x00, 0x0C, 0x18, 0x4A, 0x00, 0x99, 0x11, 0x40, 0x01, 0x43, 0x17, 0x48
    .byte 0x01, 0x40, 0xF0, 0x20, 0x80, 0x03, 0x01, 0x43, 0x80, 0x20, 0x00, 0x04, 0x01, 0x43, 0x14, 0x48
    .byte 0x01, 0x40, 0x00, 0x91, 0x60, 0x6B, 0x69, 0x46, 0x78, 0xF0, 0x00, 0xF9, 0x20, 0x1C, 0xFF, 0xF7
    .byte 0x13, 0xFE, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C, 0xFF, 0xF7, 0xD4, 0xFD
    .byte 0x60, 0x6B, 0x0A, 0x21, 0x77, 0xF0, 0xBA, 0xFD, 0x60, 0x6B, 0x77, 0xF0, 0x65, 0xFF, 0x20, 0x1C
    .byte 0x00, 0x21, 0x00, 0x22, 0x0E, 0xF0, 0x06, 0xFE, 0x20, 0x1C, 0xA2, 0x21, 0xFC, 0xF7, 0xA2, 0xFC
    .byte 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x80, 0xFF
    .byte 0xFF, 0xFF, 0xFF, 0x00, 0x70, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x0E, 0x1C, 0x15, 0x1C, 0x60, 0x6B
    .byte 0x78, 0xF0, 0x86, 0xF8, 0x00, 0x06, 0x00, 0x28, 0x1C, 0xD1, 0x3B, 0x2D, 0x1A, 0xD9, 0x25, 0x1C
    .byte 0x20, 0x35, 0x28, 0x78, 0xB0, 0x42, 0x03, 0xD0, 0x20, 0x1C, 0x31, 0x1C, 0x0E, 0xF0, 0xEC, 0xFC
    .byte 0x0A, 0x49, 0x00, 0x98, 0x08, 0x40, 0x3C, 0x21, 0x08, 0x43, 0x00, 0x90, 0x60, 0x6B, 0x69, 0x46
    .byte 0x78, 0xF0, 0xCA, 0xF8, 0x20, 0x1C, 0xFF, 0xF7, 0xCF, 0xFD, 0x01, 0x1C, 0x2A, 0x78, 0x20, 0x1C
    .byte 0xFF, 0xF7, 0x92, 0xFD, 0x01, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFF, 0xFF

    thumb_func_start func_080237F0
func_080237F0: @ 0x080237F0
    push {lr}
    cmp r0, #1
    bls _080237FA
    cmp r0, #2
    beq _080237FE
_080237FA:
    movs r0, #1
    b _08023800
_080237FE:
    movs r0, #2
_08023800:
    pop {r1}
    bx r1

    thumb_func_start func_08023804
func_08023804: @ 0x08023804
    push {lr}
    cmp r0, #1
    beq _08023816
    cmp r0, #1
    blo _08023812
    cmp r0, #2
    beq _0802381A
_08023812:
    movs r0, #9
    b _0802381C
_08023816:
    movs r0, #0xb
    b _0802381C
_0802381A:
    movs r0, #0xc
_0802381C:
    pop {r1}
    bx r1
_08023820:
    .byte 0x70, 0xB5, 0x46, 0x46, 0x40, 0xB4, 0x84, 0xB0, 0x05, 0x1C, 0x68, 0x6B, 0x78, 0xF0, 0xB0, 0xFA
    .byte 0x06, 0x1C, 0x8C, 0x20, 0xDC, 0xF7, 0xCE, 0xFE, 0x80, 0x46, 0x30, 0x1C, 0xFF, 0xF7, 0xD8, 0xFF
    .byte 0x04, 0x1C, 0x30, 0x1C, 0xFF, 0xF7, 0xDE, 0xFF, 0x00, 0x94, 0x01, 0x90, 0x00, 0x26, 0x02, 0x96
    .byte 0x03, 0xA8, 0x06, 0x70, 0x40, 0x46, 0x29, 0x1C, 0x04, 0x22, 0x0C, 0x23, 0x0E, 0xF0, 0x2E, 0xFE
    .byte 0x04, 0x1C, 0xA0, 0x46, 0x38, 0x35, 0x28, 0x78, 0x04, 0x28, 0x15, 0xD1, 0x20, 0x1C, 0x70, 0x30
    .byte 0x08, 0x21, 0x3A, 0xF0, 0xF5, 0xFF, 0x20, 0x1C, 0x84, 0x30, 0x01, 0x21, 0x01, 0x70, 0x02, 0x30
    .byte 0x06, 0x70, 0x01, 0x30, 0x01, 0x70, 0x22, 0x1C, 0x8A, 0x32, 0x02, 0x23, 0x11, 0x78, 0x04, 0x20
    .byte 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0x40, 0x46, 0x04, 0xB0, 0x08, 0xBC, 0x98, 0x46
    .byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_080238A8
func_080238A8: @ 0x080238A8
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r0, sp
    adds r1, r6, #0
    bl __5ActorRC5Actor
    ldr r3, _080238EC @ =0x00000921
    adds r0, r4, #0
    adds r1, r5, #0
    mov r2, sp
    bl func_08020038
    ldr r0, _080238F0 @ =vtable_unk_080E6284
    str r0, [r4, #0x14]
    str r6, [r4, #0x34]
    adds r0, r4, #0
    bl func_08024020
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r4, #0
    bl func_08023FB0
    adds r0, r4, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_080238EC: .4byte 0x00000921
_080238F0: .4byte vtable_unk_080E6284
_080238F4:
    .byte 0x70, 0xB5, 0x82, 0xB0, 0x05, 0x1C, 0x0E, 0x1C, 0x10, 0x48, 0x68, 0x61
    .byte 0x6C, 0x6B, 0x68, 0x46, 0x29, 0x1C, 0x0E, 0xF0, 0x33, 0xFC, 0x20, 0x1C, 0x69, 0x46, 0x77, 0xF0
    .byte 0x09, 0xFC, 0x0C, 0x48, 0x68, 0x61, 0x29, 0x69, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68, 0x82, 0x68
    .byte 0x08, 0x1C, 0x03, 0x21, 0xAF, 0xF0, 0xF6, 0xFF, 0x01, 0x20, 0x30, 0x40, 0x00, 0x28, 0x02, 0xD0
    .byte 0x28, 0x1C, 0xDC, 0xF7, 0x69, 0xFE, 0x02, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
    .byte 0x84, 0x62, 0x0E, 0x08, 0x50, 0x62, 0x0E, 0x08, 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x09, 0x04
    .byte 0x09, 0x0C, 0x0C, 0x4A, 0x00, 0x98, 0x10, 0x40, 0x08, 0x43, 0x0B, 0x49, 0x08, 0x40, 0x00, 0x90
    .byte 0x60, 0x6B, 0x69, 0x46, 0x77, 0xF0, 0xEC, 0xFF, 0x20, 0x1C, 0x00, 0xF0, 0x59, 0xFB, 0x01, 0x1C
    .byte 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C, 0x00, 0xF0, 0x1A, 0xFB, 0x01, 0xB0, 0x10, 0xBC
    .byte 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xF0, 0xB5, 0x57, 0x46
    .byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0xA8, 0xB0, 0x80, 0x46, 0x07, 0x68, 0x40, 0x6B, 0x81, 0x46
    .byte 0x42, 0x46, 0x92, 0x88, 0x24, 0x92, 0x02, 0x2A, 0x62, 0xD1, 0x08, 0x79, 0x00, 0x28, 0x5F, 0xD0
    .byte 0x48, 0x46, 0x77, 0xF0, 0xB3, 0xFD, 0x05, 0x1C, 0x48, 0x46, 0x01, 0x21, 0x77, 0xF0, 0xDE, 0xFD
    .byte 0x48, 0x46, 0x77, 0xF0, 0xAB, 0xFD, 0x04, 0x1C, 0xB3, 0x2D, 0x15, 0xD8, 0xB3, 0x2C, 0x13, 0xD9
    .byte 0x38, 0x68, 0xA2, 0x23, 0x5B, 0x00, 0xC0, 0x18, 0x01, 0x68, 0x38, 0x1C, 0xAF, 0xF0, 0x98, 0xFF
    .byte 0x00, 0x68, 0x00, 0x28, 0x08, 0xD0, 0x48, 0x46, 0x77, 0xF0, 0x8C, 0xFD, 0x00, 0x06, 0x00, 0x28
    .byte 0x02, 0xD1, 0x48, 0x46, 0x77, 0xF0, 0x20, 0xFE, 0xEF, 0x2D, 0x17, 0xD8, 0xEF, 0x2C, 0x15, 0xD9
    .byte 0x38, 0x68, 0x84, 0x26, 0x76, 0x00, 0x80, 0x19, 0x41, 0x46, 0x0A, 0x23, 0xCA, 0x5E, 0x0E, 0x26
    .byte 0x8B, 0x5F, 0x12, 0xA9, 0x0A, 0x80, 0x4B, 0x80, 0x02, 0x68, 0x38, 0x1C, 0xAF, 0xF0, 0x7A, 0xFF
    .byte 0x00, 0x06, 0x00, 0x28, 0x02, 0xD0, 0x48, 0x46, 0x77, 0xF0, 0x62, 0xFF, 0x43, 0x48, 0x85, 0x42
    .byte 0x1E, 0xD8, 0x84, 0x42, 0x1C, 0xD9, 0x38, 0x68, 0xA2, 0x21, 0x49, 0x00, 0x40, 0x18, 0x01, 0x68
    .byte 0x38, 0x1C, 0xAF, 0xF0, 0x65, 0xFF, 0x00, 0x68, 0x00, 0x28, 0x11, 0xD1, 0x48, 0x46, 0x77, 0xF0
    .byte 0x59, 0xFD, 0x00, 0x06, 0x00, 0x28, 0x07, 0xD0, 0x64, 0x20, 0x87, 0xF0, 0x95, 0xFE, 0x1D, 0x28
    .byte 0x02, 0xD8, 0x48, 0x46, 0x77, 0xF0, 0xEE, 0xFD, 0x48, 0x46, 0x01, 0x21, 0x77, 0xF0, 0x1C, 0xFC
    .byte 0x39, 0x68, 0x02, 0xA8, 0x4B, 0x6B, 0x39, 0x1C, 0x24, 0x9A, 0xAF, 0xF0, 0x4D, 0xFF, 0x42, 0x46
    .byte 0x51, 0x69, 0x13, 0xA8, 0xCA, 0x68, 0x41, 0x46, 0xAF, 0xF0, 0x44, 0xFF, 0x13, 0x98, 0x14, 0x99
    .byte 0x26, 0x90, 0x27, 0x91, 0x05, 0xAC, 0x10, 0x21, 0x8A, 0x46, 0x00, 0x25, 0x11, 0x21, 0x05, 0x91
    .byte 0x11, 0x20, 0x40, 0x42, 0x60, 0x60, 0xA0, 0x60, 0xE1, 0x60, 0x0A, 0xA9, 0x02, 0xA8, 0x4C, 0xC8
    .byte 0x4C, 0xC1, 0x26, 0x98, 0x27, 0x99, 0x0D, 0x90, 0x0E, 0x91, 0x51, 0x46, 0xA1, 0x62, 0xE5, 0x62
    .byte 0x25, 0x63, 0x38, 0x68, 0x02, 0x6C, 0x38, 0x1C, 0x00, 0x21, 0xAF, 0xF0, 0x23, 0xFF, 0x06, 0x1C
    .byte 0x38, 0x68, 0x02, 0x6C, 0x38, 0x1C, 0x4A, 0x21, 0xAF, 0xF0, 0x1C, 0xFF, 0x05, 0x1C, 0x00, 0x2E
    .byte 0x0F, 0xD0, 0xB0, 0x88, 0x24, 0x9A, 0x90, 0x42, 0x0B, 0xD1, 0x71, 0x69, 0x15, 0xAC, 0x20, 0x1C
    .byte 0xCA, 0x68, 0x31, 0x1C, 0xAF, 0xF0, 0x0E, 0xFF, 0x05, 0xA8, 0x21, 0x1C, 0x00, 0x22, 0x87, 0xF0
    .byte 0xC7, 0xFF, 0x00, 0x2D, 0x0F, 0xD0, 0xA8, 0x88, 0x24, 0x9B, 0x98, 0x42, 0x0B, 0xD1, 0x69, 0x69
    .byte 0x17, 0xAC, 0x20, 0x1C, 0xCA, 0x68, 0x29, 0x1C, 0xAF, 0xF0, 0xFC, 0xFE, 0x05, 0xA8, 0x21, 0x1C
    .byte 0x00, 0x22, 0x87, 0xF0, 0xB5, 0xFF, 0x49, 0x46, 0x88, 0x6A, 0x01, 0x28, 0x00, 0xD1, 0xC1, 0xE0
    .byte 0x01, 0x28, 0x05, 0xDC, 0x00, 0x28, 0x0A, 0xD0, 0x12, 0xE2, 0x00, 0x00, 0x2B, 0x01, 0x00, 0x00
    .byte 0x02, 0x28, 0x00, 0xD1, 0x20, 0xE1, 0x03, 0x28, 0x00, 0xD1, 0x8F, 0xE1, 0x08, 0xE2, 0x2C, 0x22
    .byte 0x4A, 0x44, 0x92, 0x46, 0x4B, 0x46, 0x9C, 0x8D, 0x00, 0x2C, 0x42, 0xD0, 0x46, 0x46, 0xB5, 0x69
    .byte 0xF6, 0x69, 0x00, 0x27, 0x00, 0x2D, 0x0B, 0xDA, 0x07, 0x99, 0x0F, 0x98, 0xC1, 0x42, 0x03, 0xDA
    .byte 0x05, 0xA8, 0x87, 0xF0, 0xE9, 0xFE, 0x07, 0x99, 0x10, 0x20, 0x40, 0x42, 0x81, 0x42, 0x29, 0xDC
    .byte 0x00, 0x2D, 0x0B, 0xDD, 0x08, 0x99, 0x0F, 0x98, 0x81, 0x42, 0x04, 0xDD, 0x05, 0xA8, 0x87, 0xF0
    .byte 0x19, 0xFF, 0x08, 0x98, 0x00, 0xE0, 0x08, 0x1C, 0x0F, 0x28, 0x1B, 0xDD, 0x00, 0x2E, 0x0B, 0xDA
    .byte 0x06, 0x99, 0x0F, 0x98, 0xC1, 0x42, 0x03, 0xDA, 0x05, 0xA8, 0x87, 0xF0, 0x91, 0xFE, 0x06, 0x99
    .byte 0x10, 0x20, 0x40, 0x42, 0x81, 0x42, 0x0D, 0xDC, 0x00, 0x2E, 0x0C, 0xDD, 0x05, 0x99, 0x0F, 0x98
    .byte 0x81, 0x42, 0x04, 0xDD, 0x05, 0xA8, 0x87, 0xF0, 0x49, 0xFE, 0x05, 0x98, 0x00, 0xE0, 0x08, 0x1C
    .byte 0x0F, 0x28, 0x00, 0xDC, 0x01, 0x27, 0x00, 0x2F, 0x01, 0xD0, 0x00, 0x24, 0x67, 0xE0, 0x01, 0x3C
    .byte 0x65, 0xE0, 0x40, 0x46, 0xFC, 0xF7, 0xA4, 0xFA, 0x00, 0x06, 0x00, 0x28, 0x5F, 0xD0, 0x38, 0x68
    .byte 0xA2, 0x21, 0x49, 0x00, 0x40, 0x18, 0x01, 0x68, 0x38, 0x1C, 0xAF, 0xF0, 0x89, 0xFE, 0x80, 0x7A
    .byte 0xC0, 0x06, 0xC0, 0x0E, 0x00, 0x21, 0x06, 0x38, 0x0E, 0x28, 0x00, 0xD9, 0x01, 0x21, 0xC8, 0x00
    .byte 0x40, 0x1A, 0x40, 0x01, 0x09, 0x49, 0x45, 0x18, 0x48, 0x46, 0x77, 0xF0, 0x77, 0xFC, 0x00, 0x06
    .byte 0x00, 0x0E, 0xC1, 0x00, 0x09, 0x1A, 0x8C, 0x00, 0x48, 0x46, 0x77, 0xF0, 0x41, 0xFE, 0x00, 0x06
    .byte 0x00, 0x28, 0x05, 0xD0, 0x20, 0x1C, 0xA8, 0x30, 0x2D, 0x18, 0x13, 0xE0, 0x74, 0x0C, 0x0F, 0x08
    .byte 0x48, 0x46, 0x78, 0xF0, 0x5D, 0xF9, 0x00, 0x06, 0x00, 0x28, 0x03, 0xD0, 0x20, 0x1C, 0x70, 0x30
    .byte 0x2D, 0x18, 0x07, 0xE0, 0x48, 0x46, 0x78, 0xF0, 0x41, 0xF9, 0xC1, 0x00, 0x09, 0x1A, 0xC9, 0x00
    .byte 0x69, 0x18, 0x0D, 0x19, 0x28, 0x1C, 0x07, 0x21, 0x87, 0xF0, 0xE0, 0xFD, 0x06, 0x1C, 0xB4, 0x00
    .byte 0x2C, 0x19, 0x3C, 0x25, 0xA0, 0x78, 0x68, 0x43, 0x87, 0xF0, 0x86, 0xFD, 0x61, 0x78, 0x69, 0x43
    .byte 0x0C, 0x18, 0x40, 0x46, 0x20, 0x30, 0x05, 0x78, 0x04, 0x20, 0x87, 0xF0, 0x7D, 0xFD, 0x01, 0x1C
    .byte 0x00, 0x29, 0x05, 0xD0, 0x03, 0x29, 0x03, 0xD0, 0x28, 0x1C, 0x87, 0xF0, 0x83, 0xFD, 0x05, 0x1C
    .byte 0x40, 0x46, 0x31, 0x1C, 0x2A, 0x1C, 0x00, 0xF0, 0x83, 0xF9, 0x52, 0x46, 0x96, 0x70, 0x53, 0x46
    .byte 0x1C, 0x80, 0x55, 0xE1, 0x48, 0x46, 0x2C, 0x30, 0x25, 0x90, 0x49, 0x46, 0x89, 0x8D, 0x8A, 0x46
    .byte 0x00, 0x29, 0x02, 0xD0, 0x01, 0x22, 0x52, 0x42, 0x92, 0x44, 0x4B, 0x46, 0xD9, 0x6A, 0x48, 0x02
    .byte 0x45, 0x0E, 0x00, 0x2D, 0x00, 0xD0, 0x01, 0x3D, 0x25, 0x98, 0xC4, 0x78, 0x00, 0x2C, 0x00, 0xD0
    .byte 0x01, 0x3C, 0x52, 0x46, 0x00, 0x2A, 0x40, 0xD0, 0x08, 0x02, 0x00, 0x28, 0x07, 0xDA, 0x38, 0x68
    .byte 0x02, 0x6C, 0x38, 0x1C, 0x2D, 0x21, 0xAF, 0xF0, 0x0D, 0xFE, 0x01, 0x1C, 0x00, 0xE0, 0x31, 0x1C
    .byte 0x00, 0x29, 0x32, 0xD0, 0x88, 0x88, 0x24, 0x9B, 0x98, 0x42, 0x2E, 0xD1, 0x00, 0x2C, 0x1F, 0xD1
    .byte 0x47, 0x46, 0x0A, 0x20, 0x3E, 0x5E, 0x0E, 0x22, 0xBC, 0x5E, 0x0A, 0x23, 0xCA, 0x5E, 0x0E, 0x27
    .byte 0xCB, 0x5F, 0x01, 0x27, 0x00, 0x2D, 0x00, 0xD0, 0x06, 0x27, 0x40, 0x46, 0x20, 0x30, 0x00, 0x78
    .byte 0x05, 0xA9, 0x00, 0x91, 0x01, 0x90, 0x30, 0x1C, 0x21, 0x1C, 0x88, 0xF0, 0x8D, 0xF8, 0x02, 0x1C
    .byte 0x40, 0x46, 0x39, 0x1C, 0x00, 0xF0, 0x34, 0xF9, 0x1E, 0x20, 0x87, 0xF0, 0x1D, 0xFD, 0x44, 0x1C
    .byte 0x53, 0x46, 0x25, 0x9A, 0x13, 0x80, 0x7F, 0x20, 0x05, 0x40, 0x91, 0x78, 0x80, 0x20, 0x40, 0x42
    .byte 0x08, 0x40, 0x28, 0x43, 0x90, 0x70, 0xD4, 0x70, 0xFA, 0xE0, 0x05, 0x49, 0x19, 0x98, 0x08, 0x40
    .byte 0xB4, 0x21, 0x08, 0x43, 0x03, 0x49, 0x08, 0x40, 0x19, 0x90, 0x19, 0xA9, 0x63, 0xE0, 0x00, 0x00
    .byte 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0x4C, 0x46, 0x2C, 0x34, 0x4F, 0x46, 0xBD, 0x8D
    .byte 0x00, 0x2D, 0x00, 0xD0, 0x01, 0x3D, 0x62, 0x88, 0x00, 0x2A, 0x00, 0xD0, 0x01, 0x3A, 0x00, 0x2D
    .byte 0x48, 0xD0, 0x00, 0x2E, 0x46, 0xD0, 0xB0, 0x88, 0x24, 0x99, 0x88, 0x42, 0x42, 0xD1, 0x47, 0x46
    .byte 0x0A, 0x20, 0x3B, 0x5E, 0x0E, 0x20, 0x39, 0x5E, 0x0A, 0x20, 0x37, 0x5E, 0xBA, 0x46, 0x0E, 0x27
    .byte 0xF6, 0x5F, 0x57, 0x46, 0xF8, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x05, 0xDC
    .byte 0x70, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x2B, 0xDD, 0x00, 0x2A, 0x0F, 0xD0
    .byte 0x04, 0x27, 0xE0, 0x5F, 0xC0, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x1E, 0xDC
    .byte 0x06, 0x27, 0xE0, 0x5F, 0x40, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x16, 0xDC
    .byte 0x40, 0x46, 0x20, 0x30, 0x00, 0x78, 0x05, 0xAA, 0x00, 0x92, 0x01, 0x90, 0x18, 0x1C, 0x52, 0x46
    .byte 0x33, 0x1C, 0x87, 0xF0, 0x15, 0xFF, 0x02, 0x1C, 0x40, 0x46, 0x01, 0x21, 0x00, 0xF0, 0xC8, 0xF8
    .byte 0x1E, 0x20, 0x87, 0xF0, 0xB1, 0xFC, 0x42, 0x1C, 0x53, 0x46, 0xA3, 0x80, 0xE6, 0x80, 0x25, 0x80
    .byte 0x62, 0x80, 0x95, 0xE0, 0x0B, 0x49, 0x1A, 0x98, 0x08, 0x40, 0xB4, 0x21, 0x08, 0x43, 0x0A, 0x49
    .byte 0x08, 0x40, 0x1A, 0x90, 0x1A, 0xA9, 0x48, 0x46, 0x77, 0xF0, 0x7A, 0xFD, 0x40, 0x46, 0x00, 0xF0
    .byte 0xE7, 0xF8, 0x01, 0x1C, 0x40, 0x46, 0x20, 0x30, 0x02, 0x78, 0x40, 0x46, 0x00, 0xF0, 0xA8, 0xF8
    .byte 0x7E, 0xE0, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0x4E, 0x46, 0x2C, 0x36
    .byte 0x40, 0x46, 0x20, 0x30, 0x01, 0x78, 0x47, 0x46, 0x0A, 0x22, 0xBC, 0x5E, 0x0E, 0x23, 0xFD, 0x5E
    .byte 0x07, 0x1C, 0x24, 0x98, 0x25, 0x28, 0x21, 0xD1, 0x00, 0x29, 0x1F, 0xD1, 0x1B, 0xA8, 0xE8, 0xF7
    .byte 0xE3, 0xFF, 0x1B, 0x98, 0x1C, 0x90, 0x1C, 0xA8, 0x02, 0x22, 0x81, 0x5E, 0x28, 0x1C, 0x08, 0x38
    .byte 0x08, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x07, 0x28, 0x3F, 0xDC, 0x1D, 0xA8, 0xE5, 0xF7
    .byte 0x15, 0xFE, 0x1D, 0x98, 0x1E, 0x90, 0x1E, 0xA8, 0x00, 0x23, 0xC2, 0x5E, 0x02, 0x21, 0x43, 0x5E
    .byte 0x10, 0x33, 0x40, 0x46, 0x02, 0x21, 0xFB, 0xF7, 0xD7, 0xFF, 0x2F, 0xE0, 0x24, 0x9A, 0x02, 0x2A
    .byte 0x2C, 0xD1, 0x01, 0x29, 0x2A, 0xD1, 0x1F, 0xA8, 0xE5, 0xF7, 0x00, 0xFE, 0x1F, 0x98, 0x20, 0x90
    .byte 0x20, 0xA8, 0x01, 0x1C, 0x00, 0x23, 0xC8, 0x5E, 0x00, 0x1B, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42
    .byte 0x0F, 0x28, 0x1B, 0xDC, 0x02, 0x20, 0x09, 0x5E, 0x28, 0x1C, 0x08, 0x30, 0x08, 0x1A, 0x00, 0x28
    .byte 0x00, 0xDA, 0x40, 0x42, 0x07, 0x28, 0x11, 0xDC, 0x21, 0xA8, 0xE8, 0xF7, 0xA5, 0xFF, 0x21, 0x99
    .byte 0x22, 0xA8, 0x01, 0x60, 0x00, 0x21, 0x42, 0x5E, 0x02, 0x21, 0x43, 0x5E, 0x20, 0x3B, 0x40, 0x46
    .byte 0x25, 0x21, 0xFB, 0xF7, 0xA9, 0xFF, 0x48, 0x46, 0x77, 0xF0, 0x6E, 0xFB, 0x30, 0x88, 0x00, 0x28
    .byte 0x02, 0xD0, 0x01, 0x38, 0x30, 0x80, 0x13, 0xE0, 0x11, 0x4A, 0x23, 0xA9, 0x08, 0x68, 0x10, 0x40
    .byte 0xB4, 0x22, 0x10, 0x43, 0x0F, 0x4A, 0x10, 0x40, 0x08, 0x60, 0x48, 0x46, 0x77, 0xF0, 0xF8, 0xFC
    .byte 0x40, 0x46, 0x00, 0xF0, 0x65, 0xF8, 0x01, 0x1C, 0x3A, 0x78, 0x40, 0x46, 0x00, 0xF0, 0x28, 0xF8
    .byte 0x40, 0x46, 0x05, 0xA9, 0xFC, 0xF7, 0x04, 0xF9, 0x41, 0x46, 0x30, 0x31, 0x00, 0x20, 0x08, 0x70
    .byte 0x42, 0x46, 0x90, 0x8C, 0x00, 0x28, 0x07, 0xD0, 0x01, 0x38, 0x90, 0x84, 0x07, 0xE0, 0x00, 0x00
    .byte 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0x43, 0x46, 0xD8, 0x8C, 0x98, 0x84, 0x46, 0x46
    .byte 0x32, 0x69, 0x00, 0x2A, 0x04, 0xD0, 0x50, 0x68, 0xC1, 0x68, 0x10, 0x1C, 0xAF, 0xF0, 0xB8, 0xFC
    .byte 0x28, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_08023FB0
func_08023FB0: @ 0x08023FB0
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    bl func_0802405C
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq _08023FCA
    adds r0, r4, #0
    bl func_080321B0
_08023FCA:
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r6
    beq _08023FDC
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_08032198
_08023FDC:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080240BC
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08020080
    adds r0, r4, #0
    adds r0, #0x38
    adds r6, r0, #0
    ldrb r0, [r6]
    cmp r5, r0
    beq _08024016
    movs r1, #1
    rsbs r1, r1, #0
    cmp r5, #4
    bne _08024002
    movs r1, #8
_08024002:
    cmp r1, #0
    blt _08024010
    adds r0, r4, #0
    movs r2, #1
    bl func_08032384
    b _08024016
_08024010:
    adds r0, r4, #0
    bl func_080323C8
_08024016:
    strb r5, [r6]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08024020
func_08024020: @ 0x08024020
    push {lr}
    ldr r0, [r0, #0x34]
    ldr r1, [r0, #0x28]
    cmp r1, #1
    beq _08024042
    cmp r1, #1
    bgt _08024034
    cmp r1, #0
    beq _0802403C
    b _08024038
_08024034:
    cmp r1, #3
    ble _08024056
_08024038:
    movs r0, #0
    b _08024058
_0802403C:
    adds r0, #0x2e
    ldrb r0, [r0]
    b _08024058
_08024042:
    adds r0, #0x2e
    ldrb r1, [r0]
    movs r0, #0x7f
    ands r0, r1
    movs r1, #1
    cmp r0, #0
    beq _08024052
    movs r1, #6
_08024052:
    adds r0, r1, #0
    b _08024058
_08024056:
    movs r0, #1
_08024058:
    pop {r1}
    bx r1

    thumb_func_start func_0802405C
func_0802405C: @ 0x0802405C
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    movs r6, #0
    ldr r0, [r5, #0x34]
    bl IsPregnant__C10BarnAnimal
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802407C
    ldr r0, [r5, #0x34]
    bl GetDaysPregnant__C10BarnAnimal
    rsbs r1, r0, #0
    orrs r1, r0
    lsrs r6, r1, #0x1f
_0802407C:
    ldr r7, _0802408C @ =0x080F0E34
    lsls r4, r4, #1
    cmp r6, #0
    beq _08024090
    adds r0, r4, #0
    adds r0, #0x2a
    b _080240B0
    .align 2, 0
_0802408C: .4byte 0x080F0E34
_08024090:
    ldr r0, [r5, #0x34]
    bl IsSheared__C5Sheep
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080240A2
    adds r0, r4, #0
    adds r0, #0x1c
    b _080240B0
_080240A2:
    ldr r0, [r5, #0x34]
    bl GetGrowthStage__C5Sheep
    lsls r1, r0, #3
    subs r1, r1, r0
    lsls r1, r1, #1
    adds r0, r4, r1
_080240B0:
    adds r0, r7, r0
    ldrh r0, [r0]
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080240BC
func_080240BC: @ 0x080240BC
    push {lr}
    cmp r1, #1
    beq _080240C6
    movs r0, #0
    b _080240CA
_080240C6:
    movs r0, #0x80
    lsls r0, r0, #8
_080240CA:
    pop {r1}
    bx r1
    .align 2, 0
_080240D0:
    .byte 0xF0, 0xB5, 0x82, 0xB0, 0x06, 0x1C, 0x0F, 0x1C, 0x38, 0x88, 0x80, 0x05, 0x80, 0x0D, 0xB1, 0x88
    .byte 0x88, 0x42, 0x5F, 0xD1, 0x70, 0x6B, 0x77, 0xF0, 0xE3, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x59, 0xD1
    .byte 0x70, 0x6B, 0x77, 0xF0, 0x99, 0xF8, 0xFB, 0xF7, 0x8F, 0xFF, 0x0A, 0x21, 0x73, 0x5E, 0x79, 0x78
    .byte 0x89, 0x08, 0x7A, 0x88, 0x12, 0x4C, 0x22, 0x40, 0x92, 0x01, 0x0A, 0x43, 0x12, 0x04, 0x12, 0x14
    .byte 0xD2, 0x1A, 0x0E, 0x23, 0xF5, 0x5E, 0xFB, 0x78, 0x9B, 0x08, 0xB9, 0x88, 0x21, 0x40, 0x89, 0x01
    .byte 0x19, 0x43, 0x09, 0x04, 0x09, 0x14, 0x49, 0x1B, 0x13, 0x1C, 0x53, 0x43, 0x1A, 0x1C, 0x0B, 0x1C
    .byte 0x4B, 0x43, 0x19, 0x1C, 0x52, 0x18, 0x01, 0x1C, 0x41, 0x43, 0x08, 0x1C, 0x82, 0x42, 0x31, 0xDC
    .byte 0x70, 0x6B, 0x77, 0xF0, 0xE3, 0xF9, 0x00, 0x06, 0x00, 0x28, 0x03, 0xD0, 0x1E, 0x24, 0x09, 0xE0
    .byte 0xFF, 0x03, 0x00, 0x00, 0x70, 0x6B, 0x77, 0xF0, 0xD5, 0xF9, 0x00, 0x06, 0x64, 0x24, 0x00, 0x28
    .byte 0x00, 0xD0, 0x46, 0x24, 0x64, 0x20, 0x87, 0xF0, 0x0F, 0xFB, 0xA0, 0x42, 0x1A, 0xD2, 0x70, 0x6B
    .byte 0x77, 0xF0, 0x5A, 0xF8, 0x01, 0x01, 0x09, 0x1A, 0x89, 0x01, 0x09, 0x0A, 0xF0, 0x23, 0x5B, 0x00
    .byte 0xC9, 0x18, 0x09, 0x04, 0x09, 0x0C, 0x00, 0x91, 0x70, 0x6B, 0x69, 0x46, 0x77, 0xF0, 0xE4, 0xFB
    .byte 0x30, 0x1C, 0xFF, 0xF7, 0x45, 0xFF, 0x01, 0x1C, 0x30, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x30, 0x1C
    .byte 0xFF, 0xF7, 0x06, 0xFF, 0x02, 0xB0, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x10, 0xB5, 0x81, 0xB0
    .byte 0x04, 0x1C, 0x62, 0x6B, 0x90, 0x6A, 0x03, 0x28, 0x15, 0xD1, 0x0D, 0x49, 0x00, 0x98, 0x08, 0x40
    .byte 0xB4, 0x21, 0x08, 0x43, 0x0B, 0x49, 0x08, 0x40, 0x00, 0x90, 0x10, 0x1C, 0x69, 0x46, 0x77, 0xF0
    .byte 0xB7, 0xFB, 0x20, 0x1C, 0xFF, 0xF7, 0x24, 0xFF, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78
    .byte 0x20, 0x1C, 0xFF, 0xF7, 0xE5, 0xFE, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
    .byte 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0x01, 0x20, 0x70, 0x47, 0x30, 0xB5, 0x04, 0x1C
    .byte 0x00, 0x25, 0x60, 0x6B, 0x77, 0xF0, 0x54, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x06, 0xD1, 0x60, 0x6B
    .byte 0x77, 0xF0, 0x9A, 0xFE, 0x00, 0x06, 0x00, 0x0E, 0x40, 0x42, 0xC5, 0x0F, 0x28, 0x1C, 0x30, 0xBC
    .byte 0x02, 0xBC, 0x08, 0x47, 0x00, 0xB5, 0x40, 0x6B, 0x77, 0xF0, 0x02, 0xF8, 0x01, 0x21, 0x48, 0x40
    .byte 0x02, 0xBC, 0x08, 0x47, 0x00, 0xB5, 0x40, 0x6B, 0x77, 0xF0, 0x6E, 0xFE, 0x02, 0xBC, 0x08, 0x47
    .byte 0x00, 0xB5, 0x40, 0x6B, 0x77, 0xF0, 0x62, 0xF9, 0x02, 0xBC, 0x08, 0x47, 0x30, 0xB5, 0x04, 0x1C
    .byte 0x00, 0x25, 0xA0, 0x88, 0x02, 0x28, 0x0C, 0xD1, 0x60, 0x6B, 0x77, 0xF0, 0x57, 0xF9, 0x00, 0x06
    .byte 0x00, 0x28, 0x06, 0xD1, 0x60, 0x6B, 0x77, 0xF0, 0x4D, 0xF9, 0x00, 0x06, 0x00, 0x28, 0x00, 0xD1
    .byte 0x01, 0x25, 0x28, 0x1C, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x81, 0xB0
    .byte 0x04, 0x1C, 0x60, 0x6B, 0x77, 0xF0, 0x14, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x21, 0xD1, 0x78, 0x20
    .byte 0x87, 0xF0, 0x7A, 0xFA, 0xF0, 0x30, 0x00, 0x04, 0x00, 0x0C, 0x18, 0x4A, 0x00, 0x99, 0x11, 0x40
    .byte 0x01, 0x43, 0x17, 0x48, 0x01, 0x40, 0xF0, 0x20, 0x80, 0x03, 0x01, 0x43, 0x15, 0x48, 0x01, 0x40
    .byte 0x15, 0x48, 0x01, 0x40, 0x00, 0x91, 0x60, 0x6B, 0x69, 0x46, 0x77, 0xF0, 0x47, 0xFB, 0x20, 0x1C
    .byte 0xFF, 0xF7, 0xAE, 0xFE, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C, 0xFF, 0xF7
    .byte 0x6F, 0xFE, 0x60, 0x6B, 0x0A, 0x21, 0x77, 0xF0, 0x01, 0xF8, 0x60, 0x6B, 0x77, 0xF0, 0xAC, 0xF9
    .byte 0x20, 0x1C, 0x00, 0x21, 0x00, 0x22, 0x0E, 0xF0, 0x4D, 0xF8, 0x20, 0x1C, 0xA4, 0x21, 0xFB, 0xF7
    .byte 0xE9, 0xFE, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF
    .byte 0xFF, 0xFF, 0x80, 0xFF, 0xFF, 0xFF, 0x7F, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0xB5, 0x40, 0x6B
    .byte 0x77, 0xF0, 0xF4, 0xFA, 0x01, 0xBC, 0x00, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0x60, 0x6B, 0x76, 0xF0
    .byte 0x87, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x06, 0xD1, 0x60, 0x6B, 0x01, 0x21, 0x76, 0xF0, 0xBC, 0xFF
    .byte 0x60, 0x6B, 0x76, 0xF0, 0xA1, 0xFF, 0x60, 0x6B, 0x77, 0xF0, 0xE4, 0xF8, 0x00, 0x06, 0x00, 0x28
    .byte 0x07, 0xD0, 0x64, 0x20, 0x87, 0xF0, 0x20, 0xFA, 0x1D, 0x28, 0x02, 0xD8, 0x60, 0x6B, 0x77, 0xF0
    .byte 0x79, 0xF9, 0x60, 0x6B, 0x77, 0xF0, 0xDA, 0xF8, 0x00, 0x06, 0x00, 0x28, 0x08, 0xD1, 0x20, 0x1C
    .byte 0x01, 0x21, 0x00, 0x22, 0x0E, 0xF0, 0x0E, 0xF8, 0x20, 0x1C, 0xA3, 0x21, 0xFB, 0xF7, 0xAA, 0xFE
    .byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x04, 0x1C, 0x01, 0x21, 0x00, 0x22
    .byte 0x0E, 0xF0, 0x00, 0xF8, 0x20, 0x1C, 0xA3, 0x21, 0xFB, 0xF7, 0x9C, 0xFE, 0x60, 0x6B, 0x77, 0xF0
    .byte 0xF9, 0xFD, 0x05, 0x1C, 0x20, 0x1C, 0x38, 0x30, 0x01, 0x78, 0x20, 0x1C, 0xFF, 0xF7, 0x5E, 0xFE
    .byte 0x01, 0x1C, 0x60, 0x8C, 0x88, 0x42, 0x02, 0xD0, 0x20, 0x1C, 0x0D, 0xF0, 0x01, 0xFF, 0x28, 0x1C
    .byte 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x04, 0x1C, 0x60, 0x6B, 0x77, 0xF0
    .byte 0x31, 0xF9, 0x60, 0x6B, 0x77, 0xF0, 0x9E, 0xF8, 0x00, 0x06, 0x00, 0x28, 0x02, 0xD0, 0x60, 0x6B
    .byte 0x77, 0xF0, 0x38, 0xF9, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x81, 0xB0
    .byte 0x04, 0x1C, 0x60, 0x6B, 0x77, 0xF0, 0x64, 0xFA, 0x00, 0x06, 0x00, 0x28, 0x22, 0xD1, 0x78, 0x20
    .byte 0x87, 0xF0, 0xCA, 0xF9, 0xF0, 0x30, 0x00, 0x04, 0x00, 0x0C, 0x18, 0x4A, 0x00, 0x99, 0x11, 0x40
    .byte 0x01, 0x43, 0x17, 0x48, 0x01, 0x40, 0xF0, 0x20, 0x80, 0x03, 0x01, 0x43, 0x80, 0x20, 0x00, 0x04
    .byte 0x01, 0x43, 0x14, 0x48, 0x01, 0x40, 0x00, 0x91, 0x60, 0x6B, 0x69, 0x46, 0x77, 0xF0, 0x96, 0xFA
    .byte 0x20, 0x1C, 0xFF, 0xF7, 0xFD, 0xFD, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C
    .byte 0xFF, 0xF7, 0xBE, 0xFD, 0x60, 0x6B, 0x0A, 0x21, 0x76, 0xF0, 0x50, 0xFF, 0x60, 0x6B, 0x77, 0xF0
    .byte 0xFB, 0xF8, 0x20, 0x1C, 0x00, 0x21, 0x00, 0x22, 0x0D, 0xF0, 0x9C, 0xFF, 0x20, 0x1C, 0xA4, 0x21
    .byte 0xFB, 0xF7, 0x38, 0xFE, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFF, 0xFF
    .byte 0xFF, 0xFF, 0x80, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x70, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x0E, 0x1C
    .byte 0x15, 0x1C, 0x60, 0x6B, 0x77, 0xF0, 0x1C, 0xFA, 0x00, 0x06, 0x00, 0x28, 0x1C, 0xD1, 0x3B, 0x2D
    .byte 0x1A, 0xD9, 0x25, 0x1C, 0x20, 0x35, 0x28, 0x78, 0xB0, 0x42, 0x03, 0xD0, 0x20, 0x1C, 0x31, 0x1C
    .byte 0x0D, 0xF0, 0x82, 0xFE, 0x0A, 0x49, 0x00, 0x98, 0x08, 0x40, 0x3C, 0x21, 0x08, 0x43, 0x00, 0x90
    .byte 0x60, 0x6B, 0x69, 0x46, 0x77, 0xF0, 0x60, 0xFA, 0x20, 0x1C, 0xFF, 0xF7, 0xB9, 0xFD, 0x01, 0x1C
    .byte 0x2A, 0x78, 0x20, 0x1C, 0xFF, 0xF7, 0x7C, 0xFD, 0x01, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47
    .byte 0x00, 0x00, 0xFF, 0xFF

    thumb_func_start func_080244C4
func_080244C4: @ 0x080244C4
    push {lr}
    cmp r0, #0
    beq _080244CE
    cmp r0, #1
    beq _080244D2
_080244CE:
    movs r0, #1
    b _080244D4
_080244D2:
    movs r0, #2
_080244D4:
    pop {r1}
    bx r1

    thumb_func_start func_080244D8
func_080244D8: @ 0x080244D8
    push {lr}
    cmp r0, #0
    beq _080244E2
    cmp r0, #1
    beq _080244E6
_080244E2:
    movs r0, #0xa
    b _080244E8
_080244E6:
    movs r0, #0xd
_080244E8:
    pop {r1}
    bx r1
_080244EC:
    .byte 0x70, 0xB5, 0x46, 0x46
    .byte 0x40, 0xB4, 0x84, 0xB0, 0x05, 0x1C, 0x68, 0x6B, 0x77, 0xF0, 0xF0, 0xFC, 0x06, 0x1C, 0x8C, 0x20
    .byte 0xDC, 0xF7, 0x68, 0xF8, 0x80, 0x46, 0x30, 0x1C, 0xFF, 0xF7, 0xDC, 0xFF, 0x04, 0x1C, 0x30, 0x1C
    .byte 0xFF, 0xF7, 0xE2, 0xFF, 0x00, 0x94, 0x01, 0x90, 0x00, 0x26, 0x02, 0x96, 0x03, 0xA8, 0x06, 0x70
    .byte 0x40, 0x46, 0x29, 0x1C, 0x04, 0x22, 0x0B, 0x23, 0x0D, 0xF0, 0xC8, 0xFF, 0x04, 0x1C, 0xA0, 0x46
    .byte 0x38, 0x35, 0x28, 0x78, 0x04, 0x28, 0x15, 0xD1, 0x20, 0x1C, 0x70, 0x30, 0x08, 0x21, 0x3A, 0xF0
    .byte 0x8F, 0xF9, 0x20, 0x1C, 0x84, 0x30, 0x01, 0x21, 0x01, 0x70, 0x02, 0x30, 0x06, 0x70, 0x01, 0x30
    .byte 0x01, 0x70, 0x22, 0x1C, 0x8A, 0x32, 0x02, 0x23, 0x11, 0x78, 0x04, 0x20, 0x40, 0x42, 0x08, 0x40
    .byte 0x18, 0x43, 0x10, 0x70, 0x40, 0x46, 0x04, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0x70, 0xBC, 0x02, 0xBC
    .byte 0x08, 0x47, 0x00, 0x00, 0xCB, 0x1F, 0x03, 0x80, 0x13, 0x1F, 0x43, 0x80, 0x07, 0x31, 0x81, 0x80
    .byte 0x05, 0x32, 0xC2, 0x80, 0x70, 0x47, 0x00, 0x00, 0xCB, 0x1F, 0x03, 0x80, 0x13, 0x1F, 0x43, 0x80
    .byte 0x07, 0x31, 0x81, 0x80, 0x05, 0x32, 0xC2, 0x80, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x02, 0x1C
    .byte 0x11, 0x1C, 0x30, 0x31, 0x00, 0x20, 0x08, 0x70, 0x90, 0x8C, 0x00, 0x28, 0x01, 0xD0, 0x01, 0x38
    .byte 0x00, 0xE0, 0xD0, 0x8C, 0x90, 0x84, 0x12, 0x69, 0x00, 0x2A, 0x04, 0xD0, 0x50, 0x68, 0xC1, 0x68
    .byte 0x10, 0x1C, 0xAF, 0xF0, 0xA5, 0xF9, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xCB, 0x1F, 0x03, 0x80
    .byte 0x13, 0x1C, 0x09, 0x3B, 0x43, 0x80, 0x07, 0x31, 0x81, 0x80, 0x05, 0x32, 0xC2, 0x80, 0x70, 0x47

    thumb_func_start func_080245E0
func_080245E0: @ 0x080245E0
    push {lr}
    subs r0, #0x32
    cmp r0, #0x13
    bhi _080246B6
    lsls r0, r0, #2
    ldr r1, _080245F4 @ =_080245F8
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080245F4: .4byte _080245F8
_080245F8: @ jump table
    .4byte _08024648 @ case 0
    .4byte _0802464C @ case 1
    .4byte _08024650 @ case 2
    .4byte _08024654 @ case 3
    .4byte _08024658 @ case 4
    .4byte _0802465C @ case 5
    .4byte _08024660 @ case 6
    .4byte _08024664 @ case 7
    .4byte _08024668 @ case 8
    .4byte _0802466C @ case 9
    .4byte _08024670 @ case 10
    .4byte _08024674 @ case 11
    .4byte _08024678 @ case 12
    .4byte _0802467C @ case 13
    .4byte _08024680 @ case 14
    .4byte _08024684 @ case 15
    .4byte _08024688 @ case 16
    .4byte _0802468C @ case 17
    .4byte _08024690 @ case 18
    .4byte _080246B2 @ case 19
_08024648:
    movs r0, #0
    b _080246B8
_0802464C:
    movs r0, #1
    b _080246B8
_08024650:
    movs r0, #2
    b _080246B8
_08024654:
    movs r0, #3
    b _080246B8
_08024658:
    movs r0, #4
    b _080246B8
_0802465C:
    movs r0, #5
    b _080246B8
_08024660:
    movs r0, #6
    b _080246B8
_08024664:
    movs r0, #7
    b _080246B8
_08024668:
    movs r0, #8
    b _080246B8
_0802466C:
    movs r0, #9
    b _080246B8
_08024670:
    movs r0, #0xa
    b _080246B8
_08024674:
    movs r0, #0xb
    b _080246B8
_08024678:
    movs r0, #0xc
    b _080246B8
_0802467C:
    movs r0, #0xd
    b _080246B8
_08024680:
    movs r0, #0xe
    b _080246B8
_08024684:
    movs r0, #0x14
    b _080246B8
_08024688:
    movs r0, #0xf
    b _080246B8
_0802468C:
    movs r0, #0x10
    b _080246B8
_08024690:
    bl rand
    movs r1, #0xfa
    lsls r1, r1, #2
    bl __modsi3
    movs r1, #0xa
    bl __divsi3
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #4
    bhi _080246AE
    movs r0, #0x12
    b _080246B8
_080246AE:
    movs r0, #0x11
    b _080246B8
_080246B2:
    movs r0, #0x13
    b _080246B8
_080246B6:
    movs r0, #0x15
_080246B8:
    pop {r1}
    bx r1

    thumb_func_start func_080246BC
func_080246BC: @ 0x080246BC
    push {r4, lr}
    adds r4, r0, #0
    adds r0, r1, #0
    bl GetId__C4Tool
    subs r0, #0x20
    cmp r0, #7
    bhi _0802471C
    lsls r0, r0, #2
    ldr r1, _080246D8 @ =_080246DC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080246D8: .4byte _080246DC
_080246DC: @ jump table
    .4byte _080246FC @ case 0
    .4byte _08024700 @ case 1
    .4byte _08024704 @ case 2
    .4byte _08024708 @ case 3
    .4byte _0802470C @ case 4
    .4byte _08024710 @ case 5
    .4byte _08024710 @ case 6
    .4byte _08024714 @ case 7
_080246FC:
    movs r0, #0
    b _08024716
_08024700:
    movs r0, #1
    b _08024716
_08024704:
    movs r0, #2
    b _08024716
_08024708:
    movs r0, #3
    b _08024716
_0802470C:
    movs r0, #4
    b _08024716
_08024710:
    movs r0, #5
    b _08024716
_08024714:
    movs r0, #6
_08024716:
    cmp r0, r4
    bls _0802471C
    adds r4, r0, #0
_0802471C:
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08024724
func_08024724: @ 0x08024724
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x5c
    adds r7, r0, #0
    str r1, [sp, #0x40]
    adds r6, r2, #0
    adds r0, r1, #0
    adds r1, r6, #0
    bl func_080AC070
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #0
    bne _08024748
    b _0802495C
_08024748:
    movs r0, #6
    ldrsh r4, [r6, r0]
    subs r0, r4, #1
    movs r1, #7
    ands r0, r1
    mvns r0, r0
    mov sb, r0
    mov r3, sb
    str r3, [sp, #0x44]
    ldrh r2, [r6, #2]
    adds r0, r1, #0
    ands r0, r2
    movs r2, #8
    subs r0, r2, r0
    str r0, [sp, #0x4c]
    str r0, [sp, #0x48]
    movs r0, #4
    ldrsh r5, [r6, r0]
    subs r0, r5, #1
    ands r0, r1
    mvns r0, r0
    mov r8, r0
    mov r3, r8
    str r3, [sp, #0x50]
    ldrh r0, [r6]
    ands r1, r0
    subs r2, r2, r1
    mov sl, r2
    mov r0, sl
    str r0, [sp, #0x54]
    movs r1, #0
    ldrsh r3, [r6, r1]
    movs r0, #2
    ldrsh r1, [r6, r0]
    mov r2, sp
    mov r0, sp
    strh r3, [r0]
    add r1, sb
    strh r1, [r2, #2]
    strh r5, [r2, #4]
    add r4, sb
    strh r4, [r2, #6]
    ldr r0, [sp, #0x40]
    mov r1, sp
    bl func_080AC070
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    cmp r5, #0
    beq _080247BA
    movs r0, #0
    strh r0, [r7]
    mov r3, sb
    strh r3, [r7, #2]
    b _08024960
_080247BA:
    movs r0, #0
    ldrsh r3, [r6, r0]
    movs r1, #2
    ldrsh r0, [r6, r1]
    movs r1, #4
    ldrsh r4, [r6, r1]
    movs r1, #6
    ldrsh r2, [r6, r1]
    add r1, sp, #8
    strh r3, [r1]
    ldr r3, [sp, #0x4c]
    adds r0, r3, r0
    strh r0, [r1, #2]
    strh r4, [r1, #4]
    adds r2, r3, r2
    strh r2, [r1, #6]
    ldr r0, [sp, #0x40]
    bl func_080AC070
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp, #0x58]
    cmp r0, #0
    beq _080247F8
    strh r5, [r7]
    add r3, sp, #0x4c
    ldrh r3, [r3]
    strh r3, [r7, #2]
    b _08024960
_080247F8:
    movs r5, #0
    ldrsh r0, [r6, r5]
    movs r1, #2
    ldrsh r3, [r6, r1]
    movs r5, #4
    ldrsh r2, [r6, r5]
    movs r1, #6
    ldrsh r4, [r6, r1]
    add r1, sp, #0x10
    add r0, r8
    strh r0, [r1]
    strh r3, [r1, #2]
    add r2, r8
    strh r2, [r1, #4]
    strh r4, [r1, #6]
    ldr r0, [sp, #0x40]
    bl func_080AC070
    movs r3, #1
    eors r0, r3
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    cmp r5, #0
    beq _08024832
    mov r5, r8
    strh r5, [r7]
    add r0, sp, #0x58
    ldrh r0, [r0]
    b _0802495E
_08024832:
    movs r1, #0
    ldrsh r0, [r6, r1]
    movs r1, #2
    ldrsh r3, [r6, r1]
    movs r1, #4
    ldrsh r2, [r6, r1]
    movs r1, #6
    ldrsh r4, [r6, r1]
    add r1, sp, #0x18
    add r0, sl
    strh r0, [r1]
    strh r3, [r1, #2]
    add r2, sl
    strh r2, [r1, #4]
    strh r4, [r1, #6]
    ldr r0, [sp, #0x40]
    bl func_080AC070
    movs r3, #1
    eors r0, r3
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08024868
    mov r0, sl
    strh r0, [r7]
    strh r5, [r7, #2]
    b _08024960
_08024868:
    movs r1, #0
    ldrsh r0, [r6, r1]
    movs r3, #2
    ldrsh r2, [r6, r3]
    movs r5, #4
    ldrsh r3, [r6, r5]
    movs r1, #6
    ldrsh r4, [r6, r1]
    add r1, sp, #0x20
    add r0, r8
    strh r0, [r1]
    add r2, sb
    strh r2, [r1, #2]
    add r3, r8
    strh r3, [r1, #4]
    add r4, sb
    strh r4, [r1, #6]
    ldr r0, [sp, #0x40]
    bl func_080AC070
    movs r3, #1
    eors r0, r3
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080248A2
    mov r5, r8
    strh r5, [r7]
    mov r0, sb
    b _0802495E
_080248A2:
    movs r1, #0
    ldrsh r0, [r6, r1]
    movs r3, #2
    ldrsh r2, [r6, r3]
    movs r5, #4
    ldrsh r3, [r6, r5]
    movs r1, #6
    ldrsh r4, [r6, r1]
    add r1, sp, #0x28
    add r0, sl
    strh r0, [r1]
    ldr r5, [sp, #0x44]
    adds r2, r5, r2
    strh r2, [r1, #2]
    add r3, sl
    strh r3, [r1, #4]
    adds r4, r5, r4
    strh r4, [r1, #6]
    ldr r0, [sp, #0x40]
    bl func_080AC070
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080248DE
    mov r3, sl
    strh r3, [r7]
    strh r5, [r7, #2]
    b _08024960
_080248DE:
    movs r1, #0
    ldrsh r0, [r6, r1]
    movs r3, #2
    ldrsh r2, [r6, r3]
    movs r5, #4
    ldrsh r3, [r6, r5]
    movs r1, #6
    ldrsh r4, [r6, r1]
    add r1, sp, #0x30
    ldr r5, [sp, #0x50]
    adds r0, r5, r0
    strh r0, [r1]
    ldr r0, [sp, #0x4c]
    adds r2, r0, r2
    strh r2, [r1, #2]
    adds r3, r5, r3
    strh r3, [r1, #4]
    adds r4, r0, r4
    strh r4, [r1, #6]
    ldr r0, [sp, #0x40]
    bl func_080AC070
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802491A
    strh r5, [r7]
    add r5, sp, #0x4c
    b _08024956
_0802491A:
    movs r1, #0
    ldrsh r0, [r6, r1]
    movs r3, #2
    ldrsh r2, [r6, r3]
    movs r5, #4
    ldrsh r3, [r6, r5]
    movs r1, #6
    ldrsh r4, [r6, r1]
    add r1, sp, #0x38
    ldr r5, [sp, #0x54]
    adds r0, r5, r0
    strh r0, [r1]
    ldr r0, [sp, #0x48]
    adds r2, r0, r2
    strh r2, [r1, #2]
    adds r3, r5, r3
    strh r3, [r1, #4]
    adds r4, r0, r4
    strh r4, [r1, #6]
    ldr r0, [sp, #0x40]
    bl func_080AC070
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #0
    beq _0802495C
    strh r5, [r7]
    add r5, sp, #0x48
_08024956:
    ldrh r5, [r5]
    strh r5, [r7, #2]
    b _08024960
_0802495C:
    strh r0, [r7]
_0802495E:
    strh r0, [r7, #2]
_08024960:
    adds r0, r7, #0
    add sp, #0x5c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08024974
func_08024974: @ 0x08024974
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r4, r2, #0
    bl func_0802B908
    ldr r0, _08024A70 @ =vtable_unk_080E6658
    str r0, [r7, #0x14]
    str r4, [r7, #0x34]
    ldr r0, _08024A74 @ =0x00001BD8
    adds r4, r4, r0
    str r4, [r7, #0x38]
    adds r0, r7, #0
    adds r0, #0x3c
    movs r4, #0
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r1, r7, #0
    adds r1, #0x3f
    movs r0, #0xf
    strb r0, [r1]
    adds r0, r7, #0
    adds r0, #0x40
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r0, #2
    movs r5, #0
    strh r4, [r0]
    adds r6, r7, #0
    adds r6, #0x60
    ldr r0, _08024A78 @ =0x080F0E80
    str r0, [r7, #0x60]
    strh r4, [r6, #4]
    adds r0, r7, #0
    adds r0, #0x68
    bl __12RucksackItem
    strb r5, [r6, #0xc]
    strb r5, [r6, #0xd]
    movs r0, #0x3b
    str r0, [r6, #0x10]
    strb r5, [r6, #0x14]
    adds r0, r7, #0
    adds r0, #0x78
    strb r5, [r0]
    adds r0, #1
    strb r5, [r0]
    adds r0, #1
    strb r5, [r0]
    adds r1, r7, #0
    adds r1, #0x7c
    ldr r0, _08024A7C @ =0x0000FFFF
    strh r0, [r1]
    adds r0, r7, #0
    adds r0, #0x80
    str r4, [r0]
    adds r0, #8
    strb r5, [r0]
    strb r5, [r0, #1]
    str r4, [r0, #4]
    str r4, [r0, #8]
    str r4, [r0, #0xc]
    str r4, [r0, #0x10]
    str r4, [r0, #0x14]
    str r4, [r0, #0x18]
    adds r1, #0x28
    movs r0, #1
    strb r0, [r1]
    adds r0, r7, #0
    adds r0, #0xa6
    strh r4, [r0]
    adds r0, #2
    movs r1, #1
    rsbs r1, r1, #0
    str r1, [r0]
    adds r0, #4
    str r1, [r0]
    adds r0, #4
    strb r5, [r0]
    adds r0, #1
    strb r5, [r0]
    adds r1, r7, #0
    adds r1, #0xb2
    movs r0, #0x64
    strb r0, [r1]
    adds r0, r7, #0
    adds r0, #0xb3
    strb r5, [r0]
    adds r0, #1
    strb r5, [r0]
    adds r0, #0xc
    strb r5, [r0]
    adds r0, #1
    strb r5, [r0]
    adds r0, #1
    strb r5, [r0]
    adds r0, #1
    strb r5, [r0]
    adds r0, #1
    strb r5, [r0]
    adds r0, #1
    strb r5, [r0]
    adds r0, r7, #0
    bl func_0802C2DC
    adds r0, r7, #0
    bl func_0802D158
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    ldrh r0, [r7, #0x22]
    cmp r0, r1
    beq _08024A66
    adds r0, r7, #0
    bl func_080321B0
_08024A66:
    adds r0, r7, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_08024A70: .4byte vtable_unk_080E6658
_08024A74: .4byte 0x00001BD8
_08024A78: .4byte 0x080F0E80
_08024A7C: .4byte 0x0000FFFF

    thumb_func_start func_08024A80
func_08024A80: @ 0x08024A80
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    adds r5, r0, #0
    adds r7, r1, #0
    ldr r0, _08024AC4 @ =vtable_unk_080E6658
    str r0, [r5, #0x14]
    ldr r4, [r5, #0x38]
    mov r0, sp
    adds r1, r5, #0
    bl func_08032170
    adds r0, r4, #0
    mov r1, sp
    bl func_0800EB34
    ldr r0, [r5, #0x38]
    adds r6, r0, #0
    adds r6, #0x54
    adds r0, r6, #0
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08024B6A
    adds r0, r6, #0
    bl func_0800F204
    cmp r0, #5
    bhi _08024B6A
    lsls r0, r0, #2
    ldr r1, _08024AC8 @ =_08024ACC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08024AC4: .4byte vtable_unk_080E6658
_08024AC8: .4byte _08024ACC
_08024ACC: @ jump table
    .4byte _08024B6A @ case 0
    .4byte _08024AE4 @ case 1
    .4byte _08024B18 @ case 2
    .4byte _08024B24 @ case 3
    .4byte _08024B52 @ case 4
    .4byte _08024B6A @ case 5
_08024AE4:
    adds r0, r6, #0
    bl func_0800F258
    adds r1, r0, #0
    add r0, sp, #8
    strb r1, [r0]
    bl GetId__C7Article
    cmp r0, #0x35
    bne _08024B6A
    ldr r4, [r5, #0x34]
    ldr r0, _08024B14 @ =0x00001CCC
    adds r4, r4, r0
    mov r0, sp
    adds r1, r5, #0
    bl func_0801FE94
    adds r0, r4, #0
    mov r1, sp
    movs r2, #6
    bl memcpy
    b _08024B6A
    .align 2, 0
_08024B14: .4byte 0x00001CCC
_08024B18:
    ldr r4, [r5, #0x34]
    ldr r0, _08024B20 @ =0x00001C70
    adds r4, r4, r0
    b _08024B40
    .align 2, 0
_08024B20: .4byte 0x00001C70
_08024B24:
    ldr r4, [r5, #0x34]
    movs r0, #0x82
    lsls r0, r0, #3
    adds r4, r4, r0
    adds r0, r6, #0
    bl func_0800F344
    adds r1, r0, #0
    adds r0, r4, #0
    bl GetChicken__4CoopUi
    adds r4, r0, #0
    cmp r4, #0
    beq _08024B6A
_08024B40:
    mov r0, sp
    adds r1, r5, #0
    bl func_08032170
    adds r0, r4, #0
    mov r1, sp
    bl SetLocation__5ActorRC13ActorLocation
    b _08024B6A
_08024B52:
    ldr r4, [r5, #0x34]
    movs r0, #0xe5
    lsls r0, r0, #5
    adds r4, r4, r0
    mov r0, sp
    adds r1, r5, #0
    bl func_0801FE94
    adds r0, r4, #0
    mov r1, sp
    bl func_08010014
_08024B6A:
    ldr r0, _08024B98 @ =__vt_7AEntity
    str r0, [r5, #0x14]
    ldr r1, [r5, #0x10]
    cmp r1, #0
    beq _08024B80
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08024B80:
    movs r0, #1
    ands r0, r7
    cmp r0, #0
    beq _08024B8E
    adds r0, r5, #0
    bl __builtin_delete
_08024B8E:
    add sp, #0xc
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08024B98: .4byte __vt_7AEntity

    thumb_func_start func_08024B9C
func_08024B9C: @ 0x08024B9C
    push {r4, r5, lr}
    adds r4, r0, #0
    movs r5, #2
    ldrh r0, [r4, #4]
    cmp r0, #0x13
    bne _08024BCA
    ldr r1, [r4, #0x34]
    ldr r2, _08024BE4 @ =0x00002171
    adds r0, r1, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1e
    cmp r0, #1
    beq _08024BC8
    subs r2, #0x25
    adds r0, r1, r2
    movs r1, #0x4a
    bl func_0809C694
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08024BCA
_08024BC8:
    movs r5, #1
_08024BCA:
    adds r0, r4, #0
    adds r0, #0x21
    strb r5, [r0]
    movs r0, #0xa1
    lsls r0, r0, #2
    bl __builtin_new
    adds r1, r4, #0
    bl func_0802B260
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
_08024BE4: .4byte 0x00002171

    thumb_func_start func_08024BE8
func_08024BE8: @ 0x08024BE8
    push {r4, lr}
    adds r4, r0, #0
    bl func_0801FDC0
    adds r0, r4, #0
    bl func_0802A588
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08024BFC
func_08024BFC: @ 0x08024BFC
    push {r4, r5, lr}
    sub sp, #0x10
    adds r5, r0, #0
    adds r4, r1, #0
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x40]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08024C38
    movs r0, #0xa
    ldrsh r1, [r4, r0]
    movs r0, #0xe
    ldrsh r2, [r4, r0]
    mov r4, sp
    subs r3, r1, #7
    mov r0, sp
    strh r3, [r0]
    adds r0, r2, #0
    subs r0, #9
    strh r0, [r4, #2]
    adds r1, #7
    strh r1, [r4, #4]
    adds r2, #5
    strh r2, [r4, #6]
    ldr r0, [sp]
    ldr r1, [sp, #4]
    b _08024C44
_08024C38:
    add r0, sp, #8
    adds r1, r4, #0
    bl func_0803240C
    ldr r0, [sp, #8]
    ldr r1, [sp, #0xc]
_08024C44:
    str r0, [r5]
    str r1, [r5, #4]
    adds r0, r5, #0
    add sp, #0x10
    pop {r4, r5}
    pop {r2}
    bx r2
    .align 2, 0

    thumb_func_start func_08024C54
func_08024C54: @ 0x08024C54
    push {lr}
    movs r1, #1
    strb r1, [r0, #6]
    bl func_080323C8
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08024C64
func_08024C64: @ 0x08024C64
    push {lr}
    movs r1, #0
    strb r1, [r0, #6]
    bl func_080323C8
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08024C74
func_08024C74: @ 0x08024C74
    adds r2, r0, #0
    adds r0, #0x3c
    movs r1, #0
    strb r1, [r0]
    adds r0, #2
    strb r1, [r0]
    adds r0, #0x68
    strh r1, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_08024C88
func_08024C88: @ 0x08024C88
    adds r2, r0, #0
    adds r2, #0x3c
    movs r1, #8
    strb r1, [r2]
    adds r0, #0x3d
    movs r1, #0xff
    strb r1, [r0]
    bx lr

    thumb_func_start func_08024C98
func_08024C98: @ 0x08024C98
    adds r0, #0x3c
    movs r1, #0
    strb r1, [r0]
    bx lr

    thumb_func_start func_08024CA0
func_08024CA0: @ 0x08024CA0
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08024CC6
    adds r0, r4, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    cmp r0, #0x2a
    bgt _08024CC6
    cmp r0, #0x24
    blt _08024CC6
    movs r0, #1
    b _08024CC8
_08024CC6:
    movs r0, #0
_08024CC8:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08024CD0
func_08024CD0: @ 0x08024CD0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x60
    adds r5, r0, #0
    mov sl, r1
    ldr r1, [r1]
    mov r0, sl
    ldrb r2, [r0, #4]
    adds r0, r5, #0
    bl func_0802F0EC
    adds r0, r5, #0
    bl func_0802CDCC
    adds r0, r5, #0
    bl func_0802D158
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    ldrh r0, [r5, #0x22]
    cmp r0, r1
    beq _08024D08
    adds r0, r5, #0
    bl func_080321B0
_08024D08:
    ldrh r0, [r5, #0x24]
    cmp r0, #0
    beq _08024D12
    subs r0, #1
    b _08024D14
_08024D12:
    ldrh r0, [r5, #0x26]
_08024D14:
    strh r0, [r5, #0x24]
    ldr r2, [r5, #0x10]
    cmp r2, #0
    beq _08024D26
    ldr r0, [r2, #4]
    ldr r1, [r0, #0xc]
    adds r0, r2, #0
    bl _call_via_r1
_08024D26:
    ldr r0, [r5, #0x18]
    cmp r0, #0
    bne _08024D34
    ldr r0, [r5, #0x1c]
    cmp r0, #0
    bne _08024D34
    b _08024F7E
_08024D34:
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    cmp r0, #0x35
    bne _08024D40
    b _08024F7E
_08024D40:
    ldr r1, [r5, #0x14]
    add r0, sp, #0x20
    ldr r2, [r1, #0xc]
    adds r1, r5, #0
    bl _call_via_r2
    ldr r0, [sp, #0x20]
    ldr r1, [sp, #0x24]
    str r0, [sp, #0x28]
    str r1, [sp, #0x2c]
    add r3, sp, #0x28
    movs r0, #0
    str r0, [sp]
    adds r0, r5, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #1
    beq _08024DD2
    cmp r0, #1
    bgt _08024D6E
    cmp r0, #0
    beq _08024D7A
    b _08024EEE
_08024D6E:
    cmp r0, #2
    beq _08024E22
    cmp r0, #3
    bne _08024D78
    b _08024E94
_08024D78:
    b _08024EEE
_08024D7A:
    movs r1, #0
    ldrsh r0, [r3, r1]
    movs r2, #6
    ldrsh r1, [r3, r2]
    add r2, sp, #0x30
    subs r1, #1
    strh r0, [r2]
    strh r1, [r2, #2]
    ldr r0, [sp]
    cmp r0, #3
    bhi _08024DA6
    lsls r0, r0, #2
    adds r0, #4
    mov r7, sp
    adds r1, r7, r0
    cmp r1, #0
    beq _08024DA0
    ldr r0, [sp, #0x30]
    str r0, [r1]
_08024DA0:
    ldr r0, [sp]
    adds r0, #1
    str r0, [sp]
_08024DA6:
    movs r1, #4
    ldrsh r0, [r3, r1]
    movs r2, #6
    ldrsh r1, [r3, r2]
    add r2, sp, #0x34
    subs r0, #1
    subs r1, #1
    strh r0, [r2]
    strh r1, [r2, #2]
    ldr r0, [sp]
    cmp r0, #3
    bls _08024DC0
    b _08024EEE
_08024DC0:
    lsls r0, r0, #2
    adds r0, #4
    mov r7, sp
    adds r1, r7, r0
    cmp r1, #0
    bne _08024DCE
    b _08024EE8
_08024DCE:
    ldr r0, [sp, #0x34]
    b _08024EE6
_08024DD2:
    movs r1, #0
    ldrsh r0, [r3, r1]
    movs r7, #2
    ldrsh r2, [r3, r7]
    add r1, sp, #0x38
    strh r0, [r1]
    strh r2, [r1, #2]
    ldr r0, [sp]
    cmp r0, #3
    bhi _08024DFC
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r1, r2, r0
    cmp r1, #0
    beq _08024DF6
    ldr r0, [sp, #0x38]
    str r0, [r1]
_08024DF6:
    ldr r0, [sp]
    adds r0, #1
    str r0, [sp]
_08024DFC:
    movs r7, #4
    ldrsh r0, [r3, r7]
    movs r1, #2
    ldrsh r2, [r3, r1]
    add r1, sp, #0x3c
    subs r0, #1
    strh r0, [r1]
    strh r2, [r1, #2]
    ldr r0, [sp]
    cmp r0, #3
    bhi _08024EEE
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r1, r2, r0
    cmp r1, #0
    beq _08024EE8
    ldr r0, [sp, #0x3c]
    b _08024EE6
_08024E22:
    movs r7, #0
    ldrsh r0, [r3, r7]
    movs r1, #2
    ldrsh r2, [r3, r1]
    add r1, sp, #0x40
    strh r0, [r1]
    strh r2, [r1, #2]
    ldr r0, [sp]
    cmp r0, #3
    bhi _08024E4C
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r1, r2, r0
    cmp r1, #0
    beq _08024E46
    ldr r0, [sp, #0x40]
    str r0, [r1]
_08024E46:
    ldr r0, [sp]
    adds r0, #1
    str r0, [sp]
_08024E4C:
    movs r7, #0
    ldrsh r0, [r3, r7]
    movs r2, #6
    ldrsh r1, [r3, r2]
    add r2, sp, #0x44
    subs r1, #1
    strh r0, [r2]
    strh r1, [r2, #2]
    ldr r0, [sp]
    cmp r0, #3
    bhi _08024EEE
    lsls r0, r0, #2
    adds r0, #4
    mov r7, sp
    adds r1, r7, r0
    cmp r1, #0
    beq _08024EE8
    ldr r0, [sp, #0x44]
    b _08024EE6
_08024E72:
    mov r0, r8
    ldr r2, [r0]
    movs r7, #0xa0
    lsls r7, r7, #1
    adds r2, r2, r7
    lsls r0, r1, #0xf
    lsrs r0, r0, #0x11
    add r1, sp, #0x50
    movs r3, #0
    str r0, [sp, #0x50]
    str r3, [r1, #4]
    ldr r3, [r2]
    mov r0, r8
    movs r2, #0
    bl _call_via_r3
    b _08024F68
_08024E94:
    movs r1, #4
    ldrsh r0, [r3, r1]
    movs r7, #2
    ldrsh r2, [r3, r7]
    add r1, sp, #0x48
    subs r0, #1
    strh r0, [r1]
    strh r2, [r1, #2]
    ldr r0, [sp]
    cmp r0, #3
    bhi _08024EC0
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r1, r2, r0
    cmp r1, #0
    beq _08024EBA
    ldr r0, [sp, #0x48]
    str r0, [r1]
_08024EBA:
    ldr r0, [sp]
    adds r0, #1
    str r0, [sp]
_08024EC0:
    movs r7, #4
    ldrsh r0, [r3, r7]
    movs r2, #6
    ldrsh r1, [r3, r2]
    add r2, sp, #0x4c
    subs r0, #1
    subs r1, #1
    strh r0, [r2]
    strh r1, [r2, #2]
    ldr r0, [sp]
    cmp r0, #3
    bhi _08024EEE
    lsls r0, r0, #2
    adds r0, #4
    mov r7, sp
    adds r1, r7, r0
    cmp r1, #0
    beq _08024EE8
    ldr r0, [sp, #0x4c]
_08024EE6:
    str r0, [r1]
_08024EE8:
    ldr r0, [sp]
    adds r0, #1
    str r0, [sp]
_08024EEE:
    ldrh r2, [r5, #4]
    ldr r0, [r5]
    mov r8, r0
    add r4, sp, #0x14
    ldr r1, [r0]
    adds r0, r4, #0
    ldr r3, [r1, #0x34]
    mov r1, r8
    bl _call_via_r3
    mov ip, r4
    movs r6, #0
    ldr r0, [sp]
    add r1, sp, #4
    mov sb, r1
    cmp r6, r0
    bhs _08024F68
    ldr r3, [sp, #0x14]
    ldrh r2, [r4, #8]
    str r2, [sp, #0x5c]
    mov r4, sb
_08024F18:
    ldrh r0, [r4]
    lsls r0, r0, #0x10
    asrs r2, r0, #0x13
    ldrh r0, [r4, #2]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x13
    cmp r3, #0
    beq _08024F4E
    ldr r7, [sp, #0x5c]
    cmp r2, r7
    bhi _08024F4E
    mov r1, ip
    ldrh r1, [r1, #0xa]
    cmp r0, r1
    bhi _08024F4E
    mov r7, ip
    ldr r1, [r7, #4]
    ldr r7, [sp, #0x5c]
    muls r0, r7, r0
    adds r0, r0, r2
    cmp r1, #0
    beq _08024F48
    adds r0, r1, r0
    ldrb r0, [r0]
_08024F48:
    lsls r0, r0, #2
    adds r0, r3, r0
    b _08024F50
_08024F4E:
    movs r0, #0
_08024F50:
    cmp r0, #0
    beq _08024F5E
    ldr r1, [r0]
    ldr r0, _0802500C @ =0x0001FFFC
    ands r0, r1
    cmp r0, #0
    bne _08024E72
_08024F5E:
    adds r4, #4
    adds r6, #1
    ldr r0, [sp]
    cmp r6, r0
    blo _08024F18
_08024F68:
    ldr r0, [sp]
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r1, r2, r0
    mov r0, sb
    cmp r0, r1
    beq _08024F7E
_08024F78:
    adds r0, #4
    cmp r0, r1
    bne _08024F78
_08024F7E:
    mov r7, sl
    ldrb r0, [r7, #4]
    cmp r0, #0
    beq _08024FFC
    ldr r0, [r5, #0x34]
    ldr r1, _08025010 @ =0x00001C34
    adds r4, r0, r1
    adds r0, r4, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08024FBA
    adds r0, r4, #0
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    add r0, sp, #0x58
    strb r1, [r0]
    bl GetId__C4Tool
    cmp r0, #0x4e
    bne _08024FBA
    ldr r0, [r5, #0x14]
    ldr r3, [r0, #0x64]
    adds r0, r5, #0
    movs r1, #1
    movs r2, #0
    bl _call_via_r3
_08024FBA:
    adds r0, r4, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08024FFC
    adds r0, r4, #0
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    mov r0, sp
    adds r0, #0x59
    strb r1, [r0]
    bl GetId__C4Tool
    cmp r0, #0x4f
    bne _08024FFC
    ldr r0, [r5, #0x34]
    ldr r2, _08025014 @ =0x00001BD8
    adds r0, r0, r2
    bl func_0800EE2C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08024FFC
    ldr r0, [r5, #0x14]
    movs r2, #1
    rsbs r2, r2, #0
    ldr r3, [r0, #0x64]
    adds r0, r5, #0
    movs r1, #0
    bl _call_via_r3
_08024FFC:
    add sp, #0x60
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0802500C: .4byte 0x0001FFFC
_08025010: .4byte 0x00001C34
_08025014: .4byte 0x00001BD8

    thumb_func_start func_08025018
func_08025018: @ 0x08025018
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r1, r4, #0
    adds r1, #0xc1
    movs r0, #0
    strb r0, [r1]
    adds r0, r4, #0
    adds r0, #0xc2
    ldrb r0, [r0]
    cmp r0, #0
    bne _08025062
    adds r0, r4, #0
    adds r0, #0xc0
    ldrb r0, [r0]
    cmp r0, #0
    beq _0802505A
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0
    bl func_0802F0EC
    adds r0, r4, #0
    bl func_0802D158
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq _0802505A
    adds r0, r4, #0
    bl func_080321B0
_0802505A:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0803242C
_08025062:
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_08025068
func_08025068: @ 0x08025068
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r5, r0, #0
    adds r4, r1, #0
    str r2, [sp]
    ldr r0, [r5, #0x34]
    ldr r1, _080250F0 @ =0x000034C4
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq _08025088
    b _080251E8
_08025088:
    ldr r1, [r5, #0x10]
    cmp r1, #0
    beq _08025096
    ldr r0, _080250F4 @ =0x00000281
    adds r1, r1, r0
    movs r0, #1
    strb r0, [r1]
_08025096:
    ldr r0, [r5, #0x38]
    bl func_0800E4F0
    mov sl, r0
    ldr r0, [r5, #0x38]
    bl func_0800E51C
    mov r8, r0
    ldr r0, [r5, #0x38]
    adds r1, r4, #0
    bl func_0800E9E4
    ldr r0, [r5, #0x38]
    bl func_0800E4F0
    adds r6, r0, #0
    ldr r0, [r5, #0x38]
    bl func_0800E4FC
    mov sb, r0
    ldr r0, [r5, #0x38]
    ldr r1, [sp]
    bl func_0800EA68
    ldr r0, [r5, #0x38]
    bl func_0800E4FC
    adds r7, r0, #0
    cmp r4, #0
    bgt _080250D8
    ldr r1, [sp]
    cmp r1, #0
    bge _08025158
_080250D8:
    adds r1, r5, #0
    adds r1, #0xc3
    ldrb r0, [r1]
    subs r0, #0x24
    adds r4, r1, #0
    cmp r0, #6
    bhi _08025158
    lsls r0, r0, #2
    ldr r1, _080250F8 @ =_080250FC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080250F0: .4byte 0x000034C4
_080250F4: .4byte 0x00000281
_080250F8: .4byte _080250FC
_080250FC: @ jump table
    .4byte _08025118 @ case 0
    .4byte _08025122 @ case 1
    .4byte _08025130 @ case 2
    .4byte _0802513E @ case 3
    .4byte _08025144 @ case 4
    .4byte _0802514A @ case 5
    .4byte _08025150 @ case 6
_08025118:
    mov r1, r8
    lsrs r0, r1, #1
    cmp r6, r0
    bls _08025158
    b _08025154
_08025122:
    mov r0, r8
    movs r1, #5
    bl __udivsi3
    cmp r6, r0
    bls _08025158
    b _08025154
_08025130:
    mov r0, r8
    movs r1, #0x14
    bl __udivsi3
    cmp r6, r0
    bls _08025158
    b _08025154
_0802513E:
    cmp r6, #0
    beq _08025158
    b _08025154
_08025144:
    cmp r7, #0x31
    bhi _08025158
    b _08025154
_0802514A:
    cmp r7, #0x4f
    bhi _08025158
    b _08025154
_08025150:
    cmp r7, #0x64
    beq _08025158
_08025154:
    movs r0, #0
    strb r0, [r4]
_08025158:
    mov r0, sb
    cmp r0, #0x64
    beq _0802516E
    cmp r7, #0x64
    bne _0802516E
    adds r1, r5, #0
    adds r1, #0xc3
    movs r0, #0x2a
    strb r0, [r1]
    movs r0, #1
    b _080251EA
_0802516E:
    mov r1, sb
    cmp r1, #0x4f
    bhi _08025180
    cmp r7, #0x4f
    bls _08025180
    adds r1, r5, #0
    adds r1, #0xc3
    movs r0, #0x29
    b _080251E6
_08025180:
    mov r0, sb
    cmp r0, #0x31
    bhi _08025192
    cmp r7, #0x31
    bls _08025192
    adds r1, r5, #0
    adds r1, #0xc3
    movs r0, #0x28
    b _080251E6
_08025192:
    mov r1, sl
    cmp r1, #0
    beq _080251A4
    cmp r6, #0
    bne _080251A4
    adds r1, r5, #0
    adds r1, #0xc3
    movs r0, #0x27
    b _080251E6
_080251A4:
    mov r0, r8
    movs r1, #0x14
    bl __udivsi3
    cmp sl, r0
    bls _080251BC
    cmp r6, r0
    bhi _080251BC
    adds r1, r5, #0
    adds r1, #0xc3
    movs r0, #0x26
    b _080251E6
_080251BC:
    mov r0, r8
    movs r1, #5
    bl __udivsi3
    cmp sl, r0
    bls _080251D4
    cmp r6, r0
    bhi _080251D4
    adds r1, r5, #0
    adds r1, #0xc3
    movs r0, #0x25
    b _080251E6
_080251D4:
    mov r1, r8
    lsrs r0, r1, #1
    cmp sl, r0
    bls _080251E8
    cmp r6, r0
    bhi _080251E8
    adds r1, r5, #0
    adds r1, #0xc3
    movs r0, #0x24
_080251E6:
    strb r0, [r1]
_080251E8:
    movs r0, #0
_080251EA:
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080251FC
func_080251FC: @ 0x080251FC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    mov r8, r1
    adds r6, r3, #0
    ldr r7, [sp, #0x20]
    ldr r0, [r2]
    ldr r1, [r2, #4]
    str r0, [sp]
    str r1, [sp, #4]
    movs r5, #1
    cmp r5, r7
    bhi _0802523A
    mov r4, sp
_0802521A:
    ldrh r0, [r4]
    adds r0, r0, r6
    strh r0, [r4]
    ldrh r0, [r4, #4]
    adds r0, r0, r6
    strh r0, [r4, #4]
    mov r0, r8
    mov r1, sp
    bl func_080AC070
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802523A
    adds r5, #1
    cmp r5, r7
    bls _0802521A
_0802523A:
    adds r0, r5, #0
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08025248
func_08025248: @ 0x08025248
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    mov r8, r1
    adds r6, r3, #0
    ldr r7, [sp, #0x20]
    ldr r0, [r2]
    ldr r1, [r2, #4]
    str r0, [sp]
    str r1, [sp, #4]
    movs r5, #1
    cmp r5, r7
    bhi _08025286
    mov r4, sp
_08025266:
    ldrh r0, [r4, #2]
    adds r0, r0, r6
    strh r0, [r4, #2]
    ldrh r0, [r4, #6]
    adds r0, r0, r6
    strh r0, [r4, #6]
    mov r0, r8
    mov r1, sp
    bl func_080AC070
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025286
    adds r5, #1
    cmp r5, r7
    bls _08025266
_08025286:
    adds r0, r5, #0
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08025294
func_08025294: @ 0x08025294
    push {r4, r5, r6, r7, lr}
    sub sp, #0x28
    mov ip, r1
    adds r7, r2, #0
    mov r4, sp
    movs r1, #0x88
    lsls r1, r1, #1
    subs r2, r1, #1
    mov r0, sp
    strh r2, [r0]
    movs r2, #0xaf
    strh r2, [r4, #2]
    ldr r0, _080252F0 @ =0x000002B1
    adds r1, r1, r0
    strh r1, [r4, #4]
    subs r0, #0x70
    strh r0, [r4, #6]
    mov r0, sp
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r6, #4
    ldrsh r5, [r3, r6]
    subs r0, r0, r5
    movs r1, #0
    ldrsh r4, [r3, r1]
    ldr r6, _080252F4 @ =0xFFFFFC3F
    adds r1, r4, r6
    ands r0, r1
    movs r1, #6
    ldrsh r6, [r3, r1]
    subs r2, r2, r6
    ands r0, r2
    movs r2, #2
    ldrsh r3, [r3, r2]
    ldr r2, _080252F8 @ =0xFFFFFDBF
    adds r1, r3, r2
    ands r0, r1
    cmp r0, #0
    bge _08025360
    cmp r7, #1
    beq _0802531A
    cmp r7, #1
    bgt _080252FC
    cmp r7, #0
    beq _08025306
    b _08025360
    .align 2, 0
_080252F0: .4byte 0x000002B1
_080252F4: .4byte 0xFFFFFC3F
_080252F8: .4byte 0xFFFFFDBF
_080252FC:
    cmp r7, #2
    beq _08025330
    cmp r7, #3
    beq _0802533A
    b _08025360
_08025306:
    subs r2, r6, r3
    adds r2, #0x10
    add r1, sp, #8
    strh r4, [r1]
    adds r0, r2, r3
    strh r0, [r1, #2]
    strh r5, [r1, #4]
    adds r2, r2, r6
    strh r2, [r1, #6]
    b _0802534C
_0802531A:
    subs r0, r6, r3
    adds r0, #0x10
    rsbs r0, r0, #0
    add r1, sp, #0x10
    strh r4, [r1]
    adds r2, r0, r3
    strh r2, [r1, #2]
    strh r5, [r1, #4]
    adds r0, r0, r6
    strh r0, [r1, #6]
    b _0802534C
_08025330:
    subs r0, r5, r4
    adds r0, #0x10
    rsbs r0, r0, #0
    add r1, sp, #0x18
    b _08025340
_0802533A:
    subs r0, r5, r4
    adds r0, #0x10
    add r1, sp, #0x20
_08025340:
    adds r2, r0, r4
    strh r2, [r1]
    strh r3, [r1, #2]
    adds r0, r0, r5
    strh r0, [r1, #4]
    strh r6, [r1, #6]
_0802534C:
    mov r0, ip
    bl func_080AC070
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025360
    movs r0, #1
    b _08025362
_08025360:
    movs r0, #0
_08025362:
    add sp, #0x28
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0802536C
func_0802536C: @ 0x0802536C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x5c
    mov sb, r0
    mov r8, r1
    str r2, [sp, #0x4c]
    ldrh r0, [r0, #4]
    str r0, [sp, #0x50]
    mov r2, sb
    ldr r1, [r2]
    ldr r2, [r1]
    add r0, sp, #8
    ldr r3, [r2, #0x34]
    ldr r2, [sp, #0x50]
    bl _call_via_r3
    add r5, sp, #8
    mov sl, r5
    mov r0, sb
    movs r1, #0xa
    ldrsh r0, [r0, r1]
    str r0, [sp, #0x54]
    mov r2, sb
    movs r5, #0xe
    ldrsh r2, [r2, r5]
    str r2, [sp, #0x58]
    mov r0, sb
    ldr r1, [r0, #0x14]
    add r4, sp, #0x14
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    mov r1, sb
    bl _call_via_r2
    adds r6, r4, #0
    mov r1, r8
    cmp r1, #1
    beq _08025404
    cmp r1, #1
    bgt _080253C8
    cmp r1, #0
    beq _080253D4
    b _080257C0
_080253C8:
    mov r2, r8
    cmp r2, #2
    beq _08025436
    cmp r2, #3
    beq _0802545E
    b _080257C0
_080253D4:
    ldr r0, [sp, #0x4c]
    str r0, [sp, #0x1c]
    add r2, sp, #0x1c
    mov r5, r8
    str r5, [sp]
    str r5, [sp, #4]
    add r0, sp, #8
    adds r1, r6, #0
    movs r3, #0
    bl func_080AC124
    ldr r1, [sp, #0x1c]
    cmp r1, #0
    beq _0802549C
    ldr r0, [sp, #0x58]
    adds r0, r0, r1
    str r0, [sp, #0x58]
    ldrh r0, [r6, #2]
    adds r0, r0, r1
    strh r0, [r6, #2]
    ldrh r0, [r6, #6]
    adds r0, r0, r1
    strh r0, [r6, #6]
    b _0802548E
_08025404:
    ldr r0, [sp, #0x4c]
    rsbs r0, r0, #0
    str r0, [sp, #0x1c]
    add r3, sp, #0x1c
    movs r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    add r0, sp, #8
    adds r1, r6, #0
    movs r2, #0
    bl func_080AC124
    ldr r1, [sp, #0x1c]
    cmp r1, #0
    beq _0802549C
    ldr r2, [sp, #0x58]
    adds r2, r2, r1
    str r2, [sp, #0x58]
    ldrh r0, [r6, #2]
    adds r0, r0, r1
    strh r0, [r6, #2]
    ldrh r0, [r6, #6]
    adds r0, r0, r1
    strh r0, [r6, #6]
    b _0802548E
_08025436:
    ldr r0, [sp, #0x4c]
    rsbs r0, r0, #0
    str r0, [sp, #0x1c]
    add r0, sp, #0x1c
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    add r0, sp, #8
    adds r1, r6, #0
    movs r2, #0
    movs r3, #0
    bl func_080AC124
    ldr r1, [sp, #0x1c]
    cmp r1, #0
    beq _0802549C
    ldr r5, [sp, #0x54]
    adds r5, r5, r1
    str r5, [sp, #0x54]
    b _08025482
_0802545E:
    ldr r0, [sp, #0x4c]
    str r0, [sp, #0x1c]
    movs r0, #0
    str r0, [sp]
    add r0, sp, #0x1c
    str r0, [sp, #4]
    add r0, sp, #8
    adds r1, r6, #0
    movs r2, #0
    movs r3, #0
    bl func_080AC124
    ldr r1, [sp, #0x1c]
    cmp r1, #0
    beq _0802549C
    ldr r0, [sp, #0x54]
    adds r0, r0, r1
    str r0, [sp, #0x54]
_08025482:
    ldrh r0, [r6]
    adds r0, r0, r1
    strh r0, [r6]
    ldrh r0, [r6, #4]
    adds r0, r0, r1
    strh r0, [r6, #4]
_0802548E:
    ldr r1, [sp, #0x1c]
    cmp r1, #0
    bge _08025496
    rsbs r1, r1, #0
_08025496:
    ldr r0, [sp, #0x4c]
    subs r0, r0, r1
    str r0, [sp, #0x4c]
_0802549C:
    ldr r0, [sp, #0x4c]
    cmp r0, #0
    bne _080254A4
    b _080257B2
_080254A4:
    mov r7, r8
    movs r0, #0
    str r0, [sp, #0x48]
    ldr r0, [sp, #0x14]
    ldr r1, [sp, #0x18]
    str r0, [sp, #0x20]
    str r1, [sp, #0x24]
    cmp r7, #1
    beq _080254DA
    cmp r7, #1
    bgt _080254C0
    cmp r7, #0
    beq _080254CA
    b _0802550A
_080254C0:
    cmp r7, #2
    beq _080254EA
    cmp r7, #3
    beq _080254FC
    b _0802550A
_080254CA:
    add r1, sp, #0x20
    ldrh r0, [r1, #2]
    adds r0, #1
    strh r0, [r1, #2]
    ldrh r0, [r1, #6]
    adds r0, #1
    strh r0, [r1, #6]
    b _0802550A
_080254DA:
    add r1, sp, #0x20
    ldrh r0, [r1, #2]
    subs r0, #1
    strh r0, [r1, #2]
    ldrh r0, [r1, #6]
    subs r0, #1
    strh r0, [r1, #6]
    b _0802550A
_080254EA:
    add r1, sp, #0x20
    movs r2, #1
    rsbs r2, r2, #0
    ldrh r0, [r1]
    adds r0, r0, r2
    strh r0, [r1]
    ldrh r0, [r1, #4]
    adds r0, r0, r2
    b _08025508
_080254FC:
    add r1, sp, #0x20
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    ldrh r0, [r1, #4]
    adds r0, #1
_08025508:
    strh r0, [r1, #4]
_0802550A:
    mov r1, r8
    cmp r1, #0
    bge _08025512
    b _08025664
_08025512:
    cmp r1, #1
    ble _0802556A
    cmp r1, #3
    ble _0802551C
    b _08025664
_0802551C:
    add r4, sp, #0x20
    movs r3, #1
    rsbs r3, r3, #0
    movs r0, #8
    str r0, [sp]
    mov r0, sb
    mov r1, sl
    adds r2, r4, #0
    bl func_08025248
    str r0, [sp, #0x48]
    cmp r0, #8
    bhi _08025616
    rsbs r2, r0, #0
    add r0, sp, #0x14
    movs r5, #0
    ldrsh r3, [r0, r5]
    movs r1, #2
    ldrsh r0, [r6, r1]
    movs r5, #4
    ldrsh r4, [r6, r5]
    movs r1, #6
    ldrsh r5, [r6, r1]
    add r1, sp, #0x28
    strh r3, [r1]
    adds r0, r2, r0
    strh r0, [r1, #2]
    strh r4, [r1, #4]
    adds r2, r2, r5
    strh r2, [r1, #6]
    mov r0, sl
    bl func_080AC070
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025616
    b _0802560E
_0802556A:
    add r4, sp, #0x20
    movs r3, #1
    rsbs r3, r3, #0
    movs r0, #8
    str r0, [sp]
    mov r0, sb
    mov r1, sl
    adds r2, r4, #0
    bl func_080251FC
    str r0, [sp, #0x48]
    cmp r0, #8
    bhi _080255BA
    rsbs r2, r0, #0
    add r0, sp, #0x14
    movs r5, #0
    ldrsh r0, [r0, r5]
    movs r1, #2
    ldrsh r3, [r6, r1]
    movs r5, #4
    ldrsh r4, [r6, r5]
    movs r1, #6
    ldrsh r5, [r6, r1]
    add r1, sp, #0x30
    adds r0, r2, r0
    strh r0, [r1]
    strh r3, [r1, #2]
    adds r2, r2, r4
    strh r2, [r1, #4]
    strh r5, [r1, #6]
    mov r0, sl
    bl func_080AC070
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080255BA
    movs r7, #2
    b _08025664
_080255BA:
    movs r0, #8
    str r0, [sp]
    mov r0, sb
    mov r1, sl
    add r2, sp, #0x20
    movs r3, #1
    bl func_080251FC
    str r0, [sp, #0x48]
    cmp r0, #8
    bhi _08025664
    add r0, sp, #0x14
    movs r2, #2
    ldrsh r3, [r6, r2]
    movs r5, #4
    ldrsh r4, [r6, r5]
    movs r2, #6
    ldrsh r1, [r6, r2]
    mov ip, r1
    add r1, sp, #0x38
    add r2, sp, #0x48
    movs r5, #0
    ldrsh r0, [r0, r5]
    ldrh r5, [r2]
    adds r0, r0, r5
    strh r0, [r1]
    strh r3, [r1, #2]
    ldrh r0, [r2]
    adds r0, r0, r4
    strh r0, [r1, #4]
    mov r0, ip
    strh r0, [r1, #6]
    mov r0, sl
    bl func_080AC070
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025664
    movs r7, #3
    b _08025664
_0802560E:
    movs r7, #1
    b _08025664
_08025612:
    ldr r0, [r4]
    b _080256C4
_08025616:
    movs r0, #8
    str r0, [sp]
    mov r0, sb
    mov r1, sl
    add r2, sp, #0x20
    movs r3, #1
    bl func_08025248
    str r0, [sp, #0x48]
    cmp r0, #8
    bhi _08025664
    add r0, sp, #0x14
    movs r1, #0
    ldrsh r0, [r0, r1]
    movs r2, #2
    ldrsh r3, [r6, r2]
    movs r5, #4
    ldrsh r4, [r6, r5]
    movs r1, #6
    ldrsh r5, [r6, r1]
    add r1, sp, #0x40
    strh r0, [r1]
    add r2, sp, #0x48
    ldrh r0, [r2]
    adds r0, r0, r3
    strh r0, [r1, #2]
    strh r4, [r1, #4]
    ldrh r0, [r2]
    adds r0, r0, r5
    strh r0, [r1, #6]
    mov r0, sl
    bl func_080AC070
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025664
    movs r7, #0
_08025664:
    cmp r7, r8
    beq _0802566E
    ldr r0, [sp, #0x48]
    cmp r0, #3
    bls _08025768
_0802566E:
    ldr r2, [sp, #0x50]
    cmp r2, #2
    bne _08025768
    mov r0, sb
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #2
    bne _08025768
    mov r0, sb
    mov r1, sl
    mov r2, r8
    adds r3, r6, #0
    bl func_08025294
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025768
    mov r5, sb
    ldr r0, [r5]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    mov r7, sb
    adds r7, #0x3c
    cmp r4, r5
    beq _080256C0
_080256AE:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025612
    adds r4, #4
    cmp r4, r5
    bne _080256AE
_080256C0:
    subs r0, r5, #4
    ldr r0, [r0]
_080256C4:
    movs r1, #0x69
    bl func_08008B6C
    movs r3, #0
    movs r5, #0
    mov r0, r8
    cmp r0, #1
    beq _080256FC
    cmp r0, #1
    bgt _080256DE
    cmp r0, #0
    beq _080256EA
    b _08025734
_080256DE:
    mov r1, r8
    cmp r1, #2
    beq _0802570E
    cmp r1, #3
    beq _08025720
    b _08025734
_080256EA:
    movs r2, #6
    ldrsh r0, [r6, r2]
    movs r5, #2
    ldrsh r1, [r6, r5]
    subs r0, r0, r1
    adds r3, r0, #0
    adds r3, #0x10
    ldr r0, [sp, #0x58]
    b _08025732
_080256FC:
    movs r1, #6
    ldrsh r0, [r6, r1]
    movs r2, #2
    ldrsh r1, [r6, r2]
    subs r0, r0, r1
    adds r0, #0x10
    rsbs r3, r0, #0
    ldr r0, [sp, #0x58]
    b _08025732
_0802570E:
    movs r1, #4
    ldrsh r0, [r6, r1]
    add r1, sp, #0x14
    movs r2, #0
    ldrsh r1, [r1, r2]
    subs r0, r0, r1
    adds r0, #0x10
    rsbs r3, r0, #0
    b _08025730
_08025720:
    movs r1, #4
    ldrsh r0, [r6, r1]
    add r1, sp, #0x14
    movs r2, #0
    ldrsh r1, [r1, r2]
    subs r0, r0, r1
    adds r3, r0, #0
    adds r3, #0x10
_08025730:
    ldr r0, [sp, #0x54]
_08025732:
    adds r5, r0, r3
_08025734:
    adds r1, r7, #0
    ldrb r0, [r1]
    cmp r0, #0
    bne _0802574A
    movs r0, #0x2c
    strb r0, [r1]
    mov r1, sb
    adds r1, #0x80
    lsls r0, r3, #0xc
    str r0, [r1]
    b _08025760
_0802574A:
    cmp r0, #7
    bne _080257B2
    movs r0, #0x2d
    strb r0, [r7]
    mov r4, sb
    adds r4, #0x80
    lsls r0, r3, #0x10
    movs r1, #0xc
    bl __divsi3
    str r0, [r4]
_08025760:
    mov r0, sb
    adds r0, #0x84
    strh r5, [r0]
    b _080257B2
_08025768:
    cmp r7, r8
    beq _080257B2
    add r3, sp, #0x4c
    ldr r1, [sp, #0x48]
    ldr r0, [sp, #0x4c]
    add r2, sp, #0x48
    cmp r1, r0
    bls _0802577A
    adds r2, r3, #0
_0802577A:
    ldr r0, [r2]
    cmp r7, #1
    beq _0802579C
    cmp r7, #1
    bgt _0802578A
    cmp r7, #0
    beq _08025794
    b _080257B2
_0802578A:
    cmp r7, #2
    beq _080257A4
    cmp r7, #3
    beq _080257AC
    b _080257B2
_08025794:
    ldr r1, [sp, #0x58]
    adds r1, r1, r0
    str r1, [sp, #0x58]
    b _080257B2
_0802579C:
    ldr r2, [sp, #0x58]
    subs r2, r2, r0
    str r2, [sp, #0x58]
    b _080257B2
_080257A4:
    ldr r5, [sp, #0x54]
    subs r5, r5, r0
    str r5, [sp, #0x54]
    b _080257B2
_080257AC:
    ldr r1, [sp, #0x54]
    adds r1, r1, r0
    str r1, [sp, #0x54]
_080257B2:
    ldr r2, [sp, #0x54]
    lsls r0, r2, #0x10
    mov r5, sb
    str r0, [r5, #8]
    ldr r1, [sp, #0x58]
    lsls r0, r1, #0x10
    str r0, [r5, #0xc]
_080257C0:
    add sp, #0x5c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_080257D0
func_080257D0: @ 0x080257D0
    push {r4, r5, lr}
    adds r4, r0, #0
    lsls r1, r1, #0x18
    cmp r1, #0
    bne _080257E6
    ldr r0, [r4, #0x38]
    bl func_0800EB3C
    b _080257EC
_080257E2:
    ldr r0, [r4]
    b _0802582C
_080257E6:
    ldr r0, [r4, #0x38]
    bl func_0800EBC4
_080257EC:
    cmp r0, #0
    beq _08025832
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #0x13
    strb r0, [r1]
    adds r0, r4, #0
    bl func_0802A7D8
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08025828
_08025816:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080257E2
    adds r4, #4
    cmp r4, r5
    bne _08025816
_08025828:
    subs r0, r5, #4
    ldr r0, [r0]
_0802582C:
    movs r1, #0x6b
    bl func_08008B6C
_08025832:
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_08025838
func_08025838: @ 0x08025838
    push {r4, r5, lr}
    adds r4, r0, #0
    lsls r1, r1, #0x18
    cmp r1, #0
    bne _0802584E
    ldr r0, [r4, #0x38]
    bl func_0800EB3C
    b _08025854
_0802584A:
    ldr r0, [r4]
    b _08025894
_0802584E:
    ldr r0, [r4, #0x38]
    bl func_0800EBC4
_08025854:
    cmp r0, #0
    beq _0802589A
    adds r0, r4, #0
    bl func_0802A588
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #0x14
    strb r0, [r1]
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08025890
_0802587E:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802584A
    adds r4, #4
    cmp r4, r5
    bne _0802587E
_08025890:
    subs r0, r5, #4
    ldr r0, [r0]
_08025894:
    movs r1, #0x6b
    bl func_08008B6C
_0802589A:
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_080258A0
func_080258A0: @ 0x080258A0
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r1, [r4, #0x38]
    adds r1, #0x54
    mov r0, sp
    bl func_0800F294
    mov r0, sp
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08025932
    ldr r0, [r4, #0x38]
    adds r0, #0x60
    bl func_0800F634
    adds r1, r0, #0
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    beq _0802592A
    ldr r0, [r4, #0x38]
    adds r0, #0x60
    bl func_0800FCDC
    ldr r1, [sp]
    str r1, [r0]
    ldr r0, [r4, #0x38]
    adds r0, #0x54
    bl func_0800F390
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #0x12
    strb r0, [r1]
    adds r0, r4, #0
    bl func_0802A7D8
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802591A
_08025908:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025926
    adds r4, #4
    cmp r4, r5
    bne _08025908
_0802591A:
    subs r0, r5, #4
    ldr r0, [r0]
_0802591E:
    movs r1, #0x6b
    bl func_08008B6C
    b _0802593A
_08025926:
    ldr r0, [r4]
    b _0802591E
_0802592A:
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #4
    b _08025938
_08025932:
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #0
_08025938:
    strb r0, [r1]
_0802593A:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08025944
func_08025944: @ 0x08025944
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, [r4, #0x38]
    adds r5, r0, #0
    adds r5, #0x5c
    adds r0, r5, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08025A34
    ldr r4, [r4, #0x38]
    adds r0, r5, #0
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    bl GetId__C4Tool
    subs r0, #5
    cmp r0, #0x28
    bhi _08025A34
    lsls r0, r0, #2
    ldr r1, _08025988 @ =_0802598C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08025988: .4byte _0802598C
_0802598C: @ jump table
    .4byte _08025A30 @ case 0
    .4byte _08025A34 @ case 1
    .4byte _08025A34 @ case 2
    .4byte _08025A34 @ case 3
    .4byte _08025A34 @ case 4
    .4byte _08025A34 @ case 5
    .4byte _08025A34 @ case 6
    .4byte _08025A34 @ case 7
    .4byte _08025A30 @ case 8
    .4byte _08025A34 @ case 9
    .4byte _08025A34 @ case 10
    .4byte _08025A34 @ case 11
    .4byte _08025A34 @ case 12
    .4byte _08025A34 @ case 13
    .4byte _08025A34 @ case 14
    .4byte _08025A34 @ case 15
    .4byte _08025A30 @ case 16
    .4byte _08025A34 @ case 17
    .4byte _08025A34 @ case 18
    .4byte _08025A34 @ case 19
    .4byte _08025A34 @ case 20
    .4byte _08025A34 @ case 21
    .4byte _08025A34 @ case 22
    .4byte _08025A34 @ case 23
    .4byte _08025A30 @ case 24
    .4byte _08025A34 @ case 25
    .4byte _08025A34 @ case 26
    .4byte _08025A34 @ case 27
    .4byte _08025A34 @ case 28
    .4byte _08025A34 @ case 29
    .4byte _08025A34 @ case 30
    .4byte _08025A34 @ case 31
    .4byte _08025A30 @ case 32
    .4byte _08025A34 @ case 33
    .4byte _08025A34 @ case 34
    .4byte _08025A34 @ case 35
    .4byte _08025A34 @ case 36
    .4byte _08025A34 @ case 37
    .4byte _08025A34 @ case 38
    .4byte _08025A34 @ case 39
    .4byte _08025A30 @ case 40
_08025A30:
    movs r0, #1
    b _08025A36
_08025A34:
    movs r0, #0
_08025A36:
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08025A40
func_08025A40: @ 0x08025A40
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    lsls r1, r1, #0x18
    lsrs r4, r1, #0x18
    bl func_08025944
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025A92
    ldr r0, [r5]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r6, [r0, #4]
    adds r5, #0x3c
    cmp r4, r6
    beq _08025A7E
_08025A6C:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025A8E
    adds r4, #4
    cmp r4, r6
    bne _08025A6C
_08025A7E:
    subs r0, r6, #4
    ldr r0, [r0]
_08025A82:
    movs r1, #0xc7
    bl func_08008B6C
    movs r0, #0
    strb r0, [r5]
    b _08025AF4
_08025A8E:
    ldr r0, [r4]
    b _08025A82
_08025A92:
    cmp r4, #0
    bne _08025AA2
    ldr r0, [r5, #0x38]
    bl func_0800EC4C
    b _08025AA8
_08025A9E:
    ldr r0, [r4]
    b _08025AEE
_08025AA2:
    ldr r0, [r5, #0x38]
    bl func_0800ECB0
_08025AA8:
    cmp r0, #0
    beq _08025AF4
    adds r1, r5, #0
    adds r1, #0x3c
    movs r0, #0x15
    strb r0, [r1]
    adds r1, #1
    movs r0, #0x14
    strb r0, [r1]
    adds r0, r5, #0
    bl func_0802A510
    ldr r0, [r5]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08025AEA
_08025AD8:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025A9E
    adds r4, #4
    cmp r4, r5
    bne _08025AD8
_08025AEA:
    subs r0, r5, #4
    ldr r0, [r0]
_08025AEE:
    movs r1, #0xbc
    bl func_08008B6C
_08025AF4:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08025AFC
func_08025AFC: @ 0x08025AFC
    push {lr}
    ldrh r0, [r0, #4]
    cmp r0, #8
    ble _08025B08
    movs r0, #0
    b _08025B0A
_08025B08:
    movs r0, #1
_08025B0A:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08025B10
func_08025B10: @ 0x08025B10
    push {r4, r5, lr}
    adds r5, r0, #0
    movs r4, #0
    bl func_08025AFC
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025B2C
    ldr r0, [r5, #0x34]
    ldr r0, [r0, #8]
    subs r0, #1
    cmp r0, #1
    bhi _08025B2C
    movs r4, #1
_08025B2C:
    ldr r0, [r5, #0x34]
    ldrh r0, [r0, #0x12]
    lsls r1, r0, #0x1b
    lsrs r0, r1, #0x1b
    cmp r0, #0x15
    bls _08025B3A
    adds r4, #1
_08025B3A:
    lsrs r0, r1, #0x1b
    cmp r0, #5
    bhi _08025B42
    adds r4, #2
_08025B42:
    ldr r0, [r5, #0x38]
    bl func_0800E4F0
    cmp r0, #0
    bne _08025B4E
    adds r4, #2
_08025B4E:
    adds r0, r5, #0
    bl func_08025944
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025B5C
    adds r4, #0xa
_08025B5C:
    adds r0, r4, #0
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_08025B64
func_08025B64: @ 0x08025B64
    push {r4, r5, r6, lr}
    sub sp, #0x28
    adds r6, r0, #0
    cmp r1, #0x22
    bhi _08025C08
    lsls r0, r1, #2
    ldr r1, _08025B78 @ =_08025B7C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08025B78: .4byte _08025B7C
_08025B7C: @ jump table
    .4byte _08025C08 @ case 0
    .4byte _08025C08 @ case 1
    .4byte _08025CB2 @ case 2
    .4byte _08025C12 @ case 3
    .4byte _08025C20 @ case 4
    .4byte _08025C28 @ case 5
    .4byte _08025C32 @ case 6
    .4byte _08025C3C @ case 7
    .4byte _08025C46 @ case 8
    .4byte _08025C4E @ case 9
    .4byte _08025C68 @ case 10
    .4byte _08025CCE @ case 11
    .4byte _08025CF8 @ case 12
    .4byte _08025D04 @ case 13
    .4byte _08025D0E @ case 14
    .4byte _08025D1A @ case 15
    .4byte _08025D26 @ case 16
    .4byte _08025D32 @ case 17
    .4byte _08025D3C @ case 18
    .4byte _08025D48 @ case 19
    .4byte _08025D54 @ case 20
    .4byte _08025D60 @ case 21
    .4byte _08025D6A @ case 22
    .4byte _08025D76 @ case 23
    .4byte _08025D82 @ case 24
    .4byte _08025D8E @ case 25
    .4byte _08025D98 @ case 26
    .4byte _08025DA4 @ case 27
    .4byte _08025DB0 @ case 28
    .4byte _08025DBC @ case 29
    .4byte _08025DC6 @ case 30
    .4byte _08025DD2 @ case 31
    .4byte _08025DDE @ case 32
    .4byte _08025DEA @ case 33
    .4byte _08025E0C @ case 34
_08025C08:
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0
    strb r0, [r1]
    b _08025E2E
_08025C12:
    ldr r0, [r6, #0x14]
    adds r0, #0x80
    ldr r1, [r0]
    adds r0, r6, #0
    bl _call_via_r1
    b _08025E2E
_08025C20:
    add r4, sp, #8
    adds r0, r4, #0
    movs r1, #5
    b _08025C56
_08025C28:
    mov r4, sp
    adds r4, #9
    adds r0, r4, #0
    movs r1, #0xd
    b _08025C56
_08025C32:
    mov r4, sp
    adds r4, #0xa
    adds r0, r4, #0
    movs r1, #0x15
    b _08025C56
_08025C3C:
    mov r4, sp
    adds r4, #0xb
    adds r0, r4, #0
    movs r1, #0x1d
    b _08025C56
_08025C46:
    add r4, sp, #0xc
    adds r0, r4, #0
    movs r1, #0x25
    b _08025C56
_08025C4E:
    mov r4, sp
    adds r4, #0xd
    adds r0, r4, #0
    movs r1, #0x2d
_08025C56:
    bl __4ToolUi
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_0802720C
    b _08025E2E
_08025C64:
    ldr r0, [r4]
    b _08025CAA
_08025C68:
    mov r4, sp
    adds r4, #0xe
    adds r0, r4, #0
    movs r1, #0x4d
    bl __4ToolUi
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_0802720C
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08025CA6
_08025C94:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025C64
    adds r4, #4
    cmp r4, r5
    bne _08025C94
_08025CA6:
    subs r0, r5, #4
    ldr r0, [r0]
_08025CAA:
    movs r1, #0xb6
    bl func_08008B6C
    b _08025E2E
_08025CB2:
    bl rand
    adds r1, r0, #0
    cmp r0, #0
    bge _08025CBE
    adds r1, #0xf
_08025CBE:
    asrs r1, r1, #4
    lsls r1, r1, #4
    subs r1, r0, r1
    adds r1, #5
    adds r0, r6, #0
    bl func_0802771C
    b _08025E2E
_08025CCE:
    ldr r5, [r6, #0x14]
    add r4, sp, #4
    adds r0, r4, #0
    movs r1, #0x36
    bl __4FoodUi
    ldrb r1, [r4]
    mov r0, sp
    adds r0, #5
    ldrb r0, [r0]
    lsls r0, r0, #8
    orrs r0, r1
    mov r1, sp
    adds r1, #6
    ldrb r1, [r1]
    lsls r1, r1, #0x10
    orrs r1, r0
    mov r0, sp
    bl __12RucksackItemG4Food
    b _08025DFE
_08025CF8:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0xf
    adds r0, r4, #0
    movs r1, #0x11
    b _08025DF2
_08025D04:
    ldr r5, [r6, #0x14]
    add r4, sp, #0x10
    adds r0, r4, #0
    movs r1, #0x12
    b _08025DF2
_08025D0E:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x11
    adds r0, r4, #0
    movs r1, #0x13
    b _08025DF2
_08025D1A:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x12
    adds r0, r4, #0
    movs r1, #0x14
    b _08025DF2
_08025D26:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x13
    adds r0, r4, #0
    movs r1, #0x15
    b _08025DF2
_08025D32:
    ldr r5, [r6, #0x14]
    add r4, sp, #0x14
    adds r0, r4, #0
    movs r1, #0x16
    b _08025DF2
_08025D3C:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x15
    adds r0, r4, #0
    movs r1, #0x17
    b _08025DF2
_08025D48:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x16
    adds r0, r4, #0
    movs r1, #0x18
    b _08025DF2
_08025D54:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x17
    adds r0, r4, #0
    movs r1, #0x19
    b _08025DF2
_08025D60:
    ldr r5, [r6, #0x14]
    add r4, sp, #0x18
    adds r0, r4, #0
    movs r1, #0x1a
    b _08025DF2
_08025D6A:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x19
    adds r0, r4, #0
    movs r1, #0x1b
    b _08025DF2
_08025D76:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x1a
    adds r0, r4, #0
    movs r1, #0x1c
    b _08025DF2
_08025D82:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x1b
    adds r0, r4, #0
    movs r1, #0x1d
    b _08025DF2
_08025D8E:
    ldr r5, [r6, #0x14]
    add r4, sp, #0x1c
    adds r0, r4, #0
    movs r1, #0x1e
    b _08025DF2
_08025D98:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x1d
    adds r0, r4, #0
    movs r1, #0x1f
    b _08025DF2
_08025DA4:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x1e
    adds r0, r4, #0
    movs r1, #0x20
    b _08025DF2
_08025DB0:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x1f
    adds r0, r4, #0
    movs r1, #0x21
    b _08025DF2
_08025DBC:
    ldr r5, [r6, #0x14]
    add r4, sp, #0x20
    adds r0, r4, #0
    movs r1, #0x22
    b _08025DF2
_08025DC6:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x21
    adds r0, r4, #0
    movs r1, #0x23
    b _08025DF2
_08025DD2:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x22
    adds r0, r4, #0
    movs r1, #0x24
    b _08025DF2
_08025DDE:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x23
    adds r0, r4, #0
    movs r1, #0x25
    b _08025DF2
_08025DEA:
    ldr r5, [r6, #0x14]
    add r4, sp, #0x24
    adds r0, r4, #0
    movs r1, #0x26
_08025DF2:
    bl __7ArticleUi
    ldrb r1, [r4]
    mov r0, sp
    bl __12RucksackItemG7Article
_08025DFE:
    ldr r3, [r5, #0x5c]
    adds r0, r6, #0
    mov r1, sp
    movs r2, #0
    bl _call_via_r3
    b _08025E2E
_08025E0C:
    ldr r5, [r6, #0x14]
    mov r4, sp
    adds r4, #0x25
    adds r0, r4, #0
    movs r1, #0x33
    bl __7ArticleUi
    ldrb r1, [r4]
    mov r0, sp
    bl __12RucksackItemG7Article
    ldr r3, [r5, #0x5c]
    adds r0, r6, #0
    mov r1, sp
    movs r2, #0
    bl _call_via_r3
_08025E2E:
    add sp, #0x28
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08025E38
func_08025E38: @ 0x08025E38
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x38]
    adds r0, #0x54
    bl func_0800F4C0
    adds r0, r4, #0
    bl func_0802A588
    adds r1, r4, #0
    adds r1, #0x3c
    movs r5, #0
    movs r0, #0x11
    strb r0, [r1]
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r3, [r0]
    cmp r3, #1
    beq _08025E9A
    cmp r3, #1
    bgt _08025E68
    cmp r3, #0
    beq _08025EB0
    b _08025EC2
_08025E68:
    cmp r3, #2
    beq _08025E72
    cmp r3, #3
    beq _08025E88
    b _08025EC2
_08025E72:
    adds r0, r4, #0
    adds r0, #0x88
    ldr r1, _08025E84 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r5, [r0, #8]
    b _08025EC0
    .align 2, 0
_08025E84: .4byte 0xFFF60000
_08025E88:
    adds r0, r4, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r5, [r0, #8]
    b _08025EC0
_08025E9A:
    adds r0, r4, #0
    adds r0, #0x88
    ldr r1, _08025EA8 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r5, [r0, #4]
    b _08025EBE
    .align 2, 0
_08025EA8: .4byte 0xFFF60000
_08025EAC:
    ldr r0, [r4]
    b _08025EF0
_08025EB0:
    adds r0, r4, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r3, [r0, #4]
_08025EBE:
    str r1, [r0, #8]
_08025EC0:
    str r2, [r0, #0x14]
_08025EC2:
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08025EEC
_08025EDA:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025EAC
    adds r4, #4
    cmp r4, r5
    bne _08025EDA
_08025EEC:
    subs r0, r5, #4
    ldr r0, [r0]
_08025EF0:
    movs r1, #0x6a
    bl func_08008B6C
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_08025EFC
func_08025EFC: @ 0x08025EFC
    push {r4, r5, lr}
    adds r4, r0, #0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    ldr r0, [r4, #0x38]
    adds r0, #0x54
    bl func_0800F4F0
    adds r0, r4, #0
    bl func_0802A588
    adds r1, r4, #0
    adds r1, #0x3c
    movs r5, #0
    movs r0, #0x11
    strb r0, [r1]
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r3, [r0]
    cmp r3, #1
    beq _08025F62
    cmp r3, #1
    bgt _08025F30
    cmp r3, #0
    beq _08025F78
    b _08025F8A
_08025F30:
    cmp r3, #2
    beq _08025F3A
    cmp r3, #3
    beq _08025F50
    b _08025F8A
_08025F3A:
    adds r0, r4, #0
    adds r0, #0x88
    ldr r1, _08025F4C @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r5, [r0, #8]
    b _08025F88
    .align 2, 0
_08025F4C: .4byte 0xFFF60000
_08025F50:
    adds r0, r4, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r5, [r0, #8]
    b _08025F88
_08025F62:
    adds r0, r4, #0
    adds r0, #0x88
    ldr r1, _08025F70 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r5, [r0, #4]
    b _08025F86
    .align 2, 0
_08025F70: .4byte 0xFFF60000
_08025F74:
    ldr r0, [r4]
    b _08025FB8
_08025F78:
    adds r0, r4, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r3, [r0, #4]
_08025F86:
    str r1, [r0, #8]
_08025F88:
    str r2, [r0, #0x14]
_08025F8A:
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08025FB4
_08025FA2:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08025F74
    adds r4, #4
    cmp r4, r5
    bne _08025FA2
_08025FB4:
    subs r0, r5, #4
    ldr r0, [r0]
_08025FB8:
    movs r1, #0x6a
    bl func_08008B6C
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_08025FC4
func_08025FC4: @ 0x08025FC4
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x38]
    adds r0, #0x54
    bl func_0800F4D8
    adds r0, r4, #0
    bl func_0802A588
    adds r1, r4, #0
    adds r1, #0x3c
    movs r5, #0
    movs r0, #0x11
    strb r0, [r1]
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r3, [r0]
    cmp r3, #1
    beq _08026026
    cmp r3, #1
    bgt _08025FF4
    cmp r3, #0
    beq _0802603C
    b _0802604E
_08025FF4:
    cmp r3, #2
    beq _08025FFE
    cmp r3, #3
    beq _08026014
    b _0802604E
_08025FFE:
    adds r0, r4, #0
    adds r0, #0x88
    ldr r1, _08026010 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r5, [r0, #8]
    b _0802604C
    .align 2, 0
_08026010: .4byte 0xFFF60000
_08026014:
    adds r0, r4, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r5, [r0, #8]
    b _0802604C
_08026026:
    adds r0, r4, #0
    adds r0, #0x88
    ldr r1, _08026034 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r5, [r0, #4]
    b _0802604A
    .align 2, 0
_08026034: .4byte 0xFFF60000
_08026038:
    ldr r0, [r4]
    b _0802607C
_0802603C:
    adds r0, r4, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r3, [r0, #4]
_0802604A:
    str r1, [r0, #8]
_0802604C:
    str r2, [r0, #0x14]
_0802604E:
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08026078
_08026066:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08026038
    adds r4, #4
    cmp r4, r5
    bne _08026066
_08026078:
    subs r0, r5, #4
    ldr r0, [r0]
_0802607C:
    movs r1, #0x6a
    bl func_08008B6C
    pop {r4, r5}
    pop {r0}
    bx r0
_08026088:
    .byte 0x30, 0xB5, 0x04, 0x1C, 0x09, 0x04, 0x09, 0x0C
    .byte 0xA0, 0x6B, 0x54, 0x30, 0xE9, 0xF7, 0x3C, 0xFA, 0x20, 0x1C, 0x04, 0xF0, 0x75, 0xFA, 0x21, 0x1C
    .byte 0x3C, 0x31, 0x00, 0x25, 0x11, 0x20, 0x08, 0x70, 0x20, 0x1C, 0x20, 0x30, 0x03, 0x78, 0x01, 0x2B
    .byte 0x1D, 0xD0, 0x01, 0x2B, 0x02, 0xDC, 0x00, 0x2B, 0x24, 0xD0, 0x2C, 0xE0, 0x02, 0x2B, 0x02, 0xD0
    .byte 0x03, 0x2B, 0x0B, 0xD0, 0x27, 0xE0, 0x20, 0x1C, 0x88, 0x30, 0x03, 0x49, 0xC0, 0x22, 0x12, 0x03
    .byte 0x41, 0x60, 0x85, 0x60, 0x1E, 0xE0, 0x00, 0x00, 0x00, 0x00, 0xF6, 0xFF, 0x20, 0x1C, 0x88, 0x30
    .byte 0xA0, 0x21, 0x09, 0x03, 0xC0, 0x22, 0x12, 0x03, 0x41, 0x60, 0x85, 0x60, 0x12, 0xE0, 0x20, 0x1C
    .byte 0x88, 0x30, 0x02, 0x49, 0xC0, 0x22, 0x12, 0x03, 0x45, 0x60, 0x0A, 0xE0, 0x00, 0x00, 0xF6, 0xFF
    .byte 0x20, 0x68, 0x1F, 0xE0, 0x20, 0x1C, 0x88, 0x30, 0xA0, 0x21, 0x09, 0x03, 0xC0, 0x22, 0x12, 0x03
    .byte 0x43, 0x60, 0x81, 0x60, 0x42, 0x61, 0x20, 0x68, 0x01, 0x68, 0xA6, 0x22, 0x52, 0x00, 0x89, 0x18
    .byte 0x09, 0x68, 0xAD, 0xF0, 0xF5, 0xFB, 0x04, 0x68, 0x45, 0x68, 0xAC, 0x42, 0x08, 0xD0, 0x20, 0x68
    .byte 0xE2, 0xF7, 0xCE, 0xFD, 0x00, 0x06, 0x00, 0x28, 0xE2, 0xD0, 0x04, 0x34, 0xAC, 0x42, 0xF6, 0xD1
    .byte 0x28, 0x1F, 0x00, 0x68, 0x6A, 0x21, 0xE2, 0xF7, 0x11, 0xFD, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_08026150
func_08026150: @ 0x08026150
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0xc
    adds r5, r0, #0
    adds r6, r1, #0
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    mov r8, r2
    add r4, sp, #8
    adds r0, r4, #0
    bl __7Product
    adds r0, r6, #0
    bl GetKind__C12RucksackItem
    adds r7, r4, #0
    cmp r0, #0
    beq _0802617C
    cmp r0, #1
    beq _080261A6
    b _080261BC
_0802617C:
    mov r4, sp
    adds r4, #9
    mov r0, sp
    adds r1, r6, #0
    bl GetFood__C12RucksackItem
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
    adds r0, r4, #0
    bl __7ProductG4Food
    b _080261B8
_080261A6:
    mov r4, sp
    adds r4, #0xa
    adds r0, r6, #0
    bl GetArticle__C12RucksackItem
    adds r1, r0, #0
    adds r0, r4, #0
    bl __7ProductG7Article
_080261B8:
    ldrb r0, [r4]
    strb r0, [r7]
_080261BC:
    ldr r0, [r5, #0x34]
    adds r4, r0, #0
    adds r4, #0x54
    adds r0, r7, #0
    bl GetPrice__C7Product
    cmp r0, #0
    beq _080261EE
    adds r0, r7, #0
    bl GetId__C7Product
    adds r1, r0, #0
    adds r0, r4, #0
    bl IsDisplayEnabled__C11ShippingBini
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080261EE
    adds r0, r7, #0
    bl GetId__C7Product
    adds r1, r0, #0
    adds r0, r4, #0
    bl ForceEnableDisplay__11ShippingBini
_080261EE:
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    ldr r1, [r6]
    str r1, [sp, #4]
    bl func_0800F418
    mov r0, r8
    cmp r0, #0
    beq _08026208
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    bl func_0800F528
_08026208:
    adds r0, r5, #0
    bl func_0802A588
    adds r0, r5, #0
    adds r0, #0x3c
    movs r4, #0
    movs r1, #0x11
    strb r1, [r0]
    subs r0, #0x1c
    ldrb r3, [r0]
    cmp r3, #1
    beq _0802625A
    cmp r3, #1
    bgt _0802622A
    cmp r3, #0
    beq _08026270
    b _08026282
_0802622A:
    cmp r3, #2
    beq _08026234
    cmp r3, #3
    beq _08026248
    b _08026282
_08026234:
    adds r0, r5, #0
    adds r0, #0x88
    ldr r1, _08026244 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r4, [r0, #8]
    b _08026280
    .align 2, 0
_08026244: .4byte 0xFFF60000
_08026248:
    adds r0, r5, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r4, [r0, #8]
    b _08026280
_0802625A:
    adds r0, r5, #0
    adds r0, #0x88
    ldr r1, _08026268 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r4, [r0, #4]
    b _0802627E
    .align 2, 0
_08026268: .4byte 0xFFF60000
_0802626C:
    ldr r0, [r4]
    b _080262B0
_08026270:
    adds r0, r5, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r3, [r0, #4]
_0802627E:
    str r1, [r0, #8]
_08026280:
    str r2, [r0, #0x14]
_08026282:
    ldr r0, [r5]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _080262AC
_0802629A:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802626C
    adds r4, #4
    cmp r4, r5
    bne _0802629A
_080262AC:
    subs r0, r5, #4
    ldr r0, [r0]
_080262B0:
    movs r1, #0x6a
    bl func_08008B6C
    add sp, #0xc
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080262C4
func_080262C4: @ 0x080262C4
    push {r4, r5, lr}
    sub sp, #8
    ldr r0, [r0, #0x34]
    ldr r1, _080262F8 @ =0x00001C2C
    adds r5, r0, r1
    adds r0, r5, #0
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08026338
    adds r0, r5, #0
    bl func_0800F388
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08026338
    adds r0, r5, #0
    bl func_0800F204
    cmp r0, #0
    beq _080262FC
    cmp r0, #1
    beq _08026324
    b _08026338
    .align 2, 0
_080262F8: .4byte 0x00001C2C
_080262FC:
    add r4, sp, #4
    mov r0, sp
    adds r1, r5, #0
    bl func_0800F20C
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
    adds r0, r4, #0
    bl __7ProductG4Food
    b _08026342
_08026324:
    mov r4, sp
    adds r4, #5
    adds r0, r5, #0
    bl func_0800F258
    adds r1, r0, #0
    adds r0, r4, #0
    bl __7ProductG7Article
    b _08026342
_08026338:
    mov r4, sp
    adds r4, #6
    adds r0, r4, #0
    bl __7Product
_08026342:
    ldrb r0, [r4]
    add sp, #8
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_0802634C
func_0802634C: @ 0x0802634C
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, [r6, #0x38]
    bl func_0800EAF0
    adds r0, r6, #0
    adds r0, #0x88
    movs r5, #0
    movs r7, #1
    strb r7, [r0]
    strb r5, [r0, #1]
    ldr r1, _080263CC @ =0xFFF80000
    movs r2, #0x88
    lsls r2, r2, #0xd
    str r1, [r0, #4]
    str r5, [r0, #8]
    str r2, [r0, #0x14]
    ldr r4, [r6, #0x10]
    cmp r4, #0
    beq _0802639C
    ldr r0, [r4]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0xb4
    ldr r2, _080263D0 @ =0x000001DD
    bl func_0805E850
    adds r0, r4, #0
    adds r0, #0xc8
    strb r7, [r0]
    adds r0, #2
    strb r5, [r0]
    adds r0, #1
    strb r7, [r0]
_0802639C:
    adds r3, r6, #0
    adds r3, #0x3c
    movs r0, #0x2f
    strb r0, [r3]
    adds r2, r6, #0
    adds r2, #0x3d
    movs r0, #0x78
    strb r0, [r2]
    movs r5, #0xc9
    lsls r5, r5, #1
    adds r1, r6, #0
    adds r1, #0x7c
    ldr r0, _080263D4 @ =0x0000FFFF
    strh r0, [r1]
    ldrb r0, [r3]
    adds r7, r1, #0
    cmp r0, #0x39
    bls _080263C2
    b _080267E4
_080263C2:
    lsls r0, r0, #2
    ldr r1, _080263D8 @ =_080263DC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080263CC: .4byte 0xFFF80000
_080263D0: .4byte 0x000001DD
_080263D4: .4byte 0x0000FFFF
_080263D8: .4byte _080263DC
_080263DC: @ jump table
    .4byte _080264C4 @ case 0
    .4byte _0802659E @ case 1
    .4byte _08026538 @ case 2
    .4byte _0802659E @ case 3
    .4byte _08026588 @ case 4
    .4byte _0802659E @ case 5
    .4byte _080266BA @ case 6
    .4byte _080266C6 @ case 7
    .4byte _080267DA @ case 8
    .4byte _080265D6 @ case 9
    .4byte _080267BA @ case 10
    .4byte _080265BC @ case 11
    .4byte _080265BC @ case 12
    .4byte _080265B6 @ case 13
    .4byte _080265BC @ case 14
    .4byte _080265C2 @ case 15
    .4byte _080265C6 @ case 16
    .4byte _080267A8 @ case 17
    .4byte _080267B4 @ case 18
    .4byte _080265CA @ case 19
    .4byte _080265D0 @ case 20
    .4byte _080267BA @ case 21
    .4byte _080266AE @ case 22
    .4byte _080266B4 @ case 23
    .4byte _080266C0 @ case 24
    .4byte _08026624 @ case 25
    .4byte _08026624 @ case 26
    .4byte _080265F6 @ case 27
    .4byte _08026614 @ case 28
    .4byte _08026614 @ case 29
    .4byte _08026654 @ case 30
    .4byte _0802666E @ case 31
    .4byte _0802668A @ case 32
    .4byte _080267A8 @ case 33
    .4byte _08026710 @ case 34
    .4byte _0802672C @ case 35
    .4byte _08026744 @ case 36
    .4byte _0802674A @ case 37
    .4byte _08026750 @ case 38
    .4byte _08026754 @ case 39
    .4byte _08026758 @ case 40
    .4byte _0802675E @ case 41
    .4byte _08026764 @ case 42
    .4byte _08026764 @ case 43
    .4byte _0802676A @ case 44
    .4byte _08026780 @ case 45
    .4byte _080267A4 @ case 46
    .4byte _080267BA @ case 47
    .4byte _080267AE @ case 48
    .4byte _080267A8 @ case 49
    .4byte _080267AE @ case 50
    .4byte _080267B4 @ case 51
    .4byte _080267BA @ case 52
    .4byte _080267BE @ case 53
    .4byte _080267A8 @ case 54
    .4byte _080267A8 @ case 55
    .4byte _080267AE @ case 56
    .4byte _080267AE @ case 57
_080264C4:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080264F6
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _080264DE
    b _080267D0
_080264DE:
    cmp r0, #1
    bgt _080264EA
    cmp r0, #0
    bne _080264E8
    b _080267AE
_080264E8:
    b _080267E4
_080264EA:
    cmp r0, #2
    beq _080264F0
    b _080267E4
_080264F0:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _080267E4
_080264F6:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08026512
    cmp r0, #1
    bgt _0802650C
    cmp r0, #0
    bne _0802650A
    b _08026624
_0802650A:
    b _080267E4
_0802650C:
    cmp r0, #2
    beq _08026524
    b _080267E4
_08026512:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08026534
    adds r1, #0x94
    b _08026534
_08026524:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08026534
    adds r1, #0x2c
_08026534:
    adds r5, r1, #0
    b _080267E4
_08026538:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08026548
    b _080267AE
_08026548:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _08026624
    cmp r3, #0
    blt _08026624
    ldr r2, _08026584 @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    b _080266A6
    .align 2, 0
_08026584: .4byte 0x080F0FCC
_08026588:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _0802659C
    b _080267E4
_0802659C:
    b _080267AE
_0802659E:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _080265B2
    b _080267E4
_080265B2:
    subs r5, #0x40
    b _080267E4
_080265B6:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _080267E4
_080265BC:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _080267E4
_080265C2:
    movs r5, #0x4e
    b _080267E4
_080265C6:
    movs r5, #0x46
    b _080267E4
_080265CA:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _080267E4
_080265D0:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _080267E4
_080265D6:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _080266A4
_080265F6:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _080266A4
_08026614:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _0802662A
_08026624:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _080267E4
_0802662A:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _0802663A
    adds r5, #4
_0802663A:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _080266A4
_08026654:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
    b _080266A4
_0802666E:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    b _080266A4
_0802668A:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
_080266A4:
    strb r1, [r0]
_080266A6:
    bl GetIconId__C4Tool
    strh r0, [r7]
    b _080267E4
_080266AE:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _080267E4
_080266B4:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _080267E4
_080266BA:
    movs r5, #0x89
    lsls r5, r5, #1
    b _080267E4
_080266C0:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _080267E4
_080266C6:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _080266F8
    cmp r0, #1
    bgt _080266E8
    cmp r0, #0
    beq _080266EE
    b _080267E4
_080266E8:
    cmp r0, #2
    beq _08026704
    b _080267E4
_080266EE:
    movs r5, #0xea
    ldr r1, _080266F4 @ =0x0000077A
    b _08026792
    .align 2, 0
_080266F4: .4byte 0x0000077A
_080266F8:
    movs r5, #0xee
    ldr r1, _08026700 @ =0x0000077E
    b _08026792
    .align 2, 0
_08026700: .4byte 0x0000077E
_08026704:
    movs r5, #0xe6
    ldr r1, _0802670C @ =0x00000782
    b _08026792
    .align 2, 0
_0802670C: .4byte 0x00000782
_08026710:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08026728 @ =0x0000077A
    b _08026792
    .align 2, 0
_08026728: .4byte 0x0000077A
_0802672C:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08026740 @ =0x0000077A
    b _08026792
    .align 2, 0
_08026740: .4byte 0x0000077A
_08026744:
    movs r5, #0x83
    lsls r5, r5, #1
    b _080267E4
_0802674A:
    movs r5, #0x81
    lsls r5, r5, #1
    b _080267E4
_08026750:
    movs r5, #0xfe
    b _080267E4
_08026754:
    movs r5, #0xfa
    b _080267E4
_08026758:
    movs r5, #0x91
    lsls r5, r5, #1
    b _080267E4
_0802675E:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _080267E4
_08026764:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _080267E4
_0802676A:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _080267E4
    subs r5, #0x40
    b _080267E4
_08026780:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _080267A0 @ =0x00000792
_08026792:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _080267E4
    adds r0, r2, #0
    bl func_080321B0
    b _080267E4
    .align 2, 0
_080267A0: .4byte 0x00000792
_080267A4:
    movs r5, #0x3e
    b _080267E4
_080267A8:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _080267E4
_080267AE:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _080267E4
_080267B4:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _080267E4
_080267BA:
    movs r5, #0x42
    b _080267E4
_080267BE:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _080267E4
_080267D0:
    movs r5, #0xab
    lsls r5, r5, #1
    b _080267E4
_080267D6:
    ldr r0, [r4]
    b _0802681E
_080267DA:
    ldrb r0, [r2]
    movs r5, #0xf6
    cmp r0, #0
    beq _080267E4
    movs r5, #0xf2
_080267E4:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    adds r6, #0xc0
    cmp r4, r5
    beq _0802681A
_08026808:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080267D6
    adds r4, #4
    cmp r4, r5
    bne _08026808
_0802681A:
    subs r0, r5, #4
    ldr r0, [r0]
_0802681E:
    movs r1, #0xb6
    bl func_08008B6C
    movs r0, #1
    strb r0, [r6]
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08026830
func_08026830: @ 0x08026830
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, [r6, #0x38]
    bl func_0800EAFC
    adds r0, r6, #0
    adds r0, #0x88
    movs r5, #0
    movs r7, #1
    strb r7, [r0]
    strb r5, [r0, #1]
    ldr r1, _080268B0 @ =0xFFF80000
    movs r2, #0x88
    lsls r2, r2, #0xd
    str r1, [r0, #4]
    str r5, [r0, #8]
    str r2, [r0, #0x14]
    ldr r4, [r6, #0x10]
    cmp r4, #0
    beq _08026880
    ldr r0, [r4]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0xb4
    ldr r2, _080268B4 @ =0x0000015F
    bl func_0805E850
    adds r0, r4, #0
    adds r0, #0xc8
    strb r7, [r0]
    adds r0, #2
    strb r5, [r0]
    adds r0, #1
    strb r7, [r0]
_08026880:
    adds r3, r6, #0
    adds r3, #0x3c
    movs r0, #0x2f
    strb r0, [r3]
    adds r2, r6, #0
    adds r2, #0x3d
    movs r0, #0x78
    strb r0, [r2]
    movs r5, #0xc9
    lsls r5, r5, #1
    adds r1, r6, #0
    adds r1, #0x7c
    ldr r0, _080268B8 @ =0x0000FFFF
    strh r0, [r1]
    ldrb r0, [r3]
    adds r7, r1, #0
    cmp r0, #0x39
    bls _080268A6
    b _08026CC8
_080268A6:
    lsls r0, r0, #2
    ldr r1, _080268BC @ =_080268C0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080268B0: .4byte 0xFFF80000
_080268B4: .4byte 0x0000015F
_080268B8: .4byte 0x0000FFFF
_080268BC: .4byte _080268C0
_080268C0: @ jump table
    .4byte _080269A8 @ case 0
    .4byte _08026A82 @ case 1
    .4byte _08026A1C @ case 2
    .4byte _08026A82 @ case 3
    .4byte _08026A6C @ case 4
    .4byte _08026A82 @ case 5
    .4byte _08026B9E @ case 6
    .4byte _08026BAA @ case 7
    .4byte _08026CBE @ case 8
    .4byte _08026ABA @ case 9
    .4byte _08026C9E @ case 10
    .4byte _08026AA0 @ case 11
    .4byte _08026AA0 @ case 12
    .4byte _08026A9A @ case 13
    .4byte _08026AA0 @ case 14
    .4byte _08026AA6 @ case 15
    .4byte _08026AAA @ case 16
    .4byte _08026C8C @ case 17
    .4byte _08026C98 @ case 18
    .4byte _08026AAE @ case 19
    .4byte _08026AB4 @ case 20
    .4byte _08026C9E @ case 21
    .4byte _08026B92 @ case 22
    .4byte _08026B98 @ case 23
    .4byte _08026BA4 @ case 24
    .4byte _08026B08 @ case 25
    .4byte _08026B08 @ case 26
    .4byte _08026ADA @ case 27
    .4byte _08026AF8 @ case 28
    .4byte _08026AF8 @ case 29
    .4byte _08026B38 @ case 30
    .4byte _08026B52 @ case 31
    .4byte _08026B6E @ case 32
    .4byte _08026C8C @ case 33
    .4byte _08026BF4 @ case 34
    .4byte _08026C10 @ case 35
    .4byte _08026C28 @ case 36
    .4byte _08026C2E @ case 37
    .4byte _08026C34 @ case 38
    .4byte _08026C38 @ case 39
    .4byte _08026C3C @ case 40
    .4byte _08026C42 @ case 41
    .4byte _08026C48 @ case 42
    .4byte _08026C48 @ case 43
    .4byte _08026C4E @ case 44
    .4byte _08026C64 @ case 45
    .4byte _08026C88 @ case 46
    .4byte _08026C9E @ case 47
    .4byte _08026C92 @ case 48
    .4byte _08026C8C @ case 49
    .4byte _08026C92 @ case 50
    .4byte _08026C98 @ case 51
    .4byte _08026C9E @ case 52
    .4byte _08026CA2 @ case 53
    .4byte _08026C8C @ case 54
    .4byte _08026C8C @ case 55
    .4byte _08026C92 @ case 56
    .4byte _08026C92 @ case 57
_080269A8:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080269DA
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _080269C2
    b _08026CB4
_080269C2:
    cmp r0, #1
    bgt _080269CE
    cmp r0, #0
    bne _080269CC
    b _08026C92
_080269CC:
    b _08026CC8
_080269CE:
    cmp r0, #2
    beq _080269D4
    b _08026CC8
_080269D4:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _08026CC8
_080269DA:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _080269F6
    cmp r0, #1
    bgt _080269F0
    cmp r0, #0
    bne _080269EE
    b _08026B08
_080269EE:
    b _08026CC8
_080269F0:
    cmp r0, #2
    beq _08026A08
    b _08026CC8
_080269F6:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08026A18
    adds r1, #0x94
    b _08026A18
_08026A08:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08026A18
    adds r1, #0x2c
_08026A18:
    adds r5, r1, #0
    b _08026CC8
_08026A1C:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08026A2C
    b _08026C92
_08026A2C:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _08026B08
    cmp r3, #0
    blt _08026B08
    ldr r2, _08026A68 @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    b _08026B8A
    .align 2, 0
_08026A68: .4byte 0x080F0FCC
_08026A6C:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08026A80
    b _08026CC8
_08026A80:
    b _08026C92
_08026A82:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08026A96
    b _08026CC8
_08026A96:
    subs r5, #0x40
    b _08026CC8
_08026A9A:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _08026CC8
_08026AA0:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _08026CC8
_08026AA6:
    movs r5, #0x4e
    b _08026CC8
_08026AAA:
    movs r5, #0x46
    b _08026CC8
_08026AAE:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _08026CC8
_08026AB4:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _08026CC8
_08026ABA:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _08026B88
_08026ADA:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _08026B88
_08026AF8:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _08026B0E
_08026B08:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _08026CC8
_08026B0E:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _08026B1E
    adds r5, #4
_08026B1E:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _08026B88
_08026B38:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
    b _08026B88
_08026B52:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    b _08026B88
_08026B6E:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
_08026B88:
    strb r1, [r0]
_08026B8A:
    bl GetIconId__C4Tool
    strh r0, [r7]
    b _08026CC8
_08026B92:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _08026CC8
_08026B98:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _08026CC8
_08026B9E:
    movs r5, #0x89
    lsls r5, r5, #1
    b _08026CC8
_08026BA4:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _08026CC8
_08026BAA:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08026BDC
    cmp r0, #1
    bgt _08026BCC
    cmp r0, #0
    beq _08026BD2
    b _08026CC8
_08026BCC:
    cmp r0, #2
    beq _08026BE8
    b _08026CC8
_08026BD2:
    movs r5, #0xea
    ldr r1, _08026BD8 @ =0x0000077A
    b _08026C76
    .align 2, 0
_08026BD8: .4byte 0x0000077A
_08026BDC:
    movs r5, #0xee
    ldr r1, _08026BE4 @ =0x0000077E
    b _08026C76
    .align 2, 0
_08026BE4: .4byte 0x0000077E
_08026BE8:
    movs r5, #0xe6
    ldr r1, _08026BF0 @ =0x00000782
    b _08026C76
    .align 2, 0
_08026BF0: .4byte 0x00000782
_08026BF4:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08026C0C @ =0x0000077A
    b _08026C76
    .align 2, 0
_08026C0C: .4byte 0x0000077A
_08026C10:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08026C24 @ =0x0000077A
    b _08026C76
    .align 2, 0
_08026C24: .4byte 0x0000077A
_08026C28:
    movs r5, #0x83
    lsls r5, r5, #1
    b _08026CC8
_08026C2E:
    movs r5, #0x81
    lsls r5, r5, #1
    b _08026CC8
_08026C34:
    movs r5, #0xfe
    b _08026CC8
_08026C38:
    movs r5, #0xfa
    b _08026CC8
_08026C3C:
    movs r5, #0x91
    lsls r5, r5, #1
    b _08026CC8
_08026C42:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _08026CC8
_08026C48:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _08026CC8
_08026C4E:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _08026CC8
    subs r5, #0x40
    b _08026CC8
_08026C64:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08026C84 @ =0x00000792
_08026C76:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _08026CC8
    adds r0, r2, #0
    bl func_080321B0
    b _08026CC8
    .align 2, 0
_08026C84: .4byte 0x00000792
_08026C88:
    movs r5, #0x3e
    b _08026CC8
_08026C8C:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _08026CC8
_08026C92:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _08026CC8
_08026C98:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _08026CC8
_08026C9E:
    movs r5, #0x42
    b _08026CC8
_08026CA2:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _08026CC8
_08026CB4:
    movs r5, #0xab
    lsls r5, r5, #1
    b _08026CC8
_08026CBA:
    ldr r0, [r4]
    b _08026D02
_08026CBE:
    ldrb r0, [r2]
    movs r5, #0xf6
    cmp r0, #0
    beq _08026CC8
    movs r5, #0xf2
_08026CC8:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    adds r6, #0xc0
    cmp r4, r5
    beq _08026CFE
_08026CEC:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08026CBA
    adds r4, #4
    cmp r4, r5
    bne _08026CEC
_08026CFE:
    subs r0, r5, #4
    ldr r0, [r0]
_08026D02:
    movs r1, #0xb6
    bl func_08008B6C
    movs r0, #1
    strb r0, [r6]
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08026D14
func_08026D14: @ 0x08026D14
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    lsls r1, r1, #0x10
    lsrs r5, r1, #0x10
    adds r1, r6, #0
    adds r1, #0x3c
    movs r4, #0
    movs r0, #0x11
    strb r0, [r1]
    adds r2, r6, #0
    adds r2, #0x88
    movs r0, #1
    strb r0, [r2]
    strb r4, [r2, #1]
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r3, [r0]
    cmp r3, #1
    beq _08026D6E
    cmp r3, #1
    bgt _08026D46
    cmp r3, #0
    beq _08026D7C
    b _08026D8A
_08026D46:
    cmp r3, #2
    beq _08026D50
    cmp r3, #3
    beq _08026D60
    b _08026D8A
_08026D50:
    ldr r0, _08026D5C @ =0xFFF60000
    movs r1, #0xc0
    lsls r1, r1, #0xc
    str r0, [r2, #4]
    str r4, [r2, #8]
    b _08026D88
    .align 2, 0
_08026D5C: .4byte 0xFFF60000
_08026D60:
    movs r0, #0xa0
    lsls r0, r0, #0xc
    movs r1, #0xc0
    lsls r1, r1, #0xc
    str r0, [r2, #4]
    str r4, [r2, #8]
    b _08026D88
_08026D6E:
    ldr r0, _08026D78 @ =0xFFF60000
    movs r1, #0xc0
    lsls r1, r1, #0xc
    str r4, [r2, #4]
    b _08026D86
    .align 2, 0
_08026D78: .4byte 0xFFF60000
_08026D7C:
    movs r0, #0xa0
    lsls r0, r0, #0xc
    movs r1, #0xc0
    lsls r1, r1, #0xc
    str r3, [r2, #4]
_08026D86:
    str r0, [r2, #8]
_08026D88:
    str r1, [r2, #0x14]
_08026D8A:
    ldr r4, [r6, #0x10]
    cmp r4, #0
    beq _08026DBA
    ldr r0, [r4]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x68]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0xb4
    adds r2, r5, #0
    bl func_0805E850
    adds r0, r4, #0
    adds r0, #0xc8
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
_08026DBA:
    movs r5, #0xc9
    lsls r5, r5, #1
    adds r0, r6, #0
    adds r0, #0x7c
    ldr r1, _08026DE0 @ =0x0000FFFF
    strh r1, [r0]
    adds r1, r6, #0
    adds r1, #0x3c
    ldrb r1, [r1]
    adds r7, r0, #0
    cmp r1, #0x39
    bls _08026DD4
    b _080271F0
_08026DD4:
    lsls r0, r1, #2
    ldr r1, _08026DE4 @ =_08026DE8
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08026DE0: .4byte 0x0000FFFF
_08026DE4: .4byte _08026DE8
_08026DE8: @ jump table
    .4byte _08026ED0 @ case 0
    .4byte _08026FAA @ case 1
    .4byte _08026F44 @ case 2
    .4byte _08026FAA @ case 3
    .4byte _08026F94 @ case 4
    .4byte _08026FAA @ case 5
    .4byte _080270C6 @ case 6
    .4byte _080270D2 @ case 7
    .4byte _080271E2 @ case 8
    .4byte _08026FE2 @ case 9
    .4byte _080271C6 @ case 10
    .4byte _08026FC8 @ case 11
    .4byte _08026FC8 @ case 12
    .4byte _08026FC2 @ case 13
    .4byte _08026FC8 @ case 14
    .4byte _08026FCE @ case 15
    .4byte _08026FD2 @ case 16
    .4byte _080271B4 @ case 17
    .4byte _080271C0 @ case 18
    .4byte _08026FD6 @ case 19
    .4byte _08026FDC @ case 20
    .4byte _080271C6 @ case 21
    .4byte _080270BA @ case 22
    .4byte _080270C0 @ case 23
    .4byte _080270CC @ case 24
    .4byte _08027030 @ case 25
    .4byte _08027030 @ case 26
    .4byte _08027002 @ case 27
    .4byte _08027020 @ case 28
    .4byte _08027020 @ case 29
    .4byte _08027060 @ case 30
    .4byte _0802707A @ case 31
    .4byte _08027096 @ case 32
    .4byte _080271B4 @ case 33
    .4byte _0802711C @ case 34
    .4byte _08027138 @ case 35
    .4byte _08027150 @ case 36
    .4byte _08027156 @ case 37
    .4byte _0802715C @ case 38
    .4byte _08027160 @ case 39
    .4byte _08027164 @ case 40
    .4byte _0802716A @ case 41
    .4byte _08027170 @ case 42
    .4byte _08027170 @ case 43
    .4byte _08027176 @ case 44
    .4byte _0802718C @ case 45
    .4byte _080271B0 @ case 46
    .4byte _080271C6 @ case 47
    .4byte _080271BA @ case 48
    .4byte _080271B4 @ case 49
    .4byte _080271BA @ case 50
    .4byte _080271C0 @ case 51
    .4byte _080271C6 @ case 52
    .4byte _080271CA @ case 53
    .4byte _080271B4 @ case 54
    .4byte _080271B4 @ case 55
    .4byte _080271BA @ case 56
    .4byte _080271BA @ case 57
_08026ED0:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08026F02
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _08026EEA
    b _080271DC
_08026EEA:
    cmp r0, #1
    bgt _08026EF6
    cmp r0, #0
    bne _08026EF4
    b _080271BA
_08026EF4:
    b _080271F0
_08026EF6:
    cmp r0, #2
    beq _08026EFC
    b _080271F0
_08026EFC:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _080271F0
_08026F02:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08026F1E
    cmp r0, #1
    bgt _08026F18
    cmp r0, #0
    bne _08026F16
    b _08027030
_08026F16:
    b _080271F0
_08026F18:
    cmp r0, #2
    beq _08026F30
    b _080271F0
_08026F1E:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08026F40
    adds r1, #0x94
    b _08026F40
_08026F30:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08026F40
    adds r1, #0x2c
_08026F40:
    adds r5, r1, #0
    b _080271F0
_08026F44:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08026F54
    b _080271BA
_08026F54:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _08027030
    cmp r3, #0
    blt _08027030
    ldr r2, _08026F90 @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    b _080270B2
    .align 2, 0
_08026F90: .4byte 0x080F0FCC
_08026F94:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08026FA8
    b _080271F0
_08026FA8:
    b _080271BA
_08026FAA:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08026FBE
    b _080271F0
_08026FBE:
    subs r5, #0x40
    b _080271F0
_08026FC2:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _080271F0
_08026FC8:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _080271F0
_08026FCE:
    movs r5, #0x4e
    b _080271F0
_08026FD2:
    movs r5, #0x46
    b _080271F0
_08026FD6:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _080271F0
_08026FDC:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _080271F0
_08026FE2:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _080270B0
_08027002:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _080270B0
_08027020:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _08027036
_08027030:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _080271F0
_08027036:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _08027046
    adds r5, #4
_08027046:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _080270B0
_08027060:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
    b _080270B0
_0802707A:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    b _080270B0
_08027096:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
_080270B0:
    strb r1, [r0]
_080270B2:
    bl GetIconId__C4Tool
    strh r0, [r7]
    b _080271F0
_080270BA:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _080271F0
_080270C0:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _080271F0
_080270C6:
    movs r5, #0x89
    lsls r5, r5, #1
    b _080271F0
_080270CC:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _080271F0
_080270D2:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08027104
    cmp r0, #1
    bgt _080270F4
    cmp r0, #0
    beq _080270FA
    b _080271F0
_080270F4:
    cmp r0, #2
    beq _08027110
    b _080271F0
_080270FA:
    movs r5, #0xea
    ldr r1, _08027100 @ =0x0000077A
    b _0802719E
    .align 2, 0
_08027100: .4byte 0x0000077A
_08027104:
    movs r5, #0xee
    ldr r1, _0802710C @ =0x0000077E
    b _0802719E
    .align 2, 0
_0802710C: .4byte 0x0000077E
_08027110:
    movs r5, #0xe6
    ldr r1, _08027118 @ =0x00000782
    b _0802719E
    .align 2, 0
_08027118: .4byte 0x00000782
_0802711C:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08027134 @ =0x0000077A
    b _0802719E
    .align 2, 0
_08027134: .4byte 0x0000077A
_08027138:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _0802714C @ =0x0000077A
    b _0802719E
    .align 2, 0
_0802714C: .4byte 0x0000077A
_08027150:
    movs r5, #0x83
    lsls r5, r5, #1
    b _080271F0
_08027156:
    movs r5, #0x81
    lsls r5, r5, #1
    b _080271F0
_0802715C:
    movs r5, #0xfe
    b _080271F0
_08027160:
    movs r5, #0xfa
    b _080271F0
_08027164:
    movs r5, #0x91
    lsls r5, r5, #1
    b _080271F0
_0802716A:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _080271F0
_08027170:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _080271F0
_08027176:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _080271F0
    subs r5, #0x40
    b _080271F0
_0802718C:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _080271AC @ =0x00000792
_0802719E:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _080271F0
    adds r0, r2, #0
    bl func_080321B0
    b _080271F0
    .align 2, 0
_080271AC: .4byte 0x00000792
_080271B0:
    movs r5, #0x3e
    b _080271F0
_080271B4:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _080271F0
_080271BA:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _080271F0
_080271C0:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _080271F0
_080271C6:
    movs r5, #0x42
    b _080271F0
_080271CA:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _080271F0
_080271DC:
    movs r5, #0xab
    lsls r5, r5, #1
    b _080271F0
_080271E2:
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    movs r5, #0xf6
    cmp r0, #0
    beq _080271F0
    movs r5, #0xf2
_080271F0:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    adds r1, r6, #0
    adds r1, #0xc0
    movs r0, #1
    strb r0, [r1]
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0802720C
func_0802720C: @ 0x0802720C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #8
    adds r6, r0, #0
    mov sb, r1
    adds r0, #0x88
    movs r7, #0
    movs r1, #1
    mov r8, r1
    mov r2, r8
    strb r2, [r0]
    strb r7, [r0, #1]
    ldr r1, _080272B4 @ =0xFFF80000
    movs r2, #0x88
    lsls r2, r2, #0xd
    str r1, [r0, #4]
    str r7, [r0, #8]
    str r2, [r0, #0x14]
    ldr r5, [r6, #0x10]
    cmp r5, #0
    beq _0802726E
    mov r0, sb
    bl GetIconId__C4Tool
    adds r4, r0, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    adds r2, r4, #0
    bl func_0805E850
    adds r0, r5, #0
    adds r0, #0xc8
    mov r3, r8
    strb r3, [r0]
    adds r0, #2
    strb r7, [r0]
    adds r0, #1
    strb r3, [r0]
_0802726E:
    ldr r4, [r6, #0x38]
    adds r4, #0x60
    mov r0, sb
    bl GetId__C4Tool
    adds r1, r0, #0
    adds r0, r4, #0
    movs r2, #1
    bl func_0800FEC8
    adds r3, r6, #0
    adds r3, #0x3c
    movs r0, #0x34
    strb r0, [r3]
    adds r2, r6, #0
    adds r2, #0x3d
    movs r0, #0x78
    strb r0, [r2]
    movs r5, #0xc9
    lsls r5, r5, #1
    adds r1, r6, #0
    adds r1, #0x7c
    ldr r0, _080272B8 @ =0x0000FFFF
    strh r0, [r1]
    ldrb r0, [r3]
    adds r7, r1, #0
    cmp r0, #0x39
    bls _080272A8
    b _080276C8
_080272A8:
    lsls r0, r0, #2
    ldr r1, _080272BC @ =_080272C0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080272B4: .4byte 0xFFF80000
_080272B8: .4byte 0x0000FFFF
_080272BC: .4byte _080272C0
_080272C0: @ jump table
    .4byte _080273A8 @ case 0
    .4byte _08027482 @ case 1
    .4byte _0802741C @ case 2
    .4byte _08027482 @ case 3
    .4byte _0802746C @ case 4
    .4byte _08027482 @ case 5
    .4byte _0802759E @ case 6
    .4byte _080275AA @ case 7
    .4byte _080276BE @ case 8
    .4byte _080274BA @ case 9
    .4byte _0802769E @ case 10
    .4byte _080274A0 @ case 11
    .4byte _080274A0 @ case 12
    .4byte _0802749A @ case 13
    .4byte _080274A0 @ case 14
    .4byte _080274A6 @ case 15
    .4byte _080274AA @ case 16
    .4byte _0802768C @ case 17
    .4byte _08027698 @ case 18
    .4byte _080274AE @ case 19
    .4byte _080274B4 @ case 20
    .4byte _0802769E @ case 21
    .4byte _08027592 @ case 22
    .4byte _08027598 @ case 23
    .4byte _080275A4 @ case 24
    .4byte _08027508 @ case 25
    .4byte _08027508 @ case 26
    .4byte _080274DA @ case 27
    .4byte _080274F8 @ case 28
    .4byte _080274F8 @ case 29
    .4byte _08027538 @ case 30
    .4byte _08027552 @ case 31
    .4byte _0802756E @ case 32
    .4byte _0802768C @ case 33
    .4byte _080275F4 @ case 34
    .4byte _08027610 @ case 35
    .4byte _08027628 @ case 36
    .4byte _0802762E @ case 37
    .4byte _08027634 @ case 38
    .4byte _08027638 @ case 39
    .4byte _0802763C @ case 40
    .4byte _08027642 @ case 41
    .4byte _08027648 @ case 42
    .4byte _08027648 @ case 43
    .4byte _0802764E @ case 44
    .4byte _08027664 @ case 45
    .4byte _08027688 @ case 46
    .4byte _0802769E @ case 47
    .4byte _08027692 @ case 48
    .4byte _0802768C @ case 49
    .4byte _08027692 @ case 50
    .4byte _08027698 @ case 51
    .4byte _0802769E @ case 52
    .4byte _080276A2 @ case 53
    .4byte _0802768C @ case 54
    .4byte _0802768C @ case 55
    .4byte _08027692 @ case 56
    .4byte _08027692 @ case 57
_080273A8:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080273DA
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _080273C2
    b _080276B4
_080273C2:
    cmp r0, #1
    bgt _080273CE
    cmp r0, #0
    bne _080273CC
    b _08027692
_080273CC:
    b _080276C8
_080273CE:
    cmp r0, #2
    beq _080273D4
    b _080276C8
_080273D4:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _080276C8
_080273DA:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _080273F6
    cmp r0, #1
    bgt _080273F0
    cmp r0, #0
    bne _080273EE
    b _08027508
_080273EE:
    b _080276C8
_080273F0:
    cmp r0, #2
    beq _08027408
    b _080276C8
_080273F6:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08027418
    adds r1, #0x94
    b _08027418
_08027408:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08027418
    adds r1, #0x2c
_08027418:
    adds r5, r1, #0
    b _080276C8
_0802741C:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802742C
    b _08027692
_0802742C:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _08027508
    cmp r3, #0
    blt _08027508
    ldr r2, _08027468 @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    b _0802758A
    .align 2, 0
_08027468: .4byte 0x080F0FCC
_0802746C:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08027480
    b _080276C8
_08027480:
    b _08027692
_08027482:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08027496
    b _080276C8
_08027496:
    subs r5, #0x40
    b _080276C8
_0802749A:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _080276C8
_080274A0:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _080276C8
_080274A6:
    movs r5, #0x4e
    b _080276C8
_080274AA:
    movs r5, #0x46
    b _080276C8
_080274AE:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _080276C8
_080274B4:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _080276C8
_080274BA:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _08027588
_080274DA:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _08027588
_080274F8:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _0802750E
_08027508:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _080276C8
_0802750E:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _0802751E
    adds r5, #4
_0802751E:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _08027588
_08027538:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
    b _08027588
_08027552:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    b _08027588
_0802756E:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
_08027588:
    strb r1, [r0]
_0802758A:
    bl GetIconId__C4Tool
    strh r0, [r7]
    b _080276C8
_08027592:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _080276C8
_08027598:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _080276C8
_0802759E:
    movs r5, #0x89
    lsls r5, r5, #1
    b _080276C8
_080275A4:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _080276C8
_080275AA:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _080275DC
    cmp r0, #1
    bgt _080275CC
    cmp r0, #0
    beq _080275D2
    b _080276C8
_080275CC:
    cmp r0, #2
    beq _080275E8
    b _080276C8
_080275D2:
    movs r5, #0xea
    ldr r1, _080275D8 @ =0x0000077A
    b _08027676
    .align 2, 0
_080275D8: .4byte 0x0000077A
_080275DC:
    movs r5, #0xee
    ldr r1, _080275E4 @ =0x0000077E
    b _08027676
    .align 2, 0
_080275E4: .4byte 0x0000077E
_080275E8:
    movs r5, #0xe6
    ldr r1, _080275F0 @ =0x00000782
    b _08027676
    .align 2, 0
_080275F0: .4byte 0x00000782
_080275F4:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _0802760C @ =0x0000077A
    b _08027676
    .align 2, 0
_0802760C: .4byte 0x0000077A
_08027610:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08027624 @ =0x0000077A
    b _08027676
    .align 2, 0
_08027624: .4byte 0x0000077A
_08027628:
    movs r5, #0x83
    lsls r5, r5, #1
    b _080276C8
_0802762E:
    movs r5, #0x81
    lsls r5, r5, #1
    b _080276C8
_08027634:
    movs r5, #0xfe
    b _080276C8
_08027638:
    movs r5, #0xfa
    b _080276C8
_0802763C:
    movs r5, #0x91
    lsls r5, r5, #1
    b _080276C8
_08027642:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _080276C8
_08027648:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _080276C8
_0802764E:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _080276C8
    subs r5, #0x40
    b _080276C8
_08027664:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08027684 @ =0x00000792
_08027676:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _080276C8
    adds r0, r2, #0
    bl func_080321B0
    b _080276C8
    .align 2, 0
_08027684: .4byte 0x00000792
_08027688:
    movs r5, #0x3e
    b _080276C8
_0802768C:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _080276C8
_08027692:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _080276C8
_08027698:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _080276C8
_0802769E:
    movs r5, #0x42
    b _080276C8
_080276A2:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _080276C8
_080276B4:
    movs r5, #0xab
    lsls r5, r5, #1
    b _080276C8
_080276BA:
    ldr r0, [r4]
    b _08027702
_080276BE:
    ldrb r0, [r2]
    movs r5, #0xf6
    cmp r0, #0
    beq _080276C8
    movs r5, #0xf2
_080276C8:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    adds r6, #0xc0
    cmp r4, r5
    beq _080276FE
_080276EC:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080276BA
    adds r4, #4
    cmp r4, r5
    bne _080276EC
_080276FE:
    subs r0, r5, #4
    ldr r0, [r0]
_08027702:
    movs r1, #0xbc
    bl func_08008B6C
    movs r0, #1
    strb r0, [r6]
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0802771C
func_0802771C: @ 0x0802771C
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, [r6, #0x34]
    ldr r2, _08027798 @ =0x00001AA8
    adds r0, r0, r2
    bl func_0809ABD8
    adds r0, r6, #0
    adds r0, #0x88
    movs r5, #0
    movs r7, #1
    strb r7, [r0]
    strb r5, [r0, #1]
    movs r1, #0xa8
    lsls r1, r1, #0xd
    str r5, [r0, #4]
    str r5, [r0, #8]
    str r1, [r0, #0x14]
    ldr r4, [r6, #0x10]
    cmp r4, #0
    beq _0802776E
    ldr r0, [r4]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0xb4
    movs r2, #0x6a
    bl func_0805E850
    adds r0, r4, #0
    adds r0, #0xc8
    strb r7, [r0]
    adds r0, #2
    strb r5, [r0]
    adds r0, #1
    strb r7, [r0]
_0802776E:
    adds r2, r6, #0
    adds r2, #0x3c
    movs r0, #0x31
    strb r0, [r2]
    movs r5, #0xc9
    lsls r5, r5, #1
    adds r1, r6, #0
    adds r1, #0x7c
    ldr r0, _0802779C @ =0x0000FFFF
    strh r0, [r1]
    ldrb r0, [r2]
    adds r7, r1, #0
    cmp r0, #0x39
    bls _0802778C
    b _08027BB0
_0802778C:
    lsls r0, r0, #2
    ldr r1, _080277A0 @ =_080277A4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08027798: .4byte 0x00001AA8
_0802779C: .4byte 0x0000FFFF
_080277A0: .4byte _080277A4
_080277A4: @ jump table
    .4byte _0802788C @ case 0
    .4byte _08027966 @ case 1
    .4byte _08027900 @ case 2
    .4byte _08027966 @ case 3
    .4byte _08027950 @ case 4
    .4byte _08027966 @ case 5
    .4byte _08027A82 @ case 6
    .4byte _08027A8E @ case 7
    .4byte _08027BA2 @ case 8
    .4byte _0802799E @ case 9
    .4byte _08027B82 @ case 10
    .4byte _08027984 @ case 11
    .4byte _08027984 @ case 12
    .4byte _0802797E @ case 13
    .4byte _08027984 @ case 14
    .4byte _0802798A @ case 15
    .4byte _0802798E @ case 16
    .4byte _08027B70 @ case 17
    .4byte _08027B7C @ case 18
    .4byte _08027992 @ case 19
    .4byte _08027998 @ case 20
    .4byte _08027B82 @ case 21
    .4byte _08027A76 @ case 22
    .4byte _08027A7C @ case 23
    .4byte _08027A88 @ case 24
    .4byte _080279EC @ case 25
    .4byte _080279EC @ case 26
    .4byte _080279BE @ case 27
    .4byte _080279DC @ case 28
    .4byte _080279DC @ case 29
    .4byte _08027A1C @ case 30
    .4byte _08027A36 @ case 31
    .4byte _08027A52 @ case 32
    .4byte _08027B70 @ case 33
    .4byte _08027AD8 @ case 34
    .4byte _08027AF4 @ case 35
    .4byte _08027B0C @ case 36
    .4byte _08027B12 @ case 37
    .4byte _08027B18 @ case 38
    .4byte _08027B1C @ case 39
    .4byte _08027B20 @ case 40
    .4byte _08027B26 @ case 41
    .4byte _08027B2C @ case 42
    .4byte _08027B2C @ case 43
    .4byte _08027B32 @ case 44
    .4byte _08027B48 @ case 45
    .4byte _08027B6C @ case 46
    .4byte _08027B82 @ case 47
    .4byte _08027B76 @ case 48
    .4byte _08027B70 @ case 49
    .4byte _08027B76 @ case 50
    .4byte _08027B7C @ case 51
    .4byte _08027B82 @ case 52
    .4byte _08027B86 @ case 53
    .4byte _08027B70 @ case 54
    .4byte _08027B70 @ case 55
    .4byte _08027B76 @ case 56
    .4byte _08027B76 @ case 57
_0802788C:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080278BE
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _080278A6
    b _08027B98
_080278A6:
    cmp r0, #1
    bgt _080278B2
    cmp r0, #0
    bne _080278B0
    b _08027B76
_080278B0:
    b _08027BB0
_080278B2:
    cmp r0, #2
    beq _080278B8
    b _08027BB0
_080278B8:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _08027BB0
_080278BE:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _080278DA
    cmp r0, #1
    bgt _080278D4
    cmp r0, #0
    bne _080278D2
    b _080279EC
_080278D2:
    b _08027BB0
_080278D4:
    cmp r0, #2
    beq _080278EC
    b _08027BB0
_080278DA:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _080278FC
    adds r1, #0x94
    b _080278FC
_080278EC:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _080278FC
    adds r1, #0x2c
_080278FC:
    adds r5, r1, #0
    b _08027BB0
_08027900:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08027910
    b _08027B76
_08027910:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _080279EC
    cmp r3, #0
    blt _080279EC
    ldr r2, _0802794C @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    b _08027A6E
    .align 2, 0
_0802794C: .4byte 0x080F0FCC
_08027950:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08027964
    b _08027BB0
_08027964:
    b _08027B76
_08027966:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _0802797A
    b _08027BB0
_0802797A:
    subs r5, #0x40
    b _08027BB0
_0802797E:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _08027BB0
_08027984:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _08027BB0
_0802798A:
    movs r5, #0x4e
    b _08027BB0
_0802798E:
    movs r5, #0x46
    b _08027BB0
_08027992:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _08027BB0
_08027998:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _08027BB0
_0802799E:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _08027A6C
_080279BE:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _08027A6C
_080279DC:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _080279F2
_080279EC:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _08027BB0
_080279F2:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _08027A02
    adds r5, #4
_08027A02:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _08027A6C
_08027A1C:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
    b _08027A6C
_08027A36:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    b _08027A6C
_08027A52:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
_08027A6C:
    strb r1, [r0]
_08027A6E:
    bl GetIconId__C4Tool
    strh r0, [r7]
    b _08027BB0
_08027A76:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _08027BB0
_08027A7C:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _08027BB0
_08027A82:
    movs r5, #0x89
    lsls r5, r5, #1
    b _08027BB0
_08027A88:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _08027BB0
_08027A8E:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08027AC0
    cmp r0, #1
    bgt _08027AB0
    cmp r0, #0
    beq _08027AB6
    b _08027BB0
_08027AB0:
    cmp r0, #2
    beq _08027ACC
    b _08027BB0
_08027AB6:
    movs r5, #0xea
    ldr r1, _08027ABC @ =0x0000077A
    b _08027B5A
    .align 2, 0
_08027ABC: .4byte 0x0000077A
_08027AC0:
    movs r5, #0xee
    ldr r1, _08027AC8 @ =0x0000077E
    b _08027B5A
    .align 2, 0
_08027AC8: .4byte 0x0000077E
_08027ACC:
    movs r5, #0xe6
    ldr r1, _08027AD4 @ =0x00000782
    b _08027B5A
    .align 2, 0
_08027AD4: .4byte 0x00000782
_08027AD8:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08027AF0 @ =0x0000077A
    b _08027B5A
    .align 2, 0
_08027AF0: .4byte 0x0000077A
_08027AF4:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08027B08 @ =0x0000077A
    b _08027B5A
    .align 2, 0
_08027B08: .4byte 0x0000077A
_08027B0C:
    movs r5, #0x83
    lsls r5, r5, #1
    b _08027BB0
_08027B12:
    movs r5, #0x81
    lsls r5, r5, #1
    b _08027BB0
_08027B18:
    movs r5, #0xfe
    b _08027BB0
_08027B1C:
    movs r5, #0xfa
    b _08027BB0
_08027B20:
    movs r5, #0x91
    lsls r5, r5, #1
    b _08027BB0
_08027B26:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _08027BB0
_08027B2C:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _08027BB0
_08027B32:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _08027BB0
    subs r5, #0x40
    b _08027BB0
_08027B48:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08027B68 @ =0x00000792
_08027B5A:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _08027BB0
    adds r0, r2, #0
    bl func_080321B0
    b _08027BB0
    .align 2, 0
_08027B68: .4byte 0x00000792
_08027B6C:
    movs r5, #0x3e
    b _08027BB0
_08027B70:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _08027BB0
_08027B76:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _08027BB0
_08027B7C:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _08027BB0
_08027B82:
    movs r5, #0x42
    b _08027BB0
_08027B86:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _08027BB0
_08027B98:
    movs r5, #0xab
    lsls r5, r5, #1
    b _08027BB0
_08027B9E:
    ldr r0, [r4]
    b _08027BEA
_08027BA2:
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    movs r5, #0xf6
    cmp r0, #0
    beq _08027BB0
    movs r5, #0xf2
_08027BB0:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    adds r6, #0xc0
    cmp r4, r5
    beq _08027BE6
_08027BD4:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08027B9E
    adds r4, #4
    cmp r4, r5
    bne _08027BD4
_08027BE6:
    subs r0, r5, #4
    ldr r0, [r0]
_08027BEA:
    movs r1, #0x6a
    bl func_08008B6C
    movs r0, #1
    strb r0, [r6]
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08027BFC
func_08027BFC: @ 0x08027BFC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    adds r6, r0, #0
    ldr r0, [r6, #0x34]
    ldr r1, _08027D00 @ =0x00001C2C
    adds r4, r0, r1
    adds r0, r4, #0
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08027C1E
    b _0802816C
_08027C1E:
    adds r0, r4, #0
    bl func_0800F204
    cmp r0, #4
    beq _08027C2A
    b _0802816C
_08027C2A:
    ldr r0, [r6, #0x34]
    movs r2, #0xe5
    lsls r2, r2, #5
    adds r0, r0, r2
    bl func_0800FFD0
    cmp r0, #0
    bne _08027C3C
    b _08028182
_08027C3C:
    ldr r0, [r6, #0x34]
    movs r3, #0xe5
    lsls r3, r3, #5
    adds r0, r0, r3
    bl func_0800FFD4
    adds r4, r0, #0
    ldr r0, [r6, #0x34]
    movs r1, #0xe5
    lsls r1, r1, #5
    adds r0, r0, r1
    bl func_0800FFD8
    adds r5, r0, #0
    adds r7, r6, #0
    adds r7, #0x88
    movs r2, #0x3c
    adds r2, r2, r6
    mov sl, r2
    adds r3, r6, #0
    adds r3, #0xc0
    str r3, [sp, #0x10]
    movs r0, #0x7c
    adds r0, r0, r6
    mov sb, r0
    cmp r4, r5
    beq _08027C8A
_08027C72:
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xae
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r2, [r1]
    adds r1, r4, #0
    bl _call_via_r2
    adds r4, #1
    cmp r4, r5
    bne _08027C72
_08027C8A:
    ldr r0, [r6, #0x34]
    movs r3, #0xe5
    lsls r3, r3, #5
    adds r0, r0, r3
    bl func_08010024
    movs r0, #0
    mov r8, r0
    str r0, [r7, #4]
    str r0, [r7, #8]
    str r0, [r7, #0x14]
    ldr r5, [r6, #0x10]
    cmp r5, #0
    beq _08027CD8
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r4, [r0]
    adds r4, #0x36
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    adds r2, r4, #0
    bl func_0805E850
    adds r0, r5, #0
    adds r0, #0xc8
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    mov r2, r8
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
_08027CD8:
    movs r0, #0x2e
    mov r3, sl
    strb r0, [r3]
    movs r0, #1
    ldr r1, [sp, #0x10]
    strb r0, [r1]
    movs r5, #0xc9
    lsls r5, r5, #1
    ldr r0, _08027D04 @ =0x0000FFFF
    mov r2, sb
    strh r0, [r2]
    ldrb r0, [r3]
    cmp r0, #0x39
    bls _08027CF6
    b _08028130
_08027CF6:
    lsls r0, r0, #2
    ldr r1, _08027D08 @ =_08027D0C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08027D00: .4byte 0x00001C2C
_08027D04: .4byte 0x0000FFFF
_08027D08: .4byte _08027D0C
_08027D0C: @ jump table
    .4byte _08027DF4 @ case 0
    .4byte _08027ECE @ case 1
    .4byte _08027E68 @ case 2
    .4byte _08027ECE @ case 3
    .4byte _08027EB8 @ case 4
    .4byte _08027ECE @ case 5
    .4byte _08028000 @ case 6
    .4byte _0802800C @ case 7
    .4byte _08028122 @ case 8
    .4byte _08027F06 @ case 9
    .4byte _08028102 @ case 10
    .4byte _08027EEC @ case 11
    .4byte _08027EEC @ case 12
    .4byte _08027EE6 @ case 13
    .4byte _08027EEC @ case 14
    .4byte _08027EF2 @ case 15
    .4byte _08027EF6 @ case 16
    .4byte _080280F0 @ case 17
    .4byte _080280FC @ case 18
    .4byte _08027EFA @ case 19
    .4byte _08027F00 @ case 20
    .4byte _08028102 @ case 21
    .4byte _08027FF4 @ case 22
    .4byte _08027FFA @ case 23
    .4byte _08028006 @ case 24
    .4byte _08027F54 @ case 25
    .4byte _08027F54 @ case 26
    .4byte _08027F26 @ case 27
    .4byte _08027F44 @ case 28
    .4byte _08027F44 @ case 29
    .4byte _08027F84 @ case 30
    .4byte _08027FA8 @ case 31
    .4byte _08027FCE @ case 32
    .4byte _080280F0 @ case 33
    .4byte _08028058 @ case 34
    .4byte _08028074 @ case 35
    .4byte _0802808C @ case 36
    .4byte _08028092 @ case 37
    .4byte _08028098 @ case 38
    .4byte _0802809C @ case 39
    .4byte _080280A0 @ case 40
    .4byte _080280A6 @ case 41
    .4byte _080280AC @ case 42
    .4byte _080280AC @ case 43
    .4byte _080280B2 @ case 44
    .4byte _080280C8 @ case 45
    .4byte _080280EC @ case 46
    .4byte _08028102 @ case 47
    .4byte _080280F6 @ case 48
    .4byte _080280F0 @ case 49
    .4byte _080280F6 @ case 50
    .4byte _080280FC @ case 51
    .4byte _08028102 @ case 52
    .4byte _08028106 @ case 53
    .4byte _080280F0 @ case 54
    .4byte _080280F0 @ case 55
    .4byte _080280F6 @ case 56
    .4byte _080280F6 @ case 57
_08027DF4:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08027E26
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _08027E0E
    b _08028118
_08027E0E:
    cmp r0, #1
    bgt _08027E1A
    cmp r0, #0
    bne _08027E18
    b _080280F6
_08027E18:
    b _08028130
_08027E1A:
    cmp r0, #2
    beq _08027E20
    b _08028130
_08027E20:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _08028130
_08027E26:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08027E42
    cmp r0, #1
    bgt _08027E3C
    cmp r0, #0
    bne _08027E3A
    b _08027F54
_08027E3A:
    b _08028130
_08027E3C:
    cmp r0, #2
    beq _08027E54
    b _08028130
_08027E42:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08027E64
    adds r1, #0x94
    b _08027E64
_08027E54:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08027E64
    adds r1, #0x2c
_08027E64:
    adds r5, r1, #0
    b _08028130
_08027E68:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08027E78
    b _080280F6
_08027E78:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _08027F54
    cmp r3, #0
    blt _08027F54
    ldr r2, _08027EB4 @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    b _08027FC4
    .align 2, 0
_08027EB4: .4byte 0x080F0FCC
_08027EB8:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08027ECC
    b _08028130
_08027ECC:
    b _080280F6
_08027ECE:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08027EE2
    b _08028130
_08027EE2:
    subs r5, #0x40
    b _08028130
_08027EE6:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _08028130
_08027EEC:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _08028130
_08027EF2:
    movs r5, #0x4e
    b _08028130
_08027EF6:
    movs r5, #0x46
    b _08028130
_08027EFA:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _08028130
_08027F00:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _08028130
_08027F06:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _08027FE8
_08027F26:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _08027F9C
_08027F44:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _08027F5A
_08027F54:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _08028130
_08027F5A:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _08027F6A
    adds r5, #4
_08027F6A:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _08027FE8
_08027F84:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
_08027F9C:
    strb r1, [r0]
    bl GetIconId__C4Tool
    mov r2, sb
    strh r0, [r2]
    b _08028130
_08027FA8:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    strb r1, [r0]
_08027FC4:
    bl GetIconId__C4Tool
    mov r3, sb
    strh r0, [r3]
    b _08028130
_08027FCE:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
_08027FE8:
    strb r1, [r0]
    bl GetIconId__C4Tool
    mov r1, sb
    strh r0, [r1]
    b _08028130
_08027FF4:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _08028130
_08027FFA:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _08028130
_08028000:
    movs r5, #0x89
    lsls r5, r5, #1
    b _08028130
_08028006:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _08028130
_0802800C:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08028040
    cmp r0, #1
    bgt _0802802E
    cmp r0, #0
    beq _08028034
    b _08028130
_0802802E:
    cmp r0, #2
    beq _0802804C
    b _08028130
_08028034:
    movs r5, #0xea
    ldr r1, _0802803C @ =0x0000077A
    b _080280DA
    .align 2, 0
_0802803C: .4byte 0x0000077A
_08028040:
    movs r5, #0xee
    ldr r1, _08028048 @ =0x0000077E
    b _080280DA
    .align 2, 0
_08028048: .4byte 0x0000077E
_0802804C:
    movs r5, #0xe6
    ldr r1, _08028054 @ =0x00000782
    b _080280DA
    .align 2, 0
_08028054: .4byte 0x00000782
_08028058:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08028070 @ =0x0000077A
    b _080280DA
    .align 2, 0
_08028070: .4byte 0x0000077A
_08028074:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08028088 @ =0x0000077A
    b _080280DA
    .align 2, 0
_08028088: .4byte 0x0000077A
_0802808C:
    movs r5, #0x83
    lsls r5, r5, #1
    b _08028130
_08028092:
    movs r5, #0x81
    lsls r5, r5, #1
    b _08028130
_08028098:
    movs r5, #0xfe
    b _08028130
_0802809C:
    movs r5, #0xfa
    b _08028130
_080280A0:
    movs r5, #0x91
    lsls r5, r5, #1
    b _08028130
_080280A6:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _08028130
_080280AC:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _08028130
_080280B2:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _08028130
    subs r5, #0x40
    b _08028130
_080280C8:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _080280E8 @ =0x00000792
_080280DA:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _08028130
    adds r0, r2, #0
    bl func_080321B0
    b _08028130
    .align 2, 0
_080280E8: .4byte 0x00000792
_080280EC:
    movs r5, #0x3e
    b _08028130
_080280F0:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _08028130
_080280F6:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _08028130
_080280FC:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _08028130
_08028102:
    movs r5, #0x42
    b _08028130
_08028106:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _08028130
_08028118:
    movs r5, #0xab
    lsls r5, r5, #1
    b _08028130
_0802811E:
    ldr r0, [r4]
    b _08028168
_08028122:
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    movs r5, #0xf6
    cmp r0, #0
    beq _08028130
    movs r5, #0xf2
_08028130:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08028164
_08028152:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802811E
    adds r4, #4
    cmp r4, r5
    bne _08028152
_08028164:
    subs r0, r5, #4
    ldr r0, [r0]
_08028168:
    movs r1, #0x6e
    b _0802862E
_0802816C:
    adds r0, r6, #0
    bl func_080262C4
    mov r4, sp
    adds r4, #7
    strb r0, [r4]
    adds r0, r4, #0
    bl GetPrice__C7Product
    cmp r0, #0
    bne _08028186
_08028182:
    movs r0, #0
    b _08028634
_08028186:
    ldr r0, [r6]
    ldr r1, [r0]
    movs r3, #0xae
    lsls r3, r3, #1
    adds r1, r1, r3
    ldr r2, [r1]
    adds r1, r4, #0
    bl _call_via_r2
    adds r1, r6, #0
    adds r1, #0xc0
    movs r0, #1
    strb r0, [r1]
    adds r2, r6, #0
    adds r2, #0x3c
    movs r0, #0xe
    strb r0, [r2]
    movs r5, #0xc9
    lsls r5, r5, #1
    subs r1, #0x44
    ldr r0, _080281C8 @ =0x0000FFFF
    strh r0, [r1]
    ldrb r0, [r2]
    mov sb, r1
    cmp r0, #0x39
    bls _080281BC
    b _080285F4
_080281BC:
    lsls r0, r0, #2
    ldr r1, _080281CC @ =_080281D0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080281C8: .4byte 0x0000FFFF
_080281CC: .4byte _080281D0
_080281D0: @ jump table
    .4byte _080282B8 @ case 0
    .4byte _08028392 @ case 1
    .4byte _0802832C @ case 2
    .4byte _08028392 @ case 3
    .4byte _0802837C @ case 4
    .4byte _08028392 @ case 5
    .4byte _080284C4 @ case 6
    .4byte _080284D0 @ case 7
    .4byte _080285E6 @ case 8
    .4byte _080283CA @ case 9
    .4byte _080285C6 @ case 10
    .4byte _080283B0 @ case 11
    .4byte _080283B0 @ case 12
    .4byte _080283AA @ case 13
    .4byte _080283B0 @ case 14
    .4byte _080283B6 @ case 15
    .4byte _080283BA @ case 16
    .4byte _080285B4 @ case 17
    .4byte _080285C0 @ case 18
    .4byte _080283BE @ case 19
    .4byte _080283C4 @ case 20
    .4byte _080285C6 @ case 21
    .4byte _080284B8 @ case 22
    .4byte _080284BE @ case 23
    .4byte _080284CA @ case 24
    .4byte _08028418 @ case 25
    .4byte _08028418 @ case 26
    .4byte _080283EA @ case 27
    .4byte _08028408 @ case 28
    .4byte _08028408 @ case 29
    .4byte _08028448 @ case 30
    .4byte _0802846C @ case 31
    .4byte _08028492 @ case 32
    .4byte _080285B4 @ case 33
    .4byte _0802851C @ case 34
    .4byte _08028538 @ case 35
    .4byte _08028550 @ case 36
    .4byte _08028556 @ case 37
    .4byte _0802855C @ case 38
    .4byte _08028560 @ case 39
    .4byte _08028564 @ case 40
    .4byte _0802856A @ case 41
    .4byte _08028570 @ case 42
    .4byte _08028570 @ case 43
    .4byte _08028576 @ case 44
    .4byte _0802858C @ case 45
    .4byte _080285B0 @ case 46
    .4byte _080285C6 @ case 47
    .4byte _080285BA @ case 48
    .4byte _080285B4 @ case 49
    .4byte _080285BA @ case 50
    .4byte _080285C0 @ case 51
    .4byte _080285C6 @ case 52
    .4byte _080285CA @ case 53
    .4byte _080285B4 @ case 54
    .4byte _080285B4 @ case 55
    .4byte _080285BA @ case 56
    .4byte _080285BA @ case 57
_080282B8:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080282EA
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _080282D2
    b _080285DC
_080282D2:
    cmp r0, #1
    bgt _080282DE
    cmp r0, #0
    bne _080282DC
    b _080285BA
_080282DC:
    b _080285F4
_080282DE:
    cmp r0, #2
    beq _080282E4
    b _080285F4
_080282E4:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _080285F4
_080282EA:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08028306
    cmp r0, #1
    bgt _08028300
    cmp r0, #0
    bne _080282FE
    b _08028418
_080282FE:
    b _080285F4
_08028300:
    cmp r0, #2
    beq _08028318
    b _080285F4
_08028306:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08028328
    adds r1, #0x94
    b _08028328
_08028318:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08028328
    adds r1, #0x2c
_08028328:
    adds r5, r1, #0
    b _080285F4
_0802832C:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802833C
    b _080285BA
_0802833C:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _08028418
    cmp r3, #0
    blt _08028418
    ldr r2, _08028378 @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #8
    b _080284AC
    .align 2, 0
_08028378: .4byte 0x080F0FCC
_0802837C:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08028390
    b _080285F4
_08028390:
    b _080285BA
_08028392:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _080283A6
    b _080285F4
_080283A6:
    subs r5, #0x40
    b _080285F4
_080283AA:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _080285F4
_080283B0:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _080285F4
_080283B6:
    movs r5, #0x4e
    b _080285F4
_080283BA:
    movs r5, #0x46
    b _080285F4
_080283BE:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _080285F4
_080283C4:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _080285F4
_080283CA:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #9
    b _08028460
_080283EA:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #0xa
    b _08028486
_08028408:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _0802841E
_08028418:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _080285F4
_0802841E:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _0802842E
    adds r5, #4
_0802842E:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #0xb
    b _080284AC
_08028448:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #0xc
_08028460:
    strb r1, [r0]
    bl GetIconId__C4Tool
    mov r2, sb
    strh r0, [r2]
    b _080285F4
_0802846C:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #0xd
_08028486:
    strb r1, [r0]
    bl GetIconId__C4Tool
    mov r3, sb
    strh r0, [r3]
    b _080285F4
_08028492:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #0xe
_080284AC:
    strb r1, [r0]
    bl GetIconId__C4Tool
    mov r1, sb
    strh r0, [r1]
    b _080285F4
_080284B8:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _080285F4
_080284BE:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _080285F4
_080284C4:
    movs r5, #0x89
    lsls r5, r5, #1
    b _080285F4
_080284CA:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _080285F4
_080284D0:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08028504
    cmp r0, #1
    bgt _080284F2
    cmp r0, #0
    beq _080284F8
    b _080285F4
_080284F2:
    cmp r0, #2
    beq _08028510
    b _080285F4
_080284F8:
    movs r5, #0xea
    ldr r1, _08028500 @ =0x0000077A
    b _0802859E
    .align 2, 0
_08028500: .4byte 0x0000077A
_08028504:
    movs r5, #0xee
    ldr r1, _0802850C @ =0x0000077E
    b _0802859E
    .align 2, 0
_0802850C: .4byte 0x0000077E
_08028510:
    movs r5, #0xe6
    ldr r1, _08028518 @ =0x00000782
    b _0802859E
    .align 2, 0
_08028518: .4byte 0x00000782
_0802851C:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08028534 @ =0x0000077A
    b _0802859E
    .align 2, 0
_08028534: .4byte 0x0000077A
_08028538:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _0802854C @ =0x0000077A
    b _0802859E
    .align 2, 0
_0802854C: .4byte 0x0000077A
_08028550:
    movs r5, #0x83
    lsls r5, r5, #1
    b _080285F4
_08028556:
    movs r5, #0x81
    lsls r5, r5, #1
    b _080285F4
_0802855C:
    movs r5, #0xfe
    b _080285F4
_08028560:
    movs r5, #0xfa
    b _080285F4
_08028564:
    movs r5, #0x91
    lsls r5, r5, #1
    b _080285F4
_0802856A:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _080285F4
_08028570:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _080285F4
_08028576:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _080285F4
    subs r5, #0x40
    b _080285F4
_0802858C:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _080285AC @ =0x00000792
_0802859E:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _080285F4
    adds r0, r2, #0
    bl func_080321B0
    b _080285F4
    .align 2, 0
_080285AC: .4byte 0x00000792
_080285B0:
    movs r5, #0x3e
    b _080285F4
_080285B4:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _080285F4
_080285BA:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _080285F4
_080285C0:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _080285F4
_080285C6:
    movs r5, #0x42
    b _080285F4
_080285CA:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _080285F4
_080285DC:
    movs r5, #0xab
    lsls r5, r5, #1
    b _080285F4
_080285E2:
    ldr r0, [r4]
    b _0802862C
_080285E6:
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    movs r5, #0xf6
    cmp r0, #0
    beq _080285F4
    movs r5, #0xf2
_080285F4:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08028628
_08028616:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080285E2
    adds r4, #4
    cmp r4, r5
    bne _08028616
_08028628:
    subs r0, r5, #4
    ldr r0, [r0]
_0802862C:
    movs r1, #0x6c
_0802862E:
    bl func_08008B6C
    movs r0, #1
_08028634:
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08028644
func_08028644: @ 0x08028644
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, [r6, #0x34]
    ldr r1, _08028690 @ =0x00001C2C
    adds r0, r0, r1
    bl func_0800F190
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    cmp r4, #0
    beq _0802865E
    b _08028B46
_0802865E:
    adds r1, r6, #0
    adds r1, #0xc0
    movs r0, #1
    strb r0, [r1]
    subs r1, #0x84
    movs r0, #0xb
    strb r0, [r1]
    adds r2, r6, #0
    adds r2, #0x88
    movs r0, #0xa8
    lsls r0, r0, #0xd
    str r4, [r2, #4]
    str r4, [r2, #8]
    str r0, [r2, #0x14]
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r3, [r0]
    adds r7, r1, #0
    cmp r3, #1
    beq _080286B8
    cmp r3, #1
    bgt _08028694
    cmp r3, #0
    beq _080286C8
    b _080286D0
    .align 2, 0
_08028690: .4byte 0x00001C2C
_08028694:
    cmp r3, #2
    beq _0802869E
    cmp r3, #3
    beq _080286A8
    b _080286D0
_0802869E:
    ldr r0, _080286A4 @ =0xFFFE5556
    b _080286AA
    .align 2, 0
_080286A4: .4byte 0xFFFE5556
_080286A8:
    ldr r0, _080286B4 @ =0x0001AAAA
_080286AA:
    str r0, [r2, #0xc]
    str r4, [r2, #0x10]
    str r4, [r2, #0x18]
    b _080286D0
    .align 2, 0
_080286B4: .4byte 0x0001AAAA
_080286B8:
    ldr r0, _080286C4 @ =0xFFFE5556
    str r4, [r2, #0xc]
    str r0, [r2, #0x10]
    str r4, [r2, #0x18]
    b _080286D0
    .align 2, 0
_080286C4: .4byte 0xFFFE5556
_080286C8:
    ldr r0, _080286F0 @ =0x0001AAAA
    str r3, [r2, #0xc]
    str r0, [r2, #0x10]
    str r3, [r2, #0x18]
_080286D0:
    movs r5, #0xc9
    lsls r5, r5, #1
    adds r1, r6, #0
    adds r1, #0x7c
    ldr r0, _080286F4 @ =0x0000FFFF
    strh r0, [r1]
    ldrb r0, [r7]
    adds r7, r1, #0
    cmp r0, #0x39
    bls _080286E6
    b _08028B08
_080286E6:
    lsls r0, r0, #2
    ldr r1, _080286F8 @ =_080286FC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080286F0: .4byte 0x0001AAAA
_080286F4: .4byte 0x0000FFFF
_080286F8: .4byte _080286FC
_080286FC: @ jump table
    .4byte _080287E4 @ case 0
    .4byte _080288BE @ case 1
    .4byte _08028858 @ case 2
    .4byte _080288BE @ case 3
    .4byte _080288A8 @ case 4
    .4byte _080288BE @ case 5
    .4byte _080289DA @ case 6
    .4byte _080289E6 @ case 7
    .4byte _08028AFA @ case 8
    .4byte _080288F6 @ case 9
    .4byte _08028ADA @ case 10
    .4byte _080288DC @ case 11
    .4byte _080288DC @ case 12
    .4byte _080288D6 @ case 13
    .4byte _080288DC @ case 14
    .4byte _080288E2 @ case 15
    .4byte _080288E6 @ case 16
    .4byte _08028AC8 @ case 17
    .4byte _08028AD4 @ case 18
    .4byte _080288EA @ case 19
    .4byte _080288F0 @ case 20
    .4byte _08028ADA @ case 21
    .4byte _080289CE @ case 22
    .4byte _080289D4 @ case 23
    .4byte _080289E0 @ case 24
    .4byte _08028944 @ case 25
    .4byte _08028944 @ case 26
    .4byte _08028916 @ case 27
    .4byte _08028934 @ case 28
    .4byte _08028934 @ case 29
    .4byte _08028974 @ case 30
    .4byte _0802898E @ case 31
    .4byte _080289AA @ case 32
    .4byte _08028AC8 @ case 33
    .4byte _08028A30 @ case 34
    .4byte _08028A4C @ case 35
    .4byte _08028A64 @ case 36
    .4byte _08028A6A @ case 37
    .4byte _08028A70 @ case 38
    .4byte _08028A74 @ case 39
    .4byte _08028A78 @ case 40
    .4byte _08028A7E @ case 41
    .4byte _08028A84 @ case 42
    .4byte _08028A84 @ case 43
    .4byte _08028A8A @ case 44
    .4byte _08028AA0 @ case 45
    .4byte _08028AC4 @ case 46
    .4byte _08028ADA @ case 47
    .4byte _08028ACE @ case 48
    .4byte _08028AC8 @ case 49
    .4byte _08028ACE @ case 50
    .4byte _08028AD4 @ case 51
    .4byte _08028ADA @ case 52
    .4byte _08028ADE @ case 53
    .4byte _08028AC8 @ case 54
    .4byte _08028AC8 @ case 55
    .4byte _08028ACE @ case 56
    .4byte _08028ACE @ case 57
_080287E4:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08028816
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _080287FE
    b _08028AF0
_080287FE:
    cmp r0, #1
    bgt _0802880A
    cmp r0, #0
    bne _08028808
    b _08028ACE
_08028808:
    b _08028B08
_0802880A:
    cmp r0, #2
    beq _08028810
    b _08028B08
_08028810:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _08028B08
_08028816:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08028832
    cmp r0, #1
    bgt _0802882C
    cmp r0, #0
    bne _0802882A
    b _08028944
_0802882A:
    b _08028B08
_0802882C:
    cmp r0, #2
    beq _08028844
    b _08028B08
_08028832:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08028854
    adds r1, #0x94
    b _08028854
_08028844:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08028854
    adds r1, #0x2c
_08028854:
    adds r5, r1, #0
    b _08028B08
_08028858:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08028868
    b _08028ACE
_08028868:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _08028944
    cmp r3, #0
    blt _08028944
    ldr r2, _080288A4 @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    b _080289C6
    .align 2, 0
_080288A4: .4byte 0x080F0FCC
_080288A8:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _080288BC
    b _08028B08
_080288BC:
    b _08028ACE
_080288BE:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _080288D2
    b _08028B08
_080288D2:
    subs r5, #0x40
    b _08028B08
_080288D6:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _08028B08
_080288DC:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _08028B08
_080288E2:
    movs r5, #0x4e
    b _08028B08
_080288E6:
    movs r5, #0x46
    b _08028B08
_080288EA:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _08028B08
_080288F0:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _08028B08
_080288F6:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _080289C4
_08028916:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _080289C4
_08028934:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _0802894A
_08028944:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _08028B08
_0802894A:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _0802895A
    adds r5, #4
_0802895A:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _080289C4
_08028974:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
    b _080289C4
_0802898E:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    b _080289C4
_080289AA:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
_080289C4:
    strb r1, [r0]
_080289C6:
    bl GetIconId__C4Tool
    strh r0, [r7]
    b _08028B08
_080289CE:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _08028B08
_080289D4:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _08028B08
_080289DA:
    movs r5, #0x89
    lsls r5, r5, #1
    b _08028B08
_080289E0:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _08028B08
_080289E6:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08028A18
    cmp r0, #1
    bgt _08028A08
    cmp r0, #0
    beq _08028A0E
    b _08028B08
_08028A08:
    cmp r0, #2
    beq _08028A24
    b _08028B08
_08028A0E:
    movs r5, #0xea
    ldr r1, _08028A14 @ =0x0000077A
    b _08028AB2
    .align 2, 0
_08028A14: .4byte 0x0000077A
_08028A18:
    movs r5, #0xee
    ldr r1, _08028A20 @ =0x0000077E
    b _08028AB2
    .align 2, 0
_08028A20: .4byte 0x0000077E
_08028A24:
    movs r5, #0xe6
    ldr r1, _08028A2C @ =0x00000782
    b _08028AB2
    .align 2, 0
_08028A2C: .4byte 0x00000782
_08028A30:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08028A48 @ =0x0000077A
    b _08028AB2
    .align 2, 0
_08028A48: .4byte 0x0000077A
_08028A4C:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08028A60 @ =0x0000077A
    b _08028AB2
    .align 2, 0
_08028A60: .4byte 0x0000077A
_08028A64:
    movs r5, #0x83
    lsls r5, r5, #1
    b _08028B08
_08028A6A:
    movs r5, #0x81
    lsls r5, r5, #1
    b _08028B08
_08028A70:
    movs r5, #0xfe
    b _08028B08
_08028A74:
    movs r5, #0xfa
    b _08028B08
_08028A78:
    movs r5, #0x91
    lsls r5, r5, #1
    b _08028B08
_08028A7E:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _08028B08
_08028A84:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _08028B08
_08028A8A:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _08028B08
    subs r5, #0x40
    b _08028B08
_08028AA0:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08028AC0 @ =0x00000792
_08028AB2:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _08028B08
    adds r0, r2, #0
    bl func_080321B0
    b _08028B08
    .align 2, 0
_08028AC0: .4byte 0x00000792
_08028AC4:
    movs r5, #0x3e
    b _08028B08
_08028AC8:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _08028B08
_08028ACE:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _08028B08
_08028AD4:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _08028B08
_08028ADA:
    movs r5, #0x42
    b _08028B08
_08028ADE:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _08028B08
_08028AF0:
    movs r5, #0xab
    lsls r5, r5, #1
    b _08028B08
_08028AF6:
    ldr r0, [r4]
    b _08028B40
_08028AFA:
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    movs r5, #0xf6
    cmp r0, #0
    beq _08028B08
    movs r5, #0xf2
_08028B08:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08028B3C
_08028B2A:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08028AF6
    adds r4, #4
    cmp r4, r5
    bne _08028B2A
_08028B3C:
    subs r0, r5, #4
    ldr r0, [r0]
_08028B40:
    movs r1, #0x6c
    bl func_08008B6C
_08028B46:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08028B50
func_08028B50: @ 0x08028B50
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    adds r7, r6, #0
    adds r7, #0x3c
    movs r0, #0xe
    strb r0, [r7]
    adds r1, r6, #0
    adds r1, #0xc0
    movs r0, #1
    strb r0, [r1]
    ldr r0, [r6, #0x34]
    ldr r1, _08028BA0 @ =0x00001C2C
    adds r4, r0, r1
    adds r0, r4, #0
    bl func_0800F190
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    cmp r5, #0
    bne _08028BFA
    adds r0, r4, #0
    bl func_0800F204
    cmp r0, #3
    bgt _08028BFA
    cmp r0, #2
    blt _08028BFA
    movs r0, #0xd
    strb r0, [r7]
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r3, [r0]
    cmp r3, #1
    beq _08028BD6
    cmp r3, #1
    bgt _08028BA4
    cmp r3, #0
    beq _08028BE8
    b _08028BFA
    .align 2, 0
_08028BA0: .4byte 0x00001C2C
_08028BA4:
    cmp r3, #2
    beq _08028BAE
    cmp r3, #3
    beq _08028BC4
    b _08028BFA
_08028BAE:
    adds r0, r6, #0
    adds r0, #0x88
    ldr r1, _08028BC0 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r5, [r0, #8]
    b _08028BF8
    .align 2, 0
_08028BC0: .4byte 0xFFF60000
_08028BC4:
    adds r0, r6, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r5, [r0, #8]
    b _08028BF8
_08028BD6:
    adds r0, r6, #0
    adds r0, #0x88
    ldr r1, _08028BE4 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r5, [r0, #4]
    b _08028BF6
    .align 2, 0
_08028BE4: .4byte 0xFFF60000
_08028BE8:
    adds r0, r6, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r3, [r0, #4]
_08028BF6:
    str r1, [r0, #8]
_08028BF8:
    str r2, [r0, #0x14]
_08028BFA:
    movs r5, #0xc9
    lsls r5, r5, #1
    adds r0, r6, #0
    adds r0, #0x7c
    ldr r1, _08028C20 @ =0x0000FFFF
    strh r1, [r0]
    adds r1, r6, #0
    adds r1, #0x3c
    ldrb r1, [r1]
    adds r7, r0, #0
    cmp r1, #0x39
    bls _08028C14
    b _08029034
_08028C14:
    lsls r0, r1, #2
    ldr r1, _08028C24 @ =_08028C28
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08028C20: .4byte 0x0000FFFF
_08028C24: .4byte _08028C28
_08028C28: @ jump table
    .4byte _08028D10 @ case 0
    .4byte _08028DEA @ case 1
    .4byte _08028D84 @ case 2
    .4byte _08028DEA @ case 3
    .4byte _08028DD4 @ case 4
    .4byte _08028DEA @ case 5
    .4byte _08028F06 @ case 6
    .4byte _08028F12 @ case 7
    .4byte _08029026 @ case 8
    .4byte _08028E22 @ case 9
    .4byte _08029006 @ case 10
    .4byte _08028E08 @ case 11
    .4byte _08028E08 @ case 12
    .4byte _08028E02 @ case 13
    .4byte _08028E08 @ case 14
    .4byte _08028E0E @ case 15
    .4byte _08028E12 @ case 16
    .4byte _08028FF4 @ case 17
    .4byte _08029000 @ case 18
    .4byte _08028E16 @ case 19
    .4byte _08028E1C @ case 20
    .4byte _08029006 @ case 21
    .4byte _08028EFA @ case 22
    .4byte _08028F00 @ case 23
    .4byte _08028F0C @ case 24
    .4byte _08028E70 @ case 25
    .4byte _08028E70 @ case 26
    .4byte _08028E42 @ case 27
    .4byte _08028E60 @ case 28
    .4byte _08028E60 @ case 29
    .4byte _08028EA0 @ case 30
    .4byte _08028EBA @ case 31
    .4byte _08028ED6 @ case 32
    .4byte _08028FF4 @ case 33
    .4byte _08028F5C @ case 34
    .4byte _08028F78 @ case 35
    .4byte _08028F90 @ case 36
    .4byte _08028F96 @ case 37
    .4byte _08028F9C @ case 38
    .4byte _08028FA0 @ case 39
    .4byte _08028FA4 @ case 40
    .4byte _08028FAA @ case 41
    .4byte _08028FB0 @ case 42
    .4byte _08028FB0 @ case 43
    .4byte _08028FB6 @ case 44
    .4byte _08028FCC @ case 45
    .4byte _08028FF0 @ case 46
    .4byte _08029006 @ case 47
    .4byte _08028FFA @ case 48
    .4byte _08028FF4 @ case 49
    .4byte _08028FFA @ case 50
    .4byte _08029000 @ case 51
    .4byte _08029006 @ case 52
    .4byte _0802900A @ case 53
    .4byte _08028FF4 @ case 54
    .4byte _08028FF4 @ case 55
    .4byte _08028FFA @ case 56
    .4byte _08028FFA @ case 57
_08028D10:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08028D42
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _08028D2A
    b _0802901C
_08028D2A:
    cmp r0, #1
    bgt _08028D36
    cmp r0, #0
    bne _08028D34
    b _08028FFA
_08028D34:
    b _08029034
_08028D36:
    cmp r0, #2
    beq _08028D3C
    b _08029034
_08028D3C:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _08029034
_08028D42:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08028D5E
    cmp r0, #1
    bgt _08028D58
    cmp r0, #0
    bne _08028D56
    b _08028E70
_08028D56:
    b _08029034
_08028D58:
    cmp r0, #2
    beq _08028D70
    b _08029034
_08028D5E:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08028D80
    adds r1, #0x94
    b _08028D80
_08028D70:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08028D80
    adds r1, #0x2c
_08028D80:
    adds r5, r1, #0
    b _08029034
_08028D84:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08028D94
    b _08028FFA
_08028D94:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _08028E70
    cmp r3, #0
    blt _08028E70
    ldr r2, _08028DD0 @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    b _08028EF2
    .align 2, 0
_08028DD0: .4byte 0x080F0FCC
_08028DD4:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08028DE8
    b _08029034
_08028DE8:
    b _08028FFA
_08028DEA:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08028DFE
    b _08029034
_08028DFE:
    subs r5, #0x40
    b _08029034
_08028E02:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _08029034
_08028E08:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _08029034
_08028E0E:
    movs r5, #0x4e
    b _08029034
_08028E12:
    movs r5, #0x46
    b _08029034
_08028E16:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _08029034
_08028E1C:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _08029034
_08028E22:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _08028EF0
_08028E42:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _08028EF0
_08028E60:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _08028E76
_08028E70:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _08029034
_08028E76:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _08028E86
    adds r5, #4
_08028E86:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _08028EF0
_08028EA0:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
    b _08028EF0
_08028EBA:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    b _08028EF0
_08028ED6:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
_08028EF0:
    strb r1, [r0]
_08028EF2:
    bl GetIconId__C4Tool
    strh r0, [r7]
    b _08029034
_08028EFA:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _08029034
_08028F00:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _08029034
_08028F06:
    movs r5, #0x89
    lsls r5, r5, #1
    b _08029034
_08028F0C:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _08029034
_08028F12:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08028F44
    cmp r0, #1
    bgt _08028F34
    cmp r0, #0
    beq _08028F3A
    b _08029034
_08028F34:
    cmp r0, #2
    beq _08028F50
    b _08029034
_08028F3A:
    movs r5, #0xea
    ldr r1, _08028F40 @ =0x0000077A
    b _08028FDE
    .align 2, 0
_08028F40: .4byte 0x0000077A
_08028F44:
    movs r5, #0xee
    ldr r1, _08028F4C @ =0x0000077E
    b _08028FDE
    .align 2, 0
_08028F4C: .4byte 0x0000077E
_08028F50:
    movs r5, #0xe6
    ldr r1, _08028F58 @ =0x00000782
    b _08028FDE
    .align 2, 0
_08028F58: .4byte 0x00000782
_08028F5C:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08028F74 @ =0x0000077A
    b _08028FDE
    .align 2, 0
_08028F74: .4byte 0x0000077A
_08028F78:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08028F8C @ =0x0000077A
    b _08028FDE
    .align 2, 0
_08028F8C: .4byte 0x0000077A
_08028F90:
    movs r5, #0x83
    lsls r5, r5, #1
    b _08029034
_08028F96:
    movs r5, #0x81
    lsls r5, r5, #1
    b _08029034
_08028F9C:
    movs r5, #0xfe
    b _08029034
_08028FA0:
    movs r5, #0xfa
    b _08029034
_08028FA4:
    movs r5, #0x91
    lsls r5, r5, #1
    b _08029034
_08028FAA:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _08029034
_08028FB0:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _08029034
_08028FB6:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _08029034
    subs r5, #0x40
    b _08029034
_08028FCC:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08028FEC @ =0x00000792
_08028FDE:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _08029034
    adds r0, r2, #0
    bl func_080321B0
    b _08029034
    .align 2, 0
_08028FEC: .4byte 0x00000792
_08028FF0:
    movs r5, #0x3e
    b _08029034
_08028FF4:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _08029034
_08028FFA:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _08029034
_08029000:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _08029034
_08029006:
    movs r5, #0x42
    b _08029034
_0802900A:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _08029034
_0802901C:
    movs r5, #0xab
    lsls r5, r5, #1
    b _08029034
_08029022:
    ldr r0, [r4]
    b _0802906C
_08029026:
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    movs r5, #0xf6
    cmp r0, #0
    beq _08029034
    movs r5, #0xf2
_08029034:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08029068
_08029056:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08029022
    adds r4, #4
    cmp r4, r5
    bne _08029056
_08029068:
    subs r0, r5, #4
    ldr r0, [r0]
_0802906C:
    movs r1, #0x6c
    bl func_08008B6C
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0802907C
func_0802907C: @ 0x0802907C
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r0, [r5, #0x34]
    ldr r1, _080290D0 @ =0x00001C2C
    adds r4, r0, r1
    adds r0, r4, #0
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080290C6
    adds r0, r4, #0
    bl func_0800F204
    cmp r0, #1
    bne _080290B8
    adds r0, r4, #0
    bl func_0800F258
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    bl GetId__C7Article
    cmp r0, #0x35
    bne _080290B8
    ldr r0, [r5, #0x38]
    bl func_0800ED2C
_080290B8:
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    bl func_0800F390
    adds r0, r5, #0
    bl func_0802A7D8
_080290C6:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_080290D0: .4byte 0x00001C2C

    thumb_func_start func_080290D4
func_080290D4: @ 0x080290D4
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    adds r7, r1, #0
    lsls r2, r2, #0x18
    lsrs r5, r2, #0x18
    adds r0, #0xa4
    movs r4, #1
    strb r4, [r0]
    ldr r0, [r6, #0x34]
    ldr r1, _080290FC @ =0x00001C2C
    adds r0, r0, r1
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08029100
    movs r0, #0
    b _08029550
    .align 2, 0
_080290FC: .4byte 0x00001C2C
_08029100:
    adds r0, r6, #0
    adds r0, #0xc0
    strb r4, [r0]
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r5, #0
    bl func_08026150
    movs r5, #0xc9
    lsls r5, r5, #1
    adds r1, r6, #0
    adds r1, #0x7c
    ldr r0, _08029134 @ =0x0000FFFF
    strh r0, [r1]
    adds r0, r6, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    adds r7, r1, #0
    cmp r0, #0x39
    bls _0802912A
    b _08029544
_0802912A:
    lsls r0, r0, #2
    ldr r1, _08029138 @ =_0802913C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08029134: .4byte 0x0000FFFF
_08029138: .4byte _0802913C
_0802913C: @ jump table
    .4byte _08029224 @ case 0
    .4byte _080292FE @ case 1
    .4byte _08029298 @ case 2
    .4byte _080292FE @ case 3
    .4byte _080292E8 @ case 4
    .4byte _080292FE @ case 5
    .4byte _0802941A @ case 6
    .4byte _08029426 @ case 7
    .4byte _08029536 @ case 8
    .4byte _08029336 @ case 9
    .4byte _0802951A @ case 10
    .4byte _0802931C @ case 11
    .4byte _0802931C @ case 12
    .4byte _08029316 @ case 13
    .4byte _0802931C @ case 14
    .4byte _08029322 @ case 15
    .4byte _08029326 @ case 16
    .4byte _08029508 @ case 17
    .4byte _08029514 @ case 18
    .4byte _0802932A @ case 19
    .4byte _08029330 @ case 20
    .4byte _0802951A @ case 21
    .4byte _0802940E @ case 22
    .4byte _08029414 @ case 23
    .4byte _08029420 @ case 24
    .4byte _08029384 @ case 25
    .4byte _08029384 @ case 26
    .4byte _08029356 @ case 27
    .4byte _08029374 @ case 28
    .4byte _08029374 @ case 29
    .4byte _080293B4 @ case 30
    .4byte _080293CE @ case 31
    .4byte _080293EA @ case 32
    .4byte _08029508 @ case 33
    .4byte _08029470 @ case 34
    .4byte _0802948C @ case 35
    .4byte _080294A4 @ case 36
    .4byte _080294AA @ case 37
    .4byte _080294B0 @ case 38
    .4byte _080294B4 @ case 39
    .4byte _080294B8 @ case 40
    .4byte _080294BE @ case 41
    .4byte _080294C4 @ case 42
    .4byte _080294C4 @ case 43
    .4byte _080294CA @ case 44
    .4byte _080294E0 @ case 45
    .4byte _08029504 @ case 46
    .4byte _0802951A @ case 47
    .4byte _0802950E @ case 48
    .4byte _08029508 @ case 49
    .4byte _0802950E @ case 50
    .4byte _08029514 @ case 51
    .4byte _0802951A @ case 52
    .4byte _0802951E @ case 53
    .4byte _08029508 @ case 54
    .4byte _08029508 @ case 55
    .4byte _0802950E @ case 56
    .4byte _0802950E @ case 57
_08029224:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08029256
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _0802923E
    b _08029530
_0802923E:
    cmp r0, #1
    bgt _0802924A
    cmp r0, #0
    bne _08029248
    b _0802950E
_08029248:
    b _08029544
_0802924A:
    cmp r0, #2
    beq _08029250
    b _08029544
_08029250:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _08029544
_08029256:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08029272
    cmp r0, #1
    bgt _0802926C
    cmp r0, #0
    bne _0802926A
    b _08029384
_0802926A:
    b _08029544
_0802926C:
    cmp r0, #2
    beq _08029284
    b _08029544
_08029272:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08029294
    adds r1, #0x94
    b _08029294
_08029284:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08029294
    adds r1, #0x2c
_08029294:
    adds r5, r1, #0
    b _08029544
_08029298:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080292A8
    b _0802950E
_080292A8:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _08029384
    cmp r3, #0
    blt _08029384
    ldr r2, _080292E4 @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    b _08029406
    .align 2, 0
_080292E4: .4byte 0x080F0FCC
_080292E8:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _080292FC
    b _08029544
_080292FC:
    b _0802950E
_080292FE:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08029312
    b _08029544
_08029312:
    subs r5, #0x40
    b _08029544
_08029316:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _08029544
_0802931C:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _08029544
_08029322:
    movs r5, #0x4e
    b _08029544
_08029326:
    movs r5, #0x46
    b _08029544
_0802932A:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _08029544
_08029330:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _08029544
_08029336:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _08029404
_08029356:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _08029404
_08029374:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _0802938A
_08029384:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _08029544
_0802938A:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _0802939A
    adds r5, #4
_0802939A:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _08029404
_080293B4:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
    b _08029404
_080293CE:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    b _08029404
_080293EA:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
_08029404:
    strb r1, [r0]
_08029406:
    bl GetIconId__C4Tool
    strh r0, [r7]
    b _08029544
_0802940E:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _08029544
_08029414:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _08029544
_0802941A:
    movs r5, #0x89
    lsls r5, r5, #1
    b _08029544
_08029420:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _08029544
_08029426:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08029458
    cmp r0, #1
    bgt _08029448
    cmp r0, #0
    beq _0802944E
    b _08029544
_08029448:
    cmp r0, #2
    beq _08029464
    b _08029544
_0802944E:
    movs r5, #0xea
    ldr r1, _08029454 @ =0x0000077A
    b _080294F2
    .align 2, 0
_08029454: .4byte 0x0000077A
_08029458:
    movs r5, #0xee
    ldr r1, _08029460 @ =0x0000077E
    b _080294F2
    .align 2, 0
_08029460: .4byte 0x0000077E
_08029464:
    movs r5, #0xe6
    ldr r1, _0802946C @ =0x00000782
    b _080294F2
    .align 2, 0
_0802946C: .4byte 0x00000782
_08029470:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08029488 @ =0x0000077A
    b _080294F2
    .align 2, 0
_08029488: .4byte 0x0000077A
_0802948C:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _080294A0 @ =0x0000077A
    b _080294F2
    .align 2, 0
_080294A0: .4byte 0x0000077A
_080294A4:
    movs r5, #0x83
    lsls r5, r5, #1
    b _08029544
_080294AA:
    movs r5, #0x81
    lsls r5, r5, #1
    b _08029544
_080294B0:
    movs r5, #0xfe
    b _08029544
_080294B4:
    movs r5, #0xfa
    b _08029544
_080294B8:
    movs r5, #0x91
    lsls r5, r5, #1
    b _08029544
_080294BE:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _08029544
_080294C4:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _08029544
_080294CA:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _08029544
    subs r5, #0x40
    b _08029544
_080294E0:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08029500 @ =0x00000792
_080294F2:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _08029544
    adds r0, r2, #0
    bl func_080321B0
    b _08029544
    .align 2, 0
_08029500: .4byte 0x00000792
_08029504:
    movs r5, #0x3e
    b _08029544
_08029508:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _08029544
_0802950E:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _08029544
_08029514:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _08029544
_0802951A:
    movs r5, #0x42
    b _08029544
_0802951E:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _08029544
_08029530:
    movs r5, #0xab
    lsls r5, r5, #1
    b _08029544
_08029536:
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    movs r5, #0xf6
    cmp r0, #0
    beq _08029544
    movs r5, #0xf2
_08029544:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    movs r0, #1
_08029550:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08029558
func_08029558: @ 0x08029558
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    adds r0, #0xa4
    movs r4, #1
    strb r4, [r0]
    ldr r0, [r6, #0x34]
    ldr r1, _08029578 @ =0x00001C2C
    adds r0, r0, r1
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802957C
    movs r0, #0
    b _080299C8
    .align 2, 0
_08029578: .4byte 0x00001C2C
_0802957C:
    adds r0, r6, #0
    adds r0, #0xc0
    strb r4, [r0]
    adds r0, r6, #0
    bl func_08025FC4
    movs r5, #0xc9
    lsls r5, r5, #1
    adds r1, r6, #0
    adds r1, #0x7c
    ldr r0, _080295AC @ =0x0000FFFF
    strh r0, [r1]
    adds r0, r6, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    adds r7, r1, #0
    cmp r0, #0x39
    bls _080295A2
    b _080299BC
_080295A2:
    lsls r0, r0, #2
    ldr r1, _080295B0 @ =_080295B4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080295AC: .4byte 0x0000FFFF
_080295B0: .4byte _080295B4
_080295B4: @ jump table
    .4byte _0802969C @ case 0
    .4byte _08029776 @ case 1
    .4byte _08029710 @ case 2
    .4byte _08029776 @ case 3
    .4byte _08029760 @ case 4
    .4byte _08029776 @ case 5
    .4byte _08029892 @ case 6
    .4byte _0802989E @ case 7
    .4byte _080299AE @ case 8
    .4byte _080297AE @ case 9
    .4byte _08029992 @ case 10
    .4byte _08029794 @ case 11
    .4byte _08029794 @ case 12
    .4byte _0802978E @ case 13
    .4byte _08029794 @ case 14
    .4byte _0802979A @ case 15
    .4byte _0802979E @ case 16
    .4byte _08029980 @ case 17
    .4byte _0802998C @ case 18
    .4byte _080297A2 @ case 19
    .4byte _080297A8 @ case 20
    .4byte _08029992 @ case 21
    .4byte _08029886 @ case 22
    .4byte _0802988C @ case 23
    .4byte _08029898 @ case 24
    .4byte _080297FC @ case 25
    .4byte _080297FC @ case 26
    .4byte _080297CE @ case 27
    .4byte _080297EC @ case 28
    .4byte _080297EC @ case 29
    .4byte _0802982C @ case 30
    .4byte _08029846 @ case 31
    .4byte _08029862 @ case 32
    .4byte _08029980 @ case 33
    .4byte _080298E8 @ case 34
    .4byte _08029904 @ case 35
    .4byte _0802991C @ case 36
    .4byte _08029922 @ case 37
    .4byte _08029928 @ case 38
    .4byte _0802992C @ case 39
    .4byte _08029930 @ case 40
    .4byte _08029936 @ case 41
    .4byte _0802993C @ case 42
    .4byte _0802993C @ case 43
    .4byte _08029942 @ case 44
    .4byte _08029958 @ case 45
    .4byte _0802997C @ case 46
    .4byte _08029992 @ case 47
    .4byte _08029986 @ case 48
    .4byte _08029980 @ case 49
    .4byte _08029986 @ case 50
    .4byte _0802998C @ case 51
    .4byte _08029992 @ case 52
    .4byte _08029996 @ case 53
    .4byte _08029980 @ case 54
    .4byte _08029980 @ case 55
    .4byte _08029986 @ case 56
    .4byte _08029986 @ case 57
_0802969C:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080296CE
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _080296B6
    b _080299A8
_080296B6:
    cmp r0, #1
    bgt _080296C2
    cmp r0, #0
    bne _080296C0
    b _08029986
_080296C0:
    b _080299BC
_080296C2:
    cmp r0, #2
    beq _080296C8
    b _080299BC
_080296C8:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _080299BC
_080296CE:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _080296EA
    cmp r0, #1
    bgt _080296E4
    cmp r0, #0
    bne _080296E2
    b _080297FC
_080296E2:
    b _080299BC
_080296E4:
    cmp r0, #2
    beq _080296FC
    b _080299BC
_080296EA:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _0802970C
    adds r1, #0x94
    b _0802970C
_080296FC:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _0802970C
    adds r1, #0x2c
_0802970C:
    adds r5, r1, #0
    b _080299BC
_08029710:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08029720
    b _08029986
_08029720:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _080297FC
    cmp r3, #0
    blt _080297FC
    ldr r2, _0802975C @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    b _0802987E
    .align 2, 0
_0802975C: .4byte 0x080F0FCC
_08029760:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08029774
    b _080299BC
_08029774:
    b _08029986
_08029776:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _0802978A
    b _080299BC
_0802978A:
    subs r5, #0x40
    b _080299BC
_0802978E:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _080299BC
_08029794:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _080299BC
_0802979A:
    movs r5, #0x4e
    b _080299BC
_0802979E:
    movs r5, #0x46
    b _080299BC
_080297A2:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _080299BC
_080297A8:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _080299BC
_080297AE:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _0802987C
_080297CE:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _0802987C
_080297EC:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _08029802
_080297FC:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _080299BC
_08029802:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _08029812
    adds r5, #4
_08029812:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _0802987C
_0802982C:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
    b _0802987C
_08029846:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    b _0802987C
_08029862:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
_0802987C:
    strb r1, [r0]
_0802987E:
    bl GetIconId__C4Tool
    strh r0, [r7]
    b _080299BC
_08029886:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _080299BC
_0802988C:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _080299BC
_08029892:
    movs r5, #0x89
    lsls r5, r5, #1
    b _080299BC
_08029898:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _080299BC
_0802989E:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _080298D0
    cmp r0, #1
    bgt _080298C0
    cmp r0, #0
    beq _080298C6
    b _080299BC
_080298C0:
    cmp r0, #2
    beq _080298DC
    b _080299BC
_080298C6:
    movs r5, #0xea
    ldr r1, _080298CC @ =0x0000077A
    b _0802996A
    .align 2, 0
_080298CC: .4byte 0x0000077A
_080298D0:
    movs r5, #0xee
    ldr r1, _080298D8 @ =0x0000077E
    b _0802996A
    .align 2, 0
_080298D8: .4byte 0x0000077E
_080298DC:
    movs r5, #0xe6
    ldr r1, _080298E4 @ =0x00000782
    b _0802996A
    .align 2, 0
_080298E4: .4byte 0x00000782
_080298E8:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08029900 @ =0x0000077A
    b _0802996A
    .align 2, 0
_08029900: .4byte 0x0000077A
_08029904:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08029918 @ =0x0000077A
    b _0802996A
    .align 2, 0
_08029918: .4byte 0x0000077A
_0802991C:
    movs r5, #0x83
    lsls r5, r5, #1
    b _080299BC
_08029922:
    movs r5, #0x81
    lsls r5, r5, #1
    b _080299BC
_08029928:
    movs r5, #0xfe
    b _080299BC
_0802992C:
    movs r5, #0xfa
    b _080299BC
_08029930:
    movs r5, #0x91
    lsls r5, r5, #1
    b _080299BC
_08029936:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _080299BC
_0802993C:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _080299BC
_08029942:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _080299BC
    subs r5, #0x40
    b _080299BC
_08029958:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08029978 @ =0x00000792
_0802996A:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _080299BC
    adds r0, r2, #0
    bl func_080321B0
    b _080299BC
    .align 2, 0
_08029978: .4byte 0x00000792
_0802997C:
    movs r5, #0x3e
    b _080299BC
_08029980:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _080299BC
_08029986:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _080299BC
_0802998C:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _080299BC
_08029992:
    movs r5, #0x42
    b _080299BC
_08029996:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _080299BC
_080299A8:
    movs r5, #0xab
    lsls r5, r5, #1
    b _080299BC
_080299AE:
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    movs r5, #0xf6
    cmp r0, #0
    beq _080299BC
    movs r5, #0xf2
_080299BC:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    movs r0, #1
_080299C8:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_080299D0
func_080299D0: @ 0x080299D0
    push {lr}
    adds r1, r0, #0
    adds r1, #0xa4
    movs r2, #0
    strb r2, [r1]
    subs r1, #0x1c
    strb r2, [r1]
    movs r1, #0xc9
    lsls r1, r1, #1
    bl func_080321B0
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080299EC
func_080299EC: @ 0x080299EC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r6, r0, #0
    adds r1, r6, #0
    adds r1, #0xa4
    movs r0, #1
    strb r0, [r1]
    adds r0, r6, #0
    bl func_0802A588
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08029AD0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    movs r3, #0x3c
    adds r3, r3, r6
    mov r8, r3
    movs r0, #0x20
    adds r0, r0, r6
    mov sb, r0
    adds r7, r6, #0
    adds r7, #0x7c
    movs r1, #0xc0
    adds r1, r1, r6
    mov sl, r1
    cmp r4, r5
    beq _08029A56
_08029A44:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08029A7A
    adds r4, #4
    cmp r4, r5
    bne _08029A44
_08029A56:
    subs r0, r5, #4
    ldr r0, [r0]
_08029A5A:
    movs r1, #0x6a
    bl func_08008B6C
    movs r4, #0
    movs r0, #0x11
    mov r2, r8
    strb r0, [r2]
    mov r0, sb
    ldrb r3, [r0]
    cmp r3, #1
    beq _08029AA8
    cmp r3, #1
    bgt _08029A7E
    cmp r3, #0
    beq _08029ABC
    b _08029AE4
_08029A7A:
    ldr r0, [r4]
    b _08029A5A
_08029A7E:
    cmp r3, #2
    beq _08029A88
    cmp r3, #3
    beq _08029A94
    b _08029AE4
_08029A88:
    adds r0, r6, #0
    adds r0, #0x88
    ldr r1, _08029A90 @ =0xFFF60000
    b _08029A9C
    .align 2, 0
_08029A90: .4byte 0xFFF60000
_08029A94:
    adds r0, r6, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
_08029A9C:
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r4, [r0, #8]
    str r2, [r0, #0x14]
    b _08029AE4
_08029AA8:
    adds r0, r6, #0
    adds r0, #0x88
    ldr r1, _08029AB8 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r4, [r0, #4]
    b _08029ACA
    .align 2, 0
_08029AB8: .4byte 0xFFF60000
_08029ABC:
    adds r0, r6, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r3, [r0, #4]
_08029ACA:
    str r1, [r0, #8]
    str r2, [r0, #0x14]
    b _08029AE4
_08029AD0:
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0
    strb r0, [r1]
    mov r8, r1
    adds r7, r6, #0
    adds r7, #0x7c
    movs r1, #0xc0
    adds r1, r1, r6
    mov sl, r1
_08029AE4:
    movs r5, #0xc9
    lsls r5, r5, #1
    ldr r0, _08029B00 @ =0x0000FFFF
    strh r0, [r7]
    mov r2, r8
    ldrb r0, [r2]
    cmp r0, #0x39
    bls _08029AF6
    b _08029F10
_08029AF6:
    lsls r0, r0, #2
    ldr r1, _08029B04 @ =_08029B08
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08029B00: .4byte 0x0000FFFF
_08029B04: .4byte _08029B08
_08029B08: @ jump table
    .4byte _08029BF0 @ case 0
    .4byte _08029CCA @ case 1
    .4byte _08029C64 @ case 2
    .4byte _08029CCA @ case 3
    .4byte _08029CB4 @ case 4
    .4byte _08029CCA @ case 5
    .4byte _08029DE6 @ case 6
    .4byte _08029DF2 @ case 7
    .4byte _08029F02 @ case 8
    .4byte _08029D02 @ case 9
    .4byte _08029EE6 @ case 10
    .4byte _08029CE8 @ case 11
    .4byte _08029CE8 @ case 12
    .4byte _08029CE2 @ case 13
    .4byte _08029CE8 @ case 14
    .4byte _08029CEE @ case 15
    .4byte _08029CF2 @ case 16
    .4byte _08029ED4 @ case 17
    .4byte _08029EE0 @ case 18
    .4byte _08029CF6 @ case 19
    .4byte _08029CFC @ case 20
    .4byte _08029EE6 @ case 21
    .4byte _08029DDA @ case 22
    .4byte _08029DE0 @ case 23
    .4byte _08029DEC @ case 24
    .4byte _08029D50 @ case 25
    .4byte _08029D50 @ case 26
    .4byte _08029D22 @ case 27
    .4byte _08029D40 @ case 28
    .4byte _08029D40 @ case 29
    .4byte _08029D80 @ case 30
    .4byte _08029D9A @ case 31
    .4byte _08029DB6 @ case 32
    .4byte _08029ED4 @ case 33
    .4byte _08029E3C @ case 34
    .4byte _08029E58 @ case 35
    .4byte _08029E70 @ case 36
    .4byte _08029E76 @ case 37
    .4byte _08029E7C @ case 38
    .4byte _08029E80 @ case 39
    .4byte _08029E84 @ case 40
    .4byte _08029E8A @ case 41
    .4byte _08029E90 @ case 42
    .4byte _08029E90 @ case 43
    .4byte _08029E96 @ case 44
    .4byte _08029EAC @ case 45
    .4byte _08029ED0 @ case 46
    .4byte _08029EE6 @ case 47
    .4byte _08029EDA @ case 48
    .4byte _08029ED4 @ case 49
    .4byte _08029EDA @ case 50
    .4byte _08029EE0 @ case 51
    .4byte _08029EE6 @ case 52
    .4byte _08029EEA @ case 53
    .4byte _08029ED4 @ case 54
    .4byte _08029ED4 @ case 55
    .4byte _08029EDA @ case 56
    .4byte _08029EDA @ case 57
_08029BF0:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08029C22
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _08029C0A
    b _08029EFC
_08029C0A:
    cmp r0, #1
    bgt _08029C16
    cmp r0, #0
    bne _08029C14
    b _08029EDA
_08029C14:
    b _08029F10
_08029C16:
    cmp r0, #2
    beq _08029C1C
    b _08029F10
_08029C1C:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _08029F10
_08029C22:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08029C3E
    cmp r0, #1
    bgt _08029C38
    cmp r0, #0
    bne _08029C36
    b _08029D50
_08029C36:
    b _08029F10
_08029C38:
    cmp r0, #2
    beq _08029C50
    b _08029F10
_08029C3E:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08029C60
    adds r1, #0x94
    b _08029C60
_08029C50:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _08029C60
    adds r1, #0x2c
_08029C60:
    adds r5, r1, #0
    b _08029F10
_08029C64:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08029C74
    b _08029EDA
_08029C74:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _08029D50
    cmp r3, #0
    blt _08029D50
    ldr r2, _08029CB0 @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    b _08029DD2
    .align 2, 0
_08029CB0: .4byte 0x080F0FCC
_08029CB4:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08029CC8
    b _08029F10
_08029CC8:
    b _08029EDA
_08029CCA:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _08029CDE
    b _08029F10
_08029CDE:
    subs r5, #0x40
    b _08029F10
_08029CE2:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _08029F10
_08029CE8:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _08029F10
_08029CEE:
    movs r5, #0x4e
    b _08029F10
_08029CF2:
    movs r5, #0x46
    b _08029F10
_08029CF6:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _08029F10
_08029CFC:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _08029F10
_08029D02:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _08029DD0
_08029D22:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _08029DD0
_08029D40:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _08029D56
_08029D50:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _08029F10
_08029D56:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _08029D66
    adds r5, #4
_08029D66:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _08029DD0
_08029D80:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
    b _08029DD0
_08029D9A:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    b _08029DD0
_08029DB6:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
_08029DD0:
    strb r1, [r0]
_08029DD2:
    bl GetIconId__C4Tool
    strh r0, [r7]
    b _08029F10
_08029DDA:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _08029F10
_08029DE0:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _08029F10
_08029DE6:
    movs r5, #0x89
    lsls r5, r5, #1
    b _08029F10
_08029DEC:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _08029F10
_08029DF2:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _08029E24
    cmp r0, #1
    bgt _08029E14
    cmp r0, #0
    beq _08029E1A
    b _08029F10
_08029E14:
    cmp r0, #2
    beq _08029E30
    b _08029F10
_08029E1A:
    movs r5, #0xea
    ldr r1, _08029E20 @ =0x0000077A
    b _08029EBE
    .align 2, 0
_08029E20: .4byte 0x0000077A
_08029E24:
    movs r5, #0xee
    ldr r1, _08029E2C @ =0x0000077E
    b _08029EBE
    .align 2, 0
_08029E2C: .4byte 0x0000077E
_08029E30:
    movs r5, #0xe6
    ldr r1, _08029E38 @ =0x00000782
    b _08029EBE
    .align 2, 0
_08029E38: .4byte 0x00000782
_08029E3C:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08029E54 @ =0x0000077A
    b _08029EBE
    .align 2, 0
_08029E54: .4byte 0x0000077A
_08029E58:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08029E6C @ =0x0000077A
    b _08029EBE
    .align 2, 0
_08029E6C: .4byte 0x0000077A
_08029E70:
    movs r5, #0x83
    lsls r5, r5, #1
    b _08029F10
_08029E76:
    movs r5, #0x81
    lsls r5, r5, #1
    b _08029F10
_08029E7C:
    movs r5, #0xfe
    b _08029F10
_08029E80:
    movs r5, #0xfa
    b _08029F10
_08029E84:
    movs r5, #0x91
    lsls r5, r5, #1
    b _08029F10
_08029E8A:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _08029F10
_08029E90:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _08029F10
_08029E96:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _08029F10
    subs r5, #0x40
    b _08029F10
_08029EAC:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _08029ECC @ =0x00000792
_08029EBE:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _08029F10
    adds r0, r2, #0
    bl func_080321B0
    b _08029F10
    .align 2, 0
_08029ECC: .4byte 0x00000792
_08029ED0:
    movs r5, #0x3e
    b _08029F10
_08029ED4:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _08029F10
_08029EDA:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _08029F10
_08029EE0:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _08029F10
_08029EE6:
    movs r5, #0x42
    b _08029F10
_08029EEA:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _08029F10
_08029EFC:
    movs r5, #0xab
    lsls r5, r5, #1
    b _08029F10
_08029F02:
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    movs r5, #0xf6
    cmp r0, #0
    beq _08029F10
    movs r5, #0xf2
_08029F10:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    movs r0, #1
    mov r1, sl
    strb r0, [r1]
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08029F30
func_08029F30: @ 0x08029F30
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    adds r3, r1, #0
    adds r0, #0xa4
    movs r1, #0
    mov r8, r1
    movs r7, #1
    strb r7, [r0]
    subs r0, #0x1c
    strb r7, [r0]
    mov r1, r8
    strb r1, [r0, #1]
    ldr r1, _08029FD0 @ =0xFFF80000
    movs r2, #0x88
    lsls r2, r2, #0xd
    str r1, [r0, #4]
    mov r1, r8
    str r1, [r0, #8]
    str r2, [r0, #0x14]
    ldr r5, [r6, #0x10]
    cmp r5, #0
    beq _08029F9E
    mov r0, sp
    adds r1, r3, #0
    bl __4ToolUi
    mov r0, sp
    bl GetIconId__C4Tool
    adds r4, r0, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    adds r2, r4, #0
    bl func_0805E850
    adds r0, r5, #0
    adds r0, #0xc8
    strb r7, [r0]
    adds r0, #2
    mov r3, r8
    strb r3, [r0]
    adds r0, #1
    strb r7, [r0]
_08029F9E:
    adds r3, r6, #0
    adds r3, #0x3c
    movs r0, #0x34
    strb r0, [r3]
    adds r2, r6, #0
    adds r2, #0x3d
    movs r0, #0x78
    strb r0, [r2]
    movs r5, #0xc9
    lsls r5, r5, #1
    adds r1, r6, #0
    adds r1, #0x7c
    ldr r0, _08029FD4 @ =0x0000FFFF
    strh r0, [r1]
    ldrb r0, [r3]
    adds r7, r1, #0
    cmp r0, #0x39
    bls _08029FC4
    b _0802A3E0
_08029FC4:
    lsls r0, r0, #2
    ldr r1, _08029FD8 @ =_08029FDC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08029FD0: .4byte 0xFFF80000
_08029FD4: .4byte 0x0000FFFF
_08029FD8: .4byte _08029FDC
_08029FDC: @ jump table
    .4byte _0802A0C4 @ case 0
    .4byte _0802A19E @ case 1
    .4byte _0802A138 @ case 2
    .4byte _0802A19E @ case 3
    .4byte _0802A188 @ case 4
    .4byte _0802A19E @ case 5
    .4byte _0802A2BA @ case 6
    .4byte _0802A2C6 @ case 7
    .4byte _0802A3D6 @ case 8
    .4byte _0802A1D6 @ case 9
    .4byte _0802A3BA @ case 10
    .4byte _0802A1BC @ case 11
    .4byte _0802A1BC @ case 12
    .4byte _0802A1B6 @ case 13
    .4byte _0802A1BC @ case 14
    .4byte _0802A1C2 @ case 15
    .4byte _0802A1C6 @ case 16
    .4byte _0802A3A8 @ case 17
    .4byte _0802A3B4 @ case 18
    .4byte _0802A1CA @ case 19
    .4byte _0802A1D0 @ case 20
    .4byte _0802A3BA @ case 21
    .4byte _0802A2AE @ case 22
    .4byte _0802A2B4 @ case 23
    .4byte _0802A2C0 @ case 24
    .4byte _0802A224 @ case 25
    .4byte _0802A224 @ case 26
    .4byte _0802A1F6 @ case 27
    .4byte _0802A214 @ case 28
    .4byte _0802A214 @ case 29
    .4byte _0802A252 @ case 30
    .4byte _0802A26E @ case 31
    .4byte _0802A28A @ case 32
    .4byte _0802A3A8 @ case 33
    .4byte _0802A310 @ case 34
    .4byte _0802A32C @ case 35
    .4byte _0802A344 @ case 36
    .4byte _0802A34A @ case 37
    .4byte _0802A350 @ case 38
    .4byte _0802A354 @ case 39
    .4byte _0802A358 @ case 40
    .4byte _0802A35E @ case 41
    .4byte _0802A364 @ case 42
    .4byte _0802A364 @ case 43
    .4byte _0802A36A @ case 44
    .4byte _0802A380 @ case 45
    .4byte _0802A3A4 @ case 46
    .4byte _0802A3BA @ case 47
    .4byte _0802A3AE @ case 48
    .4byte _0802A3A8 @ case 49
    .4byte _0802A3AE @ case 50
    .4byte _0802A3B4 @ case 51
    .4byte _0802A3BA @ case 52
    .4byte _0802A3BE @ case 53
    .4byte _0802A3A8 @ case 54
    .4byte _0802A3A8 @ case 55
    .4byte _0802A3AE @ case 56
    .4byte _0802A3AE @ case 57
_0802A0C4:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802A0F6
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _0802A0DE
    b _0802A3D0
_0802A0DE:
    cmp r0, #1
    bgt _0802A0EA
    cmp r0, #0
    bne _0802A0E8
    b _0802A3AE
_0802A0E8:
    b _0802A3E0
_0802A0EA:
    cmp r0, #2
    beq _0802A0F0
    b _0802A3E0
_0802A0F0:
    movs r5, #0xa7
    lsls r5, r5, #1
    b _0802A3E0
_0802A0F6:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _0802A112
    cmp r0, #1
    bgt _0802A10C
    cmp r0, #0
    bne _0802A10A
    b _0802A224
_0802A10A:
    b _0802A3E0
_0802A10C:
    cmp r0, #2
    beq _0802A124
    b _0802A3E0
_0802A112:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _0802A134
    adds r1, #0x94
    b _0802A134
_0802A124:
    adds r0, r6, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _0802A134
    adds r1, #0x2c
_0802A134:
    adds r5, r1, #0
    b _0802A3E0
_0802A138:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802A148
    b _0802A3AE
_0802A148:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _0802A224
    cmp r3, #0
    blt _0802A224
    ldr r2, _0802A184 @ =0x080F0FCC
    adds r1, r6, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _0802A2A4
    .align 2, 0
_0802A184: .4byte 0x080F0FCC
_0802A188:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _0802A19C
    b _0802A3E0
_0802A19C:
    b _0802A3AE
_0802A19E:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xc9
    lsls r5, r5, #1
    cmp r0, #0
    beq _0802A1B2
    b _0802A3E0
_0802A1B2:
    subs r5, #0x40
    b _0802A3E0
_0802A1B6:
    movs r5, #0x9b
    lsls r5, r5, #1
    b _0802A3E0
_0802A1BC:
    movs r5, #0xcf
    lsls r5, r5, #1
    b _0802A3E0
_0802A1C2:
    movs r5, #0x4e
    b _0802A3E0
_0802A1C6:
    movs r5, #0x46
    b _0802A3E0
_0802A1CA:
    movs r5, #0x9f
    lsls r5, r5, #1
    b _0802A3E0
_0802A1D0:
    movs r5, #0xa1
    lsls r5, r5, #1
    b _0802A3E0
_0802A1D6:
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r5, [r0]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _0802A2A4
_0802A1F6:
    movs r5, #0xf5
    lsls r5, r5, #1
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _0802A2A4
_0802A214:
    adds r2, r6, #0
    adds r2, #0x4e
    adds r1, r6, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _0802A22A
_0802A224:
    movs r5, #0xc9
    lsls r5, r5, #1
    b _0802A3E0
_0802A22A:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r5, #0xc1
    lsls r5, r5, #1
    cmp r0, #1
    bne _0802A23A
    adds r5, #4
_0802A23A:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
    b _0802A2A4
_0802A252:
    movs r5, #0x76
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    b _0802A2A4
_0802A26E:
    movs r5, #0x6e
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
    b _0802A2A4
_0802A28A:
    movs r5, #0x72
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #7
_0802A2A4:
    strb r1, [r0]
    bl GetIconId__C4Tool
    strh r0, [r7]
    b _0802A3E0
_0802A2AE:
    movs r5, #0xfd
    lsls r5, r5, #1
    b _0802A3E0
_0802A2B4:
    movs r5, #0xcb
    lsls r5, r5, #1
    b _0802A3E0
_0802A2BA:
    movs r5, #0x89
    lsls r5, r5, #1
    b _0802A3E0
_0802A2C0:
    movs r5, #0x8b
    lsls r5, r5, #1
    b _0802A3E0
_0802A2C6:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _0802A2F8
    cmp r0, #1
    bgt _0802A2E8
    cmp r0, #0
    beq _0802A2EE
    b _0802A3E0
_0802A2E8:
    cmp r0, #2
    beq _0802A304
    b _0802A3E0
_0802A2EE:
    movs r5, #0xea
    ldr r1, _0802A2F4 @ =0x0000077A
    b _0802A392
    .align 2, 0
_0802A2F4: .4byte 0x0000077A
_0802A2F8:
    movs r5, #0xee
    ldr r1, _0802A300 @ =0x0000077E
    b _0802A392
    .align 2, 0
_0802A300: .4byte 0x0000077E
_0802A304:
    movs r5, #0xe6
    ldr r1, _0802A30C @ =0x00000782
    b _0802A392
    .align 2, 0
_0802A30C: .4byte 0x00000782
_0802A310:
    movs r5, #0xad
    lsls r5, r5, #1
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _0802A328 @ =0x0000077A
    b _0802A392
    .align 2, 0
_0802A328: .4byte 0x0000077A
_0802A32C:
    movs r5, #0x9a
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _0802A340 @ =0x0000077A
    b _0802A392
    .align 2, 0
_0802A340: .4byte 0x0000077A
_0802A344:
    movs r5, #0x83
    lsls r5, r5, #1
    b _0802A3E0
_0802A34A:
    movs r5, #0x81
    lsls r5, r5, #1
    b _0802A3E0
_0802A350:
    movs r5, #0xfe
    b _0802A3E0
_0802A354:
    movs r5, #0xfa
    b _0802A3E0
_0802A358:
    movs r5, #0x91
    lsls r5, r5, #1
    b _0802A3E0
_0802A35E:
    movs r5, #0x8f
    lsls r5, r5, #1
    b _0802A3E0
_0802A364:
    movs r5, #0x8d
    lsls r5, r5, #1
    b _0802A3E0
_0802A36A:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xa5
    lsls r5, r5, #1
    cmp r0, #0
    beq _0802A3E0
    subs r5, #0x40
    b _0802A3E0
_0802A380:
    movs r5, #0xe2
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _0802A3A0 @ =0x00000792
_0802A392:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _0802A3E0
    adds r0, r2, #0
    bl func_080321B0
    b _0802A3E0
    .align 2, 0
_0802A3A0: .4byte 0x00000792
_0802A3A4:
    movs r5, #0x3e
    b _0802A3E0
_0802A3A8:
    movs r5, #0xa3
    lsls r5, r5, #1
    b _0802A3E0
_0802A3AE:
    movs r5, #0xa9
    lsls r5, r5, #1
    b _0802A3E0
_0802A3B4:
    movs r5, #0x9d
    lsls r5, r5, #1
    b _0802A3E0
_0802A3BA:
    movs r5, #0x42
    b _0802A3E0
_0802A3BE:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r5, #0xe3
    lsls r5, r5, #1
    cmp r0, #0
    bne _0802A3E0
_0802A3D0:
    movs r5, #0xab
    lsls r5, r5, #1
    b _0802A3E0
_0802A3D6:
    ldrb r0, [r2]
    movs r5, #0xf6
    cmp r0, #0
    beq _0802A3E0
    movs r5, #0xf2
_0802A3E0:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    adds r0, r6, #0
    bl func_080321B0
    adds r1, r6, #0
    adds r1, #0xc0
    movs r0, #1
    strb r0, [r1]
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0802A400
func_0802A400: @ 0x0802A400
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r6, r0, #0
    adds r7, r1, #0
    adds r0, #0xa4
    movs r1, #0
    mov r8, r1
    movs r2, #1
    mov sb, r2
    mov r1, sb
    strb r1, [r0]
    subs r0, #0x1c
    strb r1, [r0]
    mov r2, r8
    strb r2, [r0, #1]
    movs r1, #0xa8
    lsls r1, r1, #0xd
    mov r2, r8
    str r2, [r0, #4]
    str r2, [r0, #8]
    str r1, [r0, #0x14]
    ldr r5, [r6, #0x10]
    cmp r5, #0
    beq _0802A46A
    adds r0, r7, #0
    bl GetIconId__C4Food
    adds r4, r0, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    adds r2, r4, #0
    bl func_0805E850
    adds r0, r5, #0
    adds r0, #0xc8
    mov r1, sb
    strb r1, [r0]
    adds r0, #2
    mov r2, r8
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
_0802A46A:
    ldr r5, [r6, #0x14]
    adds r0, r7, #0
    bl GetStaminaGain__C4Food
    adds r4, r0, #0
    adds r0, r7, #0
    bl GetFatigueGain__C4Food
    adds r2, r0, #0
    ldr r3, [r5, #0x64]
    adds r0, r6, #0
    adds r1, r4, #0
    bl _call_via_r3
    adds r0, r7, #0
    bl IsDrink__C4Food
    cmp r0, #0
    bne _0802A498
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0x36
    b _0802A49E
_0802A498:
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0x37
_0802A49E:
    strb r0, [r1]
    adds r0, r6, #0
    adds r0, #0xc0
    movs r1, #1
    strb r1, [r0]
    movs r1, #0xa3
    lsls r1, r1, #1
    adds r0, r6, #0
    bl func_080321B0
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0802A4C0
func_0802A4C0: @ 0x0802A4C0
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r5, r1, #0
    adds r1, r3, #0
    adds r1, #0x88
    movs r0, #1
    strb r0, [r1]
    cmp r2, #1
    beq _0802A4D6
    cmp r2, #0
    bne _0802A4D8
_0802A4D6:
    strb r2, [r1, #1]
_0802A4D8:
    ldr r4, [r3, #0x10]
    cmp r4, #0
    beq _0802A508
    ldr r0, [r4]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0xb4
    adds r2, r5, #0
    bl func_0805E850
    adds r0, r4, #0
    adds r0, #0xc8
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
_0802A508:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0802A510
func_0802A510: @ 0x0802A510
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r3, r0, #0
    adds r0, #0x88
    movs r6, #0
    movs r7, #1
    strb r7, [r0]
    strb r6, [r0, #1]
    ldr r1, _0802A584 @ =0xFFF80000
    movs r2, #0x88
    lsls r2, r2, #0xd
    str r1, [r0, #4]
    str r6, [r0, #8]
    str r2, [r0, #0x14]
    ldr r5, [r3, #0x10]
    cmp r5, #0
    beq _0802A57A
    ldr r4, [r3, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    bl GetIconId__C4Tool
    adds r4, r0, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    adds r2, r4, #0
    bl func_0805E850
    adds r0, r5, #0
    adds r0, #0xc8
    strb r7, [r0]
    adds r0, #2
    strb r6, [r0]
    adds r0, #1
    strb r7, [r0]
_0802A57A:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0802A584: .4byte 0xFFF80000

    thumb_func_start func_0802A588
func_0802A588: @ 0x0802A588
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    ldr r0, [r6, #0x38]
    adds r4, r0, #0
    adds r4, #0x54
    adds r0, r4, #0
    bl func_0800F190
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
    cmp r7, #0
    beq _0802A5A8
    b _0802A7C2
_0802A5A8:
    adds r0, r6, #0
    adds r0, #0x88
    movs r1, #1
    mov r8, r1
    mov r2, r8
    strb r2, [r0]
    strb r7, [r0, #1]
    movs r1, #0xa8
    lsls r1, r1, #0xd
    str r7, [r0, #4]
    str r7, [r0, #8]
    str r1, [r0, #0x14]
    ldr r0, [r6, #0x10]
    cmp r0, #0
    bne _0802A5C8
    b _0802A7CA
_0802A5C8:
    adds r5, r0, #0
    adds r0, r4, #0
    bl func_0800F388
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802A5FE
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    movs r2, #0xb0
    lsls r2, r2, #1
    bl func_0805E850
    adds r0, r5, #0
    adds r0, #0xc8
    mov r1, r8
    strb r1, [r0]
    adds r0, #2
    strb r7, [r0]
    b _0802A7BC
_0802A5FE:
    adds r0, r4, #0
    bl func_0800F204
    cmp r0, #5
    bls _0802A60A
    b _0802A7CA
_0802A60A:
    lsls r0, r0, #2
    ldr r1, _0802A614 @ =_0802A618
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802A614: .4byte _0802A618
_0802A618: @ jump table
    .4byte _0802A630 @ case 0
    .4byte _0802A646 @ case 1
    .4byte _0802A6BE @ case 2
    .4byte _0802A714 @ case 3
    .4byte _0802A778 @ case 4
    .4byte _0802A78E @ case 5
_0802A630:
    mov r0, sp
    adds r1, r4, #0
    bl func_0800F20C
    mov r0, sp
    bl GetIconId__C4Food
    adds r4, r0, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    b _0802A796
_0802A646:
    adds r0, r4, #0
    bl func_0800F258
    adds r1, r0, #0
    add r0, sp, #4
    strb r1, [r0]
    bl GetId__C7Article
    cmp r0, #0x1b
    bne _0802A6A4
    adds r0, r6, #0
    bl func_08025AFC
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    cmp r4, #0
    beq _0802A67E
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    movs r2, #4
    b _0802A7AA
_0802A67E:
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    movs r2, #3
    bl func_0805E850
    adds r0, r5, #0
    adds r0, #0xc8
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r4, [r0]
    b _0802A7BC
_0802A6A4:
    adds r0, r4, #0
    bl func_0800F258
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    strb r1, [r0]
    bl GetIconId__C7Article
    adds r4, r0, #0
    lsls r4, r4, #0x10
    lsrs r4, r4, #0x10
    b _0802A796
_0802A6BE:
    ldr r0, [r6, #0x34]
    ldr r2, _0802A6F4 @ =0x00001C70
    adds r0, r0, r2
    bl GetGrowthStage__C3Dog
    adds r4, r0, #0
    cmp r4, #0
    bne _0802A6FC
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x68]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    ldr r2, _0802A6F8 @ =0x000003DA
    bl func_0805E850
    adds r0, r5, #0
    adds r0, #0xc8
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r4, [r0]
    b _0802A7BC
    .align 2, 0
_0802A6F4: .4byte 0x00001C70
_0802A6F8: .4byte 0x000003DA
_0802A6FC:
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x68]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    movs r2, #0xdd
    lsls r2, r2, #2
    b _0802A7AA
_0802A714:
    adds r0, r4, #0
    bl func_0800F344
    adds r1, r0, #0
    ldr r0, [r6, #0x34]
    movs r2, #0x82
    lsls r2, r2, #3
    adds r0, r0, r2
    bl GetChicken__4CoopUi
    bl GetGrowthStage__C7Chicken
    adds r4, r0, #0
    cmp r4, #0
    bne _0802A75C
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x68]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    ldr r2, _0802A758 @ =0x0000073D
    bl func_0805E850
    adds r0, r5, #0
    adds r0, #0xc8
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r4, [r0]
    b _0802A7BC
    .align 2, 0
_0802A758: .4byte 0x0000073D
_0802A75C:
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x68]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    ldr r2, _0802A774 @ =0x00000734
    b _0802A7AA
    .align 2, 0
_0802A774: .4byte 0x00000734
_0802A778:
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    movs r2, #0x35
    b _0802A7AA
_0802A78E:
    adds r0, r4, #0
    bl func_0800F360
    adds r4, r0, #0
_0802A796:
    ldr r0, [r5]
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r5, #0
    adds r0, #0xb4
    adds r2, r4, #0
_0802A7AA:
    bl func_0805E850
    adds r0, r5, #0
    adds r0, #0xc8
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
_0802A7BC:
    adds r0, #1
    strb r1, [r0]
    b _0802A7CA
_0802A7C2:
    adds r1, r6, #0
    adds r1, #0x88
    movs r0, #0
    strb r0, [r1]
_0802A7CA:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0802A7D8
func_0802A7D8: @ 0x0802A7D8
    adds r0, #0x88
    movs r1, #0
    strb r1, [r0]
    bx lr

    thumb_func_start func_0802A7E0
func_0802A7E0: @ 0x0802A7E0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x34
    adds r5, r0, #0
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    mov r8, r0
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802A800
    b _0802AA72
_0802A800:
    mov r0, r8
    bl func_0800F388
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802A80E
    b _0802AA40
_0802A80E:
    movs r1, #0xa
    ldrsh r0, [r5, r1]
    mov sb, r0
    movs r0, #0xe
    ldrsh r4, [r5, r0]
    mov sl, r4
    mov r4, sb
    mov r7, sl
    adds r0, r5, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #1
    beq _0802A83C
    cmp r0, #1
    bgt _0802A832
    cmp r0, #0
    beq _0802A848
    b _0802A866
_0802A832:
    cmp r0, #2
    beq _0802A852
    cmp r0, #3
    beq _0802A85E
    b _0802A866
_0802A83C:
    movs r1, #0x14
    rsbs r1, r1, #0
    adds r1, r1, r7
    mov sl, r1
    subs r7, #0x10
    b _0802A866
_0802A848:
    movs r0, #0x14
    adds r0, r0, r7
    mov sl, r0
    adds r7, #0x10
    b _0802A866
_0802A852:
    movs r1, #0x14
    rsbs r1, r1, #0
    adds r1, r1, r4
    mov sb, r1
    subs r4, #0x10
    b _0802A866
_0802A85E:
    movs r0, #0x14
    adds r0, r0, r4
    mov sb, r0
    adds r4, #0x10
_0802A866:
    ldr r1, [r5]
    str r1, [sp, #0x30]
    ldrh r6, [r5, #4]
    ldr r1, [r1]
    mov r0, sp
    ldr r3, [r1, #0x34]
    ldr r1, [sp, #0x30]
    adds r2, r6, #0
    bl _call_via_r3
    mov r5, sp
    mov r0, r8
    bl func_0800F204
    cmp r0, #5
    bls _0802A888
    b _0802AA72
_0802A888:
    lsls r0, r0, #2
    ldr r1, _0802A894 @ =_0802A898
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802A894: .4byte _0802A898
_0802A898: @ jump table
    .4byte _0802AA40 @ case 0
    .4byte _0802A8B0 @ case 1
    .4byte _0802AA44 @ case 2
    .4byte _0802AA48 @ case 3
    .4byte _0802AA4C @ case 4
    .4byte _0802AA72 @ case 5
_0802A8B0:
    mov r0, r8
    bl func_0800F258
    add r1, sp, #0x14
    strb r0, [r1]
    adds r0, r1, #0
    bl CanBeDiscarded__C7Article
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802A8C8
    b _0802AA72
_0802A8C8:
    add r0, sp, #0x14
    bl GetId__C7Article
    subs r0, #0x31
    cmp r0, #0x29
    bls _0802A8D6
    b _0802AA40
_0802A8D6:
    lsls r0, r0, #2
    ldr r1, _0802A8E0 @ =_0802A8E4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802A8E0: .4byte _0802A8E4
_0802A8E4: @ jump table
    .4byte _0802A98C @ case 0
    .4byte _0802A9A2 @ case 1
    .4byte _0802AA40 @ case 2
    .4byte _0802AA40 @ case 3
    .4byte _0802A99E @ case 4
    .4byte _0802AA40 @ case 5
    .4byte _0802AA40 @ case 6
    .4byte _0802AA40 @ case 7
    .4byte _0802AA40 @ case 8
    .4byte _0802AA40 @ case 9
    .4byte _0802AA40 @ case 10
    .4byte _0802AA40 @ case 11
    .4byte _0802AA40 @ case 12
    .4byte _0802AA40 @ case 13
    .4byte _0802AA40 @ case 14
    .4byte _0802AA40 @ case 15
    .4byte _0802AA40 @ case 16
    .4byte _0802AA40 @ case 17
    .4byte _0802AA40 @ case 18
    .4byte _0802AA40 @ case 19
    .4byte _0802AA40 @ case 20
    .4byte _0802AA40 @ case 21
    .4byte _0802AA40 @ case 22
    .4byte _0802AA40 @ case 23
    .4byte _0802AA40 @ case 24
    .4byte _0802AA40 @ case 25
    .4byte _0802AA40 @ case 26
    .4byte _0802AA40 @ case 27
    .4byte _0802AA40 @ case 28
    .4byte _0802AA40 @ case 29
    .4byte _0802AA40 @ case 30
    .4byte _0802AA40 @ case 31
    .4byte _0802AA40 @ case 32
    .4byte _0802AA40 @ case 33
    .4byte _0802AA40 @ case 34
    .4byte _0802AA40 @ case 35
    .4byte _0802AA40 @ case 36
    .4byte _0802AA40 @ case 37
    .4byte _0802AA40 @ case 38
    .4byte _0802AA40 @ case 39
    .4byte _0802A9A2 @ case 40
    .4byte _0802A9A2 @ case 41
_0802A98C:
    adds r0, r5, #0
    mov r1, sb
    mov r2, sl
    bl func_080AC5D0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802A9A2
    b _0802AA40
_0802A99E:
    movs r0, #3
    b _0802AA74
_0802A9A2:
    ldr r0, [sp, #0x30]
    ldr r0, [r0]
    mov sb, r0
    movs r1, #0xe8
    add sb, r1
    add r1, sp, #0xc
    ldr r0, _0802AA24 @ =0x000003FF
    mov r8, r0
    mov r0, r8
    ands r6, r0
    ldrh r2, [r1]
    ldr r5, _0802AA28 @ =0xFFFFFC00
    adds r0, r5, #0
    ands r0, r2
    orrs r0, r6
    strh r0, [r1]
    lsls r4, r4, #0x10
    lsrs r2, r4, #0x10
    movs r0, #0x3f
    mov sl, r0
    ands r2, r0
    lsls r2, r2, #2
    ldrb r6, [r1, #1]
    movs r3, #3
    adds r0, r3, #0
    ands r0, r6
    orrs r0, r2
    strb r0, [r1, #1]
    lsrs r4, r4, #0x16
    mov r0, r8
    ands r4, r0
    ldrh r2, [r1, #2]
    adds r0, r5, #0
    ands r0, r2
    orrs r0, r4
    strh r0, [r1, #2]
    lsls r2, r7, #0x10
    lsrs r0, r2, #0x10
    mov r4, sl
    ands r0, r4
    lsls r0, r0, #2
    ldrb r4, [r1, #3]
    ands r3, r4
    orrs r3, r0
    strb r3, [r1, #3]
    lsrs r2, r2, #0x16
    mov r0, r8
    ands r2, r0
    ldrh r0, [r1, #4]
    ands r5, r0
    orrs r5, r2
    strh r5, [r1, #4]
    mov r4, sb
    ldr r3, [r4]
    ldr r0, [sp, #0x30]
    add r2, sp, #0x14
    bl _call_via_r3
    cmp r0, #1
    beq _0802AA72
    cmp r0, #1
    bgt _0802AA2C
    cmp r0, #0
    beq _0802AA32
    b _0802AA72
    .align 2, 0
_0802AA24: .4byte 0x000003FF
_0802AA28: .4byte 0xFFFFFC00
_0802AA2C:
    cmp r0, #2
    beq _0802AA36
    b _0802AA72
_0802AA32:
    movs r0, #1
    b _0802AA74
_0802AA36:
    add r0, sp, #0x14
    bl GetId__C7Article
    cmp r0, #0x31
    beq _0802AA72
_0802AA40:
    movs r0, #0
    b _0802AA74
_0802AA44:
    add r1, sp, #0x18
    b _0802AA4E
_0802AA48:
    add r1, sp, #0x20
    b _0802AA4E
_0802AA4C:
    add r1, sp, #0x28
_0802AA4E:
    subs r0, r4, #7
    strh r0, [r1]
    subs r0, r7, #4
    strh r0, [r1, #2]
    adds r0, r4, #7
    strh r0, [r1, #4]
    adds r0, r7, #5
    strh r0, [r1, #6]
    adds r0, r5, #0
    bl func_080AC070
    lsls r0, r0, #0x18
    movs r1, #1
    cmp r0, #0
    beq _0802AA6E
    movs r1, #2
_0802AA6E:
    adds r0, r1, #0
    b _0802AA74
_0802AA72:
    movs r0, #2
_0802AA74:
    add sp, #0x34
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_0802AA84
func_0802AA84: @ 0x0802AA84
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0xc
    mov r8, r0
    movs r0, #0
    mov sb, r0
    mov r1, r8
    ldr r0, [r1, #0x34]
    ldr r1, _0802AAD8 @ =0x00001C34
    adds r5, r0, r1
    adds r0, r5, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802AACA
    mov r0, r8
    ldr r4, [r0, #0x34]
    ldr r1, _0802AADC @ =0x00001BD8
    adds r4, r4, r1
    adds r0, r5, #0
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    add r1, sp, #8
    strb r0, [r1]
    movs r0, #0
    bl func_080246BC
    mov sb, r0
_0802AACA:
    mov r1, r8
    ldr r0, [r1, #0x34]
    ldr r1, _0802AAE0 @ =0x00001C38
    adds r7, r0, r1
    movs r6, #0
    b _0802AB1E
    .align 2, 0
_0802AAD8: .4byte 0x00001C34
_0802AADC: .4byte 0x00001BD8
_0802AAE0: .4byte 0x00001C38
_0802AAE4:
    adds r0, r7, #0
    adds r1, r6, #0
    bl func_0800F868
    adds r5, r0, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802AB1C
    mov r0, r8
    ldr r4, [r0, #0x34]
    ldr r1, _0802AB90 @ =0x00001BD8
    adds r4, r4, r1
    adds r0, r5, #0
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    adds r1, #9
    strb r0, [r1]
    mov r0, sb
    bl func_080246BC
    mov sb, r0
_0802AB1C:
    adds r6, #1
_0802AB1E:
    adds r0, r7, #0
    bl func_0800F5F8
    cmp r6, r0
    blo _0802AAE4
    mov r1, r8
    ldr r0, [r1, #0x34]
    movs r1, #0xe0
    lsls r1, r1, #2
    adds r7, r0, r1
    movs r6, #0
_0802AB34:
    adds r0, r7, #0
    adds r1, r6, #0
    bl GetToolStackAt__C9ToolChestUi
    adds r5, r0, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802AB6C
    mov r0, r8
    ldr r4, [r0, #0x34]
    ldr r1, _0802AB90 @ =0x00001BD8
    adds r4, r4, r1
    adds r0, r5, #0
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    adds r1, #0xa
    strb r0, [r1]
    mov r0, sb
    bl func_080246BC
    mov sb, r0
_0802AB6C:
    adds r6, #1
    cmp r6, #0x3f
    bls _0802AB34
    ldr r1, _0802AB94 @ =0x080F11B4
    mov r0, sp
    movs r2, #7
    bl memcpy
    mov r0, sp
    add r0, sb
    ldrb r0, [r0]
    add sp, #0xc
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0802AB90: .4byte 0x00001BD8
_0802AB94: .4byte 0x080F11B4

    thumb_func_start func_0802AB98
func_0802AB98: @ 0x0802AB98
    push {r4, lr}
    adds r3, r0, #0
    adds r0, r1, #0
    cmp r2, #1
    beq _0802ABB6
    cmp r2, #1
    bgt _0802ABAC
    cmp r2, #0
    beq _0802ABCC
    b _0802AC1A
_0802ABAC:
    cmp r2, #2
    beq _0802ABE6
    cmp r2, #3
    beq _0802ABFE
    b _0802AC1A
_0802ABB6:
    movs r2, #0xa
    ldrsh r1, [r0, r2]
    movs r4, #0xe
    ldrsh r2, [r0, r4]
    subs r0, r1, #4
    strh r0, [r3]
    adds r0, r2, #0
    subs r0, #0x14
    strh r0, [r3, #2]
    adds r1, #4
    b _0802AC12
_0802ABCC:
    movs r2, #0xa
    ldrsh r1, [r0, r2]
    movs r4, #0xe
    ldrsh r2, [r0, r4]
    subs r0, r1, #4
    strh r0, [r3]
    subs r0, r2, #6
    strh r0, [r3, #2]
    adds r1, #4
    strh r1, [r3, #4]
    adds r2, #0x12
    strh r2, [r3, #6]
    b _0802AC24
_0802ABE6:
    movs r2, #0xa
    ldrsh r1, [r0, r2]
    movs r4, #0xe
    ldrsh r2, [r0, r4]
    adds r0, r1, #0
    subs r0, #0x14
    strh r0, [r3]
    adds r0, r2, #0
    subs r0, #0xe
    strh r0, [r3, #2]
    adds r1, #4
    b _0802AC12
_0802ABFE:
    movs r2, #0xa
    ldrsh r1, [r0, r2]
    movs r4, #0xe
    ldrsh r2, [r0, r4]
    subs r0, r1, #4
    strh r0, [r3]
    adds r0, r2, #0
    subs r0, #0xe
    strh r0, [r3, #2]
    adds r1, #0x14
_0802AC12:
    strh r1, [r3, #4]
    adds r2, #2
    strh r2, [r3, #6]
    b _0802AC24
_0802AC1A:
    movs r0, #0
    strh r0, [r3]
    strh r0, [r3, #2]
    strh r0, [r3, #4]
    strh r0, [r3, #6]
_0802AC24:
    adds r0, r3, #0
    pop {r4}
    pop {r2}
    bx r2

    thumb_func_start func_0802AC2C
func_0802AC2C: @ 0x0802AC2C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x38
    mov sb, r0
    adds r6, r2, #0
    adds r5, r1, #0
    ldr r0, [r0]
    str r0, [sp, #0x18]
    mov r1, sb
    ldrh r1, [r1, #4]
    str r1, [sp, #0x1c]
    mov r2, sb
    movs r3, #0xa
    ldrsh r2, [r2, r3]
    str r2, [sp, #0x20]
    mov r0, sb
    movs r1, #0xe
    ldrsh r0, [r0, r1]
    str r0, [sp, #0x24]
    mov r0, sb
    adds r0, #0x20
    ldrb r2, [r0]
    mov r0, sp
    mov r1, sb
    bl func_0802AB98
    ldr r0, [sp]
    ldr r1, [sp, #4]
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    add r2, sp, #8
    mov r8, r2
    movs r3, #0x64
    str r3, [sp, #0x28]
    movs r0, #0
    str r0, [sp, #0x2c]
    movs r1, #0x2b
    mov sl, r1
    add r7, sp, #0x10
_0802AC80:
    mov r2, sl
    str r2, [sp, #0x30]
    ldr r3, [sp, #0x18]
    ldr r0, [r3]
    ldr r2, [r0, #0x40]
    adds r0, r3, #0
    mov r1, sl
    bl _call_via_r2
    adds r4, r0, #0
    movs r0, #0
    add r1, sp, #0x34
    strb r0, [r1]
    cmp r4, #0
    beq _0802AD20
    ldrh r0, [r4, #4]
    ldr r2, [sp, #0x1c]
    cmp r0, r2
    bne _0802AD20
    ldr r1, [r4, #0x14]
    adds r0, r7, #0
    ldr r2, [r1, #0xc]
    adds r1, r4, #0
    bl _call_via_r2
    mov r3, r8
    movs r0, #0
    ldrsh r2, [r3, r0]
    movs r1, #4
    ldrsh r0, [r7, r1]
    subs r2, r2, r0
    movs r3, #0
    ldrsh r0, [r7, r3]
    mov r1, r8
    movs r3, #4
    ldrsh r1, [r1, r3]
    subs r0, r0, r1
    ands r2, r0
    mov r1, r8
    movs r3, #2
    ldrsh r0, [r1, r3]
    movs r3, #6
    ldrsh r1, [r7, r3]
    subs r0, r0, r1
    ands r2, r0
    movs r1, #2
    ldrsh r0, [r7, r1]
    mov r3, r8
    movs r1, #6
    ldrsh r3, [r3, r1]
    subs r0, r0, r3
    ands r2, r0
    cmp r2, #0
    bge _0802AD20
    asrs r2, r5, #0x10
    cmp r2, #0
    beq _0802AD1A
    cmp r2, #0
    ble _0802AD08
    lsls r0, r6, #0x10
    asrs r0, r0, #0x10
    adds r0, r4, r0
    ldr r1, [r0]
    lsls r0, r2, #2
    adds r0, r0, r1
    subs r0, #4
    ldr r1, [r0]
    b _0802AD0A
_0802AD08:
    adds r1, r6, #0
_0802AD0A:
    lsls r0, r5, #0x10
    asrs r0, r0, #0x10
    adds r0, r4, r0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802AD20
_0802AD1A:
    movs r2, #1
    add r3, sp, #0x34
    strb r2, [r3]
_0802AD20:
    add r0, sp, #0x34
    ldrb r0, [r0]
    cmp r0, #0
    beq _0802AD5A
    movs r2, #0xa
    ldrsh r1, [r4, r2]
    ldr r3, [sp, #0x20]
    subs r1, r1, r3
    movs r2, #0xe
    ldrsh r0, [r4, r2]
    ldr r3, [sp, #0x24]
    subs r0, r0, r3
    adds r2, r1, #0
    muls r2, r1, r2
    adds r1, r2, #0
    adds r3, r0, #0
    muls r3, r0, r3
    adds r0, r3, #0
    adds r0, r1, r0
    adds r1, r0, #0
    ldr r2, [sp, #0x28]
    cmp r2, #0x64
    beq _0802AD54
    ldr r3, [sp, #0x2c]
    cmp r3, r0
    ble _0802AD5A
_0802AD54:
    ldr r0, [sp, #0x30]
    str r0, [sp, #0x28]
    str r1, [sp, #0x2c]
_0802AD5A:
    movs r1, #1
    add sl, r1
    mov r2, sl
    cmp r2, #0x45
    bls _0802AC80
    mov r0, sb
    adds r0, #0xb2
    add r3, sp, #0x28
    ldrb r3, [r3]
    strb r3, [r0]
    add sp, #0x38
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0802AD80
func_0802AD80: @ 0x0802AD80
    push {r4, r5, lr}
    sub sp, #0x30
    adds r5, r0, #0
    ldr r0, [r5, #0x38]
    bl func_0800E958
    adds r4, r0, #0
    ldr r0, [r5, #0x38]
    bl func_0800ED8C
    ldr r0, [r5, #0x38]
    bl func_0800E958
    cmp r4, r0
    bne _0802ADA0
    b _0802AE98
_0802ADA0:
    ldr r0, [r5, #0x38]
    bl func_0800E958
    adds r1, r0, #0
    ldr r0, _0802ADC0 @ =0x000F4240
    cmp r1, r0
    beq _0802AE28
    cmp r1, r0
    bhi _0802ADCC
    ldr r0, _0802ADC4 @ =0x00002710
    cmp r1, r0
    beq _0802ADF4
    ldr r0, _0802ADC8 @ =0x000186A0
    cmp r1, r0
    beq _0802AE10
    b _0802AE98
    .align 2, 0
_0802ADC0: .4byte 0x000F4240
_0802ADC4: .4byte 0x00002710
_0802ADC8: .4byte 0x000186A0
_0802ADCC:
    ldr r0, _0802ADE0 @ =0x05F5E100
    cmp r1, r0
    beq _0802AE58
    cmp r1, r0
    bhi _0802ADE8
    ldr r0, _0802ADE4 @ =0x00989680
    cmp r1, r0
    beq _0802AE3E
    b _0802AE98
    .align 2, 0
_0802ADE0: .4byte 0x05F5E100
_0802ADE4: .4byte 0x00989680
_0802ADE8:
    ldr r0, _0802ADF0 @ =0x3B9ACA00
    cmp r1, r0
    beq _0802AE7C
    b _0802AE98
    .align 2, 0
_0802ADF0: .4byte 0x3B9ACA00
_0802ADF4:
    ldr r0, [r5]
    ldr r1, [r0]
    movs r2, #0xa0
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r2, _0802AE0C @ =0x00000336
    movs r3, #0
    str r2, [sp]
    str r3, [sp, #4]
    ldr r3, [r1]
    mov r1, sp
    b _0802AE6E
    .align 2, 0
_0802AE0C: .4byte 0x00000336
_0802AE10:
    ldr r0, [r5]
    ldr r2, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    add r1, sp, #8
    ldr r3, _0802AE24 @ =0x00000337
    movs r4, #0
    str r3, [sp, #8]
    b _0802AE6A
    .align 2, 0
_0802AE24: .4byte 0x00000337
_0802AE28:
    ldr r0, [r5]
    ldr r2, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    add r1, sp, #0x10
    movs r3, #0xce
    lsls r3, r3, #2
    movs r4, #0
    str r3, [sp, #0x10]
    b _0802AE6A
_0802AE3E:
    ldr r0, [r5]
    ldr r2, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    add r1, sp, #0x18
    ldr r3, _0802AE54 @ =0x00000339
    movs r4, #0
    str r3, [sp, #0x18]
    b _0802AE6A
    .align 2, 0
_0802AE54: .4byte 0x00000339
_0802AE58:
    ldr r0, [r5]
    ldr r2, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    add r1, sp, #0x20
    ldr r3, _0802AE78 @ =0x0000033A
    movs r4, #0
    str r3, [sp, #0x20]
_0802AE6A:
    str r4, [r1, #4]
    ldr r3, [r2]
_0802AE6E:
    movs r2, #1
    bl _call_via_r3
    b _0802AE98
    .align 2, 0
_0802AE78: .4byte 0x0000033A
_0802AE7C:
    ldr r0, [r5]
    ldr r2, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    add r1, sp, #0x28
    ldr r3, _0802AEA0 @ =0x0000033B
    movs r4, #0
    str r3, [sp, #0x28]
    str r4, [r1, #4]
    ldr r3, [r2]
    movs r2, #1
    bl _call_via_r3
_0802AE98:
    add sp, #0x30
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_0802AEA0: .4byte 0x0000033B

    thumb_func_start func_0802AEA4
func_0802AEA4: @ 0x0802AEA4
    push {r4, r5, r6, lr}
    sub sp, #0x1c
    adds r4, r0, #0
    ldr r1, [r4]
    ldrh r6, [r4, #4]
    ldr r2, [r1]
    mov r0, sp
    ldr r3, [r2, #0x34]
    adds r2, r6, #0
    bl _call_via_r3
    mov r5, sp
    ldr r1, [r4, #0x14]
    add r0, sp, #0xc
    ldr r2, [r1, #0xc]
    adds r1, r4, #0
    bl _call_via_r2
    ldr r0, [sp, #0xc]
    ldr r1, [sp, #0x10]
    str r0, [sp, #0x14]
    str r1, [sp, #0x18]
    add r4, sp, #0x14
    mov r0, sp
    adds r1, r4, #0
    bl func_080AC070
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802AEE2
    b _0802B03E
_0802AEE2:
    adds r1, r6, #0
    subs r1, #0x34
    ldr r0, _0802AF2C @ =0x000001FF
    cmp r1, r0
    bls _0802AEEE
    b _0802B048
_0802AEEE:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _0802AEF8
    adds r0, #7
_0802AEF8:
    asrs r6, r0, #3
    movs r1, #2
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _0802AF04
    adds r0, #7
_0802AF04:
    asrs r0, r0, #3
    ldr r2, [sp]
    ldrh r3, [r5, #8]
    cmp r2, #0
    beq _0802AF30
    cmp r6, r3
    bhi _0802AF30
    ldrh r1, [r5, #0xa]
    cmp r0, r1
    bhi _0802AF30
    ldr r1, [sp, #4]
    muls r0, r3, r0
    adds r0, r0, r6
    cmp r1, #0
    beq _0802AF26
    adds r0, r1, r0
    ldrb r0, [r0]
_0802AF26:
    lsls r0, r0, #2
    adds r0, r2, r0
    b _0802AF32
    .align 2, 0
_0802AF2C: .4byte 0x000001FF
_0802AF30:
    movs r0, #0
_0802AF32:
    cmp r0, #0
    beq _0802AF42
    ldr r0, [r0]
    ldr r1, _0802AF80 @ =0x0001FFFC
    ands r0, r1
    cmp r0, #0
    beq _0802AF42
    b _0802B03E
_0802AF42:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _0802AF4C
    adds r0, #7
_0802AF4C:
    asrs r6, r0, #3
    movs r0, #6
    ldrsh r1, [r4, r0]
    subs r0, r1, #1
    cmp r0, #0
    bge _0802AF5A
    adds r0, r1, #6
_0802AF5A:
    asrs r0, r0, #3
    ldr r2, [r5]
    cmp r2, #0
    beq _0802AF84
    cmp r6, r3
    bhi _0802AF84
    ldrh r1, [r5, #0xa]
    cmp r0, r1
    bhi _0802AF84
    ldr r1, [r5, #4]
    muls r0, r3, r0
    adds r0, r0, r6
    cmp r1, #0
    beq _0802AF7A
    adds r0, r1, r0
    ldrb r0, [r0]
_0802AF7A:
    lsls r0, r0, #2
    adds r0, r2, r0
    b _0802AF86
    .align 2, 0
_0802AF80: .4byte 0x0001FFFC
_0802AF84:
    movs r0, #0
_0802AF86:
    cmp r0, #0
    beq _0802AF94
    ldr r0, [r0]
    ldr r1, _0802AFD0 @ =0x0001FFFC
    ands r0, r1
    cmp r0, #0
    bne _0802B03E
_0802AF94:
    movs r0, #4
    ldrsh r1, [r4, r0]
    subs r0, r1, #1
    cmp r0, #0
    bge _0802AFA0
    adds r0, r1, #6
_0802AFA0:
    asrs r6, r0, #3
    movs r1, #2
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _0802AFAC
    adds r0, #7
_0802AFAC:
    asrs r0, r0, #3
    cmp r2, #0
    beq _0802AFD4
    cmp r6, r3
    bhi _0802AFD4
    ldrh r1, [r5, #0xa]
    cmp r0, r1
    bhi _0802AFD4
    ldr r1, [r5, #4]
    muls r0, r3, r0
    adds r0, r0, r6
    cmp r1, #0
    beq _0802AFCA
    adds r0, r1, r0
    ldrb r0, [r0]
_0802AFCA:
    lsls r0, r0, #2
    adds r0, r2, r0
    b _0802AFD6
    .align 2, 0
_0802AFD0: .4byte 0x0001FFFC
_0802AFD4:
    movs r0, #0
_0802AFD6:
    cmp r0, #0
    beq _0802AFE4
    ldr r0, [r0]
    ldr r1, _0802B024 @ =0x0001FFFC
    ands r0, r1
    cmp r0, #0
    bne _0802B03E
_0802AFE4:
    movs r0, #4
    ldrsh r1, [r4, r0]
    subs r0, r1, #1
    cmp r0, #0
    bge _0802AFF0
    adds r0, r1, #6
_0802AFF0:
    asrs r6, r0, #3
    movs r0, #6
    ldrsh r1, [r4, r0]
    subs r0, r1, #1
    cmp r0, #0
    bge _0802AFFE
    adds r0, r1, #6
_0802AFFE:
    asrs r0, r0, #3
    adds r4, r2, #0
    cmp r4, #0
    beq _0802B02E
    cmp r6, r3
    bhi _0802B02E
    ldrh r1, [r5, #0xa]
    cmp r0, r1
    bhi _0802B02E
    ldr r1, [r5, #4]
    muls r0, r3, r0
    adds r0, r0, r6
    cmp r1, #0
    beq _0802B028
    adds r0, r1, r0
    ldrb r0, [r0]
    lsls r0, r0, #2
    adds r0, r4, r0
    b _0802B030
    .align 2, 0
_0802B024: .4byte 0x0001FFFC
_0802B028:
    lsls r0, r0, #2
    adds r0, r2, r0
    b _0802B030
_0802B02E:
    movs r0, #0
_0802B030:
    cmp r0, #0
    beq _0802B048
    ldr r0, [r0]
    ldr r1, _0802B044 @ =0x0001FFFC
    ands r0, r1
    cmp r0, #0
    beq _0802B048
_0802B03E:
    movs r0, #1
    b _0802B04A
    .align 2, 0
_0802B044: .4byte 0x0001FFFC
_0802B048:
    movs r0, #0
_0802B04A:
    add sp, #0x1c
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0802B054
func_0802B054: @ 0x0802B054
    push {r4, r5, r6, r7, lr}
    sub sp, #0x28
    adds r5, r0, #0
    ldr r0, [r5, #0x34]
    ldr r1, _0802B130 @ =0x00002E58
    adds r0, r0, r1
    bl func_0809DFAC
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #9
    bne _0802B0BA
    ldr r0, [r5, #0x34]
    ldr r1, _0802B134 @ =0x00002189
    adds r0, r0, r1
    ldrb r0, [r0]
    movs r4, #0x30
    ands r4, r0
    cmp r4, #0
    bne _0802B0BA
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    bl func_0800F204
    cmp r0, #1
    bne _0802B0BA
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    bl func_0800F258
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    bl GetId__C7Article
    cmp r0, #0x25
    bne _0802B0BA
    ldr r0, [r5]
    ldr r3, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r3, r3, r1
    add r1, sp, #4
    movs r2, #0xcc
    lsls r2, r2, #2
    str r2, [sp, #4]
    str r4, [r1, #4]
    ldr r3, [r3]
    movs r2, #0
    bl _call_via_r3
_0802B0BA:
    ldr r0, [r5, #0x34]
    ldr r1, _0802B130 @ =0x00002E58
    adds r0, r0, r1
    bl func_0809E02C
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #9
    bne _0802B118
    ldr r0, [r5, #0x34]
    ldr r1, _0802B138 @ =0x0000218B
    adds r0, r0, r1
    ldrb r0, [r0]
    movs r4, #0x18
    ands r4, r0
    cmp r4, #0
    bne _0802B118
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    bl func_0800F204
    cmp r0, #1
    bne _0802B118
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    bl func_0800F258
    adds r1, r0, #0
    add r0, sp, #0xc
    strb r1, [r0]
    bl GetId__C7Article
    cmp r0, #0x26
    bne _0802B118
    ldr r0, [r5]
    ldr r3, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r3, r3, r1
    add r1, sp, #0x10
    ldr r2, _0802B13C @ =0x00000332
    str r2, [sp, #0x10]
    str r4, [r1, #4]
    ldr r3, [r3]
    movs r2, #0
    bl _call_via_r3
_0802B118:
    ldr r0, [r5, #0x34]
    ldr r1, _0802B140 @ =0x00002194
    adds r0, r0, r1
    ldrb r1, [r0]
    movs r0, #0xc0
    ands r0, r1
    cmp r0, #0
    bne _0802B1BC
    movs r7, #1
    movs r6, #0
    ldr r4, _0802B144 @ =0x080F11BC
    b _0802B14C
    .align 2, 0
_0802B130: .4byte 0x00002E58
_0802B134: .4byte 0x00002189
_0802B138: .4byte 0x0000218B
_0802B13C: .4byte 0x00000332
_0802B140: .4byte 0x00002194
_0802B144: .4byte 0x080F11BC
_0802B148:
    adds r4, #4
    adds r6, #1
_0802B14C:
    cmp r6, #8
    bhi _0802B162
    ldr r0, [r5, #0x34]
    adds r0, #0x54
    ldr r1, [r4]
    bl IsDisplayEnabled__C11ShippingBini
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802B148
    movs r7, #0
_0802B162:
    cmp r7, #0
    beq _0802B1BC
    ldr r0, [r5, #0x34]
    ldr r4, _0802B1D4 @ =0x00002E58
    adds r0, r0, r4
    bl func_0809E184
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802B1BC
    ldr r0, [r5, #0x34]
    adds r0, r0, r4
    bl func_0809E194
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802B1BC
    ldr r0, [r5, #0x34]
    adds r0, r0, r4
    bl func_0809DFAC
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802B1BC
    ldr r0, [r5, #0x34]
    adds r0, r0, r4
    bl func_0809E1A4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802B1BC
    ldr r0, [r5]
    ldr r2, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    add r1, sp, #0x18
    ldr r3, _0802B1D8 @ =0x0000034D
    movs r4, #0
    str r3, [sp, #0x18]
    str r4, [r1, #4]
    ldr r3, [r2]
    movs r2, #0
    bl _call_via_r3
_0802B1BC:
    ldr r0, [r5, #0x34]
    ldr r1, _0802B1DC @ =0x00002195
    adds r0, r0, r1
    ldrb r1, [r0]
    movs r0, #3
    ands r0, r1
    cmp r0, #0
    bne _0802B250
    movs r7, #1
    movs r6, #0
    ldr r4, _0802B1E0 @ =0x080F11E0
    b _0802B1E8
    .align 2, 0
_0802B1D4: .4byte 0x00002E58
_0802B1D8: .4byte 0x0000034D
_0802B1DC: .4byte 0x00002195
_0802B1E0: .4byte 0x080F11E0
_0802B1E4:
    adds r4, #4
    adds r6, #1
_0802B1E8:
    cmp r6, #0xd
    bhi _0802B1FE
    ldr r0, [r5, #0x34]
    adds r0, #0x54
    ldr r1, [r4]
    bl IsDisplayEnabled__C11ShippingBini
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802B1E4
    movs r7, #0
_0802B1FE:
    cmp r7, #0
    beq _0802B250
    ldr r0, [r5, #0x34]
    movs r1, #0xd2
    lsls r1, r1, #6
    adds r0, r0, r1
    bl func_0809C32C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802B250
    ldr r0, [r5, #0x34]
    ldr r1, _0802B258 @ =0x00002E58
    adds r0, r0, r1
    bl func_0809E174
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802B250
    ldr r0, [r5, #0x34]
    ldr r1, _0802B258 @ =0x00002E58
    adds r0, r0, r1
    bl func_0809E02C
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802B250
    ldr r0, [r5]
    ldr r2, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    add r1, sp, #0x20
    ldr r3, _0802B25C @ =0x0000034E
    movs r4, #0
    str r3, [sp, #0x20]
    str r4, [r1, #4]
    ldr r3, [r2]
    movs r2, #0
    bl _call_via_r3
_0802B250:
    add sp, #0x28
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0802B258: .4byte 0x00002E58
_0802B25C: .4byte 0x0000034E

    thumb_func_start func_0802B260
func_0802B260: @ 0x0802B260
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x6c
    mov sb, r0
    mov r8, r1
    ldr r3, _0802B3A4 @ =0x080F1218
    movs r0, #3
    str r0, [sp]
    movs r4, #1
    str r4, [sp, #4]
    movs r5, #0
    str r5, [sp, #8]
    str r4, [sp, #0xc]
    add r0, sp, #0x10
    strb r4, [r0]
    mov r0, sb
    movs r2, #6
    bl func_08032560
    ldr r0, _0802B3A8 @ =vtable_unk_080E6708
    mov r1, sb
    str r0, [r1, #4]
    mov r2, r8
    ldr r0, [r2]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    mov r0, r8
    ldr r3, [r0]
    mov r0, sb
    adds r0, #0x8c
    movs r2, #2
    str r2, [sp]
    str r4, [sp, #4]
    add r4, sp, #8
    strb r5, [r4]
    movs r2, #0
    bl func_080A4A00
    mov r1, sb
    adds r1, #0xcc
    str r5, [r1]
    ldr r0, _0802B3AC @ =0x00000281
    add r0, sb
    strb r5, [r0]
    movs r2, #0
    str r2, [sp, #0x5c]
    str r4, [sp, #0x68]
    mov r3, sp
    adds r3, #0x18
    str r3, [sp, #0x60]
    mov r4, sp
    adds r4, #0x58
    str r4, [sp, #0x64]
    add r0, sp, #0x14
    mov sl, r0
    movs r7, #0
    adds r6, r1, #0
_0802B2DE:
    mov r1, r8
    ldr r0, [r1]
    ldr r1, [r0]
    ldr r1, [r1, #0x68]
    bl _call_via_r1
    adds r1, r0, #0
    mov r2, r8
    ldr r3, [r2]
    mov r4, sl
    strb r7, [r4]
    str r7, [sp]
    movs r0, #0x12
    str r0, [sp, #4]
    ldr r0, [sp, #0x68]
    strb r7, [r0]
    add r0, sp, #0x18
    movs r2, #0
    bl func_080A4A00
    ldr r1, [sp, #0x64]
    strh r7, [r1]
    strh r7, [r1, #2]
    ldr r1, [r6]
    cmp r1, #5
    bhi _0802B374
    lsls r0, r1, #3
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, #4
    adds r5, r6, r0
    cmp r5, #0
    beq _0802B36E
    ldrb r0, [r4]
    strb r0, [r5]
    adds r4, r5, #4
    adds r0, r4, #0
    add r1, sp, #0x18
    bl func_080DC840
    ldr r0, _0802B3B0 @ =vtable_unk_080E681C
    str r0, [r4, #0x24]
    adds r1, r5, #0
    adds r1, #0x2c
    add r0, sp, #0x40
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    add r0, sp, #0x54
    ldrb r1, [r0]
    adds r0, r5, #0
    adds r0, #0x40
    strb r1, [r0]
    mov r0, sp
    adds r0, #0x55
    ldrb r0, [r0]
    adds r1, r5, #0
    adds r1, #0x41
    strb r0, [r1]
    mov r0, sp
    adds r0, #0x56
    ldrb r0, [r0]
    adds r1, #1
    strb r0, [r1]
    mov r0, sp
    adds r0, #0x57
    ldrb r0, [r0]
    adds r1, #1
    strb r0, [r1]
    ldr r0, [sp, #0x58]
    str r0, [r5, #0x44]
_0802B36E:
    ldr r0, [r6]
    adds r0, #1
    str r0, [r6]
_0802B374:
    ldr r0, [sp, #0x60]
    movs r1, #2
    bl func_080A47B4
    ldr r4, [sp, #0x5c]
    adds r4, #1
    str r4, [sp, #0x5c]
    cmp r4, #5
    bls _0802B2DE
    movs r1, #0xa0
    lsls r1, r1, #2
    add r1, sb
    movs r0, #0
    strb r0, [r1]
    mov r0, sb
    add sp, #0x6c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0802B3A4: .4byte 0x080F1218
_0802B3A8: .4byte vtable_unk_080E6708
_0802B3AC: .4byte 0x00000281
_0802B3B0: .4byte vtable_unk_080E681C

    thumb_func_start func_0802B3B4
func_0802B3B4: @ 0x0802B3B4
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r5, r0, #0
    bl func_0803260C
    ldr r4, [r5]
    adds r0, r5, #0
    adds r0, #0x44
    ldrb r3, [r0]
    adds r2, r4, #0
    adds r2, #0x7c
    ldrh r1, [r2]
    ldr r0, _0802B40C @ =0x0000FFFF
    cmp r1, r0
    beq _0802B3DA
    cmp r3, #0
    bne _0802B3DA
    orrs r0, r1
    strh r0, [r2]
_0802B3DA:
    adds r0, r4, #0
    adds r0, #0x88
    movs r1, #0
    ldrb r0, [r0]
    cmp r0, #1
    bne _0802B3E8
    movs r1, #1
_0802B3E8:
    cmp r1, #0
    beq _0802B414
    adds r1, r5, #0
    adds r1, #0xcb
    ldrb r0, [r1]
    cmp r0, #0
    bne _0802B410
    adds r0, r5, #0
    adds r0, #0xb4
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _0802B414
    adds r1, r5, #0
    adds r1, #0xc8
    movs r0, #1
    b _0802B412
    .align 2, 0
_0802B40C: .4byte 0x0000FFFF
_0802B410:
    movs r0, #0
_0802B412:
    strb r0, [r1]
_0802B414:
    movs r7, #0
    movs r2, #0
    adds r4, r5, #0
    adds r4, #0xfc
    ldr r0, _0802B448 @ =0x00000113
    adds r6, r5, r0
    adds r5, #0xd0
_0802B422:
    ldrb r0, [r5]
    cmp r0, #0
    beq _0802B458
    ldrb r0, [r4, #0x17]
    cmp r0, #0
    bne _0802B44C
    adds r0, r4, #0
    str r2, [sp]
    bl func_0805E8F0
    adds r1, r0, #0
    lsls r0, r1, #0x1e
    ldr r2, [sp]
    cmp r0, #0
    bge _0802B444
    movs r0, #1
    strb r0, [r4, #0x14]
_0802B444:
    adds r0, r1, #0
    b _0802B450
    .align 2, 0
_0802B448: .4byte 0x00000113
_0802B44C:
    strb r2, [r6]
    movs r0, #2
_0802B450:
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge _0802B458
    strb r2, [r5]
_0802B458:
    adds r4, #0x48
    adds r6, #0x48
    adds r5, #0x48
    adds r7, #1
    cmp r7, #5
    bls _0802B422
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0802B46C
func_0802B46C: @ 0x0802B46C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    mov r8, r0
    ldr r1, [r0]
    movs r0, #0xa0
    lsls r0, r0, #2
    add r0, r8
    ldrb r7, [r0]
    mov r4, r8
    adds r4, #0xcc
    lsls r0, r7, #3
    adds r0, r0, r7
    lsls r0, r0, #3
    adds r0, #4
    movs r3, #0xa
    ldrsh r2, [r1, r3]
    movs r5, #0xe
    ldrsh r3, [r1, r5]
    adds r1, #0x20
    ldrb r6, [r1]
    movs r1, #1
    adds r5, r7, #0
    ands r5, r1
    adds r4, r4, r0
    strb r1, [r4]
    mov r1, sp
    mov r0, sp
    strh r2, [r0]
    strh r3, [r1, #2]
    ldr r0, [sp]
    str r0, [r4, #0x44]
    cmp r6, #1
    beq _0802B4C6
    cmp r6, #1
    ble _0802B4BE
    cmp r6, #2
    beq _0802B4D0
    cmp r6, #3
    beq _0802B4DC
_0802B4BE:
    movs r0, #0xca
    lsls r0, r0, #3
    adds r1, r5, r0
    b _0802B4E0
_0802B4C6:
    ldr r3, _0802B4CC @ =0x00000652
    b _0802B4DE
    .align 2, 0
_0802B4CC: .4byte 0x00000652
_0802B4D0:
    ldr r0, _0802B4D8 @ =0x00000654
    adds r1, r5, r0
    b _0802B4E0
    .align 2, 0
_0802B4D8: .4byte 0x00000654
_0802B4DC:
    ldr r3, _0802B518 @ =0x00000656
_0802B4DE:
    adds r1, r5, r3
_0802B4E0:
    adds r0, r4, #0
    adds r0, #0x2c
    bl func_0805E860
    adds r0, r4, #0
    adds r0, #0x40
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, r7, #1
    movs r1, #0
    cmp r0, #5
    bhi _0802B504
    adds r1, r0, #0
_0802B504:
    movs r0, #0xa0
    lsls r0, r0, #2
    add r0, r8
    strb r1, [r0]
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0802B518: .4byte 0x00000656
_0802B51C:
    .byte 0xF0, 0xB5, 0x57, 0x46
    .byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x9E, 0xB0, 0x13, 0x90, 0x14, 0x91, 0x00, 0x68, 0x15, 0x90
    .byte 0x81, 0x88, 0x89, 0x46, 0x02, 0x68, 0x92, 0x46, 0x13, 0x98, 0x44, 0x30, 0x00, 0x78, 0x16, 0x90
    .byte 0x15, 0x9B, 0x9E, 0x68, 0x31, 0x14, 0xD8, 0x68, 0x07, 0x1C, 0x3A, 0x14, 0x0D, 0xAC, 0x14, 0x9D
    .byte 0x28, 0x68, 0xAB, 0x68, 0x0D, 0x90, 0x63, 0x60, 0x48, 0x46, 0x07, 0xF0, 0xD1, 0xF9, 0x80, 0x46
    .byte 0x13, 0x98, 0x8B, 0x30, 0x41, 0x46, 0x01, 0x70, 0x15, 0x9D, 0x88, 0x35, 0x00, 0x21, 0x28, 0x78
    .byte 0x01, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0x00, 0xD1, 0xA2, 0xE0, 0x15, 0x98, 0xA4, 0x30
    .byte 0x00, 0x78, 0x00, 0x28, 0x00, 0xD1, 0x9C, 0xE0, 0x68, 0x68, 0x30, 0x18, 0x00, 0x14, 0x14, 0x9A
    .byte 0x0C, 0x23, 0xD1, 0x5E, 0x40, 0x1A, 0x17, 0x90, 0xA8, 0x68, 0x3C, 0x18, 0x21, 0x14, 0x0E, 0x27
    .byte 0xD0, 0x5F, 0x0E, 0x1A, 0x80, 0x20, 0x00, 0x02, 0x40, 0x1A, 0x18, 0x90, 0x00, 0x21, 0x68, 0x78
    .byte 0x01, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0x0D, 0xD0, 0x51, 0x46, 0x08, 0x68, 0x81, 0x6D
    .byte 0x50, 0x46, 0xA8, 0xF0, 0xA5, 0xF9, 0x14, 0x9A, 0x91, 0x68, 0x00, 0x22, 0x00, 0x92, 0x17, 0x9A
    .byte 0x33, 0x1C, 0x0F, 0xF0, 0x41, 0xFC, 0x68, 0x69, 0x21, 0x1A, 0x09, 0x14, 0x14, 0x9B, 0x0E, 0x24
    .byte 0x1A, 0x5F, 0x89, 0x1A, 0x1D, 0x91, 0x02, 0x21, 0x00, 0x14, 0x0F, 0x28, 0x06, 0xDD, 0x4D, 0x46
    .byte 0x08, 0x2D, 0x02, 0xDC, 0x47, 0x46, 0x01, 0x2F, 0x00, 0xD1, 0x01, 0x21, 0x13, 0x9D, 0x8C, 0x35
    .byte 0x0D, 0xA8, 0x80, 0x46, 0x08, 0x1C, 0x84, 0x00, 0x04, 0x43, 0x01, 0x01, 0x0C, 0x43, 0x80, 0x01
    .byte 0x04, 0x43, 0x13, 0x98, 0xB4, 0x30, 0x01, 0x68, 0x0B, 0x68, 0x82, 0x89, 0x13, 0x98, 0xB8, 0x30
    .byte 0x92, 0x00, 0x00, 0x68, 0x80, 0x18, 0x02, 0x88, 0x05, 0xA8, 0x1B, 0x69, 0xA8, 0xF0, 0x74, 0xF9
    .byte 0x05, 0xAE, 0x0E, 0x9B, 0x2A, 0x68, 0x13, 0x98, 0x90, 0x30, 0x41, 0x68, 0x48, 0x42, 0x08, 0x43
    .byte 0x00, 0x28, 0x13, 0xDA, 0xA8, 0x89, 0x13, 0x99, 0x9C, 0x31, 0x18, 0x9F, 0x00, 0x97, 0x01, 0x96
    .byte 0x02, 0x92, 0x03, 0x90, 0x04, 0x91, 0x18, 0x1C, 0x17, 0x99, 0x1D, 0x9A, 0x23, 0x1C, 0x02, 0x4C
    .byte 0xA8, 0xF0, 0x5C, 0xF9, 0x03, 0xE0, 0x00, 0x00, 0xDC, 0x04, 0x00, 0x03, 0x00, 0x20, 0x00, 0x28
    .byte 0x27, 0xD0, 0x28, 0x1C, 0x3C, 0x30, 0x01, 0x78, 0x07, 0x1C, 0x00, 0x29, 0x21, 0xD0, 0x40, 0x46
    .byte 0x01, 0x68, 0x32, 0x1C, 0x08, 0x32, 0x28, 0x1C, 0x79, 0xF0, 0xC0, 0xF8, 0x28, 0x1C, 0x3D, 0x30
    .byte 0x00, 0x78, 0x00, 0x28, 0x06, 0xD0, 0x31, 0x1C, 0x10, 0x31, 0x28, 0x1C, 0x01, 0x22, 0x79, 0xF0
    .byte 0x51, 0xF9, 0x0C, 0xE0, 0x2C, 0x1C, 0x3E, 0x34, 0x20, 0x78, 0x00, 0x28, 0x07, 0xD1, 0x31, 0x1C
    .byte 0x10, 0x31, 0x28, 0x1C, 0x01, 0x22, 0x79, 0xF0, 0x45, 0xF9, 0x01, 0x20, 0x20, 0x70, 0x00, 0x20
    .byte 0x38, 0x70, 0x00, 0x21, 0x19, 0x91, 0x6A, 0x46, 0x34, 0x32, 0x1A, 0x92, 0x13, 0x9B, 0xE4, 0x33
    .byte 0x1B, 0x93, 0x13, 0x9D, 0xD8, 0x35, 0x13, 0x9C, 0xD4, 0x34, 0xA0, 0x46, 0x13, 0x9F, 0xD0, 0x37
    .byte 0x1C, 0x97, 0x14, 0x98, 0x0C, 0x22, 0x81, 0x5E, 0x0E, 0x23, 0xC2, 0x5E, 0x1C, 0x9C, 0x20, 0x78
    .byte 0x00, 0x28, 0x5B, 0xD0, 0x3C, 0x27, 0xE8, 0x5F, 0x40, 0x1A, 0x81, 0x46, 0x3E, 0x21, 0x68, 0x5E
    .byte 0x84, 0x1A, 0x46, 0x46, 0x69, 0x6A, 0x0B, 0x68, 0x2A, 0x8E, 0x92, 0x00, 0xA8, 0x6A, 0x80, 0x18
    .byte 0x02, 0x88, 0x05, 0xA8, 0x1B, 0x69, 0xA8, 0xF0, 0xFF, 0xF8, 0x05, 0xAF, 0x0E, 0x9B, 0x32, 0x68
    .byte 0x69, 0x68, 0x48, 0x42, 0x08, 0x43, 0x00, 0x28, 0x14, 0xDA, 0x28, 0x89, 0x80, 0x21, 0x09, 0x02
    .byte 0x00, 0x91, 0x39, 0x1C, 0x01, 0x91, 0x02, 0x92, 0x03, 0x90, 0x1B, 0x9A, 0x04, 0x92, 0x18, 0x1C
    .byte 0x49, 0x46, 0x22, 0x1C, 0xAA, 0x23, 0x02, 0x4C, 0xA8, 0xF0, 0xE8, 0xF8, 0x03, 0xE0, 0x00, 0x00
    .byte 0xDC, 0x04, 0x00, 0x03, 0x00, 0x20, 0x00, 0x28, 0x28, 0xD0, 0x30, 0x1C, 0x3C, 0x30, 0x01, 0x78
    .byte 0x81, 0x46, 0x00, 0x29, 0x22, 0xD0, 0x1A, 0x9B, 0x19, 0x68, 0x3A, 0x1C, 0x08, 0x32, 0x30, 0x1C
    .byte 0x79, 0xF0, 0x4C, 0xF8, 0x30, 0x1C, 0x3D, 0x30, 0x00, 0x78, 0x00, 0x28, 0x06, 0xD0, 0x39, 0x1C
    .byte 0x10, 0x31, 0x30, 0x1C, 0x01, 0x22, 0x79, 0xF0, 0xDD, 0xF8, 0x0C, 0xE0, 0x34, 0x1C, 0x3E, 0x34
    .byte 0x20, 0x78, 0x00, 0x28, 0x07, 0xD1, 0x39, 0x1C, 0x10, 0x31, 0x30, 0x1C, 0x01, 0x22, 0x79, 0xF0
    .byte 0xD1, 0xF8, 0x01, 0x20, 0x20, 0x70, 0x00, 0x20, 0x4C, 0x46, 0x20, 0x70, 0x1B, 0x9F, 0x48, 0x37
    .byte 0x1B, 0x97, 0x48, 0x35, 0x48, 0x20, 0x80, 0x44, 0x1C, 0x99, 0x48, 0x31, 0x1C, 0x91, 0x19, 0x9A
    .byte 0x01, 0x32, 0x19, 0x92, 0x05, 0x2A, 0x8C, 0xD9, 0x13, 0x98, 0x14, 0x99, 0x06, 0xF0, 0x60, 0xFF
    .byte 0x16, 0x9B, 0x00, 0x2B, 0x05, 0xD1, 0x13, 0x9C, 0x0D, 0x4D, 0x60, 0x19, 0x00, 0x78, 0x00, 0x28
    .byte 0x77, 0xD0, 0x15, 0x9F, 0xB8, 0x6B, 0xE2, 0xF7, 0x89, 0xFE, 0x4F, 0x28, 0x14, 0xD9, 0x51, 0x46
    .byte 0x08, 0x68, 0x82, 0x6C, 0x50, 0x46, 0x00, 0x21, 0xA8, 0xF0, 0x8C, 0xF8, 0x02, 0x1C, 0x53, 0x46
    .byte 0x18, 0x68, 0x04, 0x49, 0x44, 0x6D, 0x50, 0x46, 0x01, 0x23, 0xA8, 0xF0, 0x87, 0xF8, 0x30, 0xE0
    .byte 0x81, 0x02, 0x00, 0x00, 0x08, 0xBA, 0x58, 0x08, 0x13, 0x9C, 0x32, 0x4D, 0x60, 0x19, 0x00, 0x78
    .byte 0x00, 0x28, 0x26, 0xD0, 0x57, 0x46, 0x38, 0x68, 0x81, 0x6E, 0x50, 0x46, 0xA8, 0xF0, 0x70, 0xF8
    .byte 0x04, 0x1C, 0x15, 0x98, 0x42, 0x8C, 0x20, 0x30, 0x00, 0x78, 0x12, 0x18, 0x25, 0x68, 0x0F, 0xA8
    .byte 0xEB, 0x68, 0x21, 0x1C, 0xA8, 0xF0, 0x68, 0xF8, 0x0F, 0x98, 0x02, 0x88, 0x05, 0xA8, 0x2B, 0x69
    .byte 0x21, 0x1C, 0xA8, 0xF0, 0x61, 0xF8, 0x38, 0x68, 0x82, 0x6C, 0x50, 0x46, 0x00, 0x21, 0xA8, 0xF0
    .byte 0x59, 0xF8, 0x02, 0x1C, 0x38, 0x68, 0x09, 0x99, 0x44, 0x6D, 0x50, 0x46, 0x01, 0x23, 0xA8, 0xF0
    .byte 0x55, 0xF8, 0x15, 0x9D, 0x7C, 0x35, 0x29, 0x88, 0x1B, 0x48, 0x81, 0x42, 0x24, 0xD0, 0x51, 0x46
    .byte 0x08, 0x68, 0x41, 0x6E, 0x50, 0x46, 0xA8, 0xF0, 0x43, 0xF8, 0x04, 0x1C, 0x2A, 0x88, 0x25, 0x68
    .byte 0x11, 0xA8, 0xEB, 0x68, 0x21, 0x1C, 0xA8, 0xF0, 0x3F, 0xF8, 0x11, 0x98, 0x02, 0x88, 0x05, 0xA8
    .byte 0x2B, 0x69, 0x21, 0x1C, 0xA8, 0xF0, 0x38, 0xF8, 0x52, 0x46, 0x10, 0x68, 0x82, 0x6C, 0x50, 0x46
    .byte 0x02, 0x21, 0xA8, 0xF0, 0x2F, 0xF8, 0x02, 0x1C, 0x53, 0x46, 0x18, 0x68, 0x09, 0x99, 0x44, 0x6D
    .byte 0x50, 0x46, 0x01, 0x23, 0xA8, 0xF0, 0x2A, 0xF8, 0x13, 0x9C, 0x06, 0x4D, 0x61, 0x19, 0x00, 0x20
    .byte 0x08, 0x70, 0x1E, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC
    .byte 0x00, 0x47, 0x00, 0x00, 0x81, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00

    thumb_func_start func_0802B8EC
func_0802B8EC: @ 0x0802B8EC
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    movs r0, #0xc8
    bl __builtin_new
    adds r1, r4, #0
    adds r2, r5, #0
    bl func_08024974
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0802B908
func_0802B908: @ 0x0802B908
    push {r4, r5, lr}
    sub sp, #0xc
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, _0802B93C @ =0x00001BD8
    adds r1, r2, r0
    add r0, sp, #4
    bl func_0800E924
    movs r0, #0xc9
    lsls r0, r0, #1
    str r0, [sp]
    adds r0, r4, #0
    adds r1, r5, #0
    add r2, sp, #4
    movs r3, #2
    bl func_080320DC
    ldr r0, _0802B940 @ =vtable_unk_080E676C
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0xc
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
_0802B93C: .4byte 0x00001BD8
_0802B940: .4byte vtable_unk_080E676C

    thumb_func_start func_0802B944
func_0802B944: @ 0x0802B944
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    sub sp, #0x14
    adds r5, r0, #0
    mov sb, r1
    add r1, sp, #0xc
    movs r4, #0x8d
    lsls r4, r4, #2
    movs r0, #0
    mov r8, r0
    ldrh r2, [r1]
    ldr r3, _0802B9B8 @ =0xFFFFFC00
    adds r0, r3, #0
    ands r0, r2
    orrs r0, r4
    strh r0, [r1]
    movs r6, #0
    ldrb r4, [r1, #1]
    movs r2, #3
    adds r0, r2, #0
    ands r0, r4
    strb r0, [r1, #1]
    ldrh r4, [r1, #2]
    adds r0, r3, #0
    ands r0, r4
    strh r0, [r1, #2]
    ldrb r0, [r1, #3]
    ands r2, r0
    strb r2, [r1, #3]
    ldrh r0, [r1, #4]
    ands r3, r0
    strh r3, [r1, #4]
    add r4, sp, #4
    adds r0, r4, #0
    movs r2, #6
    bl memcpy
    strb r6, [r4, #6]
    mov r0, r8
    str r0, [sp]
    adds r0, r5, #0
    mov r1, sb
    add r2, sp, #4
    movs r3, #2
    bl func_080320DC
    ldr r0, _0802B9BC @ =vtable_unk_080E671C
    str r0, [r5, #0x14]
    adds r0, r5, #0
    add sp, #0x14
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_0802B9B8: .4byte 0xFFFFFC00
_0802B9BC: .4byte vtable_unk_080E671C

    thumb_func_start func_0802B9C0
func_0802B9C0: @ 0x0802B9C0
    push {r4, lr}
    adds r4, r0, #0
    bl func_0802B944
    ldr r0, _0802BA0C @ =vtable_unk_080E65F4
    str r0, [r4, #0x14]
    adds r0, r4, #0
    adds r0, #0x34
    movs r1, #0
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #3
    strb r1, [r0]
    strb r1, [r0, #1]
    str r1, [r0, #4]
    str r1, [r0, #8]
    str r1, [r0, #0xc]
    str r1, [r0, #0x10]
    str r1, [r0, #0x14]
    str r1, [r0, #0x18]
    adds r0, #0x1c
    strb r1, [r0]
    adds r0, #2
    movs r2, #0
    strh r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r2, [r0]
    adds r0, r4, #0
    bl func_0801FDC0
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_0802BA0C: .4byte vtable_unk_080E65F4
_0802BA10:
    .byte 0x10, 0xB5, 0x04, 0x1C, 0xD0, 0x20, 0xD4, 0xF7, 0xDD, 0xFD, 0x21, 0x1C, 0x00, 0xF0, 0x86, 0xFA
    .byte 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x21, 0x1C
    .byte 0x58, 0x31, 0x08, 0x78, 0x00, 0x28, 0x13, 0xD1, 0x20, 0x1C, 0x54, 0x30, 0x00, 0x78, 0x00, 0x28
    .byte 0x10, 0xD0, 0x20, 0x1C, 0x00, 0xF0, 0x16, 0xF8, 0x20, 0x1C, 0x00, 0xF0, 0xFD, 0xF8, 0x00, 0x04
    .byte 0x01, 0x0C, 0x60, 0x8C, 0x88, 0x42, 0x05, 0xD0, 0x20, 0x1C, 0x06, 0xF0, 0xA9, 0xFB, 0x01, 0xE0
    .byte 0x00, 0x20, 0x08, 0x70, 0x20, 0x1C, 0x29, 0x1C, 0x06, 0xF0, 0xE0, 0xFC, 0x30, 0xBC, 0x01, 0xBC
    .byte 0x00, 0x47, 0x00, 0x00

    thumb_func_start func_0802BA74
func_0802BA74: @ 0x0802BA74
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r7, r0, #0
    adds r0, #0x34
    ldrb r0, [r0]
    cmp r0, #4
    bls _0802BA8C
    b _0802BC38
_0802BA8C:
    lsls r0, r0, #2
    ldr r1, _0802BA98 @ =_0802BA9C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802BA98: .4byte _0802BA9C
_0802BA9C: @ jump table
    .4byte _0802BAB0 @ case 0
    .4byte _0802BABA @ case 1
    .4byte _0802BBD0 @ case 2
    .4byte _0802BBF0 @ case 3
    .4byte _0802BC1C @ case 4
_0802BAB0:
    adds r1, r7, #0
    adds r1, #0x54
    movs r0, #0
    strb r0, [r1]
    b _0802BC38
_0802BABA:
    adds r1, r7, #0
    adds r1, #0x38
    ldr r0, [r1, #4]
    ldr r2, [r1, #0xc]
    adds r0, r0, r2
    str r0, [r1, #4]
    ldr r0, [r1, #8]
    ldr r2, [r1, #0x10]
    adds r0, r0, r2
    str r0, [r1, #8]
    ldr r0, [r1, #0x18]
    ldr r2, _0802BAE4 @ =0xFFFFB556
    adds r0, r0, r2
    str r0, [r1, #0x18]
    ldr r2, [r1, #0x14]
    adds r2, r2, r0
    mov sl, r1
    cmp r2, #0
    ble _0802BAE8
    str r2, [r1, #0x14]
    b _0802BAF0
    .align 2, 0
_0802BAE4: .4byte 0xFFFFB556
_0802BAE8:
    movs r0, #0
    mov r3, sl
    str r0, [r3, #0x14]
    str r0, [r3, #0x18]
_0802BAF0:
    movs r1, #0
    ldrh r0, [r7, #0x24]
    cmp r0, #0
    bne _0802BAFA
    movs r1, #1
_0802BAFA:
    cmp r1, #0
    bne _0802BB00
    b _0802BC38
_0802BB00:
    adds r0, r7, #0
    adds r0, #0x34
    movs r1, #0
    strb r1, [r0]
    movs r0, #0xa
    ldrsh r3, [r7, r0]
    movs r2, #0xe
    ldrsh r1, [r7, r2]
    mov ip, r1
    adds r0, r7, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #1
    beq _0802BB36
    cmp r0, #1
    bgt _0802BB26
    cmp r0, #0
    beq _0802BB30
    b _0802BB44
_0802BB26:
    cmp r0, #2
    beq _0802BB3E
    cmp r0, #3
    beq _0802BB42
    b _0802BB44
_0802BB30:
    movs r0, #0x14
    add ip, r0
    b _0802BB44
_0802BB36:
    movs r1, #0x14
    rsbs r1, r1, #0
    add ip, r1
    b _0802BB44
_0802BB3E:
    subs r3, #0x14
    b _0802BB44
_0802BB42:
    adds r3, #0x14
_0802BB44:
    ldrh r1, [r7, #4]
    mov r5, sp
    ldr r2, _0802BBC8 @ =0x000003FF
    mov r8, r2
    mov r0, r8
    ands r1, r0
    ldrh r2, [r5]
    ldr r4, _0802BBCC @ =0xFFFFFC00
    adds r0, r4, #0
    ands r0, r2
    orrs r0, r1
    strh r0, [r5]
    lsls r3, r3, #0x10
    lsrs r1, r3, #0x10
    movs r2, #0x3f
    mov sb, r2
    ands r1, r2
    lsls r1, r1, #2
    ldrb r6, [r5, #1]
    movs r2, #3
    adds r0, r2, #0
    ands r0, r6
    orrs r0, r1
    strb r0, [r5, #1]
    lsrs r3, r3, #0x16
    mov r0, r8
    ands r3, r0
    ldrh r1, [r5, #2]
    adds r0, r4, #0
    ands r0, r1
    orrs r0, r3
    strh r0, [r5, #2]
    mov r3, ip
    lsls r1, r3, #0x10
    lsrs r0, r1, #0x10
    mov r3, sb
    ands r0, r3
    lsls r0, r0, #2
    ldrb r3, [r5, #3]
    ands r2, r3
    orrs r2, r0
    strb r2, [r5, #3]
    lsrs r1, r1, #0x16
    mov r0, r8
    ands r1, r0
    ldrh r0, [r5, #4]
    ands r4, r0
    orrs r4, r1
    strh r4, [r5, #4]
    ldr r0, [r7]
    ldr r1, [r0]
    adds r1, #0xbc
    adds r2, r7, #0
    adds r2, #0x56
    ldrh r2, [r2]
    ldr r3, [r1]
    mov r1, sp
    bl _call_via_r3
    movs r1, #0
    mov r2, sl
    strb r1, [r2]
    adds r0, r7, #0
    adds r0, #0x59
    strb r1, [r0]
    b _0802BC38
    .align 2, 0
_0802BBC8: .4byte 0x000003FF
_0802BBCC: .4byte 0xFFFFFC00
_0802BBD0:
    movs r1, #0
    ldrh r0, [r7, #0x24]
    cmp r0, #0
    bne _0802BBDA
    movs r1, #1
_0802BBDA:
    cmp r1, #0
    beq _0802BC38
    adds r0, r7, #0
    adds r0, #0x34
    movs r1, #0
    strb r1, [r0]
    adds r0, #4
    strb r1, [r0]
    adds r0, #0x21
    strb r1, [r0]
    b _0802BC38
_0802BBF0:
    movs r1, #0
    ldrh r0, [r7, #0x24]
    cmp r0, #0
    bne _0802BBFA
    movs r1, #1
_0802BBFA:
    cmp r1, #0
    beq _0802BC38
    adds r0, r7, #0
    adds r0, #0x38
    movs r1, #0
    movs r2, #0xa8
    lsls r2, r2, #0xd
    str r1, [r0, #4]
    str r1, [r0, #8]
    str r2, [r0, #0x14]
    subs r0, #4
    strb r1, [r0]
    adds r1, r7, #0
    adds r1, #0x59
    movs r0, #1
    strb r0, [r1]
    b _0802BC38
_0802BC1C:
    adds r1, r7, #0
    adds r1, #0x35
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    cmp r2, #0
    bne _0802BC38
    adds r0, r7, #0
    adds r0, #0x34
    strb r2, [r0]
    adds r0, #4
    strb r2, [r0]
_0802BC38:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0802BC48
func_0802BC48: @ 0x0802BC48
    push {lr}
    adds r2, r0, #0
    movs r1, #0xc9
    lsls r1, r1, #1
    adds r0, #0x34
    ldrb r0, [r0]
    cmp r0, #4
    bhi _0802BC9C
    lsls r0, r0, #2
    ldr r1, _0802BC64 @ =_0802BC68
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802BC64: .4byte _0802BC68
_0802BC68: @ jump table
    .4byte _0802BC7C @ case 0
    .4byte _0802BC8E @ case 1
    .4byte _0802BC8E @ case 2
    .4byte _0802BC94 @ case 3
    .4byte _0802BC9A @ case 4
_0802BC7C:
    adds r0, r2, #0
    adds r0, #0x59
    ldrb r0, [r0]
    movs r1, #0xa9
    lsls r1, r1, #1
    cmp r0, #0
    bne _0802BC9C
    adds r1, #0x40
    b _0802BC9C
_0802BC8E:
    movs r1, #0xcf
    lsls r1, r1, #1
    b _0802BC9C
_0802BC94:
    movs r1, #0xa3
    lsls r1, r1, #1
    b _0802BC9C
_0802BC9A:
    movs r1, #0x42
_0802BC9C:
    adds r0, r1, #0
    pop {r1}
    bx r1
    .align 2, 0
_0802BCA4:
    .byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x81, 0xB0, 0x06, 0x1C, 0x0B, 0x1C
    .byte 0x38, 0x30, 0x00, 0x27, 0x01, 0x21, 0x88, 0x46, 0x41, 0x46, 0x01, 0x70, 0x47, 0x70, 0x23, 0x49
    .byte 0x88, 0x22, 0x52, 0x03, 0x41, 0x60, 0x87, 0x60, 0x42, 0x61, 0x35, 0x69, 0x00, 0x2D, 0x1F, 0xD0
    .byte 0x68, 0x46, 0x19, 0x1C, 0xE1, 0xF7, 0x2A, 0xFF, 0x68, 0x46, 0xE1, 0xF7, 0x41, 0xFF, 0x04, 0x1C
    .byte 0x24, 0x04, 0x24, 0x0C, 0x28, 0x68, 0x00, 0x68, 0x01, 0x68, 0x49, 0x6E, 0xA7, 0xF0, 0x10, 0xFE
    .byte 0x01, 0x1C, 0x28, 0x1C, 0xB4, 0x30, 0x22, 0x1C, 0x32, 0xF0, 0xAA, 0xFD, 0x28, 0x1C, 0xC8, 0x30
    .byte 0x41, 0x46, 0x01, 0x70, 0x02, 0x30, 0x07, 0x70, 0x01, 0x30, 0x01, 0x70, 0x01, 0x30, 0x04, 0x80
    .byte 0x31, 0x1C, 0x34, 0x31, 0x04, 0x20, 0x08, 0x70, 0x01, 0x31, 0x14, 0x20, 0x08, 0x70, 0x30, 0x1C
    .byte 0x58, 0x30, 0x41, 0x46, 0x01, 0x70, 0x30, 0x1C, 0xFF, 0xF7, 0x8E, 0xFF, 0x01, 0x1C, 0x09, 0x04
    .byte 0x09, 0x0C, 0x30, 0x1C, 0x06, 0xF0, 0x3C, 0xFA, 0x30, 0x1C, 0x54, 0x30, 0x41, 0x46, 0x01, 0x70
    .byte 0x01, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xF8, 0xFF
    .byte 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x05, 0x1C, 0x09, 0x04, 0x0E, 0x0C, 0xB1, 0x46
    .byte 0x12, 0x06, 0x13, 0x0E, 0x56, 0x30, 0x00, 0x21, 0x88, 0x46, 0x00, 0x22, 0x06, 0x80, 0x1E, 0x38
    .byte 0x01, 0x27, 0x07, 0x70, 0x41, 0x46, 0x41, 0x70, 0xA8, 0x21, 0x49, 0x03, 0x42, 0x60, 0x82, 0x60
    .byte 0x41, 0x61, 0x2C, 0x69, 0x00, 0x2C, 0x20, 0xD0, 0x00, 0x2B, 0x0A, 0xD1, 0x20, 0x68, 0x00, 0x68
    .byte 0x01, 0x68, 0x49, 0x6E, 0xA7, 0xF0, 0xBC, 0xFD, 0x01, 0x1C, 0x20, 0x1C, 0xB4, 0x30, 0x32, 0x1C
    .byte 0x09, 0xE0, 0x20, 0x68, 0x00, 0x68, 0x01, 0x68, 0x89, 0x6E, 0xA7, 0xF0, 0xB1, 0xFD, 0x01, 0x1C
    .byte 0x20, 0x1C, 0xB4, 0x30, 0x4A, 0x46, 0x32, 0xF0, 0x4B, 0xFD, 0x20, 0x1C, 0xC8, 0x30, 0x07, 0x70
    .byte 0x02, 0x30, 0x41, 0x46, 0x01, 0x70, 0x01, 0x30, 0x07, 0x70, 0x28, 0x1C, 0x34, 0x30, 0x00, 0x24
    .byte 0x03, 0x21, 0x01, 0x70, 0x14, 0x38, 0x03, 0x78, 0x01, 0x2B, 0x1C, 0xD0, 0x01, 0x2B, 0x02, 0xDC
    .byte 0x00, 0x2B, 0x21, 0xD0, 0x29, 0xE0, 0x02, 0x2B, 0x02, 0xD0, 0x03, 0x2B, 0x0A, 0xD0, 0x24, 0xE0
    .byte 0x28, 0x1C, 0x38, 0x30, 0x02, 0x49, 0xC0, 0x22, 0x12, 0x03, 0x41, 0x60, 0x84, 0x60, 0x1B, 0xE0
    .byte 0x00, 0x00, 0xF6, 0xFF, 0x28, 0x1C, 0x38, 0x30, 0xA0, 0x21, 0x09, 0x03, 0xC0, 0x22, 0x12, 0x03
    .byte 0x41, 0x60, 0x84, 0x60, 0x10, 0xE0, 0x28, 0x1C, 0x38, 0x30, 0x02, 0x49, 0xC0, 0x22, 0x12, 0x03
    .byte 0x44, 0x60, 0x08, 0xE0, 0x00, 0x00, 0xF6, 0xFF, 0x28, 0x1C, 0x38, 0x30, 0xA0, 0x21, 0x09, 0x03
    .byte 0xC0, 0x22, 0x12, 0x03, 0x43, 0x60, 0x81, 0x60, 0x42, 0x61, 0x28, 0x1C, 0x58, 0x30, 0x01, 0x24
    .byte 0x04, 0x70, 0x28, 0x1C, 0xFF, 0xF7, 0x00, 0xFF, 0x01, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x28, 0x1C
    .byte 0x06, 0xF0, 0xAE, 0xF9, 0x28, 0x1C, 0x54, 0x30, 0x04, 0x70, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
    .byte 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

    thumb_func_start func_0802BE68
func_0802BE68: @ 0x0802BE68
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r0, #0x20
    ldrb r2, [r0]
    cmp r2, #1
    beq _0802BEB0
    cmp r2, #1
    bgt _0802BE7E
    cmp r2, #0
    beq _0802BEC0
    b _0802BECC
_0802BE7E:
    cmp r2, #2
    beq _0802BE88
    cmp r2, #3
    beq _0802BE9C
    b _0802BECC
_0802BE88:
    adds r0, r5, #0
    adds r0, #0x38
    ldr r1, _0802BE98 @ =0xFFFE5556
    movs r2, #0
    str r1, [r0, #0xc]
    str r2, [r0, #0x10]
    b _0802BECA
    .align 2, 0
_0802BE98: .4byte 0xFFFE5556
_0802BE9C:
    adds r0, r5, #0
    adds r0, #0x38
    ldr r1, _0802BEAC @ =0x0001AAAA
    movs r2, #0
    str r1, [r0, #0xc]
    str r2, [r0, #0x10]
    b _0802BECA
    .align 2, 0
_0802BEAC: .4byte 0x0001AAAA
_0802BEB0:
    adds r0, r5, #0
    adds r0, #0x38
    movs r2, #0
    ldr r1, _0802BEBC @ =0xFFFE5556
    b _0802BEC6
    .align 2, 0
_0802BEBC: .4byte 0xFFFE5556
_0802BEC0:
    adds r0, r5, #0
    adds r0, #0x38
    ldr r1, _0802BEF8 @ =0x0001AAAA
_0802BEC6:
    str r2, [r0, #0xc]
    str r1, [r0, #0x10]
_0802BECA:
    str r2, [r0, #0x18]
_0802BECC:
    adds r0, r5, #0
    adds r0, #0x34
    movs r4, #1
    strb r4, [r0]
    adds r0, #0x24
    strb r4, [r0]
    adds r0, r5, #0
    bl func_0802BC48
    adds r1, r0, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    adds r0, r5, #0
    bl func_080321B0
    adds r0, r5, #0
    adds r0, #0x54
    strb r4, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_0802BEF8: .4byte 0x0001AAAA

    thumb_func_start func_0802BEFC
func_0802BEFC: @ 0x0802BEFC
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x34
    movs r0, #2
    strb r0, [r1]
    adds r0, r4, #0
    adds r0, #0x58
    movs r5, #1
    strb r5, [r0]
    adds r0, r4, #0
    bl func_0802BC48
    adds r1, r0, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    adds r0, r4, #0
    bl func_080321B0
    adds r4, #0x54
    strb r5, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_0802BF2C
func_0802BF2C: @ 0x0802BF2C
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #0x14
    mov r8, r0
    adds r4, r1, #0
    ldr r3, _0802BF94 @ =0x080F1224
    movs r0, #3
    str r0, [sp]
    movs r5, #1
    str r5, [sp, #4]
    movs r6, #0
    str r6, [sp, #8]
    str r6, [sp, #0xc]
    add r0, sp, #0x10
    strb r5, [r0]
    mov r0, r8
    movs r2, #6
    bl func_08032560
    ldr r0, _0802BF98 @ =vtable_unk_080E6644
    mov r1, r8
    str r0, [r1, #4]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    ldr r3, [r4]
    mov r0, r8
    adds r0, #0x8c
    movs r2, #2
    str r2, [sp]
    str r5, [sp, #4]
    add r2, sp, #8
    strb r6, [r2]
    movs r2, #0
    bl func_080A4A00
    mov r1, r8
    adds r1, #0xcc
    ldr r0, _0802BF9C @ =0x0000FFFF
    strh r0, [r1]
    mov r0, r8
    add sp, #0x14
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_0802BF94: .4byte 0x080F1224
_0802BF98: .4byte vtable_unk_080E6644
_0802BF9C: .4byte 0x0000FFFF

    thumb_func_start func_0802BFA0
func_0802BFA0: @ 0x0802BFA0
    push {r4, lr}
    adds r4, r0, #0
    bl func_0803260C
    ldr r0, [r4]
    adds r0, #0x38
    movs r1, #0
    ldrb r0, [r0]
    cmp r0, #1
    bne _0802BFB6
    movs r1, #1
_0802BFB6:
    cmp r1, #0
    beq _0802BFDE
    adds r1, r4, #0
    adds r1, #0xcb
    ldrb r0, [r1]
    cmp r0, #0
    bne _0802BFDA
    adds r0, r4, #0
    adds r0, #0xb4
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _0802BFDE
    adds r1, r4, #0
    adds r1, #0xc8
    movs r0, #1
    b _0802BFDC
_0802BFDA:
    movs r0, #0
_0802BFDC:
    strb r0, [r1]
_0802BFDE:
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_0802BFE4
func_0802BFE4: @ 0x0802BFE4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x6c
    adds r6, r0, #0
    mov r8, r1
    ldr r4, [r6]
    ldrh r0, [r4, #4]
    str r0, [sp, #0x44]
    ldr r1, [r4]
    mov sb, r1
    adds r0, r6, #0
    adds r0, #0x44
    ldrb r0, [r0]
    str r0, [sp, #0x48]
    ldr r2, [r4, #8]
    str r2, [sp, #0x68]
    asrs r1, r2, #0x10
    ldr r0, [r4, #0xc]
    str r0, [sp, #0x4c]
    asrs r2, r0, #0x10
    add r5, sp, #0x34
    mov r3, r8
    ldr r0, [r3]
    ldr r3, [r3, #8]
    str r0, [sp, #0x34]
    str r3, [r5, #4]
    ldr r0, [sp, #0x44]
    bl func_08032900
    str r0, [sp, #0x50]
    adds r0, r6, #0
    adds r0, #0x8b
    add r7, sp, #0x50
    ldrb r7, [r7]
    strb r7, [r0]
    adds r4, #0x38
    mov sl, r4
    movs r1, #0
    ldrb r0, [r4]
    cmp r0, #1
    bne _0802C03E
    movs r1, #1
_0802C03E:
    cmp r1, #0
    bne _0802C044
    b _0802C18C
_0802C044:
    mov r1, sl
    ldr r0, [r1, #4]
    ldr r2, [sp, #0x68]
    adds r0, r2, r0
    asrs r0, r0, #0x10
    mov r3, r8
    movs r7, #0xc
    ldrsh r1, [r3, r7]
    subs r0, r0, r1
    str r0, [sp, #0x54]
    mov r1, sl
    ldr r0, [r1, #8]
    ldr r2, [sp, #0x4c]
    adds r4, r2, r0
    asrs r1, r4, #0x10
    movs r7, #0xe
    ldrsh r0, [r3, r7]
    subs r7, r1, r0
    movs r0, #0x80
    lsls r0, r0, #8
    subs r0, r0, r1
    str r0, [sp, #0x58]
    movs r1, #0
    mov r2, sl
    ldrb r0, [r2, #1]
    cmp r0, #1
    bne _0802C07C
    movs r1, #1
_0802C07C:
    cmp r1, #0
    beq _0802C09C
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x58]
    mov r0, sb
    bl _call_via_r1
    mov r2, r8
    ldr r1, [r2, #8]
    movs r2, #0
    str r2, [sp]
    ldr r2, [sp, #0x54]
    adds r3, r7, #0
    bl func_0803AE58
_0802C09C:
    mov r3, sl
    ldr r0, [r3, #0x14]
    subs r0, r4, r0
    asrs r0, r0, #0x10
    mov r7, r8
    movs r2, #0xe
    ldrsh r1, [r7, r2]
    subs r0, r0, r1
    str r0, [sp, #0x5c]
    ldr r3, [sp, #0x44]
    cmp r3, #8
    bgt _0802C0C0
    movs r0, #1
    ldr r7, [sp, #0x50]
    cmp r7, #1
    beq _0802C0C2
    movs r0, #2
    b _0802C0C2
_0802C0C0:
    movs r0, #1
_0802C0C2:
    adds r5, r6, #0
    adds r5, #0x8c
    mov r1, sp
    adds r1, #0x34
    str r1, [sp, #0x60]
    lsls r4, r0, #2
    orrs r4, r0
    lsls r1, r0, #4
    orrs r4, r1
    lsls r0, r0, #6
    orrs r4, r0
    adds r0, r6, #0
    adds r0, #0xb4
    ldr r1, [r0]
    ldr r3, [r1]
    ldrh r2, [r0, #0xc]
    adds r0, #4
    lsls r2, r2, #2
    ldr r0, [r0]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    ldr r2, [sp, #0x60]
    ldr r2, [r2, #4]
    mov ip, r2
    ldr r2, [r5]
    adds r0, r6, #0
    adds r0, #0x90
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _0802C134
    ldrh r0, [r5, #0xc]
    adds r1, r6, #0
    adds r1, #0x9c
    ldr r3, [sp, #0x58]
    str r3, [sp]
    adds r3, r7, #0
    str r3, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    mov r0, ip
    ldr r1, [sp, #0x54]
    ldr r2, [sp, #0x5c]
    adds r3, r4, #0
    ldr r4, _0802C130 @ =func_030004DC
    bl _call_via_r4
    b _0802C136
    .align 2, 0
_0802C130: .4byte func_030004DC
_0802C134:
    movs r0, #0
_0802C136:
    cmp r0, #0
    beq _0802C18C
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    str r0, [sp, #0x64]
    cmp r1, #0
    beq _0802C18C
    ldr r0, [sp, #0x60]
    ldr r1, [r0]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _0802C16C
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    b _0802C186
_0802C16C:
    adds r4, r5, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _0802C186
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_0802C186:
    movs r0, #0
    ldr r1, [sp, #0x64]
    strb r0, [r1]
_0802C18C:
    adds r0, r6, #0
    mov r1, r8
    bl func_08032690
    ldr r2, [sp, #0x48]
    cmp r2, #0
    beq _0802C1FC
    movs r1, #0
    mov r3, sl
    ldrb r0, [r3]
    cmp r0, #1
    bne _0802C1A6
    movs r1, #1
_0802C1A6:
    cmp r1, #0
    bne _0802C1FC
    adds r5, r6, #0
    adds r5, #0xcc
    ldrh r1, [r5]
    ldr r0, _0802C20C @ =0x0000FFFF
    cmp r1, r0
    beq _0802C1FC
    mov r7, sb
    ldr r0, [r7]
    ldr r1, [r0, #0x64]
    mov r0, sb
    bl _call_via_r1
    adds r4, r0, #0
    ldrh r2, [r5]
    ldr r5, [r4]
    add r0, sp, #0x3c
    ldr r3, [r5, #0xc]
    adds r1, r4, #0
    bl _call_via_r3
    ldr r0, [sp, #0x3c]
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r5, #0x10]
    adds r1, r4, #0
    bl _call_via_r3
    ldr r0, [r7]
    ldr r2, [r0, #0x48]
    mov r0, sb
    movs r1, #2
    bl _call_via_r2
    adds r2, r0, #0
    ldr r0, [r7]
    ldr r1, [sp, #0x24]
    ldr r4, [r0, #0x54]
    mov r0, sb
    movs r3, #1
    bl _call_via_r4
_0802C1FC:
    add sp, #0x6c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0802C20C: .4byte 0x0000FFFF

    thumb_func_start func_0802C210
func_0802C210: @ 0x0802C210
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x5c
    bl __builtin_new
    adds r1, r4, #0
    bl func_0802B9C0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_0802C228:
    .byte 0x30, 0xB5, 0x05, 0x1C, 0x0C, 0x1C, 0x28, 0x68
    .byte 0x00, 0x68, 0x01, 0x68, 0x49, 0x6E, 0xA7, 0xF0, 0x6B, 0xFB, 0x01, 0x1C, 0x28, 0x1C, 0xB4, 0x30
    .byte 0x22, 0x1C, 0x32, 0xF0, 0x05, 0xFB, 0x28, 0x1C, 0xC8, 0x30, 0x00, 0x22, 0x01, 0x21, 0x01, 0x70
    .byte 0x02, 0x30, 0x02, 0x70, 0x01, 0x30, 0x01, 0x70, 0x01, 0x30, 0x04, 0x80, 0x30, 0xBC, 0x01, 0xBC
    .byte 0x00, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x05, 0x1C, 0x0C, 0x1C, 0x28, 0x68, 0x00, 0x68, 0x01, 0x68
    .byte 0x89, 0x6E, 0xA7, 0xF0, 0x4D, 0xFB, 0x01, 0x1C, 0x28, 0x1C, 0xB4, 0x30, 0x22, 0x1C, 0x32, 0xF0
    .byte 0xE7, 0xFA, 0x28, 0x1C, 0xC8, 0x30, 0x00, 0x22, 0x01, 0x21, 0x01, 0x70, 0x02, 0x30, 0x02, 0x70
    .byte 0x01, 0x30, 0x01, 0x70, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x05, 0x1C
    .byte 0x0C, 0x1C, 0x28, 0x68, 0x00, 0x68, 0x01, 0x68, 0x49, 0x6E, 0xA7, 0xF0, 0x31, 0xFB, 0x01, 0x1C
    .byte 0x28, 0x1C, 0xB4, 0x30, 0x22, 0x1C, 0x32, 0xF0, 0xCB, 0xFA, 0x28, 0x1C, 0xC8, 0x30, 0x00, 0x22
    .byte 0x01, 0x21, 0x01, 0x70, 0x02, 0x30, 0x02, 0x70, 0x01, 0x30, 0x01, 0x70, 0x30, 0xBC, 0x01, 0xBC
    .byte 0x00, 0x47, 0x00, 0x00, 0x54, 0x30, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00

    thumb_func_start func_0802C2DC
func_0802C2DC: @ 0x0802C2DC
    bx lr
    .align 2, 0

    thumb_func_start func_0802C2E0
func_0802C2E0: @ 0x0802C2E0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    mov r8, r0
    mov r1, r8
    adds r1, #0x3c
    movs r0, #9
    strb r0, [r1]
    movs r5, #0
    mov r0, r8
    adds r0, #0x3f
    ldrb r0, [r0]
    cmp r0, #0xd
    bls _0802C2FE
    b _0802C840
_0802C2FE:
    lsls r0, r0, #2
    ldr r1, _0802C308 @ =_0802C30C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802C308: .4byte _0802C30C
_0802C30C: @ jump table
    .4byte _0802C3BC @ case 0
    .4byte _0802C3BC @ case 1
    .4byte _0802C440 @ case 2
    .4byte _0802C3BC @ case 3
    .4byte _0802C3BC @ case 4
    .4byte _0802C344 @ case 5
    .4byte _0802C4E4 @ case 6
    .4byte _0802C554 @ case 7
    .4byte _0802C5A4 @ case 8
    .4byte _0802C5EE @ case 9
    .4byte _0802C682 @ case 10
    .4byte _0802C6D4 @ case 11
    .4byte _0802C76A @ case 12
    .4byte _0802C7B0 @ case 13
_0802C344:
    mov r0, r8
    movs r1, #0xa2
    movs r2, #1
    bl func_0802A4C0
    mov r2, r8
    adds r2, #0x88
    movs r4, #0
    movs r0, #0x80
    lsls r0, r0, #0xd
    str r4, [r2, #4]
    str r4, [r2, #8]
    str r0, [r2, #0x14]
    mov r0, r8
    adds r0, #0x20
    ldrb r3, [r0]
    cmp r3, #1
    beq _0802C39C
    cmp r3, #1
    bgt _0802C372
    cmp r3, #0
    beq _0802C3B0
    b _0802C3BC
_0802C372:
    cmp r3, #2
    beq _0802C37C
    cmp r3, #3
    beq _0802C38C
    b _0802C3BC
_0802C37C:
    ldr r0, _0802C388 @ =0xFFFE4925
    movs r1, #0xa0
    lsls r1, r1, #0xa
    str r0, [r2, #0xc]
    str r4, [r2, #0x10]
    b _0802C3BA
    .align 2, 0
_0802C388: .4byte 0xFFFE4925
_0802C38C:
    ldr r0, _0802C398 @ =0x0001B6DB
    movs r1, #0xa0
    lsls r1, r1, #0xa
    str r0, [r2, #0xc]
    str r4, [r2, #0x10]
    b _0802C3BA
    .align 2, 0
_0802C398: .4byte 0x0001B6DB
_0802C39C:
    ldr r0, _0802C3A8 @ =0xFFFE4925
    movs r1, #0xa0
    lsls r1, r1, #0xa
    str r4, [r2, #0xc]
    b _0802C3B8
    .align 2, 0
_0802C3A8: .4byte 0xFFFE4925
_0802C3AC:
    ldr r2, [r6]
    b _0802C40C
_0802C3B0:
    ldr r0, _0802C434 @ =0x0001B6DB
    movs r1, #0xa0
    lsls r1, r1, #0xa
    str r3, [r2, #0xc]
_0802C3B8:
    str r0, [r2, #0x10]
_0802C3BA:
    str r1, [r2, #0x18]
_0802C3BC:
    ldr r2, _0802C438 @ =0x080F1020
    mov r5, r8
    adds r5, #0x40
    mov r4, r8
    adds r4, #0x3f
    ldrb r1, [r4]
    lsls r0, r1, #3
    subs r0, r0, r1
    ldrb r1, [r5]
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, r0, r2
    ldrh r1, [r0]
    mov r0, r8
    adds r0, #0x44
    strh r1, [r0]
    mov r2, r8
    ldr r0, [r2]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r6, [r0]
    ldr r7, [r0, #4]
    cmp r6, r7
    beq _0802C408
_0802C3F6:
    ldr r0, [r6]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C3AC
    adds r6, #4
    cmp r6, r7
    bne _0802C3F6
_0802C408:
    subs r0, r7, #4
    ldr r2, [r0]
_0802C40C:
    ldr r6, _0802C438 @ =0x080F1020
    ldrb r1, [r4]
    lsls r0, r1, #3
    subs r0, r0, r1
    ldrb r1, [r5]
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, r0, r6
    ldrh r1, [r0, #2]
    adds r0, r2, #0
    bl func_08008B6C
    mov r0, r8
    bl func_08025944
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C4B4
    b _0802C4CC
    .align 2, 0
_0802C434: .4byte 0x0001B6DB
_0802C438: .4byte 0x080F1020
_0802C43C:
    ldr r2, [r6]
    b _0802C490
_0802C440:
    ldr r2, _0802C4C8 @ =0x080F1020
    mov r5, r8
    adds r5, #0x40
    mov r4, r8
    adds r4, #0x3f
    ldrb r1, [r4]
    lsls r0, r1, #3
    subs r0, r0, r1
    ldrb r1, [r5]
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, r0, r2
    ldrh r1, [r0]
    mov r0, r8
    adds r0, #0x44
    strh r1, [r0]
    mov r2, r8
    ldr r0, [r2]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r6, [r0]
    ldr r7, [r0, #4]
    cmp r6, r7
    beq _0802C48C
_0802C47A:
    ldr r0, [r6]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C43C
    adds r6, #4
    cmp r6, r7
    bne _0802C47A
_0802C48C:
    subs r0, r7, #4
    ldr r2, [r0]
_0802C490:
    ldr r6, _0802C4C8 @ =0x080F1020
    ldrb r1, [r4]
    lsls r0, r1, #3
    subs r0, r0, r1
    ldrb r1, [r5]
    adds r0, r0, r1
    lsls r0, r0, #3
    adds r0, r0, r6
    ldrh r1, [r0, #2]
    adds r0, r2, #0
    bl func_08008B6C
    mov r0, r8
    bl func_08025944
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802C4CC
_0802C4B4:
    ldrb r1, [r4]
    lsls r0, r1, #3
    subs r0, r0, r1
    ldrb r5, [r5]
    adds r0, r0, r5
    lsls r0, r0, #3
    adds r0, r0, r6
    movs r5, #4
    ldrsb r5, [r0, r5]
    b _0802C840
    .align 2, 0
_0802C4C8: .4byte 0x080F1020
_0802C4CC:
    ldrb r1, [r4]
    lsls r0, r1, #3
    subs r0, r0, r1
    ldrb r5, [r5]
    adds r0, r0, r5
    lsls r0, r0, #3
    adds r0, r0, r6
    movs r5, #5
    ldrsb r5, [r0, r5]
    b _0802C840
_0802C4E0:
    ldr r0, [r4]
    b _0802C522
_0802C4E4:
    mov r1, r8
    adds r1, #0x44
    movs r0, #0xd7
    lsls r0, r0, #1
    strh r0, [r1]
    mov r2, r8
    ldr r0, [r2]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    mov r6, r8
    adds r6, #0xb2
    cmp r4, r5
    beq _0802C51E
_0802C50C:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C4E0
    adds r4, #4
    cmp r4, r5
    bne _0802C50C
_0802C51E:
    subs r0, r5, #4
    ldr r0, [r0]
_0802C522:
    movs r1, #0x9d
    bl func_08008B6C
    ldr r0, _0802C54C @ =0x080F1184
_0802C52A:
    ldr r1, [r0]
    ldr r2, [r0, #4]
    mov r0, r8
    bl func_0802AC2C
    ldrb r3, [r6]
    movs r1, #0
    adds r0, r3, #0
    subs r0, #0x2b
    cmp r0, #0x1a
    bhi _0802C542
    movs r1, #1
_0802C542:
    cmp r1, #0
    beq _0802C548
    b _0802C812
_0802C548:
    b _0802C828
    .align 2, 0
_0802C54C: .4byte 0x080F1184
_0802C550:
    ldr r0, [r4]
    b _0802C592
_0802C554:
    mov r1, r8
    adds r1, #0x44
    movs r0, #0xdf
    lsls r0, r0, #1
    strh r0, [r1]
    mov r2, r8
    ldr r0, [r2]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    mov r6, r8
    adds r6, #0xb2
    cmp r4, r5
    beq _0802C58E
_0802C57C:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C550
    adds r4, #4
    cmp r4, r5
    bne _0802C57C
_0802C58E:
    subs r0, r5, #4
    ldr r0, [r0]
_0802C592:
    movs r1, #0x9d
    bl func_08008B6C
    ldr r0, _0802C59C @ =0x080F118C
    b _0802C52A
    .align 2, 0
_0802C59C: .4byte 0x080F118C
_0802C5A0:
    ldr r0, [r4]
    b _0802C5DE
_0802C5A4:
    mov r1, r8
    adds r1, #0x44
    movs r0, #0xdd
    lsls r0, r0, #1
    strh r0, [r1]
    mov r2, r8
    ldr r0, [r2]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802C5DA
_0802C5C8:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C5A0
    adds r4, #4
    cmp r4, r5
    bne _0802C5C8
_0802C5DA:
    subs r0, r5, #4
    ldr r0, [r0]
_0802C5DE:
    movs r1, #0x94
    bl func_08008B6C
_0802C5E4:
    movs r5, #2
    rsbs r5, r5, #0
    b _0802C840
_0802C5EA:
    ldr r0, [r4]
    b _0802C62C
_0802C5EE:
    mov r1, r8
    adds r1, #0x44
    movs r0, #0xd5
    lsls r0, r0, #1
    strh r0, [r1]
    mov r1, r8
    ldr r0, [r1]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    mov r6, r8
    adds r6, #0xb2
    cmp r4, r5
    beq _0802C628
_0802C616:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C5EA
    adds r4, #4
    cmp r4, r5
    bne _0802C616
_0802C628:
    subs r0, r5, #4
    ldr r0, [r0]
_0802C62C:
    movs r1, #0x93
    bl func_08008B6C
    ldr r0, _0802C664 @ =0x080F1194
    ldr r1, [r0]
    ldr r2, [r0, #4]
    mov r0, r8
    bl func_0802AC2C
    ldrb r3, [r6]
    movs r1, #0
    adds r0, r3, #0
    subs r0, #0x2b
    cmp r0, #0x1a
    bhi _0802C64C
    movs r1, #1
_0802C64C:
    cmp r1, #0
    beq _0802C668
    mov r1, r8
    ldr r0, [r1]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r3, #0
    bl _call_via_r2
    adds r1, r0, #0
    b _0802C66A
    .align 2, 0
_0802C664: .4byte 0x080F1194
_0802C668:
    movs r1, #0
_0802C66A:
    cmp r1, #0
    beq _0802C5E4
    ldr r0, [r1, #0x14]
    adds r0, #0x88
    ldr r2, [r0]
    adds r0, r1, #0
    movs r1, #0x3c
    bl _call_via_r2
    b _0802C5E4
_0802C67E:
    ldr r0, [r4]
    b _0802C6C0
_0802C682:
    mov r1, r8
    adds r1, #0x44
    movs r0, #0xdb
    lsls r0, r0, #1
    strh r0, [r1]
    mov r2, r8
    ldr r0, [r2]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    mov r6, r8
    adds r6, #0xb2
    cmp r4, r5
    beq _0802C6BC
_0802C6AA:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C67E
    adds r4, #4
    cmp r4, r5
    bne _0802C6AA
_0802C6BC:
    subs r0, r5, #4
    ldr r0, [r0]
_0802C6C0:
    movs r1, #0x9f
    bl func_08008B6C
    ldr r0, _0802C6CC @ =0x080F119C
    b _0802C52A
    .align 2, 0
_0802C6CC: .4byte 0x080F119C
_0802C6D0:
    ldr r0, [r4]
    b _0802C712
_0802C6D4:
    mov r1, r8
    adds r1, #0x44
    movs r0, #0xd9
    lsls r0, r0, #1
    strh r0, [r1]
    mov r2, r8
    ldr r0, [r2]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    mov r6, r8
    adds r6, #0xb2
    cmp r4, r5
    beq _0802C70E
_0802C6FC:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C6D0
    adds r4, #4
    cmp r4, r5
    bne _0802C6FC
_0802C70E:
    subs r0, r5, #4
    ldr r0, [r0]
_0802C712:
    movs r1, #0xa0
    bl func_08008B6C
    ldr r0, _0802C748 @ =0x080F11A4
    ldr r1, [r0]
    ldr r2, [r0, #4]
    mov r0, r8
    bl func_0802AC2C
    ldrb r3, [r6]
    movs r1, #0
    adds r0, r3, #0
    subs r0, #0x2b
    cmp r0, #0x1a
    bhi _0802C732
    movs r1, #1
_0802C732:
    cmp r1, #0
    beq _0802C74C
    mov r1, r8
    ldr r0, [r1]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r3, #0
    bl _call_via_r2
    adds r1, r0, #0
    b _0802C74E
    .align 2, 0
_0802C748: .4byte 0x080F11A4
_0802C74C:
    movs r1, #0
_0802C74E:
    cmp r1, #0
    beq _0802C760
    ldr r0, [r1, #0x14]
    adds r0, #0x88
    ldr r2, [r0]
    adds r0, r1, #0
    movs r1, #0x3c
    bl _call_via_r2
_0802C760:
    movs r5, #8
    rsbs r5, r5, #0
    b _0802C840
_0802C766:
    ldr r0, [r4]
    b _0802C7A4
_0802C76A:
    mov r1, r8
    adds r1, #0x44
    movs r0, #0xd3
    lsls r0, r0, #1
    strh r0, [r1]
    mov r2, r8
    ldr r0, [r2]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802C7A0
_0802C78E:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C766
    adds r4, #4
    cmp r4, r5
    bne _0802C78E
_0802C7A0:
    subs r0, r5, #4
    ldr r0, [r0]
_0802C7A4:
    movs r1, #0x9e
    bl func_08008B6C
    b _0802C83C
_0802C7AC:
    ldr r0, [r4]
    b _0802C7EE
_0802C7B0:
    mov r1, r8
    adds r1, #0x44
    movs r0, #0xd1
    lsls r0, r0, #1
    strh r0, [r1]
    mov r1, r8
    ldr r0, [r1]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    mov r6, r8
    adds r6, #0xb2
    cmp r4, r5
    beq _0802C7EA
_0802C7D8:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C7AC
    adds r4, #4
    cmp r4, r5
    bne _0802C7D8
_0802C7EA:
    subs r0, r5, #4
    ldr r0, [r0]
_0802C7EE:
    movs r1, #0x9d
    bl func_08008B6C
    ldr r0, _0802C824 @ =0x080F11AC
    ldr r1, [r0]
    ldr r2, [r0, #4]
    mov r0, r8
    bl func_0802AC2C
    ldrb r3, [r6]
    movs r1, #0
    adds r0, r3, #0
    subs r0, #0x2b
    cmp r0, #0x1a
    bhi _0802C80E
    movs r1, #1
_0802C80E:
    cmp r1, #0
    beq _0802C828
_0802C812:
    mov r1, r8
    ldr r0, [r1]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r3, #0
    bl _call_via_r2
    adds r1, r0, #0
    b _0802C82A
    .align 2, 0
_0802C824: .4byte 0x080F11AC
_0802C828:
    movs r1, #0
_0802C82A:
    cmp r1, #0
    beq _0802C83C
    ldr r0, [r1, #0x14]
    adds r0, #0x88
    ldr r2, [r0]
    adds r0, r1, #0
    movs r1, #0x3c
    bl _call_via_r2
_0802C83C:
    movs r5, #4
    rsbs r5, r5, #0
_0802C840:
    mov r2, r8
    ldr r4, [r2, #0x14]
    mov r0, r8
    bl func_08025B10
    adds r2, r0, #0
    ldr r3, [r4, #0x64]
    mov r0, r8
    adds r1, r5, #0
    bl _call_via_r3
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0802C860
func_0802C860: @ 0x0802C860
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0xa
    strb r0, [r1]
    adds r1, #1
    movs r0, #0x14
    strb r0, [r1]
    adds r0, r6, #0
    bl func_0802A510
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802C8A4
_0802C892:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C8E8
    adds r4, #4
    cmp r4, r5
    bne _0802C892
_0802C8A4:
    subs r0, r5, #4
    ldr r0, [r0]
_0802C8A8:
    movs r1, #0xbc
    bl func_08008B6C
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    bl GetId__C4Tool
    cmp r0, #0x4d
    bne _0802C8EC
    ldr r4, [r6, #0x14]
    movs r5, #2
    rsbs r5, r5, #0
    adds r0, r6, #0
    bl func_08025B10
    adds r2, r0, #0
    ldr r3, [r4, #0x64]
    adds r0, r6, #0
    adds r1, r5, #0
    bl _call_via_r3
    b _0802C900
_0802C8E8:
    ldr r0, [r4]
    b _0802C8A8
_0802C8EC:
    ldr r4, [r6, #0x14]
    adds r0, r6, #0
    bl func_08025B10
    adds r2, r0, #0
    ldr r3, [r4, #0x64]
    adds r0, r6, #0
    movs r1, #0
    bl _call_via_r3
_0802C900:
    add sp, #4
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_0802C908
func_0802C908: @ 0x0802C908
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r3, r4, #0
    adds r3, #0x41
    ldrb r0, [r3]
    cmp r0, #0
    beq _0802C97E
    adds r2, r4, #0
    adds r2, #0x40
    ldrb r1, [r2]
    subs r0, #1
    cmp r1, r0
    bge _0802C97E
    adds r1, r4, #0
    adds r1, #0x42
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #0x14
    bne _0802C97E
    movs r0, #0
    strb r0, [r1]
    ldrb r0, [r2]
    adds r0, #1
    strb r0, [r2]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #5
    bne _0802C97E
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802C974
_0802C95E:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802C96E
    ldr r0, [r4]
    b _0802C978
_0802C96E:
    adds r4, #4
    cmp r4, r5
    bne _0802C95E
_0802C974:
    subs r0, r5, #4
    ldr r0, [r0]
_0802C978:
    movs r1, #0xb8
    bl func_08008B6C
_0802C97E:
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_0802C984
func_0802C984: @ 0x0802C984
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    adds r6, r0, #0
    adds r0, #0x40
    movs r1, #0
    strb r1, [r0]
    adds r0, #2
    strb r1, [r0]
    ldr r0, [r6, #0x38]
    adds r0, #0x5c
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802C9AA
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #0xf
    b _0802CDC2
_0802C9AA:
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #0xc
    strb r1, [r0]
    bl GetId__C4Tool
    cmp r0, #0x50
    bls _0802C9CC
    b _0802CC8A
_0802C9CC:
    lsls r0, r0, #2
    ldr r1, _0802C9D8 @ =_0802C9DC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802C9D8: .4byte _0802C9DC
_0802C9DC: @ jump table
    .4byte _0802CB20 @ case 0
    .4byte _0802CB20 @ case 1
    .4byte _0802CB20 @ case 2
    .4byte _0802CB20 @ case 3
    .4byte _0802CB20 @ case 4
    .4byte _0802CB20 @ case 5
    .4byte _0802CB20 @ case 6
    .4byte _0802CB20 @ case 7
    .4byte _0802CB28 @ case 8
    .4byte _0802CB28 @ case 9
    .4byte _0802CB28 @ case 10
    .4byte _0802CB28 @ case 11
    .4byte _0802CB28 @ case 12
    .4byte _0802CB28 @ case 13
    .4byte _0802CB28 @ case 14
    .4byte _0802CB28 @ case 15
    .4byte _0802CB30 @ case 16
    .4byte _0802CB30 @ case 17
    .4byte _0802CB30 @ case 18
    .4byte _0802CB30 @ case 19
    .4byte _0802CB30 @ case 20
    .4byte _0802CB30 @ case 21
    .4byte _0802CB30 @ case 22
    .4byte _0802CB30 @ case 23
    .4byte _0802CB38 @ case 24
    .4byte _0802CB38 @ case 25
    .4byte _0802CB38 @ case 26
    .4byte _0802CB38 @ case 27
    .4byte _0802CB38 @ case 28
    .4byte _0802CB38 @ case 29
    .4byte _0802CB38 @ case 30
    .4byte _0802CB38 @ case 31
    .4byte _0802CB40 @ case 32
    .4byte _0802CB40 @ case 33
    .4byte _0802CB40 @ case 34
    .4byte _0802CB40 @ case 35
    .4byte _0802CB40 @ case 36
    .4byte _0802CB40 @ case 37
    .4byte _0802CB40 @ case 38
    .4byte _0802CB40 @ case 39
    .4byte _0802CC3A @ case 40
    .4byte _0802CC3A @ case 41
    .4byte _0802CC3A @ case 42
    .4byte _0802CC3A @ case 43
    .4byte _0802CC3A @ case 44
    .4byte _0802CC3A @ case 45
    .4byte _0802CC3A @ case 46
    .4byte _0802CC3A @ case 47
    .4byte _0802CC42 @ case 48
    .4byte _0802CC4A @ case 49
    .4byte _0802CC52 @ case 50
    .4byte _0802CC52 @ case 51
    .4byte _0802CC52 @ case 52
    .4byte _0802CC52 @ case 53
    .4byte _0802CC52 @ case 54
    .4byte _0802CC52 @ case 55
    .4byte _0802CC52 @ case 56
    .4byte _0802CC52 @ case 57
    .4byte _0802CC52 @ case 58
    .4byte _0802CC52 @ case 59
    .4byte _0802CC52 @ case 60
    .4byte _0802CC52 @ case 61
    .4byte _0802CC52 @ case 62
    .4byte _0802CC52 @ case 63
    .4byte _0802CC52 @ case 64
    .4byte _0802CC52 @ case 65
    .4byte _0802CC52 @ case 66
    .4byte _0802CC52 @ case 67
    .4byte _0802CC52 @ case 68
    .4byte _0802CC52 @ case 69
    .4byte _0802CC5A @ case 70
    .4byte _0802CC62 @ case 71
    .4byte _0802CC6A @ case 72
    .4byte _0802CC72 @ case 73
    .4byte _0802CC7A @ case 74
    .4byte _0802CC82 @ case 75
    .4byte _0802CC82 @ case 76
    .4byte _0802CC82 @ case 77
    .4byte _0802CC82 @ case 78
    .4byte _0802CC82 @ case 79
    .4byte _0802CC82 @ case 80
_0802CB20:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #0
    b _0802CC90
_0802CB28:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #3
    b _0802CC90
_0802CB30:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #1
    b _0802CC90
_0802CB38:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #4
    b _0802CC90
_0802CB40:
    movs r0, #0xa
    ldrsh r5, [r6, r0]
    movs r1, #0xe
    ldrsh r4, [r6, r1]
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    adds r1, r0, #0
    cmp r0, #1
    beq _0802CB68
    cmp r0, #1
    bgt _0802CB5E
    cmp r0, #0
    beq _0802CB6C
    b _0802CB76
_0802CB5E:
    cmp r1, #2
    beq _0802CB70
    cmp r1, #3
    beq _0802CB74
    b _0802CB76
_0802CB68:
    subs r4, #0x10
    b _0802CB76
_0802CB6C:
    adds r4, #0x10
    b _0802CB76
_0802CB70:
    subs r5, #0x10
    b _0802CB76
_0802CB74:
    adds r5, #0x10
_0802CB76:
    ldrh r2, [r6, #4]
    ldr r7, [r6]
    ldr r1, [r7]
    mov r0, sp
    ldr r3, [r1, #0x34]
    adds r1, r7, #0
    bl _call_via_r3
    mov r1, sp
    asrs r5, r5, #3
    asrs r3, r4, #3
    ldr r2, [sp]
    ldrh r0, [r1, #8]
    cmp r2, #0
    beq _0802CBB6
    cmp r5, r0
    bhi _0802CBB6
    ldrh r1, [r1, #0xa]
    cmp r3, r1
    bhi _0802CBB6
    ldr r1, [sp, #4]
    muls r0, r3, r0
    adds r0, r0, r5
    cmp r1, #0
    beq _0802CBAC
    adds r0, r1, r0
    ldrb r0, [r0]
_0802CBAC:
    lsls r0, r0, #2
    adds r0, r2, r0
    b _0802CBB8
_0802CBB2:
    ldr r0, [r4]
    b _0802CC18
_0802CBB6:
    movs r0, #0
_0802CBB8:
    cmp r0, #0
    beq _0802CC20
    ldr r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _0802CC20
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0x1b
    strb r0, [r1]
    adds r1, #3
    movs r0, #0xf
    strb r0, [r1]
    ldr r4, [r6, #0x14]
    movs r5, #2
    rsbs r5, r5, #0
    adds r0, r6, #0
    bl func_08025B10
    adds r2, r0, #0
    ldr r3, [r4, #0x64]
    adds r0, r6, #0
    adds r1, r5, #0
    bl _call_via_r3
    ldr r0, [r7]
    movs r1, #0xa6
    lsls r1, r1, #1
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r7, #0
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802CC14
_0802CC02:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802CBB2
    adds r4, #4
    cmp r4, r5
    bne _0802CC02
_0802CC14:
    subs r0, r5, #4
    ldr r0, [r0]
_0802CC18:
    movs r1, #0x92
    bl func_08008B6C
    b _0802CDC4
_0802CC20:
    ldr r0, [r6, #0x38]
    bl func_0800E94C
    cmp r0, #0
    beq _0802CC32
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #2
    b _0802CC90
_0802CC32:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #0xf
    b _0802CDC2
_0802CC3A:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #5
    b _0802CC90
_0802CC42:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #6
    b _0802CC90
_0802CC4A:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #7
    b _0802CC90
_0802CC52:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #8
    b _0802CC90
_0802CC5A:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #9
    b _0802CC90
_0802CC62:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #0xa
    b _0802CC90
_0802CC6A:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #0xb
    b _0802CC90
_0802CC72:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #0xc
    b _0802CC90
_0802CC7A:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #0xd
    b _0802CC90
_0802CC82:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #0xe
    b _0802CC90
_0802CC8A:
    adds r1, r6, #0
    adds r1, #0x3f
    movs r0, #0xf
_0802CC90:
    strb r0, [r1]
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #0xd
    strb r1, [r0]
    bl GetId__C4Tool
    cmp r0, #0x2f
    bls _0802CCB6
    b _0802CDBC
_0802CCB6:
    lsls r0, r0, #2
    ldr r1, _0802CCC0 @ =_0802CCC4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802CCC0: .4byte _0802CCC4
_0802CCC4: @ jump table
    .4byte _0802CD84 @ case 0
    .4byte _0802CD8C @ case 1
    .4byte _0802CD94 @ case 2
    .4byte _0802CD9C @ case 3
    .4byte _0802CDA4 @ case 4
    .4byte _0802CDAC @ case 5
    .4byte _0802CDAC @ case 6
    .4byte _0802CDB4 @ case 7
    .4byte _0802CD84 @ case 8
    .4byte _0802CD8C @ case 9
    .4byte _0802CD94 @ case 10
    .4byte _0802CD9C @ case 11
    .4byte _0802CDA4 @ case 12
    .4byte _0802CDAC @ case 13
    .4byte _0802CDAC @ case 14
    .4byte _0802CDB4 @ case 15
    .4byte _0802CD84 @ case 16
    .4byte _0802CD8C @ case 17
    .4byte _0802CD94 @ case 18
    .4byte _0802CD9C @ case 19
    .4byte _0802CDA4 @ case 20
    .4byte _0802CDAC @ case 21
    .4byte _0802CDAC @ case 22
    .4byte _0802CDB4 @ case 23
    .4byte _0802CD84 @ case 24
    .4byte _0802CD8C @ case 25
    .4byte _0802CD94 @ case 26
    .4byte _0802CD9C @ case 27
    .4byte _0802CDA4 @ case 28
    .4byte _0802CDAC @ case 29
    .4byte _0802CDAC @ case 30
    .4byte _0802CDB4 @ case 31
    .4byte _0802CD84 @ case 32
    .4byte _0802CD8C @ case 33
    .4byte _0802CD94 @ case 34
    .4byte _0802CD9C @ case 35
    .4byte _0802CDA4 @ case 36
    .4byte _0802CDAC @ case 37
    .4byte _0802CDAC @ case 38
    .4byte _0802CDB4 @ case 39
    .4byte _0802CD84 @ case 40
    .4byte _0802CD8C @ case 41
    .4byte _0802CD94 @ case 42
    .4byte _0802CD9C @ case 43
    .4byte _0802CDA4 @ case 44
    .4byte _0802CDAC @ case 45
    .4byte _0802CDAC @ case 46
    .4byte _0802CDB4 @ case 47
_0802CD84:
    adds r1, r6, #0
    adds r1, #0x41
    movs r0, #1
    b _0802CDC2
_0802CD8C:
    adds r1, r6, #0
    adds r1, #0x41
    movs r0, #2
    b _0802CDC2
_0802CD94:
    adds r1, r6, #0
    adds r1, #0x41
    movs r0, #3
    b _0802CDC2
_0802CD9C:
    adds r1, r6, #0
    adds r1, #0x41
    movs r0, #4
    b _0802CDC2
_0802CDA4:
    adds r1, r6, #0
    adds r1, #0x41
    movs r0, #5
    b _0802CDC2
_0802CDAC:
    adds r1, r6, #0
    adds r1, #0x41
    movs r0, #6
    b _0802CDC2
_0802CDB4:
    adds r1, r6, #0
    adds r1, #0x41
    movs r0, #7
    b _0802CDC2
_0802CDBC:
    adds r1, r6, #0
    adds r1, #0x41
    movs r0, #0
_0802CDC2:
    strb r0, [r1]
_0802CDC4:
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0802CDCC
func_0802CDCC: @ 0x0802CDCC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x80
    adds r7, r0, #0
    adds r1, r7, #0
    adds r1, #0xb3
    ldrb r0, [r1]
    cmp r0, #0
    beq _0802CE22
    subs r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802CE14
    movs r4, #0x2b
_0802CDF0:
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r4, #0
    bl _call_via_r2
    adds r2, r0, #0
    cmp r2, #0
    beq _0802CE0C
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x40]
    adds r0, r2, #0
    bl _call_via_r1
_0802CE0C:
    adds r4, #1
    cmp r4, #0x45
    bls _0802CDF0
    b _0802CE30
_0802CE14:
    adds r1, r7, #0
    adds r1, #0xb4
    ldrb r0, [r1]
    cmp r0, #0x59
    bhi _0802CE30
    adds r0, #1
    b _0802CE2E
_0802CE22:
    adds r1, r7, #0
    adds r1, #0xb4
    ldrb r0, [r1]
    cmp r0, #0
    beq _0802CE30
    subs r0, #1
_0802CE2E:
    strb r0, [r1]
_0802CE30:
    ldr r0, [r7]
    str r0, [sp, #0x54]
    ldrh r1, [r7, #4]
    str r1, [sp, #0x58]
    ldr r0, [r7, #0x18]
    cmp r0, #0
    bne _0802CE46
    ldr r1, [r7, #0x1c]
    cmp r1, #0
    bne _0802CE46
    b _0802CFEA
_0802CE46:
    adds r0, r7, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    cmp r0, #0x2c
    bne _0802CE52
    b _0802CFEA
_0802CE52:
    cmp r0, #0x35
    bne _0802CE58
    b _0802CFEA
_0802CE58:
    ldr r1, [r7, #0x14]
    add r0, sp, #0xc
    ldr r2, [r1, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    ldr r0, [sp, #0xc]
    ldr r1, [sp, #0x10]
    str r0, [sp, #0x14]
    str r1, [sp, #0x18]
    add r2, sp, #0x14
    mov sb, r2
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x40]
    adds r0, r7, #0
    bl _call_via_r1
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp, #0x5c]
    adds r0, r7, #0
    adds r0, #0x20
    ldrb r0, [r0]
    str r0, [sp, #0x60]
    adds r0, r7, #0
    adds r0, #0xb4
    ldrb r0, [r0]
    str r0, [sp, #0x64]
    movs r4, #0x1a
    ldrsh r3, [r7, r4]
    movs r5, #0x1e
    ldrsh r4, [r7, r5]
    mov r6, sb
    movs r1, #0
    ldrsh r0, [r6, r1]
    movs r5, #2
    ldrsh r2, [r6, r5]
    movs r1, #4
    ldrsh r5, [r6, r1]
    movs r1, #6
    ldrsh r6, [r6, r1]
    mov r8, r6
    add r1, sp, #0x1c
    adds r0, r3, r0
    strh r0, [r1]
    adds r2, r4, r2
    strh r2, [r1, #2]
    adds r3, r3, r5
    strh r3, [r1, #4]
    add r4, r8
    strh r4, [r1, #6]
    ldr r0, [sp, #0x1c]
    ldr r1, [sp, #0x20]
    str r0, [sp, #0x24]
    str r1, [sp, #0x28]
    add r2, sp, #0x24
    mov sl, r2
    adds r0, r7, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #2
    beq _0802CEE8
    movs r3, #0x3c
    str r3, [sp, #0x68]
    ldr r4, _0802CEE4 @ =0x080F0E88
    str r4, [sp, #0x6c]
    b _0802CEF0
    .align 2, 0
_0802CEE4: .4byte 0x080F0E88
_0802CEE8:
    movs r5, #0x15
    str r5, [sp, #0x68]
    ldr r6, _0802D010 @ =0x080F0F78
    str r6, [sp, #0x6c]
_0802CEF0:
    movs r0, #0
    str r0, [sp, #0x70]
    ldr r1, [sp, #0x68]
    cmp r0, r1
    bhs _0802CFEA
    add r2, sp, #0x34
    mov r8, r2
_0802CEFE:
    ldr r3, [sp, #0x70]
    lsls r0, r3, #2
    ldr r4, [sp, #0x6c]
    adds r0, r0, r4
    ldr r0, [r0]
    str r0, [sp, #0x74]
    ldr r5, [sp, #0x54]
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    ldr r1, [sp, #0x74]
    bl _call_via_r2
    adds r3, r0, #0
    str r3, [sp, #0x78]
    cmp r3, #0
    beq _0802CFDE
    ldrh r0, [r3, #4]
    ldr r6, [sp, #0x58]
    cmp r0, r6
    bne _0802CFDE
    ldr r1, [r3, #0x14]
    add r0, sp, #0x2c
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    ldr r0, [sp, #0x2c]
    ldr r1, [sp, #0x30]
    str r0, [sp, #0x34]
    str r1, [sp, #0x38]
    mov r0, r8
    movs r1, #0
    ldrsh r0, [r0, r1]
    mov ip, r0
    mov r2, sb
    movs r3, #4
    ldrsh r1, [r2, r3]
    subs r1, r0, r1
    movs r4, #0
    ldrsh r0, [r2, r4]
    mov r5, r8
    movs r6, #4
    ldrsh r4, [r5, r6]
    subs r0, r0, r4
    ands r1, r0
    movs r2, #2
    ldrsh r0, [r5, r2]
    str r0, [sp, #0x7c]
    mov r3, sb
    movs r5, #6
    ldrsh r0, [r3, r5]
    ldr r6, [sp, #0x7c]
    subs r0, r6, r0
    ands r1, r0
    movs r2, #2
    ldrsh r0, [r3, r2]
    mov r5, r8
    movs r6, #6
    ldrsh r3, [r5, r6]
    subs r0, r0, r3
    ands r1, r0
    lsrs r2, r1, #0x1f
    cmp r2, #0
    bne _0802CFDE
    mov r0, sl
    movs r5, #4
    ldrsh r1, [r0, r5]
    mov r6, ip
    subs r1, r6, r1
    movs r5, #0
    ldrsh r0, [r0, r5]
    subs r0, r0, r4
    ands r1, r0
    mov r6, sl
    movs r4, #6
    ldrsh r0, [r6, r4]
    ldr r5, [sp, #0x7c]
    subs r0, r5, r0
    ands r1, r0
    movs r4, #2
    ldrsh r0, [r6, r4]
    subs r0, r0, r3
    ands r1, r0
    cmp r1, #0
    bge _0802CFDE
    str r2, [r7, #0x18]
    str r2, [r7, #0x1c]
    ldr r5, [sp, #0x5c]
    cmp r5, #0
    beq _0802CFDE
    movs r1, #0
    ldr r0, [sp, #0x74]
    subs r0, #0x2b
    cmp r0, #0x1a
    bhi _0802CFC0
    movs r1, #1
_0802CFC0:
    cmp r1, #0
    beq _0802CFDE
    ldr r6, [sp, #0x78]
    ldr r0, [r6, #0x14]
    adds r0, #0x84
    ldr r3, [r0]
    adds r0, r6, #0
    ldr r1, [sp, #0x60]
    ldr r2, [sp, #0x64]
    bl _call_via_r3
    adds r1, r7, #0
    adds r1, #0xb3
    movs r0, #8
    strb r0, [r1]
_0802CFDE:
    ldr r0, [sp, #0x70]
    adds r0, #1
    str r0, [sp, #0x70]
    ldr r1, [sp, #0x68]
    cmp r0, r1
    blo _0802CEFE
_0802CFEA:
    ldr r0, [r7, #0x18]
    ldr r1, [r7, #0x1c]
    cmp r0, #0
    bne _0802CFF8
    cmp r1, #0
    bne _0802CFF8
    b _0802D148
_0802CFF8:
    ldr r5, [r7, #8]
    ldr r6, [r7, #0xc]
    adds r0, r0, r5
    mov r8, r0
    adds r1, r1, r6
    mov sb, r1
    cmp r0, #0
    bge _0802D014
    movs r2, #0
    mov r8, r2
    b _0802D02A
    .align 2, 0
_0802D010: .4byte 0x080F0F78
_0802D014:
    ldr r3, [sp, #0x54]
    ldr r0, [r3]
    ldr r2, [r0, #0x2c]
    adds r0, r3, #0
    ldr r1, [sp, #0x58]
    bl _call_via_r2
    lsls r0, r0, #0x10
    cmp r8, r0
    ble _0802D02A
    mov r8, r0
_0802D02A:
    mov r4, sb
    cmp r4, #0
    bge _0802D034
    movs r0, #0
    b _0802D048
_0802D034:
    ldr r1, [sp, #0x54]
    ldr r0, [r1]
    ldr r2, [r0, #0x30]
    adds r0, r1, #0
    ldr r1, [sp, #0x58]
    bl _call_via_r2
    lsls r0, r0, #0x10
    cmp sb, r0
    ble _0802D04A
_0802D048:
    mov sb, r0
_0802D04A:
    adds r0, r7, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    subs r0, #0x2c
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #1
    bls _0802D0DA
    ldr r4, [sp, #0x54]
    ldr r1, [r4]
    mov r0, sp
    ldr r3, [r1, #0x34]
    adds r1, r4, #0
    ldr r2, [sp, #0x58]
    bl _call_via_r3
    ldr r1, [r7, #0x14]
    add r0, sp, #0x3c
    ldr r2, [r1, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    ldr r0, [sp, #0x3c]
    ldr r1, [sp, #0x40]
    str r0, [sp, #0x44]
    str r1, [sp, #0x48]
    add r4, sp, #0x44
    mov r0, sp
    adds r1, r4, #0
    bl func_080AC070
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802D098
    mov r5, r8
    str r5, [r7, #8]
    mov r6, sb
    str r6, [r7, #0xc]
    b _0802D122
_0802D098:
    mov r0, r8
    asrs r1, r0, #0x10
    asrs r0, r5, #0x10
    subs r5, r1, r0
    mov r2, sb
    asrs r1, r2, #0x10
    asrs r0, r6, #0x10
    subs r6, r1, r0
    movs r3, #0
    ldrsh r0, [r4, r3]
    movs r1, #2
    ldrsh r2, [r4, r1]
    movs r1, #4
    ldrsh r3, [r4, r1]
    movs r1, #6
    ldrsh r4, [r4, r1]
    add r1, sp, #0x4c
    adds r0, r5, r0
    strh r0, [r1]
    adds r2, r6, r2
    strh r2, [r1, #2]
    adds r3, r5, r3
    strh r3, [r1, #4]
    adds r4, r6, r4
    strh r4, [r1, #6]
    mov r0, sp
    bl func_080AC070
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802D0E4
_0802D0DA:
    mov r2, r8
    str r2, [r7, #8]
    mov r3, sb
    str r3, [r7, #0xc]
    b _0802D122
_0802D0E4:
    cmp r5, #0
    ble _0802D0F4
    adds r0, r7, #0
    movs r1, #3
    adds r2, r5, #0
    bl func_0802536C
    b _0802D122
_0802D0F4:
    cmp r5, #0
    bge _0802D104
    rsbs r2, r5, #0
    adds r0, r7, #0
    movs r1, #2
    bl func_0802536C
    b _0802D122
_0802D104:
    cmp r6, #0
    ble _0802D114
    adds r0, r7, #0
    movs r1, #0
    adds r2, r6, #0
    bl func_0802536C
    b _0802D122
_0802D114:
    cmp r6, #0
    bge _0802D122
    rsbs r2, r6, #0
    adds r0, r7, #0
    movs r1, #1
    bl func_0802536C
_0802D122:
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x40]
    adds r0, r7, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802D148
    ldr r4, [sp, #0x54]
    ldr r0, [r4]
    ldr r2, [r0, #0x40]
    adds r0, r4, #0
    movs r1, #0x2c
    bl _call_via_r2
    ldr r1, [r7, #8]
    str r1, [r0, #8]
    ldr r1, [r7, #0xc]
    str r1, [r0, #0xc]
_0802D148:
    add sp, #0x80
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0802D158
func_0802D158: @ 0x0802D158
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    movs r6, #0xc9
    lsls r6, r6, #1
    adds r0, #0x7c
    ldr r1, _0802D17C @ =0x0000FFFF
    strh r1, [r0]
    subs r0, #0x40
    ldrb r0, [r0]
    cmp r0, #0x39
    bls _0802D172
    b _0802D590
_0802D172:
    lsls r0, r0, #2
    ldr r1, _0802D180 @ =_0802D184
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802D17C: .4byte 0x0000FFFF
_0802D180: .4byte _0802D184
_0802D184: @ jump table
    .4byte _0802D26C @ case 0
    .4byte _0802D346 @ case 1
    .4byte _0802D2E0 @ case 2
    .4byte _0802D346 @ case 3
    .4byte _0802D330 @ case 4
    .4byte _0802D346 @ case 5
    .4byte _0802D466 @ case 6
    .4byte _0802D472 @ case 7
    .4byte _0802D582 @ case 8
    .4byte _0802D37E @ case 9
    .4byte _0802D566 @ case 10
    .4byte _0802D364 @ case 11
    .4byte _0802D364 @ case 12
    .4byte _0802D35E @ case 13
    .4byte _0802D364 @ case 14
    .4byte _0802D36A @ case 15
    .4byte _0802D36E @ case 16
    .4byte _0802D554 @ case 17
    .4byte _0802D560 @ case 18
    .4byte _0802D372 @ case 19
    .4byte _0802D378 @ case 20
    .4byte _0802D566 @ case 21
    .4byte _0802D45A @ case 22
    .4byte _0802D460 @ case 23
    .4byte _0802D46C @ case 24
    .4byte _0802D3CC @ case 25
    .4byte _0802D3CC @ case 26
    .4byte _0802D39E @ case 27
    .4byte _0802D3BC @ case 28
    .4byte _0802D3BC @ case 29
    .4byte _0802D3FC @ case 30
    .4byte _0802D416 @ case 31
    .4byte _0802D432 @ case 32
    .4byte _0802D554 @ case 33
    .4byte _0802D4BC @ case 34
    .4byte _0802D4D8 @ case 35
    .4byte _0802D4F0 @ case 36
    .4byte _0802D4F6 @ case 37
    .4byte _0802D4FC @ case 38
    .4byte _0802D500 @ case 39
    .4byte _0802D504 @ case 40
    .4byte _0802D50A @ case 41
    .4byte _0802D510 @ case 42
    .4byte _0802D510 @ case 43
    .4byte _0802D516 @ case 44
    .4byte _0802D52C @ case 45
    .4byte _0802D550 @ case 46
    .4byte _0802D566 @ case 47
    .4byte _0802D55A @ case 48
    .4byte _0802D554 @ case 49
    .4byte _0802D55A @ case 50
    .4byte _0802D560 @ case 51
    .4byte _0802D566 @ case 52
    .4byte _0802D56A @ case 53
    .4byte _0802D554 @ case 54
    .4byte _0802D554 @ case 55
    .4byte _0802D55A @ case 56
    .4byte _0802D55A @ case 57
_0802D26C:
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802D29E
    adds r0, r5, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    bne _0802D286
    b _0802D57C
_0802D286:
    cmp r0, #1
    bgt _0802D292
    cmp r0, #0
    bne _0802D290
    b _0802D55A
_0802D290:
    b _0802D590
_0802D292:
    cmp r0, #2
    beq _0802D298
    b _0802D590
_0802D298:
    movs r6, #0xa7
    lsls r6, r6, #1
    b _0802D590
_0802D29E:
    adds r0, r5, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _0802D2BA
    cmp r0, #1
    bgt _0802D2B4
    cmp r0, #0
    bne _0802D2B2
    b _0802D3CC
_0802D2B2:
    b _0802D590
_0802D2B4:
    cmp r0, #2
    beq _0802D2CC
    b _0802D590
_0802D2BA:
    adds r0, r5, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _0802D2DC
    adds r1, #0x94
    b _0802D2DC
_0802D2CC:
    adds r0, r5, #0
    adds r0, #0xb3
    ldrb r0, [r0]
    movs r1, #0x99
    lsls r1, r1, #1
    cmp r0, #0
    bne _0802D2DC
    adds r1, #0x2c
_0802D2DC:
    adds r6, r1, #0
    b _0802D590
_0802D2E0:
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802D2F0
    b _0802D55A
_0802D2F0:
    adds r0, r5, #0
    adds r0, #0x3f
    ldrb r3, [r0]
    cmp r3, #5
    bgt _0802D3CC
    cmp r3, #0
    blt _0802D3CC
    ldr r2, _0802D32C @ =0x080F0FCC
    adds r1, r5, #0
    adds r1, #0x40
    lsls r0, r3, #3
    subs r0, r0, r3
    ldrb r1, [r1]
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r2
    ldrh r6, [r0]
    ldr r4, [r5, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    mov r1, sp
    strb r0, [r1]
    mov r0, sp
    b _0802D44E
    .align 2, 0
_0802D32C: .4byte 0x080F0FCC
_0802D330:
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r6, #0xc9
    lsls r6, r6, #1
    cmp r0, #0
    beq _0802D344
    b _0802D590
_0802D344:
    b _0802D55A
_0802D346:
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r6, #0xc9
    lsls r6, r6, #1
    cmp r0, #0
    beq _0802D35A
    b _0802D590
_0802D35A:
    subs r6, #0x40
    b _0802D590
_0802D35E:
    movs r6, #0x9b
    lsls r6, r6, #1
    b _0802D590
_0802D364:
    movs r6, #0xcf
    lsls r6, r6, #1
    b _0802D590
_0802D36A:
    movs r6, #0x4e
    b _0802D590
_0802D36E:
    movs r6, #0x46
    b _0802D590
_0802D372:
    movs r6, #0x9f
    lsls r6, r6, #1
    b _0802D590
_0802D378:
    movs r6, #0xa1
    lsls r6, r6, #1
    b _0802D590
_0802D37E:
    adds r0, r5, #0
    adds r0, #0x44
    ldrh r6, [r0]
    ldr r4, [r5, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #1
    b _0802D44C
_0802D39E:
    movs r6, #0xf5
    lsls r6, r6, #1
    ldr r4, [r5, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #2
    b _0802D44C
_0802D3BC:
    adds r2, r5, #0
    adds r2, #0x4e
    adds r1, r5, #0
    adds r1, #0x4f
    ldrb r0, [r2]
    ldrb r3, [r1]
    cmp r0, r3
    bne _0802D3D2
_0802D3CC:
    movs r6, #0xc9
    lsls r6, r6, #1
    b _0802D590
_0802D3D2:
    ldrb r0, [r1]
    ldrb r1, [r2]
    subs r0, r0, r1
    movs r6, #0xc1
    lsls r6, r6, #1
    cmp r0, #1
    bne _0802D3E2
    adds r6, #4
_0802D3E2:
    ldr r4, [r5, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #3
    b _0802D44C
_0802D3FC:
    movs r6, #0x76
    ldr r4, [r5, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #4
    b _0802D44C
_0802D416:
    movs r6, #0x6e
    ldr r4, [r5, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #5
    b _0802D44C
_0802D432:
    movs r6, #0x72
    ldr r4, [r5, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #6
_0802D44C:
    strb r1, [r0]
_0802D44E:
    bl GetIconId__C4Tool
    adds r1, r5, #0
    adds r1, #0x7c
    strh r0, [r1]
    b _0802D590
_0802D45A:
    movs r6, #0xfd
    lsls r6, r6, #1
    b _0802D590
_0802D460:
    movs r6, #0xcb
    lsls r6, r6, #1
    b _0802D590
_0802D466:
    movs r6, #0x89
    lsls r6, r6, #1
    b _0802D590
_0802D46C:
    movs r6, #0x8b
    lsls r6, r6, #1
    b _0802D590
_0802D472:
    ldr r0, [r5]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    adds r0, r5, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #1
    beq _0802D4A4
    cmp r0, #1
    bgt _0802D494
    cmp r0, #0
    beq _0802D49A
    b _0802D590
_0802D494:
    cmp r0, #2
    beq _0802D4B0
    b _0802D590
_0802D49A:
    movs r6, #0xea
    ldr r1, _0802D4A0 @ =0x0000077A
    b _0802D53E
    .align 2, 0
_0802D4A0: .4byte 0x0000077A
_0802D4A4:
    movs r6, #0xee
    ldr r1, _0802D4AC @ =0x0000077E
    b _0802D53E
    .align 2, 0
_0802D4AC: .4byte 0x0000077E
_0802D4B0:
    movs r6, #0xe6
    ldr r1, _0802D4B8 @ =0x00000782
    b _0802D53E
    .align 2, 0
_0802D4B8: .4byte 0x00000782
_0802D4BC:
    movs r6, #0xad
    lsls r6, r6, #1
    ldr r0, [r5]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _0802D4D4 @ =0x0000077A
    b _0802D53E
    .align 2, 0
_0802D4D4: .4byte 0x0000077A
_0802D4D8:
    movs r6, #0x9a
    ldr r0, [r5]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _0802D4EC @ =0x0000077A
    b _0802D53E
    .align 2, 0
_0802D4EC: .4byte 0x0000077A
_0802D4F0:
    movs r6, #0x83
    lsls r6, r6, #1
    b _0802D590
_0802D4F6:
    movs r6, #0x81
    lsls r6, r6, #1
    b _0802D590
_0802D4FC:
    movs r6, #0xfe
    b _0802D590
_0802D500:
    movs r6, #0xfa
    b _0802D590
_0802D504:
    movs r6, #0x91
    lsls r6, r6, #1
    b _0802D590
_0802D50A:
    movs r6, #0x8f
    lsls r6, r6, #1
    b _0802D590
_0802D510:
    movs r6, #0x8d
    lsls r6, r6, #1
    b _0802D590
_0802D516:
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r6, #0xa5
    lsls r6, r6, #1
    cmp r0, #0
    beq _0802D590
    subs r6, #0x40
    b _0802D590
_0802D52C:
    movs r6, #0xe2
    ldr r0, [r5]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r2, r0, #0
    ldr r1, _0802D54C @ =0x00000792
_0802D53E:
    ldrh r0, [r2, #0x22]
    cmp r0, r1
    beq _0802D590
    adds r0, r2, #0
    bl func_080321B0
    b _0802D590
    .align 2, 0
_0802D54C: .4byte 0x00000792
_0802D550:
    movs r6, #0x3e
    b _0802D590
_0802D554:
    movs r6, #0xa3
    lsls r6, r6, #1
    b _0802D590
_0802D55A:
    movs r6, #0xa9
    lsls r6, r6, #1
    b _0802D590
_0802D560:
    movs r6, #0x9d
    lsls r6, r6, #1
    b _0802D590
_0802D566:
    movs r6, #0x42
    b _0802D590
_0802D56A:
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    movs r6, #0xe3
    lsls r6, r6, #1
    cmp r0, #0
    bne _0802D590
_0802D57C:
    movs r6, #0xab
    lsls r6, r6, #1
    b _0802D590
_0802D582:
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    movs r6, #0xf6
    cmp r0, #0
    beq _0802D590
    movs r6, #0xf2
_0802D590:
    adds r0, r6, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0802D59C
func_0802D59C: @ 0x0802D59C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x20
    adds r6, r0, #0
    movs r2, #0
    str r2, [sp, #0x1c]
    mov r8, r2
    cmp r1, #0
    beq _0802D5BC
    ldrh r0, [r1]
    str r0, [sp, #0x1c]
    ldrh r1, [r1, #4]
    mov r8, r1
_0802D5BC:
    adds r0, r6, #0
    adds r0, #0x3e
    strb r2, [r0]
    adds r1, r6, #0
    adds r1, #0xc3
    ldrb r2, [r1]
    adds r7, r0, #0
    mov sl, r1
    movs r0, #0x20
    adds r0, r0, r6
    mov sb, r0
    cmp r2, #0
    beq _0802D5D8
    b _0802D71C
_0802D5D8:
    movs r0, #1
    mov r1, r8
    ands r0, r1
    cmp r0, #0
    bne _0802D5E4
    b _0802D71C
_0802D5E4:
    mov r0, sp
    adds r1, r6, #0
    bl func_0801FE94
    mov r2, sb
    ldrb r0, [r2]
    cmp r0, #1
    beq _0802D608
    cmp r0, #1
    bgt _0802D5FE
    cmp r0, #0
    beq _0802D62C
    b _0802D68E
_0802D5FE:
    cmp r0, #2
    beq _0802D670
    cmp r0, #3
    beq _0802D67A
    b _0802D68E
_0802D608:
    mov r3, sp
    mov r0, sp
    ldrb r4, [r0, #3]
    lsrs r2, r4, #2
    ldrh r1, [r0, #4]
    ldr r5, _0802D624 @ =0x000003FF
    ands r1, r5
    lsls r1, r1, #6
    orrs r1, r2
    lsls r1, r1, #0x10
    ldr r0, _0802D628 @ =0xFFF00000
    adds r1, r1, r0
    b _0802D646
    .align 2, 0
_0802D624: .4byte 0x000003FF
_0802D628: .4byte 0xFFF00000
_0802D62C:
    mov r3, sp
    mov r0, sp
    ldrb r4, [r0, #3]
    lsrs r2, r4, #2
    ldrh r1, [r0, #4]
    ldr r5, _0802D668 @ =0x000003FF
    ands r1, r5
    lsls r1, r1, #6
    orrs r1, r2
    lsls r1, r1, #0x10
    movs r2, #0x80
    lsls r2, r2, #0xd
    adds r1, r1, r2
_0802D646:
    lsrs r2, r1, #0x10
    movs r0, #0x3f
    ands r2, r0
    lsls r2, r2, #2
    movs r0, #3
    ands r0, r4
    orrs r0, r2
    strb r0, [r3, #3]
    lsrs r1, r1, #0x16
    ands r1, r5
    ldrh r2, [r3, #4]
    ldr r0, _0802D66C @ =0xFFFFFC00
    ands r0, r2
    orrs r0, r1
    strh r0, [r3, #4]
    b _0802D68E
    .align 2, 0
_0802D668: .4byte 0x000003FF
_0802D66C: .4byte 0xFFFFFC00
_0802D670:
    ldr r0, [sp]
    lsls r1, r0, #6
    asrs r1, r1, #0x10
    subs r1, #0x10
    b _0802D682
_0802D67A:
    ldr r0, [sp]
    lsls r1, r0, #6
    asrs r1, r1, #0x10
    adds r1, #0x10
_0802D682:
    lsls r1, r1, #0x10
    lsrs r1, r1, #6
    ldr r2, _0802D6E0 @ =0xFC0003FF
    ands r2, r0
    orrs r2, r1
    str r2, [sp]
_0802D68E:
    ldrh r2, [r6, #4]
    ldr r1, [r6]
    add r4, sp, #8
    ldr r3, [r1]
    adds r0, r4, #0
    ldr r3, [r3, #0x34]
    bl _call_via_r3
    ldr r0, [sp]
    lsls r0, r0, #6
    asrs r5, r0, #0x13
    mov r0, sp
    ldrb r2, [r0, #3]
    lsrs r2, r2, #2
    ldrh r0, [r0, #4]
    ldr r1, _0802D6E4 @ =0x000003FF
    ands r0, r1
    lsls r0, r0, #6
    orrs r0, r2
    lsls r0, r0, #0x10
    asrs r3, r0, #0x13
    ldr r2, [sp, #8]
    ldrh r0, [r4, #8]
    cmp r2, #0
    beq _0802D6E8
    cmp r5, r0
    bhi _0802D6E8
    ldrh r1, [r4, #0xa]
    cmp r3, r1
    bhi _0802D6E8
    ldr r1, [r4, #4]
    muls r0, r3, r0
    adds r0, r0, r5
    cmp r1, #0
    beq _0802D6D8
    adds r0, r1, r0
    ldrb r0, [r0]
_0802D6D8:
    lsls r0, r0, #2
    adds r0, r2, r0
    adds r2, r0, #0
    b _0802D6EA
    .align 2, 0
_0802D6E0: .4byte 0xFC0003FF
_0802D6E4: .4byte 0x000003FF
_0802D6E8:
    movs r2, #0
_0802D6EA:
    cmp r2, #0
    beq _0802D71C
    ldrh r1, [r2, #2]
    ldr r0, _0802D718 @ =0x0000FFFE
    ands r0, r1
    cmp r0, #0
    beq _0802D71C
    ldr r0, [r6]
    ldr r3, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r3, r3, r1
    ldr r2, [r2]
    lsrs r2, r2, #0x11
    add r1, sp, #0x14
    movs r4, #0
    str r2, [sp, #0x14]
    str r4, [r1, #4]
    ldr r3, [r3]
    movs r2, #0
    bl _call_via_r3
    b _0802D832
    .align 2, 0
_0802D718: .4byte 0x0000FFFE
_0802D71C:
    movs r3, #0
    movs r5, #0
    mov r2, sb
    ldrb r4, [r2]
    mov r1, sl
    ldrb r0, [r1]
    cmp r0, #0
    bne _0802D736
    movs r0, #3
    mov r2, r8
    ands r2, r0
    cmp r2, #0
    beq _0802D740
_0802D736:
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0x23
    strb r0, [r1]
    b _0802D7F8
_0802D740:
    ldr r1, [sp, #0x1c]
    lsls r2, r1, #0x19
    lsrs r2, r2, #0x1f
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1f
    orrs r2, r0
    lsls r0, r1, #0x1a
    lsrs r0, r0, #0x1f
    orrs r0, r2
    lsls r2, r1, #0x1b
    lsrs r2, r2, #0x1f
    orrs r2, r0
    lsls r1, r1, #0x17
    lsrs r1, r1, #0x1f
    orrs r1, r2
    cmp r1, #0
    beq _0802D7F8
    add r1, sp, #0x1c
    ldrb r2, [r1]
    movs r0, #0x20
    ands r0, r2
    cmp r0, #0
    beq _0802D772
    movs r4, #2
    b _0802D794
_0802D772:
    movs r0, #0x10
    ands r0, r2
    cmp r0, #0
    beq _0802D77E
    movs r4, #3
    b _0802D794
_0802D77E:
    movs r0, #0x40
    ands r0, r2
    cmp r0, #0
    beq _0802D78A
    movs r4, #1
    b _0802D794
_0802D78A:
    movs r0, #0x80
    ands r0, r2
    cmp r0, #0
    beq _0802D794
    movs r4, #0
_0802D794:
    cmp r4, #1
    beq _0802D7B4
    cmp r4, #1
    bgt _0802D7A2
    cmp r4, #0
    beq _0802D7B8
    b _0802D7BA
_0802D7A2:
    cmp r4, #2
    beq _0802D7AC
    cmp r4, #3
    beq _0802D7B0
    b _0802D7BA
_0802D7AC:
    movs r3, #0xfe
    b _0802D7BA
_0802D7B0:
    movs r3, #2
    b _0802D7BA
_0802D7B4:
    movs r5, #0xfe
    b _0802D7BA
_0802D7B8:
    movs r5, #2
_0802D7BA:
    ldr r0, [r6, #0x34]
    ldr r2, _0802D7D8 @ =0x00002210
    adds r0, r0, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x1f
    cmp r0, #0
    bne _0802D7DC
    ldrb r1, [r1, #1]
    movs r2, #1
    adds r0, r2, #0
    ands r0, r1
    cmp r0, #0
    beq _0802D7F6
    b _0802D7E8
    .align 2, 0
_0802D7D8: .4byte 0x00002210
_0802D7DC:
    ldrb r1, [r1, #1]
    movs r2, #1
    adds r0, r2, #0
    ands r0, r1
    cmp r0, #0
    bne _0802D7F6
_0802D7E8:
    movs r0, #2
    strb r0, [r7]
    lsls r0, r3, #0x19
    lsrs r3, r0, #0x18
    lsls r0, r5, #0x19
    lsrs r5, r0, #0x18
    b _0802D7F8
_0802D7F6:
    strb r2, [r7]
_0802D7F8:
    lsls r0, r3, #0x18
    asrs r0, r0, #8
    str r0, [r6, #0x18]
    lsls r0, r5, #0x18
    asrs r0, r0, #8
    str r0, [r6, #0x1c]
    mov r1, sb
    ldrb r0, [r1]
    cmp r0, r4
    beq _0802D814
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_08032198
_0802D814:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r1, r0, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r4
    beq _0802D832
    adds r0, r1, #0
    adds r1, r4, #0
    bl func_08032198
_0802D832:
    add sp, #0x20
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0802D844
func_0802D844: @ 0x0802D844
    push {r4, r5, lr}
    adds r4, r0, #0
    movs r5, #0
    cmp r1, #0
    beq _0802D850
    ldrh r5, [r1, #4]
_0802D850:
    adds r0, r4, #0
    adds r0, #0xc3
    ldrb r0, [r0]
    cmp r0, #0
    bne _0802D862
    ldr r0, _0802D88C @ =0x000003F3
    ands r0, r5
    cmp r0, #0
    beq _0802D8E2
_0802D862:
    adds r0, r4, #0
    bl func_080323C8
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #0x18
    strb r0, [r1]
    movs r0, #0x20
    ands r0, r5
    cmp r0, #0
    beq _0802D890
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #2
    beq _0802D8E2
    adds r0, r4, #0
    movs r1, #2
    bl func_08032198
    b _0802D8E2
    .align 2, 0
_0802D88C: .4byte 0x000003F3
_0802D890:
    movs r0, #0x10
    ands r0, r5
    cmp r0, #0
    beq _0802D8AC
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #3
    beq _0802D8E2
    adds r0, r4, #0
    movs r1, #3
    bl func_08032198
    b _0802D8E2
_0802D8AC:
    movs r0, #0x40
    ands r0, r5
    cmp r0, #0
    beq _0802D8C8
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #1
    beq _0802D8E2
    adds r0, r4, #0
    movs r1, #1
    bl func_08032198
    b _0802D8E2
_0802D8C8:
    movs r0, #0x80
    ands r5, r0
    cmp r5, #0
    beq _0802D8E2
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #0
    beq _0802D8E2
    adds r0, r4, #0
    movs r1, #0
    bl func_08032198
_0802D8E2:
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_0802D8E8
func_0802D8E8: @ 0x0802D8E8
    push {r4, r5, lr}
    sub sp, #0xc
    adds r5, r0, #0
    movs r3, #0
    str r3, [sp, #8]
    movs r4, #0
    cmp r1, #0
    beq _0802D900
    ldrh r3, [r1]
    ldrh r0, [r1, #4]
    str r0, [sp, #8]
    ldrh r4, [r1, #8]
_0802D900:
    adds r0, r5, #0
    adds r0, #0xc3
    ldrb r0, [r0]
    cmp r0, #0
    beq _0802D914
    adds r1, r5, #0
    adds r1, #0x3c
    movs r0, #0
    strb r0, [r1]
    b _0802D9A4
_0802D914:
    lsls r0, r3, #0x1e
    lsrs r2, r0, #0x1f
    lsls r0, r3, #0x16
    lsrs r0, r0, #0x1f
    orrs r2, r0
    cmp r2, #0
    beq _0802D99E
    lsls r1, r4, #0x19
    lsrs r1, r1, #0x1f
    lsls r0, r4, #0x1a
    lsrs r0, r0, #0x1f
    orrs r1, r0
    cmp r1, #0
    beq _0802D93A
    adds r0, r5, #0
    movs r1, #1
    bl func_08025A40
    b _0802D9A4
_0802D93A:
    lsls r2, r4, #0x18
    lsrs r2, r2, #0x1f
    lsls r0, r4, #0x1b
    lsrs r0, r0, #0x1f
    orrs r2, r0
    ldr r1, [sp, #8]
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1f
    orrs r0, r2
    lsls r1, r1, #0x16
    lsrs r4, r1, #0x1f
    orrs r4, r0
    cmp r4, #0
    beq _0802D960
    adds r0, r5, #0
    movs r1, #0
    bl func_08025A40
    b _0802D9A4
_0802D960:
    add r1, sp, #8
    ldrb r0, [r1]
    movs r3, #1
    adds r2, r3, #0
    ands r2, r0
    cmp r2, #0
    beq _0802D994
    ldr r0, [r5]
    ldr r2, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    ldr r1, _0802D990 @ =0x000003CE
    str r1, [sp]
    str r4, [sp, #4]
    ldr r3, [r2]
    mov r1, sp
    movs r2, #0
    bl _call_via_r3
    adds r0, r5, #0
    adds r0, #0x3c
    strb r4, [r0]
    b _0802D9A4
    .align 2, 0
_0802D990: .4byte 0x000003CE
_0802D994:
    ldrb r1, [r1, #1]
    adds r0, r3, #0
    ands r0, r1
    cmp r0, #0
    beq _0802D9A4
_0802D99E:
    adds r0, r5, #0
    adds r0, #0x3c
    strb r2, [r0]
_0802D9A4:
    add sp, #0xc
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_0802D9AC
func_0802D9AC: @ 0x0802D9AC
    push {r4, r5, r6, lr}
    sub sp, #0x1c
    adds r6, r0, #0
    movs r2, #0
    str r2, [sp, #0x14]
    str r2, [sp, #0x18]
    movs r3, #0
    cmp r1, #0
    beq _0802D9C8
    ldrh r0, [r1]
    str r0, [sp, #0x14]
    ldrh r0, [r1, #4]
    str r0, [sp, #0x18]
    ldrh r3, [r1, #8]
_0802D9C8:
    adds r0, r6, #0
    adds r0, #0xc3
    ldrb r0, [r0]
    cmp r0, #0
    beq _0802D9DA
    adds r0, r6, #0
    adds r0, #0x3c
    strb r2, [r0]
    b _0802DBE6
_0802D9DA:
    ldr r0, [sp, #0x14]
    lsls r1, r0, #0x1f
    lsrs r1, r1, #0x1f
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x1f
    orrs r1, r0
    cmp r1, #0
    bne _0802D9EC
    b _0802DBE0
_0802D9EC:
    lsls r1, r3, #0x19
    lsrs r1, r1, #0x1f
    lsls r0, r3, #0x1a
    lsrs r0, r0, #0x1f
    orrs r1, r0
    cmp r1, #0
    beq _0802DA1C
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802DA12
    adds r0, r6, #0
    movs r1, #1
    bl func_080257D0
    b _0802DBE6
_0802DA12:
    adds r0, r6, #0
    movs r1, #1
    bl func_08025838
    b _0802DBE6
_0802DA1C:
    lsls r2, r3, #0x18
    lsrs r2, r2, #0x1f
    lsls r0, r3, #0x1b
    lsrs r0, r0, #0x1f
    orrs r2, r0
    ldr r1, [sp, #0x18]
    lsls r0, r1, #0x1f
    lsrs r0, r0, #0x1f
    orrs r0, r2
    lsls r1, r1, #0x16
    lsrs r4, r1, #0x1f
    orrs r4, r0
    cmp r4, #0
    beq _0802DA5A
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802DA50
    adds r0, r6, #0
    movs r1, #0
    bl func_080257D0
    b _0802DBE6
_0802DA50:
    adds r0, r6, #0
    movs r1, #0
    bl func_08025838
    b _0802DBE6
_0802DA5A:
    add r2, sp, #0x18
    ldrb r1, [r2]
    movs r5, #2
    adds r0, r5, #0
    ands r0, r1
    lsls r0, r0, #0x18
    lsrs r3, r0, #0x18
    cmp r3, #0
    bne _0802DA6E
    b _0802DBCE
_0802DA6E:
    add r3, sp, #0x14
    ldrh r2, [r3]
    ldr r1, _0802DA8C @ =0x00000201
    adds r0, r1, #0
    ands r0, r2
    cmp r0, r1
    bne _0802DA94
    ldr r0, [r6]
    ldr r3, [r0]
    subs r1, #0xc1
    adds r3, r3, r1
    add r1, sp, #4
    ldr r2, _0802DA90 @ =0x000003CE
    str r2, [sp, #4]
    b _0802DAAE
    .align 2, 0
_0802DA8C: .4byte 0x00000201
_0802DA90: .4byte 0x000003CE
_0802DA94:
    ldrb r1, [r3]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq _0802DAC8
    ldr r0, [r6]
    ldr r3, [r0]
    movs r2, #0xa0
    lsls r2, r2, #1
    adds r3, r3, r2
    add r1, sp, #0xc
    ldr r2, _0802DAC0 @ =0x000003CE
    str r2, [sp, #0xc]
_0802DAAE:
    str r4, [r1, #4]
    ldr r3, [r3]
    movs r2, #0
    bl _call_via_r3
    adds r0, r6, #0
    adds r0, #0x3c
    strb r4, [r0]
    b _0802DBE6
    .align 2, 0
_0802DAC0: .4byte 0x000003CE
_0802DAC4:
    ldr r0, [r4]
    b _0802DB62
_0802DAC8:
    ldrb r1, [r3, #1]
    adds r0, r5, #0
    ands r0, r1
    cmp r0, #0
    bne _0802DAD4
    b _0802DBE6
_0802DAD4:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802DBC4
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F388
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802DBBA
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F204
    cmp r0, #0
    bne _0802DBBA
    ldr r1, [r6, #0x38]
    adds r1, #0x54
    mov r0, sp
    bl func_0800F20C
    ldr r5, [r6, #0x14]
    mov r0, sp
    bl GetStaminaGain__C4Food
    adds r4, r0, #0
    mov r0, sp
    bl GetFatigueGain__C4Food
    adds r2, r0, #0
    ldr r3, [r5, #0x64]
    adds r0, r6, #0
    adds r1, r4, #0
    bl _call_via_r3
    mov r0, sp
    bl IsDrink__C4Food
    cmp r0, #0
    bne _0802DB6E
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0xf
    strb r0, [r1]
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802DB5E
_0802DB4C:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802DAC4
    adds r4, #4
    cmp r4, r5
    bne _0802DB4C
_0802DB5E:
    subs r0, r5, #4
    ldr r0, [r0]
_0802DB62:
    movs r1, #0x65
    bl func_08008B6C
    b _0802DBAA
_0802DB6A:
    ldr r0, [r4]
    b _0802DBA4
_0802DB6E:
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0x10
    strb r0, [r1]
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802DBA0
_0802DB8E:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802DB6A
    adds r4, #4
    cmp r4, r5
    bne _0802DB8E
_0802DBA0:
    subs r0, r5, #4
    ldr r0, [r0]
_0802DBA4:
    movs r1, #0x66
    bl func_08008B6C
_0802DBAA:
    adds r0, r6, #0
    bl func_0802A7D8
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F390
    b _0802DBE6
_0802DBBA:
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0
    strb r0, [r1]
    b _0802DBE6
_0802DBC4:
    adds r0, r6, #0
    movs r1, #0
    bl func_08025A40
    b _0802DBE6
_0802DBCE:
    ldrb r1, [r2, #1]
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq _0802DBE6
    adds r0, r6, #0
    adds r0, #0x3c
    strb r3, [r0]
    b _0802DBE6
_0802DBE0:
    adds r0, r6, #0
    adds r0, #0x3c
    strb r1, [r0]
_0802DBE6:
    add sp, #0x1c
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0802DBF0
func_0802DBF0: @ 0x0802DBF0
    push {r4, r5, r6, lr}
    sub sp, #0xc
    adds r6, r0, #0
    movs r2, #0
    str r2, [sp, #4]
    str r2, [sp, #8]
    cmp r1, #0
    beq _0802DC08
    ldrh r0, [r1]
    str r0, [sp, #4]
    ldrh r0, [r1, #4]
    str r0, [sp, #8]
_0802DC08:
    adds r0, r6, #0
    adds r0, #0xc3
    ldrb r0, [r0]
    cmp r0, #0
    beq _0802DC14
    b _0802DE26
_0802DC14:
    add r0, sp, #4
    ldrb r1, [r0, #1]
    movs r5, #2
    adds r0, r5, #0
    ands r0, r1
    cmp r0, #0
    bne _0802DC24
    b _0802DE32
_0802DC24:
    ldr r2, [sp, #8]
    lsls r1, r2, #0x19
    lsrs r1, r1, #0x1f
    lsls r0, r2, #0x1a
    lsrs r0, r0, #0x1f
    orrs r1, r0
    cmp r1, #0
    beq _0802DC84
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    lsrs r1, r0, #0x18
    cmp r1, #0
    bne _0802DC46
    b _0802DE86
_0802DC46:
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0x16
    strb r0, [r1]
    adds r1, #0x3d
    movs r0, #1
    strb r0, [r1]
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    bne _0802DC6E
    b _0802DE7A
_0802DC6E:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802DC7C
    b _0802DE2E
_0802DC7C:
    adds r4, #4
    cmp r4, r5
    bne _0802DC6E
    b _0802DE7A
_0802DC84:
    lsls r1, r2, #0x18
    lsrs r1, r1, #0x1f
    lsls r0, r2, #0x1b
    lsrs r0, r0, #0x1f
    orrs r1, r0
    cmp r1, #0
    beq _0802DCE2
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    lsrs r1, r0, #0x18
    cmp r1, #0
    bne _0802DCA4
    b _0802DE86
_0802DCA4:
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0x16
    strb r0, [r1]
    adds r0, r6, #0
    adds r0, #0x79
    strb r5, [r0]
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    bne _0802DCCC
    b _0802DE7A
_0802DCCC:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802DCDA
    b _0802DE2E
_0802DCDA:
    adds r4, #4
    cmp r4, r5
    bne _0802DCCC
    b _0802DE7A
_0802DCE2:
    add r3, sp, #8
    ldrb r1, [r3]
    movs r4, #1
    adds r0, r4, #0
    ands r0, r1
    cmp r0, #0
    beq _0802DD12
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802DD08
    adds r0, r6, #0
    movs r1, #1
    bl func_08025838
    b _0802DE8C
_0802DD08:
    adds r0, r6, #0
    movs r1, #1
    bl func_080257D0
    b _0802DE8C
_0802DD12:
    adds r0, r5, #0
    ands r0, r1
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    cmp r2, #0
    beq _0802DE1C
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802DD3A
    adds r0, r6, #0
    movs r1, #0
    bl func_08025A40
    b _0802DE8C
_0802DD36:
    ldr r0, [r4]
    b _0802DDBA
_0802DD3A:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F388
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802DE12
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F204
    cmp r0, #0
    bne _0802DE12
    ldr r1, [r6, #0x38]
    adds r1, #0x54
    mov r0, sp
    bl func_0800F20C
    ldr r5, [r6, #0x14]
    mov r0, sp
    bl GetStaminaGain__C4Food
    adds r4, r0, #0
    mov r0, sp
    bl GetFatigueGain__C4Food
    adds r2, r0, #0
    ldr r3, [r5, #0x64]
    adds r0, r6, #0
    adds r1, r4, #0
    bl _call_via_r3
    mov r0, sp
    bl IsDrink__C4Food
    cmp r0, #0
    bne _0802DDC6
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0xf
    strb r0, [r1]
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802DDB6
_0802DDA4:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802DD36
    adds r4, #4
    cmp r4, r5
    bne _0802DDA4
_0802DDB6:
    subs r0, r5, #4
    ldr r0, [r0]
_0802DDBA:
    movs r1, #0x65
    bl func_08008B6C
    b _0802DE02
_0802DDC2:
    ldr r0, [r4]
    b _0802DDFC
_0802DDC6:
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0x10
    strb r0, [r1]
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802DDF8
_0802DDE6:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802DDC2
    adds r4, #4
    cmp r4, r5
    bne _0802DDE6
_0802DDF8:
    subs r0, r5, #4
    ldr r0, [r0]
_0802DDFC:
    movs r1, #0x66
    bl func_08008B6C
_0802DE02:
    adds r0, r6, #0
    bl func_0802A7D8
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F390
    b _0802DE8C
_0802DE12:
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0
    strb r0, [r1]
    b _0802DE8C
_0802DE1C:
    ldrb r1, [r3, #1]
    adds r0, r4, #0
    ands r0, r1
    cmp r0, #0
    beq _0802DE8C
_0802DE26:
    adds r0, r6, #0
    adds r0, #0x3c
    strb r2, [r0]
    b _0802DE8C
_0802DE2E:
    ldr r0, [r4]
    b _0802DE7E
_0802DE32:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    lsrs r1, r0, #0x18
    cmp r1, #0
    beq _0802DE86
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0x16
    strb r0, [r1]
    adds r1, #0x3d
    movs r0, #3
    strb r0, [r1]
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802DE7A
_0802DE68:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802DE2E
    adds r4, #4
    cmp r4, r5
    bne _0802DE68
_0802DE7A:
    subs r0, r5, #4
    ldr r0, [r0]
_0802DE7E:
    movs r1, #0x67
    bl func_08008B6C
    b _0802DE8C
_0802DE86:
    adds r0, r6, #0
    adds r0, #0x3c
    strb r1, [r0]
_0802DE8C:
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_0802DE94
func_0802DE94: @ 0x0802DE94
    push {r4, r5, r6, lr}
    sub sp, #0x10
    adds r6, r0, #0
    movs r2, #0
    str r2, [sp, #4]
    cmp r1, #0
    beq _0802DEA8
    ldrh r2, [r1]
    ldrh r0, [r1, #4]
    str r0, [sp, #4]
_0802DEA8:
    adds r0, r6, #0
    adds r0, #0xc3
    ldrb r0, [r0]
    cmp r0, #0
    beq _0802DEB4
    b _0802E0AE
_0802DEB4:
    movs r5, #2
    ands r2, r5
    lsls r0, r2, #0x18
    lsrs r4, r0, #0x18
    cmp r4, #0
    bne _0802DEC2
    b _0802E0B8
_0802DEC2:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802DED6
    adds r0, r6, #0
    bl func_0802C908
_0802DED6:
    ldr r2, [sp, #4]
    lsls r1, r2, #0x19
    lsrs r1, r1, #0x1f
    lsls r0, r2, #0x18
    lsrs r0, r0, #0x1f
    orrs r1, r0
    lsls r0, r2, #0x1a
    lsrs r0, r0, #0x1f
    orrs r0, r1
    lsls r2, r2, #0x1b
    lsrs r2, r2, #0x1f
    orrs r2, r0
    cmp r2, #0
    beq _0802DF70
    add r0, sp, #4
    ldrb r1, [r0]
    movs r0, #0x20
    ands r0, r1
    cmp r0, #0
    beq _0802DF14
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #2
    bne _0802DF0A
    b _0802E0F2
_0802DF0A:
    adds r0, r6, #0
    movs r1, #2
    bl func_08032198
    b _0802E0F2
_0802DF14:
    movs r0, #0x10
    ands r0, r1
    cmp r0, #0
    beq _0802DF32
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #3
    bne _0802DF28
    b _0802E0F2
_0802DF28:
    adds r0, r6, #0
    movs r1, #3
    bl func_08032198
    b _0802E0F2
_0802DF32:
    movs r0, #0x40
    ands r0, r1
    cmp r0, #0
    beq _0802DF50
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #1
    bne _0802DF46
    b _0802E0F2
_0802DF46:
    adds r0, r6, #0
    movs r1, #1
    bl func_08032198
    b _0802E0F2
_0802DF50:
    movs r0, #0x80
    ands r0, r1
    cmp r0, #0
    bne _0802DF5A
    b _0802E0F2
_0802DF5A:
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #0
    bne _0802DF66
    b _0802E0F2
_0802DF66:
    adds r0, r6, #0
    movs r1, #0
    bl func_08032198
    b _0802E0F2
_0802DF70:
    add r1, sp, #4
    ldrb r3, [r1, #1]
    movs r0, #1
    adds r4, r0, #0
    ands r4, r3
    cmp r4, #0
    beq _0802DF86
    adds r0, r6, #0
    adds r0, #0x3c
    strb r2, [r0]
    b _0802E0F2
_0802DF86:
    ldrb r1, [r1]
    ands r0, r1
    cmp r0, #0
    beq _0802DFB0
    ldr r0, [r6]
    ldr r3, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r3, r3, r1
    add r1, sp, #8
    ldr r2, _0802DFAC @ =0x000003CE
    str r2, [sp, #8]
    str r4, [r1, #4]
    ldr r3, [r3]
    movs r2, #0
    bl _call_via_r3
    b _0802E0D8
    .align 2, 0
_0802DFAC: .4byte 0x000003CE
_0802DFB0:
    adds r0, r5, #0
    ands r0, r3
    cmp r0, #0
    bne _0802DFBA
    b _0802E0F2
_0802DFBA:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802DFD6
    adds r0, r6, #0
    movs r1, #0
    bl func_08025A40
    b _0802E0F2
_0802DFD2:
    ldr r0, [r4]
    b _0802E056
_0802DFD6:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F388
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802E0AE
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F204
    cmp r0, #0
    bne _0802E0AE
    ldr r1, [r6, #0x38]
    adds r1, #0x54
    mov r0, sp
    bl func_0800F20C
    ldr r5, [r6, #0x14]
    mov r0, sp
    bl GetStaminaGain__C4Food
    adds r4, r0, #0
    mov r0, sp
    bl GetFatigueGain__C4Food
    adds r2, r0, #0
    ldr r3, [r5, #0x64]
    adds r0, r6, #0
    adds r1, r4, #0
    bl _call_via_r3
    mov r0, sp
    bl IsDrink__C4Food
    cmp r0, #0
    bne _0802E062
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0xf
    strb r0, [r1]
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802E052
_0802E040:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802DFD2
    adds r4, #4
    cmp r4, r5
    bne _0802E040
_0802E052:
    subs r0, r5, #4
    ldr r0, [r0]
_0802E056:
    movs r1, #0x65
    bl func_08008B6C
    b _0802E09E
_0802E05E:
    ldr r0, [r4]
    b _0802E098
_0802E062:
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0x10
    strb r0, [r1]
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802E094
_0802E082:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802E05E
    adds r4, #4
    cmp r4, r5
    bne _0802E082
_0802E094:
    subs r0, r5, #4
    ldr r0, [r0]
_0802E098:
    movs r1, #0x66
    bl func_08008B6C
_0802E09E:
    adds r0, r6, #0
    bl func_0802A7D8
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F390
    b _0802E0F2
_0802E0AE:
    adds r1, r6, #0
    adds r1, #0x3c
    movs r0, #0
    strb r0, [r1]
    b _0802E0F2
_0802E0B8:
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802E0CE
    adds r0, r6, #0
    bl func_080258A0
    b _0802E0F2
_0802E0CE:
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r0, [r0]
    cmp r0, #0xf
    bne _0802E0E0
_0802E0D8:
    adds r0, r6, #0
    adds r0, #0x3c
    strb r4, [r0]
    b _0802E0F2
_0802E0E0:
    cmp r0, #0xe
    bne _0802E0EC
    adds r0, r6, #0
    bl func_0802C860
    b _0802E0F2
_0802E0EC:
    adds r0, r6, #0
    bl func_0802C2E0
_0802E0F2:
    add sp, #0x10
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0802E0FC
func_0802E0FC: @ 0x0802E0FC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x84
    adds r7, r0, #0
    movs r2, #0
    str r2, [sp, #0x28]
    cmp r1, #0
    beq _0802E118
    ldrh r2, [r1]
    ldrh r0, [r1, #4]
    str r0, [sp, #0x28]
_0802E118:
    adds r0, r7, #0
    adds r0, #0xc3
    ldrb r4, [r0]
    cmp r4, #0
    beq _0802E12E
    adds r1, r7, #0
    adds r1, #0x3c
    movs r0, #0
    strb r0, [r1]
    bl _0802EBE6
_0802E12E:
    movs r5, #1
    adds r0, r5, #0
    ands r0, r2
    cmp r0, #0
    beq _0802E1BA
    add r2, sp, #0x28
    ldrb r1, [r2]
    movs r3, #2
    adds r0, r3, #0
    ands r0, r1
    cmp r0, #0
    beq _0802E170
    ldr r0, [r7]
    ldr r3, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r3, r3, r1
    add r1, sp, #0x20
    ldr r2, _0802E16C @ =0x000003CE
    str r2, [sp, #0x20]
    str r4, [r1, #4]
    ldr r3, [r3]
    movs r2, #0
    bl _call_via_r3
    adds r0, r7, #0
    adds r0, #0x3c
    strb r4, [r0]
    bl _0802EBE6
    .align 2, 0
_0802E16C: .4byte 0x000003CE
_0802E170:
    ldrb r1, [r2, #1]
    adds r0, r3, #0
    ands r0, r1
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    cmp r2, #0
    beq _0802E1A4
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802E198
    adds r0, r7, #0
    movs r1, #1
    bl func_080257D0
    bl _0802EBE6
_0802E198:
    adds r0, r7, #0
    movs r1, #0
    bl func_08025838
    bl _0802EBE6
_0802E1A4:
    adds r0, r5, #0
    ands r0, r1
    cmp r0, #0
    bne _0802E1B0
    bl _0802EBE6
_0802E1B0:
    adds r0, r7, #0
    adds r0, #0x3c
    strb r2, [r0]
    bl _0802EBE6
_0802E1BA:
    adds r5, r7, #0
    adds r5, #0x3c
    strb r0, [r5]
    ldr r2, [r7]
    mov sb, r2
    mov r0, sp
    adds r1, r7, #0
    bl func_0801FE94
    mov r3, sp
    str r3, [sp, #0x68]
    adds r4, r7, #0
    adds r4, #0x20
    ldrb r2, [r4]
    add r0, sp, #0x2c
    adds r1, r7, #0
    bl func_0802AB98
    ldr r0, [sp, #0x2c]
    ldr r1, [sp, #0x30]
    str r0, [sp, #0x34]
    str r1, [sp, #0x38]
    add r2, sp, #0x34
    mov r1, sb
    ldr r0, [r1]
    movs r3, #0x9a
    lsls r3, r3, #1
    adds r0, r0, r3
    ldr r3, [r0]
    mov r0, sb
    mov r1, sp
    bl _call_via_r3
    adds r6, r0, #0
    movs r0, #0
    str r0, [sp, #0x6c]
    movs r1, #0
    str r1, [sp, #0x70]
    adds r0, r6, #0
    subs r0, #0x2b
    str r5, [sp, #0x7c]
    str r4, [sp, #0x78]
    cmp r0, #0x39
    bls _0802E214
    b _0802E792
_0802E214:
    lsls r0, r0, #2
    ldr r1, _0802E220 @ =_0802E224
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802E220: .4byte _0802E224
_0802E224: @ jump table
    .4byte _0802E516 @ case 0
    .4byte _0802E30C @ case 1
    .4byte _0802E792 @ case 2
    .4byte _0802E60C @ case 3
    .4byte _0802E60C @ case 4
    .4byte _0802E60C @ case 5
    .4byte _0802E60C @ case 6
    .4byte _0802E60C @ case 7
    .4byte _0802E60C @ case 8
    .4byte _0802E60C @ case 9
    .4byte _0802E60C @ case 10
    .4byte _0802E65A @ case 11
    .4byte _0802E65A @ case 12
    .4byte _0802E65A @ case 13
    .4byte _0802E65A @ case 14
    .4byte _0802E65A @ case 15
    .4byte _0802E65A @ case 16
    .4byte _0802E65A @ case 17
    .4byte _0802E65A @ case 18
    .4byte _0802E65A @ case 19
    .4byte _0802E65A @ case 20
    .4byte _0802E65A @ case 21
    .4byte _0802E65A @ case 22
    .4byte _0802E65A @ case 23
    .4byte _0802E65A @ case 24
    .4byte _0802E65A @ case 25
    .4byte _0802E65A @ case 26
    .4byte _0802E792 @ case 27
    .4byte _0802E792 @ case 28
    .4byte _0802E792 @ case 29
    .4byte _0802E792 @ case 30
    .4byte _0802E55C @ case 31
    .4byte _0802E740 @ case 32
    .4byte _0802E680 @ case 33
    .4byte _0802E680 @ case 34
    .4byte _0802E680 @ case 35
    .4byte _0802E680 @ case 36
    .4byte _0802E680 @ case 37
    .4byte _0802E680 @ case 38
    .4byte _0802E680 @ case 39
    .4byte _0802E680 @ case 40
    .4byte _0802E792 @ case 41
    .4byte _0802E792 @ case 42
    .4byte _0802E792 @ case 43
    .4byte _0802E792 @ case 44
    .4byte _0802E792 @ case 45
    .4byte _0802E792 @ case 46
    .4byte _0802E792 @ case 47
    .4byte _0802E792 @ case 48
    .4byte _0802E792 @ case 49
    .4byte _0802E792 @ case 50
    .4byte _0802E792 @ case 51
    .4byte _0802E792 @ case 52
    .4byte _0802E792 @ case 53
    .4byte _0802E792 @ case 54
    .4byte _0802E792 @ case 55
    .4byte _0802E792 @ case 56
    .4byte _0802E7BA @ case 57
_0802E30C:
    ldr r0, [r7, #0x34]
    adds r0, #0x14
    bl func_08009C3C
    bl GetGrowthStage__C5Horse
    cmp r0, #1
    beq _0802E31E
    b _0802E510
_0802E31E:
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802E32E
    b _0802E486
_0802E32E:
    ldrh r2, [r7, #4]
    add r3, sp, #8
    mov r8, r3
    mov r5, sb
    ldr r1, [r5]
    mov r0, r8
    ldr r3, [r1, #0x34]
    mov r1, sb
    bl _call_via_r3
    movs r0, #0xa
    ldrsh r5, [r7, r0]
    movs r1, #0xe
    ldrsh r4, [r7, r1]
    add r1, sp, #0x3c
    subs r0, r5, #7
    strh r0, [r1]
    adds r0, r4, #0
    subs r0, #9
    strh r0, [r1, #2]
    adds r0, r5, #7
    strh r0, [r1, #4]
    adds r0, r4, #5
    strh r0, [r1, #6]
    ldr r0, [sp, #0x3c]
    ldr r1, [sp, #0x40]
    str r0, [sp, #0x44]
    str r1, [sp, #0x48]
    add r6, sp, #0x44
    mov r0, r8
    adds r1, r6, #0
    bl func_080AC070
    movs r2, #1
    mov sl, r2
    mov r3, sl
    eors r0, r3
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802E3C0
    add r0, sp, #0x4c
    mov r1, r8
    adds r2, r6, #0
    bl func_08024724
    ldr r0, [sp, #0x4c]
    str r0, [sp, #0x50]
    add r1, sp, #0x50
    movs r2, #0
    ldrsh r0, [r1, r2]
    adds r5, r5, r0
    movs r3, #2
    ldrsh r0, [r1, r3]
    adds r4, r4, r0
    add r1, sp, #0x54
    subs r0, r5, #7
    strh r0, [r1]
    adds r0, r4, #0
    subs r0, #9
    strh r0, [r1, #2]
    adds r0, r5, #7
    strh r0, [r1, #4]
    adds r0, r4, #5
    strh r0, [r1, #6]
    mov r0, r8
    bl func_080AC070
    mov r1, sl
    eors r0, r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802E3C0
    b _0802E7BA
_0802E3C0:
    lsls r6, r5, #0x10
    lsls r4, r4, #0x10
    mov r8, r4
    mov r2, sb
    ldr r0, [r2]
    ldr r2, [r0, #0x40]
    mov r0, sb
    movs r1, #0x2c
    bl _call_via_r2
    adds r4, r0, #0
    bl func_08021EE0
    str r6, [r4, #8]
    mov r3, r8
    str r3, [r4, #0xc]
    movs r5, #0
    str r5, [r4, #0x18]
    str r5, [r4, #0x1c]
    ldr r1, [sp, #0x78]
    ldrb r0, [r1]
    cmp r0, #1
    beq _0802E402
    cmp r0, #1
    bgt _0802E3F8
    cmp r0, #0
    beq _0802E416
    b _0802E450
_0802E3F8:
    cmp r0, #2
    beq _0802E42A
    cmp r0, #3
    beq _0802E43E
    b _0802E450
_0802E402:
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #3
    beq _0802E450
    adds r0, r4, #0
    movs r1, #3
    bl func_08032198
    b _0802E450
_0802E416:
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #2
    beq _0802E450
    adds r0, r4, #0
    movs r1, #2
    bl func_08032198
    b _0802E450
_0802E42A:
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #1
    beq _0802E450
    adds r0, r4, #0
    movs r1, #1
    bl func_08032198
    b _0802E450
_0802E43E:
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #0
    beq _0802E450
    adds r0, r4, #0
    movs r1, #0
    bl func_08032198
_0802E450:
    ldr r0, [r7, #8]
    adds r5, r7, #0
    adds r5, #0xb8
    subs r0, r6, r0
    movs r1, #0x18
    bl __divsi3
    str r0, [r5]
    ldr r0, [r7, #0xc]
    adds r4, r7, #0
    adds r4, #0xbc
    mov r2, r8
    subs r0, r2, r0
    movs r1, #0x18
    bl __divsi3
    str r0, [r4]
    ldr r0, [r5]
    str r0, [r7, #0x18]
    ldr r0, [r4]
    str r0, [r7, #0x1c]
    movs r3, #1
    str r3, [sp, #0x70]
    movs r0, #0x22
    ldr r5, [sp, #0x7c]
    strb r0, [r5]
    b _0802E7BA
_0802E486:
    adds r0, r7, #0
    bl func_080262C4
    add r4, sp, #0x5c
    strb r0, [r4]
    adds r0, r4, #0
    bl GetPrice__C7Product
    cmp r0, #0
    bne _0802E49C
    b _0802E7BA
_0802E49C:
    ldr r5, [r7]
    ldr r0, [r5]
    movs r1, #0xae
    lsls r1, r1, #1
    adds r0, r0, r1
    ldr r2, [r0]
    adds r0, r5, #0
    adds r1, r4, #0
    bl _call_via_r2
    movs r0, #0xe
    ldr r2, [sp, #0x7c]
    strb r0, [r2]
    movs r3, #1
    str r3, [sp, #0x70]
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    movs r1, #0x2c
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _0802E4E4
    ldr r0, [r4, #0x14]
    adds r0, #0x88
    ldr r2, [r0]
    adds r0, r4, #0
    movs r1, #0x3c
    bl _call_via_r2
    adds r0, r4, #0
    movs r1, #5
    movs r2, #0
    bl func_08032384
_0802E4E4:
    ldr r0, [r5]
    movs r1, #0xa6
    lsls r1, r1, #1
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r5, #0
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802E5F6
_0802E4FC:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802E57E
    adds r4, #4
    cmp r4, r5
    bne _0802E4FC
    b _0802E5F6
_0802E510:
    movs r2, #9
    str r2, [sp, #0x6c]
    b _0802E7BA
_0802E516:
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802E526
    b _0802E7BA
_0802E526:
    ldr r4, [r7]
    ldr r0, [r4]
    ldr r2, [r0, #0x40]
    adds r0, r4, #0
    adds r1, r6, #0
    bl _call_via_r2
    adds r1, r0, #0
    cmp r1, #0
    beq _0802E548
    ldr r0, [r1, #0x14]
    adds r0, #0x88
    ldr r2, [r0]
    adds r0, r1, #0
    movs r1, #0x3c
    bl _call_via_r2
_0802E548:
    ldr r0, [r4]
    ldr r2, [r0, #0x3c]
    adds r0, r4, #0
    adds r1, r6, #0
    bl _call_via_r2
    adds r0, r7, #0
    bl func_08025E38
    b _0802EBE6
_0802E55C:
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802E582
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x3c]
    adds r1, r6, #0
    bl _call_via_r2
    adds r0, r7, #0
    bl func_08025FC4
    b _0802EBE6
_0802E57E:
    ldr r0, [r4]
    b _0802E5FA
_0802E582:
    adds r0, r7, #0
    bl func_080262C4
    mov r4, sp
    adds r4, #0x5d
    strb r0, [r4]
    adds r0, r4, #0
    bl GetPrice__C7Product
    cmp r0, #0
    bne _0802E59A
    b _0802E7BA
_0802E59A:
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4a
    bl _call_via_r2
    adds r5, r0, #0
    ldr r0, [r5, #0x18]
    bl func_0800FFD0
    movs r1, #0
    cmp r0, #0x1e
    bne _0802E5B6
    movs r1, #1
_0802E5B6:
    cmp r1, #0
    bne _0802E602
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08037EB4
    movs r0, #0xe
    ldr r3, [sp, #0x7c]
    strb r0, [r3]
    movs r5, #1
    str r5, [sp, #0x70]
    ldr r0, [r7]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802E5F6
_0802E5E4:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802E57E
    adds r4, #4
    cmp r4, r5
    bne _0802E5E4
_0802E5F6:
    subs r0, r5, #4
    ldr r0, [r0]
_0802E5FA:
    movs r1, #0x6e
    bl func_08008B6C
    b _0802E7BA
_0802E602:
    ldr r3, _0802E608 @ =0x000003CD
    str r3, [sp, #0x6c]
    b _0802E7BA
    .align 2, 0
_0802E608: .4byte 0x000003CD
_0802E60C:
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802E61C
    b _0802E7BA
_0802E61C:
    ldr r4, [r7]
    ldr r0, [r4]
    ldr r2, [r0, #0x40]
    adds r0, r4, #0
    adds r1, r6, #0
    bl _call_via_r2
    adds r1, r0, #0
    cmp r1, #0
    beq _0802E63E
    ldr r0, [r1, #0x14]
    adds r0, #0x88
    ldr r2, [r0]
    adds r0, r1, #0
    movs r1, #0x3c
    bl _call_via_r2
_0802E63E:
    ldr r0, [r4]
    ldr r2, [r0, #0x3c]
    adds r0, r4, #0
    adds r1, r6, #0
    bl _call_via_r2
    adds r1, r6, #0
    subs r1, #0x2e
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    adds r0, r7, #0
    bl func_08025EFC
    b _0802EBE6
_0802E65A:
    adds r1, r6, #0
    subs r1, #0x36
    adds r0, r7, #0
    adds r0, #0xb1
    strb r1, [r0]
    ldr r0, [r7, #0x34]
    movs r5, #0xbe
    lsls r5, r5, #3
    adds r0, r0, r5
    bl GetCow__4BarnUi
    movs r1, #0xd
    str r1, [sp, #0x6c]
    cmp r0, #0
    bne _0802E67A
    b _0802E7BA
_0802E67A:
    movs r2, #8
    str r2, [sp, #0x6c]
    b _0802E7BA
_0802E680:
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802E690
    b _0802E7BA
_0802E690:
    adds r4, r6, #0
    subs r4, #0x4c
    ldr r0, [r7, #0x34]
    movs r3, #0x82
    lsls r3, r3, #3
    adds r0, r0, r3
    adds r1, r4, #0
    bl GetEgg__C4CoopUi
    cmp r0, #0
    bne _0802E6A8
    b _0802E7BA
_0802E6A8:
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    movs r5, #0xf
    mov r8, r5
    cmp r0, #5
    bhi _0802E6FC
    lsls r0, r0, #2
    ldr r1, _0802E6C0 @ =_0802E6C4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802E6C0: .4byte _0802E6C4
_0802E6C4: @ jump table
    .4byte _0802E6DC @ case 0
    .4byte _0802E6E0 @ case 1
    .4byte _0802E6E6 @ case 2
    .4byte _0802E6EC @ case 3
    .4byte _0802E6F2 @ case 4
    .4byte _0802E6F8 @ case 5
_0802E6DC:
    movs r0, #0xf
    b _0802E6FA
_0802E6E0:
    movs r1, #0x10
    mov r8, r1
    b _0802E6FC
_0802E6E6:
    movs r2, #0x11
    mov r8, r2
    b _0802E6FC
_0802E6EC:
    movs r3, #0x12
    mov r8, r3
    b _0802E6FC
_0802E6F2:
    movs r5, #0x13
    mov r8, r5
    b _0802E6FC
_0802E6F8:
    movs r0, #0x14
_0802E6FA:
    mov r8, r0
_0802E6FC:
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x3c]
    adds r1, r6, #0
    bl _call_via_r2
    ldr r0, [r7, #0x34]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r4, #0
    bl method_0800C9B8__4CoopUi
    add r5, sp, #8
    add r4, sp, #0xc
    adds r0, r4, #0
    mov r1, r8
    bl __4FoodUi
    ldrb r1, [r4]
    mov r0, sp
    adds r0, #0xd
    ldrb r0, [r0]
    lsls r0, r0, #8
    orrs r0, r1
    mov r1, sp
    adds r1, #0xe
    ldrb r1, [r1]
    lsls r1, r1, #0x10
    orrs r1, r0
    adds r0, r5, #0
    bl __12RucksackItemG4Food
    b _0802E786
_0802E740:
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802E7BA
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4b
    bl _call_via_r2
    bl func_08038108
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802E7BA
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x3c]
    adds r1, r6, #0
    bl _call_via_r2
    add r5, sp, #8
    mov r4, sp
    adds r4, #0x5e
    adds r0, r4, #0
    movs r1, #0x35
    bl __7ArticleUi
    ldrb r1, [r4]
    adds r0, r5, #0
    bl __12RucksackItemG7Article
_0802E786:
    adds r0, r7, #0
    adds r1, r5, #0
    movs r2, #0
    bl func_08026150
    b _0802EBE6
_0802E792:
    ldr r0, [r7]
    ldr r1, [r0]
    movs r2, #0x96
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r2, [r1]
    adds r1, r6, #0
    bl _call_via_r2
    adds r2, r0, #0
    cmp r2, #0
    beq _0802E7BA
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x34]
    adds r0, r2, #0
    bl _call_via_r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    str r0, [sp, #0x6c]
_0802E7BA:
    ldr r3, [sp, #0x70]
    cmp r3, #0
    beq _0802E7C2
    b _0802EBE6
_0802E7C2:
    ldr r5, [sp, #0x6c]
    cmp r5, #0
    beq _0802E7CA
    b _0802E906
_0802E7CA:
    add r4, sp, #8
    adds r0, r4, #0
    ldr r1, [sp, #0x68]
    movs r2, #6
    bl memcpy
    ldr r1, [sp, #0x78]
    ldrb r0, [r1]
    adds r1, r0, #0
    cmp r0, #1
    beq _0802E7F4
    cmp r0, #1
    bgt _0802E7EA
    cmp r0, #0
    beq _0802E83C
    b _0802E89A
_0802E7EA:
    cmp r1, #2
    beq _0802E87C
    cmp r1, #3
    beq _0802E886
    b _0802E89A
_0802E7F4:
    mov r2, sp
    ldrb r3, [r2, #0xb]
    lsrs r0, r3, #2
    ldrh r1, [r2, #0xc]
    ldr r4, _0802E830 @ =0x000003FF
    ands r1, r4
    lsls r1, r1, #6
    orrs r1, r0
    lsls r1, r1, #0x10
    ldr r5, _0802E834 @ =0xFFF00000
    adds r1, r1, r5
    lsrs r2, r1, #0x10
    movs r0, #0x3f
    ands r2, r0
    lsls r2, r2, #2
    movs r0, #3
    ands r0, r3
    orrs r0, r2
    mov r2, sp
    strb r0, [r2, #0xb]
    lsrs r1, r1, #0x16
    ands r1, r4
    ldrh r2, [r2, #0xc]
    ldr r0, _0802E838 @ =0xFFFFFC00
    ands r0, r2
    orrs r0, r1
    mov r3, sp
    strh r0, [r3, #0xc]
    b _0802E89A
    .align 2, 0
_0802E830: .4byte 0x000003FF
_0802E834: .4byte 0xFFF00000
_0802E838: .4byte 0xFFFFFC00
_0802E83C:
    mov r5, sp
    ldrb r3, [r5, #0xb]
    lsrs r0, r3, #2
    ldrh r1, [r5, #0xc]
    ldr r4, _0802E874 @ =0x000003FF
    ands r1, r4
    lsls r1, r1, #6
    orrs r1, r0
    lsls r1, r1, #0x10
    movs r0, #0x80
    lsls r0, r0, #0xd
    adds r1, r1, r0
    lsrs r2, r1, #0x10
    movs r0, #0x3f
    ands r2, r0
    lsls r2, r2, #2
    movs r0, #3
    ands r0, r3
    orrs r0, r2
    strb r0, [r5, #0xb]
    lsrs r1, r1, #0x16
    ands r1, r4
    ldrh r2, [r5, #0xc]
    ldr r0, _0802E878 @ =0xFFFFFC00
    ands r0, r2
    orrs r0, r1
    strh r0, [r5, #0xc]
    b _0802E89A
    .align 2, 0
_0802E874: .4byte 0x000003FF
_0802E878: .4byte 0xFFFFFC00
_0802E87C:
    ldr r0, [sp, #8]
    lsls r1, r0, #6
    asrs r1, r1, #0x10
    subs r1, #0x10
    b _0802E88E
_0802E886:
    ldr r0, [sp, #8]
    lsls r1, r0, #6
    asrs r1, r1, #0x10
    adds r1, #0x10
_0802E88E:
    lsls r1, r1, #0x10
    lsrs r1, r1, #6
    ldr r2, _0802E8EC @ =0xFC0003FF
    ands r2, r0
    orrs r2, r1
    str r2, [sp, #8]
_0802E89A:
    ldrh r2, [r7, #4]
    ldr r1, [r7]
    add r4, sp, #0x14
    ldr r3, [r1]
    adds r0, r4, #0
    ldr r3, [r3, #0x34]
    bl _call_via_r3
    ldr r0, [sp, #8]
    lsls r0, r0, #6
    asrs r5, r0, #0x13
    mov r1, sp
    ldrb r2, [r1, #0xb]
    lsrs r2, r2, #2
    ldrh r0, [r1, #0xc]
    ldr r1, _0802E8F0 @ =0x000003FF
    ands r0, r1
    lsls r0, r0, #6
    orrs r0, r2
    lsls r0, r0, #0x10
    asrs r3, r0, #0x13
    ldr r2, [sp, #0x14]
    ldrh r0, [r4, #8]
    cmp r2, #0
    beq _0802E8F4
    cmp r5, r0
    bhi _0802E8F4
    ldrh r1, [r4, #0xa]
    cmp r3, r1
    bhi _0802E8F4
    ldr r1, [r4, #4]
    muls r0, r3, r0
    adds r0, r0, r5
    cmp r1, #0
    beq _0802E8E4
    adds r0, r1, r0
    ldrb r0, [r0]
_0802E8E4:
    lsls r0, r0, #2
    adds r0, r2, r0
    b _0802E8F6
    .align 2, 0
_0802E8EC: .4byte 0xFC0003FF
_0802E8F0: .4byte 0x000003FF
_0802E8F4:
    movs r0, #0
_0802E8F6:
    cmp r0, #0
    beq _0802E900
    ldr r0, [r0]
    lsrs r0, r0, #0x11
    str r0, [sp, #0x6c]
_0802E900:
    ldr r2, [sp, #0x6c]
    cmp r2, #0
    beq _0802E928
_0802E906:
    ldr r0, [r7]
    ldr r2, [r0]
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r2, r3
    add r1, sp, #0x60
    movs r4, #0
    ldr r5, [sp, #0x6c]
    str r5, [sp, #0x60]
    str r4, [r1, #4]
    ldr r3, [r2]
    movs r2, #0
    bl _call_via_r3
    ldr r0, [sp, #0x7c]
    strb r4, [r0]
    b _0802EBE6
_0802E928:
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    cmp r5, #0
    beq _0802E93A
    b _0802EB14
_0802E93A:
    adds r0, r7, #0
    bl func_0802A7E0
    cmp r0, #1
    beq _0802E9E8
    cmp r0, #1
    bgt _0802E94E
    cmp r0, #0
    beq _0802E95C
    b _0802EBE6
_0802E94E:
    cmp r0, #2
    bne _0802E954
    b _0802EBE6
_0802E954:
    cmp r0, #3
    bne _0802E95A
    b _0802EA86
_0802E95A:
    b _0802EBE6
_0802E95C:
    movs r0, #0xb
    ldr r1, [sp, #0x7c]
    strb r0, [r1]
    adds r1, r7, #0
    adds r1, #0x88
    movs r0, #0xa8
    lsls r0, r0, #0xd
    str r5, [r1, #4]
    str r5, [r1, #8]
    str r0, [r1, #0x14]
    ldr r2, [sp, #0x78]
    ldrb r4, [r2]
    cmp r4, #1
    beq _0802E9A4
    cmp r4, #1
    bgt _0802E982
    cmp r4, #0
    beq _0802E9AC
    b _0802E9B4
_0802E982:
    cmp r4, #2
    beq _0802E98C
    cmp r4, #3
    beq _0802E998
    b _0802E9B4
_0802E98C:
    ldr r0, _0802E994 @ =0xFFFE5556
    str r0, [r1, #0xc]
    str r5, [r1, #0x10]
    b _0802E9B2
    .align 2, 0
_0802E994: .4byte 0xFFFE5556
_0802E998:
    ldr r0, _0802E9A0 @ =0x0001AAAA
    str r0, [r1, #0xc]
    str r5, [r1, #0x10]
    b _0802E9B2
    .align 2, 0
_0802E9A0: .4byte 0x0001AAAA
_0802E9A4:
    ldr r0, _0802E9A8 @ =0xFFFE5556
    b _0802E9AE
    .align 2, 0
_0802E9A8: .4byte 0xFFFE5556
_0802E9AC:
    ldr r0, _0802E9E4 @ =0x0001AAAA
_0802E9AE:
    str r5, [r1, #0xc]
    str r0, [r1, #0x10]
_0802E9B2:
    str r5, [r1, #0x18]
_0802E9B4:
    ldr r0, [r7]
    ldr r1, [r0]
    movs r3, #0xa6
    lsls r3, r3, #1
    adds r1, r1, r3
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    bne _0802E9CE
    b _0802EB02
_0802E9CE:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802EA82
    adds r4, #4
    cmp r4, r5
    bne _0802E9CE
    b _0802EB02
    .align 2, 0
_0802E9E4: .4byte 0x0001AAAA
_0802E9E8:
    movs r0, #0xd
    ldr r1, [sp, #0x7c]
    strb r0, [r1]
    ldr r2, [sp, #0x78]
    ldrb r4, [r2]
    cmp r4, #1
    beq _0802EA32
    cmp r4, #1
    bgt _0802EA00
    cmp r4, #0
    beq _0802EA44
    b _0802EA56
_0802EA00:
    cmp r4, #2
    beq _0802EA0A
    cmp r4, #3
    beq _0802EA20
    b _0802EA56
_0802EA0A:
    adds r0, r7, #0
    adds r0, #0x88
    ldr r1, _0802EA1C @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r5, [r0, #8]
    b _0802EA54
    .align 2, 0
_0802EA1C: .4byte 0xFFF60000
_0802EA20:
    adds r0, r7, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r5, [r0, #8]
    b _0802EA54
_0802EA32:
    adds r0, r7, #0
    adds r0, #0x88
    ldr r1, _0802EA40 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r5, [r0, #4]
    b _0802EA52
    .align 2, 0
_0802EA40: .4byte 0xFFF60000
_0802EA44:
    adds r0, r7, #0
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r4, [r0, #4]
_0802EA52:
    str r1, [r0, #8]
_0802EA54:
    str r2, [r0, #0x14]
_0802EA56:
    ldr r0, [r7]
    ldr r1, [r0]
    movs r3, #0xa6
    lsls r3, r3, #1
    adds r1, r1, r3
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802EB02
_0802EA6E:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802EA82
    adds r4, #4
    cmp r4, r5
    bne _0802EA6E
    b _0802EB02
_0802EA82:
    ldr r0, [r4]
    b _0802EB06
_0802EA86:
    movs r0, #0xc
    ldr r5, [sp, #0x7c]
    strb r0, [r5]
    adds r0, r7, #0
    bl func_0802A7D8
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    bl func_0800F390
    ldr r4, [r7, #0x34]
    ldr r0, _0802EB10 @ =0x00001CCC
    adds r4, r4, r0
    add r0, sp, #8
    adds r1, r7, #0
    bl func_0801FE94
    adds r0, r4, #0
    add r1, sp, #8
    movs r2, #6
    bl memcpy
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x38]
    movs r1, #0x4b
    bl _call_via_r2
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4b
    bl _call_via_r2
    cmp r0, #0
    bne _0802EAD0
    b _0802EBE6
_0802EAD0:
    ldr r2, [sp, #0x78]
    ldrb r1, [r2]
    bl func_080380EC
    ldr r0, [r7]
    ldr r1, [r0]
    movs r3, #0xa6
    lsls r3, r3, #1
    adds r1, r1, r3
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802EB02
_0802EAF0:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802EA82
    adds r4, #4
    cmp r4, r5
    bne _0802EAF0
_0802EB02:
    subs r0, r5, #4
    ldr r0, [r0]
_0802EB06:
    movs r1, #0x6c
    bl func_08008B6C
    b _0802EBE6
    .align 2, 0
_0802EB10: .4byte 0x00001CCC
_0802EB14:
    movs r0, #0xa
    ldrsh r5, [r7, r0]
    movs r2, #0xe
    ldrsh r1, [r7, r2]
    mov sl, r1
    ldr r3, [sp, #0x78]
    ldrb r4, [r3]
    cmp r4, #1
    beq _0802EB3A
    cmp r4, #1
    bgt _0802EB30
    cmp r4, #0
    beq _0802EB42
    b _0802EB4E
_0802EB30:
    cmp r4, #2
    beq _0802EB48
    cmp r4, #3
    beq _0802EB4C
    b _0802EB4E
_0802EB3A:
    movs r0, #0x10
    rsbs r0, r0, #0
    add sl, r0
    b _0802EB4E
_0802EB42:
    movs r1, #0x10
    add sl, r1
    b _0802EB4E
_0802EB48:
    subs r5, #0x10
    b _0802EB4E
_0802EB4C:
    adds r5, #0x10
_0802EB4E:
    add r0, sp, #8
    bl __12RucksackItem
    ldr r0, [r7]
    ldr r2, [r0]
    adds r2, #0xe0
    str r2, [sp, #0x74]
    ldrh r3, [r7, #4]
    add r1, sp, #0xc
    ldr r2, _0802EBF8 @ =0x000003FF
    mov sb, r2
    mov r2, sb
    ands r3, r2
    ldrh r4, [r1]
    ldr r6, _0802EBFC @ =0xFFFFFC00
    adds r2, r6, #0
    ands r2, r4
    orrs r2, r3
    strh r2, [r1]
    lsls r5, r5, #0x10
    lsrs r3, r5, #0x10
    movs r2, #0x3f
    mov ip, r2
    ands r3, r2
    lsls r3, r3, #2
    str r3, [sp, #0x80]
    ldrb r3, [r1, #1]
    mov r8, r3
    movs r4, #3
    adds r2, r4, #0
    mov r3, r8
    ands r2, r3
    ldr r3, [sp, #0x80]
    orrs r2, r3
    strb r2, [r1, #1]
    lsrs r5, r5, #0x16
    mov r2, sb
    ands r5, r2
    ldrh r3, [r1, #2]
    adds r2, r6, #0
    ands r2, r3
    orrs r2, r5
    strh r2, [r1, #2]
    mov r5, sl
    lsls r3, r5, #0x10
    lsrs r2, r3, #0x10
    mov r5, ip
    ands r2, r5
    lsls r2, r2, #2
    ldrb r5, [r1, #3]
    ands r4, r5
    orrs r4, r2
    strb r4, [r1, #3]
    lsrs r3, r3, #0x16
    mov r2, sb
    ands r3, r2
    ldrh r2, [r1, #4]
    ands r6, r2
    orrs r6, r3
    strh r6, [r1, #4]
    ldr r5, [sp, #0x74]
    ldr r3, [r5]
    add r2, sp, #8
    bl _call_via_r3
    add r0, sp, #8
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802EBE6
    adds r0, r7, #0
    add r1, sp, #8
    movs r2, #0
    bl func_08026150
_0802EBE6:
    add sp, #0x84
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0802EBF8: .4byte 0x000003FF
_0802EBFC: .4byte 0xFFFFFC00

    thumb_func_start func_0802EC00
func_0802EC00: @ 0x0802EC00
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    adds r7, r0, #0
    mov sb, r1
    adds r0, #0xc0
    movs r2, #0
    strb r2, [r0]
    subs r0, #0x46
    strb r2, [r0]
    adds r3, r7, #0
    adds r3, #0xc3
    ldrb r1, [r3]
    adds r4, r1, #0
    cmp r4, #0
    beq _0802EC40
    subs r0, #0x3e
    strb r1, [r0]
    adds r1, r7, #0
    adds r1, #0xa6
    movs r0, #0
    strh r2, [r1]
    strb r0, [r3]
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x6c]
    adds r0, r7, #0
    bl _call_via_r1
    b _0802F0DC
_0802EC40:
    adds r0, r7, #0
    bl func_0802AEA4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802EC5A
    adds r0, r7, #0
    adds r0, #0x3c
    movs r1, #0x35
    strb r1, [r0]
    adds r0, #0x6a
    strh r4, [r0]
    b _0802F0DC
_0802EC5A:
    ldr r0, [r7, #0x38]
    adds r4, r0, #0
    adds r4, #0x54
    adds r0, r4, #0
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802EC6E
    b _0802EDA2
_0802EC6E:
    adds r0, r4, #0
    bl func_0800F204
    cmp r0, #5
    beq _0802EC7A
    b _0802EDA2
_0802EC7A:
    adds r0, r4, #0
    bl func_0800F360
    adds r1, r0, #0
    ldr r0, _0802ECA0 @ =0x00000155
    cmp r1, r0
    beq _0802ED78
    cmp r1, r0
    bgt _0802ECB8
    cmp r1, #0x6b
    beq _0802ED78
    cmp r1, #0x6b
    bgt _0802ECA4
    cmp r1, #0xb
    beq _0802ED78
    cmp r1, #0x62
    beq _0802ED78
    b _0802EDA2
    .align 2, 0
_0802ECA0: .4byte 0x00000155
_0802ECA4:
    cmp r1, #0xf7
    beq _0802ED78
    cmp r1, #0xf7
    bgt _0802ECB2
    cmp r1, #0xd6
    beq _0802ED82
    b _0802EDA2
_0802ECB2:
    movs r0, #0x91
    lsls r0, r0, #1
    b _0802ECF2
_0802ECB8:
    movs r0, #0xc6
    lsls r0, r0, #1
    cmp r1, r0
    beq _0802ED78
    cmp r1, r0
    bgt _0802ECDC
    subs r0, #0x25
    cmp r1, r0
    beq _0802ED82
    cmp r1, r0
    bgt _0802ECD6
    subs r0, #8
    cmp r1, r0
    beq _0802ED00
    b _0802EDA2
_0802ECD6:
    movs r0, #0xc0
    lsls r0, r0, #1
    b _0802ECEA
_0802ECDC:
    movs r0, #0xd3
    lsls r0, r0, #1
    cmp r1, r0
    beq _0802ED78
    cmp r1, r0
    bgt _0802ECF0
    subs r0, #0x15
_0802ECEA:
    cmp r1, r0
    beq _0802ED78
    b _0802EDA2
_0802ECF0:
    ldr r0, _0802ECF8 @ =0x000001CD
_0802ECF2:
    cmp r1, r0
    beq _0802ED82
    b _0802EDA2
    .align 2, 0
_0802ECF8: .4byte 0x000001CD
_0802ECFC:
    ldr r0, [r4]
    b _0802ED44
_0802ED00:
    ldr r0, [r7]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    movs r3, #0x3c
    adds r3, r3, r7
    mov sb, r3
    adds r6, r7, #0
    adds r6, #0xa6
    movs r0, #0x88
    adds r0, r0, r7
    mov r8, r0
    movs r1, #0x3d
    adds r1, r1, r7
    mov sl, r1
    cmp r4, r5
    beq _0802ED40
_0802ED2E:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802ECFC
    adds r4, #4
    cmp r4, r5
    bne _0802ED2E
_0802ED40:
    subs r0, r5, #4
    ldr r0, [r0]
_0802ED44:
    movs r1, #0xb6
    bl func_08008B6C
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    bl func_0800F390
    ldr r0, _0802ED74 @ =0xFFF80000
    movs r2, #0
    movs r1, #0x88
    lsls r1, r1, #0xd
    mov r3, r8
    str r0, [r3, #4]
    str r2, [r3, #8]
    str r1, [r3, #0x14]
    movs r0, #0x2f
    mov r1, sb
    strb r0, [r1]
    strh r2, [r6]
    movs r0, #0x78
    mov r2, sl
    strb r0, [r2]
    b _0802F0DC
    .align 2, 0
_0802ED74: .4byte 0xFFF80000
_0802ED78:
    adds r1, r7, #0
    adds r1, #0x3c
    movs r2, #0
    movs r0, #0x38
    b _0802ED8A
_0802ED82:
    adds r1, r7, #0
    adds r1, #0x3c
    movs r2, #0
    movs r0, #0x39
_0802ED8A:
    strb r0, [r1]
    adds r0, r7, #0
    adds r0, #0xa6
    strh r2, [r0]
    adds r1, #1
    movs r0, #0x1e
    strb r0, [r1]
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    bl func_0800F390
    b _0802F0DC
_0802EDA2:
    adds r0, r7, #0
    adds r0, #0x3e
    ldrb r5, [r0]
    mov r8, r0
    cmp r5, #0
    bne _0802EDDC
    adds r0, r4, #0
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802EDDC
    adds r0, r7, #0
    adds r0, #0xa6
    ldrh r2, [r0]
    movs r1, #0x96
    lsls r1, r1, #2
    adds r6, r0, #0
    cmp r2, r1
    bls _0802EDD6
    adds r1, r7, #0
    adds r1, #0x3c
    movs r0, #0x17
    strb r0, [r1]
    strh r5, [r6]
    b _0802F0DC
_0802EDD6:
    adds r0, r2, #1
    strh r0, [r6]
    b _0802EDE6
_0802EDDC:
    adds r1, r7, #0
    adds r1, #0xa6
    movs r0, #0
    strh r0, [r1]
    adds r6, r1, #0
_0802EDE6:
    mov r3, r8
    ldrb r1, [r3]
    cmp r1, #0
    bne _0802EDF6
    adds r0, r7, #0
    adds r0, #0xc4
    strb r1, [r0]
    b _0802EE08
_0802EDF6:
    cmp r1, #0
    blt _0802EE08
    cmp r1, #2
    bgt _0802EE08
    adds r1, r7, #0
    adds r1, #0xc4
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
_0802EE08:
    movs r2, #0
    str r2, [sp, #0x10]
    str r2, [sp, #0xc]
    mov r0, sb
    cmp r0, #0
    beq _0802EE1E
    ldrh r0, [r0]
    str r0, [sp, #0x10]
    mov r1, sb
    ldrh r0, [r1, #4]
    str r0, [sp, #0xc]
_0802EE1E:
    mov r3, r8
    strb r2, [r3]
    add r4, sp, #0xc
    ldrb r3, [r4]
    movs r5, #1
    adds r1, r5, #0
    ands r1, r3
    cmp r1, #0
    beq _0802EE3A
    adds r0, r7, #0
    adds r0, #0x3c
    strb r5, [r0]
    strh r2, [r6]
    b _0802EFA2
_0802EE3A:
    movs r2, #2
    adds r0, r2, #0
    ands r0, r3
    lsls r0, r0, #0x18
    lsrs r3, r0, #0x18
    cmp r3, #0
    beq _0802EE68
    adds r0, r7, #0
    adds r0, #0x3c
    strb r2, [r0]
    strh r1, [r6]
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0802EE60
    b _0802EFA2
_0802EE60:
    adds r0, r7, #0
    bl func_0802C984
    b _0802EFA2
_0802EE68:
    ldrb r1, [r4, #1]
    adds r0, r2, #0
    ands r0, r1
    cmp r0, #0
    beq _0802EE7E
    adds r1, r7, #0
    adds r1, #0x3c
    movs r0, #3
    strb r0, [r1]
    strh r3, [r6]
    b _0802EFA2
_0802EE7E:
    ldr r1, [sp, #0x10]
    lsls r2, r1, #0x19
    lsrs r2, r2, #0x1f
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1f
    orrs r2, r0
    lsls r0, r1, #0x1a
    lsrs r0, r0, #0x1f
    orrs r0, r2
    lsls r2, r1, #0x1b
    lsrs r2, r2, #0x1f
    orrs r2, r0
    lsls r1, r1, #0x17
    lsrs r1, r1, #0x1f
    orrs r1, r2
    cmp r1, #0
    bne _0802EEA2
    b _0802EFA2
_0802EEA2:
    adds r2, r7, #0
    adds r2, #0x20
    ldrb r5, [r2]
    adds r4, r5, #0
    add r1, sp, #0x10
    ldrb r3, [r1]
    movs r0, #0x20
    ands r0, r3
    adds r6, r2, #0
    mov sb, r1
    cmp r0, #0
    beq _0802EEBE
    movs r5, #2
    b _0802EEE0
_0802EEBE:
    movs r0, #0x10
    ands r0, r3
    cmp r0, #0
    beq _0802EECA
    movs r5, #3
    b _0802EEE0
_0802EECA:
    movs r0, #0x40
    ands r0, r3
    cmp r0, #0
    beq _0802EED6
    movs r5, #1
    b _0802EEE0
_0802EED6:
    movs r0, #0x80
    ands r0, r3
    cmp r0, #0
    beq _0802EEE0
    movs r5, #0
_0802EEE0:
    cmp r5, r4
    beq _0802EF10
    adds r1, r7, #0
    adds r1, #0xb3
    movs r0, #0
    strb r0, [r1]
    movs r4, #0x2b
_0802EEEE:
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r4, #0
    bl _call_via_r2
    adds r2, r0, #0
    cmp r2, #0
    beq _0802EF0A
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x40]
    adds r0, r2, #0
    bl _call_via_r1
_0802EF0A:
    adds r4, #1
    cmp r4, #0x45
    bls _0802EEEE
_0802EF10:
    ldrb r0, [r6]
    cmp r0, r5
    beq _0802EF1E
    adds r0, r7, #0
    adds r1, r5, #0
    bl func_08032198
_0802EF1E:
    ldrb r2, [r6]
    cmp r2, #1
    beq _0802EF42
    cmp r2, #1
    bgt _0802EF2E
    cmp r2, #0
    beq _0802EF48
    b _0802EF36
_0802EF2E:
    cmp r2, #2
    beq _0802EF36
    cmp r2, #3
    beq _0802EF3C
_0802EF36:
    movs r2, #0xff
    movs r4, #0
    b _0802EF4C
_0802EF3C:
    movs r2, #1
    movs r4, #0
    b _0802EF4C
_0802EF42:
    movs r2, #0
    movs r4, #0xff
    b _0802EF4C
_0802EF48:
    movs r2, #0
    movs r4, #1
_0802EF4C:
    ldr r0, [r7, #0x34]
    ldr r1, _0802EF6C @ =0x00002210
    adds r0, r0, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x1f
    cmp r0, #0
    bne _0802EF70
    mov r3, sb
    ldrb r1, [r3, #1]
    movs r3, #1
    adds r0, r3, #0
    ands r0, r1
    cmp r0, #0
    beq _0802EF92
    b _0802EF7E
    .align 2, 0
_0802EF6C: .4byte 0x00002210
_0802EF70:
    mov r3, sb
    ldrb r1, [r3, #1]
    movs r3, #1
    adds r0, r3, #0
    ands r0, r1
    cmp r0, #0
    bne _0802EF92
_0802EF7E:
    movs r0, #2
    mov r1, r8
    strb r0, [r1]
    lsls r0, r2, #0x19
    lsrs r2, r0, #0x18
    lsls r0, r4, #0x19
    lsrs r4, r0, #0x18
    b _0802EF96
_0802EF8E:
    ldr r0, [r4]
    b _0802F02E
_0802EF92:
    mov r0, r8
    strb r3, [r0]
_0802EF96:
    lsls r0, r2, #0x18
    asrs r0, r0, #8
    str r0, [r7, #0x18]
    lsls r0, r4, #0x18
    asrs r0, r0, #8
    str r0, [r7, #0x1c]
_0802EFA2:
    ldr r1, _0802F038 @ =0x080F117F
    mov r0, sp
    movs r2, #3
    bl memcpy
    mov r1, r8
    ldrb r0, [r1]
    add r0, sp
    ldrb r1, [r0]
    cmp r1, #0
    beq _0802F0AE
    adds r2, r7, #0
    adds r2, #0xc4
    ldrb r0, [r2]
    cmp r0, r1
    blo _0802F0AE
    movs r0, #0
    strb r0, [r2]
    ldr r6, [r7]
    ldr r4, [r6]
    movs r2, #0x90
    lsls r2, r2, #1
    adds r4, r4, r2
    add r5, sp, #4
    adds r0, r5, #0
    adds r1, r7, #0
    bl func_0801FE94
    ldr r2, [r4]
    adds r0, r6, #0
    adds r1, r5, #0
    bl _call_via_r2
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802F07A
    ldr r0, [r7, #0x10]
    cmp r0, #0
    beq _0802EFF4
    bl func_0802B46C
_0802EFF4:
    ldr r0, [r7, #0x34]
    adds r0, #0x10
    bl func_0800E324
    cmp r0, #3
    beq _0802F040
    ldr r0, [r7]
    ldr r1, [r0]
    movs r3, #0xa6
    lsls r3, r3, #1
    adds r1, r1, r3
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802F02A
_0802F018:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802EF8E
    adds r4, #4
    cmp r4, r5
    bne _0802F018
_0802F02A:
    subs r0, r5, #4
    ldr r0, [r0]
_0802F02E:
    movs r1, #0xd0
    bl func_08008B6C
    b _0802F0AE
    .align 2, 0
_0802F038: .4byte 0x080F117F
_0802F03C:
    ldr r0, [r4]
    b _0802F06E
_0802F040:
    ldr r0, [r7]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802F06A
_0802F058:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802F03C
    adds r4, #4
    cmp r4, r5
    bne _0802F058
_0802F06A:
    subs r0, r5, #4
    ldr r0, [r0]
_0802F06E:
    movs r1, #0xd1
    bl func_08008B6C
    b _0802F0AE
_0802F076:
    ldr r0, [r4]
    b _0802F0A8
_0802F07A:
    ldr r0, [r7]
    ldr r1, [r0]
    movs r3, #0xa6
    lsls r3, r3, #1
    adds r1, r1, r3
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802F0A4
_0802F092:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802F076
    adds r4, #4
    cmp r4, r5
    bne _0802F092
_0802F0A4:
    subs r0, r5, #4
    ldr r0, [r0]
_0802F0A8:
    movs r1, #0xd0
    bl func_08008B6C
_0802F0AE:
    movs r1, #0
    ldrh r0, [r7, #0x24]
    cmp r0, #0
    bne _0802F0B8
    movs r1, #1
_0802F0B8:
    cmp r1, #0
    beq _0802F0DC
    mov r1, r8
    ldrb r0, [r1]
    cmp r0, #1
    bne _0802F0CC
    adds r0, r7, #0
    bl func_0802AD80
    b _0802F0DC
_0802F0CC:
    cmp r0, #2
    bne _0802F0DC
    adds r0, r7, #0
    bl func_0802AD80
    adds r0, r7, #0
    bl func_0802AD80
_0802F0DC:
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0802F0EC
func_0802F0EC: @ 0x0802F0EC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18c
    mov sl, r0
    adds r4, r1, #0
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    movs r3, #0
    str r3, [r0, #0x18]
    str r3, [r0, #0x1c]
    mov r1, sl
    adds r1, #0xc5
    ldrb r0, [r1]
    cmp r0, #0
    beq _0802F116
    subs r0, #1
    strb r0, [r1]
    movs r4, #0
_0802F116:
    mov r1, sl
    adds r1, #0xc1
    strb r3, [r1]
    mov r0, sl
    adds r0, #0x3c
    ldrb r3, [r0]
    adds r5, r1, #0
    str r0, [sp, #0x13c]
    cmp r3, #0x39
    bls _0802F12E
    bl _08031F0E
_0802F12E:
    lsls r0, r3, #2
    ldr r1, _0802F138 @ =_0802F13C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802F138: .4byte _0802F13C
_0802F13C: @ jump table
    .4byte _0802F224 @ case 0
    .4byte _0802F238 @ case 1
    .4byte _0802F244 @ case 2
    .4byte _0802F250 @ case 3
    .4byte _0802F264 @ case 4
    .4byte _0802F270 @ case 5
    .4byte _0802F27C @ case 6
    .4byte _0802F296 @ case 7
    .4byte _0802F2A2 @ case 8
    .4byte _0802FC14 @ case 9
    .4byte _0802FA30 @ case 10
    .4byte _0802F884 @ case 11
    .4byte _0802F396 @ case 12
    .4byte _0802F3C8 @ case 13
    .4byte _0802F332 @ case 14
    .4byte _08031A92 @ case 15
    .4byte _08031A92 @ case 16
    .4byte _08031A64 @ case 17
    .4byte _08031936 @ case 18
    .4byte _08031950 @ case 19
    .4byte _080319A6 @ case 20
    .4byte _08031886 @ case 21
    .4byte _080318A0 @ case 22
    .4byte _080319BC @ case 23
    .4byte _08031A92 @ case 24
    .4byte _0803123E @ case 25
    .4byte _080316C6 @ case 26
    .4byte _08031698 @ case 27
    .4byte _080314E6 @ case 28
    .4byte _08031682 @ case 29
    .4byte _08030E50 @ case 30
    .4byte _08030EE2 @ case 31
    .4byte _08030F5A @ case 32
    .4byte _080311F4 @ case 33
    .4byte _080319E0 @ case 34
    .4byte _08031A38 @ case 35
    .4byte _08031AA8 @ case 36
    .4byte _08031AA8 @ case 37
    .4byte _08031AA8 @ case 38
    .4byte _08031AA8 @ case 39
    .4byte _08031AA8 @ case 40
    .4byte _08031AA8 @ case 41
    .4byte _08031AC0 @ case 42
    .4byte _08031F0E @ case 43
    .4byte _08031B82 @ case 44
    .4byte _08031AFC @ case 45
    .4byte _08031C64 @ case 46
    .4byte _08031C84 @ case 47
    .4byte _08031CB6 @ case 48
    .4byte _08031D0C @ case 49
    .4byte _08031D2A @ case 50
    .4byte _08031D80 @ case 51
    .4byte _08031E8A @ case 52
    .4byte _08031EAE @ case 53
    .4byte _08031D9A @ case 54
    .4byte _08031E10 @ case 55
    .4byte _08031DB8 @ case 56
    .4byte _08031E34 @ case 57
_0802F224:
    mov r0, sl
    adds r1, r4, #0
    bl func_0802EC00
    movs r1, #0
    ldr r2, [sp, #0x13c]
    ldrb r0, [r2]
    cmp r0, #0
    bne _0802F290
    b _0802F28E
_0802F238:
    mov r0, sl
    adds r1, r4, #0
    bl func_0802E0FC
    bl _08031F0E
_0802F244:
    mov r0, sl
    adds r1, r4, #0
    bl func_0802DE94
    bl _08031F0E
_0802F250:
    mov r0, sl
    adds r1, r4, #0
    bl func_0802DBF0
    movs r1, #0
    ldr r3, [sp, #0x13c]
    ldrb r0, [r3]
    cmp r0, #3
    bne _0802F290
    b _0802F28E
_0802F264:
    mov r0, sl
    adds r1, r4, #0
    bl func_0802D9AC
    bl _08031F0E
_0802F270:
    mov r0, sl
    adds r1, r4, #0
    bl func_0802D8E8
    bl _08031F0E
_0802F27C:
    mov r0, sl
    adds r1, r4, #0
    bl func_0802D844
    movs r1, #0
    ldr r4, [sp, #0x13c]
    ldrb r0, [r4]
    cmp r0, #6
    bne _0802F290
_0802F28E:
    movs r1, #1
_0802F290:
    strb r1, [r5]
    bl _08031F0E
_0802F296:
    mov r0, sl
    adds r1, r4, #0
    bl func_0802D59C
    bl _08031F0E
_0802F2A2:
    mov r5, sl
    adds r5, #0xc3
    ldrb r0, [r5]
    cmp r0, #0
    beq _0802F2E0
    cmp r0, #0x2a
    bne _0802F2DC
    mov r6, sl
    ldr r0, [r6]
    ldr r2, [r0]
    movs r7, #0xa0
    lsls r7, r7, #1
    adds r2, r2, r7
    add r1, sp, #0x30
    ldr r3, _0802F2D8 @ =0x000002B6
    movs r4, #0
    str r3, [sp, #0x30]
    str r4, [r1, #4]
    ldr r3, [r2]
    movs r2, #2
    bl _call_via_r3
    strb r4, [r5]
    ldr r0, [r6, #0x14]
    ldr r1, [r0, #0x6c]
    bl _08031EA6
    .align 2, 0
_0802F2D8: .4byte 0x000002B6
_0802F2DC:
    movs r0, #0
    strb r0, [r5]
_0802F2E0:
    cmp r4, #0
    beq _0802F306
    ldrh r0, [r4, #8]
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    beq _0802F306
    mov r1, sl
    ldr r0, [r1]
    ldr r2, [r0]
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r2, r3
    add r1, sp, #0x38
    movs r3, #0x56
    movs r4, #0
    str r3, [sp, #0x38]
    bl sub_0802FBFC
_0802F306:
    mov r1, sl
    adds r1, #0x3d
    ldrb r0, [r1]
    cmp r0, #0
    beq _0802F314
    subs r0, #1
    strb r0, [r1]
_0802F314:
    cmp r2, #0
    bne _0802F31C
    bl _08031F0E
_0802F31C:
    mov r4, sl
    ldr r0, [r4, #0x14]
    movs r2, #1
    rsbs r2, r2, #0
    ldr r3, [r0, #0x64]
    mov r0, sl
    movs r1, #1
    bl _call_via_r3
    bl _08031F0E
_0802F332:
    movs r1, #0
    mov r5, sl
    ldrh r0, [r5, #0x24]
    cmp r0, #0
    bne _0802F33E
    movs r1, #1
_0802F33E:
    cmp r1, #0
    bne _0802F346
    bl _08031F0E
_0802F346:
    movs r0, #0
    ldr r6, [sp, #0x13c]
    strb r0, [r6]
    mov r7, sl
    ldr r0, [r7, #0x38]
    adds r4, r0, #0
    adds r4, #0x54
    adds r0, r4, #0
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802F364
    bl _08031D78
_0802F364:
    adds r0, r4, #0
    bl func_0800F204
    cmp r0, #1
    bne _0802F388
    adds r0, r4, #0
    bl func_0800F258
    adds r1, r0, #0
    add r0, sp, #0x40
    strb r1, [r0]
    bl GetId__C7Article
    cmp r0, #0x35
    bne _0802F388
    ldr r0, [r7, #0x38]
    bl func_0800ED2C
_0802F388:
    mov r1, sl
    ldr r0, [r1, #0x38]
    adds r0, #0x54
    bl func_0800F390
    bl _08031D78
_0802F396:
    movs r1, #0
    mov r2, sl
    ldrh r0, [r2, #0x24]
    cmp r0, #0
    bne _0802F3A2
    movs r1, #1
_0802F3A2:
    cmp r1, #0
    bne _0802F3AA
    bl _08031F0E
_0802F3AA:
    movs r2, #0
    ldr r3, [sp, #0x13c]
    strb r2, [r3]
    mov r1, sl
    adds r1, #0xa8
    movs r0, #1
    str r0, [r1]
    mov r0, sl
    adds r0, #0xb0
    strb r2, [r0]
    adds r1, #4
    movs r0, #0x35
    str r0, [r1]
    bl _08031F0E
_0802F3C8:
    movs r1, #0
    mov r4, sl
    ldrh r0, [r4, #0x24]
    cmp r0, #0
    bne _0802F3D4
    movs r1, #1
_0802F3D4:
    cmp r1, #0
    bne _0802F3DC
    bl _08031F0E
_0802F3DC:
    movs r0, #0
    ldr r5, [sp, #0x13c]
    strb r0, [r5]
    mov r6, sl
    ldr r0, [r6, #0x38]
    adds r4, r0, #0
    adds r4, #0x54
    movs r0, #0xa
    ldrsh r7, [r6, r0]
    movs r2, #0xe
    ldrsh r1, [r6, r2]
    str r1, [sp, #0xec]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #1
    beq _0802F412
    cmp r0, #1
    bgt _0802F408
    cmp r0, #0
    beq _0802F41A
    b _0802F428
_0802F408:
    cmp r0, #2
    beq _0802F422
    cmp r0, #3
    beq _0802F426
    b _0802F428
_0802F412:
    ldr r3, [sp, #0xec]
    subs r3, #0x10
    str r3, [sp, #0xec]
    b _0802F428
_0802F41A:
    ldr r5, [sp, #0xec]
    adds r5, #0x10
    str r5, [sp, #0xec]
    b _0802F428
_0802F422:
    subs r7, #0x10
    b _0802F428
_0802F426:
    adds r7, #0x10
_0802F428:
    adds r0, r4, #0
    bl func_0800F204
    cmp r0, #5
    bls _0802F436
    bl _08031D78
_0802F436:
    lsls r0, r0, #2
    ldr r1, _0802F440 @ =_0802F444
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802F440: .4byte _0802F444
_0802F444: @ jump table
    .4byte _08031D78 @ case 0
    .4byte _0802F45C @ case 1
    .4byte _0802F500 @ case 2
    .4byte _0802F648 @ case 3
    .4byte _0802F7E6 @ case 4
    .4byte _08031D78 @ case 5
_0802F45C:
    adds r0, r4, #0
    bl func_0800F258
    mov r6, sp
    adds r6, #0x41
    str r6, [sp, #0x128]
    strb r0, [r6]
    mov r1, sl
    ldr r0, [r1, #0x38]
    adds r0, #0x54
    bl func_0800F390
    mov r2, sl
    ldr r0, [r2]
    ldr r1, [r0]
    adds r1, #0xe4
    str r1, [sp, #0xf0]
    ldrh r2, [r2, #4]
    mov r6, sp
    ldr r3, _0802F4F8 @ =0x000003FF
    mov sb, r3
    mov r4, sb
    ands r2, r4
    ldrh r3, [r6]
    ldr r5, _0802F4FC @ =0xFFFFFC00
    adds r1, r5, #0
    ands r1, r3
    orrs r1, r2
    strh r1, [r6]
    lsls r4, r7, #0x10
    lsrs r2, r4, #0x10
    movs r7, #0x3f
    mov ip, r7
    mov r1, ip
    ands r2, r1
    lsls r2, r2, #2
    ldrb r3, [r6, #1]
    mov r8, r3
    movs r3, #3
    adds r1, r3, #0
    mov r7, r8
    ands r1, r7
    orrs r1, r2
    strb r1, [r6, #1]
    lsrs r4, r4, #0x16
    mov r1, sb
    ands r4, r1
    ldrh r2, [r6, #2]
    adds r1, r5, #0
    ands r1, r2
    orrs r1, r4
    strh r1, [r6, #2]
    ldr r4, [sp, #0xec]
    lsls r2, r4, #0x10
    lsrs r1, r2, #0x10
    mov r7, ip
    ands r1, r7
    lsls r1, r1, #2
    ldrb r4, [r6, #3]
    ands r3, r4
    orrs r3, r1
    strb r3, [r6, #3]
    lsrs r2, r2, #0x16
    mov r1, sb
    ands r2, r1
    ldrh r1, [r6, #4]
    ands r5, r1
    orrs r5, r2
    strh r5, [r6, #4]
    ldr r2, [sp, #0xf0]
    ldr r3, [r2]
    mov r1, sp
    ldr r2, [sp, #0x128]
    bl _call_via_r3
    bl _08031D78
    .align 2, 0
_0802F4F8: .4byte 0x000003FF
_0802F4FC: .4byte 0xFFFFFC00
_0802F500:
    mov r3, sl
    ldr r0, [r3, #0x38]
    adds r0, #0x54
    bl func_0800F390
    mov r4, sl
    ldr r0, [r4, #0x34]
    ldr r5, _0802F5E8 @ =0x00001C70
    adds r5, r0, r5
    str r5, [sp, #0xf4]
    ldrh r1, [r4, #4]
    mov r5, sp
    ldr r6, _0802F5EC @ =0x000003FF
    mov r8, r6
    mov r0, r8
    ands r1, r0
    ldrh r2, [r5]
    ldr r4, _0802F5F0 @ =0xFFFFFC00
    adds r0, r4, #0
    ands r0, r2
    orrs r0, r1
    strh r0, [r5]
    lsls r3, r7, #0x10
    lsrs r1, r3, #0x10
    movs r2, #0x3f
    mov sb, r2
    ands r1, r2
    lsls r1, r1, #2
    ldrb r6, [r5, #1]
    movs r2, #3
    adds r0, r2, #0
    ands r0, r6
    orrs r0, r1
    strb r0, [r5, #1]
    lsrs r3, r3, #0x16
    mov r6, r8
    ands r3, r6
    ldrh r1, [r5, #2]
    adds r0, r4, #0
    ands r0, r1
    orrs r0, r3
    strh r0, [r5, #2]
    ldr r7, [sp, #0xec]
    lsls r1, r7, #0x10
    lsrs r0, r1, #0x10
    mov r3, sb
    ands r0, r3
    lsls r0, r0, #2
    ldrb r3, [r5, #3]
    ands r2, r3
    orrs r2, r0
    strb r2, [r5, #3]
    lsrs r1, r1, #0x16
    ands r1, r6
    ldrh r0, [r5, #4]
    ands r4, r0
    orrs r4, r1
    strh r4, [r5, #4]
    add r4, sp, #8
    movs r5, #0
    adds r0, r4, #0
    mov r1, sp
    movs r2, #6
    bl memcpy
    strb r5, [r4, #6]
    ldr r0, [sp, #0xf4]
    adds r1, r4, #0
    bl SetLocation__5ActorRC13ActorLocation
    ldr r0, [sp, #0xf4]
    bl HasBeenTalkedTo__C6Animal
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    lsrs r6, r0, #0x18
    cmp r6, #0
    beq _0802F5AC
    ldr r0, [sp, #0xf4]
    bl SetTalkedTo__6Animal
    ldr r0, [sp, #0xf4]
    movs r1, #1
    bl AddAffection__6Animali
_0802F5AC:
    mov r4, sl
    ldr r5, [r4]
    ldr r0, [r5]
    ldr r2, [r0, #0x38]
    adds r0, r5, #0
    movs r1, #0x2b
    bl _call_via_r2
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    movs r1, #0x2b
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    bne _0802F5D2
    bl _08031D78
_0802F5D2:
    mov r7, sl
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x28]
    mov r0, sl
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802F5F8
    b _0802F742
    .align 2, 0
_0802F5E8: .4byte 0x00001C70
_0802F5EC: .4byte 0x000003FF
_0802F5F0: .4byte 0xFFFFFC00
_0802F5F4:
    ldr r0, [r4]
    b _0802F642
_0802F5F8:
    ldr r0, [r4, #0x14]
    adds r0, #0x88
    ldr r2, [r0]
    adds r0, r4, #0
    movs r1, #0x3c
    bl _call_via_r2
    cmp r6, #0
    beq _0802F614
    adds r0, r4, #0
    movs r1, #1
    movs r2, #0
    bl func_08032384
_0802F614:
    ldr r0, [r5]
    movs r1, #0xa6
    lsls r1, r1, #1
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r5, #0
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802F63E
_0802F62C:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802F5F4
    adds r4, #4
    cmp r4, r5
    bne _0802F62C
_0802F63E:
    subs r0, r5, #4
    ldr r0, [r0]
_0802F642:
    movs r1, #0xd2
    bl sub_08031D74
_0802F648:
    adds r0, r4, #0
    bl func_0800F344
    str r0, [sp, #0xfc]
    mov r2, sl
    ldr r0, [r2, #0x34]
    movs r3, #0x82
    lsls r3, r3, #3
    adds r0, r0, r3
    ldr r1, [sp, #0xfc]
    bl GetChicken__4CoopUi
    str r0, [sp, #0xf8]
    mov r4, sl
    ldr r0, [r4, #0x38]
    adds r0, #0x54
    bl func_0800F390
    ldrh r2, [r4, #4]
    add r1, sp, #8
    ldr r5, _0802F750 @ =0x000003FF
    mov r8, r5
    mov r6, r8
    ands r2, r6
    ldrh r3, [r1]
    ldr r5, _0802F754 @ =0xFFFFFC00
    adds r0, r5, #0
    ands r0, r3
    orrs r0, r2
    strh r0, [r1]
    lsls r4, r7, #0x10
    lsrs r2, r4, #0x10
    movs r7, #0x3f
    mov sb, r7
    mov r0, sb
    ands r2, r0
    lsls r2, r2, #2
    ldrb r6, [r1, #1]
    movs r3, #3
    adds r0, r3, #0
    ands r0, r6
    orrs r0, r2
    strb r0, [r1, #1]
    lsrs r4, r4, #0x16
    mov r2, r8
    ands r4, r2
    ldrh r2, [r1, #2]
    adds r0, r5, #0
    ands r0, r2
    orrs r0, r4
    strh r0, [r1, #2]
    ldr r4, [sp, #0xec]
    lsls r2, r4, #0x10
    lsrs r0, r2, #0x10
    mov r6, sb
    ands r0, r6
    lsls r0, r0, #2
    ldrb r4, [r1, #3]
    ands r3, r4
    orrs r3, r0
    strb r3, [r1, #3]
    lsrs r2, r2, #0x16
    mov r7, r8
    ands r2, r7
    ldrh r0, [r1, #4]
    ands r5, r0
    orrs r5, r2
    strh r5, [r1, #4]
    mov r5, sp
    movs r4, #0
    mov r0, sp
    movs r2, #6
    bl memcpy
    strb r4, [r5, #6]
    ldr r0, [sp, #0xf8]
    mov r1, sp
    bl SetLocation__5ActorRC13ActorLocation
    ldr r0, [sp, #0xf8]
    bl HasBeenTalkedTo__C6Animal
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    lsrs r6, r0, #0x18
    cmp r6, #0
    beq _0802F706
    ldr r0, [sp, #0xf8]
    bl SetTalkedTo__6Animal
    ldr r0, [sp, #0xf8]
    movs r1, #1
    bl AddAffection__6Animali
_0802F706:
    mov r0, sl
    ldr r5, [r0]
    ldr r4, [sp, #0xfc]
    adds r4, #0x2e
    ldr r0, [r5]
    ldr r2, [r0, #0x38]
    adds r0, r5, #0
    adds r1, r4, #0
    bl _call_via_r2
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    adds r1, r4, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    bne _0802F730
    bl _08031D78
_0802F730:
    mov r1, sl
    ldr r0, [r1, #0x14]
    ldr r1, [r0, #0x28]
    mov r0, sl
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802F758
_0802F742:
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x20]
    adds r0, r4, #0
    bl _call_via_r1
    bl _08031D78
    .align 2, 0
_0802F750: .4byte 0x000003FF
_0802F754: .4byte 0xFFFFFC00
_0802F758:
    ldr r0, [r4, #0x14]
    adds r0, #0x88
    ldr r2, [r0]
    adds r0, r4, #0
    movs r1, #0x3c
    bl _call_via_r2
    ldr r0, [sp, #0xf8]
    bl IsSick__C9Livestock
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802F778
    adds r0, r4, #0
    movs r1, #7
    b _0802F788
_0802F778:
    ldr r0, [sp, #0xf8]
    bl IsUnhappy__C9Livestock
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802F796
    adds r0, r4, #0
    movs r1, #6
_0802F788:
    movs r2, #0
    bl func_08032384
    bl _08031D78
_0802F792:
    ldr r4, [r4]
    b _0802F7D2
_0802F796:
    cmp r6, #0
    beq _0802F7A4
    adds r0, r4, #0
    movs r1, #1
    movs r2, #0
    bl func_08032384
_0802F7A4:
    ldr r0, [r5]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r0, r0, r2
    ldr r1, [r0]
    adds r0, r5, #0
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0802F7CE
_0802F7BC:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802F792
    adds r4, #4
    cmp r4, r5
    bne _0802F7BC
_0802F7CE:
    subs r0, r5, #4
    ldr r4, [r0]
_0802F7D2:
    ldr r0, [sp, #0xf8]
    bl GetGrowthStage__C7Chicken
    movs r1, #0xa5
    cmp r0, #1
    bne _0802F7E0
    movs r1, #0xcc
_0802F7E0:
    adds r0, r4, #0
    bl sub_08031D74
_0802F7E6:
    mov r3, sl
    ldr r0, [r3, #0x38]
    adds r0, #0x54
    bl func_0800F390
    mov r4, sl
    ldr r0, [r4, #0x34]
    movs r5, #0xe5
    lsls r5, r5, #5
    adds r0, r0, r5
    ldrh r2, [r4, #4]
    mov r6, sp
    ldr r1, _0802F87C @ =0x000003FF
    mov sb, r1
    mov r3, sb
    ands r2, r3
    ldrh r3, [r6]
    ldr r5, _0802F880 @ =0xFFFFFC00
    adds r1, r5, #0
    ands r1, r3
    orrs r1, r2
    strh r1, [r6]
    lsls r4, r7, #0x10
    lsrs r2, r4, #0x10
    movs r7, #0x3f
    mov ip, r7
    mov r1, ip
    ands r2, r1
    lsls r2, r2, #2
    ldrb r3, [r6, #1]
    mov r8, r3
    movs r3, #3
    adds r1, r3, #0
    mov r7, r8
    ands r1, r7
    orrs r1, r2
    strb r1, [r6, #1]
    lsrs r4, r4, #0x16
    mov r1, sb
    ands r4, r1
    ldrh r2, [r6, #2]
    adds r1, r5, #0
    ands r1, r2
    orrs r1, r4
    strh r1, [r6, #2]
    ldr r4, [sp, #0xec]
    lsls r2, r4, #0x10
    lsrs r1, r2, #0x10
    mov r7, ip
    ands r1, r7
    lsls r1, r1, #2
    ldrb r4, [r6, #3]
    ands r3, r4
    orrs r3, r1
    strb r3, [r6, #3]
    lsrs r2, r2, #0x16
    mov r1, sb
    ands r2, r1
    ldrh r1, [r6, #4]
    ands r5, r1
    orrs r5, r2
    strh r5, [r6, #4]
    mov r1, sp
    bl func_08010014
    mov r2, sl
    ldr r0, [r2]
    ldr r1, [r0]
    ldr r2, [r1, #0x38]
    movs r1, #0x4a
    bl _call_via_r2
    bl _08031D78
    .align 2, 0
_0802F87C: .4byte 0x000003FF
_0802F880: .4byte 0xFFFFFC00
_0802F884:
    mov r2, sl
    adds r2, #0x88
    ldr r0, [r2, #4]
    ldr r1, [r2, #0xc]
    adds r0, r0, r1
    str r0, [r2, #4]
    ldr r0, [r2, #8]
    ldr r1, [r2, #0x10]
    adds r0, r0, r1
    str r0, [r2, #8]
    ldr r0, [r2, #0x18]
    ldr r3, _0802F8AC @ =0xFFFFB556
    adds r0, r0, r3
    str r0, [r2, #0x18]
    ldr r1, [r2, #0x14]
    adds r1, r1, r0
    cmp r1, #0
    ble _0802F8B0
    str r1, [r2, #0x14]
    b _0802F8B6
    .align 2, 0
_0802F8AC: .4byte 0xFFFFB556
_0802F8B0:
    movs r0, #0
    str r0, [r2, #0x14]
    str r0, [r2, #0x18]
_0802F8B6:
    movs r1, #0
    mov r4, sl
    ldrh r0, [r4, #0x24]
    cmp r0, #0
    bne _0802F8C2
    movs r1, #1
_0802F8C2:
    cmp r1, #0
    bne _0802F8CA
    bl _08031F0E
_0802F8CA:
    movs r0, #0
    ldr r5, [sp, #0x13c]
    strb r0, [r5]
    mov r6, sl
    ldr r1, [r6, #0x38]
    adds r1, #0x54
    mov r0, sp
    bl func_0800F294
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F204
    mov r4, sl
    adds r4, #0xa8
    str r0, [r4]
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    bl func_0800F388
    mov r1, sl
    adds r1, #0xb0
    strb r0, [r1]
    ldr r0, [r4]
    adds r5, r4, #0
    cmp r0, #0
    beq _0802F906
    cmp r0, #1
    beq _0802F924
    b _0802F940
_0802F906:
    mov r7, sl
    ldr r1, [r7, #0x38]
    adds r1, #0x54
    add r4, sp, #4
    adds r0, r4, #0
    bl func_0800F20C
    adds r0, r4, #0
    bl GetId__C4Food
    mov r1, sl
    adds r1, #0xac
    str r0, [r1]
    adds r7, r4, #0
    b _0802F942
_0802F924:
    mov r1, sl
    ldr r0, [r1, #0x38]
    adds r0, #0x54
    bl func_0800F258
    adds r1, r0, #0
    mov r0, sp
    adds r0, #0x42
    strb r1, [r0]
    bl GetId__C7Article
    mov r1, sl
    adds r1, #0xac
    str r0, [r1]
_0802F940:
    add r7, sp, #4
_0802F942:
    mov r2, sl
    ldr r0, [r2, #0x38]
    adds r0, #0x54
    bl func_0800F390
    ldr r0, [r5]
    cmp r0, #1
    bne _0802F964
    mov r0, sl
    adds r0, #0xac
    ldr r0, [r0]
    cmp r0, #0x35
    bne _0802F964
    mov r3, sl
    ldr r0, [r3, #0x38]
    bl func_0800ED2C
_0802F964:
    mov r0, sl
    bl func_0802A7D8
    mov r4, sl
    movs r5, #0xa
    ldrsh r3, [r4, r5]
    movs r0, #0xe
    ldrsh r6, [r4, r0]
    mov sb, r6
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    adds r1, r0, #0
    cmp r0, #1
    beq _0802F99C
    cmp r0, #1
    bgt _0802F98C
    cmp r0, #0
    beq _0802F996
    b _0802F9AA
_0802F98C:
    cmp r1, #2
    beq _0802F9A4
    cmp r1, #3
    beq _0802F9A8
    b _0802F9AA
_0802F996:
    movs r1, #0x14
    add sb, r1
    b _0802F9AA
_0802F99C:
    movs r2, #0x14
    rsbs r2, r2, #0
    add sb, r2
    b _0802F9AA
_0802F9A4:
    subs r3, #0x14
    b _0802F9AA
_0802F9A8:
    adds r3, #0x14
_0802F9AA:
    mov r4, sl
    ldrh r1, [r4, #4]
    ldr r5, _0802FA28 @ =0x000003FF
    adds r6, r5, #0
    ands r1, r6
    ldrh r2, [r7]
    ldr r4, _0802FA2C @ =0xFFFFFC00
    adds r0, r4, #0
    ands r0, r2
    orrs r0, r1
    strh r0, [r7]
    lsls r3, r3, #0x10
    lsrs r1, r3, #0x10
    movs r0, #0x3f
    mov r8, r0
    ands r1, r0
    lsls r1, r1, #2
    ldrb r5, [r7, #1]
    movs r2, #3
    adds r0, r2, #0
    ands r0, r5
    orrs r0, r1
    strb r0, [r7, #1]
    lsrs r3, r3, #0x16
    ands r3, r6
    ldrh r1, [r7, #2]
    adds r0, r4, #0
    ands r0, r1
    orrs r0, r3
    strh r0, [r7, #2]
    mov r3, sb
    lsls r1, r3, #0x10
    lsrs r0, r1, #0x10
    mov r5, r8
    ands r0, r5
    lsls r0, r0, #2
    ldrb r3, [r7, #3]
    ands r2, r3
    orrs r2, r0
    strb r2, [r7, #3]
    lsrs r1, r1, #0x16
    ands r1, r6
    ldrh r0, [r7, #4]
    ands r4, r0
    orrs r4, r1
    strh r4, [r7, #4]
    mov r6, sl
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xac
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r3, [r1]
    adds r1, r7, #0
    mov r2, sp
    bl _call_via_r3
    mov r1, sl
    adds r1, #0xc5
    strb r0, [r1]
    bl _08031F0E
    .align 2, 0
_0802FA28: .4byte 0x000003FF
_0802FA2C: .4byte 0xFFFFFC00
_0802FA30:
    mov r1, sl
    adds r1, #0x3d
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    cmp r5, #0
    beq _0802FA46
    bl _08031F0E
_0802FA46:
    ldr r3, [sp, #0x13c]
    strb r5, [r3]
    adds r1, #0x3d
    movs r0, #1
    strb r0, [r1]
    mov r0, sl
    bl func_0802A7D8
    mov r6, sl
    ldr r4, [r6, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #0x43
    strb r1, [r0]
    bl GetId__C4Tool
    cmp r0, #0x4c
    bne _0802FA7E
    bl _08031BEE
_0802FA7E:
    cmp r0, #0x4c
    bgt _0802FA8A
    cmp r0, #0x4b
    beq _0802FABC
    bl _08031F0E
_0802FA8A:
    cmp r0, #0x4d
    beq _0802FA92
    bl _08031F0E
_0802FA92:
    mov r7, sl
    ldr r0, [r7, #0x38]
    bl func_0800E4FC
    cmp r0, #0x64
    bne _0802FAA2
    bl _08031F0E
_0802FAA2:
    ldr r0, [r7]
    ldr r3, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r3, r3, r1
    add r1, sp, #0x44
    ldr r2, _0802FAB8 @ =0x000003DF
    str r2, [sp, #0x44]
    str r5, [r1, #4]
    ldr r3, [r3]
    b _0802FC00
    .align 2, 0
_0802FAB8: .4byte 0x000003DF
_0802FABC:
    mov r0, sp
    mov r1, sl
    bl func_0801FE94
    mov r4, sl
    adds r4, #0x20
    ldrb r2, [r4]
    add r0, sp, #0x4c
    mov r1, sl
    bl func_0802AB98
    ldr r0, [sp, #0x4c]
    ldr r1, [sp, #0x50]
    str r0, [sp, #0x54]
    str r1, [sp, #0x58]
    add r2, sp, #0x54
    mov r3, sl
    ldr r0, [r3]
    ldr r1, [r0]
    movs r6, #0x9a
    lsls r6, r6, #1
    adds r1, r1, r6
    ldr r3, [r1]
    mov r1, sp
    bl _call_via_r3
    adds r3, r0, #0
    subs r0, r3, #1
    cmp r0, #0x29
    bhi _0802FB3C
    mov r7, sl
    ldr r0, [r7]
    ldr r1, [r0]
    movs r2, #0x96
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r2, [r1]
    adds r1, r3, #0
    bl _call_via_r2
    adds r2, r0, #0
    cmp r2, #0
    bne _0802FB16
    bl _08031F0E
_0802FB16:
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x34]
    adds r0, r2, #0
    bl _call_via_r1
    adds r3, r0, #0
    cmp r3, #0
    bne _0802FB2A
    bl _08031F0E
_0802FB2A:
    ldr r0, [r7]
    ldr r2, [r0]
    movs r4, #0xa0
    lsls r4, r4, #1
    adds r2, r2, r4
    add r1, sp, #0x5c
    str r3, [sp, #0x5c]
    str r5, [r1, #4]
    b _0802FBFE
_0802FB3C:
    ldrb r0, [r4]
    cmp r0, #1
    beq _0802FB56
    cmp r0, #1
    bgt _0802FB4C
    cmp r0, #0
    beq _0802FB78
    b _0802FBDA
_0802FB4C:
    cmp r0, #2
    beq _0802FBBC
    cmp r0, #3
    beq _0802FBC6
    b _0802FBDA
_0802FB56:
    mov r3, sp
    mov r0, sp
    ldrb r4, [r0, #3]
    lsrs r2, r4, #2
    ldrh r1, [r0, #4]
    ldr r5, _0802FB70 @ =0x000003FF
    ands r1, r5
    lsls r1, r1, #6
    orrs r1, r2
    lsls r1, r1, #0x10
    ldr r6, _0802FB74 @ =0xFFF00000
    adds r1, r1, r6
    b _0802FB92
    .align 2, 0
_0802FB70: .4byte 0x000003FF
_0802FB74: .4byte 0xFFF00000
_0802FB78:
    mov r3, sp
    mov r0, sp
    ldrb r4, [r0, #3]
    lsrs r2, r4, #2
    ldrh r1, [r0, #4]
    ldr r5, _0802FBB4 @ =0x000003FF
    ands r1, r5
    lsls r1, r1, #6
    orrs r1, r2
    lsls r1, r1, #0x10
    movs r7, #0x80
    lsls r7, r7, #0xd
    adds r1, r1, r7
_0802FB92:
    lsrs r2, r1, #0x10
    movs r0, #0x3f
    ands r2, r0
    lsls r2, r2, #2
    movs r0, #3
    ands r0, r4
    orrs r0, r2
    strb r0, [r3, #3]
    lsrs r1, r1, #0x16
    ands r1, r5
    ldrh r2, [r3, #4]
    ldr r0, _0802FBB8 @ =0xFFFFFC00
    ands r0, r2
    orrs r0, r1
    strh r0, [r3, #4]
    b _0802FBDA
    .align 2, 0
_0802FBB4: .4byte 0x000003FF
_0802FBB8: .4byte 0xFFFFFC00
_0802FBBC:
    ldr r0, [sp]
    lsls r1, r0, #6
    asrs r1, r1, #0x10
    subs r1, #0x10
    b _0802FBCE
_0802FBC6:
    ldr r0, [sp]
    lsls r1, r0, #6
    asrs r1, r1, #0x10
    adds r1, #0x10
_0802FBCE:
    lsls r1, r1, #0x10
    lsrs r1, r1, #6
    ldr r2, _0802FC0C @ =0xFC0003FF
    ands r2, r0
    orrs r2, r1
    str r2, [sp]
_0802FBDA:
    mov r0, sp
    bl func_080A45A8
    cmp r0, #2
    beq _0802FBE8
    bl _08031F0E
_0802FBE8:
    mov r1, sl
    ldr r0, [r1]
    ldr r2, [r0]
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r2, r3
    add r1, sp, #0x64
    ldr r3, _0802FC10 @ =0x0000034F
    movs r4, #0
    str r3, [sp, #0x64]

    thumb_func_start sub_0802FBFC
sub_0802FBFC: @ 0x0802FBFC
    str r4, [r1, #4]
_0802FBFE:
    ldr r3, [r2]
_0802FC00:
    movs r2, #0
    bl _call_via_r3
    bl _08031F0E
    .align 2, 0
_0802FC0C: .4byte 0xFC0003FF
_0802FC10: .4byte 0x0000034F
_0802FC14:
    movs r1, #0
    mov r4, sl
    ldrh r0, [r4, #0x24]
    cmp r0, #0
    bne _0802FC20
    movs r1, #1
_0802FC20:
    adds r3, r1, #0
    cmp r3, #0
    bne _0802FC2A
    bl sub_08030E0A
_0802FC2A:
    mov r1, sl
    adds r1, #0x78
    movs r0, #0
    strb r0, [r1]
    movs r3, #0
    mov r5, sl
    ldrh r2, [r5, #4]
    str r1, [sp, #0x160]
    cmp r2, #0x33
    ble _0802FC46
    ldr r0, _0802FC94 @ =0x00000233
    cmp r2, r0
    bgt _0802FC46
    movs r3, #1
_0802FC46:
    adds r6, r3, #0
    mov r0, sl
    adds r0, #0x3f
    ldrb r1, [r0]
    adds r7, r0, #0
    cmp r1, #0
    blt _0802FCBC
    cmp r1, #1
    ble _0802FC60
    cmp r1, #4
    bgt _0802FCBC
    cmp r1, #3
    blt _0802FCBC
_0802FC60:
    ldr r0, _0802FC98 @ =0x080F1170
    ldr r1, [r0]
    ldr r2, [r0, #4]
    mov r0, sl
    bl func_0802AC2C
    mov r0, sl
    adds r0, #0xb2
    ldrb r3, [r0]
    movs r1, #0
    adds r0, r3, #0
    subs r0, #0x2b
    cmp r0, #0x1a
    bhi _0802FC7E
    movs r1, #1
_0802FC7E:
    cmp r1, #0
    beq _0802FC9C
    mov r1, sl
    ldr r0, [r1]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r3, #0
    bl _call_via_r2
    adds r4, r0, #0
    b _0802FC9E
    .align 2, 0
_0802FC94: .4byte 0x00000233
_0802FC98: .4byte 0x080F1170
_0802FC9C:
    movs r4, #0
_0802FC9E:
    cmp r4, #0
    beq _0802FCBC
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x44]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802FCBC
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x64]
    adds r0, r4, #0
    bl _call_via_r1
_0802FCBC:
    mov r2, sl
    ldr r4, [r2, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #0x6c
    strb r1, [r0]
    bl GetId__C4Tool
    cmp r0, #0x15
    beq _0802FCE4
    cmp r0, #0x2d
    beq _0802FD44
    b _0802FD9A
_0802FCE4:
    mov r3, sl
    ldr r0, [r3, #0x34]
    movs r4, #0xd2
    lsls r4, r4, #6
    adds r0, r0, r4
    movs r1, #0x15
    bl func_0809C4B4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802FD9A
    mov r0, sl
    ldr r5, [r0, #0x38]
    mov r4, sp
    adds r4, #0x6d
    adds r0, r4, #0
    movs r1, #0x16
    bl __4ToolUi
    ldrb r1, [r4]
    mov r0, sp
    movs r2, #1
    bl __9ToolStackG4ToolUi
    adds r5, #0x5c
    adds r0, r5, #0
    mov r1, sp
    movs r2, #2
    bl memcpy
    mov r1, sl
    ldr r0, [r1]
    ldr r2, [r0]
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r2, r3
    add r1, sp, #0x70
    ldr r3, _0802FD40 @ =0x000003DE
    movs r4, #0
    str r3, [sp, #0x70]
    str r4, [r1, #4]
    ldr r3, [r2]
    movs r2, #0
    bl _call_via_r3
    b _0802FD9A
    .align 2, 0
_0802FD40: .4byte 0x000003DE
_0802FD44:
    mov r4, sl
    ldr r0, [r4, #0x34]
    movs r5, #0xd2
    lsls r5, r5, #6
    adds r0, r0, r5
    movs r1, #0x2d
    bl func_0809C4B4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0802FD9A
    ldr r5, [r4, #0x38]
    add r4, sp, #0x78
    adds r0, r4, #0
    movs r1, #0x2e
    bl __4ToolUi
    ldrb r1, [r4]
    mov r0, sp
    movs r2, #1
    bl __9ToolStackG4ToolUi
    adds r5, #0x5c
    adds r0, r5, #0
    mov r1, sp
    movs r2, #2
    bl memcpy
    mov r1, sl
    ldr r0, [r1]
    ldr r2, [r0]
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r2, r3
    add r1, sp, #0x7c
    ldr r3, _0802FDB0 @ =0x000003DE
    movs r4, #0
    str r3, [sp, #0x7c]
    str r4, [r1, #4]
    ldr r3, [r2]
    movs r2, #0
    bl _call_via_r3
_0802FD9A:
    ldrb r0, [r7]
    cmp r0, #0xd
    bls _0802FDA4
    bl _08031C7C
_0802FDA4:
    lsls r0, r0, #2
    ldr r1, _0802FDB4 @ =_0802FDB8
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802FDB0: .4byte 0x000003DE
_0802FDB4: .4byte _0802FDB8
_0802FDB8: @ jump table
    .4byte _0802FDF0 @ case 0
    .4byte _0802FECA @ case 1
    .4byte _0802FFE8 @ case 2
    .4byte _080300E2 @ case 3
    .4byte _08030260 @ case 4
    .4byte _0803058C @ case 5
    .4byte _080309F0 @ case 6
    .4byte _08030AA6 @ case 7
    .4byte _0803080C @ case 8
    .4byte _08030BD6 @ case 9
    .4byte _08030C2A @ case 10
    .4byte _08030D08 @ case 11
    .4byte _08030DD4 @ case 12
    .4byte _08030B5A @ case 13
_0802FDF0:
    ldr r0, _0802FE14 @ =0x080F1230
    mov r4, sl
    str r0, [r4, #0x48]
    mov r1, sl
    adds r1, #0x4e
    movs r0, #1
    strb r0, [r1]
    mov r0, sl
    adds r0, #0x40
    ldrb r0, [r0]
    cmp r0, #6
    bhi _0802FEC4
    lsls r0, r0, #2
    ldr r1, _0802FE18 @ =_0802FE1C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0802FE14: .4byte 0x080F1230
_0802FE18: .4byte _0802FE1C
_0802FE1C: @ jump table
    .4byte _0802FE38 @ case 0
    .4byte _0802FE4C @ case 1
    .4byte _0802FE60 @ case 2
    .4byte _0802FE74 @ case 3
    .4byte _0802FE88 @ case 4
    .4byte _0802FE9C @ case 5
    .4byte _0802FEB0 @ case 6
_0802FE38:
    mov r0, sl
    adds r0, #0x4c
    movs r1, #3
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    mov r1, sl
    adds r1, #0x4f
    movs r0, #1
    b _0802FEC2
_0802FE4C:
    mov r1, sl
    adds r1, #0x4c
    movs r0, #2
    strb r0, [r1]
    adds r1, #1
    movs r0, #4
    strb r0, [r1]
    adds r1, #2
    movs r0, #1
    b _0802FEC2
_0802FE60:
    mov r1, sl
    adds r1, #0x4c
    movs r0, #0
    strb r0, [r1]
    adds r1, #1
    movs r0, #5
    strb r0, [r1]
    adds r1, #2
    movs r0, #1
    b _0802FEC2
_0802FE74:
    mov r1, sl
    adds r1, #0x4c
    movs r0, #0
    strb r0, [r1]
    adds r1, #1
    movs r0, #8
    strb r0, [r1]
    adds r1, #2
    movs r0, #1
    b _0802FEC2
_0802FE88:
    mov r1, sl
    adds r1, #0x4c
    movs r0, #0
    strb r0, [r1]
    adds r1, #1
    movs r0, #0x18
    strb r0, [r1]
    adds r1, #2
    movs r0, #2
    b _0802FEC2
_0802FE9C:
    mov r1, sl
    adds r1, #0x4c
    movs r0, #0
    strb r0, [r1]
    adds r1, #1
    movs r0, #0x50
    strb r0, [r1]
    adds r1, #2
    movs r0, #3
    b _0802FEC2
_0802FEB0:
    mov r1, sl
    adds r1, #0x4c
    movs r0, #0
    strb r0, [r1]
    adds r1, #1
    movs r0, #0xe0
    strb r0, [r1]
    adds r1, #2
    movs r0, #4
_0802FEC2:
    strb r0, [r1]
_0802FEC4:
    movs r0, #0x1c
    bl sub_08031A5E
_0802FECA:
    mov r0, sl
    adds r0, #0x40
    ldrb r1, [r0]
    str r0, [sp, #0x140]
    cmp r1, #4
    bls _0802FEF0
    mov r6, sl
    ldr r0, [r6]
    ldr r3, [r0]
    adds r3, #0xf0
    ldrh r1, [r6, #4]
    ldr r7, [sp, #0x140]
    ldrb r2, [r7]
    ldr r3, [r3]
    bl _call_via_r3
    ldr r1, [sp, #0x160]
    strb r0, [r1]
    b _0802FFAA
_0802FEF0:
    mov r2, sl
    movs r3, #0xa
    ldrsh r4, [r2, r3]
    movs r5, #0xe
    ldrsh r7, [r2, r5]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #1
    beq _0802FF18
    cmp r0, #1
    bgt _0802FF0E
    cmp r0, #0
    beq _0802FF1C
    b _0802FF26
_0802FF0E:
    cmp r0, #2
    beq _0802FF20
    cmp r0, #3
    beq _0802FF24
    b _0802FF26
_0802FF18:
    subs r7, #0x10
    b _0802FF26
_0802FF1C:
    adds r7, #0x10
    b _0802FF26
_0802FF20:
    subs r4, #0x10
    b _0802FF26
_0802FF24:
    adds r4, #0x10
_0802FF26:
    mov r6, sl
    ldr r0, [r6]
    ldr r1, [r0]
    adds r1, #0xd0
    str r1, [sp, #0x100]
    ldrh r2, [r6, #4]
    mov r6, sp
    ldr r1, _0802FFDC @ =0x000003FF
    mov sb, r1
    mov r3, sb
    ands r2, r3
    ldrh r3, [r6]
    ldr r5, _0802FFE0 @ =0xFFFFFC00
    adds r1, r5, #0
    ands r1, r3
    orrs r1, r2
    strh r1, [r6]
    lsls r4, r4, #0x10
    lsrs r2, r4, #0x10
    movs r1, #0x3f
    mov ip, r1
    ands r2, r1
    lsls r2, r2, #2
    str r2, [sp, #0x184]
    ldrb r2, [r6, #1]
    mov r8, r2
    movs r3, #3
    adds r1, r3, #0
    mov r2, r8
    ands r1, r2
    ldr r2, [sp, #0x184]
    orrs r1, r2
    strb r1, [r6, #1]
    lsrs r4, r4, #0x16
    mov r1, sb
    ands r4, r1
    ldrh r2, [r6, #2]
    adds r1, r5, #0
    ands r1, r2
    orrs r1, r4
    strh r1, [r6, #2]
    lsls r2, r7, #0x10
    lsrs r1, r2, #0x10
    mov r4, ip
    ands r1, r4
    lsls r1, r1, #2
    ldrb r4, [r6, #3]
    ands r3, r4
    orrs r3, r1
    strb r3, [r6, #3]
    lsrs r2, r2, #0x16
    mov r7, sb
    ands r2, r7
    ldrh r1, [r6, #4]
    ands r5, r1
    orrs r5, r2
    strh r5, [r6, #4]
    ldr r1, [sp, #0x140]
    ldrb r2, [r1]
    ldr r4, [sp, #0x100]
    ldr r3, [r4]
    mov r1, sp
    bl _call_via_r3
    ldr r5, [sp, #0x160]
    strb r0, [r5]
_0802FFAA:
    mov r6, sl
    ldr r0, [r6, #0x34]
    ldr r7, _0802FFE4 @ =0x000034C4
    adds r0, r0, r7
    ldrb r0, [r0]
    cmp r0, #0
    bne _0802FFD4
    ldr r0, [r6, #0x38]
    movs r1, #2
_0802FFBC:
    bl func_0800EB2C
    adds r2, r0, #0
    ldr r1, [sp, #0x160]
    ldrb r0, [r1]
    movs r1, #0x32
    cmp r0, #0
    beq _0802FFCE
    movs r1, #0x64
_0802FFCE:
    adds r0, r2, #0
    bl func_0800EF88
_0802FFD4:
    movs r0, #0
    bl _08031F0A
    .align 2, 0
_0802FFDC: .4byte 0x000003FF
_0802FFE0: .4byte 0xFFFFFC00
_0802FFE4: .4byte 0x000034C4
_0802FFE8:
    mov r1, sl
    adds r1, #0x4a
    movs r0, #0
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
    mov r0, sl
    adds r0, #0x40
    ldrb r0, [r0]
    cmp r0, #6
    bhi _080300DC
    lsls r0, r0, #2
    ldr r1, _08030008 @ =_0803000C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08030008: .4byte _0803000C
_0803000C: @ jump table
    .4byte _08030028 @ case 0
    .4byte _0803003A @ case 1
    .4byte _08030058 @ case 2
    .4byte _08030072 @ case 3
    .4byte _0803008E @ case 4
    .4byte _080300A8 @ case 5
    .4byte _080300C2 @ case 6
_08030028:
    mov r0, sl
    adds r0, #0x48
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #1
    strb r2, [r0]
    adds r0, #3
    b _08030086
_0803003A:
    mov r0, sl
    adds r0, #0x48
    movs r1, #1
    strb r1, [r0]
    mov r2, sl
    adds r2, #0x49
    movs r0, #0xff
    strb r0, [r2]
    mov r0, sl
    adds r0, #0x4c
    strb r1, [r0]
    mov r1, sl
    adds r1, #0x4d
    movs r0, #3
    b _080300DA
_08030058:
    mov r1, sl
    adds r1, #0x48
    movs r0, #1
    strb r0, [r1]
    adds r1, #1
    movs r0, #0xff
    strb r0, [r1]
    adds r1, #3
    movs r0, #2
    strb r0, [r1]
    adds r1, #1
    movs r0, #3
    b _080300DA
_08030072:
    mov r1, sl
    adds r1, #0x48
    movs r0, #1
    strb r0, [r1]
    adds r1, #1
    movs r0, #0xff
    strb r0, [r1]
    mov r0, sl
    adds r0, #0x4c
    movs r1, #3
_08030086:
    strb r1, [r0]
    adds r0, #1
    strb r1, [r0]
    b _080300DC
_0803008E:
    mov r1, sl
    adds r1, #0x48
    movs r0, #1
    strb r0, [r1]
    adds r1, #1
    movs r0, #0xfe
    strb r0, [r1]
    adds r1, #3
    movs r0, #3
    strb r0, [r1]
    adds r1, #1
    movs r0, #5
    b _080300DA
_080300A8:
    mov r1, sl
    adds r1, #0x48
    movs r0, #1
    strb r0, [r1]
    adds r1, #1
    movs r0, #0xfa
    strb r0, [r1]
    adds r1, #3
    movs r0, #6
    strb r0, [r1]
    adds r1, #1
    movs r0, #0xd
    b _080300DA
_080300C2:
    mov r1, sl
    adds r1, #0x48
    movs r0, #1
    strb r0, [r1]
    adds r1, #1
    movs r0, #0xf6
    strb r0, [r1]
    adds r1, #3
    movs r0, #0xc
    strb r0, [r1]
    adds r1, #1
    movs r0, #0x15
_080300DA:
    strb r0, [r1]
_080300DC:
    movs r0, #0x1a
    bl _08031E84
_080300E2:
    cmp r6, #0
    beq _080301C8
    mov r5, sl
    movs r6, #0xa
    ldrsh r4, [r5, r6]
    movs r0, #0xe
    ldrsh r7, [r5, r0]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    adds r1, r0, #0
    cmp r0, #1
    beq _08030110
    cmp r0, #1
    bgt _08030106
    cmp r0, #0
    beq _08030114
    b _0803011E
_08030106:
    cmp r1, #2
    beq _08030118
    cmp r1, #3
    beq _0803011C
    b _0803011E
_08030110:
    subs r7, #0x10
    b _0803011E
_08030114:
    adds r7, #0x10
    b _0803011E
_08030118:
    subs r4, #0x10
    b _0803011E
_0803011C:
    adds r4, #0x10
_0803011E:
    mov r1, sl
    ldr r0, [r1]
    ldr r1, [r0]
    adds r1, #0xc8
    str r1, [sp, #0x104]
    mov r3, sl
    ldrh r2, [r3, #4]
    mov r6, sp
    ldr r5, _080301BC @ =0x000003FF
    mov sb, r5
    mov r1, sb
    ands r2, r1
    ldrh r3, [r6]
    ldr r5, _080301C0 @ =0xFFFFFC00
    adds r1, r5, #0
    ands r1, r3
    orrs r1, r2
    strh r1, [r6]
    lsls r4, r4, #0x10
    lsrs r2, r4, #0x10
    movs r3, #0x3f
    mov ip, r3
    ands r2, r3
    lsls r2, r2, #2
    str r2, [sp, #0x184]
    ldrb r1, [r6, #1]
    mov r8, r1
    movs r3, #3
    adds r1, r3, #0
    mov r2, r8
    ands r1, r2
    ldr r2, [sp, #0x184]
    orrs r1, r2
    strb r1, [r6, #1]
    lsrs r4, r4, #0x16
    mov r1, sb
    ands r4, r1
    ldrh r2, [r6, #2]
    adds r1, r5, #0
    ands r1, r2
    orrs r1, r4
    strh r1, [r6, #2]
    lsls r2, r7, #0x10
    lsrs r1, r2, #0x10
    mov r4, ip
    ands r1, r4
    lsls r1, r1, #2
    ldrb r4, [r6, #3]
    ands r3, r4
    orrs r3, r1
    strb r3, [r6, #3]
    lsrs r2, r2, #0x16
    mov r7, sb
    ands r2, r7
    ldrh r1, [r6, #4]
    ands r5, r1
    orrs r5, r2
    strh r5, [r6, #4]
    add r4, sp, #0x84
    ldr r1, [sp, #0x104]
    ldr r3, [r1]
    mov r1, sp
    adds r2, r4, #0
    bl _call_via_r3
    ldr r2, [sp, #0x160]
    strb r0, [r2]
    mov r3, sl
    ldr r0, [r3, #0x34]
    ldr r5, _080301C4 @ =0x000034C4
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0
    beq _080301B4
    b _0803034C
_080301B4:
    ldr r0, [r3, #0x38]
    movs r1, #0
    b _08030334
    .align 2, 0
_080301BC: .4byte 0x000003FF
_080301C0: .4byte 0xFFFFFC00
_080301C4: .4byte 0x000034C4
_080301C8:
    mov r0, sl
    adds r0, #0x48
    strb r6, [r0]
    adds r0, #8
    movs r4, #0
    strh r6, [r0]
    adds r0, #2
    strb r4, [r0]
    mov r7, sl
    ldr r0, [r7]
    ldr r1, [r0]
    adds r1, #0xf4
    ldr r1, [r1]
    bl _call_via_r1
    ldr r1, _08030218 @ =0x080F1178
    mov r2, sl
    adds r2, #0x40
    ldrb r0, [r2]
    adds r0, r0, r1
    ldrb r0, [r0]
    mov r1, sl
    adds r1, #0x49
    strb r0, [r1]
    ldrb r0, [r2]
    cmp r0, #4
    bhi _0803021C
    mov r0, sl
    adds r0, #0x4a
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r0, #1
    movs r1, #1
    strb r1, [r0]
    adds r0, #1
    strb r4, [r0]
    adds r0, #1
    strb r4, [r0]
    b _0803025A
    .align 2, 0
_08030218: .4byte 0x080F1178
_0803021C:
    cmp r0, #5
    bhi _0803023E
    mov r0, sl
    adds r0, #0x4a
    strb r4, [r0]
    mov r1, sl
    adds r1, #0x4b
    movs r0, #1
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
    mov r0, sl
    adds r0, #0x4e
    strb r4, [r0]
    b _0803025A
_0803023E:
    cmp r0, #6
    bhi _0803025A
    mov r1, sl
    adds r1, #0x4a
    movs r0, #1
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
_0803025A:
    movs r0, #0x19
    bl _08031C7E
_08030260:
    cmp r6, #0
    bne _08030266
    b _08030364
_08030266:
    mov r2, sl
    movs r3, #0xa
    ldrsh r4, [r2, r3]
    movs r5, #0xe
    ldrsh r7, [r2, r5]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    adds r1, r0, #0
    cmp r0, #1
    beq _08030290
    cmp r0, #1
    bgt _08030286
    cmp r0, #0
    beq _08030294
    b _0803029E
_08030286:
    cmp r1, #2
    beq _08030298
    cmp r1, #3
    beq _0803029C
    b _0803029E
_08030290:
    subs r7, #0x10
    b _0803029E
_08030294:
    adds r7, #0x10
    b _0803029E
_08030298:
    subs r4, #0x10
    b _0803029E
_0803029C:
    adds r4, #0x10
_0803029E:
    mov r6, sl
    ldr r0, [r6]
    ldr r1, [r0]
    adds r1, #0xcc
    str r1, [sp, #0x108]
    ldrh r2, [r6, #4]
    mov r6, sp
    ldr r1, _08030358 @ =0x000003FF
    mov sb, r1
    mov r3, sb
    ands r2, r3
    ldrh r3, [r6]
    ldr r5, _0803035C @ =0xFFFFFC00
    adds r1, r5, #0
    ands r1, r3
    orrs r1, r2
    strh r1, [r6]
    lsls r4, r4, #0x10
    lsrs r2, r4, #0x10
    movs r1, #0x3f
    mov ip, r1
    ands r2, r1
    lsls r2, r2, #2
    str r2, [sp, #0x184]
    ldrb r2, [r6, #1]
    mov r8, r2
    movs r3, #3
    adds r1, r3, #0
    mov r2, r8
    ands r1, r2
    ldr r2, [sp, #0x184]
    orrs r1, r2
    strb r1, [r6, #1]
    lsrs r4, r4, #0x16
    mov r1, sb
    ands r4, r1
    ldrh r2, [r6, #2]
    adds r1, r5, #0
    ands r1, r2
    orrs r1, r4
    strh r1, [r6, #2]
    lsls r2, r7, #0x10
    lsrs r1, r2, #0x10
    mov r4, ip
    ands r1, r4
    lsls r1, r1, #2
    ldrb r4, [r6, #3]
    ands r3, r4
    orrs r3, r1
    strb r3, [r6, #3]
    lsrs r2, r2, #0x16
    mov r7, sb
    ands r2, r7
    ldrh r1, [r6, #4]
    ands r5, r1
    orrs r5, r2
    strh r5, [r6, #4]
    add r4, sp, #0x88
    ldr r1, [sp, #0x108]
    ldr r3, [r1]
    mov r1, sp
    adds r2, r4, #0
    bl _call_via_r3
    ldr r2, [sp, #0x160]
    strb r0, [r2]
    mov r3, sl
    ldr r0, [r3, #0x34]
    ldr r5, _08030360 @ =0x000034C4
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0
    bne _0803034C
    ldr r0, [r3, #0x38]
    movs r1, #3
_08030334:
    bl func_0800EB2C
    adds r2, r0, #0
    ldr r6, [sp, #0x160]
    ldrb r0, [r6]
    movs r1, #0x32
    cmp r0, #0
    beq _08030346
    movs r1, #0x64
_08030346:
    adds r0, r2, #0
    bl func_0800EF88
_0803034C:
    ldr r1, [r4]
    mov r0, sl
    bl func_08025B64
    bl _08031F0E
    .align 2, 0
_08030358: .4byte 0x000003FF
_0803035C: .4byte 0xFFFFFC00
_08030360: .4byte 0x000034C4
_08030364:
    mov r0, sl
    adds r0, #0x40
    ldrb r1, [r0]
    str r0, [sp, #0x140]
    cmp r1, #6
    bne _08030382
    mov r7, sl
    ldr r0, [r7]
    ldr r3, [r0]
    adds r3, #0xec
    ldrh r1, [r7, #4]
    ldr r4, [sp, #0x140]
    ldrb r2, [r4]
    ldr r3, [r3]
    b _08030560
_08030382:
    cmp r1, #5
    beq _08030388
    b _080304AC
_08030388:
    movs r1, #0
    mov r6, sl
    adds r6, #0x20
    str r6, [sp, #0x138]
    add r7, sp, #0x8c
    mov r8, r7
    mov r7, sp
    mov sb, r8
_08030398:
    movs r0, #0
    subs r2, r1, #4
    str r2, [sp, #0x12c]
    adds r1, #1
    str r1, [sp, #0x130]
    str r2, [sp, #0x10c]
_080303A4:
    adds r0, #1
    mov r3, r8
    str r0, [r3]
    ldr r4, [sp, #0x10c]
    mov r5, sb
    str r4, [r5, #4]
    ldr r6, [sp, #0x138]
    ldrb r1, [r6]
    str r0, [sp, #0x134]
    cmp r1, #1
    beq _080303D8
    cmp r1, #1
    bgt _080303C4
    cmp r1, #0
    beq _080303CA
    b _080303F4
_080303C4:
    cmp r1, #2
    beq _080303EA
    b _080303F4
_080303CA:
    mov r0, r8
    ldr r1, [r0]
    ldr r2, [sp, #0x10c]
    mov r3, sb
    str r2, [r3]
    str r1, [r3, #4]
    b _080303F4
_080303D8:
    mov r4, r8
    ldr r1, [r4]
    ldr r5, [sp, #0x12c]
    rsbs r0, r5, #0
    mov r6, sb
    str r0, [r6]
    rsbs r0, r1, #0
    str r0, [r6, #4]
    b _080303F4
_080303EA:
    mov r1, r8
    ldr r0, [r1]
    rsbs r0, r0, #0
    mov r2, sb
    str r0, [r2]
_080303F4:
    mov r3, sl
    ldr r0, [r3]
    ldr r6, [r0]
    adds r6, #0xc4
    mov ip, r6
    ldrh r4, [r3, #4]
    movs r5, #0xa
    ldrsh r1, [r3, r5]
    mov r6, r8
    ldr r3, [r6]
    mov r5, sl
    movs r6, #0xe
    ldrsh r2, [r5, r6]
    mov r6, sb
    ldr r5, [r6, #4]
    lsls r3, r3, #4
    adds r3, r3, r1
    lsls r5, r5, #4
    adds r5, r5, r2
    ldr r1, _080304A4 @ =0x000003FF
    ands r4, r1
    ldrh r2, [r7]
    ldr r1, _080304A8 @ =0xFFFFFC00
    ands r1, r2
    orrs r1, r4
    strh r1, [r7]
    lsls r3, r3, #0x10
    lsrs r2, r3, #0x10
    movs r4, #0x3f
    ands r2, r4
    lsls r2, r2, #2
    ldrb r4, [r7, #1]
    movs r1, #3
    ands r1, r4
    orrs r1, r2
    strb r1, [r7, #1]
    lsrs r3, r3, #0x16
    ldr r6, _080304A4 @ =0x000003FF
    ands r3, r6
    ldrh r2, [r7, #2]
    ldr r1, _080304A8 @ =0xFFFFFC00
    ands r1, r2
    orrs r1, r3
    strh r1, [r7, #2]
    lsls r5, r5, #0x10
    lsrs r2, r5, #0x10
    movs r1, #0x3f
    ands r2, r1
    lsls r2, r2, #2
    ldrb r3, [r7, #3]
    movs r1, #3
    ands r1, r3
    orrs r1, r2
    strb r1, [r7, #3]
    lsrs r5, r5, #0x16
    ands r5, r6
    ldrh r2, [r7, #4]
    ldr r1, _080304A8 @ =0xFFFFFC00
    ands r1, r2
    orrs r1, r5
    strh r1, [r7, #4]
    ldr r3, [sp, #0x140]
    ldrb r2, [r3]
    mov r4, ip
    ldr r3, [r4]
    mov r1, sp
    bl _call_via_r3
    ldr r5, [sp, #0x160]
    ldrb r1, [r5]
    rsbs r2, r1, #0
    orrs r2, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    rsbs r1, r0, #0
    orrs r1, r0
    orrs r1, r2
    lsrs r1, r1, #0x1f
    strb r1, [r5]
    ldr r0, [sp, #0x134]
    cmp r0, #8
    ble _080303A4
    ldr r1, [sp, #0x130]
    cmp r1, #8
    bgt _080304A0
    b _08030398
_080304A0:
    b _08030568
    .align 2, 0
_080304A4: .4byte 0x000003FF
_080304A8: .4byte 0xFFFFFC00
_080304AC:
    mov r6, sl
    movs r7, #0xa
    ldrsh r4, [r6, r7]
    movs r0, #0xe
    ldrsh r7, [r6, r0]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #1
    beq _080304D4
    cmp r0, #1
    bgt _080304CA
    cmp r0, #0
    beq _080304D8
    b _080304E2
_080304CA:
    cmp r0, #2
    beq _080304DC
    cmp r0, #3
    beq _080304E0
    b _080304E2
_080304D4:
    subs r7, #0x10
    b _080304E2
_080304D8:
    adds r7, #0x10
    b _080304E2
_080304DC:
    subs r4, #0x10
    b _080304E2
_080304E0:
    adds r4, #0x10
_080304E2:
    mov r1, sl
    ldr r0, [r1]
    ldr r1, [r0]
    adds r1, #0xc4
    str r1, [sp, #0x110]
    mov r3, sl
    ldrh r2, [r3, #4]
    mov r6, sp
    ldr r5, _08030580 @ =0x000003FF
    mov sb, r5
    mov r1, sb
    ands r2, r1
    ldrh r3, [r6]
    ldr r5, _08030584 @ =0xFFFFFC00
    adds r1, r5, #0
    ands r1, r3
    orrs r1, r2
    strh r1, [r6]
    lsls r4, r4, #0x10
    lsrs r2, r4, #0x10
    movs r3, #0x3f
    mov ip, r3
    ands r2, r3
    lsls r2, r2, #2
    str r2, [sp, #0x184]
    ldrb r1, [r6, #1]
    mov r8, r1
    movs r3, #3
    adds r1, r3, #0
    mov r2, r8
    ands r1, r2
    ldr r2, [sp, #0x184]
    orrs r1, r2
    strb r1, [r6, #1]
    lsrs r4, r4, #0x16
    mov r1, sb
    ands r4, r1
    ldrh r2, [r6, #2]
    adds r1, r5, #0
    ands r1, r2
    orrs r1, r4
    strh r1, [r6, #2]
    lsls r2, r7, #0x10
    lsrs r1, r2, #0x10
    mov r4, ip
    ands r1, r4
    lsls r1, r1, #2
    ldrb r4, [r6, #3]
    ands r3, r4
    orrs r3, r1
    strb r3, [r6, #3]
    lsrs r2, r2, #0x16
    mov r7, sb
    ands r2, r7
    ldrh r1, [r6, #4]
    ands r5, r1
    orrs r5, r2
    strh r5, [r6, #4]
    ldr r1, [sp, #0x140]
    ldrb r2, [r1]
    ldr r4, [sp, #0x110]
    ldr r3, [r4]
    mov r1, sp
_08030560:
    bl _call_via_r3
    ldr r5, [sp, #0x160]
    strb r0, [r5]
_08030568:
    mov r6, sl
    ldr r0, [r6, #0x34]
    ldr r7, _08030588 @ =0x000034C4
    adds r0, r0, r7
    ldrb r0, [r0]
    cmp r0, #0
    beq _08030578
    b _0802FFD4
_08030578:
    ldr r0, [r6, #0x38]
    movs r1, #3
    b _0802FFBC
    .align 2, 0
_08030580: .4byte 0x000003FF
_08030584: .4byte 0xFFFFFC00
_08030588: .4byte 0x000034C4
_0803058C:
    mov r2, sl
    adds r2, #0x88
    ldr r0, [r2, #4]
    ldr r1, [r2, #0xc]
    adds r0, r0, r1
    str r0, [r2, #4]
    ldr r0, [r2, #8]
    ldr r1, [r2, #0x10]
    adds r0, r0, r1
    str r0, [r2, #8]
    ldr r0, [r2, #0x18]
    ldr r3, _080305B4 @ =0xFFFFC7D7
    adds r0, r0, r3
    str r0, [r2, #0x18]
    ldr r1, [r2, #0x14]
    adds r1, r1, r0
    cmp r1, #0
    ble _080305B8
    str r1, [r2, #0x14]
    b _080305BE
    .align 2, 0
_080305B4: .4byte 0xFFFFC7D7
_080305B8:
    movs r0, #0
    str r0, [r2, #0x14]
    str r0, [r2, #0x18]
_080305BE:
    mov r4, sl
    ldrh r4, [r4, #4]
    str r4, [sp, #0x114]
    mov r5, sl
    movs r6, #0xa
    ldrsh r5, [r5, r6]
    mov r8, r5
    mov r7, sl
    movs r0, #0xe
    ldrsh r6, [r7, r0]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    adds r1, r0, #0
    cmp r0, #1
    beq _080305F6
    cmp r0, #1
    bgt _080305E8
    cmp r0, #0
    beq _080305F2
    b _08030606
_080305E8:
    cmp r1, #2
    beq _080305FA
    cmp r1, #3
    beq _08030602
    b _08030606
_080305F2:
    adds r6, #0x30
    b _08030606
_080305F6:
    subs r6, #0x30
    b _08030606
_080305FA:
    movs r1, #0x30
    rsbs r1, r1, #0
    add r8, r1
    b _08030606
_08030602:
    movs r2, #0x30
    add r8, r2
_08030606:
    mov r3, sl
    ldr r3, [r3]
    mov sb, r3
    ldr r1, [r3]
    mov r0, sp
    ldr r3, [r1, #0x34]
    mov r1, sb
    ldr r2, [sp, #0x114]
    bl _call_via_r3
    mov r1, sp
    mov r5, r8
    asrs r4, r5, #3
    asrs r3, r6, #3
    ldr r2, [sp]
    ldrh r0, [r1, #8]
    cmp r2, #0
    beq _0803064C
    cmp r4, r0
    bhi _0803064C
    ldrh r1, [r1, #0xa]
    cmp r3, r1
    bhi _0803064C
    ldr r1, [sp, #4]
    muls r0, r3, r0
    adds r0, r0, r4
    cmp r1, #0
    beq _08030642
    adds r0, r1, r0
    ldrb r0, [r0]
_08030642:
    lsls r0, r0, #2
    adds r0, r2, r0
    b _0803064E
_08030648:
    ldr r0, [r4]
    b _080306B0
_0803064C:
    movs r0, #0
_0803064E:
    cmp r0, #0
    bne _08030654
    b _080307D8
_08030654:
    ldr r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt _0803065E
    b _080307D8
_0803065E:
    mov r7, sb
    ldr r0, [r7]
    movs r1, #0xa6
    lsls r1, r1, #1
    adds r0, r0, r1
    ldr r1, [r0]
    mov r0, sb
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    mov r2, sl
    adds r2, #0x54
    str r2, [sp, #0x158]
    add r7, sp, #0x10
    mov r3, r8
    lsls r3, r3, #0x10
    str r3, [sp, #0x16c]
    lsls r6, r6, #0x10
    str r6, [sp, #0x170]
    mov r6, sp
    adds r6, #0x94
    str r6, [sp, #0x164]
    add r0, sp, #0x18
    mov r8, r0
    mov r1, sl
    adds r1, #0x60
    str r1, [sp, #0x15c]
    cmp r4, r5
    beq _080306AC
_0803069A:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08030648
    adds r4, #4
    cmp r4, r5
    bne _0803069A
_080306AC:
    subs r0, r5, #4
    ldr r0, [r0]
_080306B0:
    movs r1, #0x6d
    bl func_08008B6C
    movs r6, #0
    ldr r2, [sp, #0x158]
    strh r6, [r2]
    ldr r3, _080307B0 @ =0x000003FF
    adds r4, r3, #0
    ldr r5, [sp, #0x114]
    ands r5, r4
    ldrh r1, [r7]
    ldr r3, _080307B4 @ =0xFFFFFC00
    adds r0, r3, #0
    ands r0, r1
    orrs r0, r5
    strh r0, [r7]
    ldr r0, [sp, #0x16c]
    lsrs r1, r0, #0x10
    movs r5, #0x3f
    ands r1, r5
    lsls r1, r1, #2
    ldrb r2, [r7, #1]
    movs r0, #3
    ands r0, r2
    orrs r0, r1
    strb r0, [r7, #1]
    ldr r2, [sp, #0x16c]
    lsrs r1, r2, #0x16
    ands r1, r4
    ldrh r2, [r7, #2]
    adds r0, r3, #0
    ands r0, r2
    orrs r0, r1
    strh r0, [r7, #2]
    ldr r0, [sp, #0x170]
    lsrs r1, r0, #0x10
    ands r1, r5
    lsls r1, r1, #2
    ldrb r2, [r7, #3]
    movs r0, #3
    ands r0, r2
    orrs r0, r1
    strb r0, [r7, #3]
    ldr r1, [sp, #0x170]
    lsrs r0, r1, #0x16
    ands r0, r4
    ldrh r1, [r7, #4]
    ands r3, r1
    orrs r3, r0
    strh r3, [r7, #4]
    mov r2, sb
    ldr r0, [r2]
    movs r3, #0xa2
    lsls r3, r3, #1
    adds r0, r0, r3
    ldr r1, [r0]
    mov r0, sb
    bl _call_via_r1
    adds r2, r0, #0
    adds r2, #0xa
    ldr r0, [sp, #0x164]
    adds r1, r7, #0
    bl func_080A3E90
    add r0, sp, #0x94
    ldr r1, [r0, #4]
    ldr r0, [r0]
    mov r4, sl
    str r0, [r4, #0x58]
    str r1, [r4, #0x5c]
    ldr r0, _080307B8 @ =0x080F0E80
    str r0, [sp, #0x18]
    mov r5, r8
    strh r6, [r5, #4]
    add r0, sp, #0x20
    bl __12RucksackItem
    strb r6, [r5, #0xc]
    strb r6, [r5, #0xd]
    movs r0, #0x3b
    str r0, [r5, #0x10]
    strb r6, [r5, #0x14]
    ldr r1, [sp, #0x15c]
    mov r0, r8
    ldm r0!, {r2, r3, r7}
    stm r1!, {r2, r3, r7}
    ldm r0!, {r4, r5, r6}
    stm r1!, {r4, r5, r6}
    mov r7, sl
    ldr r0, [r7, #0x5c]
    cmp r0, #0
    bne _080307C4
    ldr r0, [r7, #0x34]
    ldr r1, _080307BC @ =0x0000218B
    adds r0, r0, r1
    ldrb r0, [r0]
    movs r4, #3
    ands r4, r0
    cmp r4, #0
    bne _080307C4
    bl rand
    asrs r0, r0, #4
    movs r1, #0xff
    ands r0, r1
    cmp r0, #1
    bgt _080307C4
    mov r3, sb
    ldr r2, [r3]
    movs r5, #0xa0
    lsls r5, r5, #1
    adds r2, r2, r5
    add r1, sp, #0x9c
    ldr r0, _080307C0 @ =0x00000331
    str r0, [r1]
    str r4, [r1, #4]
    ldr r3, [r2]
    mov r0, sb
    movs r2, #0
    bl _call_via_r3
    movs r7, #0
    ldr r6, [sp, #0x13c]
    strb r7, [r6]
    bl _08031D78
    .align 2, 0
_080307B0: .4byte 0x000003FF
_080307B4: .4byte 0xFFFFFC00
_080307B8: .4byte 0x080F0E80
_080307BC: .4byte 0x0000218B
_080307C0: .4byte 0x00000331
_080307C4:
    movs r0, #0x1e
    ldr r1, [sp, #0x13c]
    strb r0, [r1]
    mov r0, sl
    movs r1, #0xa0
    movs r2, #0
    bl func_0802A4C0
    bl _08031F0E
_080307D8:
    add r4, sp, #0x10
    ldr r0, _08030808 @ =0x080F0E80
    str r0, [sp, #0x10]
    movs r5, #0
    movs r0, #0
    strh r0, [r4, #4]
    add r0, sp, #0x18
    bl __12RucksackItem
    strb r5, [r4, #0xc]
    strb r5, [r4, #0xd]
    movs r0, #0x3b
    str r0, [r4, #0x10]
    strb r5, [r4, #0x14]
    mov r0, sl
    adds r0, #0x60
    ldm r4!, {r2, r3, r5}
    stm r0!, {r2, r3, r5}
    ldm r4!, {r1, r6, r7}
    stm r0!, {r1, r6, r7}
    movs r0, #0x20
    ldr r2, [sp, #0x13c]
    strb r0, [r2]
    b _08030F4C
    .align 2, 0
_08030808: .4byte 0x080F0E80
_0803080C:
    mov r3, sl
    ldr r4, [r3, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    add r0, sp, #0xa4
    strb r1, [r0]
    bl GetId__C4Tool
    cmp r0, #0x44
    bne _08030908
    movs r0, #0
    mov r4, sp
    adds r4, #0xa5
    str r4, [sp, #0x168]
    mov r7, sp
_08030838:
    movs r5, #0
    mov sb, r5
    lsls r6, r0, #4
    str r6, [sp, #0x178]
    adds r0, #1
    str r0, [sp, #0x174]
_08030844:
    mov r0, sl
    ldr r4, [r0, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    ldr r1, [sp, #0x168]
    strb r0, [r1]
    mov r0, sp
    adds r0, #0xa5
    bl GetId__C4Tool
    bl func_080245E0
    adds r2, r0, #0
    mov r3, sl
    ldr r0, [r3]
    ldr r4, [r0]
    mov r8, r4
    movs r5, #0xdc
    add r8, r5
    ldrh r5, [r3, #4]
    movs r6, #0xa
    ldrsh r1, [r3, r6]
    movs r4, #0xe
    ldrsh r6, [r3, r4]
    mov r3, sb
    lsls r4, r3, #4
    adds r4, r4, r1
    subs r4, #0x10
    ldr r1, [sp, #0x178]
    adds r6, r1, r6
    subs r6, #0x10
    ldr r3, _08030900 @ =0x000003FF
    ands r5, r3
    ldrh r3, [r7]
    ldr r1, _08030904 @ =0xFFFFFC00
    ands r1, r3
    orrs r1, r5
    strh r1, [r7]
    lsls r4, r4, #0x10
    lsrs r3, r4, #0x10
    movs r5, #0x3f
    ands r3, r5
    lsls r3, r3, #2
    ldrb r5, [r7, #1]
    movs r1, #3
    ands r1, r5
    orrs r1, r3
    strb r1, [r7, #1]
    lsrs r4, r4, #0x16
    ldr r1, _08030900 @ =0x000003FF
    ands r4, r1
    ldrh r3, [r7, #2]
    ldr r1, _08030904 @ =0xFFFFFC00
    ands r1, r3
    orrs r1, r4
    strh r1, [r7, #2]
    lsls r6, r6, #0x10
    lsrs r3, r6, #0x10
    movs r4, #0x3f
    ands r3, r4
    lsls r3, r3, #2
    ldrb r4, [r7, #3]
    movs r1, #3
    ands r1, r4
    orrs r1, r3
    strb r1, [r7, #3]
    lsrs r6, r6, #0x16
    ldr r5, _08030900 @ =0x000003FF
    ands r6, r5
    ldrh r3, [r7, #4]
    ldr r1, _08030904 @ =0xFFFFFC00
    ands r1, r3
    orrs r1, r6
    strh r1, [r7, #4]
    mov r6, r8
    ldr r3, [r6]
    mov r1, sp
    bl _call_via_r3
    movs r0, #1
    add sb, r0
    mov r1, sb
    cmp r1, #2
    ble _08030844
    ldr r0, [sp, #0x174]
    cmp r0, #2
    ble _08030838
    b _080309D6
    .align 2, 0
_08030900: .4byte 0x000003FF
_08030904: .4byte 0xFFFFFC00
_08030908:
    mov r2, sl
    ldr r4, [r2, #0x38]
    adds r0, r4, #0
    adds r0, #0x5c
    bl GetTool__C9ToolStack
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_0800E550
    adds r1, r0, #0
    mov r0, sp
    adds r0, #0xa6
    strb r1, [r0]
    bl GetId__C4Tool
    bl func_080245E0
    str r0, [sp, #0x118]
    movs r0, #0
    mov r7, sp
    ldr r3, _080309E8 @ =0x000003FF
    mov sb, r3
_08030936:
    movs r4, #0
    mov r8, r4
    lsls r5, r0, #4
    str r5, [sp, #0x180]
    adds r0, #1
    str r0, [sp, #0x17c]
_08030942:
    mov r6, sl
    ldr r0, [r6]
    ldr r6, [r0]
    adds r6, #0xdc
    mov r1, sl
    ldrh r4, [r1, #4]
    movs r2, #0xa
    ldrsh r1, [r1, r2]
    mov r3, sl
    movs r2, #0xe
    ldrsh r5, [r3, r2]
    mov r2, r8
    lsls r3, r2, #4
    adds r3, r3, r1
    subs r3, #0x10
    ldr r1, [sp, #0x180]
    adds r5, r1, r5
    subs r5, #0x10
    mov r2, sb
    ands r4, r2
    ldrh r2, [r7]
    ldr r1, _080309EC @ =0xFFFFFC00
    ands r1, r2
    orrs r1, r4
    strh r1, [r7]
    lsls r3, r3, #0x10
    lsrs r2, r3, #0x10
    movs r4, #0x3f
    ands r2, r4
    lsls r2, r2, #2
    ldrb r4, [r7, #1]
    movs r1, #3
    ands r1, r4
    orrs r1, r2
    strb r1, [r7, #1]
    lsrs r3, r3, #0x16
    mov r1, sb
    ands r3, r1
    ldrh r2, [r7, #2]
    ldr r1, _080309EC @ =0xFFFFFC00
    ands r1, r2
    orrs r1, r3
    strh r1, [r7, #2]
    lsls r5, r5, #0x10
    lsrs r2, r5, #0x10
    movs r3, #0x3f
    ands r2, r3
    lsls r2, r2, #2
    ldrb r3, [r7, #3]
    movs r1, #3
    ands r1, r3
    orrs r1, r2
    strb r1, [r7, #3]
    lsrs r5, r5, #0x16
    mov r4, sb
    ands r5, r4
    ldrh r2, [r7, #4]
    ldr r1, _080309EC @ =0xFFFFFC00
    ands r1, r2
    orrs r1, r5
    strh r1, [r7, #4]
    ldr r3, [r6]
    mov r1, sp
    ldr r2, [sp, #0x118]
    bl _call_via_r3
    movs r5, #1
    add r8, r5
    mov r6, r8
    cmp r6, #2
    ble _08030942
    ldr r0, [sp, #0x17c]
    cmp r0, #2
    ble _08030936
_080309D6:
    mov r7, sl
    ldr r0, [r7, #0x38]
    adds r0, #0x5c
    movs r1, #1
    bl SubtractAmount__9ToolStackUi
    bl _08031C7C
    .align 2, 0
_080309E8: .4byte 0x000003FF
_080309EC: .4byte 0xFFFFFC00
_080309F0:
    movs r2, #3
    mov r8, r2
    mov r1, sl
    adds r1, #0xb2
    ldrb r3, [r1]
    movs r2, #0
    adds r0, r3, #0
    subs r0, #0x2b
    adds r4, r1, #0
    cmp r0, #0x1a
    bhi _08030A08
    movs r2, #1
_08030A08:
    cmp r2, #0
    beq _08030A1E
    mov r5, sl
    ldr r0, [r5]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r3, #0
    bl _call_via_r2
    adds r5, r0, #0
    b _08030A20
_08030A1E:
    movs r5, #0
_08030A20:
    cmp r5, #0
    beq _08030A74
    ldr r0, [r5, #0x14]
    ldr r1, [r0, #0x48]
    adds r0, r5, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08030A74
    mov r6, sl
    ldr r0, [r6, #0x34]
    movs r7, #0xbe
    lsls r7, r7, #3
    adds r0, r0, r7
    bl GetFreePregnancyStall__C4Barn
    adds r6, r0, #0
    cmp r6, #0
    blt _08030A74
    ldrb r0, [r4]
    adds r4, r0, #0
    subs r4, #0x36
    cmp r4, #0xf
    bhi _08030A74
    ldr r0, [r5, #0x14]
    ldr r1, [r0, #0x68]
    adds r0, r5, #0
    bl _call_via_r1
    mov r1, sl
    ldr r0, [r1, #0x34]
    adds r0, r0, r7
    adds r1, r6, #0
    adds r2, r4, #0
    bl MoveToPregnancyStall__4BarnUiUi
    mov r0, sl
    adds r0, #0xb1
    strb r4, [r0]
    movs r2, #1
    mov r8, r2
_08030A74:
    mov r3, sl
    ldr r0, [r3]
    ldr r2, [r0]
    movs r4, #0xa0
    lsls r4, r4, #1
    adds r2, r2, r4
    add r1, sp, #0xa8
    movs r4, #0
    mov r5, r8
    str r5, [r1]
    str r4, [r1, #4]
    ldr r3, [r2]
    movs r2, #0
    bl _call_via_r3
    mov r6, sl
    ldr r0, [r6, #0x38]
    adds r0, #0x5c
    movs r1, #1
    bl SubtractAmount__9ToolStackUi
    ldr r7, [sp, #0x13c]
    strb r4, [r7]
    bl _08031F0E
_08030AA6:
    movs r0, #3
    mov r8, r0
    mov r1, sl
    adds r1, #0xb2
    ldrb r3, [r1]
    movs r2, #0
    adds r0, r3, #0
    subs r0, #0x2b
    adds r4, r1, #0
    cmp r0, #0x1a
    bhi _08030ABE
    movs r2, #1
_08030ABE:
    cmp r2, #0
    beq _08030AD4
    mov r1, sl
    ldr r0, [r1]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r3, #0
    bl _call_via_r2
    adds r5, r0, #0
    b _08030AD6
_08030AD4:
    movs r5, #0
_08030AD6:
    cmp r5, #0
    beq _08030B2A
    ldr r0, [r5, #0x14]
    ldr r1, [r0, #0x4c]
    adds r0, r5, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08030B2A
    mov r2, sl
    ldr r0, [r2, #0x34]
    movs r7, #0xbe
    lsls r7, r7, #3
    adds r0, r0, r7
    bl GetFreePregnancyStall__C4Barn
    adds r6, r0, #0
    cmp r6, #0
    blt _08030B2A
    ldrb r0, [r4]
    adds r4, r0, #0
    subs r4, #0x36
    cmp r4, #0xf
    bhi _08030B2A
    ldr r0, [r5, #0x14]
    ldr r1, [r0, #0x6c]
    adds r0, r5, #0
    bl _call_via_r1
    mov r3, sl
    ldr r0, [r3, #0x34]
    adds r0, r0, r7
    adds r1, r6, #0
    adds r2, r4, #0
    bl MoveToPregnancyStall__4BarnUiUi
    mov r0, sl
    adds r0, #0xb1
    strb r4, [r0]
    movs r4, #1
    mov r8, r4
_08030B2A:
    mov r5, sl
    ldr r0, [r5]
    ldr r2, [r0]
    movs r6, #0xa0
    lsls r6, r6, #1
    adds r2, r2, r6
    add r1, sp, #0xb0
    movs r4, #0
    mov r7, r8
    str r7, [r1]
    str r4, [r1, #4]
    ldr r3, [r2]
    movs r2, #0
    bl _call_via_r3
    ldr r0, [r5, #0x38]
    adds r0, #0x5c
    movs r1, #1
    bl SubtractAmount__9ToolStackUi
    ldr r0, [sp, #0x13c]
    strb r4, [r0]
    bl _08031F0E
_08030B5A:
    movs r5, #3
    mov r0, sl
    adds r0, #0xb2
    ldrb r3, [r0]
    movs r1, #0
    adds r0, r3, #0
    subs r0, #0x2b
    cmp r0, #0x1a
    bhi _08030B6E
    movs r1, #1
_08030B6E:
    cmp r1, #0
    beq _08030B84
    mov r1, sl
    ldr r0, [r1]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r3, #0
    bl _call_via_r2
    adds r4, r0, #0
    b _08030B86
_08030B84:
    movs r4, #0
_08030B86:
    cmp r4, #0
    beq _08030BA6
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x5c]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08030BA6
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x7c]
    adds r0, r4, #0
    bl _call_via_r1
    movs r5, #2
_08030BA6:
    mov r2, sl
    ldr r0, [r2]
    ldr r2, [r0]
    movs r3, #0xa0
    lsls r3, r3, #1
    adds r2, r2, r3
    add r1, sp, #0xb8
    movs r4, #0
    str r5, [r1]
    str r4, [r1, #4]
    ldr r3, [r2]
    movs r2, #0
    bl _call_via_r3
    mov r5, sl
    ldr r0, [r5, #0x38]
    adds r0, #0x5c
    movs r1, #1
    bl SubtractAmount__9ToolStackUi
    ldr r6, [sp, #0x13c]
    strb r4, [r6]
    bl _08031F0E
_08030BD6:
    mov r0, sl
    adds r0, #0xb2
    ldrb r3, [r0]
    movs r1, #0
    adds r0, r3, #0
    subs r0, #0x2b
    cmp r0, #0x1a
    bhi _08030BE8
    movs r1, #1
_08030BE8:
    cmp r1, #0
    beq _08030BFE
    mov r7, sl
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r3, #0
    bl _call_via_r2
    adds r4, r0, #0
    b _08030C00
_08030BFE:
    movs r4, #0
_08030C00:
    cmp r4, #0
    bne _08030C08
    bl _08031C7C
_08030C08:
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x50]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08030C1C
    bl _08031C7C
_08030C1C:
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x70]
    adds r0, r4, #0
    bl _call_via_r1
    bl _08031C7C
_08030C2A:
    mov r0, sl
    adds r0, #0xb2
    ldrb r3, [r0]
    movs r1, #0
    adds r0, r3, #0
    subs r0, #0x2b
    cmp r0, #0x1a
    bhi _08030C3C
    movs r1, #1
_08030C3C:
    cmp r1, #0
    beq _08030C52
    mov r2, sl
    ldr r0, [r2]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r3, #0
    bl _call_via_r2
    adds r4, r0, #0
    b _08030C54
_08030C52:
    movs r4, #0
_08030C54:
    cmp r4, #0
    beq _08030CEA
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x54]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08030CEA
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x74]
    adds r0, r4, #0
    bl _call_via_r1
    movs r1, #0x1c
    cmp r0, #5
    bhi _08030CB6
    lsls r0, r0, #2
    ldr r1, _08030C84 @ =_08030C88
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08030C84: .4byte _08030C88
_08030C88: @ jump table
    .4byte _08030CA0 @ case 0
    .4byte _08030CA4 @ case 1
    .4byte _08030CA8 @ case 2
    .4byte _08030CAC @ case 3
    .4byte _08030CB0 @ case 4
    .4byte _08030CB4 @ case 5
_08030CA0:
    movs r1, #0x1c
    b _08030CB6
_08030CA4:
    movs r1, #0x1d
    b _08030CB6
_08030CA8:
    movs r1, #0x1e
    b _08030CB6
_08030CAC:
    movs r1, #0x1f
    b _08030CB6
_08030CB0:
    movs r1, #0x20
    b _08030CB6
_08030CB4:
    movs r1, #0x21
_08030CB6:
    mov r3, sl
    ldr r5, [r3, #0x14]
    add r4, sp, #4
    adds r0, r4, #0
    bl __4FoodUi
    ldrb r1, [r4]
    mov r0, sp
    adds r0, #5
    ldrb r0, [r0]
    lsls r0, r0, #8
    orrs r0, r1
    mov r1, sp
    adds r1, #6
    ldrb r1, [r1]
    lsls r1, r1, #0x10
    orrs r1, r0
    mov r0, sp
    bl __12RucksackItemG4Food
    ldr r3, [r5, #0x5c]
    mov r0, sl
    mov r1, sp
    movs r2, #0
    bl _call_via_r3
_08030CEA:
    mov r4, sl
    ldr r0, [r4, #0x34]
    ldr r5, _08030D04 @ =0x00001C2C
    adds r0, r0, r5
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08030D00
    bl _08031F0E
_08030D00:
    bl _08031D92
    .align 2, 0
_08030D04: .4byte 0x00001C2C
_08030D08:
    mov r0, sl
    adds r0, #0xb2
    ldrb r3, [r0]
    movs r1, #0
    adds r0, r3, #0
    subs r0, #0x2b
    cmp r0, #0x1a
    bhi _08030D1A
    movs r1, #1
_08030D1A:
    cmp r1, #0
    beq _08030D30
    mov r7, sl
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r3, #0
    bl _call_via_r2
    adds r4, r0, #0
    b _08030D32
_08030D30:
    movs r4, #0
_08030D32:
    cmp r4, #0
    beq _08030DB2
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x58]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08030DB2
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x78]
    adds r0, r4, #0
    bl _call_via_r1
    movs r1, #5
    cmp r0, #5
    bhi _08030D92
    lsls r0, r0, #2
    ldr r1, _08030D60 @ =_08030D64
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08030D60: .4byte _08030D64
_08030D64: @ jump table
    .4byte _08030D7C @ case 0
    .4byte _08030D80 @ case 1
    .4byte _08030D84 @ case 2
    .4byte _08030D88 @ case 3
    .4byte _08030D8C @ case 4
    .4byte _08030D90 @ case 5
_08030D7C:
    movs r1, #5
    b _08030D92
_08030D80:
    movs r1, #6
    b _08030D92
_08030D84:
    movs r1, #7
    b _08030D92
_08030D88:
    movs r1, #8
    b _08030D92
_08030D8C:
    movs r1, #9
    b _08030D92
_08030D90:
    movs r1, #0xa
_08030D92:
    mov r0, sl
    ldr r5, [r0, #0x14]
    add r4, sp, #0xc0
    adds r0, r4, #0
    bl __7ArticleUi
    ldrb r1, [r4]
    mov r0, sp
    bl __12RucksackItemG7Article
    ldr r3, [r5, #0x5c]
    mov r0, sl
    mov r1, sp
    movs r2, #0
    bl _call_via_r3
_08030DB2:
    mov r1, sl
    ldr r0, [r1, #0x34]
    ldr r2, _08030DD0 @ =0x00001C2C
    adds r0, r0, r2
    bl func_0800F190
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08030DC8
    bl _08031F0E
_08030DC8:
    movs r0, #0
    bl _08031E84
    .align 2, 0
_08030DD0: .4byte 0x00001C2C
_08030DD4:
    mov r0, sp
    mov r1, sl
    bl func_0801FE94
    mov r5, sp
    movs r4, #0x2b
_08030DE0:
    mov r6, sl
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r4, #0
    bl _call_via_r2
    adds r1, r0, #0
    cmp r1, #0
    beq _08030E00
    ldr r0, [r1, #0x14]
    ldr r2, [r0, #0x3c]
    adds r0, r1, #0
    adds r1, r5, #0
    bl _call_via_r2
_08030E00:
    adds r4, #1
    cmp r4, #0x45
    bls _08030DE0
    bl sub_0803192E

    non_word_aligned_thumb_func_start sub_08030E0A
sub_08030E0A: @ 0x08030E0A
    mov r0, sl
    adds r0, #0x3f
    ldrb r0, [r0]
    cmp r0, #5
    beq _08030E18
    bl _08031F0E
_08030E18:
    mov r2, sl
    adds r2, #0x88
    ldr r0, [r2, #4]
    ldr r1, [r2, #0xc]
    adds r0, r0, r1
    str r0, [r2, #4]
    ldr r0, [r2, #8]
    ldr r1, [r2, #0x10]
    adds r0, r0, r1
    str r0, [r2, #8]
    ldr r0, [r2, #0x18]
    ldr r4, _08030E44 @ =0xFFFFC7D7
    adds r0, r0, r4
    str r0, [r2, #0x18]
    ldr r1, [r2, #0x14]
    adds r1, r1, r0
    cmp r1, #0
    ble _08030E48
    str r1, [r2, #0x14]
    bl _08031F0E
    .align 2, 0
_08030E44: .4byte 0xFFFFC7D7
_08030E48:
    str r3, [r2, #0x14]
    str r3, [r2, #0x18]
    bl _08031F0E
_08030E50:
    mov r0, sl
    adds r0, #0xc3
    ldrb r0, [r0]
    cmp r0, #0
    bne _08030F46
    cmp r4, #0
    beq _08030E70
    ldrh r0, [r4, #4]
    movs r1, #2
    ands r0, r1
    cmp r0, #0
    beq _08030E70
    movs r0, #0x20
    ldr r6, [sp, #0x13c]
    strb r0, [r6]
    b _08030F4C
_08030E70:
    mov r2, sl
    adds r2, #0x58
    ldrh r0, [r2]
    cmp r0, #0
    bne _08030E7E
    bl _08031F0E
_08030E7E:
    mov r1, sl
    adds r1, #0x54
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r2, [r2]
    cmp r0, r2
    beq _08030E96
    bl _08031F0E
_08030E96:
    movs r0, #0
    strh r0, [r1]
    mov r0, sl
    adds r0, #0x40
    ldrb r0, [r0]
    movs r4, #0x1e
    cmp r0, #6
    bne _08030EA8
    movs r4, #0x3c
_08030EA8:
    bl rand
    asrs r0, r0, #2
    movs r1, #0x64
    bl __modsi3
    cmp r0, r4
    ble _08030EBC
    bl _08031F0E
_08030EBC:
    movs r0, #0x1f
    ldr r7, [sp, #0x13c]
    strb r0, [r7]
    mov r0, sl
    movs r1, #0xa1
    movs r2, #0
    bl func_0802A4C0
    mov r0, sl
    movs r1, #2
    movs r2, #0
    bl func_08032384
    mov r1, sl
    adds r1, #0x78
    movs r0, #1
    strb r0, [r1]
    bl _08031F0E
_08030EE2:
    mov r2, sl
    adds r2, #0x54
    ldrh r0, [r2]
    adds r0, #1
    strh r0, [r2]
    mov r1, sl
    adds r1, #0x5a
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldrh r1, [r1]
    cmp r0, r1
    bne _08030F0E
    movs r0, #0
    strh r0, [r2]
    movs r0, #0x1e
    ldr r1, [sp, #0x13c]
    strb r0, [r1]
    mov r0, sl
    movs r1, #0xa0
    movs r2, #0
    bl func_0802A4C0
_08030F0E:
    cmp r4, #0
    bne _08030F16
    bl _08031F0E
_08030F16:
    ldrh r0, [r4, #4]
    movs r1, #2
    ands r0, r1
    cmp r0, #0
    bne _08030F24
    bl _08031F0E
_08030F24:
    mov r2, sl
    ldr r1, [r2, #0x5c]
    mov r0, sl
    adds r0, #0x40
    ldrb r2, [r0]
    mov r4, sl
    ldr r3, [r4, #0x34]
    mov r0, sp
    bl func_080A3F4C
    mov r1, sl
    adds r1, #0x60
    mov r0, sp
    ldm r0!, {r5, r6, r7}
    stm r1!, {r5, r6, r7}
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
_08030F46:
    movs r0, #0x20
    ldr r5, [sp, #0x13c]
    strb r0, [r5]
_08030F4C:
    mov r0, sl
    movs r1, #0xa2
    movs r2, #1
    bl func_0802A4C0
    bl _08031F0E
_08030F5A:
    movs r1, #0
    mov r6, sl
    ldrh r0, [r6, #0x24]
    cmp r0, #0
    bne _08030F66
    movs r1, #1
_08030F66:
    cmp r1, #0
    bne _08030F6E
    bl _08031F0E
_08030F6E:
    mov r0, sl
    bl func_0802A7D8
    mov r7, sl
    ldr r0, [r7, #0x34]
    ldr r1, _08030FBC @ =0x000034C4
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    bne _08030FA0
    ldr r0, [r7, #0x38]
    movs r1, #5
    bl func_0800EB2C
    adds r2, r0, #0
    mov r0, sl
    adds r0, #0x78
    ldrb r0, [r0]
    movs r1, #0x32
    cmp r0, #0
    beq _08030F9A
    movs r1, #0x64
_08030F9A:
    adds r0, r2, #0
    bl func_0800EF88
_08030FA0:
    mov r0, sl
    adds r0, #0x60
    ldrb r0, [r0, #0xc]
    cmp r0, #0
    bne _08030FB8
    mov r0, sl
    adds r0, #0x68
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08030FC0
_08030FB8:
    movs r0, #1
    b _08030FC2
    .align 2, 0
_08030FBC: .4byte 0x000034C4
_08030FC0:
    movs r0, #0
_08030FC2:
    cmp r0, #0
    bne _08030FCA
    bl sub_08031E0A
_08030FCA:
    mov r0, sl
    adds r0, #0x6c
    ldrb r0, [r0]
    cmp r0, #0
    beq _08030FE0
    mov r2, sl
    ldr r0, [r2, #0x14]
    adds r0, #0x80
    ldr r1, [r0]
    bl _08031EA6
_08030FE0:
    mov r0, sl
    adds r0, #0x6d
    ldrb r4, [r0]
    cmp r4, #0
    bne _08030FEC
    b _08031120
_08030FEC:
    mov r3, sl
    ldr r0, [r3, #0x70]
    subs r0, #0x35
    cmp r0, #5
    bhi _0803101C
    lsls r0, r0, #2
    ldr r1, _08031000 @ =_08031004
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08031000: .4byte _08031004
_08031004: @ jump table
    .4byte _0803101C @ case 0
    .4byte _08031030 @ case 1
    .4byte _0803103E @ case 2
    .4byte _08031050 @ case 3
    .4byte _08031060 @ case 4
    .4byte _0803106E @ case 5
_0803101C:
    mov r4, sl
    ldr r0, [r4, #0x38]
    adds r0, #0x54
    ldr r1, _0803102C @ =0x00000103
    bl func_0800F510
    b _0803107A
    .align 2, 0
_0803102C: .4byte 0x00000103
_08031030:
    mov r5, sl
    ldr r0, [r5, #0x38]
    adds r0, #0x54
    movs r1, #7
    bl func_0800F510
    b _0803107A
_0803103E:
    mov r6, sl
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    ldr r1, _0803104C @ =0x00000141
    bl func_0800F510
    b _0803107A
    .align 2, 0
_0803104C: .4byte 0x00000141
_08031050:
    mov r7, sl
    ldr r0, [r7, #0x38]
    adds r0, #0x54
    movs r1, #0x85
    lsls r1, r1, #1
    bl func_0800F510
    b _0803107A
_08031060:
    mov r1, sl
    ldr r0, [r1, #0x38]
    adds r0, #0x54
    movs r1, #0x69
    bl func_0800F510
    b _0803107A
_0803106E:
    mov r2, sl
    ldr r0, [r2, #0x38]
    adds r0, #0x54
    movs r1, #0xff
    bl func_0800F510
_0803107A:
    mov r0, sl
    bl func_0802A588
    movs r4, #0
    movs r0, #0x21
    ldr r3, [sp, #0x13c]
    strb r0, [r3]
    mov r0, sl
    adds r0, #0x20
    ldrb r3, [r0]
    cmp r3, #1
    beq _080310CE
    cmp r3, #1
    bgt _0803109C
    cmp r3, #0
    beq _080310E0
    b _080310F2
_0803109C:
    cmp r3, #2
    beq _080310A6
    cmp r3, #3
    beq _080310BC
    b _080310F2
_080310A6:
    mov r0, sl
    adds r0, #0x88
    ldr r1, _080310B8 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r4, [r0, #8]
    b _080310F0
    .align 2, 0
_080310B8: .4byte 0xFFF60000
_080310BC:
    mov r0, sl
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r4, [r0, #8]
    b _080310F0
_080310CE:
    mov r0, sl
    adds r0, #0x88
    ldr r1, _080310DC @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r4, [r0, #4]
    b _080310EE
    .align 2, 0
_080310DC: .4byte 0xFFF60000
_080310E0:
    mov r0, sl
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r3, [r0, #4]
_080310EE:
    str r1, [r0, #8]
_080310F0:
    str r2, [r0, #0x14]
_080310F2:
    mov r4, sl
    ldr r0, [r4]
    ldr r1, [r0]
    movs r5, #0xa6
    lsls r5, r5, #1
    adds r1, r1, r5
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _080311DE
_0803110C:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0803119C
    adds r4, #4
    cmp r4, r5
    bne _0803110C
    b _080311DE
_08031120:
    mov r0, sl
    adds r0, #0x68
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080311EC
    mov r6, sl
    ldr r0, [r6, #0x38]
    adds r0, #0x54
    ldr r1, [r6, #0x68]
    str r1, [sp]
    bl func_0800F418
    mov r0, sl
    bl func_0802A588
    movs r0, #0x21
    ldr r7, [sp, #0x13c]
    strb r0, [r7]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #1
    beq _0803118E
    cmp r0, #1
    bgt _0803115C
    cmp r0, #0
    beq _080311A0
    b _080311B2
_0803115C:
    cmp r0, #2
    beq _08031166
    cmp r0, #3
    beq _0803117C
    b _080311B2
_08031166:
    mov r0, sl
    adds r0, #0x88
    ldr r1, _08031178 @ =0xFFF60000
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r4, [r0, #8]
    b _080311B0
    .align 2, 0
_08031178: .4byte 0xFFF60000
_0803117C:
    mov r0, sl
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r1, [r0, #4]
    str r4, [r0, #8]
    b _080311B0
_0803118E:
    mov r0, sl
    adds r0, #0x88
    ldr r1, _08031198 @ =0xFFF60000
    b _080311A8
    .align 2, 0
_08031198: .4byte 0xFFF60000
_0803119C:
    ldr r0, [r4]
    b _080311E2
_080311A0:
    mov r0, sl
    adds r0, #0x88
    movs r1, #0xa0
    lsls r1, r1, #0xc
_080311A8:
    movs r2, #0xc0
    lsls r2, r2, #0xc
    str r4, [r0, #4]
    str r1, [r0, #8]
_080311B0:
    str r2, [r0, #0x14]
_080311B2:
    mov r1, sl
    ldr r0, [r1]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _080311DE
_080311CC:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0803119C
    adds r4, #4
    cmp r4, r5
    bne _080311CC
_080311DE:
    subs r0, r5, #4
    ldr r0, [r0]
_080311E2:
    movs r1, #0x6a
    bl func_08008B6C
    bl _08031F0E
_080311EC:
    ldr r3, [sp, #0x13c]
    strb r4, [r3]
    bl _08031F0E
_080311F4:
    movs r1, #0
    mov r5, sl
    ldrh r0, [r5, #0x24]
    cmp r0, #0
    bne _08031200
    movs r1, #1
_08031200:
    cmp r1, #0
    bne _08031208
    bl _08031F0E
_08031208:
    mov r6, sl
    ldr r0, [r6]
    ldr r2, [r0]
    movs r7, #0xa0
    lsls r7, r7, #1
    adds r2, r2, r7
    add r1, sp, #0xc4
    movs r3, #0xf4
    lsls r3, r3, #2
    movs r4, #0
    str r3, [r1]
    str r4, [r1, #4]
    ldr r3, [r2]
    movs r2, #0
    bl _call_via_r3
    ldr r0, [sp, #0x13c]
    strb r4, [r0]
    mov r0, sl
    adds r0, #0x88
    movs r1, #0xa8
    lsls r1, r1, #0xd
    str r4, [r0, #4]
    str r4, [r0, #8]
    str r1, [r0, #0x14]
    bl _08031F0E
_0803123E:
    mov r1, sl
    ldr r1, [r1]
    str r1, [sp, #0x11c]
    movs r2, #0
    str r2, [sp, #0x120]
    mov r3, sl
    adds r3, #0x4a
    str r3, [sp, #0x14c]
    mov r4, sl
    adds r4, #0x48
    str r4, [sp, #0x144]
    mov r5, sl
    adds r5, #0x49
    str r5, [sp, #0x148]
_0803125A:
    ldr r6, [sp, #0x14c]
    ldr r7, [sp, #0x120]
    adds r0, r6, r7
    ldrb r0, [r0]
    cmp r0, #0
    bne _08031268
    b _0803144E
_08031268:
    ldr r1, [sp, #0x144]
    ldrb r0, [r1]
    adds r3, r0, #1
    add r1, sp, #0xcc
    str r3, [r1]
    adds r2, r7, #0
    subs r2, #2
    str r2, [r1, #4]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    adds r4, r1, #0
    cmp r0, #1
    beq _0803129C
    cmp r0, #1
    bgt _0803128E
    cmp r0, #0
    beq _08031294
    b _080312AA
_0803128E:
    cmp r0, #2
    beq _080312A6
    b _080312AA
_08031294:
    ldr r0, [r4]
    str r2, [r4]
    str r0, [r4, #4]
    b _080312AA
_0803129C:
    rsbs r0, r2, #0
    str r0, [r4]
    rsbs r0, r3, #0
    str r0, [r4, #4]
    b _080312AA
_080312A6:
    rsbs r0, r3, #0
    str r0, [r4]
_080312AA:
    mov r3, sl
    ldrh r2, [r3, #4]
    movs r5, #0xa
    ldrsh r1, [r3, r5]
    ldr r4, [r4]
    movs r6, #0xe
    ldrsh r3, [r3, r6]
    add r0, sp, #0xcc
    ldr r6, [r0, #4]
    mov sb, sp
    lsls r4, r4, #4
    adds r4, r4, r1
    lsls r6, r6, #4
    adds r6, r6, r3
    ldr r7, _0803138C @ =0x000003FF
    mov ip, r7
    adds r1, r2, #0
    mov r0, ip
    ands r1, r0
    mov r5, sb
    ldrh r3, [r5]
    ldr r7, _08031390 @ =0xFFFFFC00
    mov r8, r7
    mov r0, r8
    ands r0, r3
    orrs r0, r1
    strh r0, [r5]
    lsls r4, r4, #0x10
    lsrs r1, r4, #0x10
    movs r7, #0x3f
    ands r1, r7
    lsls r1, r1, #2
    ldrb r5, [r5, #1]
    movs r3, #3
    adds r0, r3, #0
    ands r0, r5
    orrs r0, r1
    mov r1, sb
    strb r0, [r1, #1]
    lsrs r4, r4, #0x16
    mov r5, ip
    ands r4, r5
    ldrh r1, [r1, #2]
    mov r0, r8
    ands r0, r1
    orrs r0, r4
    mov r1, sb
    strh r0, [r1, #2]
    lsls r6, r6, #0x10
    lsrs r0, r6, #0x10
    ands r0, r7
    lsls r0, r0, #2
    ldrb r1, [r1, #3]
    ands r3, r1
    orrs r3, r0
    mov r4, sb
    strb r3, [r4, #3]
    lsrs r6, r6, #0x16
    ands r6, r5
    ldrh r0, [r4, #4]
    mov r5, r8
    ands r5, r0
    orrs r5, r6
    strh r5, [r4, #4]
    add r4, sp, #8
    ldr r6, [sp, #0x11c]
    ldr r1, [r6]
    adds r0, r4, #0
    ldr r3, [r1, #0x34]
    adds r1, r6, #0
    bl _call_via_r3
    ldr r0, [sp]
    lsls r0, r0, #6
    asrs r0, r0, #0x10
    cmp r0, #0
    bge _08031346
    adds r0, #7
_08031346:
    asrs r5, r0, #3
    mov r0, sp
    ldrb r2, [r0, #3]
    lsrs r2, r2, #2
    ldrh r0, [r0, #4]
    ldr r1, _0803138C @ =0x000003FF
    ands r0, r1
    lsls r0, r0, #6
    orrs r0, r2
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0
    bge _08031362
    adds r0, #7
_08031362:
    asrs r3, r0, #3
    ldr r2, [sp, #8]
    ldrh r0, [r4, #8]
    cmp r2, #0
    beq _08031394
    cmp r5, r0
    bhi _08031394
    ldrh r7, [r4, #0xa]
    cmp r3, r7
    bhi _08031394
    ldr r1, [r4, #4]
    muls r0, r3, r0
    adds r0, r0, r5
    cmp r1, #0
    beq _08031384
    adds r0, r1, r0
    ldrb r0, [r0]
_08031384:
    lsls r0, r0, #2
    adds r0, r2, r0
    b _08031396
    .align 2, 0
_0803138C: .4byte 0x000003FF
_08031390: .4byte 0xFFFFFC00
_08031394:
    movs r0, #0
_08031396:
    cmp r0, #0
    beq _0803144E
    ldr r1, [r0]
    lsls r0, r1, #0x1f
    cmp r0, #0
    bne _080313A8
    lsls r0, r1, #0x1e
    cmp r0, #0
    bge _080313B4
_080313A8:
    ldr r0, [sp, #0x14c]
    ldr r2, [sp, #0x120]
    adds r1, r0, r2
    movs r0, #0
    strb r0, [r1]
    b _0803144E
_080313B4:
    ldr r3, [sp, #0x11c]
    ldr r0, [r3]
    adds r0, #0xc0
    ldr r2, [r0]
    adds r0, r3, #0
    mov r1, sp
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #4
    bne _080313DC
    mov r5, sl
    ldr r0, [r5, #0x34]
    adds r0, #0x14
    bl func_08009B60
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080313DC
    movs r4, #1
_080313DC:
    cmp r4, #4
    bhi _08031436
    lsls r0, r4, #2
    ldr r1, _080313EC @ =_080313F0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080313EC: .4byte _080313F0
_080313F0: @ jump table
    .4byte _08031436 @ case 0
    .4byte _08031436 @ case 1
    .4byte _08031404 @ case 2
    .4byte _08031436 @ case 3
    .4byte _08031424 @ case 4
_08031404:
    bl rand
    adds r1, r0, #0
    mov r2, sl
    adds r2, #0x50
    cmp r1, #0
    bge _08031414
    adds r0, #0xf
_08031414:
    asrs r0, r0, #4
    lsls r0, r0, #4
    subs r0, r1, r0
    adds r0, #5
    ldrh r6, [r2]
    adds r0, r0, r6
    strh r0, [r2]
    b _08031436
_08031424:
    mov r7, sl
    ldr r0, [r7, #0x34]
    adds r0, #0x14
    bl func_08009F80
    mov r1, sl
    adds r1, #0x52
    movs r0, #1
    strb r0, [r1]
_08031436:
    movs r3, #0
    mov r2, sl
    adds r2, #0x78
    ldrb r1, [r2]
    cmp r4, #0
    beq _08031446
    movs r0, #1
    orrs r1, r0
_08031446:
    cmp r1, #0
    beq _0803144C
    movs r3, #1
_0803144C:
    strb r3, [r2]
_0803144E:
    ldr r0, [sp, #0x120]
    adds r0, #1
    str r0, [sp, #0x120]
    cmp r0, #4
    bhi _0803145A
    b _0803125A
_0803145A:
    ldr r1, [sp, #0x144]
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r2, [sp, #0x148]
    ldrb r2, [r2]
    cmp r0, r2
    beq _08031472
    bl _08031F0E
_08031472:
    mov r3, sl
    ldr r0, [r3, #0x34]
    ldr r4, _080314B8 @ =0x000034C4
    adds r0, r0, r4
    ldrb r0, [r0]
    cmp r0, #0
    bne _0803149E
    ldr r0, [r3, #0x38]
    movs r1, #0
    bl func_0800EB2C
    adds r2, r0, #0
    mov r0, sl
    adds r0, #0x78
    ldrb r0, [r0]
    movs r1, #0x32
    cmp r0, #0
    beq _08031498
    movs r1, #0x64
_08031498:
    adds r0, r2, #0
    bl func_0800EF88
_0803149E:
    mov r0, sl
    adds r0, #0x52
    ldrb r0, [r0]
    cmp r0, #0
    beq _080314BC
    mov r5, sl
    ldr r0, [r5, #0x14]
    adds r0, #0x80
    ldr r1, [r0]
    mov r0, sl
    bl _call_via_r1
    b _080314D4
    .align 2, 0
_080314B8: .4byte 0x000034C4
_080314BC:
    mov r1, sl
    adds r1, #0x50
    ldrh r0, [r1]
    cmp r0, #0
    beq _080314D0
    adds r1, r0, #0
    mov r0, sl
    bl func_0802771C
    b _080314D4
_080314D0:
    ldr r6, [sp, #0x13c]
    strb r0, [r6]
_080314D4:
    ldr r7, [sp, #0x11c]
    ldr r0, [r7]
    adds r0, #0xf8
    ldr r1, [r0]
    adds r0, r7, #0
    bl _call_via_r1
    bl _08031F0E
_080314E6:
    mov r3, sl
    adds r3, #0x4e
    mov r0, sl
    adds r0, #0x4f
    ldrb r2, [r3]
    ldrb r0, [r0]
    cmp r2, r0
    beq _0803150A
    movs r1, #0
    mov r4, sl
    ldrh r0, [r4, #0x24]
    cmp r0, #0
    bne _08031502
    movs r1, #1
_08031502:
    cmp r1, #0
    beq _0803150A
    adds r0, r2, #1
    strb r0, [r3]
_0803150A:
    mov r5, sl
    ldr r6, [r5, #0x48]
    adds r5, r6, #0
    adds r5, #0xe1
    mov r4, sl
    adds r4, #0x4c
    adds r0, r6, #0
    adds r1, r5, #0
    adds r2, r4, #0
    bl func_080DC67C
    str r4, [sp, #0x154]
    cmp r0, r5
    beq _08031618
    subs r5, r0, r6
    adds r0, r5, #0
    movs r1, #0xf
    bl __umodsi3
    subs r6, r0, #7
    add r4, sp, #0xd4
    str r6, [r4]
    adds r0, r5, #0
    movs r1, #0xf
    bl __udivsi3
    subs r1, r0, #7
    str r1, [r4, #4]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #1
    beq _08031564
    cmp r0, #1
    bgt _08031556
    cmp r0, #0
    beq _0803155C
    b _08031572
_08031556:
    cmp r0, #2
    beq _0803156E
    b _08031572
_0803155C:
    ldr r0, [r4]
    str r1, [r4]
    str r0, [r4, #4]
    b _08031572
_08031564:
    rsbs r0, r1, #0
    str r0, [r4]
    rsbs r0, r6, #0
    str r0, [r4, #4]
    b _08031572
_0803156E:
    rsbs r0, r6, #0
    str r0, [r4]
_08031572:
    mov r6, sl
    ldrh r2, [r6, #4]
    movs r7, #0xa
    ldrsh r1, [r6, r7]
    ldr r3, [r4]
    movs r0, #0xe
    ldrsh r5, [r6, r0]
    add r0, sp, #0xd4
    ldr r4, [r0, #4]
    mov r6, sp
    lsls r3, r3, #4
    adds r3, r3, r1
    lsls r4, r4, #4
    adds r4, r4, r5
    ldr r1, _0803166C @ =0x000003FF
    mov sb, r1
    mov r5, sb
    ands r2, r5
    ldrh r1, [r6]
    ldr r5, _08031670 @ =0xFFFFFC00
    adds r0, r5, #0
    ands r0, r1
    orrs r0, r2
    strh r0, [r6]
    lsls r3, r3, #0x10
    lsrs r1, r3, #0x10
    movs r7, #0x3f
    mov ip, r7
    mov r0, ip
    ands r1, r0
    lsls r1, r1, #2
    ldrb r2, [r6, #1]
    mov r8, r2
    movs r2, #3
    adds r0, r2, #0
    mov r7, r8
    ands r0, r7
    orrs r0, r1
    strb r0, [r6, #1]
    lsrs r3, r3, #0x16
    mov r0, sb
    ands r3, r0
    ldrh r1, [r6, #2]
    adds r0, r5, #0
    ands r0, r1
    orrs r0, r3
    strh r0, [r6, #2]
    lsls r4, r4, #0x10
    lsrs r0, r4, #0x10
    mov r1, ip
    ands r0, r1
    lsls r0, r0, #2
    ldrb r1, [r6, #3]
    ands r2, r1
    orrs r2, r0
    strb r2, [r6, #3]
    lsrs r4, r4, #0x16
    mov r2, sb
    ands r4, r2
    ldrh r0, [r6, #4]
    ands r5, r0
    orrs r5, r4
    strh r5, [r6, #4]
    mov r3, sl
    ldr r0, [r3]
    ldr r1, [r0]
    adds r1, #0xd4
    ldr r2, [r1]
    mov r1, sp
    bl _call_via_r2
    mov r3, sl
    adds r3, #0x78
    ldrb r1, [r3]
    rsbs r2, r1, #0
    orrs r2, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    rsbs r1, r0, #0
    orrs r1, r0
    orrs r1, r2
    lsrs r1, r1, #0x1f
    strb r1, [r3]
_08031618:
    mov r0, sl
    adds r0, #0x4d
    ldr r4, [sp, #0x154]
    ldrb r1, [r4]
    ldrb r0, [r0]
    cmp r0, r1
    bhi _08031678
    mov r5, sl
    ldr r0, [r5, #0x34]
    ldr r6, _08031674 @ =0x000034C4
    adds r0, r0, r6
    ldrb r0, [r0]
    cmp r0, #0
    bne _08031652
    ldr r0, [r5, #0x38]
    movs r1, #1
    bl func_0800EB2C
    adds r2, r0, #0
    mov r0, sl
    adds r0, #0x78
    ldrb r0, [r0]
    movs r1, #0x32
    cmp r0, #0
    beq _0803164C
    movs r1, #0x64
_0803164C:
    adds r0, r2, #0
    bl func_0800EF88
_08031652:
    movs r1, #0
    mov r7, sl
    ldrh r0, [r7, #0x24]
    cmp r0, #0
    bne _0803165E
    movs r1, #1
_0803165E:
    cmp r1, #0
    beq _08031664
    b _08031C7C
_08031664:
    movs r0, #0x1d
    bl _08031F0A
    .align 2, 0
_0803166C: .4byte 0x000003FF
_08031670: .4byte 0xFFFFFC00
_08031674: .4byte 0x000034C4
_08031678:
    adds r0, r1, #1
    ldr r3, [sp, #0x154]
    strb r0, [r3]
    bl _08031F0E
_08031682:
    movs r1, #0
    mov r4, sl
    ldrh r0, [r4, #0x24]
    cmp r0, #0
    bne _0803168E
    movs r1, #1
_0803168E:
    cmp r1, #0
    bne _08031696
    bl _08031F0E
_08031696:
    b _08031A5C
_08031698:
    movs r1, #0
    mov r6, sl
    ldrh r0, [r6, #0x24]
    cmp r0, #0
    bne _080316A4
    movs r1, #1
_080316A4:
    cmp r1, #0
    bne _080316AC
    bl _08031F0E
_080316AC:
    movs r0, #0
    ldr r7, [sp, #0x13c]
    strb r0, [r7]
    mov r0, sl
    bl func_0802AA84
    adds r1, r0, #0
    mov r2, sl
    ldr r0, [r2, #0x38]
    bl func_0800ED3C
    bl _08031F0E
_080316C6:
    mov r3, sl
    ldr r0, [r3, #0x38]
    bl func_0800E94C
    cmp r0, #0
    bne _08031708
    mov r4, sl
    ldr r0, [r4, #0x34]
    ldr r5, _08031704 @ =0x000034C4
    adds r0, r0, r5
    ldrb r0, [r0]
    cmp r0, #0
    beq _080316E2
    b _08031D92
_080316E2:
    ldr r0, [r4, #0x38]
    movs r1, #4
    bl func_0800EB2C
    adds r2, r0, #0
    mov r0, sl
    adds r0, #0x78
    ldrb r0, [r0]
    movs r1, #0x32
    cmp r0, #0
    beq _080316FA
    movs r1, #0x64
_080316FA:
    adds r0, r2, #0
    bl func_0800EF88
    b _08031D92
    .align 2, 0
_08031704: .4byte 0x000034C4
_08031708:
    mov r0, sl
    adds r0, #0x48
    mov r3, sl
    adds r3, #0x4a
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldrb r7, [r3]
    adds r6, r0, r7
    add r1, sp, #0xdc
    str r6, [r1]
    mov r0, sl
    adds r0, #0x49
    mov r2, sl
    adds r2, #0x4b
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    ldrb r4, [r2]
    adds r5, r0, r4
    str r5, [r1, #4]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    str r3, [sp, #0x14c]
    str r2, [sp, #0x150]
    cmp r0, #1
    beq _08031758
    cmp r0, #1
    bgt _0803174A
    cmp r0, #0
    beq _08031750
    b _08031766
_0803174A:
    cmp r0, #2
    beq _08031762
    b _08031766
_08031750:
    ldr r0, [r1]
    str r5, [r1]
    str r0, [r1, #4]
    b _08031766
_08031758:
    rsbs r0, r5, #0
    str r0, [r1]
    rsbs r0, r6, #0
    str r0, [r1, #4]
    b _08031766
_08031762:
    rsbs r0, r6, #0
    str r0, [r1]
_08031766:
    mov r5, sl
    ldr r0, [r5]
    ldr r2, [r0]
    adds r2, #0xd8
    str r2, [sp, #0x124]
    ldrh r3, [r5, #4]
    movs r6, #0xa
    ldrsh r2, [r5, r6]
    ldr r4, [r1]
    movs r7, #0xe
    ldrsh r6, [r5, r7]
    add r1, sp, #0xdc
    ldr r5, [r1, #4]
    mov r8, sp
    lsls r4, r4, #4
    adds r4, r4, r2
    lsls r5, r5, #4
    adds r5, r5, r6
    str r5, [sp, #0x188]
    ldr r1, _08031874 @ =0x000003FF
    adds r7, r1, #0
    ands r3, r7
    mov r5, r8
    ldrh r2, [r5]
    ldr r6, _08031878 @ =0xFFFFFC00
    adds r1, r6, #0
    ands r1, r2
    orrs r1, r3
    strh r1, [r5]
    lsls r4, r4, #0x10
    lsrs r2, r4, #0x10
    movs r1, #0x3f
    mov ip, r1
    ands r2, r1
    lsls r2, r2, #2
    ldrb r3, [r5, #1]
    mov sb, r3
    movs r3, #3
    adds r1, r3, #0
    mov r5, sb
    ands r1, r5
    orrs r1, r2
    mov r2, r8
    strb r1, [r2, #1]
    lsrs r4, r4, #0x16
    ands r4, r7
    ldrh r2, [r2, #2]
    adds r1, r6, #0
    ands r1, r2
    orrs r1, r4
    mov r4, r8
    strh r1, [r4, #2]
    ldr r1, [sp, #0x188]
    lsls r5, r1, #0x10
    lsrs r1, r5, #0x10
    mov r2, ip
    ands r1, r2
    lsls r1, r1, #2
    ldrb r2, [r4, #3]
    ands r3, r2
    orrs r3, r1
    strb r3, [r4, #3]
    lsrs r5, r5, #0x16
    ands r5, r7
    ldrh r1, [r4, #4]
    ands r6, r1
    orrs r6, r5
    strh r6, [r4, #4]
    ldr r3, [sp, #0x124]
    ldr r2, [r3]
    mov r1, sp
    bl _call_via_r2
    mov r4, sl
    adds r4, #0x78
    ldrb r1, [r4]
    rsbs r2, r1, #0
    orrs r2, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    rsbs r1, r0, #0
    orrs r1, r0
    orrs r1, r2
    lsrs r1, r1, #0x1f
    strb r1, [r4]
    mov r5, sl
    ldr r0, [r5, #0x38]
    movs r1, #1
    bl func_0800ED54
    ldr r1, [sp, #0x150]
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    movs r2, #0xff
    mov r1, sl
    adds r1, #0x4d
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldrb r1, [r1]
    cmp r0, r1
    beq _08031834
    b _08031F0E
_08031834:
    ldr r6, [sp, #0x14c]
    ldrb r0, [r6]
    adds r0, #1
    strb r0, [r6]
    mov r1, sl
    adds r1, #0x4c
    ands r0, r2
    ldrb r1, [r1]
    cmp r0, r1
    bne _08031880
    ldr r0, [r5, #0x34]
    ldr r7, _0803187C @ =0x000034C4
    adds r0, r0, r7
    ldrb r0, [r0]
    cmp r0, #0
    beq _08031856
    b _08031C7C
_08031856:
    ldr r0, [r5, #0x38]
    movs r1, #4
    bl func_0800EB2C
    adds r2, r0, #0
    ldrb r0, [r4]
    movs r1, #0x32
    cmp r0, #0
    beq _0803186A
    movs r1, #0x64
_0803186A:
    adds r0, r2, #0
    bl func_0800EF88
    b _08031C7C
    .align 2, 0
_08031874: .4byte 0x000003FF
_08031878: .4byte 0xFFFFFC00
_0803187C: .4byte 0x000034C4
_08031880:
    movs r0, #0
    ldr r2, [sp, #0x150]
    b _08031F0C
_08031886:
    mov r1, sl
    adds r1, #0x3d
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08031898
    b _08031F0E
_08031898:
    movs r0, #5
    ldr r3, [sp, #0x13c]
    strb r0, [r3]
    b _08031D78
_080318A0:
    movs r1, #0
    mov r4, sl
    ldrh r0, [r4, #0x24]
    cmp r0, #0
    bne _080318AC
    movs r1, #1
_080318AC:
    cmp r1, #0
    bne _080318B2
    b _08031F0E
_080318B2:
    mov r6, sl
    ldr r5, [r6]
    add r4, sp, #8
    adds r0, r4, #0
    mov r1, sl
    bl func_08032170
    mov r0, sp
    adds r1, r4, #0
    movs r2, #6
    bl memcpy
    mov r2, sl
    adds r2, #0x79
    ldrb r1, [r2]
    movs r0, #1
    ands r0, r1
    adds r4, r2, #0
    cmp r0, #0
    beq _080318F0
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    movs r1, #0x2b
    bl _call_via_r2
    cmp r0, #0
    beq _080318F0
    mov r1, sp
    bl func_08021444
_080318F0:
    ldrb r1, [r4]
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    beq _08031910
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    movs r1, #0x2c
    bl _call_via_r2
    cmp r0, #0
    beq _08031910
    mov r1, sp
    bl func_080221F0
_08031910:
    movs r4, #1
_08031912:
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    adds r1, r4, #0
    bl _call_via_r2
    cmp r0, #0
    beq _08031928
    mov r1, sp
    bl func_08035A48
_08031928:
    adds r4, #1
    cmp r4, #0x23
    ble _08031912

    non_word_aligned_thumb_func_start sub_0803192E
sub_0803192E: @ 0x0803192E
    movs r0, #0
    ldr r7, [sp, #0x13c]
    strb r0, [r7]
    b _08031F0E
_08031936:
    movs r1, #0
    mov r2, sl
    ldrh r0, [r2, #0x24]
    cmp r0, #0
    bne _08031942
    movs r1, #1
_08031942:
    cmp r1, #0
    bne _08031948
    b _08031F0E
_08031948:
    movs r0, #4
    b _08031E84
_0803194C:
    ldr r0, [r4]
    b _0803199E
_08031950:
    movs r1, #0
    mov r4, sl
    ldrh r0, [r4, #0x24]
    cmp r0, #0
    bne _0803195C
    movs r1, #1
_0803195C:
    cmp r1, #0
    bne _08031962
    b _08031F0E
_08031962:
    mov r0, sl
    bl func_0802A588
    movs r0, #0x14
    ldr r5, [sp, #0x13c]
    strb r0, [r5]
    mov r6, sl
    ldr r0, [r6]
    ldr r1, [r0]
    movs r7, #0xa6
    lsls r7, r7, #1
    adds r1, r1, r7
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0803199A
_08031988:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0803194C
    adds r4, #4
    cmp r4, r5
    bne _08031988
_0803199A:
    subs r0, r5, #4
    ldr r0, [r0]
_0803199E:
    movs r1, #0x6b
    bl func_08008B6C
    b _08031F0E
_080319A6:
    movs r1, #0
    mov r2, sl
    ldrh r0, [r2, #0x24]
    cmp r0, #0
    bne _080319B2
    movs r1, #1
_080319B2:
    cmp r1, #0
    bne _080319B8
    b _08031F0E
_080319B8:
    movs r0, #4
    b _08031E84
_080319BC:
    movs r1, #0
    mov r4, sl
    ldrh r0, [r4, #0x24]
    cmp r0, #0
    bne _080319C8
    movs r1, #1
_080319C8:
    cmp r1, #0
    bne _080319CE
    b _08031F0E
_080319CE:
    movs r0, #6
    ldr r5, [sp, #0x13c]
    strb r0, [r5]
    mov r0, sl
    movs r1, #8
    movs r2, #1
    bl func_08032384
    b _08031F0E
_080319E0:
    movs r1, #0
    mov r6, sl
    ldrh r0, [r6, #0x24]
    cmp r0, #0
    bne _080319EC
    movs r1, #1
_080319EC:
    cmp r1, #0
    beq _08031A24
    mov r7, sl
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    ldr r1, [r0, #8]
    str r1, [r7, #8]
    ldr r1, [r0, #0xc]
    str r1, [r7, #0xc]
    movs r1, #0
    str r1, [r7, #0x18]
    str r1, [r7, #0x1c]
    adds r0, #0x20
    ldrb r1, [r0]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r1
    beq _08031A20
    mov r0, sl
    bl func_08032198
_08031A20:
    movs r0, #7
    b _08031C7E
_08031A24:
    mov r0, sl
    adds r0, #0xb8
    ldr r0, [r0]
    mov r2, sl
    str r0, [r2, #0x18]
    mov r0, sl
    adds r0, #0xbc
    ldr r0, [r0]
    str r0, [r2, #0x1c]
    b _08031F0E
_08031A38:
    movs r1, #0
    mov r3, sl
    ldrh r0, [r3, #0x24]
    cmp r0, #0
    bne _08031A44
    movs r1, #1
_08031A44:
    cmp r1, #0
    bne _08031A4A
    b _08031F0E
_08031A4A:
    mov r4, sl
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    bl func_08021F3C
_08031A5C:
    movs r0, #0

    non_word_aligned_thumb_func_start sub_08031A5E
sub_08031A5E: @ 0x08031A5E
    ldr r5, [sp, #0x13c]
    strb r0, [r5]
    b _08031F0E
_08031A64:
    movs r1, #0
    mov r6, sl
    ldrh r0, [r6, #0x24]
    cmp r0, #0
    bne _08031A70
    movs r1, #1
_08031A70:
    cmp r1, #0
    bne _08031A76
    b _08031F0E
_08031A76:
    movs r0, #0
    ldr r7, [sp, #0x13c]
    strb r0, [r7]
    mov r1, sl
    adds r1, #0x88
    movs r2, #0xa8
    lsls r2, r2, #0xd
    str r0, [r1, #4]
    str r0, [r1, #8]
    str r2, [r1, #0x14]
    mov r0, sl
    bl func_0802B054
    b _08031F0E
_08031A92:
    movs r1, #0
    mov r2, sl
    ldrh r0, [r2, #0x24]
    cmp r0, #0
    bne _08031A9E
    movs r1, #1
_08031A9E:
    cmp r1, #0
    bne _08031AA4
    b _08031F0E
_08031AA4:
    movs r0, #0
    b _08031E84
_08031AA8:
    movs r1, #0
    mov r4, sl
    ldrh r0, [r4, #0x24]
    cmp r0, #0
    bne _08031AB4
    movs r1, #1
_08031AB4:
    cmp r1, #0
    bne _08031ABA
    b _08031F0E
_08031ABA:
    mov r5, sl
    ldr r0, [r5, #0x14]
    b _08031EA4
_08031AC0:
    movs r1, #0
    mov r6, sl
    ldrh r0, [r6, #0x24]
    cmp r0, #0
    bne _08031ACC
    movs r1, #1
_08031ACC:
    cmp r1, #0
    bne _08031AD2
    b _08031F0E
_08031AD2:
    movs r4, #0
    movs r0, #0x2b
    ldr r7, [sp, #0x13c]
    strb r0, [r7]
    mov r1, sl
    ldr r0, [r1]
    ldr r3, [r0]
    movs r2, #0xa0
    lsls r2, r2, #1
    adds r3, r3, r2
    add r1, sp, #0xe4
    ldr r2, _08031AF8 @ =0x000002B6
    str r2, [r1]
    str r4, [r1, #4]
    ldr r3, [r3]
    movs r2, #2
    bl _call_via_r3
    b _08031F0E
    .align 2, 0
_08031AF8: .4byte 0x000002B6
_08031AFC:
    movs r1, #0
    mov r3, sl
    ldrh r0, [r3, #0x24]
    cmp r0, #0
    bne _08031B08
    movs r1, #1
_08031B08:
    cmp r1, #0
    beq _08031B54
    movs r0, #0
    movs r1, #7
    ldr r4, [sp, #0x13c]
    strb r1, [r4]
    mov r1, sl
    adds r1, #0x3e
    strb r0, [r1]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #0
    blt _08031BEE
    cmp r0, #1
    ble _08031B40
    cmp r0, #3
    bgt _08031BEE
    mov r5, sl
    ldr r1, [r5, #8]
    mov r0, sl
    adds r0, #0x84
    movs r6, #0
    ldrsh r0, [r0, r6]
    lsls r0, r0, #0x10
    subs r0, r0, r1
    str r0, [r5, #0x18]
    b _08031BEE
_08031B40:
    mov r7, sl
    ldr r1, [r7, #0xc]
    mov r0, sl
    adds r0, #0x84
    movs r2, #0
    ldrsh r0, [r0, r2]
    lsls r0, r0, #0x10
    subs r0, r0, r1
    str r0, [r7, #0x1c]
    b _08031BEE
_08031B54:
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #0
    bge _08031B60
    b _08031F0E
_08031B60:
    cmp r0, #1
    ble _08031B76
    cmp r0, #3
    ble _08031B6A
    b _08031F0E
_08031B6A:
    mov r0, sl
    adds r0, #0x80
    ldr r0, [r0]
    mov r3, sl
    str r0, [r3, #0x18]
    b _08031F0E
_08031B76:
    mov r0, sl
    adds r0, #0x80
    ldr r0, [r0]
    mov r4, sl
    str r0, [r4, #0x1c]
    b _08031F0E
_08031B82:
    movs r1, #0
    mov r5, sl
    ldrh r0, [r5, #0x24]
    cmp r0, #0
    bne _08031B8E
    movs r1, #1
_08031B8E:
    cmp r1, #0
    beq _08031BF6
    movs r0, #0
    ldr r6, [sp, #0x13c]
    strb r0, [r6]
    mov r1, sl
    adds r1, #0x3e
    strb r0, [r1]
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #0
    blt _08031BD6
    cmp r0, #1
    ble _08031BC4
    cmp r0, #3
    bgt _08031BD6
    mov r7, sl
    ldr r1, [r7, #8]
    mov r0, sl
    adds r0, #0x84
    movs r2, #0
    ldrsh r0, [r0, r2]
    lsls r0, r0, #0x10
    subs r0, r0, r1
    str r0, [r7, #0x18]
    b _08031BD6
_08031BC4:
    mov r3, sl
    ldr r1, [r3, #0xc]
    mov r0, sl
    adds r0, #0x84
    movs r4, #0
    ldrsh r0, [r0, r4]
    lsls r0, r0, #0x10
    subs r0, r0, r1
    str r0, [r3, #0x1c]
_08031BD6:
    mov r3, sl
    adds r3, #0x88
    movs r1, #0
    ldrb r0, [r3]
    cmp r0, #1
    bne _08031BE4
    movs r1, #1
_08031BE4:
    cmp r1, #0
    beq _08031BEE
    movs r2, #0xa8
    lsls r2, r2, #0xd
    str r2, [r3, #0x14]
_08031BEE:
    mov r0, sl
    bl func_0802AD80
    b _08031F0E
_08031BF6:
    mov r5, sl
    ldrh r3, [r5, #0x24]
    cmp r3, #0x10
    bhi _08031C24
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #0
    blt _08031C24
    cmp r0, #1
    ble _08031C1A
    cmp r0, #3
    bgt _08031C24
    mov r0, sl
    adds r0, #0x80
    ldr r0, [r0]
    str r0, [r5, #0x18]
    b _08031C24
_08031C1A:
    mov r0, sl
    adds r0, #0x80
    ldr r0, [r0]
    mov r6, sl
    str r0, [r6, #0x1c]
_08031C24:
    mov r0, sl
    adds r0, #0x88
    movs r2, #0
    ldrb r1, [r0]
    adds r4, r0, #0
    cmp r1, #1
    bne _08031C34
    movs r2, #1
_08031C34:
    cmp r2, #0
    bne _08031C3A
    b _08031F0E
_08031C3A:
    ldr r2, [r4, #0x14]
    adds r0, r2, #0
    cmp r3, #0xc
    beq _08031C56
    cmp r3, #0xc
    bhi _08031C4C
    cmp r3, #4
    beq _08031C50
    b _08031C5A
_08031C4C:
    cmp r3, #0x10
    bne _08031C5A
_08031C50:
    movs r2, #0xe8
    lsls r2, r2, #0xd
    b _08031C5A
_08031C56:
    movs r2, #0x84
    lsls r2, r2, #0xe
_08031C5A:
    cmp r2, r0
    bne _08031C60
    b _08031F0E
_08031C60:
    str r2, [r4, #0x14]
    b _08031F0E
_08031C64:
    movs r1, #0
    mov r7, sl
    ldrh r0, [r7, #0x24]
    cmp r0, #0
    bne _08031C70
    movs r1, #1
_08031C70:
    cmp r1, #0
    bne _08031C76
    b _08031F0E
_08031C76:
    mov r0, sl
    bl func_0802A588
_08031C7C:
    movs r0, #0
_08031C7E:
    ldr r1, [sp, #0x13c]
    strb r0, [r1]
    b _08031F0E
_08031C84:
    mov r1, sl
    adds r1, #0x3d
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    cmp r2, #0
    beq _08031C98
    b _08031F0E
_08031C98:
    movs r0, #0x30
    ldr r3, [sp, #0x13c]
    strb r0, [r3]
    movs r0, #0x1e
    strb r0, [r1]
    mov r0, sl
    adds r0, #0x88
    movs r1, #0xa8
    lsls r1, r1, #0xd
    str r2, [r0, #4]
    str r2, [r0, #8]
    str r1, [r0, #0x14]
    b _08031F0E
_08031CB2:
    ldr r0, [r4]
    b _08031D04
_08031CB6:
    mov r1, sl
    adds r1, #0x3d
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08031CC8
    b _08031F0E
_08031CC8:
    movs r0, #0xf
    ldr r4, [sp, #0x13c]
    strb r0, [r4]
    mov r0, sl
    bl func_0802A7D8
    mov r5, sl
    ldr r0, [r5]
    ldr r1, [r0]
    movs r6, #0xa6
    lsls r6, r6, #1
    adds r1, r1, r6
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08031D00
_08031CEE:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08031CB2
    adds r4, #4
    cmp r4, r5
    bne _08031CEE
_08031D00:
    subs r0, r5, #4
    ldr r0, [r0]
_08031D04:
    movs r1, #0x65
    bl func_08008B6C
    b _08031F0E
_08031D0C:
    movs r1, #0
    mov r7, sl
    ldrh r0, [r7, #0x24]
    cmp r0, #0
    bne _08031D18
    movs r1, #1
_08031D18:
    cmp r1, #0
    bne _08031D1E
    b _08031F0E
_08031D1E:
    movs r0, #0x32
    ldr r1, [sp, #0x13c]
    strb r0, [r1]
    b _08031E26
_08031D26:
    ldr r0, [r4]
    b _08031D72
_08031D2A:
    mov r1, sl
    adds r1, #0x3d
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08031D3C
    b _08031F0E
_08031D3C:
    movs r0, #0x33
    ldr r2, [sp, #0x13c]
    strb r0, [r2]
    mov r3, sl
    ldr r0, [r3]
    ldr r1, [r0]
    movs r4, #0xa6
    lsls r4, r4, #1
    adds r1, r1, r4
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08031D6E
_08031D5C:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08031D26
    adds r4, #4
    cmp r4, r5
    bne _08031D5C
_08031D6E:
    subs r0, r5, #4
    ldr r0, [r0]
_08031D72:
    movs r1, #0x6b

    thumb_func_start sub_08031D74
sub_08031D74: @ 0x08031D74
    bl func_08008B6C
_08031D78:
    mov r0, sl
    bl func_0802A7D8
    b _08031F0E
_08031D80:
    movs r1, #0
    mov r5, sl
    ldrh r0, [r5, #0x24]
    cmp r0, #0
    bne _08031D8C
    movs r1, #1
_08031D8C:
    cmp r1, #0
    bne _08031D92
    b _08031F0E
_08031D92:
    movs r0, #0
    ldr r6, [sp, #0x13c]
    strb r0, [r6]
    b _08031F0E
_08031D9A:
    movs r1, #0
    mov r7, sl
    ldrh r0, [r7, #0x24]
    cmp r0, #0
    bne _08031DA6
    movs r1, #1
_08031DA6:
    cmp r1, #0
    bne _08031DAC
    b _08031F0E
_08031DAC:
    movs r0, #0x38
    ldr r1, [sp, #0x13c]
    strb r0, [r1]
    b _08031E26
_08031DB4:
    ldr r0, [r5]
    b _08031DFE
_08031DB8:
    mov r1, sl
    adds r1, #0x3d
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08031DCA
    b _08031F0E
_08031DCA:
    mov r2, sl
    ldr r0, [r2]
    ldr r1, [r0]
    movs r3, #0xa6
    lsls r3, r3, #1
    adds r1, r1, r3
    ldr r1, [r1]
    bl _call_via_r1
    ldr r5, [r0]
    ldr r6, [r0, #4]
    mov r4, sl
    adds r4, #0x88
    cmp r5, r6
    beq _08031DFA
_08031DE8:
    ldr r0, [r5]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08031DB4
    adds r5, #4
    cmp r5, r6
    bne _08031DE8
_08031DFA:
    subs r0, r6, #4
    ldr r0, [r0]
_08031DFE:
    movs r1, #0x65
    bl func_08008B6C
    movs r0, #0
    strb r0, [r4]
    movs r0, #0xf

    non_word_aligned_thumb_func_start sub_08031E0A
sub_08031E0A: @ 0x08031E0A
    ldr r4, [sp, #0x13c]
    strb r0, [r4]
    b _08031F0E
_08031E10:
    movs r1, #0
    mov r5, sl
    ldrh r0, [r5, #0x24]
    cmp r0, #0
    bne _08031E1C
    movs r1, #1
_08031E1C:
    cmp r1, #0
    beq _08031F0E
    movs r0, #0x39
    ldr r6, [sp, #0x13c]
    strb r0, [r6]
_08031E26:
    mov r1, sl
    adds r1, #0x3d
    movs r0, #0x1e
    strb r0, [r1]
    b _08031F0E
_08031E30:
    ldr r0, [r5]
    b _08031E78
_08031E34:
    mov r1, sl
    adds r1, #0x3d
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08031F0E
    mov r7, sl
    ldr r0, [r7]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r5, [r0]
    ldr r6, [r0, #4]
    mov r4, sl
    adds r4, #0x88
    cmp r5, r6
    beq _08031E74
_08031E62:
    ldr r0, [r5]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08031E30
    adds r5, #4
    cmp r5, r6
    bne _08031E62
_08031E74:
    subs r0, r6, #4
    ldr r0, [r0]
_08031E78:
    movs r1, #0x66
    bl func_08008B6C
    movs r0, #0
    strb r0, [r4]
    movs r0, #0x10
_08031E84:
    ldr r3, [sp, #0x13c]
    strb r0, [r3]
    b _08031F0E
_08031E8A:
    mov r1, sl
    adds r1, #0x3d
    ldrb r0, [r1]
    subs r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08031F0E
    mov r0, sl
    bl func_0802B054
    mov r4, sl
    ldr r0, [r4, #0x14]
_08031EA4:
    ldr r1, [r0, #0x70]
_08031EA6:
    mov r0, sl
    bl _call_via_r1
    b _08031F0E
_08031EAE:
    mov r0, sl
    bl func_0802AEA4
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #0
    beq _08031F0A
    mov r0, sl
    adds r0, #0x20
    ldrb r0, [r0]
    adds r1, r0, #0
    cmp r0, #1
    beq _08031EE8
    cmp r0, #1
    bgt _08031ED2
    cmp r0, #0
    beq _08031EDC
    b _08031F0E
_08031ED2:
    cmp r1, #2
    beq _08031F00
    cmp r1, #3
    beq _08031EF2
    b _08031F0E
_08031EDC:
    ldr r0, _08031EE4 @ =0xFFFF0000
    mov r5, sl
    str r0, [r5, #0x1c]
    b _08031F0E
    .align 2, 0
_08031EE4: .4byte 0xFFFF0000
_08031EE8:
    movs r0, #0x80
    lsls r0, r0, #9
    mov r6, sl
    str r0, [r6, #0x1c]
    b _08031F0E
_08031EF2:
    ldr r0, _08031EFC @ =0xFFFF0000
    mov r7, sl
    str r0, [r7, #0x18]
    b _08031F0E
    .align 2, 0
_08031EFC: .4byte 0xFFFF0000
_08031F00:
    movs r0, #0x80
    lsls r0, r0, #9
    mov r1, sl
    str r0, [r1, #0x18]
    b _08031F0E
_08031F0A:
    ldr r2, [sp, #0x13c]
_08031F0C:
    strb r0, [r2]
_08031F0E:
    add sp, #0x18c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08031F20:
    .byte 0x02, 0x49, 0x40, 0x18, 0x01, 0x21, 0x01, 0x70, 0x70, 0x47, 0x00, 0x00, 0x81, 0x02, 0x00, 0x00
    .byte 0x30, 0xB5, 0x05, 0x1C, 0x0C, 0x1C, 0x28, 0x68, 0x00, 0x68, 0x01, 0x68, 0x89, 0x6E, 0xA1, 0xF0
    .byte 0xE7, 0xFC, 0x01, 0x1C, 0x28, 0x1C, 0xB4, 0x30, 0x22, 0x1C, 0x2C, 0xF0, 0x81, 0xFC, 0x28, 0x1C
    .byte 0xC8, 0x30, 0x00, 0x22, 0x01, 0x21, 0x01, 0x70, 0x02, 0x30, 0x02, 0x70, 0x01, 0x30, 0x01, 0x70
    .byte 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x05, 0x1C, 0x0C, 0x1C, 0x28, 0x68
    .byte 0x00, 0x68, 0x01, 0x68, 0x49, 0x6E, 0xA1, 0xF0, 0xCB, 0xFC, 0x01, 0x1C, 0x28, 0x1C, 0xB4, 0x30
    .byte 0x22, 0x1C, 0x2C, 0xF0, 0x65, 0xFC, 0x28, 0x1C, 0xC8, 0x30, 0x00, 0x22, 0x01, 0x21, 0x01, 0x70
    .byte 0x02, 0x30, 0x02, 0x70, 0x01, 0x30, 0x01, 0x70, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
    .byte 0x00, 0xB5, 0x02, 0x1C, 0xB2, 0x30, 0x03, 0x78, 0x00, 0x21, 0x18, 0x1C, 0x2B, 0x38, 0x1A, 0x28
    .byte 0x00, 0xD8, 0x01, 0x21, 0x00, 0x29, 0x01, 0xD1, 0x00, 0x20, 0x05, 0xE0, 0x10, 0x68, 0x01, 0x68
    .byte 0x0A, 0x6C, 0x19, 0x1C, 0xA1, 0xF0, 0xA6, 0xFC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0xB5, 0x00, 0x20
    .byte 0x2B, 0x39, 0x1A, 0x29, 0x00, 0xD8, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0xB5, 0x01, 0x2A
    .byte 0x0C, 0xD0, 0x01, 0x2A, 0x02, 0xDC, 0x00, 0x2A, 0x03, 0xD0, 0x11, 0xE0, 0x02, 0x2A, 0x0C, 0xD0
    .byte 0x0E, 0xE0, 0x0A, 0x68, 0x48, 0x68, 0x08, 0x60, 0x4A, 0x60, 0x09, 0xE0, 0x0A, 0x68, 0x48, 0x68
    .byte 0x40, 0x42, 0x08, 0x60, 0x50, 0x42, 0x48, 0x60, 0x02, 0xE0, 0x08, 0x68, 0x40, 0x42, 0x08, 0x60
    .byte 0x01, 0xBC, 0x00, 0x47, 0x88, 0x30, 0x70, 0x47, 0xC2, 0x30, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00
    .byte 0xC2, 0x30, 0x01, 0x70, 0x70, 0x47, 0x00, 0x00, 0x60, 0x30, 0x70, 0x47, 0xC1, 0x30, 0x00, 0x78
    .byte 0x70, 0x47, 0x00, 0x00, 0xB0, 0x30, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00, 0xAC, 0x30, 0x00, 0x68
    .byte 0x70, 0x47, 0x00, 0x00, 0xA8, 0x30, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00, 0xB1, 0x30, 0x00, 0x78
    .byte 0x70, 0x47, 0x00, 0x00, 0x7A, 0x30, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00

    thumb_func_start func_0803205C
func_0803205C: @ 0x0803205C
    push {lr}
    movs r1, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    cmp r0, #7
    beq _0803206C
    cmp r0, #0x2d
    bne _0803206E
_0803206C:
    movs r1, #1
_0803206E:
    adds r0, r1, #0
    pop {r1}
    bx r1
_08032074:
    .byte 0xC0, 0x30, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00, 0xCB, 0x1F, 0x03, 0x80
    .byte 0x13, 0x1C, 0x09, 0x3B, 0x43, 0x80, 0x07, 0x31, 0x81, 0x80, 0x05, 0x32, 0xC2, 0x80, 0x70, 0x47

    thumb_func_start func_08032090
func_08032090: @ 0x08032090
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    adds r2, r1, #0
    ldr r1, [r4]
    mov r0, sp
    ldr r3, [r1, #0xc]
    adds r1, r4, #0
    bl _call_via_r3
    ldr r0, [sp]
    ldr r1, [sp, #4]
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    add r2, sp, #8
    movs r4, #0
    movs r3, #0
    ldr r0, [sp, #8]
    movs r1, #0
    cmp r0, #0
    beq _080320BC
    ldrh r1, [r2, #4]
_080320BC:
    adds r2, r1, #0
    cmp r4, r2
    bhs _080320D0
    adds r1, r0, #0
_080320C4:
    ldrh r0, [r1, #2]
    adds r4, r4, r0
    adds r1, #4
    adds r3, #1
    cmp r3, r2
    blo _080320C4
_080320D0:
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080320DC
func_080320DC: @ 0x080320DC
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r5, r2, #0
    adds r6, r3, #0
    ldr r7, [sp, #0x14]
    bl func_0801FD78
    ldr r0, _08032118 @ =vtable_unk_080E6878
    str r0, [r4, #0x14]
    movs r0, #0
    str r0, [r4, #0x18]
    str r0, [r4, #0x1c]
    ldrb r1, [r5, #6]
    adds r0, r4, #0
    adds r0, #0x20
    strb r1, [r0]
    adds r0, #1
    strb r6, [r0]
    adds r0, #7
    bl func_08032300
    adds r0, r4, #0
    adds r1, r7, #0
    bl func_080321B0
    adds r0, r4, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_08032118: .4byte vtable_unk_080E6878

    thumb_func_start func_0803211C
func_0803211C: @ 0x0803211C
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r1, #0
    ldrh r1, [r4]
    lsls r1, r1, #0x16
    lsrs r1, r1, #0x16
    ldrb r0, [r4, #1]
    lsrs r0, r0, #2
    ldrh r2, [r4, #2]
    ldr r5, _0803216C @ =0x000003FF
    ands r2, r5
    lsls r2, r2, #6
    orrs r2, r0
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    ldrb r0, [r4, #3]
    lsrs r0, r0, #2
    ldrh r3, [r4, #4]
    ands r3, r5
    lsls r3, r3, #6
    orrs r3, r0
    lsls r3, r3, #0x10
    asrs r3, r3, #0x10
    adds r0, r6, #0
    bl func_0801FE78
    ldrb r1, [r4, #6]
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r1
    beq _08032162
    adds r0, r6, #0
    bl func_08032198
_08032162:
    movs r0, #0
    str r0, [r6, #0x28]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
_0803216C: .4byte 0x000003FF

    thumb_func_start func_08032170
func_08032170: @ 0x08032170
    push {r4, r5, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    mov r0, sp
    bl func_0801FE94
    adds r5, #0x20
    ldrb r5, [r5]
    adds r0, r4, #0
    mov r1, sp
    movs r2, #6
    bl memcpy
    strb r5, [r4, #6]
    adds r0, r4, #0
    add sp, #8
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_08032198
func_08032198: @ 0x08032198
    push {lr}
    adds r2, r0, #0
    adds r2, #0x20
    strb r1, [r2]
    ldrh r1, [r0, #0x22]
    ldrb r2, [r2]
    adds r1, r1, r2
    bl func_080321C8
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080321B0
func_080321B0: @ 0x080321B0
    push {lr}
    strh r1, [r0, #0x22]
    ldrh r1, [r0, #0x22]
    adds r2, r0, #0
    adds r2, #0x20
    ldrb r2, [r2]
    adds r1, r1, r2
    bl func_080321C8
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080321C8
func_080321C8: @ 0x080321C8
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r4, [r5, #0x10]
    cmp r4, #0
    beq _080321EE
    adds r0, r4, #0
    adds r0, #0x30
    bl func_0805E860
    adds r0, r4, #0
    adds r0, #0x44
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
_080321EE:
    ldr r0, [r5]
    ldr r1, [r0]
    ldr r1, [r1, #0x68]
    bl _call_via_r1
    adds r1, r6, #0
    bl func_08032090
    strh r0, [r5, #0x24]
    strh r0, [r5, #0x26]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
_08032208:
    .byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
    .byte 0xE0, 0xB4, 0x8A, 0xB0, 0x05, 0x1C, 0xA9, 0x69, 0x00, 0x29, 0x02, 0xD1, 0xE8, 0x69, 0x00, 0x28
    .byte 0x65, 0xD0, 0x2E, 0x68, 0xA8, 0x88, 0x81, 0x46, 0xAC, 0x68, 0xEA, 0x68, 0x92, 0x46, 0x09, 0x19
    .byte 0x88, 0x46, 0xE8, 0x69, 0x17, 0x18, 0x00, 0x29, 0x01, 0xDA, 0x00, 0x20, 0x08, 0xE0, 0x30, 0x68
    .byte 0xC2, 0x6A, 0x30, 0x1C, 0x49, 0x46, 0xA1, 0xF0, 0x65, 0xFB, 0x00, 0x04, 0x80, 0x45, 0x00, 0xDD
    .byte 0x80, 0x46, 0x00, 0x2F, 0x01, 0xDA, 0x00, 0x27, 0x09, 0xE0, 0x30, 0x68, 0x02, 0x6B, 0x30, 0x1C
    .byte 0x49, 0x46, 0xA1, 0xF0, 0x57, 0xFB, 0x00, 0x04, 0x87, 0x42, 0x00, 0xDD, 0x07, 0x1C, 0x42, 0x46
    .byte 0x11, 0x14, 0x20, 0x14, 0x09, 0x1A, 0x09, 0x91, 0x39, 0x14, 0x52, 0x46, 0x10, 0x14, 0x09, 0x1A
    .byte 0x8A, 0x46, 0x69, 0x69, 0x03, 0xA8, 0xCA, 0x68, 0x29, 0x1C, 0xA1, 0xF0, 0x43, 0xFB, 0x03, 0x98
    .byte 0x04, 0x99, 0x05, 0x90, 0x06, 0x91, 0x05, 0xAC, 0x31, 0x68, 0x68, 0x46, 0x4B, 0x6B, 0x31, 0x1C
    .byte 0x4A, 0x46, 0xA1, 0xF0, 0x39, 0xFB, 0x68, 0x46, 0x21, 0x1C, 0x79, 0xF0, 0xE1, 0xFE, 0x00, 0x06
    .byte 0x00, 0x28, 0x19, 0xD1, 0x00, 0x26, 0xA0, 0x5F, 0x02, 0x21, 0x62, 0x5E, 0x04, 0x26, 0xA3, 0x5F
    .byte 0x06, 0x21, 0x64, 0x5E, 0x07, 0xA9, 0x09, 0x9E, 0x30, 0x18, 0x08, 0x80, 0x52, 0x44, 0x4A, 0x80
    .byte 0xF3, 0x18, 0x8B, 0x80, 0x54, 0x44, 0xCC, 0x80, 0x68, 0x46, 0x79, 0xF0, 0xC9, 0xFE, 0x01, 0x21
    .byte 0x48, 0x40, 0x00, 0x06, 0x00, 0x28, 0x02, 0xD0, 0x40, 0x46, 0xA8, 0x60, 0xEF, 0x60, 0x0A, 0xB0
    .byte 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

    thumb_func_start func_08032300
func_08032300: @ 0x08032300
    movs r1, #0
    str r1, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_08032308
func_08032308: @ 0x08032308
    push {r4, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    movs r0, #0xa
    ldrsh r1, [r3, r0]
    lsls r0, r1, #0x10
    str r0, [r3, #8]
    cmp r2, #0
    beq _08032332
    cmp r4, r1
    beq _08032332
    cmp r2, #0
    bge _08032324
    rsbs r2, r2, #0
_08032324:
    str r2, [r3, #0x28]
    movs r1, #0
    strh r4, [r3, #0x2c]
    adds r0, r3, #0
    adds r0, #0x2e
    strb r1, [r0]
    b _08032336
_08032332:
    movs r0, #0
    str r0, [r3, #0x28]
_08032336:
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_0803233C
func_0803233C: @ 0x0803233C
    push {r4, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    movs r0, #0xe
    ldrsh r1, [r3, r0]
    lsls r0, r1, #0x10
    str r0, [r3, #0xc]
    cmp r2, #0
    beq _08032366
    cmp r4, r1
    beq _08032366
    cmp r2, #0
    bge _08032358
    rsbs r2, r2, #0
_08032358:
    str r2, [r3, #0x28]
    strh r4, [r3, #0x2c]
    adds r1, r3, #0
    adds r1, #0x2e
    movs r0, #1
    strb r0, [r1]
    b _0803236A
_08032366:
    movs r0, #0
    str r0, [r3, #0x28]
_0803236A:
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08032370
func_08032370: @ 0x08032370
    push {lr}
    movs r1, #0
    ldr r0, [r0, #0x28]
    cmp r0, #0
    bne _0803237C
    movs r1, #1
_0803237C:
    adds r0, r1, #0
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08032384
func_08032384: @ 0x08032384
    push {r4, r5, lr}
    lsls r2, r2, #0x18
    lsrs r5, r2, #0x18
    ldr r4, [r0, #0x10]
    cmp r4, #0
    beq _080323C2
    adds r0, r4, #0
    adds r0, #0x70
    bl func_0805E860
    adds r0, r4, #0
    adds r0, #0x84
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
    movs r3, #1
    cmp r5, #0
    beq _080323B2
    movs r3, #2
_080323B2:
    adds r2, r4, #0
    adds r2, #0x8a
    ldrb r1, [r2]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
_080323C2:
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_080323C8
func_080323C8: @ 0x080323C8
    push {lr}
    ldr r2, [r0, #0x10]
    cmp r2, #0
    beq _080323DC
    adds r2, #0x8a
    ldrb r1, [r2]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r2]
_080323DC:
    pop {r0}
    bx r0

    thumb_func_start func_080323E0
func_080323E0: @ 0x080323E0
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    beq _080323EC
    adds r0, #0x88
    strb r1, [r0]
_080323EC:
    pop {r0}
    bx r0

    thumb_func_start func_080323F0
func_080323F0: @ 0x080323F0
    push {lr}
    ldr r2, [r0, #0x10]
    cmp r2, #0
    beq _08032406
    adds r2, #0x8a
    lsls r3, r1, #2
    ldrb r1, [r2]
    movs r0, #3
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
_08032406:
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0803240C
func_0803240C: @ 0x0803240C
    push {r4, lr}
    movs r3, #0xa
    ldrsh r2, [r1, r3]
    movs r4, #0xe
    ldrsh r3, [r1, r4]
    subs r1, r2, #7
    strh r1, [r0]
    subs r1, r3, #4
    strh r1, [r0, #2]
    adds r2, #7
    strh r2, [r0, #4]
    adds r3, #5
    strh r3, [r0, #6]
    pop {r4}
    pop {r2}
    bx r2

    thumb_func_start func_0803242C
func_0803242C: @ 0x0803242C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r3, r0, #0
    mov r8, r1
    ldrh r0, [r3, #0x24]
    cmp r0, #0
    beq _08032440
    subs r0, #1
    b _08032442
_08032440:
    ldrh r0, [r3, #0x26]
_08032442:
    strh r0, [r3, #0x24]
    ldr r4, [r3, #0x28]
    cmp r4, #0
    beq _080324A6
    movs r2, #0
    adds r0, r3, #0
    adds r0, #0x2e
    ldrb r0, [r0]
    cmp r0, #0
    bne _08032458
    movs r2, #1
_08032458:
    mov ip, r2
    cmp r2, #0
    beq _08032462
    ldr r2, [r3, #8]
    b _08032464
_08032462:
    ldr r2, [r3, #0xc]
_08032464:
    asrs r5, r2, #0x10
    movs r0, #0x2c
    ldrsh r6, [r3, r0]
    subs r0, r6, r5
    adds r7, r0, #0
    cmp r0, #0
    bne _08032476
    str r0, [r3, #0x28]
    b _080324A6
_08032476:
    adds r1, r2, r4
    cmp r0, #0
    bgt _0803247E
    subs r1, r2, r4
_0803247E:
    adds r2, r1, #0
    asrs r0, r2, #0x10
    cmp r0, r5
    beq _0803249A
    subs r0, r6, r0
    cmp r7, #0
    ble _08032492
    cmp r0, #0
    ble _08032496
    b _0803249A
_08032492:
    cmp r0, #0
    blt _0803249A
_08032496:
    movs r0, #0
    str r0, [r3, #0x28]
_0803249A:
    mov r0, ip
    cmp r0, #0
    beq _080324A4
    str r2, [r3, #8]
    b _080324A6
_080324A4:
    str r2, [r3, #0xc]
_080324A6:
    adds r0, r3, #0
    mov r1, r8
    bl func_0801FE60
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_080324B8
func_080324B8: @ 0x080324B8
    movs r0, #0
    bx lr

    thumb_func_start func_080324BC
func_080324BC: @ 0x080324BC
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0xc
    adds r7, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    mov sb, r3
    add r0, sp, #0x34
    ldrb r0, [r0]
    mov r8, r0
    str r4, [r7]
    ldr r0, _0803255C @ =vtable_unk_080E68B4
    str r0, [r7, #4]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x68]
    bl _call_via_r1
    adds r1, r0, #0
    ldrh r2, [r4, #0x22]
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    adds r2, r2, r0
    ldr r3, [r4]
    adds r0, r7, #0
    adds r0, #8
    str r5, [sp]
    mov r5, sb
    str r5, [sp, #4]
    add r5, sp, #8
    mov r6, r8
    strb r6, [r5]
    bl func_080A4A00
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x6c]
    bl _call_via_r1
    adds r1, r0, #0
    ldr r3, [r4]
    adds r0, r7, #0
    adds r0, #0x48
    movs r2, #2
    str r2, [sp]
    movs r2, #0xe
    str r2, [sp, #4]
    movs r2, #0
    strb r2, [r5]
    movs r2, #0
    bl func_080A4A00
    adds r0, r7, #0
    adds r0, #0x88
    movs r1, #0
    add r2, sp, #0x28
    ldrb r2, [r2]
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    ldr r3, [sp, #0x2c]
    lsls r6, r3, #2
    strb r6, [r0]
    adds r0, #1
    add r5, sp, #0x30
    ldrb r5, [r5]
    strb r5, [r0]
    adds r0, r7, #0
    add sp, #0xc
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0803255C: .4byte vtable_unk_080E68B4

    thumb_func_start func_08032560
func_08032560: @ 0x08032560
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x14
    adds r7, r0, #0
    adds r5, r1, #0
    adds r4, r2, #0
    mov sb, r3
    ldr r6, [sp, #0x30]
    add r0, sp, #0x40
    ldrb r0, [r0]
    mov r8, r0
    str r5, [r7]
    ldr r0, _08032608 @ =vtable_unk_080E68B4
    str r0, [r7, #4]
    ldr r0, [r5]
    ldr r1, [r0]
    ldr r1, [r1, #0x68]
    bl _call_via_r1
    adds r1, r0, #0
    ldrh r2, [r5, #0x22]
    adds r0, r5, #0
    adds r0, #0x20
    ldrb r0, [r0]
    adds r2, r2, r0
    ldr r3, [r5]
    adds r0, r7, #0
    adds r0, #8
    str r4, [sp]
    mov r4, sb
    str r4, [sp, #4]
    str r6, [sp, #8]
    add r4, sp, #0xc
    mov r6, r8
    strb r6, [r4]
    bl func_080A49A0
    ldr r0, [r5]
    ldr r1, [r0]
    ldr r1, [r1, #0x6c]
    bl _call_via_r1
    adds r1, r0, #0
    ldr r3, [r5]
    adds r0, r7, #0
    adds r0, #0x48
    movs r2, #2
    str r2, [sp]
    movs r2, #0xe
    str r2, [sp, #4]
    add r4, sp, #8
    movs r2, #0
    strb r2, [r4]
    movs r2, #0
    bl func_080A4A00
    adds r0, r7, #0
    adds r0, #0x88
    movs r1, #0
    add r2, sp, #0x34
    ldrb r2, [r2]
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    ldr r3, [sp, #0x38]
    lsls r3, r3, #2
    str r3, [sp, #0x10]
    strb r3, [r0]
    adds r0, #1
    add r6, sp, #0x3c
    ldrb r6, [r6]
    strb r6, [r0]
    adds r0, r7, #0
    add sp, #0x14
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_08032608: .4byte vtable_unk_080E68B4

    thumb_func_start func_0803260C
func_0803260C: @ 0x0803260C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x47
    ldrb r0, [r1]
    cmp r0, #0
    bne _08032630
    adds r0, r4, #0
    adds r0, #0x30
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _08032634
    adds r1, r4, #0
    adds r1, #0x44
    movs r0, #1
    b _08032632
_08032630:
    movs r0, #0
_08032632:
    strb r0, [r1]
_08032634:
    adds r1, r4, #0
    adds r1, #0x8a
    ldrb r0, [r1]
    lsls r0, r0, #0x1e
    lsrs r5, r0, #0x1e
    adds r6, r1, #0
    cmp r5, #0
    beq _0803268A
    movs r7, #0
    subs r1, #3
    ldrb r0, [r1]
    cmp r0, #0
    bne _0803266A
    adds r0, r4, #0
    adds r0, #0x70
    bl func_0805E8F0
    adds r2, r0, #0
    lsls r0, r2, #0x1e
    cmp r0, #0
    bge _08032666
    adds r1, r4, #0
    adds r1, #0x84
    movs r0, #1
    strb r0, [r1]
_08032666:
    adds r0, r2, #0
    b _08032670
_0803266A:
    movs r0, #0
    strb r0, [r1]
    movs r0, #2
_08032670:
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge _0803267C
    cmp r5, #2
    beq _0803267C
    movs r7, #1
_0803267C:
    cmp r7, #0
    beq _0803268A
    ldrb r1, [r6]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r6]
_0803268A:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08032690
func_08032690: @ 0x08032690
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x50
    adds r6, r0, #0
    mov sl, r1
    ldr r0, [r6]
    mov r8, r0
    ldr r1, [r0]
    str r1, [sp, #0x3c]
    movs r2, #0xa
    ldrsh r1, [r0, r2]
    mov r3, sl
    movs r4, #0xc
    ldrsh r0, [r3, r4]
    subs r1, r1, r0
    str r1, [sp, #0x40]
    mov r0, r8
    movs r2, #0xe
    ldrsh r1, [r0, r2]
    movs r4, #0xe
    ldrsh r0, [r3, r4]
    subs r0, r1, r0
    str r0, [sp, #0x44]
    movs r0, #0x80
    lsls r0, r0, #8
    subs r0, r0, r1
    str r0, [sp, #0x48]
    add r2, sp, #0x34
    ldr r0, [r3]
    ldr r1, [r3, #8]
    str r0, [sp, #0x34]
    str r1, [r2, #4]
    adds r0, r6, #0
    adds r0, #0x8a
    ldrb r1, [r0]
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #0
    beq _080327C2
    cmp r0, #0
    blt _080327C2
    cmp r0, #2
    bgt _080327C2
    mov r0, r8
    adds r0, #0x20
    ldrb r0, [r0]
    lsrs r1, r1, #2
    lsls r1, r1, #4
    lsls r0, r0, #2
    ldr r2, _08032764 @ =0x080F1328
    adds r0, r0, r2
    adds r1, r1, r0
    movs r2, #0
    ldrsh r0, [r1, r2]
    movs r3, #2
    ldrsh r1, [r1, r3]
    adds r5, r6, #0
    adds r5, #0x48
    ldr r4, [sp, #0x40]
    adds r0, r4, r0
    str r0, [sp, #0x4c]
    ldr r0, [sp, #0x44]
    adds r0, r0, r1
    mov sb, r0
    adds r0, r6, #0
    adds r0, #0x70
    ldr r1, [r6, #0x70]
    ldr r3, [r1]
    ldrh r2, [r0, #0xc]
    lsls r2, r2, #2
    ldr r0, [r6, #0x74]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    ldr r3, [sp, #0x38]
    ldr r2, [r6, #0x48]
    ldr r1, [r6, #0x50]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _0803276C
    ldrh r0, [r5, #0xc]
    adds r1, r6, #0
    adds r1, #0x58
    ldr r4, [sp, #0x48]
    str r4, [sp]
    adds r4, r7, #0
    str r4, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    adds r0, r3, #0
    ldr r1, [sp, #0x4c]
    mov r2, sb
    movs r3, #0x55
    ldr r4, _08032768 @ =func_030004DC
    bl _call_via_r4
    b _0803276E
    .align 2, 0
_08032764: .4byte 0x080F1328
_08032768: .4byte func_030004DC
_0803276C:
    movs r0, #0
_0803276E:
    cmp r0, #0
    beq _080327C2
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    mov sb, r0
    cmp r1, #0
    beq _080327C2
    ldr r1, [sp, #0x34]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _080327A2
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    b _080327BC
_080327A2:
    adds r4, r5, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _080327BC
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_080327BC:
    movs r0, #0
    mov r1, sb
    strb r0, [r1]
_080327C2:
    adds r0, r6, #0
    adds r0, #0x8b
    ldrb r0, [r0]
    cmp r0, #1
    beq _080327EC
    cmp r0, #1
    ble _080327D4
    cmp r0, #2
    beq _080327F0
_080327D4:
    mov r0, r8
    adds r0, #0x21
    ldrb r0, [r0]
    movs r1, #3
    ands r0, r1
    lsls r4, r0, #2
    orrs r4, r0
    lsls r1, r0, #4
    orrs r4, r1
    lsls r0, r0, #6
    orrs r4, r0
    b _080327F2
_080327EC:
    movs r4, #0x19
    b _080327F2
_080327F0:
    movs r4, #0x1a
_080327F2:
    adds r5, r6, #0
    adds r5, #8
    add r2, sp, #0x34
    mov r8, r2
    ldr r1, [r6, #0x30]
    ldr r3, [r1]
    ldrh r2, [r6, #0x3c]
    lsls r2, r2, #2
    ldr r0, [r6, #0x34]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    mov r3, r8
    ldr r3, [r3, #4]
    mov sb, r3
    ldr r2, [r6, #8]
    ldr r1, [r6, #0x10]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _0803284C
    ldrh r0, [r5, #0xc]
    adds r1, r6, #0
    adds r1, #0x18
    ldr r3, [sp, #0x48]
    str r3, [sp]
    adds r3, r7, #0
    str r3, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    mov r0, sb
    ldr r1, [sp, #0x40]
    ldr r2, [sp, #0x44]
    adds r3, r4, #0
    ldr r4, _08032848 @ =func_030004DC
    bl _call_via_r4
    b _0803284E
    .align 2, 0
_08032848: .4byte func_030004DC
_0803284C:
    movs r0, #0
_0803284E:
    cmp r0, #0
    beq _080328A4
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    mov sb, r0
    cmp r1, #0
    beq _080328A4
    mov r4, r8
    ldr r1, [r4]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _08032884
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    b _0803289E
_08032884:
    adds r4, r5, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _0803289E
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_0803289E:
    movs r0, #0
    mov r1, sb
    strb r0, [r1]
_080328A4:
    adds r0, r6, #0
    adds r0, #0x88
    ldrb r0, [r0]
    cmp r0, #1
    beq _080328C6
    cmp r0, #1
    bgt _080328B8
    cmp r0, #0
    beq _080328C2
    b _080328C6
_080328B8:
    cmp r0, #2
    beq _080328CA
    cmp r0, #3
    bne _080328C6
    b _080328F0
_080328C2:
    movs r4, #0
    b _080328CC
_080328C6:
    movs r4, #1
    b _080328CC
_080328CA:
    movs r4, #2
_080328CC:
    ldr r2, [sp, #0x3c]
    ldr r0, [r2]
    ldr r1, [r0, #0x58]
    adds r0, r2, #0
    bl _call_via_r1
    mov r3, sl
    ldr r1, [r3, #8]
    adds r2, r6, #0
    adds r2, #0x89
    movs r3, #0
    ldrsb r3, [r2, r3]
    ldr r2, [sp, #0x44]
    adds r3, r2, r3
    str r4, [sp]
    ldr r2, [sp, #0x40]
    bl func_0803AE58
_080328F0:
    add sp, #0x50
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08032900
func_08032900: @ 0x08032900
    push {lr}
    cmp r0, #2
    bne _0803292C
    ldr r0, _08032920 @ =0xFFFFFEF0
    adds r1, r1, r0
    ldr r0, _08032924 @ =0x000002AF
    cmp r1, r0
    bhi _08032928
    cmp r2, #0xaf
    ble _08032928
    subs r0, #0x60
    cmp r2, r0
    bgt _08032928
    movs r0, #1
    b _0803292E
    .align 2, 0
_08032920: .4byte 0xFFFFFEF0
_08032924: .4byte 0x000002AF
_08032928:
    movs r0, #2
    b _0803292E
_0803292C:
    movs r0, #0
_0803292E:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08032934
func_08032934: @ 0x08032934
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r4, r2, #0
    ldrh r0, [r4, #8]
    str r0, [sp]
    adds r0, r5, #0
    movs r3, #2
    bl func_080320DC
    ldr r0, _08032958 @ =vtable_unk_080E6828
    str r0, [r5, #0x14]
    str r4, [r5, #0x30]
    adds r0, r5, #0
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
_08032958: .4byte vtable_unk_080E6828
_0803295C:
    .byte 0x70, 0xB5, 0x82, 0xB0
    .byte 0x05, 0x1C, 0x0E, 0x1C, 0x11, 0x48, 0x68, 0x61, 0x2C, 0x6B, 0x68, 0x46, 0x29, 0x1C, 0xFF, 0xF7
    .byte 0xFF, 0xFB, 0x68, 0x46, 0x06, 0xC8, 0x06, 0xC4, 0x69, 0x8C, 0x28, 0x6B, 0x01, 0x81, 0x0C, 0x48
    .byte 0x68, 0x61, 0x29, 0x69, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21
    .byte 0xA0, 0xF0, 0xC0, 0xFF, 0x01, 0x20, 0x30, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x28, 0x1C, 0xCD, 0xF7
    .byte 0x33, 0xFE, 0x02, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x28, 0x68, 0x0E, 0x08
    .byte 0x50, 0x62, 0x0E, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x8C, 0x20, 0xCD, 0xF7, 0x0B, 0xFE, 0x21, 0x1C
    .byte 0x00, 0xF0, 0x1E, 0xF8, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x00, 0x6B, 0x40, 0x89
    .byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x6B, 0x41, 0x81, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x0A, 0x23
    .byte 0xCA, 0x5E, 0x0E, 0x24, 0x0B, 0x5F, 0xD1, 0x1F, 0x01, 0x80, 0x19, 0x1C, 0x0A, 0x39, 0x41, 0x80
    .byte 0x07, 0x32, 0x82, 0x80, 0x04, 0x33, 0xC3, 0x80, 0x10, 0xBC, 0x04, 0xBC, 0x10, 0x47, 0x00, 0x00

    thumb_func_start func_08032A00
func_08032A00: @ 0x08032A00
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #1
    str r0, [sp]
    movs r0, #0
    str r0, [sp, #4]
    str r0, [sp, #8]
    add r2, sp, #0xc
    strb r0, [r2]
    adds r0, r4, #0
    movs r2, #6
    movs r3, #0x20
    bl func_080324BC
    ldr r0, _08032A2C @ =vtable_unk_080E6864
    str r0, [r4, #4]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08032A2C: .4byte vtable_unk_080E6864

    thumb_func_start func_08032A30
func_08032A30: @ 0x08032A30
    push {lr}
    adds r1, r0, #0
    ldrh r0, [r1, #0x24]
    cmp r0, #0
    beq _08032A3E
    subs r0, #1
    b _08032A40
_08032A3E:
    ldrh r0, [r1, #0x26]
_08032A40:
    strh r0, [r1, #0x24]
    ldr r2, [r1, #0x10]
    cmp r2, #0
    beq _08032A52
    ldr r0, [r2, #4]
    ldr r1, [r0, #0xc]
    adds r0, r2, #0
    bl _call_via_r1
_08032A52:
    pop {r0}
    bx r0
    .align 2, 0
_08032A58:
    .byte 0x00, 0xB5, 0x30, 0x30, 0x2B, 0xF0, 0x1A, 0xFF
    .byte 0x02, 0xBC, 0x08, 0x47, 0x00, 0xB5, 0x01, 0x1C, 0x30, 0x31, 0x00, 0x22, 0xC8, 0x89, 0x00, 0x28
    .byte 0x04, 0xD0, 0x10, 0x20, 0x09, 0x5E, 0x48, 0x42, 0x08, 0x43, 0xC2, 0x0F, 0x10, 0x1C, 0x02, 0xBC
    .byte 0x08, 0x47, 0x00, 0x00, 0x44, 0x30, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00, 0x8B, 0x30, 0x01, 0x70
    .byte 0x70, 0x47, 0x00, 0x00, 0x89, 0x30, 0x01, 0x70, 0x70, 0x47, 0x00, 0x00, 0x88, 0x30, 0x01, 0x70
    .byte 0x70, 0x47, 0x00, 0x00, 0x8A, 0x30, 0x02, 0x78, 0x04, 0x21, 0x49, 0x42, 0x11, 0x40, 0x01, 0x70
    .byte 0x70, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x05, 0x1C, 0x14, 0x06, 0x24, 0x0E, 0x70, 0x30, 0x2B, 0xF0
    .byte 0xCF, 0xFE, 0x28, 0x1C, 0x84, 0x30, 0x00, 0x22, 0x01, 0x21, 0x01, 0x70, 0x02, 0x30, 0x02, 0x70
    .byte 0x01, 0x30, 0x01, 0x70, 0x01, 0x23, 0x00, 0x2C, 0x00, 0xD0, 0x02, 0x23, 0x2A, 0x1C, 0x8A, 0x32
    .byte 0x11, 0x78, 0x04, 0x20, 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0x30, 0xBC, 0x01, 0xBC
    .byte 0x00, 0x47, 0x00, 0x00, 0x8A, 0x30, 0x89, 0x00, 0x03, 0x78, 0x03, 0x22, 0x1A, 0x40, 0x0A, 0x43
    .byte 0x02, 0x70, 0x70, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0x30, 0x30, 0x2B, 0xF0, 0xA9, 0xFE, 0x20, 0x1C
    .byte 0x44, 0x30, 0x00, 0x22, 0x01, 0x21, 0x01, 0x70, 0x02, 0x30, 0x02, 0x70, 0x01, 0x30, 0x01, 0x70
    .byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x80, 0x8C, 0x70, 0x47, 0x00, 0xB5, 0x00, 0x21
    .byte 0x80, 0x8C, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x08, 0x1C, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
    .byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x02, 0x1C, 0x50, 0x8C, 0x88, 0x42, 0x02, 0xD0, 0x10, 0x1C
    .byte 0xFF, 0xF7, 0x2E, 0xFB, 0x01, 0xBC, 0x00, 0x47, 0x40, 0x8C, 0x70, 0x47, 0x41, 0x8C, 0x20, 0x30
    .byte 0x00, 0x78, 0x09, 0x18, 0x08, 0x1C, 0x70, 0x47, 0x00, 0xB5, 0x02, 0x1C, 0x20, 0x30, 0x00, 0x78
    .byte 0x88, 0x42, 0x02, 0xD0, 0x10, 0x1C, 0xFF, 0xF7, 0x0F, 0xFB, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
    .byte 0x20, 0x30, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00, 0x0E, 0x22, 0x81, 0x5E, 0x80, 0x20, 0x00, 0x02
    .byte 0x40, 0x1A, 0x70, 0x47, 0x21, 0x30, 0x01, 0x70, 0x70, 0x47, 0x00, 0x00, 0x21, 0x30, 0x00, 0x78
    .byte 0x70, 0x47, 0x00, 0x00, 0xC1, 0x61, 0x70, 0x47, 0xC0, 0x69, 0x70, 0x47, 0x81, 0x61, 0x70, 0x47
    .byte 0x80, 0x69, 0x70, 0x47

    thumb_func_start func_08032BB4
func_08032BB4: @ 0x08032BB4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x48
    str r0, [sp, #0x28]
    str r1, [sp, #0x2c]
    mov sl, r2
    str r3, [sp, #0x30]
    mov r2, sp
    ldrb r1, [r2]
    movs r4, #0x10
    rsbs r4, r4, #0
    adds r0, r4, #0
    ands r0, r1
    strb r0, [r2]
    movs r0, #0
    str r0, [sp, #0x34]
    ldr r1, [sp, #0x30]
    cmp r1, #0x25
    beq _08032BE2
    b _08032E1C
_08032BE2:
    ldr r2, [sp, #0x2c]
    ldr r3, _08032C30 @ =0x000005DC
    adds r7, r2, r3
    adds r0, r7, #0
    bl GetStoredBushelCount__C4Barn
    cmp r0, #0
    bne _08032BF4
    b _08032E1C
_08032BF4:
    movs r6, #0
    str r6, [sp, #0x38]
    adds r0, r7, #0
    bl GetPregnancyStallCapacity__C4Barn
    mov sb, r0
    ldr r0, [sp, #0x34]
    cmp r0, sb
    bhs _08032CA6
    add r1, sp, #0x14
    mov r8, r1
_08032C0A:
    adds r0, r7, #0
    adds r1, r6, #0
    bl GetPregnancyStallLinkedStall__C4BarnUi
    mvns r0, r0
    lsrs r4, r0, #0x1f
    adds r0, r7, #0
    adds r1, r6, #0
    bl HasBushelForPregnancyStall__C4BarnUi
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08032C34
    cmp r4, #0
    bne _08032CA0
    ldr r2, [sp, #0x38]
    adds r2, #1
    str r2, [sp, #0x38]
    b _08032CA0
    .align 2, 0
_08032C30: .4byte 0x000005DC
_08032C34:
    cmp r4, #0
    beq _08032CA0
    add r0, sp, #0x10
    adds r1, r7, #0
    adds r2, r6, #0
    bl method_0800D0C0__C4BarnUi
    ldr r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r3, r8
    movs r0, #0
    ldrsh r1, [r3, r0]
    ldr r2, [sp, #0x68]
    subs r1, r1, r2
    movs r2, #2
    ldrsh r0, [r3, r2]
    ldr r3, [sp, #0x6c]
    subs r0, r0, r3
    adds r2, r1, #0
    muls r2, r1, r2
    adds r1, r2, #0
    adds r3, r0, #0
    muls r3, r0, r3
    adds r0, r3, #0
    adds r5, r1, r0
    mov r0, sp
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    beq _08032C76
    ldr r0, [sp, #0x34]
    cmp r5, r0
    bhs _08032CA0
_08032C76:
    add r4, sp, #8
    ldrb r1, [r4]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #5
    orrs r0, r1
    strb r0, [r4]
    strb r6, [r4, #1]
    ldr r0, [sp, #0x70]
    adds r1, r4, #0
    bl func_0809E968
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08032CA0
    mov r1, sp
    adds r0, r4, #0
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    str r5, [sp, #0x34]
_08032CA0:
    adds r6, #1
    cmp r6, sb
    blo _08032C0A
_08032CA6:
    movs r6, #0
    mov sb, r6
    ldr r1, [sp, #0x2c]
    ldr r2, _08032D30 @ =0x000005DC
    adds r0, r1, r2
    bl GetCapacity__C4Barn
    adds r6, r0, #0
    movs r5, #0
    cmp sb, r6
    bhs _08032D06
_08032CBC:
    adds r0, r7, #0
    adds r1, r5, #0
    bl GetBarnAnimal__C4BarnUi
    adds r4, r0, #0
    cmp r4, #0
    beq _08032D00
    mov r3, sl
    ldr r0, [r3]
    adds r1, r5, #0
    adds r1, #0x36
    ldr r2, [r0, #0x44]
    mov r0, sl
    bl _call_via_r2
    cmp r0, #0
    beq _08032D00
    ldrh r0, [r0, #4]
    cmp r0, #0x25
    bne _08032D00
    adds r0, r4, #0
    bl HasBeenFed__C9Livestock
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08032D00
    adds r0, r4, #0
    bl IsPregnant__C10BarnAnimal
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08032D00
    movs r0, #1
    add sb, r0
_08032D00:
    adds r5, #1
    cmp r5, r6
    blo _08032CBC
_08032D06:
    mov r1, sb
    cmp r1, #0
    bne _08032D0E
    b _08032E1C
_08032D0E:
    str r6, [sp, #0x3c]
    movs r2, #0
    mov r8, r2
    movs r4, #0
    cmp r8, r6
    bhs _08032D4E
_08032D1A:
    adds r0, r7, #0
    adds r1, r4, #0
    bl HasBushelForStall__C4BarnUi
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08032D34
    ldr r3, [sp, #0x38]
    adds r3, #1
    str r3, [sp, #0x38]
    b _08032D46
    .align 2, 0
_08032D30: .4byte 0x000005DC
_08032D34:
    cmp r4, #0xf
    bhi _08032D46
    movs r1, #0x1f
    ands r1, r4
    movs r0, #1
    lsls r0, r1
    mov r6, r8
    orrs r6, r0
    mov r8, r6
_08032D46:
    adds r4, #1
    ldr r0, [sp, #0x3c]
    cmp r4, r0
    blo _08032D1A
_08032D4E:
    ldr r1, [sp, #0x38]
    cmp sb, r1
    bls _08032E1C
    movs r3, #0
    movs r4, #0x1f
    movs r5, #1
    ldr r2, [sp, #0x70]
_08032D5C:
    ldrb r0, [r2]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1c
    cmp r0, #4
    bne _08032D7E
    ldr r6, [sp, #0x38]
    adds r6, #1
    str r6, [sp, #0x38]
    ldrb r1, [r2, #1]
    cmp r1, #0xf
    bhi _08032D7E
    ands r1, r4
    adds r0, r5, #0
    lsls r0, r1
    mov r1, r8
    bics r1, r0
    mov r8, r1
_08032D7E:
    adds r2, #8
    adds r3, #1
    cmp r3, #6
    bls _08032D5C
    ldr r2, [sp, #0x38]
    cmp sb, r2
    bls _08032E1C
    movs r4, #0
    ldr r3, [sp, #0x3c]
    cmp r4, r3
    bhs _08032E1C
    mov r6, sp
    adds r6, #0x1c
    str r6, [sp, #0x44]
    add r5, sp, #8
    movs r0, #0x10
    rsbs r0, r0, #0
    mov sb, r0
_08032DA2:
    movs r0, #0
    cmp r4, #0xf
    bhi _08032DBA
    movs r0, #0x1f
    ands r0, r4
    movs r1, #1
    lsls r1, r0
    mov r2, r8
    ands r1, r2
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
_08032DBA:
    cmp r0, #0
    beq _08032E14
    add r0, sp, #0x18
    adds r1, r7, #0
    adds r2, r4, #0
    bl method_0800D074__C4BarnUi
    ldr r0, [sp, #0x18]
    str r0, [sp, #0x1c]
    ldr r3, [sp, #0x44]
    movs r6, #0
    ldrsh r1, [r3, r6]
    ldr r0, [sp, #0x68]
    subs r1, r1, r0
    movs r2, #2
    ldrsh r0, [r3, r2]
    ldr r3, [sp, #0x6c]
    subs r0, r0, r3
    adds r6, r1, #0
    muls r6, r1, r6
    adds r1, r6, #0
    adds r2, r0, #0
    muls r2, r0, r2
    adds r0, r2, #0
    adds r2, r1, r0
    mov r0, sp
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    beq _08032DFC
    ldr r3, [sp, #0x34]
    cmp r2, r3
    bhs _08032E14
_08032DFC:
    ldrb r1, [r5]
    mov r0, sb
    ands r0, r1
    movs r1, #4
    orrs r0, r1
    strb r0, [r5]
    strb r4, [r5, #1]
    mov r1, sp
    adds r0, r5, #0
    ldm r0!, {r3, r6}
    stm r1!, {r3, r6}
    str r2, [sp, #0x34]
_08032E14:
    adds r4, #1
    ldr r6, [sp, #0x3c]
    cmp r4, r6
    blo _08032DA2
_08032E1C:
    ldr r0, [sp, #0x30]
    cmp r0, #0x11
    beq _08032E24
    b _08032F8C
_08032E24:
    ldr r1, [sp, #0x2c]
    movs r2, #0xff
    lsls r2, r2, #2
    adds r7, r1, r2
    adds r0, r7, #0
    bl GetStoredBushelCount__C4Coop
    cmp r0, #0
    bne _08032E38
    b _08032F8C
_08032E38:
    adds r0, r7, #0
    bl GetCapacity__C4Coop
    adds r6, r0, #0
    movs r3, #0
    mov sb, r3
    movs r5, #0
    cmp sb, r6
    bhs _08032E88
_08032E4A:
    adds r0, r7, #0
    adds r1, r5, #0
    bl GetChicken__C4CoopUi
    adds r4, r0, #0
    cmp r4, #0
    beq _08032E82
    mov r1, sl
    ldr r0, [r1]
    adds r1, r5, #0
    adds r1, #0x2e
    ldr r2, [r0, #0x44]
    mov r0, sl
    bl _call_via_r2
    cmp r0, #0
    beq _08032E82
    ldrh r0, [r0, #4]
    cmp r0, #0x11
    bne _08032E82
    adds r0, r4, #0
    bl HasBeenFed__C9Livestock
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08032E82
    movs r2, #1
    add sb, r2
_08032E82:
    adds r5, #1
    cmp r5, r6
    blo _08032E4A
_08032E88:
    mov r3, sb
    cmp r3, #0
    beq _08032F8C
    str r6, [sp, #0x40]
    movs r5, #0
    mov r8, r5
    movs r4, #0
    cmp r8, r6
    bhs _08032EC6
_08032E9A:
    adds r0, r7, #0
    adds r1, r4, #0
    bl HasBushelForEnt__C4CoopUi
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08032EAC
    adds r5, #1
    b _08032EBE
_08032EAC:
    cmp r4, #7
    bhi _08032EBE
    movs r1, #0x1f
    ands r1, r4
    movs r0, #1
    lsls r0, r1
    mov r6, r8
    orrs r6, r0
    mov r8, r6
_08032EBE:
    adds r4, #1
    ldr r0, [sp, #0x40]
    cmp r4, r0
    blo _08032E9A
_08032EC6:
    cmp sb, r5
    bls _08032F8C
    movs r3, #0
    movs r4, #0x1f
    movs r6, #1
    ldr r2, [sp, #0x70]
_08032ED2:
    ldrb r0, [r2]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1c
    cmp r0, #3
    bne _08032EF0
    adds r5, #1
    ldrb r1, [r2, #1]
    cmp r1, #7
    bhi _08032EF0
    ands r1, r4
    adds r0, r6, #0
    lsls r0, r1
    mov r1, r8
    bics r1, r0
    mov r8, r1
_08032EF0:
    adds r2, #8
    adds r3, #1
    cmp r3, #6
    bls _08032ED2
    cmp sb, r5
    bls _08032F8C
    movs r4, #0
    ldr r2, [sp, #0x40]
    cmp r4, r2
    bhs _08032F8C
    mov r3, sp
    adds r3, #0x24
    str r3, [sp, #0x44]
    add r5, sp, #8
    movs r6, #0x10
    rsbs r6, r6, #0
    mov sb, r6
_08032F12:
    movs r0, #0
    cmp r4, #7
    bhi _08032F2A
    movs r0, #0x1f
    ands r0, r4
    movs r1, #1
    lsls r1, r0
    mov r0, r8
    ands r1, r0
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
_08032F2A:
    cmp r0, #0
    beq _08032F84
    add r0, sp, #0x20
    adds r1, r7, #0
    adds r2, r4, #0
    bl method_0800C6F0__C4CoopUi
    ldr r0, [sp, #0x20]
    str r0, [sp, #0x24]
    ldr r2, [sp, #0x44]
    movs r3, #0
    ldrsh r1, [r2, r3]
    ldr r6, [sp, #0x68]
    subs r1, r1, r6
    movs r3, #2
    ldrsh r0, [r2, r3]
    ldr r6, [sp, #0x6c]
    subs r0, r0, r6
    adds r2, r1, #0
    muls r2, r1, r2
    adds r1, r2, #0
    adds r3, r0, #0
    muls r3, r0, r3
    adds r0, r3, #0
    adds r2, r1, r0
    mov r0, sp
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    beq _08032F6C
    ldr r6, [sp, #0x34]
    cmp r2, r6
    bhs _08032F84
_08032F6C:
    ldrb r1, [r5]
    mov r0, sb
    ands r0, r1
    movs r1, #3
    orrs r0, r1
    strb r0, [r5]
    strb r4, [r5, #1]
    mov r1, sp
    adds r0, r5, #0
    ldm r0!, {r3, r6}
    stm r1!, {r3, r6}
    str r2, [sp, #0x34]
_08032F84:
    adds r4, #1
    ldr r0, [sp, #0x40]
    cmp r4, r0
    blo _08032F12
_08032F8C:
    movs r6, #0x36
    movs r7, #0x10
    rsbs r7, r7, #0
_08032F92:
    mov r1, sl
    ldr r0, [r1]
    ldr r2, [r0, #0x44]
    mov r0, sl
    adds r1, r6, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _0803303A
    ldrh r0, [r4, #4]
    ldr r2, [sp, #0x30]
    cmp r0, r2
    bne _0803303A
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x50]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08032FDE
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x54]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08032FDE
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x58]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0803303A
_08032FDE:
    movs r3, #0xa
    ldrsh r1, [r4, r3]
    ldr r0, [sp, #0x68]
    subs r1, r1, r0
    movs r2, #0xe
    ldrsh r0, [r4, r2]
    ldr r3, [sp, #0x6c]
    subs r0, r0, r3
    adds r2, r1, #0
    muls r2, r1, r2
    adds r1, r2, #0
    adds r3, r0, #0
    muls r3, r0, r3
    adds r0, r3, #0
    adds r1, r1, r0
    adds r5, r1, #0
    mov r0, sp
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    beq _0803300E
    ldr r0, [sp, #0x34]
    cmp r1, r0
    bhs _0803303A
_0803300E:
    add r4, sp, #8
    ldrb r1, [r4]
    adds r0, r7, #0
    ands r0, r1
    movs r1, #6
    orrs r0, r1
    strb r0, [r4]
    adds r0, r6, #0
    subs r0, #0x36
    strb r0, [r4, #1]
    ldr r0, [sp, #0x70]
    adds r1, r4, #0
    bl func_0809E968
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0803303A
    mov r1, sp
    adds r0, r4, #0
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    str r5, [sp, #0x34]
_0803303A:
    adds r6, #1
    cmp r6, #0x45
    bls _08032F92
    movs r4, #0x2e
_08033042:
    mov r6, sl
    ldr r0, [r6]
    ldr r2, [r0, #0x44]
    mov r0, sl
    adds r1, r4, #0
    bl _call_via_r2
    adds r4, #1
    cmp r4, #0x35
    bls _08033042
    movs r5, #0x4c
    movs r7, #0x10
    rsbs r7, r7, #0
_0803305C:
    mov r1, sl
    ldr r0, [r1]
    ldr r2, [r0, #0x44]
    mov r0, sl
    adds r1, r5, #0
    bl _call_via_r2
    adds r2, r0, #0
    cmp r2, #0
    beq _080330D4
    ldrh r0, [r2, #4]
    ldr r3, [sp, #0x30]
    cmp r0, r3
    bne _080330D4
    movs r6, #0xa
    ldrsh r1, [r2, r6]
    ldr r0, [sp, #0x68]
    subs r1, r1, r0
    movs r3, #0xe
    ldrsh r0, [r2, r3]
    ldr r6, [sp, #0x6c]
    subs r0, r0, r6
    adds r2, r1, #0
    muls r2, r1, r2
    adds r1, r2, #0
    adds r3, r0, #0
    muls r3, r0, r3
    adds r0, r3, #0
    adds r1, r1, r0
    adds r6, r1, #0
    mov r0, sp
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    beq _080330A8
    ldr r0, [sp, #0x34]
    cmp r1, r0
    bhs _080330D4
_080330A8:
    add r4, sp, #8
    ldrb r1, [r4]
    adds r0, r7, #0
    ands r0, r1
    movs r1, #8
    orrs r0, r1
    strb r0, [r4]
    adds r0, r5, #0
    subs r0, #0x4c
    strb r0, [r4, #1]
    ldr r0, [sp, #0x70]
    adds r1, r4, #0
    bl func_0809E968
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080330D4
    mov r1, sp
    adds r0, r4, #0
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    str r6, [sp, #0x34]
_080330D4:
    adds r5, #1
    cmp r5, #0x53
    bls _0803305C
    ldr r1, [sp, #0x28]
    mov r0, sp
    ldm r0!, {r2, r6}
    stm r1!, {r2, r6}
    ldr r0, [sp, #0x28]
    add sp, #0x48
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_080330F4
func_080330F4: @ 0x080330F4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x6c
    str r0, [sp, #0x44]
    adds r5, r1, #0
    adds r7, r2, #0
    adds r4, r3, #0
    ldr r3, [sp, #0x8c]
    add r2, sp, #0xc
    ldrb r1, [r2]
    movs r6, #0x10
    rsbs r6, r6, #0
    adds r0, r6, #0
    ands r0, r1
    strb r0, [r2]
    ldrb r1, [r4, #1]
    lsrs r1, r1, #2
    ldrh r0, [r4, #2]
    ldr r2, _08033150 @ =0x000003FF
    ands r0, r2
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    str r0, [sp, #0x48]
    ldrb r1, [r4, #3]
    lsrs r1, r1, #2
    ldrh r0, [r4, #4]
    ands r0, r2
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    mov sl, r0
    cmp r3, #1
    bne _08033144
    b _08033286
_08033144:
    cmp r3, #1
    bgt _08033154
    cmp r3, #0
    beq _0803315C
    b _0803356A
    .align 2, 0
_08033150: .4byte 0x000003FF
_08033154:
    cmp r3, #2
    bne _0803315A
    b _0803333C
_0803315A:
    b _0803356A
_0803315C:
    movs r0, #0
    str r0, [sp, #0x4c]
    mov sb, r0
    ldr r1, _080331F4 @ =0x000009C8
    adds r1, r5, r1
    str r1, [sp, #0x50]
    mov r2, sp
    adds r2, #0x20
    str r2, [sp, #0x54]
_0803316E:
    movs r7, #0
    mov r3, sb
    lsls r3, r3, #1
    str r3, [sp, #0x64]
    mov r4, sb
    adds r4, #1
    str r4, [sp, #0x60]
    ldr r6, [sp, #0x48]
    rsbs r0, r6, #0
    movs r1, #0x8c
    lsls r1, r1, #1
    adds r6, r0, r1
_08033186:
    ldr r0, [sp, #0x64]
    adds r0, #0x17
    lsls r0, r0, #3
    mov r2, sl
    subs r0, r0, r2
    adds r1, r6, #0
    muls r1, r6, r1
    adds r3, r0, #0
    muls r3, r0, r3
    adds r0, r3, #0
    adds r1, r1, r0
    mov r8, r1
    add r0, sp, #0xc
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    beq _080331AE
    ldr r4, [sp, #0x4c]
    cmp r8, r4
    bhs _08033272
_080331AE:
    movs r0, #0x2b
    mov r1, sb
    muls r1, r0, r1
    adds r0, r1, #0
    adds r0, r7, r0
    lsls r0, r0, #2
    ldr r2, [sp, #0x50]
    adds r0, r2, r0
    ldr r1, [r0]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #5
    bne _080331EE
    str r1, [sp, #0x1c]
    add r0, sp, #0x14
    add r1, sp, #0x1c
    bl func_0800A4A4
    add r5, sp, #0x14
    adds r0, r5, #0
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080331EE
    adds r0, r5, #0
    bl GetKind__C12RucksackItem
    cmp r0, #0
    beq _080331F8
    cmp r0, #1
    beq _08033220
_080331EE:
    movs r1, #0
    b _0803323E
    .align 2, 0
_080331F4: .4byte 0x000009C8
_080331F8:
    add r0, sp, #0x18
    adds r1, r5, #0
    bl GetFood__C12RucksackItem
    add r0, sp, #0x18
    ldrb r1, [r0]
    adds r0, #1
    ldrb r0, [r0]
    lsls r0, r0, #8
    orrs r0, r1
    mov r1, sp
    adds r1, #0x1a
    ldrb r1, [r1]
    lsls r1, r1, #0x10
    orrs r1, r0
    ldr r0, [sp, #0x54]
    bl __7ProductG4Food
    ldr r0, [sp, #0x54]
    b _08033234
_08033220:
    mov r4, sp
    adds r4, #0x21
    adds r0, r5, #0
    bl GetArticle__C12RucksackItem
    adds r1, r0, #0
    adds r0, r4, #0
    bl __7ProductG7Article
    adds r0, r4, #0
_08033234:
    bl GetPrice__C7Product
    rsbs r1, r0, #0
    orrs r1, r0
    lsrs r1, r1, #0x1f
_0803323E:
    cmp r1, #0
    beq _08033272
    add r4, sp, #0x14
    ldrb r1, [r4]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #2
    orrs r0, r1
    strb r0, [r4]
    strb r7, [r4, #1]
    mov r3, sb
    strb r3, [r4, #2]
    ldr r0, [sp, #0x90]
    adds r1, r4, #0
    bl func_0809E968
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08033272
    add r1, sp, #0xc
    adds r0, r4, #0
    ldm r0!, {r2, r4}
    stm r1!, {r2, r4}
    mov r3, r8
    str r3, [sp, #0x4c]
_08033272:
    adds r6, #0x10
    adds r7, #1
    cmp r7, #0x2a
    bls _08033186
    ldr r4, [sp, #0x60]
    mov sb, r4
    cmp r4, #0x18
    bhi _08033284
    b _0803316E
_08033284:
    b _0803356A
_08033286:
    movs r0, #0
    str r0, [sp, #0x58]
    movs r7, #0
    ldr r1, _08033338 @ =0x000009C8
    adds r1, r1, r5
    mov sb, r1
_08033292:
    movs r6, #0
    adds r2, r7, #1
    mov r8, r2
    ldr r3, [sp, #0x48]
    rsbs r0, r3, #0
    movs r4, #0x8c
    lsls r4, r4, #1
    adds r5, r0, r4
_080332A2:
    movs r0, #0x2b
    muls r0, r7, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, sb
    ldr r1, [r0]
    lsls r0, r1, #0x14
    lsrs r2, r0, #0x1c
    movs r3, #0
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne _080332CE
    subs r0, r2, #1
    cmp r0, #3
    bhi _080332CE
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    movs r1, #0x14
    eors r0, r1
    rsbs r0, r0, #0
    lsrs r3, r0, #0x1f
_080332CE:
    cmp r3, #0
    beq _08033328
    lsls r0, r7, #4
    adds r0, #0xb8
    mov r1, sl
    subs r0, r0, r1
    adds r1, r5, #0
    muls r1, r5, r1
    adds r2, r0, #0
    muls r2, r0, r2
    adds r0, r2, #0
    adds r1, r1, r0
    adds r2, r1, #0
    add r0, sp, #0xc
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    beq _080332F8
    ldr r3, [sp, #0x58]
    cmp r1, r3
    bhs _08033328
_080332F8:
    add r4, sp, #0x14
    ldrb r1, [r4]
    movs r0, #0x10
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #1
    orrs r0, r1
    strb r0, [r4]
    strb r6, [r4, #1]
    strb r7, [r4, #2]
    ldr r0, [sp, #0x90]
    adds r1, r4, #0
    str r2, [sp, #0x68]
    bl func_0809E968
    lsls r0, r0, #0x18
    ldr r2, [sp, #0x68]
    cmp r0, #0
    bne _08033328
    add r1, sp, #0xc
    adds r0, r4, #0
    ldm r0!, {r3, r4}
    stm r1!, {r3, r4}
    str r2, [sp, #0x58]
_08033328:
    adds r5, #0x10
    adds r6, #1
    cmp r6, #0x2a
    bls _080332A2
    mov r7, r8
    cmp r7, #0x18
    bls _08033292
    b _0803356A
    .align 2, 0
_08033338: .4byte 0x000009C8
_0803333C:
    add r0, sp, #0x24
    bl func_08009ADC
    ldr r0, [sp, #0x24]
    str r0, [sp, #0x28]
    add r6, sp, #0x28
    mov r8, r6
    add r0, sp, #0x2c
    bl func_08009AE8
    ldr r0, [sp, #0x2c]
    str r0, [sp, #0x30]
    add r6, sp, #0x30
    add r0, sp, #0x34
    bl method_0800CE58__4Barn
    ldr r0, [sp, #0x34]
    str r0, [sp, #0x38]
    mov r0, sp
    adds r0, #0x38
    str r0, [sp, #0x5c]
    add r0, sp, #0x3c
    bl method_0800C554__4Coop
    ldr r0, [sp, #0x3c]
    str r0, [sp, #0x40]
    add r1, sp, #0x40
    mov sb, r1
    ldrh r0, [r4]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    cmp r0, #0x11
    bne _08033380
    b _080334EA
_08033380:
    cmp r0, #0x11
    bgt _0803338A
    cmp r0, #2
    beq _08033390
    b _0803356A
_0803338A:
    cmp r0, #0x25
    beq _08033466
    b _0803356A
_08033390:
    ldr r2, [sp, #0x48]
    str r2, [sp]
    mov r3, sl
    str r3, [sp, #4]
    ldr r4, [sp, #0x90]
    str r4, [sp, #8]
    add r4, sp, #0x14
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    movs r3, #2
    bl func_08032BB4
    add r1, sp, #0xc
    adds r0, r4, #0
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    add r0, sp, #0xc
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    beq _080333BE
    b _0803356A
_080333BE:
    mov r1, r8
    movs r2, #0
    ldrsh r0, [r1, r2]
    ldr r1, [sp, #0x48]
    subs r3, r0, r1
    mov r2, r8
    movs r1, #2
    ldrsh r0, [r2, r1]
    mov r2, sl
    subs r1, r0, r2
    adds r2, r3, #0
    muls r2, r3, r2
    adds r0, r1, #0
    muls r0, r1, r0
    adds r2, r2, r0
    movs r3, #0
    ldrsh r0, [r6, r3]
    ldr r1, [sp, #0x48]
    subs r3, r0, r1
    movs r1, #2
    ldrsh r0, [r6, r1]
    mov r6, sl
    subs r1, r0, r6
    adds r0, r3, #0
    muls r0, r3, r0
    adds r3, r1, #0
    muls r3, r1, r3
    adds r1, r3, #0
    adds r0, r0, r1
    cmp r2, r0
    bhi _08033418
    ldr r6, [sp, #0x5c]
    movs r1, #0
    ldrsh r0, [r6, r1]
    str r0, [sp]
    movs r2, #2
    ldrsh r0, [r6, r2]
    str r0, [sp, #4]
    ldr r3, [sp, #0x90]
    str r3, [sp, #8]
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    movs r3, #0x25
    b _080334AC
_08033418:
    mov r6, sb
    movs r1, #0
    ldrsh r0, [r6, r1]
    str r0, [sp]
    movs r2, #2
    ldrsh r0, [r6, r2]
    str r0, [sp, #4]
    ldr r3, [sp, #0x90]
    str r3, [sp, #8]
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    movs r3, #0x11
    bl func_08032BB4
    add r1, sp, #0xc
    adds r0, r4, #0
    ldm r0!, {r2, r6}
    stm r1!, {r2, r6}
    add r0, sp, #0xc
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    beq _0803344A
    b _0803356A
_0803344A:
    ldr r3, [sp, #0x5c]
    movs r6, #0
    ldrsh r0, [r3, r6]
    str r0, [sp]
    movs r1, #2
    ldrsh r0, [r3, r1]
    str r0, [sp, #4]
    ldr r2, [sp, #0x90]
    str r2, [sp, #8]
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    movs r3, #0x25
    b _080334DC
_08033466:
    ldr r6, [sp, #0x48]
    str r6, [sp]
    mov r0, sl
    str r0, [sp, #4]
    ldr r1, [sp, #0x90]
    str r1, [sp, #8]
    add r4, sp, #0x14
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    movs r3, #0x25
    bl func_08032BB4
    add r1, sp, #0xc
    adds r0, r4, #0
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    add r0, sp, #0xc
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    bne _0803356A
    mov r6, r8
    movs r1, #0
    ldrsh r0, [r6, r1]
    str r0, [sp]
    movs r2, #2
    ldrsh r0, [r6, r2]
    str r0, [sp, #4]
    ldr r3, [sp, #0x90]
    str r3, [sp, #8]
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    movs r3, #2
_080334AC:
    bl func_08032BB4
    add r1, sp, #0xc
    adds r0, r4, #0
    ldm r0!, {r2, r6}
    stm r1!, {r2, r6}
    add r0, sp, #0xc
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    bne _0803356A
    mov r3, sb
    movs r6, #0
    ldrsh r0, [r3, r6]
    str r0, [sp]
    movs r1, #2
    ldrsh r0, [r3, r1]
    str r0, [sp, #4]
    ldr r2, [sp, #0x90]
    str r2, [sp, #8]
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    movs r3, #0x11
_080334DC:
    bl func_08032BB4
    add r1, sp, #0xc
    adds r0, r4, #0
    ldm r0!, {r3, r4}
    stm r1!, {r3, r4}
    b _0803356A
_080334EA:
    ldr r0, [sp, #0x48]
    str r0, [sp]
    mov r1, sl
    str r1, [sp, #4]
    ldr r2, [sp, #0x90]
    str r2, [sp, #8]
    add r4, sp, #0x14
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    movs r3, #0x11
    bl func_08032BB4
    add r1, sp, #0xc
    adds r0, r4, #0
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    add r0, sp, #0xc
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    bne _0803356A
    movs r3, #0
    ldrsh r0, [r6, r3]
    str r0, [sp]
    movs r1, #2
    ldrsh r0, [r6, r1]
    str r0, [sp, #4]
    ldr r2, [sp, #0x90]
    str r2, [sp, #8]
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    movs r3, #2
    bl func_08032BB4
    add r1, sp, #0xc
    adds r0, r4, #0
    ldm r0!, {r3, r6}
    stm r1!, {r3, r6}
    add r0, sp, #0xc
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    bne _0803356A
    ldr r1, [sp, #0x5c]
    movs r2, #0
    ldrsh r0, [r1, r2]
    str r0, [sp]
    movs r3, #2
    ldrsh r0, [r1, r3]
    str r0, [sp, #4]
    ldr r6, [sp, #0x90]
    str r6, [sp, #8]
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r7, #0
    movs r3, #0x25
    bl func_08032BB4
    add r1, sp, #0xc
    adds r0, r4, #0
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
_0803356A:
    ldr r1, [sp, #0x44]
    add r0, sp, #0xc
    ldm r0!, {r4, r6}
    stm r1!, {r4, r6}
    ldr r0, [sp, #0x44]
    add sp, #0x6c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08033584
func_08033584: @ 0x08033584
    push {r4, r5, r6, lr}
    sub sp, #0x10
    adds r4, r0, #0
    adds r5, r1, #0
    adds r3, r2, #0
    ldrb r0, [r4]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1c
    cmp r0, #8
    bhi _08033648
    lsls r0, r0, #2
    ldr r1, _080335A4 @ =_080335A8
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080335A4: .4byte _080335A8
_080335A8: @ jump table
    .4byte _08033648 @ case 0
    .4byte _080335CC @ case 1
    .4byte _08033608 @ case 2
    .4byte _080336A4 @ case 3
    .4byte _080336C0 @ case 4
    .4byte _080336E0 @ case 5
    .4byte _08033708 @ case 6
    .4byte _08033754 @ case 7
    .4byte _08033764 @ case 8
_080335CC:
    ldrb r2, [r4, #2]
    ldr r0, _08033604 @ =0x000009C8
    adds r1, r5, r0
    movs r0, #0x2b
    muls r0, r2, r0
    ldrb r4, [r4, #1]
    adds r0, r0, r4
    lsls r0, r0, #2
    adds r1, r1, r0
    ldr r1, [r1]
    lsls r0, r1, #0x14
    lsrs r2, r0, #0x1c
    movs r3, #0
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne _08033600
    subs r0, r2, #1
    cmp r0, #3
    bhi _08033600
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    movs r1, #0x14
    eors r0, r1
    rsbs r0, r0, #0
    lsrs r3, r0, #0x1f
_08033600:
    adds r0, r3, #0
    b _0803377A
    .align 2, 0
_08033604: .4byte 0x000009C8
_08033608:
    ldrb r2, [r4, #2]
    ldr r0, _0803364C @ =0x000009C8
    adds r1, r5, r0
    movs r0, #0x2b
    muls r0, r2, r0
    ldrb r4, [r4, #1]
    adds r0, r0, r4
    lsls r0, r0, #2
    adds r1, r1, r0
    ldr r1, [r1]
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #5
    bne _08033648
    str r1, [sp, #8]
    add r1, sp, #8
    mov r0, sp
    bl func_0800A4A4
    mov r0, sp
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08033648
    mov r0, sp
    bl GetKind__C12RucksackItem
    cmp r0, #0
    beq _08033650
    cmp r0, #1
    beq _08033684
_08033648:
    movs r0, #0
    b _0803377A
    .align 2, 0
_0803364C: .4byte 0x000009C8
_08033650:
    add r4, sp, #0xc
    add r0, sp, #4
    mov r1, sp
    bl GetFood__C12RucksackItem
    add r0, sp, #4
    ldrb r1, [r0]
    adds r0, #1
    ldrb r0, [r0]
    lsls r0, r0, #8
    orrs r0, r1
    mov r1, sp
    adds r1, #6
    ldrb r1, [r1]
    lsls r1, r1, #0x10
    orrs r1, r0
    adds r0, r4, #0
    bl __7ProductG4Food
    adds r0, r4, #0
    bl GetPrice__C7Product
    rsbs r1, r0, #0
    orrs r1, r0
    lsrs r0, r1, #0x1f
    b _0803377A
_08033684:
    mov r4, sp
    adds r4, #0xd
    mov r0, sp
    bl GetArticle__C12RucksackItem
    adds r1, r0, #0
    adds r0, r4, #0
    bl __7ProductG7Article
    adds r0, r4, #0
    bl GetPrice__C7Product
    rsbs r1, r0, #0
    orrs r1, r0
    lsrs r0, r1, #0x1f
    b _0803377A
_080336A4:
    movs r6, #0
    movs r0, #0xff
    lsls r0, r0, #2
    adds r5, r5, r0
    adds r0, r5, #0
    bl GetStoredBushelCount__C4Coop
    cmp r0, #0
    beq _08033700
    ldrb r1, [r4, #1]
    adds r0, r5, #0
    bl HasBushelForEnt__C4CoopUi
    b _080336F8
_080336C0:
    movs r6, #0
    ldr r0, _080336DC @ =0x000005DC
    adds r5, r5, r0
    adds r0, r5, #0
    bl GetStoredBushelCount__C4Barn
    cmp r0, #0
    beq _08033700
    ldrb r1, [r4, #1]
    adds r0, r5, #0
    bl HasBushelForStall__C4BarnUi
    b _080336F8
    .align 2, 0
_080336DC: .4byte 0x000005DC
_080336E0:
    movs r6, #0
    ldr r0, _08033704 @ =0x000005DC
    adds r5, r5, r0
    adds r0, r5, #0
    bl GetStoredBushelCount__C4Barn
    cmp r0, #0
    beq _08033700
    ldrb r1, [r4, #1]
    adds r0, r5, #0
    bl HasBushelForPregnancyStall__C4BarnUi
_080336F8:
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08033700
    movs r6, #1
_08033700:
    adds r0, r6, #0
    b _0803377A
    .align 2, 0
_08033704: .4byte 0x000005DC
_08033708:
    ldrb r1, [r4, #1]
    adds r1, #0x36
    ldr r0, [r3]
    ldr r2, [r0, #0x44]
    adds r0, r3, #0
    bl _call_via_r2
    adds r4, r0, #0
    movs r5, #0
    cmp r4, #0
    beq _08033750
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x50]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0803374E
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x54]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0803374E
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x58]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08033750
_0803374E:
    movs r5, #1
_08033750:
    adds r0, r5, #0
    b _0803377A
_08033754:
    ldrb r1, [r4, #1]
    adds r1, #0x2e
    ldr r0, [r3]
    ldr r2, [r0, #0x44]
    adds r0, r3, #0
    bl _call_via_r2
    b _08033648
_08033764:
    ldrb r1, [r4, #1]
    adds r1, #0x4c
    ldr r0, [r3]
    ldr r2, [r0, #0x44]
    adds r0, r3, #0
    bl _call_via_r2
    adds r1, r0, #0
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
_0803377A:
    add sp, #0x10
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08033784
func_08033784: @ 0x08033784
    push {r4, lr}
    adds r3, r0, #0
    adds r4, r2, #0
    ldrb r0, [r3]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1c
    cmp r0, #8
    bhi _080337F2
    lsls r0, r0, #2
    ldr r1, _080337A0 @ =_080337A4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080337A0: .4byte _080337A4
_080337A4: @ jump table
    .4byte _080337F2 @ case 0
    .4byte _080337C8 @ case 1
    .4byte _080337C8 @ case 2
    .4byte _080337CC @ case 3
    .4byte _080337D0 @ case 4
    .4byte _080337D0 @ case 5
    .4byte _080337D4 @ case 6
    .4byte _080337DA @ case 7
    .4byte _080337E0 @ case 8
_080337C8:
    movs r0, #2
    b _080337FA
_080337CC:
    movs r0, #0x11
    b _080337FA
_080337D0:
    movs r0, #0x25
    b _080337FA
_080337D4:
    ldrb r1, [r3, #1]
    adds r1, #0x36
    b _080337E4
_080337DA:
    ldrb r1, [r3, #1]
    adds r1, #0x2e
    b _080337E4
_080337E0:
    ldrb r1, [r3, #1]
    adds r1, #0x4c
_080337E4:
    ldr r0, [r4]
    ldr r2, [r0, #0x44]
    adds r0, r4, #0
    bl _call_via_r2
    cmp r0, #0
    bne _080337F8
_080337F2:
    movs r0, #0x8d
    lsls r0, r0, #2
    b _080337FA
_080337F8:
    ldrh r0, [r0, #4]
_080337FA:
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08033800
func_08033800: @ 0x08033800
    push {r4, lr}
    adds r4, r0, #0
    adds r0, r1, #0
    adds r1, r2, #0
    ldr r2, [r0]
    ldr r2, [r2, #0x44]
    bl _call_via_r2
    adds r1, r0, #0
    cmp r1, #0
    beq _08033822
    movs r2, #0xa
    ldrsh r0, [r1, r2]
    movs r2, #0xe
    ldrsh r1, [r1, r2]
    strh r0, [r4]
    b _08033824
_08033822:
    strh r1, [r4]
_08033824:
    strh r1, [r4, #2]
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08033830
func_08033830: @ 0x08033830
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    ldrb r0, [r4]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1c
    cmp r0, #8
    bhi _08033874
    lsls r0, r0, #2
    ldr r1, _0803384C @ =_08033850
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0803384C: .4byte _08033850
_08033850: @ jump table
    .4byte _08033874 @ case 0
    .4byte _0803387C @ case 1
    .4byte _0803387C @ case 2
    .4byte _08033892 @ case 3
    .4byte _080338A2 @ case 4
    .4byte _080338B4 @ case 5
    .4byte _080338C8 @ case 6
    .4byte _080338CE @ case 7
    .4byte _080338DC @ case 8
_08033874:
    movs r0, #0
    strh r0, [r5]
    strh r0, [r5, #2]
    b _080338E8
_0803387C:
    ldrb r0, [r4, #1]
    ldrb r1, [r4, #2]
    lsls r0, r0, #4
    movs r2, #0x8c
    lsls r2, r2, #1
    adds r0, r0, r2
    lsls r1, r1, #4
    adds r1, #0xb8
    strh r0, [r5]
    strh r1, [r5, #2]
    b _080338E8
_08033892:
    movs r0, #0xff
    lsls r0, r0, #2
    adds r1, r2, r0
    ldrb r2, [r4, #1]
    adds r0, r5, #0
    bl method_0800C6F0__C4CoopUi
    b _080338E8
_080338A2:
    ldr r0, _080338B0 @ =0x000005DC
    adds r1, r2, r0
    ldrb r2, [r4, #1]
    adds r0, r5, #0
    bl method_0800D074__C4BarnUi
    b _080338E8
    .align 2, 0
_080338B0: .4byte 0x000005DC
_080338B4:
    ldr r0, _080338C4 @ =0x000005DC
    adds r1, r2, r0
    ldrb r2, [r4, #1]
    adds r0, r5, #0
    bl method_0800D0C0__C4BarnUi
    b _080338E8
    .align 2, 0
_080338C4: .4byte 0x000005DC
_080338C8:
    ldrb r2, [r4, #1]
    adds r2, #0x36
    b _080338D2
_080338CE:
    ldrb r2, [r4, #1]
    adds r2, #0x2e
_080338D2:
    adds r0, r5, #0
    adds r1, r3, #0
    bl func_08033800
    b _080338E8
_080338DC:
    ldrb r2, [r4, #1]
    adds r2, #0x4c
    adds r0, r5, #0
    adds r1, r3, #0
    bl func_08033800
_080338E8:
    adds r0, r5, #0
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_080338F0
func_080338F0: @ 0x080338F0
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x80
    lsls r0, r0, #2
    bl func_080AB788
    movs r1, #0
    movs r2, #0x80
    lsls r2, r2, #1
    adds r4, r4, r2
    cmp r0, r4
    bhs _0803390A
    movs r1, #1
_0803390A:
    adds r0, r1, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08033914
func_08033914: @ 0x08033914
    movs r1, #0xc0
    lsls r1, r1, #9
    adds r0, #1
    muls r0, r1, r0
    lsrs r0, r0, #8
    movs r1, #0x80
    lsls r1, r1, #8
    adds r0, r0, r1
    bx lr
    .align 2, 0

    thumb_func_start func_08033928
func_08033928: @ 0x08033928
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x14
    adds r7, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    adds r4, r3, #0
    ldr r1, _080339A4 @ =0x080F149C
    lsls r0, r6, #2
    adds r0, r0, r1
    ldr r2, [r0]
    add r0, sp, #4
    adds r1, r4, #0
    bl func_080A03B8
    ldr r1, _080339A8 @ =0x080F14E2
    lsls r0, r6, #1
    adds r0, r0, r1
    ldrh r0, [r0]
    str r0, [sp]
    adds r0, r7, #0
    adds r1, r5, #0
    add r2, sp, #4
    movs r3, #2
    bl func_080320DC
    ldr r0, _080339AC @ =vtable_unk_080E68C8
    str r0, [r7, #0x14]
    adds r0, r7, #0
    adds r0, #0x30
    movs r5, #0
    strb r6, [r0]
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_080A099C
    str r0, [r7, #0x34]
    movs r0, #0x87
    lsls r0, r0, #3
    adds r4, r4, r0
    str r4, [r7, #0x38]
    ldr r0, [sp, #0x2c]
    str r0, [r7, #0x3c]
    adds r0, r7, #0
    adds r0, #0x41
    strb r5, [r0]
    adds r0, #1
    strb r5, [r0]
    movs r0, #0x80
    lsls r0, r0, #8
    mov r8, r0
    ldr r0, [r7, #0x34]
    ldr r0, [r0, #0x1c]
    cmp r0, #5
    bhi _08033A08
    lsls r0, r0, #2
    ldr r1, _080339B0 @ =_080339B4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080339A4: .4byte 0x080F149C
_080339A8: .4byte 0x080F14E2
_080339AC: .4byte vtable_unk_080E68C8
_080339B0: .4byte _080339B4
_080339B4: @ jump table
    .4byte _080339D8 @ case 0
    .4byte _08033A06 @ case 1
    .4byte _080339D0 @ case 2
    .4byte _080339EC @ case 3
    .4byte _080339CC @ case 4
    .4byte _08033A06 @ case 5
_080339CC:
    movs r5, #4
    b _08033A08
_080339D0:
    ldr r0, [r7, #0x34]
    adds r0, #0x22
    ldrb r5, [r0]
    b _08033A08
_080339D8:
    add r4, sp, #0xc
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_0809E804
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_0803211C
    b _08033A08
_080339EC:
    movs r5, #1
    ldr r4, [r7, #0x34]
    adds r0, r4, #0
    bl GetCurrentTask__C13HarvestSprite
    adds r1, r0, #0
    adds r0, r4, #0
    bl GetTaskExp__C13HarvestSpriteQ213HarvestSprite4Task
    bl func_08033914
    mov r8, r0
    b _08033A08
_08033A06:
    movs r5, #1
_08033A08:
    mvns r1, r5
    adds r0, r7, #0
    adds r0, #0x40
    strb r1, [r0]
    subs r0, #0x20
    ldrb r2, [r0]
    adds r0, r7, #0
    adds r1, r5, #0
    mov r3, r8
    bl func_08034180
    adds r0, r7, #0
    add sp, #0x14
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
_08033A2C:
    .byte 0x70, 0xB5, 0x82, 0xB0
    .byte 0x05, 0x1C, 0x0E, 0x1C, 0x10, 0x48, 0x68, 0x61, 0x6C, 0x6B, 0x68, 0x46, 0x29, 0x1C, 0xFE, 0xF7
    .byte 0x97, 0xFB, 0x20, 0x1C, 0x69, 0x46, 0x6A, 0xF0, 0x8F, 0xFC, 0x0C, 0x48, 0x68, 0x61, 0x29, 0x69
    .byte 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x9F, 0xF0, 0x5A, 0xFF
    .byte 0x01, 0x20, 0x30, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x28, 0x1C, 0xCC, 0xF7, 0xCD, 0xFD, 0x02, 0xB0
    .byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xC8, 0x68, 0x0E, 0x08, 0x50, 0x62, 0x0E, 0x08
    .byte 0x30, 0xB5, 0x04, 0x1C, 0xD4, 0x20, 0xCC, 0xF7, 0xA5, 0xFD, 0x21, 0x1C, 0x00, 0xF0, 0xC2, 0xFF
    .byte 0x05, 0x1C, 0x01, 0x21, 0x49, 0x42, 0x40, 0x34, 0x20, 0x78, 0x02, 0x28, 0x02, 0xD0, 0x03, 0x28
    .byte 0x02, 0xD0, 0x02, 0xE0, 0x08, 0x21, 0x02, 0xE0, 0x05, 0x21, 0x00, 0x29, 0x15, 0xDB, 0x28, 0x1C
    .byte 0x70, 0x30, 0x2A, 0xF0, 0xD5, 0xFE, 0x28, 0x1C, 0x84, 0x30, 0x00, 0x22, 0x01, 0x21, 0x01, 0x70
    .byte 0x02, 0x30, 0x02, 0x70, 0x01, 0x30, 0x01, 0x70, 0x2B, 0x1C, 0x8A, 0x33, 0x02, 0x22, 0x19, 0x78
    .byte 0x04, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x43, 0x18, 0x70, 0x28, 0x1C, 0x30, 0xBC, 0x02, 0xBC
    .byte 0x08, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x00, 0x21, 0x81, 0x71, 0x02, 0x1C, 0x42, 0x32, 0x01, 0x21
    .byte 0x11, 0x70, 0x00, 0xF0, 0x43, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x03, 0x49, 0x30, 0x30
    .byte 0x00, 0x78, 0x40, 0x00, 0x40, 0x18, 0x00, 0x88, 0x70, 0x47, 0x00, 0x00, 0xD4, 0x14, 0x0F, 0x08
    .byte 0x10, 0xB5, 0x04, 0x1C, 0xEC, 0xF7, 0x84, 0xF9, 0x60, 0x6B, 0x6A, 0xF0, 0x5F, 0xFC, 0x10, 0xBC
    .byte 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_08033B24
func_08033B24: @ 0x08033B24
    push {r4, r5, r6, lr}
    sub sp, #0x18
    adds r6, r0, #0
    adds r0, #0x30
    ldrb r0, [r0]
    ldr r1, [r6, #0x38]
    lsls r0, r0, #3
    adds r1, r1, r0
    ldrb r0, [r1]
    lsls r0, r0, #0x1c
    cmp r0, #0
    beq _08033B40
    movs r0, #0
    b _08033B74
_08033B40:
    ldr r5, [r6]
    add r4, sp, #0x10
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_0801FE94
    ldr r0, [r6, #0x34]
    bl GetCurrentTask__C13HarvestSprite
    ldr r1, [r6, #0x3c]
    str r0, [sp]
    ldr r0, [r6, #0x38]
    str r0, [sp, #4]
    add r0, sp, #8
    adds r2, r5, #0
    adds r3, r4, #0
    bl func_080330F4
    add r0, sp, #8
    movs r1, #0
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    bne _08033B72
    movs r1, #1
_08033B72:
    adds r0, r1, #0
_08033B74:
    add sp, #0x18
    pop {r4, r5, r6}
    pop {r1}
    bx r1

    thumb_func_start func_08033B7C
func_08033B7C: @ 0x08033B7C
    adds r0, #0x41
    movs r1, #0
    strb r1, [r0]
    bx lr

    thumb_func_start func_08033B84
func_08033B84: @ 0x08033B84
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    beq _08033B90
    bl func_08034BFC
_08033B90:
    pop {r0}
    bx r0
_08033B94:
    .byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0xAB, 0xB0
    .byte 0x07, 0x1C, 0x0A, 0x1C, 0x78, 0x6B, 0x80, 0x46, 0x39, 0x68, 0x8A, 0x46, 0xC0, 0x69, 0x05, 0x28
    .byte 0x12, 0xD8, 0x80, 0x00, 0x01, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0xC0, 0x3B, 0x03, 0x08
    .byte 0xD8, 0x3B, 0x03, 0x08, 0x64, 0x3C, 0x03, 0x08, 0x94, 0x3C, 0x03, 0x08, 0xFC, 0x3D, 0x03, 0x08
    .byte 0x54, 0x40, 0x03, 0x08, 0x78, 0x40, 0x03, 0x08, 0x10, 0x79, 0x00, 0x28, 0x00, 0xD1, 0x97, 0xE2
    .byte 0x40, 0x46, 0x6A, 0xF0, 0x3B, 0xFD, 0x03, 0x28, 0x00, 0xD1, 0x91, 0xE2, 0x40, 0x46, 0x6A, 0xF0
    .byte 0x39, 0xFD, 0x00, 0x28, 0x00, 0xD1, 0x8B, 0xE2, 0x52, 0x46, 0x10, 0x68, 0xA2, 0x23, 0x5B, 0x00
    .byte 0xC0, 0x18, 0x01, 0x68, 0x50, 0x46, 0x9F, 0xF0, 0x83, 0xFE, 0x02, 0x1C, 0x91, 0x7A, 0x1F, 0x20
    .byte 0x08, 0x40, 0x06, 0x28, 0x00, 0xD0, 0x7B, 0xE2, 0x50, 0x89, 0x40, 0x05, 0x80, 0x0E, 0x39, 0x1C
    .byte 0x30, 0x31, 0x09, 0x78, 0x01, 0x31, 0x88, 0x42, 0x00, 0xD0, 0x71, 0xE2, 0x10, 0x68, 0x03, 0x38
    .byte 0x01, 0x28, 0x13, 0xD9, 0xB4, 0x22, 0x52, 0x00, 0x08, 0x23, 0x5B, 0x42, 0x38, 0x1C, 0x02, 0x21
    .byte 0xEC, 0xF7, 0x1A, 0xF9, 0x12, 0xA9, 0x40, 0x46, 0x6A, 0xF0, 0xC2, 0xFD, 0x80, 0x23, 0x1B, 0x02
    .byte 0x38, 0x1C, 0x01, 0x21, 0x00, 0x22, 0x00, 0xF0, 0x93, 0xFA, 0x59, 0xE2, 0x40, 0x46, 0x6A, 0xF0
    .byte 0x7D, 0xFD, 0x55, 0xE2, 0xB8, 0x88, 0x02, 0x28, 0x0E, 0xD0, 0xB4, 0x22, 0x52, 0x00, 0x08, 0x23
    .byte 0x5B, 0x42, 0x38, 0x1C, 0x02, 0x21, 0xEC, 0xF7, 0xFF, 0xF8, 0x80, 0x23, 0x1B, 0x02, 0x38, 0x1C
    .byte 0x01, 0x21, 0x00, 0x22, 0x00, 0xF0, 0x7C, 0xFA, 0x0E, 0x24, 0x38, 0x5F, 0x77, 0x28, 0x00, 0xDC
    .byte 0x3E, 0xE2, 0xE9, 0xE1, 0x45, 0x46, 0x20, 0x35, 0x25, 0x95, 0x46, 0x46, 0x30, 0x8C, 0x00, 0x28
    .byte 0x00, 0xD0, 0xA7, 0xE0, 0x38, 0x1C, 0x00, 0xF0, 0x4B, 0xFE, 0x00, 0x06, 0x00, 0x28, 0x00, 0xD0
    .byte 0x2E, 0xE2, 0xE8, 0x78, 0x00, 0x28, 0x04, 0xD0, 0x01, 0x38, 0xE8, 0x70, 0x00, 0x06, 0x00, 0x28
    .byte 0x06, 0xD1, 0x38, 0x1C, 0x00, 0xF0, 0xCC, 0xFA, 0x00, 0x06, 0x00, 0x28, 0x00, 0xD0, 0x1F, 0xE2
    .byte 0x0F, 0x4D, 0x28, 0x1C, 0x05, 0x21, 0x77, 0xF0, 0xA9, 0xFD, 0x84, 0x00, 0x64, 0x19, 0x00, 0x26
    .byte 0x25, 0x99, 0x88, 0x70, 0x3C, 0x25, 0xA0, 0x78, 0x68, 0x43, 0x77, 0xF0, 0x4D, 0xFD, 0x61, 0x78
    .byte 0x69, 0x43, 0x09, 0x18, 0x25, 0x9A, 0x11, 0x80, 0xBC, 0x88, 0x13, 0xA8, 0x06, 0x80, 0x46, 0x80
    .byte 0x81, 0x46, 0x11, 0x2C, 0x25, 0xD0, 0x11, 0x2C, 0x04, 0xDC, 0x02, 0x2C, 0x05, 0xD0, 0x2C, 0xE0
    .byte 0x3C, 0x14, 0x0F, 0x08, 0x25, 0x2C, 0x0F, 0xD0, 0x27, 0xE0, 0x48, 0x20, 0x77, 0xF0, 0x34, 0xFD
    .byte 0x80, 0x30, 0x4B, 0x46, 0x18, 0x80, 0x48, 0x20, 0x77, 0xF0, 0x2E, 0xFD, 0x94, 0x25, 0x6D, 0x00
    .byte 0x40, 0x19, 0x4E, 0x46, 0x70, 0x80, 0x18, 0xE0, 0x68, 0x20, 0x77, 0xF0, 0x25, 0xFD, 0x48, 0x30
    .byte 0x49, 0x46, 0x08, 0x80, 0x30, 0x20, 0x77, 0xF0, 0x1F, 0xFD, 0x60, 0x30, 0x4A, 0x46, 0x50, 0x80
    .byte 0x0B, 0xE0, 0x40, 0x20, 0x77, 0xF0, 0x18, 0xFD, 0x90, 0x30, 0x4B, 0x46, 0x18, 0x80, 0x30, 0x20
    .byte 0x77, 0xF0, 0x12, 0xFD, 0x70, 0x30, 0x4D, 0x46, 0x68, 0x80, 0x38, 0x1C, 0x20, 0x30, 0x00, 0x78
    .byte 0x80, 0x46, 0x56, 0x46, 0x31, 0x68, 0x02, 0xA8, 0x4B, 0x6B, 0x51, 0x46, 0x22, 0x1C, 0x9F, 0xF0
    .byte 0xCB, 0xFD, 0x79, 0x69, 0x14, 0xA8, 0xCA, 0x68, 0x39, 0x1C, 0x9F, 0xF0, 0xC3, 0xFD, 0x14, 0x98
    .byte 0x15, 0x99, 0x29, 0x90, 0x2A, 0x91, 0x05, 0xAC, 0x20, 0x21, 0x8A, 0x46, 0x00, 0x25, 0x21, 0x21
    .byte 0x05, 0x91, 0x21, 0x20, 0x40, 0x42, 0x60, 0x60, 0xA0, 0x60, 0xE1, 0x60, 0x0A, 0xA9, 0x02, 0xA8
    .byte 0x4C, 0xC8, 0x4C, 0xC1, 0x29, 0x98, 0x2A, 0x99, 0x0D, 0x90, 0x0E, 0x91, 0x51, 0x46, 0xA1, 0x62
    .byte 0xE5, 0x62, 0x25, 0x63, 0x0A, 0x22, 0xB8, 0x5E, 0x0E, 0x23, 0xF9, 0x5E, 0x4D, 0x46, 0x00, 0x26
    .byte 0xAA, 0x5F, 0x13, 0xAB, 0x02, 0x25, 0x5B, 0x5F, 0x00, 0x94, 0x46, 0x46, 0x01, 0x96, 0x77, 0xF0
    .byte 0x2F, 0xFF, 0x02, 0x1C, 0x25, 0x98, 0x81, 0x78, 0x80, 0x23, 0x1B, 0x02, 0x38, 0x1C, 0x00, 0xF0
    .byte 0xC7, 0xF9, 0x8D, 0xE1, 0x01, 0x38, 0x41, 0x46, 0x08, 0x84, 0x89, 0xE1, 0x42, 0x46, 0x20, 0x32
    .byte 0x26, 0x92, 0x3C, 0x1C, 0x30, 0x34, 0x20, 0x78, 0xB9, 0x6B, 0xC0, 0x00, 0x09, 0x18, 0x89, 0x46
    .byte 0xF9, 0x6B, 0x48, 0x46, 0x52, 0x46, 0xFF, 0xF7, 0xB5, 0xFC, 0x06, 0x1C, 0xBD, 0x88, 0x0A, 0x20
    .byte 0x3B, 0x5E, 0x27, 0x93, 0x0E, 0x22, 0xB9, 0x5E, 0x28, 0x91, 0x16, 0xA8, 0x03, 0x80, 0x41, 0x80
    .byte 0xAE, 0x42, 0x08, 0xD1, 0xFA, 0x6B, 0x17, 0xA8, 0x49, 0x46, 0x53, 0x46, 0xFF, 0xF7, 0xF8, 0xFC
    .byte 0x17, 0x98, 0x16, 0x90, 0x27, 0xE0, 0x11, 0x2D, 0x1D, 0xD0, 0x11, 0x2D, 0x02, 0xDC, 0x02, 0x2D
    .byte 0x03, 0xD0, 0x1E, 0xE0, 0x25, 0x2D, 0x10, 0xD0, 0x1B, 0xE0, 0x11, 0x2E, 0x07, 0xD0, 0x25, 0x2E
    .byte 0x17, 0xD1, 0x18, 0xA8, 0xD5, 0xF7, 0x3A, 0xFE, 0x18, 0x98, 0x16, 0x90, 0x13, 0xE0, 0x19, 0xA8
    .byte 0xD5, 0xF7, 0x3A, 0xFE, 0x19, 0x98, 0x16, 0x90, 0x0D, 0xE0, 0x1A, 0xA8, 0xD8, 0xF7, 0xEC, 0xFF
    .byte 0x1A, 0x98, 0x16, 0x90, 0x07, 0xE0, 0x1B, 0xA8, 0xD8, 0xF7, 0x64, 0xFB, 0x1B, 0x98, 0x16, 0x90
    .byte 0x01, 0xE0, 0x8D, 0x26, 0xB6, 0x00, 0x8D, 0x20, 0x80, 0x00, 0x86, 0x42, 0x77, 0xD0, 0x16, 0xAB
    .byte 0x00, 0x22, 0x98, 0x5E, 0x27, 0x99, 0x40, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x07, 0x28
    .byte 0x6D, 0xDC, 0x5A, 0x23, 0x6B, 0x44, 0x00, 0x22, 0x98, 0x5E, 0x28, 0x99, 0x40, 0x1A, 0x00, 0x28
    .byte 0x00, 0xDA, 0x40, 0x42, 0x07, 0x28, 0x62, 0xDC, 0x38, 0x1C, 0x00, 0xF0, 0x39, 0xFD, 0x00, 0x06
    .byte 0x01, 0x0E, 0x00, 0x29, 0x00, 0xD0, 0x1B, 0xE1, 0xAE, 0x42, 0x19, 0xD1, 0x38, 0x1C, 0x00, 0xF0
    .byte 0x45, 0xFA, 0x00, 0x06, 0x00, 0x28, 0x00, 0xD1, 0xBE, 0xE0, 0x08, 0x49, 0x1C, 0x98, 0x08, 0x40
    .byte 0x3C, 0x21, 0x08, 0x43, 0x1C, 0x90, 0x1C, 0xA9, 0x40, 0x46, 0x6A, 0xF0, 0x79, 0xFC, 0x38, 0x1C
    .byte 0x20, 0x30, 0x02, 0x78, 0x38, 0x1C, 0x04, 0x21, 0xE3, 0xE0, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF
    .byte 0x02, 0x24, 0x1D, 0xA8, 0x01, 0x80, 0x41, 0x80, 0x80, 0x46, 0x11, 0x2D, 0x1C, 0xD0, 0x11, 0x2D
    .byte 0x02, 0xDC, 0x02, 0x2D, 0x03, 0xD0, 0x1C, 0xE0, 0x25, 0x2D, 0x10, 0xD0, 0x19, 0xE0, 0x11, 0x2E
    .byte 0x07, 0xD0, 0x25, 0x2E, 0x15, 0xD1, 0x25, 0x24, 0x1E, 0xA8, 0xD8, 0xF7, 0x8D, 0xFF, 0x1E, 0x98
    .byte 0x0E, 0xE0, 0x11, 0x24, 0x1F, 0xA8, 0xD8, 0xF7, 0x05, 0xFB, 0x1F, 0x98, 0x08, 0xE0, 0x20, 0xA8
    .byte 0xD5, 0xF7, 0xC4, 0xFD, 0x20, 0x98, 0x03, 0xE0, 0x21, 0xA8, 0xD5, 0xF7, 0xC5, 0xFD, 0x21, 0x98
    .byte 0x1D, 0x90, 0x43, 0x46, 0x00, 0x25, 0x5A, 0x5F, 0x1D, 0xA8, 0x02, 0x26, 0x83, 0x5F, 0x38, 0x1C
    .byte 0x21, 0x1C, 0xEB, 0xF7, 0x81, 0xFF, 0x38, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x38, 0x1C, 0x00, 0x21
    .byte 0x00, 0x23, 0x00, 0xF0, 0xFD, 0xF8, 0x00, 0x20, 0x26, 0x99, 0x08, 0x80, 0xC0, 0xE0, 0x26, 0x9A
    .byte 0x10, 0x88, 0x00, 0x28, 0x5A, 0xD1, 0x38, 0x1C, 0x00, 0xF0, 0xD2, 0xFC, 0x00, 0x06, 0x00, 0x28
    .byte 0x00, 0xD0, 0xB5, 0xE0, 0x21, 0x78, 0xB8, 0x6B, 0xC9, 0x00, 0x40, 0x18, 0xF9, 0x6B, 0x52, 0x46
    .byte 0xFF, 0xF7, 0xE8, 0xFA, 0x00, 0x06, 0x00, 0x28, 0x56, 0xD0, 0x40, 0x46, 0x6A, 0xF0, 0x4E, 0xFB
    .byte 0x01, 0x1C, 0x40, 0x46, 0x6A, 0xF0, 0x52, 0xFB, 0xFF, 0xF7, 0xA4, 0xFC, 0x06, 0x1C, 0x16, 0xAC
    .byte 0x00, 0x23, 0xE1, 0x5E, 0x25, 0x1C, 0x02, 0x22, 0xA8, 0x5E, 0x28, 0x9B, 0xC0, 0x1A, 0x27, 0x9C
    .byte 0x09, 0x1B, 0x00, 0x29, 0x00, 0xDA, 0x49, 0x42, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x08, 0x18
    .byte 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x00, 0x04, 0x31, 0x1C, 0x9C, 0xF0, 0x65, 0xFF, 0x23, 0xAB
    .byte 0x18, 0x60, 0xB4, 0x22, 0x22, 0xA8, 0x02, 0x60, 0x19, 0x68, 0x8A, 0x42, 0x00, 0xD9, 0x18, 0x1C
    .byte 0x00, 0x68, 0x77, 0xF0, 0xB9, 0xFB, 0x26, 0x99, 0x08, 0x80, 0x38, 0x1C, 0x20, 0x30, 0x04, 0x78
    .byte 0x02, 0xA8, 0x77, 0xF0, 0x0B, 0xFD, 0x16, 0xA8, 0x00, 0x23, 0xC2, 0x5E, 0x02, 0x21, 0x6B, 0x5E
    .byte 0x02, 0xAD, 0x00, 0x95, 0x01, 0x94, 0x27, 0x98, 0x28, 0x99, 0x77, 0xF0, 0x01, 0xFE, 0x02, 0x1C
    .byte 0x38, 0x1C, 0x01, 0x21, 0x33, 0x1C, 0x00, 0xF0, 0x9B, 0xF8, 0x61, 0xE0, 0x01, 0x38, 0x26, 0x9E
    .byte 0x30, 0x80, 0x5D, 0xE0, 0x41, 0x46, 0x08, 0x8C, 0x00, 0x28, 0x09, 0xD1, 0x38, 0x1C, 0x00, 0xF0
    .byte 0x6F, 0xFC, 0x00, 0x06, 0x00, 0x28, 0x53, 0xD1, 0x38, 0x1C, 0x00, 0xF0, 0x35, 0xF9, 0x4F, 0xE0
    .byte 0x01, 0x38, 0x42, 0x46, 0x10, 0x84, 0x4B, 0xE0, 0x0A, 0x23, 0xF9, 0x5E, 0xB4, 0x20, 0x40, 0x00
    .byte 0x81, 0x42, 0x2A, 0xD1, 0xF8, 0x69, 0x00, 0x28, 0x07, 0xDB, 0x80, 0x23, 0x1B, 0x02, 0x38, 0x1C
    .byte 0x01, 0x21, 0x01, 0x22, 0x00, 0xF0, 0x74, 0xF8, 0x3A, 0xE0, 0x0E, 0x24, 0x39, 0x5F, 0x08, 0x20
    .byte 0x40, 0x42, 0x81, 0x42, 0x34, 0xDC, 0x40, 0x46, 0x6A, 0xF0, 0x58, 0xFB, 0x24, 0xA9, 0x40, 0x46
    .byte 0x6A, 0xF0, 0x8A, 0xFB, 0x38, 0x1C, 0x30, 0x30, 0x01, 0x78, 0x02, 0xA8, 0x6A, 0xF0, 0xA2, 0xFB
    .byte 0x38, 0x1C, 0x02, 0xA9, 0xFE, 0xF7, 0x2A, 0xF8, 0x38, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x38, 0x1C
    .byte 0x00, 0x21, 0x00, 0x23, 0x00, 0xF0, 0x54, 0xF8, 0x1A, 0xE0, 0xBA, 0x69, 0x00, 0x23, 0x05, 0x48
    .byte 0x81, 0x42, 0x00, 0xDC, 0x01, 0x23, 0x18, 0x1C, 0x00, 0x28, 0x05, 0xD0, 0x00, 0x2A, 0x05, 0xDD
    .byte 0x0E, 0xE0, 0x00, 0x00, 0x67, 0x01, 0x00, 0x00, 0x00, 0x2A, 0x09, 0xDB, 0x02, 0x22, 0x00, 0x28
    .byte 0x00, 0xD0, 0x03, 0x22, 0x80, 0x23, 0x1B, 0x02, 0x38, 0x1C, 0x01, 0x21, 0x00, 0xF0, 0x38, 0xF8
    .byte 0x3C, 0x1C, 0x42, 0x34, 0x20, 0x78, 0x00, 0x28, 0x0E, 0xD0, 0x38, 0x1C, 0x40, 0x30, 0x01, 0x78
    .byte 0x38, 0x1C, 0x00, 0xF0, 0x91, 0xF8, 0x01, 0x1C, 0x78, 0x8C, 0x88, 0x42, 0x02, 0xD0, 0x38, 0x1C
    .byte 0xFE, 0xF7, 0x3E, 0xF8, 0x00, 0x20, 0x20, 0x70, 0xF9, 0x69, 0x00, 0x29, 0x02, 0xD0, 0xF8, 0x68
    .byte 0x40, 0x18, 0xF8, 0x60, 0xB9, 0x69, 0x00, 0x29, 0x02, 0xD0, 0xB8, 0x68, 0x40, 0x18, 0xB8, 0x60
    .byte 0xB8, 0x8C, 0x00, 0x28, 0x01, 0xD0, 0x01, 0x38, 0x00, 0xE0, 0xF8, 0x8C, 0xB8, 0x84, 0x3C, 0x69
    .byte 0x00, 0x2C, 0x04, 0xD0, 0x60, 0x68, 0xC1, 0x68, 0x20, 0x1C, 0x9F, 0xF0, 0xD1, 0xFB, 0x2B, 0xB0
    .byte 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

    thumb_func_start func_08034180
func_08034180: @ 0x08034180
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r7, r1, #0
    adds r5, r2, #0
    adds r6, r3, #0
    bl func_08034248
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq _0803419C
    adds r0, r4, #0
    bl func_080321B0
_0803419C:
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r5
    beq _080341AE
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08032198
_080341AE:
    adds r0, r4, #0
    adds r0, #0x42
    movs r1, #0
    strb r1, [r0]
    cmp r7, #1
    beq _080341D0
    cmp r7, #1
    bgt _080341C4
    cmp r7, #0
    beq _080341C8
    b _0803420A
_080341C4:
    cmp r7, #4
    bgt _0803420A
_080341C8:
    movs r0, #0
    str r0, [r4, #0x18]
    str r0, [r4, #0x1c]
    b _0803420A
_080341D0:
    adds r0, r6, #0
    cmp r6, #0
    bge _080341D8
    rsbs r0, r6, #0
_080341D8:
    adds r6, r0, #0
    cmp r5, #1
    beq _080341F8
    cmp r5, #1
    bgt _080341E8
    cmp r5, #0
    beq _080341F2
    b _0803420A
_080341E8:
    cmp r5, #2
    beq _08034200
    cmp r5, #3
    beq _08034206
    b _0803420A
_080341F2:
    str r6, [r4, #0x1c]
    str r1, [r4, #0x18]
    b _0803420A
_080341F8:
    rsbs r0, r6, #0
    str r0, [r4, #0x1c]
    str r1, [r4, #0x18]
    b _0803420A
_08034200:
    rsbs r0, r6, #0
    str r0, [r4, #0x18]
    b _08034208
_08034206:
    str r6, [r4, #0x18]
_08034208:
    str r1, [r4, #0x1c]
_0803420A:
    adds r0, r4, #0
    adds r0, #0x40
    adds r5, r0, #0
    ldrb r0, [r5]
    cmp r7, r0
    beq _0803423E
    movs r1, #1
    rsbs r1, r1, #0
    cmp r7, #2
    beq _08034224
    cmp r7, #3
    beq _08034228
    b _0803422A
_08034224:
    movs r1, #8
    b _0803422E
_08034228:
    movs r1, #5
_0803422A:
    cmp r1, #0
    blt _08034238
_0803422E:
    adds r0, r4, #0
    movs r2, #1
    bl func_08032384
    b _0803423E
_08034238:
    adds r0, r4, #0
    bl func_080323C8
_0803423E:
    strb r7, [r5]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08034248
func_08034248: @ 0x08034248
    ldr r3, _0803425C @ =0x080F1450
    adds r0, #0x30
    ldrb r2, [r0]
    lsls r0, r2, #2
    adds r0, r0, r2
    adds r0, r0, r1
    lsls r0, r0, #1
    adds r0, r0, r3
    ldrh r0, [r0]
    bx lr
    .align 2, 0
_0803425C: .4byte 0x080F1450

    thumb_func_start func_08034260
func_08034260: @ 0x08034260
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    adds r6, r0, #0
    adds r7, r6, #0
    adds r7, #0x41
    ldrb r0, [r7]
    cmp r0, #0
    beq _08034274
    movs r0, #0
    b _080342CA
_08034274:
    ldr r5, [r6]
    add r4, sp, #0x10
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_0801FE94
    ldr r0, [r6, #0x34]
    bl GetCurrentTask__C13HarvestSprite
    ldr r1, [r6, #0x3c]
    str r0, [sp]
    ldr r0, [r6, #0x38]
    str r0, [sp, #4]
    add r0, sp, #8
    adds r2, r5, #0
    adds r3, r4, #0
    bl func_080330F4
    add r0, sp, #8
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    bne _080342AA
    movs r0, #1
    strb r0, [r7]
    movs r0, #0
    b _080342CA
_080342AA:
    ldr r0, [r6, #0x38]
    adds r1, r6, #0
    adds r1, #0x30
    ldrb r1, [r1]
    add r2, sp, #8
    bl func_0809E988
    ldr r1, _080342D4 @ =0xFFFF0000
    ldr r0, [sp, #0x18]
    ands r0, r1
    str r0, [sp, #0x18]
    ldr r0, [r6, #0x34]
    add r1, sp, #0x18
    bl method_0809E7E4__13HarvestSpritePC15UnkBarnAnimal2C
    movs r0, #1
_080342CA:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_080342D4: .4byte 0xFFFF0000

    thumb_func_start func_080342D8
func_080342D8: @ 0x080342D8
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r0, [r5, #0x34]
    bl GetFriendship__C3Npc
    bl func_080338F0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080342FA
    adds r0, r5, #0
    bl func_08034260
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08034356
_080342FA:
    movs r0, #0xb4
    bl func_080AB788
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, _08034360 @ =0xFFFF0000
    ldr r1, [sp]
    ands r1, r2
    orrs r1, r0
    ldr r0, _08034364 @ =0xFF00FFFF
    ands r1, r0
    str r1, [sp]
    ldr r4, [r5, #0x34]
    adds r0, r4, #0
    bl GetCurrentTask__C13HarvestSprite
    adds r1, r0, #0
    adds r0, r4, #0
    bl GetTaskExp__C13HarvestSpriteQ213HarvestSprite4Task
    adds r1, r0, #0
    movs r0, #0x80
    lsls r0, r0, #1
    subs r0, r0, r1
    bl func_080AB788
    lsrs r0, r0, #6
    adds r0, #2
    lsls r0, r0, #0x18
    ldr r2, _08034368 @ =0x00FFFFFF
    ldr r1, [sp]
    ands r1, r2
    orrs r1, r0
    str r1, [sp]
    ldr r0, [r5, #0x34]
    mov r1, sp
    bl method_0809E7D8__13HarvestSpritePC15UnkBarnAnimal2C
    adds r0, r5, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r5, #0
    movs r1, #0
    movs r3, #0
    bl func_08034180
_08034356:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08034360: .4byte 0xFFFF0000
_08034364: .4byte 0xFF00FFFF
_08034368: .4byte 0x00FFFFFF

    thumb_func_start func_0803436C
func_0803436C: @ 0x0803436C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x2c
    str r0, [sp, #0x24]
    ldr r0, [r0]
    str r0, [sp, #0x28]
    ldr r3, [sp, #0x24]
    adds r3, #0x30
    ldrb r1, [r3]
    ldr r2, [sp, #0x24]
    ldr r0, [r2, #0x38]
    lsls r1, r1, #3
    mov r2, sp
    adds r1, r0, r1
    ldm r1!, {r4, r5}
    stm r2!, {r4, r5}
    ldrb r1, [r3]
    bl func_0809E994
    ldr r0, [sp, #0x24]
    ldr r1, [r0, #0x3c]
    mov r0, sp
    ldr r2, [sp, #0x28]
    bl func_08033584
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080343AC
    b _080348FA
_080343AC:
    ldr r1, [sp, #0x24]
    ldr r5, [r1, #0x10]
    cmp r5, #0
    beq _0803441A
    ldr r2, [r1, #0x3c]
    add r4, sp, #0x18
    adds r0, r4, #0
    mov r1, sp
    ldr r3, [sp, #0x28]
    bl func_08033830
    mov r0, sp
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1c
    cmp r0, #4
    beq _080343E4
    cmp r0, #4
    bgt _080343D8
    cmp r0, #3
    beq _080343DE
    b _08034404
_080343D8:
    cmp r0, #5
    beq _080343FE
    b _08034404
_080343DE:
    ldrh r0, [r4, #2]
    subs r0, #0x18
    b _08034402
_080343E4:
    movs r0, #2
    ldrsh r2, [r4, r0]
    mov r0, sp
    ldrb r0, [r0, #1]
    movs r1, #7
    ands r0, r1
    adds r1, r2, #0
    adds r1, #0x18
    cmp r0, #3
    bhi _080343FA
    subs r1, #0x38
_080343FA:
    strh r1, [r4, #2]
    b _08034404
_080343FE:
    ldrh r0, [r4, #2]
    subs r0, #0x28
_08034402:
    strh r0, [r4, #2]
_08034404:
    ldr r0, [sp, #0x24]
    adds r0, #0x30
    ldrb r1, [r0]
    movs r0, #0
    ldrsh r2, [r4, r0]
    add r0, sp, #0x18
    movs r4, #2
    ldrsh r3, [r0, r4]
    adds r0, r5, #0
    bl func_08034BFC
_0803441A:
    mov r0, sp
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1c
    cmp r0, #8
    bls _08034428
    b _080348FA
_08034428:
    lsls r0, r0, #2
    ldr r1, _08034434 @ =_08034438
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08034434: .4byte _08034438
_08034438: @ jump table
    .4byte _080348FA @ case 0
    .4byte _0803445C @ case 1
    .4byte _080344E4 @ case 2
    .4byte _080345EA @ case 3
    .4byte _08034616 @ case 4
    .4byte _08034644 @ case 5
    .4byte _08034680 @ case 6
    .4byte _080347EC @ case 7
    .4byte _08034834 @ case 8
_0803445C:
    ldr r5, [sp, #0x28]
    ldr r5, [r5]
    mov sb, r5
    movs r0, #0xd8
    add sb, r0
    ldr r1, [sp, #0x24]
    movs r2, #0xa
    ldrsh r6, [r1, r2]
    movs r5, #0xe
    ldrsh r4, [r1, r5]
    mov r8, r4
    add r4, sp, #8
    movs r2, #2
    ldrh r1, [r4]
    ldr r3, _080344E0 @ =0xFFFFFC00
    adds r0, r3, #0
    ands r0, r1
    orrs r0, r2
    strh r0, [r4]
    lsls r6, r6, #0x10
    lsrs r1, r6, #0x10
    movs r0, #0x3f
    mov sl, r0
    ands r1, r0
    lsls r1, r1, #2
    ldrb r5, [r4, #1]
    movs r2, #3
    adds r0, r2, #0
    ands r0, r5
    orrs r0, r1
    strb r0, [r4, #1]
    lsrs r6, r6, #0x16
    ldrh r1, [r4, #2]
    adds r0, r3, #0
    ands r0, r1
    orrs r0, r6
    strh r0, [r4, #2]
    mov r1, r8
    lsls r1, r1, #0x10
    mov r8, r1
    lsrs r0, r1, #0x10
    mov r5, sl
    ands r0, r5
    lsls r0, r0, #2
    ldrb r1, [r4, #3]
    ands r2, r1
    orrs r2, r0
    strb r2, [r4, #3]
    mov r0, r8
    lsrs r0, r0, #0x16
    mov r8, r0
    ldrh r0, [r4, #4]
    ands r3, r0
    mov r1, r8
    orrs r3, r1
    strh r3, [r4, #4]
    mov r5, sb
    ldr r2, [r5]
    ldr r0, [sp, #0x28]
    adds r1, r4, #0
    bl _call_via_r2
    movs r6, #1
    mov r8, r4
    b _080348FE
    .align 2, 0
_080344E0: .4byte 0xFFFFFC00
_080344E4:
    add r0, sp, #8
    mov sb, r0
    bl __12RucksackItem
    ldr r1, [sp, #0x28]
    ldr r1, [r1]
    mov r8, r1
    movs r2, #0xe0
    add r8, r2
    ldr r4, [sp, #0x24]
    movs r0, #0xa
    ldrsh r5, [r4, r0]
    movs r1, #0xe
    ldrsh r6, [r4, r1]
    add r7, sp, #0x10
    movs r2, #2
    ldrh r1, [r7]
    ldr r3, _08034580 @ =0xFFFFFC00
    adds r0, r3, #0
    ands r0, r1
    orrs r0, r2
    strh r0, [r7]
    lsls r5, r5, #0x10
    lsrs r1, r5, #0x10
    movs r2, #0x3f
    mov sl, r2
    ands r1, r2
    lsls r1, r1, #2
    ldrb r4, [r7, #1]
    movs r2, #3
    adds r0, r2, #0
    ands r0, r4
    orrs r0, r1
    strb r0, [r7, #1]
    lsrs r5, r5, #0x16
    ldrh r1, [r7, #2]
    adds r0, r3, #0
    ands r0, r1
    orrs r0, r5
    strh r0, [r7, #2]
    lsls r6, r6, #0x10
    lsrs r0, r6, #0x10
    mov r4, sl
    ands r0, r4
    lsls r0, r0, #2
    ldrb r1, [r7, #3]
    ands r2, r1
    orrs r2, r0
    strb r2, [r7, #3]
    lsrs r6, r6, #0x16
    ldrh r0, [r7, #4]
    ands r3, r0
    orrs r3, r6
    strh r3, [r7, #4]
    mov r5, r8
    ldr r3, [r5]
    ldr r0, [sp, #0x28]
    adds r1, r7, #0
    mov r2, sb
    bl _call_via_r3
    mov r0, sb
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    mov r8, sb
    cmp r0, #0
    beq _0803456E
    b _080348FA
_0803456E:
    mov r0, r8
    bl GetKind__C12RucksackItem
    cmp r0, #0
    beq _08034584
    cmp r0, #1
    beq _080345C0
    b _080348FA
    .align 2, 0
_08034580: .4byte 0xFFFFFC00
_08034584:
    ldr r0, [sp, #0x28]
    ldr r4, [r0]
    movs r1, #0xae
    lsls r1, r1, #1
    adds r4, r4, r1
    add r5, sp, #0x1c
    adds r0, r7, #0
    mov r1, r8
    bl GetFood__C12RucksackItem
    ldrb r1, [r7]
    mov r0, sp
    adds r0, #0x11
    ldrb r0, [r0]
    lsls r0, r0, #8
    orrs r0, r1
    mov r1, sp
    adds r1, #0x12
    ldrb r1, [r1]
    lsls r1, r1, #0x10
    orrs r1, r0
    adds r0, r5, #0
    bl __7ProductG4Food
    ldr r2, [r4]
    ldr r0, [sp, #0x28]
    adds r1, r5, #0
    bl _call_via_r2
    b _080345E6
_080345C0:
    ldr r2, [sp, #0x28]
    ldr r4, [r2]
    movs r5, #0xae
    lsls r5, r5, #1
    adds r4, r4, r5
    mov r5, sp
    adds r5, #0x1d
    mov r0, r8
    bl GetArticle__C12RucksackItem
    adds r1, r0, #0
    adds r0, r5, #0
    bl __7ProductG7Article
    ldr r2, [r4]
    ldr r0, [sp, #0x28]
    adds r1, r5, #0
    bl _call_via_r2
_080345E6:
    movs r6, #0
    b _080348FE
_080345EA:
    ldr r1, [sp, #0x24]
    ldr r0, [r1, #0x3c]
    movs r4, #0xff
    lsls r4, r4, #2
    adds r0, r0, r4
    movs r1, #1
    bl SubtractStoredBushels__4CoopUi
    ldr r2, [sp, #0x24]
    ldr r0, [r2, #0x3c]
    adds r0, r0, r4
    mov r1, sp
    ldrb r1, [r1, #1]
    bl SetEntBushel__4CoopUi
    ldr r4, [sp, #0x28]
    ldr r0, [r4]
    adds r0, #0xa0
    mov r1, sp
    ldrb r1, [r1, #1]
    ldr r2, [r0]
    b _0803466E
_08034616:
    ldr r1, [sp, #0x24]
    ldr r0, [r1, #0x3c]
    ldr r4, _08034640 @ =0x000005DC
    adds r0, r0, r4
    movs r1, #1
    bl SubtractStoredBushels__4BarnUi
    ldr r2, [sp, #0x24]
    ldr r0, [r2, #0x3c]
    adds r0, r0, r4
    mov r1, sp
    ldrb r1, [r1, #1]
    bl SetBushelForStall__4BarnUi
    ldr r4, [sp, #0x28]
    ldr r0, [r4]
    adds r0, #0x9c
    mov r1, sp
    ldrb r1, [r1, #1]
    ldr r2, [r0]
    b _0803466E
    .align 2, 0
_08034640: .4byte 0x000005DC
_08034644:
    ldr r1, [sp, #0x24]
    ldr r0, [r1, #0x3c]
    ldr r4, _0803467C @ =0x000005DC
    adds r0, r0, r4
    movs r1, #1
    bl SubtractStoredBushels__4BarnUi
    ldr r2, [sp, #0x24]
    ldr r0, [r2, #0x3c]
    adds r0, r0, r4
    mov r1, sp
    ldrb r1, [r1, #1]
    bl SetBushelForPregnancyStall__4BarnUi
    ldr r4, [sp, #0x28]
    ldr r2, [r4]
    adds r2, #0x9c
    mov r0, sp
    ldrb r1, [r0, #1]
    adds r1, #0x10
    ldr r2, [r2]
_0803466E:
    adds r0, r4, #0
    bl _call_via_r2
    movs r6, #2
    add r5, sp, #8
    mov r8, r5
    b _080348FE
    .align 2, 0
_0803467C: .4byte 0x000005DC
_08034680:
    mov r0, sp
    ldrb r1, [r0, #1]
    adds r1, #0x36
    ldr r2, [sp, #0x28]
    ldr r0, [r2]
    ldr r2, [r0, #0x40]
    ldr r0, [sp, #0x28]
    bl _call_via_r2
    adds r7, r0, #0
    cmp r7, #0
    bne _0803469A
    b _080348FA
_0803469A:
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x50]
    adds r0, r7, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080346B4
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x70]
    adds r0, r7, #0
    bl _call_via_r1
_080346B4:
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x54]
    adds r0, r7, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    add r4, sp, #8
    mov r8, r4
    cmp r0, #0
    beq _08034754
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x74]
    adds r0, r7, #0
    bl _call_via_r1
    movs r1, #0x1c
    cmp r0, #5
    bhi _08034716
    lsls r0, r0, #2
    ldr r1, _080346E4 @ =_080346E8
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080346E4: .4byte _080346E8
_080346E8: @ jump table
    .4byte _08034700 @ case 0
    .4byte _08034704 @ case 1
    .4byte _08034708 @ case 2
    .4byte _0803470C @ case 3
    .4byte _08034710 @ case 4
    .4byte _08034714 @ case 5
_08034700:
    movs r1, #0x1c
    b _08034716
_08034704:
    movs r1, #0x1d
    b _08034716
_08034708:
    movs r1, #0x1e
    b _08034716
_0803470C:
    movs r1, #0x1f
    b _08034716
_08034710:
    movs r1, #0x20
    b _08034716
_08034714:
    movs r1, #0x21
_08034716:
    ldr r5, [sp, #0x28]
    ldr r4, [r5]
    movs r0, #0xae
    lsls r0, r0, #1
    adds r4, r4, r0
    mov r6, sp
    adds r6, #0x1e
    add r5, sp, #8
    adds r0, r5, #0
    bl __4FoodUi
    ldrb r1, [r5]
    mov r0, sp
    adds r0, #9
    ldrb r0, [r0]
    lsls r0, r0, #8
    orrs r0, r1
    mov r1, sp
    adds r1, #0xa
    ldrb r1, [r1]
    lsls r1, r1, #0x10
    orrs r1, r0
    adds r0, r6, #0
    bl __7ProductG4Food
    ldr r2, [r4]
    ldr r0, [sp, #0x28]
    adds r1, r6, #0
    bl _call_via_r2
    mov r8, r5
_08034754:
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x58]
    adds r0, r7, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080347DA
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x78]
    adds r0, r7, #0
    bl _call_via_r1
    movs r1, #5
    cmp r0, #5
    bhi _080347B2
    lsls r0, r0, #2
    ldr r1, _08034780 @ =_08034784
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08034780: .4byte _08034784
_08034784: @ jump table
    .4byte _0803479C @ case 0
    .4byte _080347A0 @ case 1
    .4byte _080347A4 @ case 2
    .4byte _080347A8 @ case 3
    .4byte _080347AC @ case 4
    .4byte _080347B0 @ case 5
_0803479C:
    movs r1, #5
    b _080347B2
_080347A0:
    movs r1, #6
    b _080347B2
_080347A4:
    movs r1, #7
    b _080347B2
_080347A8:
    movs r1, #8
    b _080347B2
_080347AC:
    movs r1, #9
    b _080347B2
_080347B0:
    movs r1, #0xa
_080347B2:
    ldr r2, [sp, #0x28]
    ldr r5, [r2]
    movs r4, #0xae
    lsls r4, r4, #1
    adds r5, r5, r4
    mov r6, sp
    adds r6, #0x1f
    add r4, sp, #0x20
    adds r0, r4, #0
    bl __7ArticleUi
    ldrb r1, [r4]
    adds r0, r6, #0
    bl __7ProductG7Article
    ldr r2, [r5]
    ldr r0, [sp, #0x28]
    adds r1, r6, #0
    bl _call_via_r2
_080347DA:
    ldr r0, [r7, #0x14]
    adds r0, #0x88
    ldr r2, [r0]
    adds r0, r7, #0
    movs r1, #0x3c
    bl _call_via_r2
    movs r6, #2
    b _080348FE
_080347EC:
    mov r0, sp
    ldrb r1, [r0, #1]
    adds r1, #0x2e
    ldr r5, [sp, #0x28]
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _080348FA
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x50]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0803481E
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x70]
    adds r0, r4, #0
    bl _call_via_r1
_0803481E:
    ldr r0, [r4, #0x14]
    adds r0, #0x88
    ldr r2, [r0]
    adds r0, r4, #0
    movs r1, #0x3c
    bl _call_via_r2
    movs r6, #2
    add r0, sp, #8
    mov r8, r0
    b _080348FE
_08034834:
    mov r0, sp
    ldrb r1, [r0, #1]
    adds r4, r1, #0
    adds r4, #0x4c
    ldr r2, [sp, #0x24]
    ldr r0, [r2, #0x3c]
    movs r5, #0xff
    lsls r5, r5, #2
    adds r0, r0, r5
    bl GetEgg__C4CoopUi
    cmp r0, #0
    beq _080348FA
    ldrb r0, [r0, #6]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    movs r7, #0xf
    cmp r0, #5
    bhi _08034896
    lsls r0, r0, #2
    ldr r1, _08034864 @ =_08034868
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08034864: .4byte _08034868
_08034868: @ jump table
    .4byte _08034880 @ case 0
    .4byte _08034884 @ case 1
    .4byte _08034888 @ case 2
    .4byte _0803488C @ case 3
    .4byte _08034890 @ case 4
    .4byte _08034894 @ case 5
_08034880:
    movs r7, #0xf
    b _08034896
_08034884:
    movs r7, #0x10
    b _08034896
_08034888:
    movs r7, #0x11
    b _08034896
_0803488C:
    movs r7, #0x12
    b _08034896
_08034890:
    movs r7, #0x13
    b _08034896
_08034894:
    movs r7, #0x14
_08034896:
    ldr r1, [sp, #0x24]
    ldr r0, [r1]
    ldr r1, [r0]
    ldr r2, [r1, #0x3c]
    adds r1, r4, #0
    bl _call_via_r2
    ldr r2, [sp, #0x24]
    ldr r0, [r2, #0x3c]
    movs r4, #0xff
    lsls r4, r4, #2
    adds r0, r0, r4
    mov r1, sp
    ldrb r1, [r1, #1]
    bl method_0800C9B8__4CoopUi
    ldr r5, [sp, #0x28]
    ldr r4, [r5]
    movs r0, #0xae
    lsls r0, r0, #1
    adds r4, r4, r0
    mov r6, sp
    adds r6, #0x21
    add r5, sp, #8
    adds r0, r5, #0
    adds r1, r7, #0
    bl __4FoodUi
    ldrb r1, [r5]
    mov r0, sp
    adds r0, #9
    ldrb r0, [r0]
    lsls r0, r0, #8
    orrs r0, r1
    mov r1, sp
    adds r1, #0xa
    ldrb r1, [r1]
    lsls r1, r1, #0x10
    orrs r1, r0
    adds r0, r6, #0
    bl __7ProductG4Food
    ldr r2, [r4]
    ldr r0, [sp, #0x28]
    adds r1, r6, #0
    bl _call_via_r2
    movs r6, #2
    mov r8, r5
    b _080348FE
_080348FA:
    movs r0, #0
    b _0803492A
_080348FE:
    ldr r1, _0803493C @ =0x080F1496
    mov r0, r8
    movs r2, #3
    bl memcpy
    cmp r6, #3
    beq _08034928
    movs r0, #0xc8
    bl func_080AB788
    mov r2, r8
    adds r1, r2, r6
    ldrb r1, [r1]
    cmp r0, r1
    bhs _08034928
    ldr r4, [sp, #0x24]
    ldr r0, [r4, #0x34]
    adds r1, r6, #0
    movs r2, #1
    bl AddTaskExp__13HarvestSpriteQ213HarvestSprite4Taski
_08034928:
    movs r0, #1
_0803492A:
    add sp, #0x2c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0803493C: .4byte 0x080F1496

    thumb_func_start func_08034940
func_08034940: @ 0x08034940
    push {r4, r5, lr}
    sub sp, #0xc
    adds r5, r0, #0
    ldr r0, [r5]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldrh r2, [r0, #0xa]
    lsls r0, r2, #0x1b
    lsrs r0, r0, #0x1b
    cmp r0, #5
    bls _0803497C
    subs r0, #6
    lsls r1, r0, #4
    subs r1, r1, r0
    lsls r1, r1, #2
    lsls r0, r2, #0x15
    lsrs r0, r0, #0x1a
    adds r1, r1, r0
    adds r0, r5, #0
    adds r0, #0x30
    ldrb r0, [r0]
    ldr r2, _080349A8 @ =0x00000385
    adds r0, r0, r2
    cmp r1, r0
    blo _08034A08
_0803497C:
    ldrh r0, [r5, #4]
    cmp r0, #0x11
    beq _080349AC
    cmp r0, #0x11
    ble _080349C4
    cmp r0, #0x25
    bne _080349C4
    mov r4, sp
    mov r0, sp
    bl func_08009ADC
    mov r0, sp
    movs r1, #0
    ldrsh r2, [r0, r1]
    movs r0, #2
    ldrsh r3, [r4, r0]
    adds r0, r5, #0
    movs r1, #2
    bl func_0801FE78
    b _080349C4
    .align 2, 0
_080349A8: .4byte 0x00000385
_080349AC:
    add r4, sp, #4
    adds r0, r4, #0
    bl func_08009AE8
    movs r1, #0
    ldrsh r2, [r4, r1]
    movs r0, #2
    ldrsh r3, [r4, r0]
    adds r0, r5, #0
    movs r1, #2
    bl func_0801FE78
_080349C4:
    ldr r0, [r5, #0x38]
    adds r1, r5, #0
    adds r1, #0x30
    ldrb r1, [r1]
    bl func_0809E994
    ldr r0, [r5, #0x34]
    add r1, sp, #8
    bl method_0809E7FC__13HarvestSprite
    movs r2, #0xa
    ldrsh r1, [r5, r2]
    movs r0, #0xb4
    lsls r0, r0, #1
    cmp r1, r0
    bne _080349E8
    movs r2, #1
    b _080349F2
_080349E8:
    ldr r0, _08034A04 @ =0x00000167
    movs r2, #2
    cmp r1, r0
    bgt _080349F2
    movs r2, #3
_080349F2:
    movs r3, #0x80
    lsls r3, r3, #8
    adds r0, r5, #0
    movs r1, #1
    bl func_08034180
    movs r0, #1
    b _08034A0A
    .align 2, 0
_08034A04: .4byte 0x00000167
_08034A08:
    movs r0, #0
_08034A0A:
    add sp, #0xc
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08034A14
func_08034A14: @ 0x08034A14
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    sub sp, #0x10
    mov r8, r0
    adds r4, r1, #0
    ldr r0, _08034A94 @ =0x080F14B8
    mov sb, r0
    adds r5, r4, #0
    adds r5, #0x30
    ldrb r0, [r5]
    lsls r0, r0, #2
    add r0, sb
    ldr r3, [r0]
    movs r6, #0
    str r6, [sp]
    movs r0, #4
    str r0, [sp, #4]
    str r6, [sp, #8]
    add r0, sp, #0xc
    strb r6, [r0]
    mov r0, r8
    movs r2, #3
    bl func_080324BC
    ldr r0, _08034A98 @ =vtable_unk_080E6904
    mov r1, r8
    str r0, [r1, #4]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x68]
    bl _call_via_r1
    adds r1, r0, #0
    ldr r2, _08034A9C @ =0x080F14F0
    ldrb r5, [r5]
    lsls r0, r5, #1
    adds r0, r0, r2
    ldrh r2, [r0]
    ldr r3, [r4]
    lsls r5, r5, #2
    add r5, sb
    mov r0, r8
    adds r0, #0x8c
    movs r4, #2
    str r4, [sp]
    ldr r4, [r5]
    str r4, [sp, #4]
    add r4, sp, #8
    strb r6, [r4]
    bl func_080A4A00
    mov r0, r8
    adds r0, #0xd0
    strh r6, [r0]
    mov r0, r8
    add sp, #0x10
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08034A94: .4byte 0x080F14B8
_08034A98: .4byte vtable_unk_080E6904
_08034A9C: .4byte 0x080F14F0
_08034AA0:
    .byte 0x10, 0xB5, 0x04, 0x1C, 0xFD, 0xF7, 0xB2, 0xFD, 0x20, 0x1C, 0xD0, 0x30, 0x00, 0x88, 0x00, 0x28
    .byte 0x16, 0xD0, 0x21, 0x1C, 0xCB, 0x31, 0x08, 0x78, 0x00, 0x28, 0x0A, 0xD1, 0x20, 0x1C, 0xB4, 0x30
    .byte 0x29, 0xF0, 0x16, 0xFF, 0x80, 0x07, 0x00, 0x28, 0x05, 0xDA, 0x21, 0x1C, 0xC8, 0x31, 0x01, 0x20
    .byte 0x00, 0xE0, 0x00, 0x20, 0x08, 0x70, 0x21, 0x1C, 0xD0, 0x31, 0x08, 0x88, 0x01, 0x38, 0x08, 0x80
    .byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
    .byte 0xE0, 0xB4, 0x8F, 0xB0, 0x05, 0x1C, 0x0C, 0x1C, 0xFD, 0xF7, 0xCA, 0xFD, 0x28, 0x1C, 0xD0, 0x30
    .byte 0x00, 0x88, 0x00, 0x28, 0x71, 0xD0, 0x0D, 0xAB, 0x20, 0x68, 0xA1, 0x68, 0x0D, 0x90, 0x59, 0x60
    .byte 0x28, 0x1C, 0xCC, 0x30, 0x00, 0x22, 0x81, 0x5E, 0x02, 0x30, 0x00, 0x26, 0x82, 0x5F, 0x0C, 0x26
    .byte 0xA0, 0x5F, 0x09, 0x1A, 0x89, 0x46, 0x0E, 0x21, 0x60, 0x5E, 0x10, 0x1A, 0x80, 0x46, 0x80, 0x20
    .byte 0x00, 0x02, 0x84, 0x1A, 0x2E, 0x1C, 0x8C, 0x36, 0x9A, 0x46, 0x28, 0x1C, 0xB4, 0x30, 0x01, 0x68
    .byte 0x0B, 0x68, 0x82, 0x89, 0x04, 0x30, 0x92, 0x00, 0x00, 0x68, 0x80, 0x18, 0x02, 0x88, 0x05, 0xA8
    .byte 0x1B, 0x69, 0x9E, 0xF0, 0xE1, 0xFE, 0x05, 0xAF, 0x52, 0x46, 0x53, 0x68, 0x32, 0x68, 0x28, 0x1C
    .byte 0x90, 0x30, 0x41, 0x68, 0x48, 0x42, 0x08, 0x43, 0x00, 0x28, 0x13, 0xDA, 0xB0, 0x89, 0x29, 0x1C
    .byte 0x9C, 0x31, 0x00, 0x94, 0x3C, 0x1C, 0x01, 0x94, 0x02, 0x92, 0x03, 0x90, 0x04, 0x91, 0x18, 0x1C
    .byte 0x49, 0x46, 0x42, 0x46, 0x55, 0x23, 0x02, 0x4C, 0x9E, 0xF0, 0xC8, 0xFE, 0x03, 0xE0, 0x00, 0x00
    .byte 0xDC, 0x04, 0x00, 0x03, 0x00, 0x20, 0x00, 0x28, 0x27, 0xD0, 0x30, 0x1C, 0x3C, 0x30, 0x01, 0x78
    .byte 0x05, 0x1C, 0x00, 0x29, 0x21, 0xD0, 0x50, 0x46, 0x01, 0x68, 0x3A, 0x1C, 0x08, 0x32, 0x30, 0x1C
    .byte 0x6F, 0xF0, 0x2C, 0xFE, 0x30, 0x1C, 0x3D, 0x30, 0x00, 0x78, 0x00, 0x28, 0x06, 0xD0, 0x39, 0x1C
    .byte 0x10, 0x31, 0x30, 0x1C, 0x01, 0x22, 0x6F, 0xF0, 0xBD, 0xFE, 0x0C, 0xE0, 0x34, 0x1C, 0x3E, 0x34
    .byte 0x20, 0x78, 0x00, 0x28, 0x07, 0xD1, 0x39, 0x1C, 0x10, 0x31, 0x30, 0x1C, 0x01, 0x22, 0x6F, 0xF0
    .byte 0xB1, 0xFE, 0x01, 0x20, 0x20, 0x70, 0x00, 0x20, 0x28, 0x70, 0x0F, 0xB0, 0x38, 0xBC, 0x98, 0x46
    .byte 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

    thumb_func_start func_08034BFC
func_08034BFC: @ 0x08034BFC
    push {r4, r5, r6, lr}
    adds r6, r0, #0
    adds r4, r2, #0
    adds r5, r3, #0
    ldr r0, _08034C3C @ =0x080F14F0
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r1, [r1]
    adds r0, r6, #0
    adds r0, #0xb4
    bl func_0805E860
    adds r0, r6, #0
    adds r0, #0xc8
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    strh r4, [r0]
    adds r0, #2
    strh r5, [r0]
    adds r1, r6, #0
    adds r1, #0xd0
    movs r0, #0x3c
    strh r0, [r1]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
_08034C3C: .4byte 0x080F14F0
_08034C40:
    .byte 0x30, 0x30, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00, 0x00, 0x69, 0x70, 0x47, 0x10, 0xB5, 0x0C, 0x1C
    .byte 0x13, 0x1C, 0x01, 0x1C, 0x30, 0x31, 0x09, 0x78, 0x22, 0x1C, 0xFE, 0xF7, 0x93, 0xFF, 0x10, 0xBC
    .byte 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_08034C64
func_08034C64: @ 0x08034C64
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r1, #0
    ldr r4, _08034CDC @ =0x080F29C0
    ldr r1, [r4]
    bl _call_via_r1
    ldr r1, [r4, #8]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r5, [r0]
    cmp r5, #0
    beq _08034CE0
    ldrh r1, [r6]
    lsls r0, r1, #0x1b
    lsrs r0, r0, #0x1b
    subs r2, r0, #6
    cmp r2, #0
    bge _08034C8C
    adds r2, #0x18
_08034C8C:
    lsls r0, r2, #4
    subs r0, r0, r2
    lsls r0, r0, #2
    lsls r1, r1, #0x15
    lsrs r1, r1, #0x1a
    adds r0, r0, r1
    str r0, [sp, #4]
    ldr r4, [r5, #4]
    ldrh r1, [r5]
    lsls r1, r1, #3
    adds r1, r4, r1
    movs r0, #0
    str r0, [sp]
    adds r0, r4, #0
    add r2, sp, #4
    movs r3, #0
    bl func_080D7ECC
    subs r0, r0, r4
    asrs r0, r0, #3
    subs r0, #1
    ldrh r1, [r5]
    cmp r0, r1
    bhs _08034CE0
    ldr r1, [r5, #4]
    lsls r0, r0, #3
    adds r0, r0, r1
    ldr r0, [r0, #4]
    cmp r0, #0
    beq _08034CE0
    ldrh r1, [r0, #0xa]
    lsls r1, r1, #0x16
    lsrs r1, r1, #0x16
    movs r0, #0x1d
    eors r1, r0
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
    b _08034CE2
    .align 2, 0
_08034CDC: .4byte 0x080F29C0
_08034CE0:
    movs r0, #0
_08034CE2:
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08034CEC
func_08034CEC: @ 0x08034CEC
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    adds r4, r0, #0
    adds r6, r1, #0
    adds r5, r2, #0
    adds r7, r3, #0
    add r0, sp, #4
    adds r1, r5, #0
    bl GetLocation__C3Npc
    ldrh r1, [r5, #0x12]
    ldr r0, _08034D0C @ =0x0000FFFF
    cmp r1, r0
    beq _08034D10
    adds r0, r1, #0
    b _08034D12
    .align 2, 0
_08034D0C: .4byte 0x0000FFFF
_08034D10:
    ldr r0, [sp, #0x24]
_08034D12:
    str r0, [sp]
    adds r0, r4, #0
    adds r1, r6, #0
    add r2, sp, #4
    movs r3, #2
    bl func_080320DC
    ldr r0, _08034D8C @ =vtable_unk_080E71D8
    str r0, [r4, #0x14]
    str r5, [r4, #0x30]
    str r7, [r4, #0x34]
    ldr r0, [sp, #0x20]
    str r0, [r4, #0x38]
    ldrb r0, [r5, #0xc]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    adds r1, r4, #0
    adds r1, #0x3c
    movs r2, #0
    strb r0, [r1]
    ldrh r0, [r5, #0xc]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x1b
    adds r1, #1
    strb r0, [r1]
    ldrb r0, [r5, #0xd]
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1b
    adds r1, #1
    strb r0, [r1]
    adds r0, r4, #0
    adds r0, #0x3f
    strb r2, [r0]
    ldr r0, [r5, #0xc]
    lsls r0, r0, #7
    lsrs r0, r0, #0x16
    adds r1, #2
    strh r0, [r1]
    adds r1, #2
    ldr r0, [sp, #0x2c]
    strh r0, [r1]
    adds r0, r4, #0
    adds r0, #0x44
    mov r1, sp
    ldrh r1, [r1, #0x24]
    strh r1, [r0]
    adds r1, r4, #0
    adds r1, #0x46
    ldr r0, [sp, #0x28]
    strh r0, [r1]
    ldr r0, [r4, #0x30]
    ldrh r1, [r0, #0x12]
    ldr r0, _08034D90 @ =0x0000FFFF
    cmp r1, r0
    bne _08034D94
    adds r0, r4, #0
    movs r1, #1
    bl func_08034F00
    b _08034DA6
    .align 2, 0
_08034D8C: .4byte vtable_unk_080E71D8
_08034D90: .4byte 0x0000FFFF
_08034D94:
    movs r0, #1
    strb r0, [r4, #6]
    ldrh r1, [r5, #0x12]
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq _08034DA6
    adds r0, r4, #0
    bl func_080321B0
_08034DA6:
    adds r0, r4, #0
    add sp, #0xc
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08034DB0
func_08034DB0: @ 0x08034DB0
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r0, _08034DDC @ =vtable_unk_080E71D8
    str r0, [r5, #0x14]
    ldr r4, [r5, #0x30]
    mov r0, sp
    adds r1, r5, #0
    bl func_08032170
    adds r0, r4, #0
    mov r1, sp
    bl SetLocation__3NpcRC13ActorLocation
    ldrb r0, [r5, #6]
    cmp r0, #0
    beq _08034DE0
    ldrh r1, [r5, #0x22]
    ldr r0, [r5, #0x30]
    strh r1, [r0, #0x12]
    b _08034DE6
    .align 2, 0
_08034DDC: .4byte vtable_unk_080E71D8
_08034DE0:
    ldr r1, [r5, #0x30]
    ldr r0, _08034E78 @ =0x0000FFFF
    strh r0, [r1, #0x12]
_08034DE6:
    ldr r0, [r5, #0x38]
    cmp r0, #0
    beq _08034E4C
    ldr r3, [r5, #0x30]
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    movs r4, #0x1f
    ands r1, r4
    ldrb r2, [r3, #0xc]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r3, #0xc]
    ldr r3, [r5, #0x30]
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r1, [r0]
    movs r0, #0x1f
    ands r1, r0
    lsls r1, r1, #5
    ldrh r2, [r3, #0xc]
    ldr r0, _08034E7C @ =0xFFFFFC1F
    ands r0, r2
    orrs r0, r1
    strh r0, [r3, #0xc]
    ldr r3, [r5, #0x30]
    adds r0, r5, #0
    adds r0, #0x3e
    ldrb r1, [r0]
    ands r1, r4
    lsls r1, r1, #2
    ldrb r2, [r3, #0xd]
    movs r0, #0x7d
    rsbs r0, r0, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r3, #0xd]
    ldr r3, [r5, #0x30]
    adds r0, r5, #0
    adds r0, #0x40
    ldrh r2, [r0]
    ldr r0, _08034E80 @ =0x000003FF
    ands r2, r0
    lsls r2, r2, #0xf
    ldr r0, [r3, #0xc]
    ldr r1, _08034E84 @ =0xFE007FFF
    ands r0, r1
    orrs r0, r2
    str r0, [r3, #0xc]
_08034E4C:
    ldr r0, _08034E88 @ =__vt_7AEntity
    str r0, [r5, #0x14]
    ldr r1, [r5, #0x10]
    cmp r1, #0
    beq _08034E62
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08034E62:
    movs r0, #1
    ands r0, r6
    cmp r0, #0
    beq _08034E70
    adds r0, r5, #0
    bl __builtin_delete
_08034E70:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
_08034E78: .4byte 0x0000FFFF
_08034E7C: .4byte 0xFFFFFC1F
_08034E80: .4byte 0x000003FF
_08034E84: .4byte 0xFE007FFF
_08034E88: .4byte __vt_7AEntity

    thumb_func_start func_08034E8C
func_08034E8C: @ 0x08034E8C
    push {r4, lr}
    adds r4, r0, #0
    bl func_0801FE20
    ldr r0, [r4, #0x30]
    bl SetChangedLocation__3Npc
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08034EA0
func_08034EA0: @ 0x08034EA0
    push {lr}
    movs r1, #0
    strb r1, [r0, #6]
    ldr r1, [r0, #0x14]
    ldr r2, [r1, #0x3c]
    movs r1, #1
    bl _call_via_r2
    pop {r0}
    bx r0

    thumb_func_start func_08034EB4
func_08034EB4: @ 0x08034EB4
    push {r4, lr}
    adds r4, r0, #0
    bl func_08035380
    ldrh r0, [r4, #0x24]
    cmp r0, #0
    beq _08034EC6
    subs r0, #1
    b _08034EC8
_08034EC6:
    ldrh r0, [r4, #0x26]
_08034EC8:
    strh r0, [r4, #0x24]
    ldr r2, [r4, #0x10]
    cmp r2, #0
    beq _08034EDA
    ldr r0, [r2, #4]
    ldr r1, [r0, #0xc]
    adds r0, r2, #0
    bl _call_via_r1
_08034EDA:
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08034EE0
func_08034EE0: @ 0x08034EE0
    push {lr}
    adds r2, r0, #0
    ldr r1, [r2, #0x30]
    ldrh r0, [r1, #0x10]
    cmp r0, #0
    bne _08034EF2
    adds r0, r2, #0
    adds r0, #0x42
    ldrh r0, [r0]
_08034EF2:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08034EF8
func_08034EF8: @ 0x08034EF8
    ldr r0, [r0, #0x30]
    strh r1, [r0, #0x10]
    bx lr
    .align 2, 0

    thumb_func_start func_08034F00
func_08034F00: @ 0x08034F00
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x34
    adds r6, r0, #0
    str r1, [sp, #0x14]
    cmp r1, #0
    bgt _08034F16
    b _08035370
_08034F16:
    ldr r1, [r6, #0x38]
    movs r0, #0x3c
    adds r0, r0, r6
    mov r8, r0
    adds r2, r6, #0
    adds r2, #0x3d
    str r2, [sp, #0x30]
    cmp r1, #0
    bne _08034F2A
    b _08035312
_08034F2A:
    ldr r3, [sp, #0x14]
    cmp r3, #2
    ble _08034F3C
    ldr r0, [r6, #0x34]
    ldr r1, [r1]
    bl _call_via_r1
    mov r4, r8
    strb r0, [r4]
_08034F3C:
    ldr r0, [r6, #0x38]
    mov r2, r8
    ldrb r1, [r2]
    ldr r0, [r0, #8]
    lsls r1, r1, #2
    adds r1, r1, r0
    ldr r7, [r1]
    cmp r7, #0
    bne _08034F50
    b _08035312
_08034F50:
    ldr r0, [r6]
    ldr r1, [r0]
    movs r3, #0xa2
    lsls r3, r3, #1
    adds r1, r1, r3
    ldr r1, [r1]
    bl _call_via_r1
    ldrh r3, [r0, #0xa]
    lsls r0, r3, #0x1b
    lsrs r0, r0, #0x1b
    subs r2, r0, #6
    cmp r2, #0
    bge _08034F6E
    adds r2, #0x18
_08034F6E:
    lsls r1, r2, #4
    subs r1, r1, r2
    lsls r1, r1, #2
    lsls r0, r3, #0x15
    lsrs r0, r0, #0x1a
    adds r1, r1, r0
    mov sl, r1
    ldr r4, [sp, #0x14]
    cmp r4, #2
    ble _08034FAA
    str r1, [sp, #0xc]
    ldr r4, [r7, #4]
    ldrh r1, [r7]
    lsls r1, r1, #3
    adds r1, r4, r1
    add r2, sp, #0xc
    movs r5, #0
    str r5, [sp]
    adds r0, r4, #0
    movs r3, #0
    bl func_080D7ECC
    subs r0, r0, r4
    asrs r0, r0, #3
    subs r0, #1
    ldr r1, [sp, #0x30]
    strb r0, [r1]
    adds r0, r6, #0
    adds r0, #0x3e
    strb r5, [r0]
_08034FAA:
    ldr r2, [sp, #0x30]
    ldrb r1, [r2]
    ldrh r3, [r7]
    cmp r1, r3
    blo _08034FB6
    b _08035312
_08034FB6:
    lsls r1, r1, #3
    ldr r0, [r7, #4]
    adds r3, r0, r1
    ldr r4, [r3, #4]
    str r4, [sp, #0x18]
    cmp r4, #0
    bne _08034FC6
    b _08035312
_08034FC6:
    movs r0, #0
    str r0, [sp, #0x1c]
    ldr r4, [r4]
    cmp r4, #0
    bne _08034FD2
    b _08035290
_08034FD2:
    ldr r2, [sp, #0x18]
    ldrh r1, [r2, #4]
    cmp r1, #0
    bne _08034FDC
    b _08035290
_08034FDC:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r2, [r0]
    mov sb, r0
    cmp r2, r1
    blo _08034FEA
    b _08035312
_08034FEA:
    ldr r0, [sp, #0x18]
    movs r1, #6
    ldrsh r7, [r0, r1]
    movs r1, #8
    ldrsh r0, [r0, r1]
    mov r8, r0
    ldr r1, [sp, #0x18]
    ldrb r0, [r1, #0xb]
    lsls r1, r0, #0x1c
    lsrs r5, r1, #0x1e
    lsls r0, r0, #0x1b
    cmp r0, #0
    bge _08035006
    b _08035184
_08035006:
    str r4, [sp, #0x20]
    ldrh r0, [r3]
    movs r1, #0
    cmp sl, r0
    blo _08035014
    mov r2, sl
    subs r1, r2, r0
_08035014:
    str r1, [sp, #0x10]
    ldr r3, [sp, #0x14]
    cmp r3, #2
    ble _08035048
    ldr r0, [sp, #0x18]
    ldrh r1, [r0, #4]
    lsls r1, r1, #3
    adds r1, r4, r1
    add r2, sp, #0x10
    ldr r3, [sp, #0x1c]
    str r3, [sp]
    adds r0, r4, #0
    movs r3, #0
    bl func_080DC96C
    subs r0, r0, r4
    asrs r0, r0, #3
    mov r4, sb
    strb r0, [r4]
    ldr r0, [sp, #0x18]
    ldrh r1, [r0, #4]
    ldrb r0, [r4]
    cmp r0, r1
    blo _08035048
    subs r0, r1, #1
    strb r0, [r4]
_08035048:
    mov r1, sb
    ldrb r0, [r1]
    lsls r0, r0, #3
    ldr r2, [sp, #0x20]
    adds r4, r2, r0
    movs r3, #0
    str r3, [sp, #0x24]
    adds r0, r6, #0
    adds r0, #0x20
    str r0, [sp, #0x2c]
    cmp r2, r4
    beq _08035094
_08035060:
    ldrh r1, [r2]
    str r1, [sp, #0x24]
    movs r3, #2
    ldrsh r1, [r2, r3]
    ldrb r0, [r2, #4]
    lsls r0, r0, #0x1f
    cmp r0, #0
    bne _08035080
    cmp r7, r1
    beq _0803508E
    movs r5, #3
    cmp r7, r1
    ble _0803507C
    movs r5, #2
_0803507C:
    adds r7, r1, #0
    b _0803508E
_08035080:
    cmp r8, r1
    beq _0803508E
    movs r5, #0
    cmp r8, r1
    ble _0803508C
    movs r5, #1
_0803508C:
    mov r8, r1
_0803508E:
    adds r2, #8
    cmp r2, r4
    bne _08035060
_08035094:
    movs r1, #0
    ldrb r0, [r4, #4]
    lsls r0, r0, #0x1f
    cmp r0, #0
    bne _080350A0
    movs r1, #1
_080350A0:
    mov sb, r1
    movs r1, #2
    ldrsh r0, [r4, r1]
    mov r3, r8
    subs r2, r0, r3
    mov r1, sb
    cmp r1, #0
    beq _080350B2
    subs r2, r0, r7
_080350B2:
    str r2, [sp, #0x28]
    cmp r2, #0
    beq _0803510E
    ldrh r0, [r4]
    ldr r3, [sp, #0x24]
    subs r0, r0, r3
    movs r1, #0x19
    adds r3, r0, #0
    muls r3, r1, r3
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    mov sl, r0
    cmp r1, #0
    bne _080350DA
    lsls r0, r2, #0x10
    adds r1, r3, #0
    bl __divsi3
    b _080350DC
_080350DA:
    movs r0, #0
_080350DC:
    mov r2, sb
    cmp r2, #0
    beq _080350F2
    movs r5, #3
    ldr r3, [sp, #0x28]
    cmp r3, #0
    bge _080350EC
    movs r5, #2
_080350EC:
    str r0, [r6, #0x18]
    movs r0, #0
    b _080350FA
_080350F2:
    ldr r1, [sp, #0x28]
    lsrs r5, r1, #0x1f
    mov r2, sb
    str r2, [r6, #0x18]
_080350FA:
    str r0, [r6, #0x1c]
    movs r3, #0
    str r3, [sp, #0x1c]
    mov r1, sl
    ldrb r0, [r1]
    cmp r0, #0
    bne _08035112
    movs r2, #1
    str r2, [sp, #0x1c]
    b _08035112
_0803510E:
    str r2, [r6, #0x18]
    str r2, [r6, #0x1c]
_08035112:
    ldr r3, [sp, #0x14]
    cmp r3, #2
    ble _08035168
    adds r1, r6, #0
    adds r1, #0x40
    movs r0, #0
    strh r0, [r1]
    mov r0, sb
    cmp r0, #0
    beq _08035146
    ldr r0, [sp, #0x10]
    ldrh r1, [r4]
    cmp r0, r1
    bhs _08035140
    ldr r1, [r6, #0x18]
    ldr r2, [sp, #0x24]
    subs r0, r0, r2
    movs r3, #0x19
    muls r0, r3, r0
    muls r0, r1, r0
    asrs r0, r0, #0x10
    adds r7, r7, r0
    b _08035266
_08035140:
    movs r0, #2
    ldrsh r7, [r4, r0]
    b _08035266
_08035146:
    ldr r0, [sp, #0x10]
    ldrh r1, [r4]
    cmp r0, r1
    bhs _08035160
    ldr r1, [r6, #0x1c]
    ldr r2, [sp, #0x24]
    subs r0, r0, r2
    movs r3, #0x19
    muls r0, r3, r0
    muls r0, r1, r0
    asrs r0, r0, #0x10
    add r8, r0
    b _08035266
_08035160:
    movs r1, #2
    ldrsh r0, [r4, r1]
    mov r8, r0
    b _08035266
_08035168:
    ldr r2, [sp, #0x14]
    cmp r2, #1
    bgt _08035170
    b _0803527E
_08035170:
    ldr r0, [sp, #0x10]
    ldr r3, [sp, #0x24]
    subs r0, r0, r3
    movs r4, #0x19
    adds r1, r0, #0
    muls r1, r4, r1
    adds r0, r6, #0
    adds r0, #0x40
    strh r1, [r0]
    b _08035266
_08035184:
    lsls r0, r2, #3
    adds r3, r4, r0
    adds r1, r4, #0
    movs r0, #0x40
    adds r0, r0, r6
    mov sb, r0
    adds r2, r6, #0
    adds r2, #0x20
    str r2, [sp, #0x2c]
    cmp r1, r3
    beq _080351BC
_0803519A:
    movs r4, #0
    ldrsh r2, [r1, r4]
    ldrb r0, [r1, #6]
    lsls r0, r0, #0x1d
    cmp r0, #0
    blt _080351AE
    cmp r7, r2
    beq _080351B4
    adds r7, r2, #0
    b _080351B4
_080351AE:
    cmp r8, r2
    beq _080351B4
    mov r8, r2
_080351B4:
    ldrh r0, [r1, #4]
    adds r1, #8
    cmp r1, r3
    bne _0803519A
_080351BC:
    ldr r0, [sp, #0x14]
    cmp r0, #1
    ble _080351C8
    movs r0, #0
    mov r1, sb
    strh r0, [r1]
_080351C8:
    movs r1, #0
    ldrb r0, [r3, #6]
    lsls r0, r0, #0x1d
    cmp r0, #0
    blt _080351D4
    movs r1, #1
_080351D4:
    adds r5, r1, #0
    movs r2, #0
    ldrsh r0, [r3, r2]
    mov r1, r8
    subs r4, r0, r1
    cmp r5, #0
    beq _080351E4
    subs r4, r0, r7
_080351E4:
    mov r2, sb
    ldrh r0, [r2]
    cmp r0, #0
    bne _0803524A
    cmp r4, #0
    beq _0803524A
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r1, [r0]
    movs r2, #0
    mov sl, r0
    cmp r1, #0
    bne _08035202
    movs r2, #0x80
    lsls r2, r2, #8
_08035202:
    ldrh r0, [r3, #2]
    cmp r0, #0
    beq _0803520A
    muls r2, r0, r2
_0803520A:
    cmp r5, #0
    beq _08035224
    cmp r4, #0
    bge _0803521A
    movs r5, #2
    rsbs r0, r2, #0
    str r0, [r6, #0x18]
    b _0803521E
_0803521A:
    movs r5, #3
    str r2, [r6, #0x18]
_0803521E:
    movs r0, #0
    str r0, [r6, #0x1c]
    b _08035238
_08035224:
    cmp r4, #0
    bge _08035230
    movs r5, #1
    rsbs r0, r2, #0
    str r0, [r6, #0x1c]
    b _08035234
_08035230:
    movs r5, #0
    str r2, [r6, #0x1c]
_08035234:
    movs r0, #0
    str r0, [r6, #0x18]
_08035238:
    movs r3, #0
    str r3, [sp, #0x1c]
    mov r4, sl
    ldrb r0, [r4]
    cmp r0, #0
    bne _08035266
    movs r0, #1
    str r0, [sp, #0x1c]
    b _08035266
_0803524A:
    cmp r5, #0
    beq _08035254
    movs r1, #0
    ldrsh r7, [r3, r1]
    b _0803525A
_08035254:
    movs r4, #0
    ldrsh r2, [r3, r4]
    mov r8, r2
_0803525A:
    movs r0, #0
    str r0, [r6, #0x18]
    str r0, [r6, #0x1c]
    ldrb r0, [r3, #6]
    lsls r0, r0, #0x1e
    lsrs r5, r0, #0x1e
_08035266:
    ldr r0, [sp, #0x14]
    cmp r0, #1
    ble _0803527E
    ldr r2, [sp, #0x18]
    ldrh r1, [r2, #0xa]
    lsls r1, r1, #0x16
    lsrs r1, r1, #0x16
    adds r0, r6, #0
    adds r2, r7, #0
    mov r3, r8
    bl func_0801FE78
_0803527E:
    ldr r3, [sp, #0x2c]
    ldrb r0, [r3]
    cmp r0, r5
    beq _080352CA
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_08032198
    b _080352CA
_08035290:
    ldr r4, [sp, #0x14]
    cmp r4, #1
    ble _080352AC
    ldr r0, [sp, #0x18]
    ldrh r1, [r0, #0xa]
    lsls r1, r1, #0x16
    lsrs r1, r1, #0x16
    movs r3, #6
    ldrsh r2, [r0, r3]
    movs r4, #8
    ldrsh r3, [r0, r4]
    adds r0, r6, #0
    bl func_0801FE78
_080352AC:
    ldr r1, [sp, #0x18]
    ldrb r0, [r1, #0xb]
    lsls r0, r0, #0x1c
    lsrs r1, r0, #0x1e
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r1
    beq _080352C4
    adds r0, r6, #0
    bl func_08032198
_080352C4:
    movs r0, #0
    str r0, [r6, #0x18]
    str r0, [r6, #0x1c]
_080352CA:
    ldr r2, [sp, #0x14]
    cmp r2, #1
    ble _080352E2
    ldr r4, [r6, #0x30]
    add r0, sp, #4
    adds r1, r6, #0
    bl func_08032170
    adds r0, r4, #0
    add r1, sp, #4
    bl SetLocation__3NpcRC13ActorLocation
_080352E2:
    ldr r3, [sp, #0x1c]
    cmp r3, #0
    beq _080352F8
    ldr r0, [r6, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r6, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080352FE
_080352F8:
    adds r0, r6, #0
    adds r0, #0x44
    b _08035302
_080352FE:
    adds r0, r6, #0
    adds r0, #0x46
_08035302:
    ldrh r1, [r0]
    ldrh r0, [r6, #0x22]
    cmp r0, r1
    beq _08035370
    adds r0, r6, #0
    bl func_080321B0
    b _08035370
_08035312:
    ldr r4, [sp, #0x14]
    cmp r4, #1
    ble _08035334
    adds r0, r6, #0
    movs r1, #0x8d
    lsls r1, r1, #2
    bl func_0801FF38
    ldr r4, [r6, #0x30]
    add r0, sp, #4
    adds r1, r6, #0
    bl func_08032170
    adds r0, r4, #0
    add r1, sp, #4
    bl SetLocation__3NpcRC13ActorLocation
_08035334:
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, #0
    beq _08035346
    adds r0, r6, #0
    movs r1, #0
    bl func_08032198
_08035346:
    movs r4, #0
    str r4, [r6, #0x18]
    str r4, [r6, #0x1c]
    adds r0, r6, #0
    adds r0, #0x44
    ldrh r1, [r0]
    ldrh r0, [r6, #0x22]
    cmp r0, r1
    beq _0803535E
    adds r0, r6, #0
    bl func_080321B0
_0803535E:
    mov r0, r8
    strb r4, [r0]
    ldr r1, [sp, #0x30]
    strb r4, [r1]
    adds r0, r6, #0
    adds r0, #0x3e
    strb r4, [r0]
    adds r0, #2
    strh r4, [r0]
_08035370:
    add sp, #0x34
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08035380
func_08035380: @ 0x08035380
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xbc
    adds r6, r0, #0
    ldr r5, [r6]
    ldr r1, [r6, #0x38]
    cmp r1, #0
    bne _08035398
    b _080358F8
_08035398:
    adds r0, #0x3c
    ldrb r0, [r0]
    ldr r1, [r1, #8]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    str r0, [sp, #0x70]
    cmp r0, #0
    bne _080353AC
    b _080358F8
_080353AC:
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r1, [r0]
    str r0, [sp, #0xb0]
    ldr r0, [sp, #0x70]
    ldrh r0, [r0]
    cmp r1, r0
    blo _080353BE
    b _080358F8
_080353BE:
    lsls r1, r1, #3
    ldr r2, [sp, #0x70]
    ldr r0, [r2, #4]
    adds r7, r0, r1
    ldr r3, [r7, #4]
    str r3, [sp, #0x74]
    cmp r3, #0
    bne _080353D0
    b _080358F8
_080353D0:
    ldr r0, [r5]
    movs r4, #0xa2
    lsls r4, r4, #1
    adds r0, r0, r4
    ldr r1, [r0]
    adds r0, r5, #0
    bl _call_via_r1
    ldrh r3, [r0, #0xa]
    lsls r0, r3, #0x1b
    lsrs r0, r0, #0x1b
    subs r2, r0, #6
    cmp r2, #0
    bge _080353EE
    adds r2, #0x18
_080353EE:
    lsls r1, r2, #4
    subs r1, r1, r2
    lsls r1, r1, #2
    lsls r0, r3, #0x15
    lsrs r0, r0, #0x1a
    adds r1, r1, r0
    movs r0, #0
    str r0, [sp, #0x78]
    ldr r2, [sp, #0x74]
    ldr r3, [r2]
    cmp r3, #0
    bne _08035408
    b _080358C0
_08035408:
    ldrh r4, [r2, #4]
    cmp r4, #0
    bne _08035410
    b _080358C0
_08035410:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r2, [r0]
    str r0, [sp, #0xb4]
    cmp r2, r4
    blo _0803541E
    b _080358F8
_0803541E:
    ldr r4, [sp, #0x74]
    ldrb r0, [r4, #0xb]
    lsls r0, r0, #0x1b
    cmp r0, #0
    bge _0803542A
    b _08035638
_0803542A:
    lsls r0, r2, #3
    adds r3, r3, r0
    str r3, [sp, #0x7c]
    movs r1, #0
    ldrb r0, [r3, #4]
    lsls r0, r0, #0x1f
    cmp r0, #0
    bne _0803543C
    movs r1, #1
_0803543C:
    mov r8, r1
    ldr r0, [r6, #8]
    str r0, [sp]
    ldr r0, [r6, #0xc]
    str r0, [sp, #8]
    ldr r0, [r6, #0x18]
    str r0, [sp, #4]
    ldr r0, [r6, #0x1c]
    str r0, [sp, #0xc]
    cmp r1, #0
    beq _0803545C
    mov sl, sp
    mov r7, sp
    adds r7, #4
    str r7, [sp, #0x80]
    b _08035466
_0803545C:
    add r0, sp, #8
    mov sl, r0
    mov r1, sp
    adds r1, #0xc
    str r1, [sp, #0x80]
_08035466:
    mov r2, sl
    ldr r1, [r2]
    asrs r3, r1, #0x10
    str r3, [sp, #0x84]
    ldr r4, [sp, #0x80]
    ldr r0, [r4]
    adds r1, r1, r0
    str r1, [sp, #0x88]
    asrs r7, r1, #0x10
    str r7, [sp, #0x8c]
    subs r7, r7, r3
    movs r3, #0
    adds r0, r6, #0
    adds r0, #0x40
    ldrh r2, [r0]
    ldr r1, _080354AC @ =0x000002EE
    str r0, [sp, #0xb8]
    cmp r2, r1
    blt _0803548E
    movs r3, #1
_0803548E:
    movs r0, #1
    str r0, [sp, #0x90]
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r2, [r0]
    adds r1, r0, #0
    cmp r2, #0
    beq _080354BE
    movs r4, #0
    str r4, [sp, #0x90]
    cmp r3, #0
    beq _080354B0
    strb r4, [r1]
    b _080354B4
    .align 2, 0
_080354AC: .4byte 0x000002EE
_080354B0:
    subs r0, r2, #1
    strb r0, [r1]
_080354B4:
    ldrb r0, [r1]
    cmp r0, #0
    bne _080354BE
    movs r1, #1
    str r1, [sp, #0x78]
_080354BE:
    cmp r3, #0
    bne _080355A0
    cmp r7, #0
    beq _080355A0
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    movs r1, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _080355A0
    ldrh r0, [r4, #4]
    ldrh r2, [r6, #4]
    cmp r0, r2
    bne _080355A0
    ldr r1, [r6, #0x14]
    add r0, sp, #0x10
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    str r0, [sp, #0x18]
    str r1, [sp, #0x1c]
    add r5, sp, #0x18
    ldr r1, [r4, #0x14]
    add r0, sp, #0x20
    ldr r2, [r1, #0xc]
    adds r1, r4, #0
    bl _call_via_r2
    ldr r0, [sp, #0x20]
    ldr r1, [sp, #0x24]
    str r0, [sp, #0x28]
    str r1, [sp, #0x2c]
    add r4, sp, #0x28
    mov r3, r8
    cmp r3, #0
    beq _08035518
    adds r2, r7, #0
    movs r7, #0
    b _0803551A
_08035518:
    movs r2, #0
_0803551A:
    mov sb, r7
    movs r1, #0
    ldrsh r0, [r5, r1]
    mov ip, r0
    movs r3, #4
    ldrsh r1, [r4, r3]
    subs r1, r0, r1
    movs r7, #0
    ldrsh r0, [r4, r7]
    movs r7, #4
    ldrsh r3, [r5, r7]
    mov r8, r3
    subs r0, r0, r3
    ands r1, r0
    movs r0, #2
    ldrsh r7, [r5, r0]
    movs r3, #6
    ldrsh r0, [r4, r3]
    subs r0, r7, r0
    ands r1, r0
    movs r3, #2
    ldrsh r0, [r4, r3]
    movs r3, #6
    ldrsh r5, [r5, r3]
    subs r0, r0, r5
    ands r1, r0
    cmp r1, #0
    blt _080355A0
    add r3, sp, #0x30
    mov r1, ip
    adds r0, r2, r1
    strh r0, [r3]
    mov r1, sb
    adds r0, r1, r7
    strh r0, [r3, #2]
    mov r7, r8
    adds r0, r2, r7
    strh r0, [r3, #4]
    adds r0, r1, r5
    strh r0, [r3, #6]
    movs r0, #0
    ldrsh r1, [r3, r0]
    movs r2, #4
    ldrsh r0, [r4, r2]
    subs r1, r1, r0
    movs r5, #0
    ldrsh r0, [r4, r5]
    movs r7, #4
    ldrsh r2, [r3, r7]
    subs r0, r0, r2
    ands r1, r0
    movs r2, #2
    ldrsh r0, [r3, r2]
    movs r5, #6
    ldrsh r2, [r4, r5]
    subs r0, r0, r2
    ands r1, r0
    movs r7, #2
    ldrsh r0, [r4, r7]
    movs r4, #6
    ldrsh r2, [r3, r4]
    subs r0, r0, r2
    ands r1, r0
    cmp r1, #0
    bge _080355A0
    movs r5, #0
    str r5, [sp, #0x90]
_080355A0:
    ldr r7, [sp, #0x90]
    cmp r7, #0
    beq _0803562E
    ldr r1, [sp, #0x7c]
    movs r2, #2
    ldrsh r0, [r1, r2]
    ldr r3, [sp, #0x84]
    cmp r3, r0
    beq _080355D0
    ldr r4, [sp, #0x8c]
    cmp r4, r0
    beq _080355D0
    movs r1, #0
    cmp r0, r3
    bge _080355C0
    movs r1, #1
_080355C0:
    ldr r5, [sp, #0x8c]
    cmp r0, r5
    bge _080355CC
    cmp r1, #0
    beq _080355D0
    b _08035616
_080355CC:
    cmp r1, #0
    beq _08035616
_080355D0:
    lsls r0, r0, #0x10
    mov r7, sl
    str r0, [r7]
    movs r1, #0
    ldr r0, [sp, #0x80]
    str r1, [r0]
    ldr r2, [sp, #0xb4]
    ldrb r0, [r2]
    adds r0, #1
    strb r0, [r2]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r3, [sp, #0x74]
    ldrh r3, [r3, #4]
    cmp r0, r3
    bhs _080355F6
    movs r4, #1
    str r4, [sp, #0x78]
    b _0803561C
_080355F6:
    ldr r5, [sp, #0xb0]
    ldrb r0, [r5]
    adds r0, #1
    ldr r7, [sp, #0x70]
    ldrh r7, [r7]
    cmp r0, r7
    blt _08035606
    b _080358F8
_08035606:
    ldr r0, [sp, #0xb4]
    strb r1, [r0]
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    movs r1, #2
    str r1, [sp, #0x78]
    b _0803561C
_08035616:
    ldr r2, [sp, #0x88]
    mov r3, sl
    str r2, [r3]
_0803561C:
    ldr r0, [sp]
    str r0, [r6, #8]
    ldr r0, [sp, #8]
    str r0, [r6, #0xc]
    ldr r0, [sp, #4]
    str r0, [r6, #0x18]
    ldr r0, [sp, #0xc]
    str r0, [r6, #0x1c]
    b _080358E6
_0803562E:
    ldr r4, [sp, #0xb8]
    ldrh r0, [r4]
    adds r0, #1
    strh r0, [r4]
    b _080358E6
_08035638:
    lsls r0, r2, #3
    adds r3, r3, r0
    str r3, [sp, #0x94]
    movs r2, #0
    ldrb r0, [r3, #6]
    lsls r0, r0, #0x1d
    cmp r0, #0
    blt _0803564A
    movs r2, #1
_0803564A:
    mov r8, r2
    movs r2, #0
    ldr r3, [sp, #0xb0]
    ldrb r0, [r3]
    adds r0, #1
    ldr r4, [sp, #0x70]
    ldrh r4, [r4]
    cmp r0, r4
    bge _08035664
    ldrh r7, [r7, #8]
    cmp r1, r7
    blo _08035664
    movs r2, #1
_08035664:
    mov sl, r2
    cmp r2, #0
    beq _08035682
    ldrh r4, [r6, #4]
    ldr r0, [r5]
    ldr r1, [r0, #0x14]
    adds r0, r5, #0
    bl _call_via_r1
    cmp r4, r0
    beq _08035682
    movs r0, #0
    ldr r5, [sp, #0xb4]
    strb r0, [r5]
    b _080358AC
_08035682:
    adds r1, r6, #0
    adds r1, #0x40
    ldrh r0, [r1]
    str r1, [sp, #0xb8]
    cmp r0, #0
    beq _08035690
    b _08035874
_08035690:
    ldr r0, [r6, #8]
    str r0, [sp, #0x38]
    ldr r0, [r6, #0xc]
    str r0, [sp, #0x40]
    ldr r0, [r6, #0x18]
    str r0, [sp, #0x3c]
    ldr r0, [r6, #0x1c]
    str r0, [sp, #0x44]
    mov r1, r8
    cmp r1, #0
    beq _080356B4
    mov r2, sp
    adds r2, #0x38
    str r2, [sp, #0x98]
    mov r3, sp
    adds r3, #0x3c
    str r3, [sp, #0x9c]
    b _080356C0
_080356B4:
    mov r4, sp
    adds r4, #0x40
    str r4, [sp, #0x98]
    mov r7, sp
    adds r7, #0x44
    str r7, [sp, #0x9c]
_080356C0:
    ldr r1, [sp, #0x98]
    ldr r0, [r1]
    asrs r2, r0, #0x10
    str r2, [sp, #0xa0]
    ldr r3, [sp, #0x9c]
    ldr r1, [r3]
    adds r0, r0, r1
    str r0, [sp, #0xa4]
    asrs r4, r0, #0x10
    str r4, [sp, #0xa8]
    subs r7, r4, r2
    movs r0, #1
    str r0, [sp, #0xac]
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r2, [r0]
    adds r1, r0, #0
    cmp r2, #0
    beq _08035702
    movs r3, #0
    str r3, [sp, #0xac]
    mov r4, sl
    cmp r4, #0
    beq _080356F4
    strb r3, [r1]
    b _080356F8
_080356F4:
    subs r0, r2, #1
    strb r0, [r1]
_080356F8:
    ldrb r0, [r1]
    cmp r0, #0
    bne _08035702
    movs r1, #1
    str r1, [sp, #0x78]
_08035702:
    mov r2, sl
    cmp r2, #0
    bne _080357E8
    cmp r7, #0
    beq _080357E8
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    movs r1, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _080357E8
    ldrh r0, [r4, #4]
    ldrh r3, [r6, #4]
    cmp r0, r3
    bne _080357E8
    ldr r1, [r6, #0x14]
    add r0, sp, #0x48
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    ldr r0, [sp, #0x48]
    ldr r1, [sp, #0x4c]
    str r0, [sp, #0x50]
    str r1, [sp, #0x54]
    add r5, sp, #0x50
    ldr r1, [r4, #0x14]
    add r0, sp, #0x58
    ldr r2, [r1, #0xc]
    adds r1, r4, #0
    bl _call_via_r2
    ldr r0, [sp, #0x58]
    ldr r1, [sp, #0x5c]
    str r0, [sp, #0x60]
    str r1, [sp, #0x64]
    add r4, sp, #0x60
    mov r0, r8
    cmp r0, #0
    beq _08035760
    adds r2, r7, #0
    movs r1, #0
    mov sb, r1
    b _08035764
_08035760:
    movs r2, #0
    mov sb, r7
_08035764:
    movs r7, #0
    ldrsh r3, [r5, r7]
    mov r8, r3
    movs r0, #4
    ldrsh r1, [r4, r0]
    subs r1, r3, r1
    movs r3, #0
    ldrsh r0, [r4, r3]
    movs r3, #4
    ldrsh r7, [r5, r3]
    mov ip, r7
    subs r0, r0, r7
    ands r1, r0
    movs r0, #2
    ldrsh r7, [r5, r0]
    movs r3, #6
    ldrsh r0, [r4, r3]
    subs r0, r7, r0
    ands r1, r0
    movs r3, #2
    ldrsh r0, [r4, r3]
    movs r3, #6
    ldrsh r5, [r5, r3]
    subs r0, r0, r5
    ands r1, r0
    cmp r1, #0
    blt _080357E8
    add r3, sp, #0x68
    mov r1, r8
    adds r0, r2, r1
    strh r0, [r3]
    mov r1, sb
    adds r0, r1, r7
    strh r0, [r3, #2]
    mov r7, ip
    adds r0, r2, r7
    strh r0, [r3, #4]
    adds r0, r1, r5
    strh r0, [r3, #6]
    movs r0, #0
    ldrsh r1, [r3, r0]
    movs r2, #4
    ldrsh r0, [r4, r2]
    subs r1, r1, r0
    movs r5, #0
    ldrsh r0, [r4, r5]
    movs r7, #4
    ldrsh r2, [r3, r7]
    subs r0, r0, r2
    ands r1, r0
    movs r2, #2
    ldrsh r0, [r3, r2]
    movs r5, #6
    ldrsh r2, [r4, r5]
    subs r0, r0, r2
    ands r1, r0
    movs r7, #2
    ldrsh r0, [r4, r7]
    movs r4, #6
    ldrsh r2, [r3, r4]
    subs r0, r0, r2
    ands r1, r0
    cmp r1, #0
    bge _080357E8
    movs r5, #0
    str r5, [sp, #0xac]
_080357E8:
    ldr r7, [sp, #0xac]
    cmp r7, #0
    beq _080358E6
    ldr r0, [sp, #0x94]
    movs r1, #0
    ldrsh r2, [r0, r1]
    ldr r3, [sp, #0xa8]
    cmp r3, r2
    beq _08035806
    ldr r4, [sp, #0xa0]
    subs r0, r2, r4
    subs r1, r2, r3
    eors r0, r1
    cmp r0, #0
    bge _0803585C
_08035806:
    lsls r0, r2, #0x10
    ldr r5, [sp, #0x98]
    str r0, [r5]
    movs r1, #0
    ldr r7, [sp, #0x9c]
    str r1, [r7]
    mov r0, sl
    cmp r0, #0
    bne _08035820
    ldr r2, [sp, #0x94]
    ldrh r0, [r2, #4]
    cmp r0, #0
    bne _08035850
_08035820:
    ldr r3, [sp, #0xb4]
    ldrb r0, [r3]
    adds r0, #1
    strb r0, [r3]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r4, [sp, #0x74]
    ldrh r4, [r4, #4]
    cmp r0, r4
    blo _0803584A
    strb r1, [r3]
    mov r5, sl
    cmp r5, #0
    beq _08035844
    ldr r7, [sp, #0xb0]
    ldrb r0, [r7]
    adds r0, #1
    strb r0, [r7]
_08035844:
    movs r0, #2
    str r0, [sp, #0x78]
    b _08035862
_0803584A:
    movs r1, #1
    str r1, [sp, #0x78]
    b _08035862
_08035850:
    movs r0, #1
    ldr r2, [sp, #0xb8]
    strh r0, [r2]
    movs r3, #1
    str r3, [sp, #0x78]
    b _08035862
_0803585C:
    ldr r4, [sp, #0xa4]
    ldr r5, [sp, #0x98]
    str r4, [r5]
_08035862:
    ldr r0, [sp, #0x38]
    str r0, [r6, #8]
    ldr r0, [sp, #0x40]
    str r0, [r6, #0xc]
    ldr r0, [sp, #0x3c]
    str r0, [r6, #0x18]
    ldr r0, [sp, #0x44]
    str r0, [r6, #0x1c]
    b _080358E6
_08035874:
    mov r7, sl
    cmp r7, #0
    bne _0803588A
    adds r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, [sp, #0x94]
    ldrh r2, [r2, #4]
    cmp r0, r2
    bls _080358E6
_0803588A:
    movs r0, #0
    strh r0, [r1]
    ldr r3, [sp, #0xb4]
    ldrb r0, [r3]
    adds r0, #1
    strb r0, [r3]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r4, [sp, #0x74]
    ldrh r4, [r4, #4]
    cmp r0, r4
    blo _080358BA
    movs r0, #0
    strb r0, [r3]
    mov r5, sl
    cmp r5, #0
    beq _080358B4
_080358AC:
    ldr r7, [sp, #0xb0]
    ldrb r0, [r7]
    adds r0, #1
    strb r0, [r7]
_080358B4:
    movs r0, #2
    str r0, [sp, #0x78]
    b _080358EC
_080358BA:
    movs r1, #1
    str r1, [sp, #0x78]
    b _080358EC
_080358C0:
    ldr r2, [sp, #0xb0]
    ldrb r0, [r2]
    adds r0, #1
    ldr r3, [sp, #0x70]
    ldrh r3, [r3]
    cmp r0, r3
    bge _080358E6
    ldrh r7, [r7, #8]
    cmp r1, r7
    blo _080358E6
    adds r1, r6, #0
    adds r1, #0x3e
    movs r0, #0
    strb r0, [r1]
    ldrb r0, [r2]
    adds r0, #1
    strb r0, [r2]
    movs r4, #2
    str r4, [sp, #0x78]
_080358E6:
    ldr r5, [sp, #0x78]
    cmp r5, #0
    ble _080358F8
_080358EC:
    ldr r0, [r6, #0x14]
    ldr r2, [r0, #0x3c]
    adds r0, r6, #0
    ldr r1, [sp, #0x78]
    bl _call_via_r2
_080358F8:
    add sp, #0xbc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08035908
func_08035908: @ 0x08035908
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r0, #0x44
    ldrh r6, [r0]
    cmp r5, r6
    beq _0803593A
    strh r5, [r0]
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0803593A
    ldrh r0, [r4, #0x22]
    cmp r0, r6
    bne _0803593A
    cmp r0, r5
    beq _0803593A
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080321B0
_0803593A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_08035940
func_08035940: @ 0x08035940
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r0, #0x46
    ldrh r6, [r0]
    cmp r5, r6
    beq _08035972
    strh r5, [r0]
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08035972
    ldrh r0, [r4, #0x22]
    cmp r0, r6
    bne _08035972
    cmp r0, r5
    beq _08035972
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080321B0
_08035972:
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_08035978
func_08035978: @ 0x08035978
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08035A3A
    ldr r1, [r4, #0x38]
    cmp r1, #0
    beq _08035A3A
    adds r0, r4, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    ldr r1, [r1, #8]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r6, [r0]
    cmp r6, #0
    beq _08035A3A
    adds r0, r4, #0
    adds r0, #0x3d
    ldrb r1, [r0]
    mov r8, r0
    ldrh r0, [r6]
    cmp r1, r0
    bhs _08035A3A
    lsls r1, r1, #3
    ldr r0, [r6, #4]
    adds r7, r0, r1
    ldr r5, [r7, #4]
    cmp r5, #0
    beq _08035A3A
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldrh r1, [r0, #0xa]
    lsls r0, r1, #0x1b
    lsrs r0, r0, #0x1b
    subs r2, r0, #6
    cmp r2, #0
    bge _080359E0
    adds r2, #0x18
_080359E0:
    lsls r0, r2, #4
    subs r0, r0, r2
    lsls r0, r0, #2
    lsls r1, r1, #0x15
    lsrs r1, r1, #0x1a
    adds r1, r0, r1
    ldr r0, [r5]
    cmp r0, #0
    beq _08035A20
    ldrh r2, [r5, #4]
    cmp r2, #0
    beq _08035A20
    adds r0, r4, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, r2
    bhs _08035A3A
    ldrb r0, [r5, #0xb]
    lsls r0, r0, #0x1b
    cmp r0, #0
    blt _08035A20
    movs r2, #0
    adds r0, r4, #0
    adds r0, #0x40
    ldrh r1, [r0]
    ldr r0, _08035A1C @ =0x000002EE
    cmp r1, r0
    blt _08035A36
    b _08035A34
    .align 2, 0
_08035A1C: .4byte 0x000002EE
_08035A20:
    movs r2, #0
    mov r3, r8
    ldrb r0, [r3]
    adds r0, #1
    ldrh r6, [r6]
    cmp r0, r6
    bge _08035A36
    ldrh r7, [r7, #8]
    cmp r1, r7
    blo _08035A36
_08035A34:
    movs r2, #1
_08035A36:
    adds r0, r2, #0
    b _08035A3C
_08035A3A:
    movs r0, #0
_08035A3C:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08035A48
func_08035A48: @ 0x08035A48
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r3, r1, #0
    ldrh r1, [r4, #4]
    ldrh r0, [r3]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    cmp r1, r0
    bne _08035AD6
    movs r0, #0xa
    ldrsh r2, [r4, r0]
    ldrb r1, [r3, #1]
    lsrs r1, r1, #2
    ldrh r0, [r3, #2]
    ldr r5, _08035ADC @ =0x000003FF
    ands r0, r5
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    subs r0, r0, r2
    cmp r0, #0
    bge _08035A78
    rsbs r0, r0, #0
_08035A78:
    cmp r0, #0x97
    bgt _08035AD6
    movs r0, #0xe
    ldrsh r2, [r4, r0]
    ldrb r1, [r3, #3]
    lsrs r1, r1, #2
    ldrh r0, [r3, #4]
    ands r0, r5
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    subs r0, r0, r2
    cmp r0, #0
    bge _08035A98
    rsbs r0, r0, #0
_08035A98:
    cmp r0, #0x6f
    bgt _08035AD6
    adds r0, r4, #0
    bl func_08035978
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08035AD6
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08035AD6
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0
    bl func_08032384
    adds r1, r4, #0
    adds r1, #0x3f
    movs r0, #0x78
    strb r0, [r1]
    ldr r0, [r4, #0x14]
    ldr r2, [r0, #0x3c]
    adds r0, r4, #0
    movs r1, #1
    bl _call_via_r2
_08035AD6:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08035ADC: .4byte 0x000003FF

    thumb_func_start func_08035AE0
func_08035AE0: @ 0x08035AE0
    push {lr}
    adds r1, r0, #0
    movs r2, #0
    ldrh r0, [r1, #4]
    cmp r0, #0x1d
    bne _08035AF6
    movs r3, #0xe
    ldrsh r0, [r1, r3]
    cmp r0, #0x37
    bgt _08035AF6
    movs r2, #1
_08035AF6:
    adds r0, r2, #0
    pop {r1}
    bx r1

    thumb_func_start func_08035AFC
func_08035AFC: @ 0x08035AFC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08035B28 @ =0x080F280C
    str r0, [sp]
    ldr r0, _08035B2C @ =0x0000025F
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08035B30 @ =0x000003E2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08035B34 @ =vtable_unk_080E7198
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08035B28: .4byte 0x080F280C
_08035B2C: .4byte 0x0000025F
_08035B30: .4byte 0x000003E2
_08035B34: .4byte vtable_unk_080E7198

    thumb_func_start func_08035B38
func_08035B38: @ 0x08035B38
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08035B64
func_08035B64: @ 0x08035B64
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08035B90 @ =0x080F1A80
    str r0, [sp]
    ldr r0, _08035B94 @ =0x00000213
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0xf8
    lsls r0, r0, #2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08035B98 @ =vtable_unk_080E7158
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08035B90: .4byte 0x080F1A80
_08035B94: .4byte 0x00000213
_08035B98: .4byte vtable_unk_080E7158

    thumb_func_start func_08035B9C
func_08035B9C: @ 0x08035B9C
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08035BC8
func_08035BC8: @ 0x08035BC8
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08035BF4 @ =0x080F1FC0
    str r0, [sp]
    ldr r0, _08035BF8 @ =0x0000022F
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08035BFC @ =0x000003E1
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08035C00 @ =vtable_unk_080E7118
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08035BF4: .4byte 0x080F1FC0
_08035BF8: .4byte 0x0000022F
_08035BFC: .4byte 0x000003E1
_08035C00: .4byte vtable_unk_080E7118

    thumb_func_start func_08035C04
func_08035C04: @ 0x08035C04
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r7, _08035C48 @ =0x0000022F
    ldr r0, _08035C4C @ =0x00000233
    mov r8, r0
    ldr r5, [r4, #0x34]
    ldr r1, _08035C50 @ =0x00001CD4
    adds r6, r5, r1
    adds r0, r6, #0
    bl func_080A0490
    cmp r0, #3
    bne _08035C94
    ldrh r0, [r4, #4]
    cmp r0, #0x1d
    bne _08035C94
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08035C42
    ldr r2, _08035C54 @ =0x0000216B
    adds r0, r5, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne _08035C5C
_08035C42:
    ldr r7, _08035C58 @ =0x0000023F
    b _08035C94
    .align 2, 0
_08035C48: .4byte 0x0000022F
_08035C4C: .4byte 0x00000233
_08035C50: .4byte 0x00001CD4
_08035C54: .4byte 0x0000216B
_08035C58: .4byte 0x0000023F
_08035C5C:
    adds r0, r6, #0
    bl func_080A0384
    cmp r0, #0
    beq _08035C94
    bl func_0809EAD8
    cmp r0, #0x3b
    bhi _08035C94
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    adds r1, r0, #0
    adds r1, #0xa
    adds r0, r5, #0
    bl func_08034C64
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08035C94
    ldr r7, _08035CB0 @ =0x00000247
    ldr r0, _08035CB4 @ =0x0000024B
    mov r8, r0
_08035C94:
    adds r0, r4, #0
    adds r1, r7, #0
    bl func_08035908
    adds r0, r4, #0
    mov r1, r8
    bl func_08035940
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08035CB0: .4byte 0x00000247
_08035CB4: .4byte 0x0000024B

    thumb_func_start func_08035CB8
func_08035CB8: @ 0x08035CB8
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08034F00
    cmp r4, #1
    ble _08035CCC
    adds r0, r5, #0
    bl func_08035C04
_08035CCC:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08035CD4
func_08035CD4: @ 0x08035CD4
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    bl func_08035C04
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #5
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08035D04
func_08035D04: @ 0x08035D04
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08035D30 @ =0x080F8678
    str r0, [sp]
    ldr r0, _08035D34 @ =0x000009EF
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08035D38 @ =0x00000406
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08035D3C @ =vtable_unk_080E70D8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08035D30: .4byte 0x080F8678
_08035D34: .4byte 0x000009EF
_08035D38: .4byte 0x00000406
_08035D3C: .4byte vtable_unk_080E70D8

    thumb_func_start func_08035D40
func_08035D40: @ 0x08035D40
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #3
    str r1, [sp, #4]
    movs r2, #0
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08035D70
func_08035D70: @ 0x08035D70
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08035D9C @ =0x080F81BC
    str r0, [sp]
    ldr r0, _08035DA0 @ =0x000009E7
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08035DA4 @ =0x00000405
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08035DA8 @ =vtable_unk_080E7098
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08035D9C: .4byte 0x080F81BC
_08035DA0: .4byte 0x000009E7
_08035DA4: .4byte 0x00000405
_08035DA8: .4byte vtable_unk_080E7098

    thumb_func_start func_08035DAC
func_08035DAC: @ 0x08035DAC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    str r1, [sp, #4]
    movs r2, #0
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08035DD8
func_08035DD8: @ 0x08035DD8
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08035E04 @ =0x080F77FC
    str r0, [sp]
    ldr r0, _08035E08 @ =0x000009A1
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08035E0C @ =0x00000403
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08035E10 @ =vtable_unk_080E7058
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08035E04: .4byte 0x080F77FC
_08035E08: .4byte 0x000009A1
_08035E0C: .4byte 0x00000403
_08035E10: .4byte vtable_unk_080E7058

    thumb_func_start func_08035E14
func_08035E14: @ 0x08035E14
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08035E40
func_08035E40: @ 0x08035E40
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08035E6C @ =0x080F7294
    str r0, [sp]
    ldr r0, _08035E70 @ =0x00000989
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08035E74 @ =0x00000402
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08035E78 @ =vtable_unk_080E7018
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08035E6C: .4byte 0x080F7294
_08035E70: .4byte 0x00000989
_08035E74: .4byte 0x00000402
_08035E78: .4byte vtable_unk_080E7018

    thumb_func_start func_08035E7C
func_08035E7C: @ 0x08035E7C
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #2
    str r1, [sp, #4]
    movs r2, #0
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08035EAC
func_08035EAC: @ 0x08035EAC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08035EDC @ =0x080F6370
    str r0, [sp]
    movs r0, #0x8c
    lsls r0, r0, #4
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0xff
    lsls r0, r0, #2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08035EE0 @ =vtable_unk_080E6FD8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08035EDC: .4byte 0x080F6370
_08035EE0: .4byte vtable_unk_080E6FD8

    thumb_func_start func_08035EE4
func_08035EE4: @ 0x08035EE4
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08035F10
func_08035F10: @ 0x08035F10
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08035F3C @ =0x080F66C4
    str r0, [sp]
    movs r0, #0x8d
    lsls r0, r0, #4
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08035F40 @ =0x000003FD
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08035F44 @ =vtable_unk_080E6F98
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08035F3C: .4byte 0x080F66C4
_08035F40: .4byte 0x000003FD
_08035F44: .4byte vtable_unk_080E6F98

    thumb_func_start func_08035F48
func_08035F48: @ 0x08035F48
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08035F74
func_08035F74: @ 0x08035F74
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08035FA0 @ =0x080F49C0
    str r0, [sp]
    ldr r0, _08035FA4 @ =0x0000080B
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08035FA8 @ =0x000003F5
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08035FAC @ =vtable_unk_080E6F58
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08035FA0: .4byte 0x080F49C0
_08035FA4: .4byte 0x0000080B
_08035FA8: .4byte 0x000003F5
_08035FAC: .4byte vtable_unk_080E6F58

    thumb_func_start func_08035FB0
func_08035FB0: @ 0x08035FB0
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #2
    str r1, [sp, #4]
    movs r2, #0
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08035FE0
func_08035FE0: @ 0x08035FE0
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _0803600C @ =0x080F5540
    str r0, [sp]
    ldr r0, _08036010 @ =0x0000084B
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08036014 @ =0x000003F7
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036018 @ =vtable_unk_080E6F18
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_0803600C: .4byte 0x080F5540
_08036010: .4byte 0x0000084B
_08036014: .4byte 0x000003F7
_08036018: .4byte vtable_unk_080E6F18

    thumb_func_start func_0803601C
func_0803601C: @ 0x0803601C
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036048
func_08036048: @ 0x08036048
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08036074 @ =0x080F4D74
    str r0, [sp]
    ldr r0, _08036078 @ =0x00000813
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _0803607C @ =0x000003F6
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036080 @ =vtable_unk_080E6ED8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08036074: .4byte 0x080F4D74
_08036078: .4byte 0x00000813
_0803607C: .4byte 0x000003F6
_08036080: .4byte vtable_unk_080E6ED8

    thumb_func_start func_08036084
func_08036084: @ 0x08036084
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r7, _080360C8 @ =0x00000813
    ldr r0, _080360CC @ =0x00000817
    mov r8, r0
    ldr r5, [r4, #0x34]
    ldr r1, _080360D0 @ =0x00001CD4
    adds r6, r5, r1
    adds r0, r6, #0
    bl func_080A0490
    cmp r0, #0xc
    bne _08036114
    ldrh r0, [r4, #4]
    cmp r0, #0x1d
    bne _08036114
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080360C2
    ldr r2, _080360D4 @ =0x0000216C
    adds r0, r5, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne _080360DC
_080360C2:
    ldr r7, _080360D8 @ =0x00000827
    b _08036114
    .align 2, 0
_080360C8: .4byte 0x00000813
_080360CC: .4byte 0x00000817
_080360D0: .4byte 0x00001CD4
_080360D4: .4byte 0x0000216C
_080360D8: .4byte 0x00000827
_080360DC:
    adds r0, r6, #0
    bl func_080A0384
    cmp r0, #0
    beq _08036114
    bl func_0809EAD8
    cmp r0, #0x3b
    bhi _08036114
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    adds r1, r0, #0
    adds r1, #0xa
    adds r0, r5, #0
    bl func_08034C64
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08036114
    ldr r7, _08036130 @ =0x0000082F
    ldr r0, _08036134 @ =0x00000833
    mov r8, r0
_08036114:
    adds r0, r4, #0
    adds r1, r7, #0
    bl func_08035908
    adds r0, r4, #0
    mov r1, r8
    bl func_08035940
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08036130: .4byte 0x0000082F
_08036134: .4byte 0x00000833

    thumb_func_start func_08036138
func_08036138: @ 0x08036138
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08034F00
    cmp r4, #1
    ble _0803614C
    adds r0, r5, #0
    bl func_08036084
_0803614C:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08036154
func_08036154: @ 0x08036154
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    bl func_08036084
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #5
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036184
func_08036184: @ 0x08036184
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _080361B0 @ =0x080F59CC
    str r0, [sp]
    ldr r0, _080361B4 @ =0x0000085F
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _080361B8 @ =0x000003F9
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _080361BC @ =vtable_unk_080E6E98
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_080361B0: .4byte 0x080F59CC
_080361B4: .4byte 0x0000085F
_080361B8: .4byte 0x000003F9
_080361BC: .4byte vtable_unk_080E6E98

    thumb_func_start func_080361C0
func_080361C0: @ 0x080361C0
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_080361EC
func_080361EC: @ 0x080361EC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08036218 @ =0x080F6B4C
    str r0, [sp]
    ldr r0, _0803621C @ =0x000008E4
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08036220 @ =0x000003FF
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036224 @ =vtable_unk_080E6E58
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08036218: .4byte 0x080F6B4C
_0803621C: .4byte 0x000008E4
_08036220: .4byte 0x000003FF
_08036224: .4byte vtable_unk_080E6E58

    thumb_func_start func_08036228
func_08036228: @ 0x08036228
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #2
    str r1, [sp, #4]
    movs r2, #0
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08036258
func_08036258: @ 0x08036258
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08036280 @ =0x080F33B8
    str r0, [sp]
    ldr r0, _08036284 @ =0x00000685
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r0, _08036288 @ =0x000003EE
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _0803628C @ =vtable_unk_080E6E18
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08036280: .4byte 0x080F33B8
_08036284: .4byte 0x00000685
_08036288: .4byte 0x000003EE
_0803628C: .4byte vtable_unk_080E6E18

    thumb_func_start func_08036290
func_08036290: @ 0x08036290
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #2
    str r1, [sp, #4]
    movs r2, #0
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080362C0
func_080362C0: @ 0x080362C0
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _080362EC @ =0x080F61FC
    str r0, [sp]
    ldr r0, _080362F0 @ =0x000008B8
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _080362F4 @ =0x000003FB
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _080362F8 @ =vtable_unk_080E6DD8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_080362EC: .4byte 0x080F61FC
_080362F0: .4byte 0x000008B8
_080362F4: .4byte 0x000003FB
_080362F8: .4byte vtable_unk_080E6DD8

    thumb_func_start func_080362FC
func_080362FC: @ 0x080362FC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    str r1, [sp, #4]
    movs r2, #0
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036328
func_08036328: @ 0x08036328
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08036354 @ =0x080F3408
    str r0, [sp]
    ldr r0, _08036358 @ =0x00000689
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _0803635C @ =0x000003EF
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036360 @ =vtable_unk_080E6D98
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08036354: .4byte 0x080F3408
_08036358: .4byte 0x00000689
_0803635C: .4byte 0x000003EF
_08036360: .4byte vtable_unk_080E6D98

    thumb_func_start func_08036364
func_08036364: @ 0x08036364
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036390
func_08036390: @ 0x08036390
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _080363BC @ =0x080F3FD8
    str r0, [sp]
    ldr r0, _080363C0 @ =0x000006C5
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _080363C4 @ =0x000003F1
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _080363C8 @ =vtable_unk_080E6D58
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_080363BC: .4byte 0x080F3FD8
_080363C0: .4byte 0x000006C5
_080363C4: .4byte 0x000003F1
_080363C8: .4byte vtable_unk_080E6D58

    thumb_func_start func_080363CC
func_080363CC: @ 0x080363CC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_080363F8
func_080363F8: @ 0x080363F8
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08036424 @ =0x080F35E4
    str r0, [sp]
    ldr r0, _08036428 @ =0x00000691
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0xfc
    lsls r0, r0, #2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _0803642C @ =vtable_unk_080E6D18
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08036424: .4byte 0x080F35E4
_08036428: .4byte 0x00000691
_0803642C: .4byte vtable_unk_080E6D18

    thumb_func_start func_08036430
func_08036430: @ 0x08036430
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r7, _08036474 @ =0x00000691
    ldr r0, _08036478 @ =0x00000695
    mov r8, r0
    ldr r5, [r4, #0x34]
    ldr r1, _0803647C @ =0x00001CD4
    adds r6, r5, r1
    adds r0, r6, #0
    bl func_080A0490
    cmp r0, #0x13
    bne _080364C0
    ldrh r0, [r4, #4]
    cmp r0, #0x1d
    bne _080364C0
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0803646E
    ldr r2, _08036480 @ =0x0000216C
    adds r0, r5, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne _08036488
_0803646E:
    ldr r7, _08036484 @ =0x000006A1
    b _080364C0
    .align 2, 0
_08036474: .4byte 0x00000691
_08036478: .4byte 0x00000695
_0803647C: .4byte 0x00001CD4
_08036480: .4byte 0x0000216C
_08036484: .4byte 0x000006A1
_08036488:
    adds r0, r6, #0
    bl func_080A0384
    cmp r0, #0
    beq _080364C0
    bl func_0809EAD8
    cmp r0, #0x3b
    bhi _080364C0
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    adds r1, r0, #0
    adds r1, #0xa
    adds r0, r5, #0
    bl func_08034C64
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080364C0
    ldr r7, _080364DC @ =0x000006AD
    ldr r0, _080364E0 @ =0x000006B1
    mov r8, r0
_080364C0:
    adds r0, r4, #0
    adds r1, r7, #0
    bl func_08035908
    adds r0, r4, #0
    mov r1, r8
    bl func_08035940
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080364DC: .4byte 0x000006AD
_080364E0: .4byte 0x000006B1

    thumb_func_start func_080364E4
func_080364E4: @ 0x080364E4
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08034F00
    cmp r4, #1
    ble _080364F8
    adds r0, r5, #0
    bl func_08036430
_080364F8:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08036500
func_08036500: @ 0x08036500
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    bl func_08036430
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #5
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036530
func_08036530: @ 0x08036530
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _0803655C @ =0x080F3010
    str r0, [sp]
    movs r0, #0xc8
    lsls r0, r0, #2
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    adds r0, #0xc2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036560 @ =vtable_unk_080E6CD8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_0803655C: .4byte 0x080F3010
_08036560: .4byte vtable_unk_080E6CD8

    thumb_func_start func_08036564
func_08036564: @ 0x08036564
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036590
func_08036590: @ 0x08036590
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _080365BC @ =0x080F5D94
    str r0, [sp]
    ldr r0, _080365C0 @ =0x00000884
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _080365C4 @ =0x000003FA
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _080365C8 @ =vtable_unk_080E6C98
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_080365BC: .4byte 0x080F5D94
_080365C0: .4byte 0x00000884
_080365C4: .4byte 0x000003FA
_080365C8: .4byte vtable_unk_080E6C98

    thumb_func_start func_080365CC
func_080365CC: @ 0x080365CC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r7, _08036610 @ =0x00000884
    ldr r0, _08036614 @ =0x00000888
    mov r8, r0
    ldr r5, [r4, #0x34]
    ldr r1, _08036618 @ =0x00001CD4
    adds r6, r5, r1
    adds r0, r6, #0
    bl func_080A0490
    cmp r0, #0x15
    bne _0803665C
    ldrh r0, [r4, #4]
    cmp r0, #0x1d
    bne _0803665C
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0803660A
    ldr r2, _0803661C @ =0x0000216C
    adds r0, r5, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne _08036624
_0803660A:
    ldr r7, _08036620 @ =0x0000089C
    b _0803665C
    .align 2, 0
_08036610: .4byte 0x00000884
_08036614: .4byte 0x00000888
_08036618: .4byte 0x00001CD4
_0803661C: .4byte 0x0000216C
_08036620: .4byte 0x0000089C
_08036624:
    adds r0, r6, #0
    bl func_080A0384
    cmp r0, #0
    beq _0803665C
    bl func_0809EAD8
    cmp r0, #0x3b
    bhi _0803665C
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    adds r1, r0, #0
    adds r1, #0xa
    adds r0, r5, #0
    bl func_08034C64
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0803665C
    ldr r7, _08036678 @ =0x00000894
    ldr r0, _0803667C @ =0x00000898
    mov r8, r0
_0803665C:
    adds r0, r4, #0
    adds r1, r7, #0
    bl func_08035908
    adds r0, r4, #0
    mov r1, r8
    bl func_08035940
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08036678: .4byte 0x00000894
_0803667C: .4byte 0x00000898

    thumb_func_start func_08036680
func_08036680: @ 0x08036680
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08034F00
    cmp r4, #1
    ble _08036694
    adds r0, r5, #0
    bl func_080365CC
_08036694:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0803669C
func_0803669C: @ 0x0803669C
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    bl func_080365CC
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #5
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_080366CC
func_080366CC: @ 0x080366CC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _080366F8 @ =0x080F6DE8
    str r0, [sp]
    ldr r0, _080366FC @ =0x000008EC
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0x80
    lsls r0, r0, #3
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036700 @ =vtable_unk_080E6C58
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_080366F8: .4byte 0x080F6DE8
_080366FC: .4byte 0x000008EC
_08036700: .4byte vtable_unk_080E6C58

    thumb_func_start func_08036704
func_08036704: @ 0x08036704
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036730
func_08036730: @ 0x08036730
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _0803675C @ =0x080F2AF8
    str r0, [sp]
    ldr r0, _08036760 @ =0x0000027B
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0xf9
    lsls r0, r0, #2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036764 @ =vtable_unk_080E6C18
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_0803675C: .4byte 0x080F2AF8
_08036760: .4byte 0x0000027B
_08036764: .4byte vtable_unk_080E6C18

    thumb_func_start func_08036768
func_08036768: @ 0x08036768
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, _080367A0 @ =0x0000027B
    movs r5, #2
    ldr r0, [r4, #0x34]
    ldr r2, _080367A4 @ =0x00002181
    adds r0, r0, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne _08036784
    adds r1, #0x18
    movs r5, #1
_08036784:
    adds r0, r4, #0
    bl func_08035908
    adds r0, r4, #0
    ldr r1, _080367A8 @ =0x0000027F
    bl func_08035940
    adds r0, r4, #0
    adds r0, #0x21
    strb r5, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_080367A0: .4byte 0x0000027B
_080367A4: .4byte 0x00002181
_080367A8: .4byte 0x0000027F

    thumb_func_start func_080367AC
func_080367AC: @ 0x080367AC
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08034F00
    cmp r4, #1
    ble _080367C0
    adds r0, r5, #0
    bl func_08036768
_080367C0:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080367C8
func_080367C8: @ 0x080367C8
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    bl func_08036768
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #5
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_080367F8
func_080367F8: @ 0x080367F8
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08036824 @ =0x080F42F0
    str r0, [sp]
    ldr r0, _08036828 @ =0x000007B2
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _0803682C @ =0x000003F2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036830 @ =vtable_unk_080E6BD8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08036824: .4byte 0x080F42F0
_08036828: .4byte 0x000007B2
_0803682C: .4byte 0x000003F2
_08036830: .4byte vtable_unk_080E6BD8

    thumb_func_start func_08036834
func_08036834: @ 0x08036834
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036860
func_08036860: @ 0x08036860
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _0803688C @ =0x080F4974
    str r0, [sp]
    ldr r0, _08036890 @ =0x000007F2
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0xfd
    lsls r0, r0, #2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036894 @ =vtable_unk_080E6B98
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_0803688C: .4byte 0x080F4974
_08036890: .4byte 0x000007F2
_08036894: .4byte vtable_unk_080E6B98

    thumb_func_start func_08036898
func_08036898: @ 0x08036898
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_080368C4
func_080368C4: @ 0x080368C4
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _080368F0 @ =0x080F43DC
    str r0, [sp]
    ldr r0, _080368F4 @ =0x000007BE
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _080368F8 @ =0x000003F3
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _080368FC @ =vtable_unk_080E6B58
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_080368F0: .4byte 0x080F43DC
_080368F4: .4byte 0x000007BE
_080368F8: .4byte 0x000003F3
_080368FC: .4byte vtable_unk_080E6B58

    thumb_func_start func_08036900
func_08036900: @ 0x08036900
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r7, _08036950 @ =0x000007BE
    ldr r0, _08036954 @ =0x000007C2
    mov r8, r0
    ldr r5, [r4, #0x34]
    ldr r1, _08036958 @ =0x00001CD4
    adds r6, r5, r1
    adds r0, r6, #0
    bl func_080A0490
    cmp r0, #0x19
    bne _080369A0
    ldrh r0, [r4, #4]
    cmp r0, #0x1d
    bne _080369A0
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0803694A
    ldr r2, _0803695C @ =0x0000216B
    adds r0, r5, r2
    ldrb r2, [r0]
    lsrs r2, r2, #7
    ldr r1, _08036960 @ =0x0000216C
    adds r0, r5, r1
    ldrb r0, [r0]
    movs r1, #1
    ands r0, r1
    lsls r0, r0, #1
    orrs r0, r2
    cmp r0, #1
    bne _08036968
_0803694A:
    ldr r7, _08036964 @ =0x000007D2
    b _080369A0
    .align 2, 0
_08036950: .4byte 0x000007BE
_08036954: .4byte 0x000007C2
_08036958: .4byte 0x00001CD4
_0803695C: .4byte 0x0000216B
_08036960: .4byte 0x0000216C
_08036964: .4byte 0x000007D2
_08036968:
    adds r0, r6, #0
    bl func_080A0384
    cmp r0, #0
    beq _080369A0
    bl func_0809EAD8
    cmp r0, #0x3b
    bhi _080369A0
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    adds r1, r0, #0
    adds r1, #0xa
    adds r0, r5, #0
    bl func_08034C64
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080369A0
    ldr r7, _080369BC @ =0x000007CA
    ldr r0, _080369C0 @ =0x000007CE
    mov r8, r0
_080369A0:
    adds r0, r4, #0
    adds r1, r7, #0
    bl func_08035908
    adds r0, r4, #0
    mov r1, r8
    bl func_08035940
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080369BC: .4byte 0x000007CA
_080369C0: .4byte 0x000007CE

    thumb_func_start func_080369C4
func_080369C4: @ 0x080369C4
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08034F00
    cmp r4, #1
    ble _080369D8
    adds r0, r5, #0
    bl func_08036900
_080369D8:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080369E0
func_080369E0: @ 0x080369E0
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    bl func_08036900
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #5
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036A10
func_08036A10: @ 0x08036A10
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08036A3C @ =0x080F6FF8
    str r0, [sp]
    ldr r0, _08036A40 @ =0x00000902
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08036A44 @ =0x00000401
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036A48 @ =vtable_unk_080E6B18
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08036A3C: .4byte 0x080F6FF8
_08036A40: .4byte 0x00000902
_08036A44: .4byte 0x00000401
_08036A48: .4byte vtable_unk_080E6B18

    thumb_func_start func_08036A4C
func_08036A4C: @ 0x08036A4C
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036A78
func_08036A78: @ 0x08036A78
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08036AA4 @ =0x080F7B40
    str r0, [sp]
    ldr r0, _08036AA8 @ =0x000009D3
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08036AAC @ =0x00000404
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036AB0 @ =vtable_unk_080E6AD8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08036AA4: .4byte 0x080F7B40
_08036AA8: .4byte 0x000009D3
_08036AAC: .4byte 0x00000404
_08036AB0: .4byte vtable_unk_080E6AD8

    thumb_func_start func_08036AB4
func_08036AB4: @ 0x08036AB4
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, _08036AD0 @ =0x000009D3
    ldr r5, _08036AD4 @ =0x000009D7
    ldrh r0, [r4, #4]
    adds r2, r0, #0
    cmp r0, #0x11
    beq _08036AE0
    cmp r0, #0x11
    bgt _08036AD8
    cmp r0, #7
    beq _08036AE0
    b _08036AE4
    .align 2, 0
_08036AD0: .4byte 0x000009D3
_08036AD4: .4byte 0x000009D7
_08036AD8:
    cmp r2, #0x1d
    beq _08036AE0
    cmp r2, #0x25
    bne _08036AE4
_08036AE0:
    ldr r1, _08036AF8 @ =0x000009DF
    ldr r5, _08036AFC @ =0x000009E3
_08036AE4:
    adds r0, r4, #0
    bl func_08035908
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08035940
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08036AF8: .4byte 0x000009DF
_08036AFC: .4byte 0x000009E3

    thumb_func_start func_08036B00
func_08036B00: @ 0x08036B00
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08034F00
    cmp r4, #1
    ble _08036B14
    adds r0, r5, #0
    bl func_08036AB4
_08036B14:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08036B1C
func_08036B1C: @ 0x08036B1C
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    bl func_08036AB4
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #5
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036B4C
func_08036B4C: @ 0x08036B4C
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08036B78 @ =0x080F2DC0
    str r0, [sp]
    movs r0, #0xc6
    lsls r0, r0, #2
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    adds r0, #0xc9
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036B7C @ =vtable_unk_080E6A98
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08036B78: .4byte 0x080F2DC0
_08036B7C: .4byte vtable_unk_080E6A98

    thumb_func_start func_08036B80
func_08036B80: @ 0x08036B80
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #2
    str r1, [sp, #4]
    movs r2, #0
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08036BB0
func_08036BB0: @ 0x08036BB0
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    movs r0, #0xa
    ldrsh r5, [r4, r0]
    movs r2, #0xe
    ldrsh r6, [r4, r2]
    adds r0, r4, #0
    bl func_08034EB4
    ldrh r0, [r4, #4]
    cmp r0, #2
    bne _08036BF0
    cmp r5, #0xf4
    bne _08036BD0
    cmp r6, #0xab
    beq _08036BF0
_08036BD0:
    movs r1, #0xa
    ldrsh r0, [r4, r1]
    movs r2, #0xe
    ldrsh r1, [r4, r2]
    cmp r0, #0xf4
    bne _08036BF0
    cmp r1, #0xab
    bne _08036BF0
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0x8a
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
_08036BF0:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08036BF8
func_08036BF8: @ 0x08036BF8
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    movs r0, #0xa
    ldrsh r6, [r5, r0]
    movs r1, #0xe
    ldrsh r7, [r5, r1]
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08034F00
    cmp r4, #1
    ble _08036C40
    ldrh r0, [r5, #4]
    cmp r0, #2
    bne _08036C40
    cmp r6, #0xf4
    bne _08036C20
    cmp r7, #0xab
    beq _08036C40
_08036C20:
    movs r2, #0xa
    ldrsh r0, [r5, r2]
    movs r2, #0xe
    ldrsh r1, [r5, r2]
    cmp r0, #0xf4
    bne _08036C40
    cmp r1, #0xab
    bne _08036C40
    ldr r0, [r5]
    ldr r1, [r0]
    movs r2, #0x8a
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
_08036C40:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08036C48
func_08036C48: @ 0x08036C48
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08036C74 @ =0x080F597C
    str r0, [sp]
    ldr r0, _08036C78 @ =0x00000857
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0xfe
    lsls r0, r0, #2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036C7C @ =vtable_unk_080E6A58
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08036C74: .4byte 0x080F597C
_08036C78: .4byte 0x00000857
_08036C7C: .4byte vtable_unk_080E6A58

    thumb_func_start func_08036C80
func_08036C80: @ 0x08036C80
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036CAC
func_08036CAC: @ 0x08036CAC
    push {r4, r5, lr}
    sub sp, #0x10
    adds r5, r0, #0
    movs r4, #0
    str r4, [sp]
    ldr r0, _08036CD4 @ =0x00000679
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    adds r0, r5, #0
    bl func_08034CEC
    ldr r0, _08036CD8 @ =vtable_unk_080E6A18
    str r0, [r5, #0x14]
    adds r0, r5, #0
    add sp, #0x10
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
_08036CD4: .4byte 0x00000679
_08036CD8: .4byte vtable_unk_080E6A18

    thumb_func_start func_08036CDC
func_08036CDC: @ 0x08036CDC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #2
    str r1, [sp, #4]
    movs r2, #0
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08036D0C
func_08036D0C: @ 0x08036D0C
    push {r4, r5, lr}
    sub sp, #0x10
    adds r5, r0, #0
    movs r4, #0
    str r4, [sp]
    ldr r0, _08036D34 @ =0x00000669
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    adds r0, r5, #0
    bl func_08034CEC
    ldr r0, _08036D38 @ =vtable_unk_080E69D8
    str r0, [r5, #0x14]
    adds r0, r5, #0
    add sp, #0x10
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
_08036D34: .4byte 0x00000669
_08036D38: .4byte vtable_unk_080E69D8

    thumb_func_start func_08036D3C
func_08036D3C: @ 0x08036D3C
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036D68
func_08036D68: @ 0x08036D68
    push {r4, r5, lr}
    sub sp, #0x10
    adds r5, r0, #0
    movs r4, #0
    str r4, [sp]
    ldr r0, _08036D90 @ =0x000007FE
    str r0, [sp, #4]
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    adds r0, r5, #0
    bl func_08034CEC
    ldr r0, _08036D94 @ =vtable_unk_080E6998
    str r0, [r5, #0x14]
    adds r0, r5, #0
    add sp, #0x10
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
_08036D90: .4byte 0x000007FE
_08036D94: .4byte vtable_unk_080E6998

    thumb_func_start func_08036D98
func_08036D98: @ 0x08036D98
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #1
    str r1, [sp]
    movs r1, #0
    str r1, [sp, #4]
    str r1, [sp, #8]
    add r2, sp, #0xc
    strb r1, [r2]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08036DC4
func_08036DC4: @ 0x08036DC4
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08036DF0 @ =0x080F6B10
    str r0, [sp]
    ldr r0, _08036DF4 @ =0x000008D8
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, _08036DF8 @ =0x000003FE
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036DFC @ =vtable_unk_080E6958
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08036DF0: .4byte 0x080F6B10
_08036DF4: .4byte 0x000008D8
_08036DF8: .4byte 0x000003FE
_08036DFC: .4byte vtable_unk_080E6958
_08036E00:
    .byte 0x10, 0xB5, 0x84, 0xB0, 0x04, 0x1C, 0x8C, 0x20, 0xC9, 0xF7, 0xE4, 0xFB, 0x01, 0x21, 0x00, 0x91
    .byte 0x00, 0x21, 0x01, 0x91, 0x02, 0x91, 0x03, 0xAA, 0x11, 0x70, 0x21, 0x1C, 0x04, 0x22, 0x1B, 0x23
    .byte 0xFB, 0xF7, 0x4C, 0xFB, 0x04, 0xB0, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

    thumb_func_start func_08036E2C
func_08036E2C: @ 0x08036E2C
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, _08036E60 @ =0x080F29C0
    str r0, [sp]
    ldr r0, _08036E64 @ =0x00000267
    str r0, [sp, #4]
    adds r0, #8
    str r0, [sp, #8]
    ldr r0, _08036E68 @ =0x000003E3
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl func_08034CEC
    ldr r0, _08036E6C @ =vtable_unk_080E6918
    str r0, [r4, #0x14]
    adds r1, r4, #0
    adds r1, #0x48
    movs r0, #0
    strh r0, [r1]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08036E60: .4byte 0x080F29C0
_08036E64: .4byte 0x00000267
_08036E68: .4byte 0x000003E3
_08036E6C: .4byte vtable_unk_080E6918

    thumb_func_start func_08036E70
func_08036E70: @ 0x08036E70
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x34]
    ldr r1, _08036EA0 @ =0x00001CD4
    adds r0, r0, r1
    bl func_080A0384
    adds r6, r0, #0
    cmp r0, #0
    beq _08036EE0
    ldr r5, _08036EA4 @ =0x00000267
    ldr r7, _08036EA8 @ =0x0000026F
    bl func_0809EAD8
    cmp r0, #0x3b
    bhi _08036EAC
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08036ED0
    movs r5, #0xc
    b _08036ED0
    .align 2, 0
_08036EA0: .4byte 0x00001CD4
_08036EA4: .4byte 0x00000267
_08036EA8: .4byte 0x0000026F
_08036EAC:
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08036EC0
    ldr r5, _08036EBC @ =0x00000277
    b _08036ED0
    .align 2, 0
_08036EBC: .4byte 0x00000277
_08036EC0:
    adds r0, r6, #0
    bl func_0809EAE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08036ED0
    ldr r5, _08036EE8 @ =0x0000026B
    ldr r7, _08036EEC @ =0x00000273
_08036ED0:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08035908
    adds r0, r4, #0
    adds r1, r7, #0
    bl func_08035940
_08036EE0:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08036EE8: .4byte 0x0000026B
_08036EEC: .4byte 0x00000273
_08036EF0:
    .byte 0x30, 0xB5, 0x05, 0x1C, 0x0C, 0x1C, 0xFE, 0xF7, 0x03, 0xF8, 0x01, 0x2C, 0x02, 0xDD, 0x28, 0x1C
    .byte 0xFF, 0xF7, 0xB6, 0xFF, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x84, 0xB0
    .byte 0x05, 0x1C, 0x68, 0x6B, 0x10, 0x49, 0x40, 0x18, 0x69, 0xF0, 0x34, 0xFA, 0x04, 0x1C, 0x00, 0x2C
    .byte 0x1C, 0xD0, 0x28, 0x1C, 0xFF, 0xF7, 0xA4, 0xFF, 0x20, 0x1C, 0x67, 0xF0, 0xD9, 0xFD, 0x00, 0x06
    .byte 0x01, 0x24, 0x00, 0x28, 0x00, 0xD0, 0x04, 0x24, 0x8C, 0x20, 0xC9, 0xF7, 0x4B, 0xFB, 0x00, 0x22
    .byte 0x00, 0x92, 0x01, 0x94, 0x02, 0x92, 0x03, 0xA9, 0x0A, 0x70, 0x29, 0x1C, 0x04, 0x22, 0x1B, 0x23
    .byte 0xFB, 0xF7, 0xB4, 0xFA, 0x03, 0xE0, 0x00, 0x00, 0xD4, 0x1C, 0x00, 0x00, 0x00, 0x20, 0x04, 0xB0
    .byte 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x84, 0xB0, 0x04, 0x1C, 0x0E, 0x1C
    .byte 0x20, 0x69, 0x00, 0x28, 0x3D, 0xD0, 0x60, 0x6B, 0x0B, 0x49, 0x40, 0x18, 0x69, 0xF0, 0x02, 0xFA
    .byte 0x00, 0x28, 0x36, 0xD0, 0x67, 0xF0, 0xA8, 0xFD, 0x3B, 0x28, 0x32, 0xD8, 0x20, 0x1C, 0xFE, 0xF7
    .byte 0xA7, 0xFD, 0x00, 0x06, 0x00, 0x28, 0x2C, 0xD0, 0x20, 0x1C, 0x48, 0x30, 0x01, 0x88, 0x05, 0x1C
    .byte 0x00, 0x29, 0x03, 0xD0, 0x48, 0x1E, 0x23, 0xE0, 0xD4, 0x1C, 0x00, 0x00, 0x69, 0x46, 0x06, 0x48
    .byte 0x8C, 0xC8, 0x8C, 0xC1, 0x00, 0x68, 0x08, 0x60, 0x9A, 0xF0, 0x14, 0xF9, 0x64, 0x21, 0x99, 0xF0
    .byte 0x87, 0xFF, 0x00, 0x23, 0x6A, 0x46, 0x04, 0xE0, 0x14, 0x15, 0x0F, 0x08, 0x40, 0x1A, 0x04, 0x32
    .byte 0x01, 0x33, 0x03, 0x2B, 0x06, 0xD8, 0x11, 0x78, 0x88, 0x42, 0xF7, 0xD2, 0x51, 0x88, 0x20, 0x1C
    .byte 0xFE, 0xF7, 0x92, 0xFC, 0x9A, 0xF0, 0xFE, 0xF8, 0x78, 0x21, 0x99, 0xF0, 0x71, 0xFF, 0x78, 0x30
    .byte 0x28, 0x80, 0x20, 0x1C, 0x31, 0x1C, 0xFD, 0xF7, 0x5D, 0xFF, 0x04, 0xB0, 0xF0, 0xBC, 0x01, 0xBC
    .byte 0x00, 0x47, 0x00, 0x00, 0x40, 0x6B, 0x70, 0x47

    thumb_func_start func_08037008
func_08037008: @ 0x08037008
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r2, #0
    ldr r6, [sp, #0x14]
    str r3, [sp]
    movs r3, #2
    bl func_080320DC
    ldr r0, _08037044 @ =vtable_unk_080E7328
    str r0, [r4, #0x14]
    str r5, [r4, #0x30]
    adds r1, r4, #0
    adds r1, #0x34
    movs r0, #0
    strh r0, [r4, #0x34]
    strh r0, [r1, #2]
    strh r0, [r1, #4]
    strh r0, [r1, #6]
    strh r6, [r4, #0x3c]
    strh r0, [r4, #0x3e]
    adds r1, #0xc
    movs r0, #1
    strb r0, [r1]
    adds r0, r4, #0
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08037044: .4byte vtable_unk_080E7328

    thumb_func_start func_08037048
func_08037048: @ 0x08037048
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r0, _08037090 @ =vtable_unk_080E7328
    str r0, [r5, #0x14]
    ldr r4, [r5, #0x30]
    mov r0, sp
    adds r1, r5, #0
    bl func_08032170
    mov r0, sp
    ldm r0!, {r1, r2}
    stm r4!, {r1, r2}
    ldr r0, _08037094 @ =__vt_7AEntity
    str r0, [r5, #0x14]
    ldr r1, [r5, #0x10]
    cmp r1, #0
    beq _0803707A
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0803707A:
    movs r0, #1
    ands r0, r6
    cmp r0, #0
    beq _08037088
    adds r0, r5, #0
    bl __builtin_delete
_08037088:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
_08037090: .4byte vtable_unk_080E7328
_08037094: .4byte __vt_7AEntity

    thumb_func_start func_08037098
func_08037098: @ 0x08037098
    push {r4, r5, lr}
    adds r3, r0, #0
    movs r4, #0
    movs r5, #0
    adds r0, #0x20
    ldrb r0, [r0]
    adds r2, r0, #0
    cmp r0, #1
    beq _080370C2
    cmp r0, #1
    bgt _080370B4
    cmp r0, #0
    beq _080370BE
    b _080370CC
_080370B4:
    cmp r2, #2
    beq _080370C6
    cmp r2, #3
    beq _080370CA
    b _080370CC
_080370BE:
    adds r5, r1, #0
    b _080370CC
_080370C2:
    rsbs r5, r1, #0
    b _080370CC
_080370C6:
    rsbs r4, r1, #0
    b _080370CC
_080370CA:
    adds r4, r1, #0
_080370CC:
    str r4, [r3, #0x18]
    str r5, [r3, #0x1c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_080370D8:
    .byte 0x10, 0xB5, 0x00, 0x69, 0x00, 0x28, 0x16, 0xD0
    .byte 0x00, 0x24, 0x02, 0x1C, 0x30, 0x32, 0x00, 0x21, 0xD0, 0x89, 0x00, 0x28, 0x04, 0xD0, 0x10, 0x20
    .byte 0x11, 0x5E, 0x48, 0x42, 0x08, 0x43, 0xC1, 0x0F, 0x00, 0x29, 0x05, 0xD0, 0x10, 0x1C, 0x27, 0xF0
    .byte 0xC9, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x00, 0xD0, 0x01, 0x24, 0x20, 0x1C, 0x00, 0xE0, 0x01, 0x20
    .byte 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_08037118
func_08037118: @ 0x08037118
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r7, r0, #0
    adds r4, r1, #0
    ldr r1, [r7, #8]
    ldr r2, [r7, #0xc]
    ldr r0, [r7, #0x18]
    adds r0, r0, r1
    mov sb, r0
    ldr r0, [r7, #0x1c]
    adds r0, r0, r2
    mov r8, r0
    asrs r1, r1, #0x10
    str r1, [sp]
    asrs r6, r2, #0x10
    asrs r0, r0, #0x10
    subs r5, r0, r6
    mov r1, sb
    asrs r0, r1, #0x10
    ldr r1, [sp]
    subs r1, r0, r1
    mov sl, r1
    cmp r5, #0
    ble _08037182
    ldr r1, [r4]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble _08037162
    adds r0, r4, #0
    bl func_080AB85C
    ldr r0, [r4]
    b _08037164
_08037162:
    adds r0, r1, #0
_08037164:
    cmp r5, r0
    ble _08037182
    ldr r1, [r4]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble _0803717A
    adds r0, r4, #0
    bl func_080AB85C
    ldr r0, [r4]
    b _0803717C
_0803717A:
    adds r0, r1, #0
_0803717C:
    adds r0, r6, r0
    lsls r0, r0, #0x10
    mov r8, r0
_08037182:
    cmp r5, #0
    bge _080371B8
    ldr r1, [r4, #4]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge _08037198
    adds r0, r4, #0
    bl func_080AB8D0
    ldr r0, [r4, #4]
    b _0803719A
_08037198:
    adds r0, r1, #0
_0803719A:
    cmp r5, r0
    bge _080371B8
    ldr r1, [r4, #4]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge _080371B0
    adds r0, r4, #0
    bl func_080AB8D0
    ldr r0, [r4, #4]
    b _080371B2
_080371B0:
    adds r0, r1, #0
_080371B2:
    adds r0, r6, r0
    lsls r0, r0, #0x10
    mov r8, r0
_080371B8:
    mov r0, sl
    cmp r0, #0
    bge _080371F2
    ldr r1, [r4, #8]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge _080371D0
    adds r0, r4, #0
    bl func_080AB948
    ldr r0, [r4, #8]
    b _080371D2
_080371D0:
    adds r0, r1, #0
_080371D2:
    cmp sl, r0
    bge _080371F2
    ldr r1, [r4, #8]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge _080371E8
    adds r0, r4, #0
    bl func_080AB948
    ldr r0, [r4, #8]
    b _080371EA
_080371E8:
    adds r0, r1, #0
_080371EA:
    ldr r1, [sp]
    adds r0, r1, r0
    lsls r0, r0, #0x10
    mov sb, r0
_080371F2:
    mov r0, sl
    cmp r0, #0
    ble _0803722C
    ldr r1, [r4, #0xc]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble _0803720A
    adds r0, r4, #0
    bl func_080AB9C4
    ldr r0, [r4, #0xc]
    b _0803720C
_0803720A:
    adds r0, r1, #0
_0803720C:
    cmp sl, r0
    ble _0803722C
    ldr r1, [r4, #0xc]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble _08037222
    adds r0, r4, #0
    bl func_080AB9C4
    ldr r0, [r4, #0xc]
    b _08037224
_08037222:
    adds r0, r1, #0
_08037224:
    ldr r1, [sp]
    adds r0, r1, r0
    lsls r0, r0, #0x10
    mov sb, r0
_0803722C:
    mov r0, sb
    str r0, [r7, #8]
    mov r1, r8
    str r1, [r7, #0xc]
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08037244
func_08037244: @ 0x08037244
    ldr r2, [r1, #4]
    ldr r1, [r1]
    str r1, [r0, #0x34]
    str r2, [r0, #0x38]
    bx lr
    .align 2, 0
_08037250:
    .byte 0x82, 0xB0, 0x6B, 0x46, 0x00, 0x21, 0x6A, 0x46, 0x11, 0x80, 0x59, 0x80, 0x99, 0x80, 0xD9, 0x80
    .byte 0x00, 0x99, 0x01, 0x9A, 0x41, 0x63, 0x82, 0x63, 0x02, 0xB0, 0x70, 0x47

    thumb_func_start func_0803726C
func_0803726C: @ 0x0803726C
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x60
    adds r7, r0, #0
    ldr r4, [r7]
    ldrh r0, [r7, #4]
    mov r8, r0
    ldr r0, [r4]
    ldr r1, [r0, #0x14]
    adds r0, r4, #0
    bl _call_via_r1
    cmp r0, r8
    beq _0803728E
    b _08037402
_0803728E:
    ldr r1, [r4]
    mov r0, sp
    ldr r3, [r1, #0x34]
    adds r1, r4, #0
    mov r2, r8
    bl _call_via_r3
    ldr r1, [r7, #0x14]
    add r0, sp, #0x40
    ldr r2, [r1, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    ldr r1, [sp, #0x40]
    ldr r2, [sp, #0x44]
    str r1, [sp, #0x58]
    str r2, [sp, #0x5c]
    add r4, sp, #0xc
    movs r2, #0x20
    mov sb, r2
    movs r5, #0
    movs r1, #0x21
    str r1, [sp, #0xc]
    movs r0, #0x21
    rsbs r0, r0, #0
    str r0, [r4, #4]
    str r0, [r4, #8]
    str r1, [r4, #0xc]
    add r1, sp, #0x20
    mov r0, sp
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldr r0, [sp, #0x58]
    ldr r1, [sp, #0x5c]
    str r0, [sp, #0x2c]
    str r1, [sp, #0x30]
    mov r1, sb
    str r1, [r4, #0x28]
    str r5, [r4, #0x2c]
    str r5, [r4, #0x30]
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    adds r3, r0, #0
    mov sb, r4
    cmp r3, #0
    beq _08037310
    ldrh r0, [r3, #4]
    cmp r0, r8
    bne _08037310
    ldr r1, [r3, #0x14]
    add r4, sp, #0x48
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    mov r0, sb
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
_08037310:
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4a
    bl _call_via_r2
    adds r3, r0, #0
    cmp r3, #0
    beq _08037340
    ldrh r0, [r3, #4]
    cmp r0, r8
    bne _08037340
    ldr r1, [r3, #0x14]
    add r4, sp, #0x50
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    mov r0, sb
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
_08037340:
    adds r2, r7, #0
    adds r2, #0x34
    movs r3, #4
    ldrsh r0, [r2, r3]
    movs r6, #0x34
    ldrsh r1, [r7, r6]
    subs r0, r0, r1
    cmp r0, #0
    ble _0803736A
    movs r1, #6
    ldrsh r0, [r2, r1]
    movs r3, #2
    ldrsh r1, [r2, r3]
    subs r0, r0, r1
    cmp r0, #0
    ble _0803736A
    mov r0, sb
    adds r1, r2, #0
    movs r2, #0
    bl func_080ABA90
_0803736A:
    ldrh r4, [r7, #0x3e]
    cmp r4, #0
    beq _080373EC
    ldr r5, [r7, #0x18]
    ldr r6, [r7, #0x1c]
    cmp r5, #0
    bge _08037390
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x34]
    cmn r1, r0
    bge _0803738A
    add r0, sp, #0xc
    bl func_080AB948
    ldr r0, [sp, #0x14]
    b _0803738C
_0803738A:
    adds r0, r1, #0
_0803738C:
    cmp r0, #0
    bge _080373E4
_08037390:
    cmp r5, #0
    ble _080373AC
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x34]
    cmp r1, r0
    ble _080373A6
    add r0, sp, #0xc
    bl func_080AB9C4
    ldr r0, [sp, #0x18]
    b _080373A8
_080373A6:
    adds r0, r1, #0
_080373A8:
    cmp r0, #0
    ble _080373E4
_080373AC:
    cmp r6, #0
    bge _080373C8
    ldr r1, [sp, #0x10]
    ldr r0, [sp, #0x34]
    cmn r1, r0
    bge _080373C2
    add r0, sp, #0xc
    bl func_080AB8D0
    ldr r0, [sp, #0x10]
    b _080373C4
_080373C2:
    adds r0, r1, #0
_080373C4:
    cmp r0, #0
    bge _080373E4
_080373C8:
    cmp r6, #0
    ble _080373E8
    ldr r1, [sp, #0xc]
    ldr r0, [sp, #0x34]
    cmp r1, r0
    ble _080373DE
    add r0, sp, #0xc
    bl func_080AB85C
    ldr r0, [sp, #0xc]
    b _080373E0
_080373DE:
    adds r0, r1, #0
_080373E0:
    cmp r0, #0
    bgt _080373E8
_080373E4:
    movs r4, #0
    b _080373F8
_080373E8:
    subs r4, #1
    b _080373F8
_080373EC:
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x40]
    adds r0, r7, #0
    bl _call_via_r1
    adds r4, r0, #0
_080373F8:
    strh r4, [r7, #0x3e]
    adds r0, r7, #0
    mov r1, sb
    bl func_08037118
_08037402:
    ldrh r0, [r7, #0x24]
    cmp r0, #0
    beq _0803740C
    subs r0, #1
    b _0803740E
_0803740C:
    ldrh r0, [r7, #0x26]
_0803740E:
    strh r0, [r7, #0x24]
    ldr r2, [r7, #0x10]
    cmp r2, #0
    beq _08037420
    ldr r0, [r2, #4]
    ldr r1, [r0, #0xc]
    adds r0, r2, #0
    bl _call_via_r1
_08037420:
    add sp, #0x60
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08037430
func_08037430: @ 0x08037430
    ldrh r0, [r0, #0x3c]
    bx lr

    thumb_func_start func_08037434
func_08037434: @ 0x08037434
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x40
    ldrb r0, [r0]
    cmp r0, #0
    bne _0803744A
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x3c]
    adds r0, r4, #0
    bl _call_via_r1
_0803744A:
    movs r0, #0
    strh r0, [r4, #0x3e]
    adds r0, r4, #0
    bl func_0801FDC0
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0803745C
func_0803745C: @ 0x0803745C
    push {r4, lr}
    adds r4, r0, #0
    bl func_0801FE20
    adds r4, #0x40
    movs r0, #0
    strb r0, [r4]
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08037470
func_08037470: @ 0x08037470
    push {r4, lr}
    movs r3, #0xa
    ldrsh r2, [r1, r3]
    movs r4, #0xe
    ldrsh r3, [r1, r4]
    subs r1, r2, #7
    strh r1, [r0]
    adds r1, r3, #0
    subs r1, #9
    strh r1, [r0, #2]
    adds r2, #7
    strh r2, [r0, #4]
    adds r3, #5
    strh r3, [r0, #6]
    pop {r4}
    pop {r2}
    bx r2
    .align 2, 0

    thumb_func_start func_08037494
func_08037494: @ 0x08037494
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    movs r1, #0
    subs r0, #6
    cmp r0, #0xe
    bls _080374B8
    movs r1, #1
_080374B8:
    lsls r4, r1, #2
    adds r4, r4, r1
    lsls r4, r4, #2
    ldr r0, _08037538 @ =0x080F1538
    adds r4, r4, r0
    adds r0, r4, #0
    movs r1, #5
    bl func_080AB82C
    lsls r1, r0, #2
    adds r4, r4, r1
    adds r7, r0, #0
    movs r5, #0x3c
    ldrb r0, [r4, #2]
    muls r0, r5, r0
    bl func_080AB788
    ldrb r1, [r4, #1]
    muls r1, r5, r1
    adds r5, r1, r0
    movs r0, #4
    bl func_080AB788
    adds r1, r0, #0
    cmp r1, #0
    beq _08037508
    cmp r1, #3
    beq _08037508
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r0, [r4]
    bl func_080AB7A4
    adds r1, r0, #0
    ldrb r0, [r4]
    cmp r0, r1
    beq _08037508
    adds r0, r6, #0
    bl func_08032198
_08037508:
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_08037628
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08037098
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_08037618
    adds r1, r0, #0
    ldrh r0, [r6, #0x22]
    cmp r0, r1
    beq _0803752E
    adds r0, r6, #0
    bl func_080321B0
_0803752E:
    adds r0, r5, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_08037538: .4byte 0x080F1538

    thumb_func_start func_0803753C
func_0803753C: @ 0x0803753C
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r2, #0
    str r2, [sp]
    movs r1, #7
    str r1, [sp, #4]
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #2
    movs r3, #9
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08037568
func_08037568: @ 0x08037568
    push {r4, r5, lr}
    mov r5, r8
    push {r5}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    adds r1, r0, #0
    adds r5, r1, #0
    ldrb r0, [r1, #0xa]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    subs r0, #6
    cmp r0, #9
    bhi _08037600
    ldrb r2, [r1, #8]
    lsls r2, r2, #0x1d
    lsrs r2, r2, #0x1d
    ldrb r3, [r1, #9]
    lsls r0, r3, #0x1e
    lsrs r0, r0, #0x1e
    lsls r3, r3, #0x19
    lsrs r3, r3, #0x1b
    adds r2, #6
    lsls r1, r0, #4
    subs r1, r1, r0
    lsls r1, r1, #1
    lsls r0, r2, #4
    subs r0, r0, r2
    lsls r0, r0, #3
    adds r1, r1, r0
    adds r3, r3, r1
    cmp r3, #6
    bls _080375C2
    adds r0, r3, #0
    movs r1, #7
    bl __umodsi3
    adds r3, r0, #0
_080375C2:
    movs r0, #7
    ands r3, r0
    cmp r3, #0
    beq _08037600
    ldr r0, [r5]
    cmp r0, #0
    bne _08037600
    adds r0, r4, #0
    adds r0, #0x44
    ldrb r1, [r0]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
    mov r0, sp
    bl func_080A17A0
    adds r0, r4, #0
    mov r1, sp
    bl func_0803211C
    adds r0, r4, #0
    movs r1, #0
    bl func_08037618
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq _0803760A
    adds r0, r4, #0
    bl func_080321B0
    b _0803760A
_08037600:
    adds r0, r4, #0
    movs r1, #0x8d
    lsls r1, r1, #2
    bl func_0801FF38
_0803760A:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08037618
func_08037618: @ 0x08037618
    ldr r0, _08037624 @ =0x080F1560
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    bx lr
    .align 2, 0
_08037624: .4byte 0x080F1560

    thumb_func_start func_08037628
func_08037628: @ 0x08037628
    push {lr}
    cmp r1, #1
    beq _08037632
    movs r0, #0
    b _08037636
_08037632:
    movs r0, #0x80
    lsls r0, r0, #8
_08037636:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0803763C
func_0803763C: @ 0x0803763C
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    movs r1, #0
    subs r0, #6
    cmp r0, #0xe
    bls _08037660
    movs r1, #1
_08037660:
    lsls r4, r1, #3
    subs r4, r4, r1
    lsls r4, r4, #2
    ldr r0, _080376E0 @ =0x080F156C
    adds r4, r4, r0
    adds r0, r4, #0
    movs r1, #7
    bl func_080AB82C
    lsls r1, r0, #2
    adds r4, r4, r1
    adds r7, r0, #0
    movs r5, #0x3c
    ldrb r0, [r4, #2]
    muls r0, r5, r0
    bl func_080AB788
    ldrb r1, [r4, #1]
    muls r1, r5, r1
    adds r5, r1, r0
    movs r0, #4
    bl func_080AB788
    adds r1, r0, #0
    cmp r1, #0
    beq _080376B0
    cmp r1, #3
    beq _080376B0
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r0, [r4]
    bl func_080AB7A4
    adds r1, r0, #0
    ldrb r0, [r4]
    cmp r0, r1
    beq _080376B0
    adds r0, r6, #0
    bl func_08032198
_080376B0:
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_080377D4
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08037098
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_080377C4
    adds r1, r0, #0
    ldrh r0, [r6, #0x22]
    cmp r0, r1
    beq _080376D6
    adds r0, r6, #0
    bl func_080321B0
_080376D6:
    adds r0, r5, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_080376E0: .4byte 0x080F156C

    thumb_func_start func_080376E4
func_080376E4: @ 0x080376E4
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r1, #2
    str r1, [sp]
    movs r1, #0xc
    str r1, [sp, #4]
    movs r2, #0
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #4
    movs r3, #0xc
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08037714
func_08037714: @ 0x08037714
    push {r4, r5, lr}
    mov r5, r8
    push {r5}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    adds r1, r0, #0
    adds r5, r1, #0
    ldrb r0, [r1, #0xa]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    subs r0, #6
    cmp r0, #9
    bhi _080377AC
    ldrb r2, [r1, #8]
    lsls r2, r2, #0x1d
    lsrs r2, r2, #0x1d
    ldrb r3, [r1, #9]
    lsls r0, r3, #0x1e
    lsrs r0, r0, #0x1e
    lsls r3, r3, #0x19
    lsrs r3, r3, #0x1b
    adds r2, #6
    lsls r1, r0, #4
    subs r1, r1, r0
    lsls r1, r1, #1
    lsls r0, r2, #4
    subs r0, r0, r2
    lsls r0, r0, #3
    adds r1, r1, r0
    adds r3, r3, r1
    cmp r3, #6
    bls _0803776E
    adds r0, r3, #0
    movs r1, #7
    bl __umodsi3
    adds r3, r0, #0
_0803776E:
    movs r0, #7
    ands r3, r0
    cmp r3, #1
    beq _080377AC
    ldr r0, [r5]
    cmp r0, #0
    bne _080377AC
    adds r0, r4, #0
    adds r0, #0x44
    ldrb r1, [r0]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
    mov r0, sp
    bl func_080A1890
    adds r0, r4, #0
    mov r1, sp
    bl func_0803211C
    adds r0, r4, #0
    movs r1, #0
    bl func_080377C4
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq _080377B6
    adds r0, r4, #0
    bl func_080321B0
    b _080377B6
_080377AC:
    adds r0, r4, #0
    movs r1, #0x8d
    lsls r1, r1, #2
    bl func_0801FF38
_080377B6:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080377C4
func_080377C4: @ 0x080377C4
    ldr r0, _080377D0 @ =0x080F15A4
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    bx lr
    .align 2, 0
_080377D0: .4byte 0x080F15A4

    thumb_func_start func_080377D4
func_080377D4: @ 0x080377D4
    push {lr}
    cmp r1, #1
    beq _080377DE
    movs r0, #0
    b _080377E2
_080377DE:
    movs r0, #0x80
    lsls r0, r0, #8
_080377E2:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080377E8
func_080377E8: @ 0x080377E8
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    movs r4, #0
    subs r0, #6
    cmp r0, #0xe
    bls _0803780C
    movs r4, #1
_0803780C:
    movs r0, #0x34
    muls r4, r0, r4
    ldr r0, _08037888 @ =0x080F15B4
    adds r4, r4, r0
    adds r0, r4, #0
    movs r1, #0xd
    bl func_080AB82C
    lsls r1, r0, #2
    adds r4, r4, r1
    adds r7, r0, #0
    movs r5, #0x3c
    ldrb r0, [r4, #2]
    muls r0, r5, r0
    bl func_080AB788
    ldrb r1, [r4, #1]
    muls r1, r5, r1
    adds r5, r1, r0
    movs r0, #4
    bl func_080AB788
    adds r1, r0, #0
    cmp r1, #0
    beq _0803785A
    cmp r1, #3
    beq _0803785A
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r0, [r4]
    bl func_080AB7A4
    adds r1, r0, #0
    ldrb r0, [r4]
    cmp r0, r1
    beq _0803785A
    adds r0, r6, #0
    bl func_08032198
_0803785A:
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_080378FC
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08037098
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_080378EC
    adds r1, r0, #0
    ldrh r0, [r6, #0x22]
    cmp r0, r1
    beq _08037880
    adds r0, r6, #0
    bl func_080321B0
_08037880:
    adds r0, r5, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_08037888: .4byte 0x080F15B4

    thumb_func_start func_0803788C
func_0803788C: @ 0x0803788C
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r2, #0
    str r2, [sp]
    movs r1, #8
    str r1, [sp, #4]
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #2
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_080378B8
func_080378B8: @ 0x080378B8
    push {r4, lr}
    sub sp, #8
    adds r4, r0, #0
    mov r0, sp
    bl func_080A198C
    adds r0, r4, #0
    mov r1, sp
    bl func_0803211C
    adds r0, r4, #0
    movs r1, #0
    bl func_080378EC
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq _080378E2
    adds r0, r4, #0
    bl func_080321B0
_080378E2:
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080378EC
func_080378EC: @ 0x080378EC
    ldr r0, _080378F8 @ =0x080F161C
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    bx lr
    .align 2, 0
_080378F8: .4byte 0x080F161C

    thumb_func_start func_080378FC
func_080378FC: @ 0x080378FC
    push {lr}
    cmp r1, #0xc
    bhi _08037944
    lsls r0, r1, #2
    ldr r1, _0803790C @ =_08037910
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0803790C: .4byte _08037910
_08037910: @ jump table
    .4byte _08037944 @ case 0
    .4byte _08037948 @ case 1
    .4byte _0803794E @ case 2
    .4byte _08037944 @ case 3
    .4byte _08037944 @ case 4
    .4byte _08037944 @ case 5
    .4byte _08037944 @ case 6
    .4byte _08037944 @ case 7
    .4byte _08037944 @ case 8
    .4byte _08037944 @ case 9
    .4byte _08037944 @ case 10
    .4byte _0803794E @ case 11
    .4byte _08037944 @ case 12
_08037944:
    movs r0, #0
    b _08037952
_08037948:
    movs r0, #0x80
    lsls r0, r0, #8
    b _08037952
_0803794E:
    movs r0, #0x80
    lsls r0, r0, #9
_08037952:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08037958
func_08037958: @ 0x08037958
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldr r5, _080379D4 @ =0x080F1638
    adds r0, r5, #0
    movs r1, #3
    bl func_080AB82C
    lsls r4, r0, #2
    adds r4, r4, r5
    adds r7, r0, #0
    movs r5, #0x3c
    ldrb r0, [r4, #2]
    muls r0, r5, r0
    bl func_080AB788
    ldrb r1, [r4, #1]
    muls r1, r5, r1
    adds r5, r1, r0
    movs r0, #4
    bl func_080AB788
    adds r1, r0, #0
    cmp r1, #0
    beq _080379A4
    cmp r1, #3
    beq _080379A4
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r0, [r4]
    bl func_080AB7A4
    adds r1, r0, #0
    ldrb r0, [r4]
    cmp r0, r1
    beq _080379A4
    adds r0, r6, #0
    bl func_08032198
_080379A4:
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_08037A48
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08037098
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_08037A38
    adds r1, r0, #0
    ldrh r0, [r6, #0x22]
    cmp r0, r1
    beq _080379CA
    adds r0, r6, #0
    bl func_080321B0
_080379CA:
    adds r0, r5, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_080379D4: .4byte 0x080F1638

    thumb_func_start func_080379D8
func_080379D8: @ 0x080379D8
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r2, #0
    str r2, [sp]
    movs r1, #8
    str r1, [sp, #4]
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #2
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08037A04
func_08037A04: @ 0x08037A04
    push {r4, lr}
    sub sp, #8
    adds r4, r0, #0
    mov r0, sp
    bl func_080A19EC
    adds r0, r4, #0
    mov r1, sp
    bl func_0803211C
    adds r0, r4, #0
    movs r1, #0
    bl func_08037A38
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq _08037A2E
    adds r0, r4, #0
    bl func_080321B0
_08037A2E:
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08037A38
func_08037A38: @ 0x08037A38
    ldr r0, _08037A44 @ =0x080F1644
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    bx lr
    .align 2, 0
_08037A44: .4byte 0x080F1644

    thumb_func_start func_08037A48
func_08037A48: @ 0x08037A48
    push {lr}
    cmp r1, #1
    beq _08037A52
    movs r0, #0
    b _08037A56
_08037A52:
    movs r0, #0x80
    lsls r0, r0, #8
_08037A56:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08037A5C
func_08037A5C: @ 0x08037A5C
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #0xc
    adds r6, r0, #0
    mov r8, r1
    adds r4, r2, #0
    movs r0, #0x48
    bl __builtin_new
    adds r5, r0, #0
    movs r0, #0
    str r0, [sp]
    adds r0, r5, #0
    adds r1, r6, #0
    mov r2, r8
    ldr r3, _08037AC8 @ =0x0000071C
    bl func_08037008
    ldr r0, _08037ACC @ =vtable_unk_080E72E4
    str r0, [r5, #0x14]
    adds r2, r5, #0
    adds r2, #0x44
    movs r0, #3
    ands r4, r0
    ldrb r1, [r2]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r4
    strb r0, [r2]
    add r2, sp, #4
    movs r1, #0xb0
    lsls r1, r1, #1
    movs r3, #0xd8
    adds r0, r2, #0
    strh r1, [r0]
    strh r3, [r2, #2]
    adds r1, #0x38
    strh r1, [r2, #4]
    movs r0, #0xe8
    strh r0, [r2, #6]
    adds r0, r5, #0
    adds r1, r2, #0
    bl func_08037244
    adds r0, r5, #0
    add sp, #0xc
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08037AC8: .4byte 0x0000071C
_08037ACC: .4byte vtable_unk_080E72E4

    thumb_func_start func_08037AD0
func_08037AD0: @ 0x08037AD0
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #0xc
    adds r6, r0, #0
    mov r8, r1
    adds r4, r2, #0
    movs r0, #0x48
    bl __builtin_new
    adds r5, r0, #0
    movs r0, #0xb
    str r0, [sp]
    adds r0, r5, #0
    adds r1, r6, #0
    mov r2, r8
    movs r3, #0xab
    lsls r3, r3, #2
    bl func_08037008
    ldr r0, _08037B44 @ =vtable_unk_080E72A0
    str r0, [r5, #0x14]
    adds r2, r5, #0
    adds r2, #0x44
    movs r0, #3
    ands r4, r0
    ldrb r1, [r2]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r4
    strb r0, [r2]
    add r3, sp, #4
    movs r1, #0xe6
    lsls r1, r1, #2
    movs r2, #0x90
    lsls r2, r2, #1
    adds r0, r3, #0
    strh r1, [r0]
    strh r2, [r3, #2]
    movs r0, #0xa4
    lsls r0, r0, #1
    adds r1, r1, r0
    strh r1, [r3, #4]
    adds r2, #8
    strh r2, [r3, #6]
    adds r0, r5, #0
    adds r1, r3, #0
    bl func_08037244
    adds r0, r5, #0
    add sp, #0xc
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08037B44: .4byte vtable_unk_080E72A0

    thumb_func_start func_08037B48
func_08037B48: @ 0x08037B48
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    movs r0, #0x44
    bl __builtin_new
    adds r4, r0, #0
    movs r0, #0xc
    str r0, [sp]
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r6, #0
    ldr r3, _08037B78 @ =0x00000379
    bl func_08037008
    ldr r0, _08037B7C @ =vtable_unk_080E725C
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08037B78: .4byte 0x00000379
_08037B7C: .4byte vtable_unk_080E725C

    thumb_func_start func_08037B80
func_08037B80: @ 0x08037B80
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    movs r0, #0x44
    bl __builtin_new
    adds r4, r0, #0
    movs r0, #0xa
    str r0, [sp]
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r6, #0
    ldr r3, _08037BB0 @ =0x00000207
    bl func_08037008
    ldr r0, _08037BB4 @ =vtable_unk_080E7218
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08037BB0: .4byte 0x00000207
_08037BB4: .4byte vtable_unk_080E7218
_08037BB8:
    .byte 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x06, 0x4B
    .byte 0x0A, 0x20, 0x00, 0x90, 0x20, 0x1C, 0xFF, 0xF7, 0x1F, 0xFA, 0x04, 0x48, 0x60, 0x61, 0x20, 0x1C
    .byte 0x01, 0xB0, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x07, 0x02, 0x00, 0x00, 0x18, 0x72, 0x0E, 0x08
    .byte 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x06, 0x4B, 0x0C, 0x20, 0x00, 0x90, 0x20, 0x1C, 0xFF, 0xF7
    .byte 0x0B, 0xFA, 0x04, 0x48, 0x60, 0x61, 0x20, 0x1C, 0x01, 0xB0, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
    .byte 0x79, 0x03, 0x00, 0x00, 0x5C, 0x72, 0x0E, 0x08, 0x30, 0xB5, 0x83, 0xB0, 0x05, 0x1C, 0x1C, 0x1C
    .byte 0xAB, 0x23, 0x9B, 0x00, 0x0B, 0x20, 0x00, 0x90, 0x28, 0x1C, 0xFF, 0xF7, 0xF5, 0xF9, 0x11, 0x48
    .byte 0x68, 0x61, 0x2A, 0x1C, 0x44, 0x32, 0x03, 0x20, 0x04, 0x40, 0x11, 0x78, 0x04, 0x20, 0x40, 0x42
    .byte 0x08, 0x40, 0x20, 0x43, 0x10, 0x70, 0x01, 0xAB, 0xE6, 0x21, 0x89, 0x00, 0x90, 0x22, 0x52, 0x00
    .byte 0x18, 0x1C, 0x01, 0x80, 0x5A, 0x80, 0xA4, 0x20, 0x40, 0x00, 0x09, 0x18, 0x99, 0x80, 0x08, 0x32
    .byte 0xDA, 0x80, 0x28, 0x1C, 0x19, 0x1C, 0xFF, 0xF7, 0xF5, 0xFA, 0x28, 0x1C, 0x03, 0xB0, 0x30, 0xBC
    .byte 0x02, 0xBC, 0x08, 0x47, 0xA0, 0x72, 0x0E, 0x08, 0x30, 0xB5, 0x83, 0xB0, 0x05, 0x1C, 0x1C, 0x1C
    .byte 0x12, 0x4B, 0x00, 0x20, 0x00, 0x90, 0x28, 0x1C, 0xFF, 0xF7, 0xC6, 0xF9, 0x10, 0x48, 0x68, 0x61
    .byte 0x2A, 0x1C, 0x44, 0x32, 0x03, 0x20, 0x04, 0x40, 0x11, 0x78, 0x04, 0x20, 0x40, 0x42, 0x08, 0x40
    .byte 0x20, 0x43, 0x10, 0x70, 0x01, 0xAA, 0xB0, 0x21, 0x49, 0x00, 0xD8, 0x23, 0x10, 0x1C, 0x01, 0x80
    .byte 0x53, 0x80, 0x38, 0x31, 0x91, 0x80, 0xE8, 0x20, 0xD0, 0x80, 0x28, 0x1C, 0x11, 0x1C, 0xFF, 0xF7
    .byte 0xC9, 0xFA, 0x28, 0x1C, 0x03, 0xB0, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x1C, 0x07, 0x00, 0x00
    .byte 0xE4, 0x72, 0x0E, 0x08

    thumb_func_start func_08037CC4
func_08037CC4: @ 0x08037CC4
    push {r4, lr}
    adds r4, r0, #0
    bl func_0801FD78
    ldr r0, _08037CD8 @ =vtable_unk_080E7444
    str r0, [r4, #0x14]
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08037CD8: .4byte vtable_unk_080E7444
_08037CDC:
    .byte 0x0A, 0x23, 0xCA, 0x5E
    .byte 0x0E, 0x23, 0xC9, 0x5E, 0x02, 0x80, 0x01, 0x31, 0x41, 0x80, 0x82, 0x80, 0xC1, 0x80, 0x70, 0x47

    thumb_func_start func_08037CF0
func_08037CF0: @ 0x08037CF0
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x54
    bl __builtin_new
    adds r1, r4, #0
    bl func_08037D08
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08037D08
func_08037D08: @ 0x08037D08
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r7, r0, #0
    adds r4, r1, #0
    str r4, [r7]
    ldr r0, _08037D68 @ =vtable_unk_080E7478
    str r0, [r7, #4]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r5, r0, #0
    ldr r1, [r4]
    adds r4, r7, #0
    adds r4, #8
    adds r0, r4, #0
    movs r2, #2
    movs r3, #0xa
    bl func_080A4740
    ldr r0, _08037D6C @ =vtable_unk_080E602C
    str r0, [r4, #0x24]
    adds r6, r7, #0
    adds r6, #0x30
    ldr r4, [r5]
    mov r0, sp
    ldr r3, [r4, #0xc]
    adds r1, r5, #0
    movs r2, #0x7d
    bl _call_via_r3
    ldr r0, [sp]
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r4, #0x10]
    adds r1, r5, #0
    bl _call_via_r3
    adds r1, r7, #0
    adds r1, #0x50
    movs r0, #1
    strb r0, [r1]
    adds r0, r7, #0
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_08037D68: .4byte vtable_unk_080E7478
_08037D6C: .4byte vtable_unk_080E602C
_08037D70:
    .byte 0x70, 0x47, 0x00, 0x00

    thumb_func_start func_08037D74
func_08037D74: @ 0x08037D74
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    adds r4, r0, #0
    ldr r3, [r4]
    movs r0, #0xa
    ldrsh r2, [r3, r0]
    movs r5, #0xc
    ldrsh r0, [r1, r5]
    subs r2, r2, r0
    mov r8, r2
    movs r0, #0xe
    ldrsh r2, [r3, r0]
    movs r3, #0xe
    ldrsh r0, [r1, r3]
    subs r0, r2, r0
    mov ip, r0
    ldr r0, [r1]
    ldr r3, [r1, #8]
    str r0, [sp, #0x14]
    str r3, [sp, #0x18]
    movs r0, #0x80
    lsls r0, r0, #8
    subs r7, r0, r2
    adds r5, r4, #0
    adds r5, #8
    adds r6, r4, #0
    adds r6, #0x30
    ldr r2, [r4, #8]
    ldr r1, [r4, #0x10]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08037DE0
    ldrh r0, [r5, #0xc]
    adds r1, r4, #0
    adds r1, #0x18
    str r7, [sp]
    str r6, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    adds r0, r3, #0
    mov r1, r8
    mov r2, ip
    movs r3, #0xaa
    ldr r4, _08037DDC @ =func_030004DC
    bl _call_via_r4
    b _08037DE2
    .align 2, 0
_08037DDC: .4byte func_030004DC
_08037DE0:
    movs r0, #0
_08037DE2:
    cmp r0, #0
    beq _08037E0C
    adds r4, r5, #0
    adds r4, #0x48
    ldrb r0, [r4]
    cmp r0, #0
    beq _08037E0C
    ldr r1, [sp, #0x14]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #0
    strb r0, [r4]
_08037E0C:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08037E18
func_08037E18: @ 0x08037E18
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r0, sp
    adds r1, r6, #0
    bl func_0800FFE0
    adds r0, r4, #0
    adds r1, r5, #0
    mov r2, sp
    bl func_0801FD78
    ldr r0, _08037E44 @ =vtable_unk_080E73FC
    str r0, [r4, #0x14]
    str r6, [r4, #0x18]
    adds r0, r4, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08037E44: .4byte vtable_unk_080E73FC

    thumb_func_start func_08037E48
func_08037E48: @ 0x08037E48
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r0, _08037E94 @ =vtable_unk_080E73FC
    str r0, [r5, #0x14]
    ldr r4, [r5, #0x18]
    mov r0, sp
    adds r1, r5, #0
    bl func_0801FE94
    adds r0, r4, #0
    mov r1, sp
    bl func_08010014
    ldr r0, _08037E98 @ =__vt_7AEntity
    str r0, [r5, #0x14]
    ldr r1, [r5, #0x10]
    cmp r1, #0
    beq _08037E7C
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08037E7C:
    movs r0, #1
    ands r0, r6
    cmp r0, #0
    beq _08037E8A
    adds r0, r5, #0
    bl __builtin_delete
_08037E8A:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
_08037E94: .4byte vtable_unk_080E73FC
_08037E98: .4byte __vt_7AEntity

    thumb_func_start func_08037E9C
func_08037E9C: @ 0x08037E9C
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x58
    bl __builtin_new
    adds r1, r4, #0
    bl func_08037EF0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08037EB4
func_08037EB4: @ 0x08037EB4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x18]
    ldrb r1, [r1]
    bl func_0800FFF4
    ldr r0, [r4, #0x10]
    cmp r0, #0
    beq _08037ECA
    bl func_08037F74
_08037ECA:
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08037ED0
func_08037ED0: @ 0x08037ED0
    push {r4, lr}
    movs r3, #0xa
    ldrsh r2, [r1, r3]
    movs r4, #0xe
    ldrsh r3, [r1, r4]
    subs r1, r2, #7
    strh r1, [r0]
    subs r1, r3, #4
    strh r1, [r0, #2]
    adds r2, #7
    strh r2, [r0, #4]
    adds r3, #5
    strh r3, [r0, #6]
    pop {r4}
    pop {r2}
    bx r2

    thumb_func_start func_08037EF0
func_08037EF0: @ 0x08037EF0
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r7, r0, #0
    adds r4, r1, #0
    str r4, [r7]
    ldr r0, _08037F58 @ =vtable_unk_080E7430
    str r0, [r7, #4]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r5, r0, #0
    ldr r1, [r4]
    adds r4, r7, #0
    adds r4, #8
    adds r0, r4, #0
    movs r2, #2
    movs r3, #8
    bl func_080A4740
    ldr r0, _08037F5C @ =vtable_unk_080E602C
    str r0, [r4, #0x24]
    adds r6, r7, #0
    adds r6, #0x30
    ldr r4, [r5]
    mov r0, sp
    ldr r3, [r4, #0xc]
    adds r1, r5, #0
    movs r2, #0x35
    bl _call_via_r3
    ldr r0, [sp]
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r4, #0x10]
    adds r1, r5, #0
    bl _call_via_r3
    adds r1, r7, #0
    adds r1, #0x50
    movs r2, #0
    movs r0, #1
    strb r0, [r1]
    adds r0, r7, #0
    adds r0, #0x54
    strb r2, [r0]
    adds r0, r7, #0
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_08037F58: .4byte vtable_unk_080E7430
_08037F5C: .4byte vtable_unk_080E602C

    thumb_func_start func_08037F60
func_08037F60: @ 0x08037F60
    push {lr}
    adds r1, r0, #0
    adds r1, #0x54
    ldrb r0, [r1]
    cmp r0, #0
    beq _08037F70
    subs r0, #1
    strb r0, [r1]
_08037F70:
    pop {r0}
    bx r0

    thumb_func_start func_08037F74
func_08037F74: @ 0x08037F74
    adds r0, #0x54
    movs r1, #0xa
    strb r1, [r0]
    bx lr

    thumb_func_start func_08037F7C
func_08037F7C: @ 0x08037F7C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    adds r4, r0, #0
    ldr r3, [r4]
    movs r0, #0xa
    ldrsh r2, [r3, r0]
    movs r5, #0xc
    ldrsh r0, [r1, r5]
    subs r2, r2, r0
    mov r8, r2
    movs r0, #0xe
    ldrsh r3, [r3, r0]
    movs r2, #0xe
    ldrsh r0, [r1, r2]
    subs r2, r3, r0
    ldr r0, [r1]
    ldr r1, [r1, #8]
    mov ip, r1
    str r0, [sp, #0x14]
    str r1, [sp, #0x18]
    adds r0, r4, #0
    adds r0, #0x54
    ldrb r0, [r0]
    cmp r0, #0
    beq _08037FB4
    subs r2, #2
_08037FB4:
    movs r0, #0x80
    lsls r0, r0, #8
    subs r7, r0, r3
    adds r5, r4, #0
    adds r5, #8
    adds r6, r4, #0
    adds r6, #0x30
    ldr r3, [r4, #8]
    ldr r1, [r4, #0x10]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08037FF0
    ldrh r0, [r5, #0xc]
    adds r1, r4, #0
    adds r1, #0x18
    str r7, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    mov r0, ip
    mov r1, r8
    movs r3, #0xaa
    ldr r4, _08037FEC @ =func_030004DC
    bl _call_via_r4
    b _08037FF2
    .align 2, 0
_08037FEC: .4byte func_030004DC
_08037FF0:
    movs r0, #0
_08037FF2:
    cmp r0, #0
    beq _0803801C
    adds r4, r5, #0
    adds r4, #0x48
    ldrb r0, [r4]
    cmp r0, #0
    beq _0803801C
    ldr r1, [sp, #0x14]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #0
    strb r0, [r4]
_0803801C:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08038028
func_08038028: @ 0x08038028
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r5, r1, #0
    adds r4, r2, #0
    bl func_0801FD78
    ldr r0, _08038094 @ =vtable_unk_080E73B4
    str r0, [r6, #0x14]
    str r4, [r6, #0x18]
    movs r0, #0
    str r0, [r6, #0x1c]
    adds r1, r6, #0
    adds r1, #0x25
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
    movs r0, #0x31
    strh r0, [r6, #0x28]
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    movs r1, #0x2b
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _08038088
    ldrh r0, [r4, #4]
    ldrh r1, [r6, #4]
    cmp r0, r1
    bne _08038088
    adds r0, r4, #0
    bl func_08020460
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08038088
    ldr r1, [r4, #8]
    ldr r2, [r4, #0xc]
    ldrh r3, [r4, #0x22]
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    str r0, [sp]
    adds r0, r6, #0
    bl func_08038374
_08038088:
    adds r0, r6, #0
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08038094: .4byte vtable_unk_080E73B4

    thumb_func_start func_08038098
func_08038098: @ 0x08038098
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r0, _080380E4 @ =vtable_unk_080E73B4
    str r0, [r5, #0x14]
    ldr r4, [r5, #0x18]
    mov r0, sp
    adds r1, r5, #0
    bl func_0801FE94
    adds r0, r4, #0
    mov r1, sp
    movs r2, #6
    bl memcpy
    ldr r0, _080380E8 @ =__vt_7AEntity
    str r0, [r5, #0x14]
    ldr r1, [r5, #0x10]
    cmp r1, #0
    beq _080380CE
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080380CE:
    movs r0, #1
    ands r0, r6
    cmp r0, #0
    beq _080380DC
    adds r0, r5, #0
    bl __builtin_delete
_080380DC:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
_080380E4: .4byte vtable_unk_080E73B4
_080380E8: .4byte __vt_7AEntity

    thumb_func_start func_080380EC
func_080380EC: @ 0x080380EC
    adds r2, r0, #0
    adds r2, #0x24
    strb r1, [r2]
    movs r1, #0xa8
    lsls r1, r1, #0xd
    str r1, [r0, #0x1c]
    movs r1, #0xc0
    lsls r1, r1, #0xa
    str r1, [r0, #0x20]
    adds r0, #0x25
    movs r1, #1
    strb r1, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_08038108
func_08038108: @ 0x08038108
    adds r0, #0x25
    ldrb r0, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_08038110
func_08038110: @ 0x08038110
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x44
    adds r6, r0, #0
    adds r4, r6, #0
    adds r4, #0x25
    ldrb r0, [r4]
    cmp r0, #0
    bne _08038126
    b _080382F4
_08038126:
    ldr r7, [r6]
    ldrh r2, [r6, #4]
    ldr r1, [r7]
    mov r0, sp
    ldr r3, [r1, #0x34]
    adds r1, r7, #0
    bl _call_via_r3
    mov r8, sp
    ldr r1, [r6, #0x20]
    ldr r0, _080381A0 @ =0xFFFFB85D
    adds r1, r1, r0
    str r1, [r6, #0x20]
    ldr r0, [r6, #0x1c]
    adds r0, r0, r1
    str r0, [r6, #0x1c]
    cmp r0, #0
    bgt _0803814C
    b _0803825C
_0803814C:
    ldr r1, [r6, #0x14]
    add r0, sp, #0x34
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    ldr r1, [sp, #0x34]
    ldr r2, [sp, #0x38]
    str r1, [sp, #0x3c]
    str r2, [sp, #0x40]
    add r5, sp, #0xc
    movs r2, #0x20
    mov r8, r2
    movs r1, #0x21
    str r1, [sp, #0xc]
    movs r0, #0x21
    rsbs r0, r0, #0
    str r0, [r5, #4]
    str r0, [r5, #8]
    str r1, [r5, #0xc]
    add r1, sp, #0x1c
    mov r0, sp
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldr r3, [sp, #0x3c]
    ldr r4, [sp, #0x40]
    str r3, [sp, #0x28]
    str r4, [sp, #0x2c]
    mov r4, r8
    str r4, [r5, #0x24]
    ldr r4, [r6, #8]
    ldr r7, [r6, #0xc]
    adds r0, r6, #0
    adds r0, #0x24
    ldrb r0, [r0]
    cmp r0, #1
    beq _080381AE
    cmp r0, #1
    bgt _080381A4
    cmp r0, #0
    beq _080381D4
    b _08038250
    .align 2, 0
_080381A0: .4byte 0xFFFFB85D
_080381A4:
    cmp r0, #2
    beq _08038230
    cmp r0, #3
    beq _08038204
    b _08038250
_080381AE:
    ldr r1, [sp, #0x10]
    ldr r0, [sp, #0x30]
    cmn r1, r0
    bge _080381C0
    adds r0, r5, #0
    bl func_080ABBC4
    ldr r0, [sp, #0x10]
    b _080381C2
_080381C0:
    adds r0, r1, #0
_080381C2:
    lsls r1, r0, #0x10
    ldr r0, _080381D0 @ =0xFFFE38E4
    cmp r1, r0
    bgt _080381F0
    ldr r5, _080381D0 @ =0xFFFE38E4
    adds r7, r7, r5
    b _08038250
    .align 2, 0
_080381D0: .4byte 0xFFFE38E4
_080381D4:
    ldr r1, [sp, #0xc]
    ldr r0, [sp, #0x30]
    cmp r1, r0
    ble _080381E6
    adds r0, r5, #0
    bl func_080ABBA0
    ldr r0, [sp, #0xc]
    b _080381E8
_080381E6:
    adds r0, r1, #0
_080381E8:
    lsls r1, r0, #0x10
    ldr r0, _080381F4 @ =0x0001C71B
    cmp r1, r0
    bgt _080381F8
_080381F0:
    adds r7, r7, r1
    b _08038250
    .align 2, 0
_080381F4: .4byte 0x0001C71B
_080381F8:
    ldr r0, _08038200 @ =0x0001C71C
    adds r7, r7, r0
    b _08038250
    .align 2, 0
_08038200: .4byte 0x0001C71C
_08038204:
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x30]
    cmp r1, r0
    ble _08038216
    adds r0, r5, #0
    bl func_080ABC14
    ldr r0, [sp, #0x18]
    b _08038218
_08038216:
    adds r0, r1, #0
_08038218:
    lsls r1, r0, #0x10
    ldr r0, _08038228 @ =0x0001C71B
    cmp r1, r0
    ble _08038222
    ldr r1, _0803822C @ =0x0001C71C
_08038222:
    adds r4, r4, r1
    b _08038250
    .align 2, 0
_08038228: .4byte 0x0001C71B
_0803822C: .4byte 0x0001C71C
_08038230:
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x30]
    cmn r1, r0
    bge _08038242
    adds r0, r5, #0
    bl func_080ABBEC
    ldr r0, [sp, #0x14]
    b _08038244
_08038242:
    adds r0, r1, #0
_08038244:
    lsls r1, r0, #0x10
    ldr r0, _08038258 @ =0xFFFE38E4
    cmp r1, r0
    bgt _08038222
    ldr r2, _08038258 @ =0xFFFE38E4
    adds r4, r4, r2
_08038250:
    str r4, [r6, #8]
    str r7, [r6, #0xc]
    b _080382F4
    .align 2, 0
_08038258: .4byte 0xFFFE38E4
_0803825C:
    movs r0, #0
    str r0, [r6, #0x1c]
    strb r0, [r4]
    add r4, sp, #0xc
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_0801FE94
    ldr r0, [r6, #0x18]
    adds r1, r4, #0
    movs r2, #6
    bl memcpy
    ldr r0, [r6, #8]
    ldr r1, [r6, #0xc]
    asrs r0, r0, #0x13
    mov ip, r0
    asrs r3, r1, #0x13
    ldr r1, [sp]
    mov r5, r8
    ldrh r0, [r5, #8]
    cmp r1, #0
    beq _080382A8
    cmp ip, r0
    bhi _080382A8
    ldrh r2, [r5, #0xa]
    cmp r3, r2
    bhi _080382A8
    ldr r2, [sp, #4]
    muls r0, r3, r0
    add r0, ip
    cmp r2, #0
    beq _080382A2
    adds r0, r2, r0
    ldrb r0, [r0]
_080382A2:
    lsls r0, r0, #2
    adds r0, r1, r0
    b _080382AA
_080382A8:
    movs r0, #0
_080382AA:
    cmp r0, #0
    bne _080382C2
    ldr r0, [r7]
    movs r3, #0x9e
    lsls r3, r3, #1
    adds r0, r0, r3
    ldr r2, [r0]
    adds r0, r7, #0
    movs r1, #1
    bl _call_via_r2
    b _080382F4
_080382C2:
    ldr r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _080382DE
    ldr r0, [r7]
    movs r4, #0x9e
    lsls r4, r4, #1
    adds r0, r0, r4
    ldr r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    bl _call_via_r2
    b _080382F4
_080382DE:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2b
    bl _call_via_r2
    cmp r0, #0
    beq _080382F4
    adds r1, r4, #0
    bl func_0802151C
_080382F4:
    add sp, #0x44
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08038300
func_08038300: @ 0x08038300
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4, #0x10]
    cmp r2, #0
    beq _08038314
    ldr r0, [r2, #4]
    ldr r1, [r0, #0xc]
    adds r0, r2, #0
    bl _call_via_r1
_08038314:
    adds r0, r4, #0
    bl func_08038110
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08038320
func_08038320: @ 0x08038320
    push {r4, lr}
    adds r4, r0, #0
    bl func_0801FE60
    adds r0, r4, #0
    bl func_08038110
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08038334
func_08038334: @ 0x08038334
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x48
    bl __builtin_new
    adds r1, r4, #0
    bl func_0803853C
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0803834C
func_0803834C: @ 0x0803834C
    push {r4, lr}
    movs r3, #0xa
    ldrsh r2, [r1, r3]
    movs r4, #0xe
    ldrsh r3, [r1, r4]
    subs r1, r2, #4
    strh r1, [r0]
    subs r1, r3, #4
    strh r1, [r0, #2]
    adds r2, #4
    strh r2, [r0, #4]
    adds r3, #4
    strh r3, [r0, #6]
    pop {r4}
    pop {r2}
    bx r2

    thumb_func_start func_0803836C
func_0803836C: @ 0x0803836C
    movs r1, #0x1e
    ldrsh r0, [r0, r1]
    bx lr
    .align 2, 0

    thumb_func_start func_08038374
func_08038374: @ 0x08038374
    push {r4, r5, r6, lr}
    ldr r5, [sp, #0x10]
    movs r4, #0x26
    adds r4, r4, r0
    mov ip, r4
    movs r4, #1
    mov r6, ip
    strb r4, [r6]
    str r1, [r0, #8]
    str r2, [r0, #0xc]
    adds r1, r3, #0
    adds r2, r5, #0
    bl func_08038398
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08038398
func_08038398: @ 0x08038398
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    movs r3, #0x15
    ldr r4, _080383B4 @ =0xFFFFFCC8
    adds r0, r1, r4
    cmp r0, #0x3d
    bls _080383A8
    b _080384CA
_080383A8:
    lsls r0, r0, #2
    ldr r1, _080383B8 @ =_080383BC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080383B4: .4byte 0xFFFFFCC8
_080383B8: .4byte _080383BC
_080383BC: @ jump table
    .4byte _080384CA @ case 0
    .4byte _080384CA @ case 1
    .4byte _080384CA @ case 2
    .4byte _080384CA @ case 3
    .4byte _080384B4 @ case 4
    .4byte _080384CA @ case 5
    .4byte _080384CA @ case 6
    .4byte _080384CA @ case 7
    .4byte _080384B8 @ case 8
    .4byte _080384CA @ case 9
    .4byte _080384CA @ case 10
    .4byte _080384CA @ case 11
    .4byte _080384BC @ case 12
    .4byte _080384CA @ case 13
    .4byte _080384CA @ case 14
    .4byte _080384CA @ case 15
    .4byte _080384C0 @ case 16
    .4byte _080384CA @ case 17
    .4byte _080384CA @ case 18
    .4byte _080384CA @ case 19
    .4byte _080384C4 @ case 20
    .4byte _080384CA @ case 21
    .4byte _080384CA @ case 22
    .4byte _080384CA @ case 23
    .4byte _080384CA @ case 24
    .4byte _080384CA @ case 25
    .4byte _080384CA @ case 26
    .4byte _080384CA @ case 27
    .4byte _080384CA @ case 28
    .4byte _080384CA @ case 29
    .4byte _080384CA @ case 30
    .4byte _080384CA @ case 31
    .4byte _080384CA @ case 32
    .4byte _080384CA @ case 33
    .4byte _080384CA @ case 34
    .4byte _080384CA @ case 35
    .4byte _080384CA @ case 36
    .4byte _080384CA @ case 37
    .4byte _080384CA @ case 38
    .4byte _080384CA @ case 39
    .4byte _080384CA @ case 40
    .4byte _080384CA @ case 41
    .4byte _080384CA @ case 42
    .4byte _080384CA @ case 43
    .4byte _080384CA @ case 44
    .4byte _080384CA @ case 45
    .4byte _080384CA @ case 46
    .4byte _080384CA @ case 47
    .4byte _080384CA @ case 48
    .4byte _080384CA @ case 49
    .4byte _080384CA @ case 50
    .4byte _080384CA @ case 51
    .4byte _080384CA @ case 52
    .4byte _080384CA @ case 53
    .4byte _080384CA @ case 54
    .4byte _080384CA @ case 55
    .4byte _080384CA @ case 56
    .4byte _080384CA @ case 57
    .4byte _080384CA @ case 58
    .4byte _080384CA @ case 59
    .4byte _080384CA @ case 60
    .4byte _080384C8 @ case 61
_080384B4:
    movs r3, #0x19
    b _080384CA
_080384B8:
    movs r3, #0x1d
    b _080384CA
_080384BC:
    movs r3, #0x21
    b _080384CA
_080384C0:
    movs r3, #0x25
    b _080384CA
_080384C4:
    movs r3, #0x29
    b _080384CA
_080384C8:
    movs r3, #0x2d
_080384CA:
    adds r1, r3, r2
    adds r6, r1, #0
    ldrh r0, [r5, #0x28]
    cmp r1, r0
    beq _080384F6
    ldr r4, [r5, #0x10]
    cmp r4, #0
    beq _080384F4
    adds r0, r4, #0
    adds r0, #0x30
    bl func_0805E860
    adds r0, r4, #0
    adds r0, #0x44
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
_080384F4:
    strh r6, [r5, #0x28]
_080384F6:
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_080384FC
func_080384FC: @ 0x080384FC
    push {r4, r5, lr}
    adds r5, r0, #0
    ldrh r0, [r5, #0x28]
    cmp r0, #0x31
    beq _0803852C
    ldr r4, [r5, #0x10]
    cmp r4, #0
    beq _08038528
    adds r0, r4, #0
    adds r0, #0x30
    movs r1, #0x31
    bl func_0805E860
    adds r0, r4, #0
    adds r0, #0x44
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
_08038528:
    movs r0, #0x31
    strh r0, [r5, #0x28]
_0803852C:
    adds r1, r5, #0
    adds r1, #0x26
    movs r0, #0
    strb r0, [r1]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0803853C
func_0803853C: @ 0x0803853C
    push {r4, r5, r6, lr}
    sub sp, #0xc
    adds r6, r0, #0
    adds r4, r1, #0
    str r4, [r6]
    ldr r0, _0803857C @ =vtable_unk_080E73E8
    str r0, [r6, #4]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    ldr r3, [r4]
    adds r0, r6, #0
    adds r0, #8
    ldrh r2, [r4, #0x28]
    movs r4, #2
    str r4, [sp]
    movs r4, #7
    str r4, [sp, #4]
    add r5, sp, #8
    movs r4, #0
    strb r4, [r5]
    bl func_080A4A00
    adds r0, r6, #0
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_0803857C: .4byte vtable_unk_080E73E8

    thumb_func_start func_08038580
func_08038580: @ 0x08038580
    push {r4, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x47
    ldrb r0, [r1]
    cmp r0, #0
    bne _080385A4
    adds r0, r4, #0
    adds r0, #0x30
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _080385A8
    adds r1, r4, #0
    adds r1, #0x44
    movs r0, #1
    b _080385A6
_080385A4:
    movs r0, #0
_080385A6:
    strb r0, [r1]
_080385A8:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080385B0
func_080385B0: @ 0x080385B0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x50
    adds r5, r0, #0
    mov sl, r1
    ldr r0, [r5]
    mov sb, r0
    movs r1, #0xa
    ldrsh r6, [r0, r1]
    mov r2, sl
    movs r3, #0xc
    ldrsh r0, [r2, r3]
    subs r0, r6, r0
    str r0, [sp, #0x3c]
    mov r0, sb
    movs r1, #0xe
    ldrsh r4, [r0, r1]
    movs r3, #0xe
    ldrsh r0, [r2, r3]
    subs r0, r4, r0
    str r0, [sp, #0x40]
    mov r0, sb
    adds r0, #0x26
    ldrb r0, [r0]
    str r0, [sp, #0x44]
    movs r0, #0x80
    lsls r0, r0, #8
    subs r0, r0, r4
    mov r8, r0
    ldr r0, [sp, #0x44]
    cmp r0, #0
    beq _080385FC
    movs r1, #1
    rsbs r1, r1, #0
    add r8, r1
_080385FC:
    add r0, sp, #0x34
    mov r2, sl
    ldr r1, [r2]
    ldr r2, [r2, #8]
    str r1, [sp, #0x34]
    str r2, [r0, #4]
    ldr r3, [sp, #0x40]
    str r3, [sp, #0x48]
    movs r7, #2
    ldr r0, [sp, #0x44]
    cmp r0, #0
    bne _08038646
    mov r0, sb
    bl func_0803836C
    ldr r1, [sp, #0x40]
    subs r1, r1, r0
    str r1, [sp, #0x48]
    cmp r0, #0xf
    ble _08038646
    mov r2, sb
    ldrh r0, [r2, #4]
    cmp r0, #8
    bgt _08038644
    cmp r0, #2
    bne _08038646
    ldr r3, _080386AC @ =0xFFFFFEF0
    adds r1, r6, r3
    ldr r0, _080386B0 @ =0x000002AF
    cmp r1, r0
    bhi _08038646
    cmp r4, #0xaf
    ble _08038646
    subs r0, #0x60
    cmp r4, r0
    bgt _08038646
_08038644:
    movs r7, #1
_08038646:
    adds r6, r5, #0
    adds r6, #8
    mov r0, sp
    adds r0, #0x34
    str r0, [sp, #0x4c]
    adds r0, r7, #0
    lsls r4, r0, #2
    orrs r4, r0
    lsls r1, r0, #4
    orrs r4, r1
    lsls r0, r0, #6
    orrs r4, r0
    ldr r1, [r5, #0x30]
    ldr r3, [r1]
    ldrh r2, [r5, #0x3c]
    lsls r2, r2, #2
    ldr r0, [r5, #0x34]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    ldr r1, [sp, #0x4c]
    ldr r3, [r1, #4]
    ldr r2, [r5, #8]
    ldr r1, [r5, #0x10]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _080386B8
    ldrh r0, [r6, #0xc]
    adds r1, r5, #0
    adds r1, #0x18
    mov r5, r8
    str r5, [sp]
    adds r5, r7, #0
    str r5, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    adds r0, r3, #0
    ldr r1, [sp, #0x3c]
    ldr r2, [sp, #0x48]
    adds r3, r4, #0
    ldr r4, _080386B4 @ =func_030004DC
    bl _call_via_r4
    b _080386BA
    .align 2, 0
_080386AC: .4byte 0xFFFFFEF0
_080386B0: .4byte 0x000002AF
_080386B4: .4byte func_030004DC
_080386B8:
    movs r0, #0
_080386BA:
    cmp r0, #0
    beq _0803870E
    adds r0, r6, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r5, r0, #0
    cmp r1, #0
    beq _0803870E
    ldr r0, [sp, #0x4c]
    ldr r1, [r0]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _080386F0
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    b _0803870A
_080386F0:
    adds r4, r6, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _0803870A
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_0803870A:
    movs r0, #0
    strb r0, [r5]
_0803870E:
    ldr r1, [sp, #0x44]
    cmp r1, #0
    bne _08038730
    mov r2, sb
    ldr r0, [r2]
    ldr r1, [r0]
    ldr r1, [r1, #0x58]
    bl _call_via_r1
    mov r3, sl
    ldr r1, [r3, #8]
    ldr r5, [sp, #0x44]
    str r5, [sp]
    ldr r2, [sp, #0x3c]
    ldr r3, [sp, #0x40]
    bl func_0803AE58
_08038730:
    add sp, #0x50
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08038740
func_08038740: @ 0x08038740
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #8
    adds r6, r0, #0
    mov r8, r2
    mov r2, sp
    movs r5, #8
    ldrh r3, [r2]
    ldr r4, _08038798 @ =0xFFFFFC00
    adds r0, r4, #0
    ands r0, r3
    orrs r0, r5
    strh r0, [r2]
    ldrb r5, [r2, #1]
    movs r3, #3
    adds r0, r3, #0
    ands r0, r5
    strb r0, [r2, #1]
    ldrh r5, [r2, #2]
    adds r0, r4, #0
    ands r0, r5
    strh r0, [r2, #2]
    ldrb r0, [r2, #3]
    ands r3, r0
    strb r3, [r2, #3]
    ldrh r0, [r2, #4]
    ands r4, r0
    strh r4, [r2, #4]
    adds r0, r6, #0
    bl func_0801FD78
    ldr r0, _0803879C @ =vtable_unk_080E7380
    str r0, [r6, #0x14]
    mov r0, r8
    str r0, [r6, #0x18]
    adds r0, r6, #0
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08038798: .4byte 0xFFFFFC00
_0803879C: .4byte vtable_unk_080E7380

    thumb_func_start func_080387A0
func_080387A0: @ 0x080387A0
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x18
    bl __builtin_new
    adds r1, r4, #0
    bl func_08038820
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080387B8
func_080387B8: @ 0x080387B8
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    beq _080387C4
    bl func_08038DF0
_080387C4:
    pop {r0}
    bx r0

    thumb_func_start func_080387C8
func_080387C8: @ 0x080387C8
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    beq _080387D4
    bl func_08038E90
_080387D4:
    pop {r0}
    bx r0

    thumb_func_start func_080387D8
func_080387D8: @ 0x080387D8
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    bne _080387E4
    movs r0, #1
    b _080387E8
_080387E4:
    bl func_08038EA0
_080387E8:
    pop {r1}
    bx r1

    thumb_func_start func_080387EC
func_080387EC: @ 0x080387EC
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    beq _080387F8
    bl func_08038EB8
_080387F8:
    pop {r0}
    bx r0

    thumb_func_start func_080387FC
func_080387FC: @ 0x080387FC
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    beq _08038808
    bl func_08038EE0
_08038808:
    pop {r0}
    bx r0

    thumb_func_start func_0803880C
func_0803880C: @ 0x0803880C
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    bne _08038818
    movs r0, #0
    b _0803881C
_08038818:
    bl func_080390D0
_0803881C:
    pop {r1}
    bx r1

    thumb_func_start func_08038820
func_08038820: @ 0x08038820
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r7, r0, #0
    mov sb, r1
    str r1, [r7]
    ldr r0, _0803889C @ =vtable_unk_080E736C
    str r0, [r7, #4]
    ldr r0, [r1, #0x18]
    adds r0, #0x54
    ldrb r0, [r0]
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1e
    mov sl, r0
    cmp r0, #1
    bne _080388A4
    movs r0, #0x4c
    bl __builtin_new
    adds r6, r0, #0
    mov r0, sb
    ldr r4, [r0]
    ldr r0, [r4]
    ldr r1, [r0, #0x74]
    adds r0, r4, #0
    bl _call_via_r1
    adds r5, r0, #0
    adds r0, r6, #0
    adds r1, r4, #0
    movs r2, #6
    movs r3, #0x1b
    bl func_080A4740
    ldr r0, _080388A0 @ =vtable_unk_080E602C
    str r0, [r6, #0x24]
    movs r1, #0x28
    adds r1, r1, r6
    mov r8, r1
    ldr r4, [r5]
    mov r0, sp
    ldr r3, [r4, #0xc]
    adds r1, r5, #0
    movs r2, #0
    bl _call_via_r3
    ldr r0, [sp]
    ldrh r2, [r0]
    mov r0, r8
    ldr r3, [r4, #0x10]
    adds r1, r5, #0
    bl _call_via_r3
    adds r0, r6, #0
    adds r0, #0x48
    mov r5, sl
    strb r5, [r0]
    b _080388A6
    .align 2, 0
_0803889C: .4byte vtable_unk_080E736C
_080388A0: .4byte vtable_unk_080E602C
_080388A4:
    movs r6, #0
_080388A6:
    str r6, [r7, #8]
    movs r0, #0
    str r0, [r7, #0xc]
    str r0, [r7, #0x10]
    adds r4, r7, #0
    adds r4, #0x14
    str r0, [r7, #0x14]
    movs r0, #0xca
    lsls r0, r0, #1
    bl __builtin_new
    adds r3, r0, #0
    ldr r0, [r7]
    ldr r1, [r0]
    movs r2, #0
    mov r5, sb
    ldr r0, [r5, #0x18]
    adds r0, #0x5d
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne _080388D6
    movs r2, #1
_080388D6:
    adds r0, r3, #0
    bl func_080DCB7C
    mov sb, r4
    mov r8, r0
    ldr r6, [r7, #0x14]
    cmp r8, r6
    beq _08038910
    cmp r6, #0
    beq _08038910
    ldr r1, [r6]
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #4
    adds r0, #4
    adds r5, r6, r0
    adds r4, r6, #4
    cmp r4, r5
    beq _0803890A
_080388FC:
    adds r0, r4, #0
    movs r1, #2
    bl func_080A47B4
    adds r4, #0x50
    cmp r4, r5
    bne _080388FC
_0803890A:
    adds r0, r6, #0
    bl __builtin_delete
_08038910:
    mov r0, r8
    mov r1, sb
    str r0, [r1]
    adds r0, r7, #0
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08038928
func_08038928: @ 0x08038928
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    mov r8, r0
    ldr r0, [r0, #0x14]
    cmp r0, #0
    beq _0803898A
    adds r6, r0, #0
    movs r7, #0
    ldr r0, [r6]
    cmp r7, r0
    bhs _0803898A
    adds r4, r6, #0
    adds r4, #0x40
    adds r5, r6, #0
    adds r5, #0x2c
_0803894C:
    ldrb r0, [r4, #3]
    cmp r0, #0
    bne _08038964
    adds r0, r5, #0
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _08038968
    movs r0, #1
    strb r0, [r4]
    b _08038968
_08038964:
    movs r0, #0
    strb r0, [r4, #3]
_08038968:
    ldr r1, [r4, #4]
    ldr r0, [r4, #0xc]
    subs r1, r1, r0
    str r1, [r4, #4]
    ldrb r0, [r4, #0x10]
    lsls r0, r0, #0x10
    cmn r1, r0
    bge _0803897E
    movs r0, #0xf0
    lsls r0, r0, #0x11
    str r0, [r4, #4]
_0803897E:
    adds r4, #0x50
    adds r5, #0x50
    adds r7, #1
    ldr r0, [r6]
    cmp r7, r0
    blo _0803894C
_0803898A:
    mov r0, r8
    ldr r1, [r0, #0xc]
    cmp r1, #0
    beq _080389B2
    adds r3, r1, #0
    adds r3, #0x50
    ldrb r0, [r3]
    cmp r0, #0
    beq _080389B2
    ldr r0, [r1, #0x4c]
    ldr r2, _080389F4 @ =0xFFFF8000
    adds r0, r0, r2
    str r0, [r1, #0x4c]
    movs r2, #0xa8
    lsls r2, r2, #0x10
    cmp r0, r2
    bgt _080389B2
    str r2, [r1, #0x4c]
    movs r0, #0
    strb r0, [r3]
_080389B2:
    mov r1, r8
    ldr r0, [r1, #0x10]
    cmp r0, #0
    beq _08038A60
    movs r2, #0
    movs r7, #0
    movs r1, #0xa2
    lsls r1, r1, #1
    adds r5, r0, r1
    adds r4, r0, #0
    adds r4, #0x2c
    adds r6, r0, #0
    adds r6, #0x43
_080389CC:
    ldrb r1, [r5]
    cmp r1, #0
    bne _08038A08
    ldrb r0, [r4, #0x17]
    cmp r0, #0
    bne _080389F8
    adds r0, r4, #0
    str r2, [sp]
    bl func_0805E8F0
    adds r1, r0, #0
    lsls r0, r1, #0x1e
    ldr r2, [sp]
    cmp r0, #0
    bge _080389EE
    movs r0, #1
    strb r0, [r4, #0x14]
_080389EE:
    adds r0, r1, #0
    b _080389FC
    .align 2, 0
_080389F4: .4byte 0xFFFF8000
_080389F8:
    strb r1, [r6]
    movs r0, #2
_080389FC:
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge _08038A0A
    movs r0, #1
    strb r0, [r5]
    b _08038A0A
_08038A08:
    adds r2, #1
_08038A0A:
    adds r5, #1
    adds r4, #0x40
    adds r6, #0x40
    adds r7, #1
    cmp r7, #4
    bls _080389CC
    movs r0, #0
    cmp r2, #5
    bne _08038A1E
    movs r0, #1
_08038A1E:
    cmp r0, #0
    beq _08038A60
    mov r7, r8
    adds r7, #0x10
    movs r2, #0
    mov sb, r2
    mov r0, r8
    ldr r6, [r0, #0x10]
    cmp sb, r6
    beq _08038A5C
    cmp r6, #0
    beq _08038A5C
    ldr r0, [r6]
    lsls r0, r0, #6
    adds r0, #4
    adds r5, r6, r0
    adds r4, r6, #4
    cmp r4, r5
    beq _08038A56
_08038A44:
    ldr r0, [r4, #0x24]
    ldr r2, [r0, #8]
    adds r0, r4, #0
    movs r1, #2
    bl _call_via_r2
    adds r4, #0x40
    cmp r4, r5
    bne _08038A44
_08038A56:
    adds r0, r6, #0
    bl __builtin_delete
_08038A5C:
    mov r1, sb
    str r1, [r7]
_08038A60:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08038A70
func_08038A70: @ 0x08038A70
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x8c
    str r0, [sp, #0x5c]
    movs r2, #0xc
    ldrsh r0, [r1, r2]
    str r0, [sp, #0x60]
    movs r2, #0xe
    ldrsh r0, [r1, r2]
    str r0, [sp, #0x64]
    ldr r0, [r1]
    ldr r1, [r1, #8]
    str r0, [sp, #0x34]
    str r1, [sp, #0x38]
    ldr r1, [sp, #0x5c]
    ldr r0, [r1, #0x14]
    cmp r0, #0
    bne _08038A9C
    b _08038BA2
_08038A9C:
    str r0, [sp, #0x68]
    ldr r0, [sp, #0x34]
    ldr r1, [sp, #0x38]
    str r0, [sp, #0x6c]
    str r1, [sp, #0x70]
    movs r1, #0
    str r1, [sp, #0x74]
    ldr r2, [sp, #0x68]
    ldr r0, [r2]
    cmp r1, r0
    bhs _08038BA2
    adds r5, r2, #0
    adds r5, #0x40
    adds r2, #0x14
    str r2, [sp, #0x88]
    ldr r6, [sp, #0x68]
    adds r6, #4
_08038ABE:
    ldr r0, [sp, #0x6c]
    ldr r1, [sp, #0x70]
    str r0, [sp, #0x3c]
    str r1, [sp, #0x40]
    ldrb r0, [r5, #0x11]
    cmp r0, #0
    beq _08038B86
    movs r1, #6
    ldrsh r0, [r5, r1]
    ldr r2, [sp, #0x60]
    subs r2, r0, r2
    mov sb, r2
    movs r1, #8
    ldrsh r0, [r5, r1]
    ldr r2, [sp, #0x64]
    subs r4, r0, r2
    ldr r0, _08038B30 @ =0x00007FFF
    mov sl, r0
    add r1, sp, #0x3c
    mov r8, r1
    ldr r1, [r6, #0x28]
    ldr r3, [r1]
    ldrh r2, [r6, #0x34]
    lsls r2, r2, #2
    ldr r0, [r6, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    mov r2, r8
    ldr r3, [r2, #4]
    ldr r2, [r6]
    ldr r1, [r6, #8]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08038B38
    ldrh r0, [r6, #0xc]
    mov r1, sl
    str r1, [sp]
    adds r1, r7, #0
    str r1, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    ldr r2, [sp, #0x88]
    str r2, [sp, #0x10]
    adds r0, r3, #0
    mov r1, sb
    adds r2, r4, #0
    movs r3, #0xff
    ldr r4, _08038B34 @ =func_030004DC
    bl _call_via_r4
    b _08038B3A
    .align 2, 0
_08038B30: .4byte 0x00007FFF
_08038B34: .4byte func_030004DC
_08038B38:
    movs r0, #0
_08038B3A:
    cmp r0, #0
    beq _08038B82
    ldrb r0, [r5]
    adds r4, r5, #0
    cmp r0, #0
    beq _08038B82
    mov r0, r8
    ldr r1, [r0]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    ldrb r0, [r5, #1]
    cmp r0, #0
    beq _08038B68
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    b _08038B7E
_08038B68:
    ldrb r0, [r5, #2]
    cmp r0, #0
    bne _08038B7E
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r5, #2]
_08038B7E:
    movs r0, #0
    strb r0, [r4]
_08038B82:
    movs r0, #0
    b _08038B88
_08038B86:
    movs r0, #1
_08038B88:
    strb r0, [r5, #0x11]
    adds r5, #0x50
    ldr r1, [sp, #0x88]
    adds r1, #0x50
    str r1, [sp, #0x88]
    adds r6, #0x50
    ldr r2, [sp, #0x74]
    adds r2, #1
    str r2, [sp, #0x74]
    ldr r1, [sp, #0x68]
    ldr r0, [r1]
    cmp r2, r0
    blo _08038ABE
_08038BA2:
    ldr r2, [sp, #0x5c]
    ldr r0, [r2, #8]
    cmp r0, #0
    beq _08038C30
    adds r5, r0, #0
    ldr r0, [sp, #0x34]
    ldr r1, [sp, #0x38]
    str r0, [sp, #0x44]
    str r1, [sp, #0x48]
    movs r0, #0x96
    lsls r0, r0, #1
    ldr r1, [sp, #0x60]
    subs r1, r0, r1
    mov sb, r1
    movs r0, #0x64
    ldr r2, [sp, #0x64]
    subs r2, r0, r2
    mov r8, r2
    add r7, sp, #0x44
    adds r6, r5, #0
    adds r6, #0x28
    ldr r4, [r7, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08038C04
    ldrh r1, [r5, #0xc]
    adds r2, r5, #0
    adds r2, #0x10
    movs r0, #0x80
    lsls r0, r0, #8
    str r0, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, sb
    mov r2, r8
    movs r3, #0xff
    ldr r4, _08038C00 @ =func_030004DC
    bl _call_via_r4
    b _08038C06
    .align 2, 0
_08038C00: .4byte func_030004DC
_08038C04:
    movs r0, #0
_08038C06:
    cmp r0, #0
    beq _08038C30
    adds r4, r5, #0
    adds r4, #0x48
    ldrb r0, [r4]
    cmp r0, #0
    beq _08038C30
    ldr r1, [r7]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #0
    strb r0, [r4]
_08038C30:
    ldr r1, [sp, #0x5c]
    ldr r0, [r1, #0xc]
    cmp r0, #0
    beq _08038CC8
    adds r5, r0, #0
    ldr r0, [sp, #0x34]
    ldr r1, [sp, #0x38]
    str r0, [sp, #0x4c]
    str r1, [sp, #0x50]
    adds r0, r5, #0
    adds r0, #0x51
    ldrb r0, [r0]
    lsls r0, r0, #3
    ldr r1, [sp, #0x60]
    subs r1, #0xf0
    subs r0, r0, r1
    mov sb, r0
    ldr r0, [r5, #0x4c]
    asrs r0, r0, #0x10
    ldr r2, [sp, #0x64]
    subs r2, r0, r2
    mov r8, r2
    add r7, sp, #0x4c
    adds r6, r5, #0
    adds r6, #0x28
    ldr r4, [r7, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08038C9C
    ldrh r1, [r5, #0xc]
    adds r2, r5, #0
    adds r2, #0x10
    movs r0, #0x80
    lsls r0, r0, #8
    str r0, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, sb
    mov r2, r8
    movs r3, #0xff
    ldr r4, _08038C98 @ =func_030004DC
    bl _call_via_r4
    b _08038C9E
    .align 2, 0
_08038C98: .4byte func_030004DC
_08038C9C:
    movs r0, #0
_08038C9E:
    cmp r0, #0
    beq _08038CC8
    adds r4, r5, #0
    adds r4, #0x48
    ldrb r0, [r4]
    cmp r0, #0
    beq _08038CC8
    ldr r1, [r7]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #0
    bl func_080A4944
    movs r0, #0
    strb r0, [r4]
_08038CC8:
    ldr r1, [sp, #0x5c]
    ldr r0, [r1, #0x10]
    cmp r0, #0
    bne _08038CD2
    b _08038DE0
_08038CD2:
    str r0, [sp, #0x78]
    ldr r0, [sp, #0x34]
    ldr r1, [sp, #0x38]
    str r0, [sp, #0x54]
    str r1, [sp, #0x58]
    movs r2, #0
    str r2, [sp, #0x7c]
    ldr r0, [sp, #0x78]
    adds r0, #0x14
    str r0, [sp, #0x80]
    ldr r1, _08038D68 @ =0x080F165E
    str r1, [sp, #0x84]
    ldr r5, [sp, #0x78]
    adds r5, #4
_08038CEE:
    ldr r2, [sp, #0x78]
    movs r1, #0xa2
    lsls r1, r1, #1
    adds r0, r2, r1
    ldr r2, [sp, #0x7c]
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0
    bne _08038DC8
    ldr r1, [sp, #0x84]
    ldrh r0, [r1]
    ldr r2, [sp, #0x60]
    subs r2, r0, r2
    mov sb, r2
    ldrh r0, [r1, #2]
    ldr r1, [sp, #0x64]
    subs r4, r0, r1
    adds r6, r5, #0
    movs r2, #0x80
    lsls r2, r2, #8
    mov sl, r2
    add r0, sp, #0x54
    mov r8, r0
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    mov r1, r8
    ldr r3, [r1, #4]
    ldr r2, [r5]
    ldr r1, [r5, #8]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08038D70
    ldrh r0, [r5, #0xc]
    mov r1, sl
    str r1, [sp]
    adds r1, r7, #0
    str r1, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    ldr r2, [sp, #0x80]
    str r2, [sp, #0x10]
    adds r0, r3, #0
    mov r1, sb
    adds r2, r4, #0
    movs r3, #0xff
    ldr r4, _08038D6C @ =func_030004DC
    bl _call_via_r4
    b _08038D72
    .align 2, 0
_08038D68: .4byte 0x080F165E
_08038D6C: .4byte func_030004DC
_08038D70:
    movs r0, #0
_08038D72:
    cmp r0, #0
    beq _08038DC8
    adds r0, r6, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    mov sb, r0
    cmp r1, #0
    beq _08038DC8
    mov r0, r8
    ldr r1, [r0]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _08038DA8
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    b _08038DC2
_08038DA8:
    adds r4, r6, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _08038DC2
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_08038DC2:
    movs r0, #0
    mov r1, sb
    strb r0, [r1]
_08038DC8:
    ldr r2, [sp, #0x80]
    adds r2, #0x40
    str r2, [sp, #0x80]
    ldr r0, [sp, #0x84]
    adds r0, #4
    str r0, [sp, #0x84]
    adds r5, #0x40
    ldr r1, [sp, #0x7c]
    adds r1, #1
    str r1, [sp, #0x7c]
    cmp r1, #4
    bls _08038CEE
_08038DE0:
    add sp, #0x8c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08038DF0
func_08038DF0: @ 0x08038DF0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    mov r8, r0
    movs r0, #0x54
    bl __builtin_new
    adds r7, r0, #0
    mov r1, r8
    ldr r0, [r1]
    ldr r4, [r0]
    ldr r0, [r4]
    ldr r1, [r0, #0x70]
    adds r0, r4, #0
    bl _call_via_r1
    adds r5, r0, #0
    adds r0, r7, #0
    adds r1, r4, #0
    movs r2, #6
    movs r3, #0x1b
    bl func_080A4740
    ldr r0, _08038E8C @ =vtable_unk_080E602C
    str r0, [r7, #0x24]
    adds r6, r7, #0
    adds r6, #0x28
    ldr r4, [r5]
    mov r0, sp
    ldr r3, [r4, #0xc]
    adds r1, r5, #0
    movs r2, #0
    bl _call_via_r3
    ldr r0, [sp]
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r4, #0x10]
    adds r1, r5, #0
    bl _call_via_r3
    adds r1, r7, #0
    adds r1, #0x48
    movs r2, #0
    movs r0, #1
    strb r0, [r1]
    movs r0, #0x90
    lsls r0, r0, #0x11
    str r0, [r7, #0x4c]
    adds r0, r7, #0
    adds r0, #0x50
    strb r2, [r0]
    adds r0, #1
    strb r2, [r0]
    mov r5, r8
    adds r5, #0xc
    adds r6, r7, #0
    mov r0, r8
    ldr r4, [r0, #0xc]
    cmp r6, r4
    beq _08038E7E
    cmp r4, #0
    beq _08038E7E
    adds r0, r4, #0
    movs r1, #2
    bl func_080A47B4
    adds r0, r4, #0
    bl __builtin_delete
_08038E7E:
    str r6, [r5]
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08038E8C: .4byte vtable_unk_080E602C

    thumb_func_start func_08038E90
func_08038E90: @ 0x08038E90
    ldr r0, [r0, #0xc]
    movs r1, #0x90
    lsls r1, r1, #0x11
    str r1, [r0, #0x4c]
    adds r0, #0x50
    movs r1, #1
    strb r1, [r0]
    bx lr

    thumb_func_start func_08038EA0
func_08038EA0: @ 0x08038EA0
    push {lr}
    ldr r0, [r0, #0xc]
    movs r1, #0
    adds r0, #0x50
    ldrb r0, [r0]
    cmp r0, #0
    bne _08038EB0
    movs r1, #1
_08038EB0:
    adds r0, r1, #0
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08038EB8
func_08038EB8: @ 0x08038EB8
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r5, #0xc
    movs r6, #0
    ldr r4, [r0, #0xc]
    cmp r6, r4
    beq _08038ED8
    cmp r4, #0
    beq _08038ED8
    adds r0, r4, #0
    movs r1, #2
    bl func_080A47B4
    adds r0, r4, #0
    bl __builtin_delete
_08038ED8:
    str r6, [r5]
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_08038EE0
func_08038EE0: @ 0x08038EE0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x4c
    mov sb, r0
    movs r0, #0xa6
    lsls r0, r0, #1
    bl __builtin_new
    mov r2, sb
    ldr r1, [r2]
    adds r5, r0, #0
    ldr r6, [r1]
    movs r0, #0
    str r0, [r5]
    mov sl, r0
    add r3, sp, #8
    mov r8, r3
_08038F08:
    mov r7, sl
    lsls r0, r7, #2
    ldr r1, _08038F14 @ =_08038F18
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08038F14: .4byte _08038F18
_08038F18: @ jump table
    .4byte _08038F2C @ case 0
    .4byte _08038F4C @ case 1
    .4byte _08038F4C @ case 2
    .4byte _08038FDC @ case 3
    .4byte _08038FDC @ case 4
_08038F2C:
    ldr r0, [r6]
    ldr r1, [r0, #0x78]
    adds r0, r6, #0
    bl _call_via_r1
    adds r1, r0, #0
    movs r0, #4
    str r0, [sp]
    movs r0, #0x1c
    str r0, [sp, #4]
    movs r0, #0
    mov r2, r8
    strb r0, [r2]
    add r0, sp, #0xc
    movs r2, #2
    b _08038F6A
_08038F4C:
    ldr r0, [r6]
    ldr r1, [r0, #0x78]
    adds r0, r6, #0
    bl _call_via_r1
    adds r1, r0, #0
    movs r0, #4
    str r0, [sp]
    movs r0, #0x1c
    str r0, [sp, #4]
    movs r0, #0
    mov r2, r8
    strb r0, [r2]
    add r0, sp, #0xc
    movs r2, #1
_08038F6A:
    adds r3, r6, #0
    bl func_080A4A00
    ldr r0, [r5]
    cmp r0, #4
    bhi _08038FCC
    lsls r0, r0, #6
    adds r0, #4
    adds r4, r5, r0
    cmp r4, #0
    beq _08038FC6
    adds r0, r4, #0
    add r1, sp, #0xc
    bl func_080DC840
    ldr r0, _08038FD8 @ =vtable_unk_080E681C
    str r0, [r4, #0x24]
    adds r1, r4, #0
    adds r1, #0x28
    add r0, sp, #0x34
    ldm r0!, {r2, r3, r7}
    stm r1!, {r2, r3, r7}
    ldm r0!, {r3, r7}
    stm r1!, {r3, r7}
    add r0, sp, #0x48
    ldrb r1, [r0]
    adds r0, r4, #0
    adds r0, #0x3c
    strb r1, [r0]
    mov r0, sp
    adds r0, #0x49
    ldrb r0, [r0]
    adds r1, r4, #0
    adds r1, #0x3d
    strb r0, [r1]
    mov r0, sp
    adds r0, #0x4a
    ldrb r0, [r0]
    adds r1, #1
    strb r0, [r1]
    mov r0, sp
    adds r0, #0x4b
    ldrb r1, [r0]
    adds r0, r4, #0
    adds r0, #0x3f
    strb r1, [r0]
_08038FC6:
    ldr r0, [r5]
    adds r0, #1
    str r0, [r5]
_08038FCC:
    add r0, sp, #0xc
    movs r1, #2
    bl func_080A47B4
    b _08039064
    .align 2, 0
_08038FD8: .4byte vtable_unk_080E681C
_08038FDC:
    ldr r0, [r6]
    ldr r1, [r0, #0x78]
    adds r0, r6, #0
    bl _call_via_r1
    adds r1, r0, #0
    movs r0, #4
    str r0, [sp]
    movs r0, #0x1c
    str r0, [sp, #4]
    movs r0, #0
    mov r2, r8
    strb r0, [r2]
    add r0, sp, #0xc
    movs r2, #0
    adds r3, r6, #0
    bl func_080A4A00
    ldr r0, [r5]
    cmp r0, #4
    bhi _0803905C
    lsls r0, r0, #6
    adds r0, #4
    adds r4, r5, r0
    cmp r4, #0
    beq _08039056
    adds r0, r4, #0
    add r1, sp, #0xc
    bl func_080DC840
    ldr r0, _080390CC @ =vtable_unk_080E681C
    str r0, [r4, #0x24]
    adds r1, r4, #0
    adds r1, #0x28
    add r0, sp, #0x34
    ldm r0!, {r2, r3, r7}
    stm r1!, {r2, r3, r7}
    ldm r0!, {r3, r7}
    stm r1!, {r3, r7}
    add r0, sp, #0x48
    ldrb r1, [r0]
    adds r0, r4, #0
    adds r0, #0x3c
    strb r1, [r0]
    mov r0, sp
    adds r0, #0x49
    ldrb r0, [r0]
    adds r1, r4, #0
    adds r1, #0x3d
    strb r0, [r1]
    mov r0, sp
    adds r0, #0x4a
    ldrb r0, [r0]
    adds r1, #1
    strb r0, [r1]
    mov r0, sp
    adds r0, #0x4b
    ldrb r1, [r0]
    adds r0, r4, #0
    adds r0, #0x3f
    strb r1, [r0]
_08039056:
    ldr r0, [r5]
    adds r0, #1
    str r0, [r5]
_0803905C:
    add r0, sp, #0xc
    movs r1, #2
    bl func_080A47B4
_08039064:
    movs r1, #0xa2
    lsls r1, r1, #1
    adds r0, r5, r1
    add r0, sl
    movs r1, #0
    strb r1, [r0]
    movs r2, #1
    add sl, r2
    mov r3, sl
    cmp r3, #4
    bhi _0803907C
    b _08038F08
_0803907C:
    movs r7, #0x10
    add r7, sb
    mov r8, r7
    adds r7, r5, #0
    mov r0, sb
    ldr r6, [r0, #0x10]
    cmp r7, r6
    beq _080390B6
    cmp r6, #0
    beq _080390B6
    ldr r0, [r6]
    lsls r0, r0, #6
    adds r0, #4
    adds r5, r6, r0
    adds r4, r6, #4
    cmp r4, r5
    beq _080390B0
_0803909E:
    ldr r0, [r4, #0x24]
    ldr r2, [r0, #8]
    adds r0, r4, #0
    movs r1, #2
    bl _call_via_r2
    adds r4, #0x40
    cmp r4, r5
    bne _0803909E
_080390B0:
    adds r0, r6, #0
    bl __builtin_delete
_080390B6:
    mov r1, r8
    str r7, [r1]
    add sp, #0x4c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080390CC: .4byte vtable_unk_080E681C

    thumb_func_start func_080390D0
func_080390D0: @ 0x080390D0
    ldr r1, [r0, #0x10]
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
    bx lr
    .align 2, 0
_080390DC:
    .byte 0x10, 0xB5, 0x04, 0x1C
    .byte 0x30, 0x30, 0x25, 0xF0, 0xBD, 0xFB, 0x20, 0x1C, 0x44, 0x30, 0x00, 0x22, 0x01, 0x21, 0x01, 0x70
    .byte 0x02, 0x30, 0x02, 0x70, 0x01, 0x30, 0x01, 0x70, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
    .byte 0x26, 0x30, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00, 0xCB, 0x1F, 0x03, 0x80, 0x13, 0x1F, 0x43, 0x80
    .byte 0x07, 0x31, 0x81, 0x80, 0x05, 0x32, 0xC2, 0x80, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x80, 0x69
    .byte 0xD6, 0xF7, 0x56, 0xFF, 0x00, 0x21, 0x1E, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x08, 0x1C, 0x02, 0xBC
    .byte 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_08039134
func_08039134: @ 0x08039134
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r6, r0, #0
    str r1, [sp]
    mov sl, r2
    mov sb, r3
    movs r7, #0x64
    movs r0, #0
    mov r8, r0
    movs r5, #0x2e
_08039150:
    ldr r0, [r6]
    ldr r2, [r0, #0x40]
    adds r0, r6, #0
    adds r1, r5, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _080391A6
    ldrh r0, [r4, #4]
    ldr r1, [sp]
    cmp r0, r1
    bne _080391A6
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x60]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080391A6
    movs r2, #0xa
    ldrsh r1, [r4, r2]
    mov r0, sl
    subs r1, r1, r0
    movs r2, #0xe
    ldrsh r0, [r4, r2]
    mov r2, sb
    subs r0, r0, r2
    adds r2, r1, #0
    muls r2, r1, r2
    adds r1, r2, #0
    adds r2, r0, #0
    muls r2, r0, r2
    adds r0, r2, #0
    adds r0, r1, r0
    adds r1, r0, #0
    cmp r7, #0x64
    beq _080391A2
    cmp r8, r0
    ble _080391A6
_080391A2:
    adds r7, r5, #0
    mov r8, r1
_080391A6:
    adds r5, #1
    cmp r5, #0x45
    ble _08039150
    adds r0, r7, #0
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080391C0
func_080391C0: @ 0x080391C0
    push {lr}
    adds r2, r0, #0
    cmp r1, #0x38
    bgt _080391D4
    ldr r0, _080391EC @ =0x00000143
    cmp r2, r0
    ble _080391D4
    adds r0, #0x21
    cmp r2, r0
    ble _080391E6
_080391D4:
    ldr r0, _080391F0 @ =0x0000027F
    cmp r1, r0
    ble _080391F4
    cmp r2, #0xf7
    ble _080391F4
    movs r0, #0x8c
    lsls r0, r0, #1
    cmp r2, r0
    bgt _080391F4
_080391E6:
    movs r0, #1
    b _080391F6
    .align 2, 0
_080391EC: .4byte 0x00000143
_080391F0: .4byte 0x0000027F
_080391F4:
    movs r0, #0
_080391F6:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080391FC
func_080391FC: @ 0x080391FC
    bx lr
    .align 2, 0

    thumb_func_start func_08039200
func_08039200: @ 0x08039200
    movs r0, #0
    bx lr

    thumb_func_start func_08039204
func_08039204: @ 0x08039204
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    adds r5, r1, #0
    str r2, [sp, #0x10]
    ldr r0, [r5, #0x34]
    mov r8, r0
    mov r1, r8
    adds r1, #0x10
    str r1, [sp, #0x14]
    mov r2, r8
    ldrh r4, [r2, #0x10]
    cmp r4, #0
    beq _08039228
    subs r4, #1
_08039228:
    ldrh r3, [r5, #4]
    mov ip, r3
    movs r1, #0xa
    ldrsh r0, [r5, r1]
    mov sb, r0
    movs r2, #0xe
    ldrsh r7, [r5, r2]
    movs r0, #0xb0
    lsls r0, r0, #1
    cmp r7, r0
    ble _0803924A
    add r3, sp, #8
    movs r1, #0x84
    lsls r1, r1, #1
    movs r2, #0xb4
    lsls r2, r2, #2
    b _08039254
_0803924A:
    add r3, sp, #8
    movs r1, #0xaa
    lsls r1, r1, #1
    movs r2, #0x10
    rsbs r2, r2, #0
_08039254:
    adds r0, r3, #0
    strh r1, [r0]
    strh r2, [r3, #2]
    add r1, sp, #8
    adds r0, r1, #0
    movs r2, #0
    ldrsh r3, [r0, r2]
    mov sl, r3
    movs r3, #2
    ldrsh r6, [r1, r3]
    mov r0, ip
    cmp r0, #2
    bne _080392EA
    mov r1, sl
    mov r2, sb
    subs r0, r1, r2
    cmp r0, #0
    bge _0803927A
    rsbs r0, r0, #0
_0803927A:
    cmp r0, #0xf
    bgt _0803928A
    subs r0, r6, r7
    cmp r0, #0
    bge _08039286
    rsbs r0, r0, #0
_08039286:
    cmp r0, #0xf
    ble _080392EA
_0803928A:
    cmp r4, #0
    bne _080392E4
    mov r0, sb
    adds r1, r7, #0
    bl func_080391C0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080392B6
    movs r1, #0
    cmp r7, r6
    blt _080392A4
    movs r1, #1
_080392A4:
    adds r0, r5, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r1
    beq _080392DC
    adds r0, r5, #0
    bl func_08032198
    b _080392DC
_080392B6:
    adds r4, r5, #0
    adds r4, #0x20
    ldrb r0, [r4]
    ldr r3, [sp, #0x10]
    str r3, [sp]
    str r0, [sp, #4]
    mov r0, sb
    adds r1, r7, #0
    mov r2, sl
    adds r3, r6, #0
    bl func_080ABC40
    adds r1, r0, #0
    ldrb r0, [r4]
    cmp r0, r1
    beq _080392DC
    adds r0, r5, #0
    bl func_08032198
_080392DC:
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
_080392E4:
    ldr r0, [sp, #0x14]
    strh r4, [r0]
    b _080392FC
_080392EA:
    adds r0, r5, #0
    movs r1, #0x8d
    lsls r1, r1, #2
    bl func_0801FF38
    add r1, sp, #0xc
    mov r0, r8
    bl func_0809C098
_080392FC:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0803930C
func_0803930C: @ 0x0803930C
    movs r0, #1
    bx lr

    thumb_func_start func_08039310
func_08039310: @ 0x08039310
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x2c
    adds r5, r1, #0
    str r2, [sp, #0x1c]
    ldr r0, [r5, #0x34]
    str r0, [sp, #0x20]
    adds r0, #0x10
    mov r8, r0
    ldr r3, [r5]
    ldrb r1, [r0, #6]
    str r1, [sp, #0x24]
    ldr r2, [sp, #0x20]
    ldrh r6, [r2, #0x10]
    cmp r6, #0
    beq _08039344
    subs r6, #1
    cmp r6, #0
    bne _08039344
    cmp r1, #0
    beq _08039344
    subs r1, #1
    str r1, [sp, #0x24]
_08039344:
    ldr r0, [r3]
    mov r2, r8
    ldrb r1, [r2, #7]
    ldr r2, [r0, #0x40]
    adds r0, r3, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    bne _0803935A
    b _08039488
_0803935A:
    ldrh r0, [r4, #4]
    ldrh r3, [r5, #4]
    cmp r0, r3
    beq _08039364
    b _08039488
_08039364:
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x60]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08039376
    b _08039488
_08039376:
    movs r0, #0xa
    ldrsh r2, [r5, r0]
    movs r1, #0xe
    ldrsh r7, [r5, r1]
    movs r0, #0xa
    ldrsh r3, [r4, r0]
    mov sl, r3
    movs r3, #0xe
    ldrsh r1, [r4, r3]
    mov sb, r1
    ldr r0, [sp, #0x24]
    cmp r0, #0
    beq _08039444
    mov r1, sl
    subs r0, r1, r2
    cmp r0, #0
    bge _0803939A
    rsbs r0, r0, #0
_0803939A:
    cmp r0, #0xf
    bgt _080393AC
    mov r3, sb
    subs r0, r3, r7
    cmp r0, #0
    bge _080393A8
    rsbs r0, r0, #0
_080393A8:
    cmp r0, #0xf
    ble _08039444
_080393AC:
    cmp r6, #0
    beq _080393D4
    mov r1, r8
    movs r3, #2
    ldrsh r0, [r1, r3]
    subs r0, r0, r2
    cmp r0, #0
    bge _080393BE
    rsbs r0, r0, #0
_080393BE:
    cmp r0, #0xf
    bgt _08039438
    mov r1, r8
    movs r3, #4
    ldrsh r0, [r1, r3]
    subs r0, r0, r7
    cmp r0, #0
    bge _080393D0
    rsbs r0, r0, #0
_080393D0:
    cmp r0, #0xf
    bgt _08039438
_080393D4:
    adds r0, r2, #0
    adds r1, r7, #0
    str r2, [sp, #0x28]
    bl func_080391C0
    lsls r0, r0, #0x18
    ldr r2, [sp, #0x28]
    cmp r0, #0
    beq _08039400
    movs r1, #0
    cmp r7, sb
    blt _080393EE
    movs r1, #1
_080393EE:
    adds r0, r5, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r1
    beq _08039426
    adds r0, r5, #0
    bl func_08032198
    b _08039426
_08039400:
    adds r4, r5, #0
    adds r4, #0x20
    ldrb r0, [r4]
    ldr r6, [sp, #0x1c]
    str r6, [sp]
    str r0, [sp, #4]
    adds r0, r2, #0
    adds r1, r7, #0
    mov r2, sl
    mov r3, sb
    bl func_080ABC40
    adds r1, r0, #0
    ldrb r0, [r4]
    cmp r0, r1
    beq _08039426
    adds r0, r5, #0
    bl func_08032198
_08039426:
    movs r0, #0x1e
    bl func_080AB788
    adds r6, r0, #1
    mov r1, sl
    mov r0, r8
    strh r1, [r0, #2]
    mov r2, sb
    strh r2, [r0, #4]
_08039438:
    add r3, sp, #0x24
    ldrb r0, [r3]
    mov r3, r8
    strb r0, [r3, #6]
    strh r6, [r3]
    b _08039548
_08039444:
    ldr r1, _0803947C @ =0xFFFF0000
    ldr r0, [sp, #8]
    ands r0, r1
    movs r1, #0x24
    orrs r0, r1
    ldr r1, _08039480 @ =0xFF00FFFF
    ands r0, r1
    movs r1, #0x80
    lsls r1, r1, #9
    orrs r0, r1
    str r0, [sp, #8]
    mov r6, r8
    ldrb r1, [r6, #7]
    lsls r1, r1, #0x18
    ldr r2, _08039484 @ =0x00FFFFFF
    ands r0, r2
    orrs r0, r1
    str r0, [sp, #8]
    ldr r0, [sp, #0x20]
    add r1, sp, #8
    bl func_0809C0BC
    adds r0, r5, #0
    movs r1, #0xab
    bl func_080200C4
    b _08039548
    .align 2, 0
_0803947C: .4byte 0xFFFF0000
_08039480: .4byte 0xFF00FFFF
_08039484: .4byte 0x00FFFFFF
_08039488:
    ldr r4, [r5, #0x34]
    movs r6, #0x64
    adds r0, r4, #0
    bl func_0809C060
    cmp r0, #0
    beq _080394AA
    ldr r0, [r5]
    ldrh r1, [r5, #4]
    movs r3, #0xa
    ldrsh r2, [r5, r3]
    movs r6, #0xe
    ldrsh r3, [r5, r6]
    bl func_08039134
    adds r6, r0, #0
    b _080394B2
_080394AA:
    adds r0, r5, #0
    movs r1, #0xaa
    bl func_080200C4
_080394B2:
    cmp r6, #0x64
    beq _08039534
    movs r0, #0x64
    bl func_080AB788
    cmp r0, #0x45
    bhi _080394FC
    ldr r1, _080394F0 @ =0xFFFF0000
    ldr r0, [sp, #0xc]
    ands r0, r1
    str r0, [sp, #0xc]
    movs r0, #8
    bl func_080AB788
    adds r0, #3
    lsls r0, r0, #0x18
    lsrs r0, r0, #8
    ldr r3, _080394F4 @ =0xFF00FFFF
    add r1, sp, #0xc
    ldr r2, [r1, #4]
    ands r2, r3
    orrs r2, r0
    lsls r3, r6, #0x18
    ldr r0, _080394F8 @ =0x00FFFFFF
    ands r2, r0
    orrs r2, r3
    str r2, [r1, #4]
    adds r0, r4, #0
    bl func_0809C0AC
    b _08039548
    .align 2, 0
_080394F0: .4byte 0xFFFF0000
_080394F4: .4byte 0xFF00FFFF
_080394F8: .4byte 0x00FFFFFF
_080394FC:
    movs r0, #0x3c
    bl func_080AB788
    adds r0, #0x78
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, _08039528 @ =0xFFFF0000
    ldr r1, [sp, #0x14]
    ands r1, r2
    orrs r1, r0
    ldr r0, _0803952C @ =0xFF00FFFF
    ands r1, r0
    lsls r2, r6, #0x18
    ldr r0, _08039530 @ =0x00FFFFFF
    ands r1, r0
    orrs r1, r2
    str r1, [sp, #0x14]
    add r1, sp, #0x14
    adds r0, r4, #0
    bl func_0809C0BC
    b _08039548
    .align 2, 0
_08039528: .4byte 0xFFFF0000
_0803952C: .4byte 0xFF00FFFF
_08039530: .4byte 0x00FFFFFF
_08039534:
    ldr r1, _08039558 @ =0xFFFF0000
    ldr r0, [sp, #0x18]
    ands r0, r1
    movs r1, #0xb4
    orrs r0, r1
    str r0, [sp, #0x18]
    add r1, sp, #0x18
    adds r0, r4, #0
    bl func_0809C0A0
_08039548:
    add sp, #0x2c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08039558: .4byte 0xFFFF0000

    thumb_func_start func_0803955C
func_0803955C: @ 0x0803955C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    adds r5, r1, #0
    ldr r0, [r5, #0x34]
    mov r8, r0
    mov r6, r8
    adds r6, #0x10
    mov r1, r8
    ldrh r4, [r1, #0x10]
    cmp r4, #0
    beq _08039582
    subs r4, #1
    cmp r4, #0
    beq _08039582
    b _080396E2
_08039582:
    ldrb r0, [r6, #2]
    cmp r0, #0
    bne _0803958A
    b _080396D4
_0803958A:
    ldr r4, [r5]
    ldrh r7, [r5, #4]
    movs r3, #0xa
    ldrsh r2, [r5, r3]
    mov sb, r2
    movs r1, #0xe
    ldrsh r0, [r5, r1]
    mov sl, r0
    adds r0, r4, #0
    adds r1, r7, #0
    mov r3, sl
    bl func_08039134
    adds r1, r0, #0
    cmp r1, #0x64
    bne _080395AC
    ldrb r1, [r6, #3]
_080395AC:
    ldr r0, [r4]
    ldr r2, [r0, #0x40]
    adds r0, r4, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _08039602
    ldrh r0, [r4, #4]
    cmp r0, r7
    bne _08039602
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x60]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08039602
    movs r2, #0xa
    ldrsh r0, [r4, r2]
    movs r3, #0xe
    ldrsh r1, [r4, r3]
    mov r6, sb
    subs r0, r0, r6
    cmp r0, #0
    bge _080395E4
    rsbs r0, r0, #0
_080395E4:
    cmp r0, #0xf
    bgt _08039602
    mov r0, sl
    subs r3, r1, r0
    cmp r3, #0
    bge _080395F2
    rsbs r3, r3, #0
_080395F2:
    cmp r3, #0xf
    bgt _08039602
    ldr r0, [r4, #0x14]
    adds r0, #0x80
    ldr r1, [r0]
    adds r0, r4, #0
    bl _call_via_r1
_08039602:
    mov r0, r8
    movs r1, #4
    bl func_0809C068
    ldr r4, [r5, #0x34]
    movs r6, #0x64
    adds r0, r4, #0
    bl func_0809C060
    cmp r0, #0
    beq _0803962C
    ldr r0, [r5]
    ldrh r1, [r5, #4]
    movs r3, #0xa
    ldrsh r2, [r5, r3]
    movs r6, #0xe
    ldrsh r3, [r5, r6]
    bl func_08039134
    adds r6, r0, #0
    b _08039634
_0803962C:
    adds r0, r5, #0
    movs r1, #0xaa
    bl func_080200C4
_08039634:
    cmp r6, #0x64
    beq _080396B8
    movs r0, #0x64
    bl func_080AB788
    cmp r0, #0x45
    bhi _08039680
    ldr r1, _08039674 @ =0xFFFF0000
    ldr r0, [sp]
    ands r0, r1
    str r0, [sp]
    movs r0, #8
    bl func_080AB788
    adds r0, #3
    lsls r0, r0, #0x18
    lsrs r0, r0, #8
    ldr r2, _08039678 @ =0xFF00FFFF
    ldr r1, [sp, #4]
    ands r1, r2
    orrs r1, r0
    lsls r2, r6, #0x18
    ldr r0, _0803967C @ =0x00FFFFFF
    ands r1, r0
    orrs r1, r2
    str r1, [sp, #4]
    adds r0, r4, #0
    mov r1, sp
    bl func_0809C0AC
    b _080396E4
    .align 2, 0
_08039674: .4byte 0xFFFF0000
_08039678: .4byte 0xFF00FFFF
_0803967C: .4byte 0x00FFFFFF
_08039680:
    movs r0, #0x3c
    bl func_080AB788
    adds r0, #0x78
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, _080396AC @ =0xFFFF0000
    ldr r1, [sp, #8]
    ands r1, r2
    orrs r1, r0
    ldr r0, _080396B0 @ =0xFF00FFFF
    ands r1, r0
    lsls r2, r6, #0x18
    ldr r0, _080396B4 @ =0x00FFFFFF
    ands r1, r0
    orrs r1, r2
    str r1, [sp, #8]
    add r1, sp, #8
    adds r0, r4, #0
    bl func_0809C0BC
    b _080396E4
    .align 2, 0
_080396AC: .4byte 0xFFFF0000
_080396B0: .4byte 0xFF00FFFF
_080396B4: .4byte 0x00FFFFFF
_080396B8:
    ldr r1, _080396D0 @ =0xFFFF0000
    ldr r0, [sp, #0xc]
    ands r0, r1
    movs r1, #0xb4
    orrs r0, r1
    str r0, [sp, #0xc]
    add r1, sp, #0xc
    adds r0, r4, #0
    bl func_0809C0A0
    b _080396E4
    .align 2, 0
_080396D0: .4byte 0xFFFF0000
_080396D4:
    movs r4, #0x24
    movs r0, #1
    strb r0, [r6, #2]
    adds r0, r5, #0
    movs r1, #0xab
    bl func_080200C4
_080396E2:
    strh r4, [r6]
_080396E4:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_080396F4
func_080396F4: @ 0x080396F4
    push {lr}
    ldr r0, [r1, #0x34]
    ldrb r0, [r0, #0x12]
    movs r1, #0
    cmp r0, #0
    beq _08039702
    movs r1, #3
_08039702:
    adds r0, r1, #0
    pop {r1}
    bx r1

    thumb_func_start func_08039708
func_08039708: @ 0x08039708
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    adds r6, r1, #0
    mov sl, r2
    ldr r0, [r6, #0x34]
    movs r1, #0x10
    adds r1, r1, r0
    mov sb, r1
    ldr r3, [r6]
    ldrh r2, [r0, #0x10]
    mov r8, r2
    cmp r2, #0
    beq _08039730
    movs r4, #1
    rsbs r4, r4, #0
    add r8, r4
_08039730:
    ldr r1, [r0, #0x10]
    lsls r0, r1, #9
    lsrs r7, r0, #0x19
    cmp r7, #0
    beq _0803973C
    subs r7, #1
_0803973C:
    mov r5, sb
    ldrb r4, [r5, #3]
    cmp r4, #0
    beq _08039746
    subs r4, #1
_08039746:
    mov r0, r8
    cmp r0, #0
    beq _080397C6
    ldr r2, [r3]
    lsls r0, r1, #8
    movs r1, #0
    cmp r0, #0
    bge _08039758
    movs r1, #0x2b
_08039758:
    ldr r2, [r2, #0x40]
    adds r0, r3, #0
    bl _call_via_r2
    adds r3, r0, #0
    cmp r3, #0
    beq _080397C6
    ldrh r0, [r3, #4]
    ldrh r1, [r6, #4]
    cmp r0, r1
    bne _080397C6
    cmp r4, #0
    bne _080397AC
    movs r2, #0xa
    ldrsh r0, [r6, r2]
    movs r4, #0xe
    ldrsh r1, [r6, r4]
    movs r5, #0xa
    ldrsh r2, [r3, r5]
    movs r4, #0xe
    ldrsh r3, [r3, r4]
    adds r5, r6, #0
    adds r5, #0x20
    ldrb r4, [r5]
    mov ip, r4
    mov r4, sl
    str r4, [sp]
    mov r4, ip
    str r4, [sp, #4]
    bl func_080ABE58
    adds r1, r0, #0
    ldrb r0, [r5]
    cmp r0, r1
    beq _080397A4
    adds r0, r6, #0
    bl func_08032198
_080397A4:
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
_080397AC:
    mov r0, r8
    mov r5, sb
    strh r0, [r5]
    movs r0, #0x7f
    ands r7, r0
    ldrb r1, [r5, #2]
    movs r0, #0x80
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r7
    strb r0, [r5, #2]
    strb r4, [r5, #3]
    b _0803988C
_080397C6:
    adds r0, r6, #0
    bl func_080323C8
    ldr r4, [r6, #0x34]
    movs r5, #0x64
    adds r0, r4, #0
    bl func_0809C060
    cmp r0, #0
    beq _080397EE
    ldr r0, [r6]
    ldrh r1, [r6, #4]
    movs r3, #0xa
    ldrsh r2, [r6, r3]
    movs r5, #0xe
    ldrsh r3, [r6, r5]
    bl func_08039134
    adds r5, r0, #0
    b _080397F6
_080397EE:
    adds r0, r6, #0
    movs r1, #0xaa
    bl func_080200C4
_080397F6:
    cmp r5, #0x64
    beq _08039878
    movs r0, #0x64
    bl func_080AB788
    cmp r0, #0x45
    bhi _08039840
    ldr r1, _08039834 @ =0xFFFF0000
    ldr r0, [sp, #8]
    ands r0, r1
    str r0, [sp, #8]
    movs r0, #8
    bl func_080AB788
    adds r0, #3
    lsls r0, r0, #0x18
    lsrs r0, r0, #8
    ldr r2, _08039838 @ =0xFF00FFFF
    ldr r1, [sp, #0xc]
    ands r1, r2
    orrs r1, r0
    lsls r2, r5, #0x18
    ldr r0, _0803983C @ =0x00FFFFFF
    ands r1, r0
    orrs r1, r2
    str r1, [sp, #0xc]
    adds r0, r4, #0
    add r1, sp, #8
    bl func_0809C0AC
    b _0803988C
    .align 2, 0
_08039834: .4byte 0xFFFF0000
_08039838: .4byte 0xFF00FFFF
_0803983C: .4byte 0x00FFFFFF
_08039840:
    movs r0, #0x3c
    bl func_080AB788
    adds r0, #0x78
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, _0803986C @ =0xFFFF0000
    ldr r1, [sp, #0x10]
    ands r1, r2
    orrs r1, r0
    ldr r0, _08039870 @ =0xFF00FFFF
    ands r1, r0
    lsls r2, r5, #0x18
    ldr r0, _08039874 @ =0x00FFFFFF
    ands r1, r0
    orrs r1, r2
    str r1, [sp, #0x10]
    add r1, sp, #0x10
    adds r0, r4, #0
    bl func_0809C0BC
    b _0803988C
    .align 2, 0
_0803986C: .4byte 0xFFFF0000
_08039870: .4byte 0xFF00FFFF
_08039874: .4byte 0x00FFFFFF
_08039878:
    ldr r1, _0803989C @ =0xFFFF0000
    ldr r0, [sp, #0x14]
    ands r0, r1
    movs r1, #0xb4
    orrs r0, r1
    str r0, [sp, #0x14]
    add r1, sp, #0x14
    adds r0, r4, #0
    bl func_0809C0A0
_0803988C:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0803989C: .4byte 0xFFFF0000
_080398A0:
    .byte 0x02, 0x20, 0x70, 0x47

    thumb_func_start func_080398A4
func_080398A4: @ 0x080398A4
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    mov r0, sp
    adds r1, r5, #0
    bl __5ActorRC5Actor
    ldr r3, _080399A4 @ =0x000009C7
    adds r0, r6, #0
    adds r1, r4, #0
    mov r2, sp
    bl func_08020038
    ldr r0, _080399A8 @ =vtable_unk_080E74DC
    str r0, [r6, #0x14]
    str r5, [r6, #0x34]
    adds r1, r6, #0
    adds r1, #0x38
    movs r0, #4
    movs r3, #0
    movs r2, #1
    rsbs r2, r2, #0
_080398D4:
    stm r1!, {r3}
    subs r0, #1
    cmp r0, r2
    bne _080398D4
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, _080399AC @ =vtable_unk_080E74CC
    str r0, [r4]
    ldr r0, [r6, #0x38]
    cmp r4, r0
    beq _080398F2
    bl __builtin_delete
_080398F2:
    str r4, [r6, #0x38]
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, _080399B0 @ =vtable_unk_080E74BC
    str r0, [r4]
    ldr r0, [r6, #0x3c]
    cmp r4, r0
    beq _0803990A
    bl __builtin_delete
_0803990A:
    str r4, [r6, #0x3c]
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, _080399B4 @ =vtable_unk_080E74AC
    str r0, [r4]
    ldr r0, [r6, #0x40]
    cmp r4, r0
    beq _08039922
    bl __builtin_delete
_08039922:
    str r4, [r6, #0x40]
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, _080399B8 @ =vtable_unk_080E749C
    str r0, [r4]
    ldr r0, [r6, #0x44]
    cmp r4, r0
    beq _0803993A
    bl __builtin_delete
_0803993A:
    str r4, [r6, #0x44]
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, _080399BC @ =vtable_unk_080E748C
    str r0, [r4]
    ldr r0, [r6, #0x48]
    cmp r4, r0
    beq _08039952
    bl __builtin_delete
_08039952:
    str r4, [r6, #0x48]
    ldr r0, [r6, #0x34]
    ldr r0, [r0, #0xc]
    lsls r0, r0, #2
    adds r0, r0, r6
    ldr r0, [r0, #0x38]
    ldr r1, [r0]
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    adds r4, r0, #0
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_08039D5C
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08020080
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_08039D4C
    adds r1, r0, #0
    ldrh r0, [r6, #0x22]
    cmp r0, r1
    beq _08039990
    adds r0, r6, #0
    bl func_080321B0
_08039990:
    str r4, [r6, #0x4c]
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    str r0, [r6, #0x50]
    adds r0, r6, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_080399A4: .4byte 0x000009C7
_080399A8: .4byte vtable_unk_080E74DC
_080399AC: .4byte vtable_unk_080E74CC
_080399B0: .4byte vtable_unk_080E74BC
_080399B4: .4byte vtable_unk_080E74AC
_080399B8: .4byte vtable_unk_080E749C
_080399BC: .4byte vtable_unk_080E748C

    thumb_func_start func_080399C0
func_080399C0: @ 0x080399C0
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r7, r1, #0
    ldr r0, _08039A28 @ =vtable_unk_080E74DC
    str r0, [r5, #0x14]
    ldr r4, [r5, #0x34]
    mov r0, sp
    adds r1, r5, #0
    bl func_08032170
    adds r0, r4, #0
    mov r1, sp
    bl SetLocation__5ActorRC13ActorLocation
    adds r0, r5, #0
    adds r0, #0x38
    cmp r0, #0
    beq _080399FC
    adds r4, r5, #0
    adds r4, #0x4c
    cmp r0, r4
    beq _080399FC
    adds r6, r0, #0
_080399F0:
    subs r4, #4
    ldr r0, [r4]
    bl __builtin_delete
    cmp r6, r4
    bne _080399F0
_080399FC:
    ldr r0, _08039A2C @ =__vt_7AEntity
    str r0, [r5, #0x14]
    ldr r1, [r5, #0x10]
    cmp r1, #0
    beq _08039A12
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08039A12:
    movs r0, #1
    ands r0, r7
    cmp r0, #0
    beq _08039A20
    adds r0, r5, #0
    bl __builtin_delete
_08039A20:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08039A28: .4byte vtable_unk_080E74DC
_08039A2C: .4byte __vt_7AEntity

    thumb_func_start func_08039A30
func_08039A30: @ 0x08039A30
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    movs r0, #0x8c
    bl __builtin_new
    movs r2, #0
    str r2, [sp]
    movs r1, #8
    str r1, [sp, #4]
    str r2, [sp, #8]
    add r1, sp, #0xc
    strb r2, [r1]
    adds r1, r4, #0
    movs r2, #2
    movs r3, #0x1b
    bl func_080324BC
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_08039A5C
func_08039A5C: @ 0x08039A5C
    bx lr
    .align 2, 0

    thumb_func_start func_08039A60
func_08039A60: @ 0x08039A60
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x70
    adds r7, r0, #0
    ldr r0, [r7]
    mov sl, r0
    ldrb r0, [r1, #4]
    cmp r0, #0
    bne _08039A7A
    b _08039BAC
_08039A7A:
    ldrh r0, [r7, #4]
    cmp r0, #2
    bne _08039A82
    b _08039BAC
_08039A82:
    mov r1, sl
    ldr r0, [r1]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r0, r0, r2
    ldr r1, [r0]
    mov r0, sl
    bl _call_via_r1
    adds r2, r0, #0
    ldrh r1, [r2, #0xa]
    ldr r0, _08039AC0 @ =0x000007FF
    ands r0, r1
    cmp r0, #0x14
    beq _08039AA2
    b _08039BAC
_08039AA2:
    ldr r0, [r2]
    cmp r0, #0
    beq _08039AAA
    b _08039BAC
_08039AAA:
    movs r0, #2
    bl func_080AB788
    cmp r0, #0
    beq _08039AC4
    add r0, sp, #0x44
    movs r1, #0x84
    lsls r1, r1, #1
    movs r2, #0xb4
    lsls r2, r2, #2
    b _08039ACE
    .align 2, 0
_08039AC0: .4byte 0x000007FF
_08039AC4:
    add r0, sp, #0x44
    movs r1, #0xaa
    lsls r1, r1, #1
    movs r2, #0x10
    rsbs r2, r2, #0
_08039ACE:
    strh r1, [r0]
    strh r2, [r0, #2]
    ldr r0, [sp, #0x44]
    str r0, [sp, #0x48]
    add r4, sp, #0x48
    movs r3, #0
    ldrsh r2, [r4, r3]
    movs r6, #2
    ldrsh r3, [r4, r6]
    mov r0, sl
    movs r1, #2
    bl func_08039134
    str r0, [sp, #0x6c]
    cmp r0, #0x64
    beq _08039BAC
    movs r0, #0x64
    bl func_080AB788
    cmp r0, #0xe
    bhi _08039BAC
    movs r0, #0
    ldrsh r6, [r4, r0]
    movs r2, #2
    ldrsh r1, [r4, r2]
    mov r8, r1
    mov r3, sp
    movs r2, #2
    ldrh r1, [r3]
    ldr r4, _08039D18 @ =0xFFFFFC00
    adds r0, r4, #0
    ands r0, r1
    orrs r0, r2
    strh r0, [r3]
    lsls r6, r6, #0x10
    lsrs r1, r6, #0x10
    movs r0, #0x3f
    mov sb, r0
    ands r1, r0
    lsls r1, r1, #2
    ldrb r5, [r3, #1]
    movs r2, #3
    adds r0, r2, #0
    ands r0, r5
    orrs r0, r1
    strb r0, [r3, #1]
    lsrs r6, r6, #0x16
    ldrh r1, [r3, #2]
    adds r0, r4, #0
    ands r0, r1
    orrs r0, r6
    strh r0, [r3, #2]
    mov r1, r8
    lsls r1, r1, #0x10
    mov r8, r1
    lsrs r0, r1, #0x10
    mov r6, sb
    ands r0, r6
    lsls r0, r0, #2
    ldrb r1, [r3, #3]
    ands r2, r1
    orrs r2, r0
    strb r2, [r3, #3]
    mov r0, r8
    lsrs r0, r0, #0x16
    mov r8, r0
    ldrh r0, [r3, #4]
    ands r4, r0
    mov r1, r8
    orrs r4, r1
    strh r4, [r3, #4]
    add r4, sp, #8
    movs r5, #1
    adds r0, r4, #0
    mov r1, sp
    movs r2, #6
    bl memcpy
    strb r5, [r4, #6]
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_0803211C
    ldr r1, _08039D1C @ =0xFFFF0000
    ldr r0, [sp, #0x4c]
    ands r0, r1
    str r0, [sp, #0x4c]
    movs r0, #8
    bl func_080AB788
    adds r0, #3
    lsls r0, r0, #0x18
    lsrs r0, r0, #8
    ldr r3, _08039D20 @ =0xFF00FFFF
    add r1, sp, #0x4c
    ldr r2, [r1, #4]
    ands r2, r3
    orrs r2, r0
    ldr r6, [sp, #0x6c]
    lsls r3, r6, #0x18
    ldr r0, _08039D24 @ =0x00FFFFFF
    ands r2, r0
    orrs r2, r3
    str r2, [r1, #4]
    ldr r0, [r7, #0x34]
    bl func_0809C0AC
    adds r0, r7, #0
    movs r1, #0xab
    bl func_080200C4
_08039BAC:
    ldrh r5, [r7, #4]
    movs r0, #0x8d
    lsls r0, r0, #2
    cmp r5, r0
    bne _08039BB8
    b _08039D06
_08039BB8:
    mov r0, sl
    ldr r1, [r0]
    mov r0, sp
    ldr r3, [r1, #0x34]
    mov r1, sl
    adds r2, r5, #0
    bl _call_via_r3
    ldr r1, [r7, #0x14]
    add r0, sp, #0x54
    ldr r2, [r1, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    add r4, sp, #0x10
    movs r1, #0x20
    mov r8, r1
    movs r2, #0
    mov sb, r2
    movs r1, #0x21
    str r1, [sp, #0x10]
    movs r0, #0x21
    rsbs r0, r0, #0
    str r0, [r4, #4]
    str r0, [r4, #8]
    str r1, [r4, #0xc]
    add r1, sp, #0x24
    mov r0, sp
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldr r0, [sp, #0x54]
    ldr r1, [sp, #0x58]
    str r0, [sp, #0x30]
    str r1, [sp, #0x34]
    mov r3, r8
    str r3, [r4, #0x28]
    mov r6, sb
    str r6, [r4, #0x2c]
    str r6, [r4, #0x30]
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    adds r3, r0, #0
    mov r8, r4
    cmp r3, #0
    beq _08039C38
    ldrh r0, [r3, #4]
    cmp r0, r5
    bne _08039C38
    ldr r1, [r3, #0x14]
    add r4, sp, #0x5c
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    mov r0, r8
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
_08039C38:
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4a
    bl _call_via_r2
    adds r3, r0, #0
    cmp r3, #0
    beq _08039C68
    ldrh r0, [r3, #4]
    cmp r0, r5
    bne _08039C68
    ldr r1, [r3, #0x14]
    add r4, sp, #0x64
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    mov r0, r8
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
_08039C68:
    ldr r0, [r7, #0x34]
    ldr r0, [r0, #0xc]
    lsls r0, r0, #2
    adds r0, r0, r7
    ldr r0, [r0, #0x38]
    ldr r1, [r0]
    ldr r3, [r1, #8]
    adds r1, r7, #0
    mov r2, r8
    bl _call_via_r3
    ldr r0, [r7, #0x34]
    ldr r0, [r0, #0xc]
    lsls r0, r0, #2
    adds r0, r0, r7
    ldr r0, [r0, #0x38]
    ldr r1, [r0]
    ldr r2, [r1, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    adds r4, r0, #0
    adds r0, r7, #0
    adds r0, #0x20
    ldrb r5, [r0]
    ldr r1, [r7, #0x4c]
    adds r6, r0, #0
    cmp r4, r1
    bne _08039CA8
    ldr r0, [r7, #0x50]
    cmp r5, r0
    beq _08039CB8
_08039CA8:
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_08039D5C
    adds r1, r0, #0
    adds r0, r7, #0
    bl func_08020080
_08039CB8:
    ldr r0, [r7, #0x4c]
    cmp r4, r0
    beq _08039CD4
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_08039D4C
    adds r1, r0, #0
    ldrh r0, [r7, #0x22]
    cmp r0, r1
    beq _08039CD4
    adds r0, r7, #0
    bl func_080321B0
_08039CD4:
    str r4, [r7, #0x4c]
    str r5, [r7, #0x50]
    mov r4, r8
    ldr r0, [r7, #0x34]
    ldr r0, [r0, #0xc]
    ldrb r1, [r6]
    subs r0, #1
    cmp r0, #1
    bhi _08039CFE
    cmp r1, #1
    bhi _08039CFE
    movs r1, #0xa
    ldrsh r0, [r7, r1]
    movs r2, #0xe
    ldrsh r1, [r7, r2]
    bl func_080391C0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08039CFE
    movs r4, #0
_08039CFE:
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_08020170
_08039D06:
    adds r1, r7, #0
    adds r1, #0x30
    movs r0, #0
    strb r0, [r1]
    ldrh r0, [r7, #0x24]
    cmp r0, #0
    beq _08039D28
    subs r0, #1
    b _08039D2A
    .align 2, 0
_08039D18: .4byte 0xFFFFFC00
_08039D1C: .4byte 0xFFFF0000
_08039D20: .4byte 0xFF00FFFF
_08039D24: .4byte 0x00FFFFFF
_08039D28:
    ldrh r0, [r7, #0x26]
_08039D2A:
    strh r0, [r7, #0x24]
    ldr r2, [r7, #0x10]
    cmp r2, #0
    beq _08039D3C
    ldr r0, [r2, #4]
    ldr r1, [r0, #0xc]
    adds r0, r2, #0
    bl _call_via_r1
_08039D3C:
    add sp, #0x70
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08039D4C
func_08039D4C: @ 0x08039D4C
    ldr r0, _08039D58 @ =0x080F16AE
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    bx lr
    .align 2, 0
_08039D58: .4byte 0x080F16AE

    thumb_func_start func_08039D5C
func_08039D5C: @ 0x08039D5C
    push {lr}
    cmp r1, #4
    bhi _08039D90
    lsls r0, r1, #2
    ldr r1, _08039D6C @ =_08039D70
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08039D6C: .4byte _08039D70
_08039D70: @ jump table
    .4byte _08039D90 @ case 0
    .4byte _08039D84 @ case 1
    .4byte _08039D8A @ case 2
    .4byte _08039D90 @ case 3
    .4byte _08039D90 @ case 4
_08039D84:
    movs r0, #0x80
    lsls r0, r0, #8
    b _08039D92
_08039D8A:
    movs r0, #0x80
    lsls r0, r0, #9
    b _08039D92
_08039D90:
    movs r0, #0
_08039D92:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08039D98
func_08039D98: @ 0x08039D98
    ldr r0, [r0, #0x34]
    ldr r1, [r0, #0xc]
    movs r0, #4
    eors r1, r0
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08039DA8
func_08039DA8: @ 0x08039DA8
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, [r4, #0x34]
    ldr r0, [r0, #0xc]
    cmp r0, #1
    beq _08039E00
    movs r0, #0x78
    bl func_080AB788
    adds r0, #0xf0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, _08039E08 @ =0xFFFF0000
    ldr r1, [sp]
    ands r1, r2
    orrs r1, r0
    ldr r0, _08039E0C @ =0xFF80FFFF
    ands r1, r0
    movs r0, #0xf0
    lsls r0, r0, #0xe
    orrs r1, r0
    ldr r0, _08039E10 @ =0xFF7FFFFF
    ands r1, r0
    ldr r0, _08039E14 @ =0x00FFFFFF
    ands r1, r0
    str r1, [sp]
    ldr r0, [r4, #0x34]
    mov r1, sp
    bl func_0809C0C8
    ldr r0, [r4, #0x34]
    movs r1, #0xf
    bl func_0809C068
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0
    bl func_08032384
    adds r0, r4, #0
    movs r1, #0xaa
    bl func_080200C4
_08039E00:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
_08039E08: .4byte 0xFFFF0000
_08039E0C: .4byte 0xFF80FFFF
_08039E10: .4byte 0xFF7FFFFF
_08039E14: .4byte 0x00FFFFFF

    thumb_func_start func_08039E18
func_08039E18: @ 0x08039E18
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, [r4, #0x34]
    ldr r0, [r0, #0xc]
    cmp r0, #1
    beq _08039E72
    movs r0, #0x78
    bl func_080AB788
    adds r0, #0xf0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, _08039E7C @ =0xFFFF0000
    ldr r1, [sp]
    ands r1, r2
    orrs r1, r0
    ldr r0, _08039E80 @ =0xFF80FFFF
    ands r1, r0
    movs r0, #0xf0
    lsls r0, r0, #0xe
    orrs r1, r0
    movs r0, #0x80
    lsls r0, r0, #0x10
    orrs r1, r0
    ldr r0, _08039E84 @ =0x00FFFFFF
    ands r1, r0
    str r1, [sp]
    ldr r0, [r4, #0x34]
    mov r1, sp
    bl func_0809C0C8
    ldr r0, [r4, #0x34]
    movs r1, #4
    bl func_0809C068
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0
    bl func_08032384
    adds r0, r4, #0
    movs r1, #0xaa
    bl func_080200C4
_08039E72:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
_08039E7C: .4byte 0xFFFF0000
_08039E80: .4byte 0xFF80FFFF
_08039E84: .4byte 0x00FFFFFF
_08039E88:
    .byte 0x02, 0x20, 0x70, 0x47, 0x41, 0x6B, 0xC9, 0x68
    .byte 0x89, 0x00, 0x09, 0x18, 0x88, 0x6B, 0x70, 0x47

    thumb_func_start func_08039E98
func_08039E98: @ 0x08039E98
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x14
    adds r7, r0, #0
    adds r6, r1, #0
    adds r5, r2, #0
    mov sb, r3
    ldr r0, _08039F30 @ =vtable_unk_080E76BC
    str r0, [r7, #0x4c]
    str r6, [r7]
    movs r4, #0
    strh r5, [r7, #4]
    ldr r0, [r6]
    ldr r1, [r0, #0x68]
    adds r0, r6, #0
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r7, #0
    adds r0, #8
    movs r2, #3
    str r2, [sp]
    movs r2, #0x1b
    str r2, [sp, #4]
    add r2, sp, #8
    strb r4, [r2]
    adds r2, r5, #0
    adds r3, r6, #0
    bl func_080A4A00
    mov r0, sb
    cmp r0, #1
    bne _08039F3C
    movs r0, #0x4c
    bl __builtin_new
    adds r5, r0, #0
    ldr r0, [r6]
    ldr r1, [r0, #0x68]
    adds r0, r6, #0
    bl _call_via_r1
    adds r4, r0, #0
    adds r0, r5, #0
    adds r1, r6, #0
    movs r2, #2
    movs r3, #0xf
    bl func_080A4740
    ldr r0, _08039F34 @ =vtable_unk_080E602C
    str r0, [r5, #0x24]
    movs r1, #0x28
    adds r1, r1, r5
    mov r8, r1
    ldr r6, [r4]
    add r0, sp, #0xc
    ldr r3, [r6, #0xc]
    adds r1, r4, #0
    ldr r2, _08039F38 @ =0x0000091A
    bl _call_via_r3
    ldr r0, [sp, #0xc]
    ldrh r2, [r0]
    mov r0, r8
    ldr r3, [r6, #0x10]
    adds r1, r4, #0
    bl _call_via_r3
    adds r0, r5, #0
    adds r0, #0x48
    mov r1, sb
    strb r1, [r0]
    b _08039F3E
    .align 2, 0
_08039F30: .4byte vtable_unk_080E76BC
_08039F34: .4byte vtable_unk_080E602C
_08039F38: .4byte 0x0000091A
_08039F3C:
    movs r5, #0
_08039F3E:
    str r5, [r7, #0x48]
    adds r0, r7, #0
    add sp, #0x14
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08039F50
func_08039F50: @ 0x08039F50
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, _08039F8C @ =vtable_unk_080E76BC
    str r0, [r4, #0x4c]
    ldr r1, [r4, #0x48]
    cmp r1, #0
    beq _08039F6C
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08039F6C:
    adds r0, r4, #0
    adds r0, #8
    movs r1, #2
    bl func_080A47B4
    movs r0, #1
    ands r0, r5
    cmp r0, #0
    beq _08039F84
    adds r0, r4, #0
    bl __builtin_delete
_08039F84:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08039F8C: .4byte vtable_unk_080E76BC

    thumb_func_start func_08039F90
func_08039F90: @ 0x08039F90
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x48
    mov sl, r0
    adds r4, r1, #0
    mov sb, r2
    mov r8, r3
    ldr r5, [sp, #0x68]
    ldr r6, [sp, #0x6c]
    ldr r7, [sp, #0x70]
    ldr r0, [r4]
    ldr r1, [r0, #0x18]
    adds r0, r4, #0
    bl _call_via_r1
    subs r5, r5, r0
    str r5, [sp, #0x3c]
    ldr r0, [r4]
    ldr r1, [r0, #0x1c]
    adds r0, r4, #0
    bl _call_via_r1
    subs r0, r6, r0
    str r0, [sp, #0x40]
    movs r0, #0x80
    lsls r0, r0, #8
    subs r0, r0, r6
    str r0, [sp, #0x44]
    add r0, sp, #0x34
    mov r1, r8
    str r1, [sp, #0x34]
    mov r3, sb
    str r3, [r0, #4]
    adds r5, r7, #0
    mov sb, r0
    cmp r5, #0
    bge _08039FE2
    rsbs r7, r5, #0
_08039FE2:
    ldr r4, [sp, #0x40]
    subs r4, r4, r7
    mov r8, r4
    mov r6, sl
    adds r6, #8
    movs r0, #3
    ldr r7, [sp, #0x74]
    ands r0, r7
    lsls r4, r0, #2
    orrs r4, r0
    lsls r1, r0, #4
    orrs r4, r1
    lsls r0, r0, #6
    orrs r4, r0
    mov r0, sl
    ldr r1, [r0, #0x30]
    ldr r3, [r1]
    ldrh r2, [r0, #0x3c]
    lsls r2, r2, #2
    ldr r0, [r0, #0x34]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    mov r1, sb
    ldr r1, [r1, #4]
    mov ip, r1
    mov r3, sl
    ldr r2, [r3, #8]
    ldr r1, [r3, #0x10]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _0803A054
    ldrh r0, [r6, #0xc]
    mov r1, sl
    adds r1, #0x18
    ldr r3, [sp, #0x44]
    str r3, [sp]
    adds r3, r7, #0
    str r3, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    mov r0, ip
    ldr r1, [sp, #0x3c]
    mov r2, r8
    adds r3, r4, #0
    ldr r4, _0803A050 @ =func_030004DC
    bl _call_via_r4
    b _0803A056
    .align 2, 0
_0803A050: .4byte func_030004DC
_0803A054:
    movs r0, #0
_0803A056:
    cmp r0, #0
    beq _0803A0AA
    adds r0, r6, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    mov r8, r0
    cmp r1, #0
    beq _0803A0AA
    ldr r1, [sp, #0x34]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _0803A08A
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    b _0803A0A4
_0803A08A:
    adds r4, r6, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _0803A0A4
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_0803A0A4:
    movs r0, #0
    mov r4, r8
    strb r0, [r4]
_0803A0AA:
    mov r7, sl
    ldr r0, [r7, #0x48]
    cmp r0, #0
    beq _0803A134
    cmp r5, #0
    blt _0803A134
    adds r6, r0, #0
    mov r5, sb
    movs r0, #3
    ldr r1, [sp, #0x74]
    ands r0, r1
    lsls r3, r0, #2
    orrs r3, r0
    lsls r1, r0, #4
    orrs r3, r1
    lsls r0, r0, #6
    orrs r3, r0
    adds r7, r6, #0
    adds r7, #0x28
    ldr r4, [r5, #4]
    mov r8, r4
    adds r0, r6, #0
    ldm r0!, {r2}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _0803A108
    ldrh r0, [r6, #0xc]
    adds r1, r6, #0
    adds r1, #0x10
    ldr r4, [sp, #0x44]
    str r4, [sp]
    str r7, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    mov r0, r8
    ldr r1, [sp, #0x3c]
    ldr r2, [sp, #0x40]
    ldr r4, _0803A104 @ =func_030004DC
    bl _call_via_r4
    b _0803A10A
    .align 2, 0
_0803A104: .4byte func_030004DC
_0803A108:
    movs r0, #0
_0803A10A:
    cmp r0, #0
    beq _0803A134
    adds r4, r6, #0
    adds r4, #0x48
    ldrb r0, [r4]
    cmp r0, #0
    beq _0803A134
    ldr r1, [r5]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #0
    strb r0, [r4]
_0803A134:
    add sp, #0x48
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0803A144
func_0803A144: @ 0x0803A144
    push {r4, lr}
    adds r4, r1, #0
    lsls r2, r2, #0x18
    lsrs r0, r2, #0x18
    cmp r2, #0
    bge _0803A15A
    movs r0, #3
    bl func_080AB788
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
_0803A15A:
    ldr r2, _0803A17C @ =0x080F16C2
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r1, r0, #2
    adds r1, r1, r2
    ldrh r1, [r1]
    strh r1, [r4, #4]
    lsls r1, r0, #1
    adds r1, #1
    lsls r1, r1, #1
    adds r1, r1, r2
    ldrh r1, [r1]
    strh r1, [r4, #6]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_0803A17C: .4byte 0x080F16C2

    thumb_func_start func_0803A180
func_0803A180: @ 0x0803A180
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x48
    mov r8, r0
    adds r4, r1, #0
    adds r5, r2, #0
    movs r0, #0
    mov sb, r0
    mov r2, r8
    ldr r1, [r2]
    ldr r2, [r1]
    mov r0, sp
    ldr r3, [r2, #0x34]
    movs r2, #0
    bl _call_via_r3
    movs r6, #4
    ldrsh r1, [r4, r6]
    movs r7, #6
    ldrsh r3, [r4, r7]
    add r2, sp, #0x40
    adds r0, r1, #0
    subs r0, #8
    strh r0, [r2]
    adds r0, r3, #0
    subs r0, #8
    strh r0, [r2, #2]
    adds r1, #8
    strh r1, [r2, #4]
    adds r3, #8
    strh r3, [r2, #6]
    add r3, sp, #0xc
    movs r0, #0x20
    mov ip, r0
    movs r1, #0x21
    str r1, [sp, #0xc]
    subs r0, #0x41
    str r0, [r3, #4]
    str r0, [r3, #8]
    str r1, [r3, #0xc]
    add r1, sp, #0x20
    mov r0, sp
    ldm r0!, {r2, r6, r7}
    stm r1!, {r2, r6, r7}
    ldr r0, [sp, #0x40]
    ldr r1, [sp, #0x44]
    str r0, [sp, #0x2c]
    str r1, [sp, #0x30]
    mov r0, ip
    str r0, [r3, #0x28]
    mov r1, sb
    str r1, [r3, #0x2c]
    str r1, [r3, #0x30]
    movs r0, #0x12
    ldrsb r0, [r4, r0]
    cmp r0, #0
    beq _0803A2A6
    cmp r0, #1
    bne _0803A2A6
    ldr r0, [r4]
    cmp r0, #1
    beq _0803A234
    cmp r0, #1
    bgt _0803A20A
    cmp r0, #0
    beq _0803A214
    b _0803A2A2
_0803A20A:
    cmp r0, #2
    beq _0803A254
    cmp r0, #3
    beq _0803A274
    b _0803A2A2
_0803A214:
    ldr r1, [sp, #0xc]
    ldr r0, [sp, #0x34]
    cmp r1, r0
    ble _0803A226
    adds r0, r3, #0
    bl func_080AB85C
    ldr r0, [sp, #0xc]
    b _0803A228
_0803A226:
    adds r0, r1, #0
_0803A228:
    cmp r0, #1
    ble _0803A2A2
    ldr r0, [r4, #0xc]
    adds r0, r0, r5
    str r0, [r4, #0xc]
    b _0803A2A6
_0803A234:
    ldr r1, [sp, #0x10]
    ldr r0, [sp, #0x34]
    cmn r1, r0
    bge _0803A244
    adds r0, r3, #0
    bl func_080AB8D0
    ldr r1, [sp, #0x10]
_0803A244:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bge _0803A2A2
    ldr r0, [r4, #0xc]
    subs r0, r0, r5
    str r0, [r4, #0xc]
    b _0803A2A6
_0803A254:
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x34]
    cmn r1, r0
    bge _0803A264
    adds r0, r3, #0
    bl func_080AB948
    ldr r1, [sp, #0x14]
_0803A264:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bge _0803A2A2
    ldr r0, [r4, #8]
    subs r0, r0, r5
    str r0, [r4, #8]
    b _0803A2A6
_0803A274:
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x34]
    cmp r1, r0
    ble _0803A286
    adds r0, r3, #0
    bl func_080AB9C4
    ldr r0, [sp, #0x18]
    b _0803A288
_0803A286:
    adds r0, r1, #0
_0803A288:
    cmp r0, #1
    ble _0803A2A2
    ldr r0, [r4, #8]
    adds r0, r0, r5
    str r0, [r4, #8]
    asrs r0, r0, #0x10
    movs r1, #0x91
    lsls r1, r1, #2
    cmp r0, r1
    ble _0803A2A6
    movs r0, #0x91
    lsls r0, r0, #0x12
    str r0, [r4, #8]
_0803A2A2:
    movs r0, #0
    strh r0, [r4, #0x10]
_0803A2A6:
    movs r2, #0xa
    ldrsh r0, [r4, r2]
    strh r0, [r4, #4]
    movs r6, #0xe
    ldrsh r0, [r4, r6]
    strh r0, [r4, #6]
    mov r1, r8
    adds r1, #0x47
    ldrb r0, [r1]
    cmp r0, #0
    bne _0803A2D2
    mov r0, r8
    adds r0, #0x30
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _0803A2D6
    mov r1, r8
    adds r1, #0x44
    movs r0, #1
    b _0803A2D4
_0803A2D2:
    movs r0, #0
_0803A2D4:
    strb r0, [r1]
_0803A2D6:
    ldrh r0, [r4, #0x10]
    subs r0, #1
    strh r0, [r4, #0x10]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge _0803A310
    movs r0, #3
    bl func_080AB788
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #3
    bne _0803A2F6
    movs r0, #0
    strb r0, [r4, #0x12]
    b _0803A302
_0803A2F6:
    movs r0, #1
    strb r0, [r4, #0x12]
    ldr r0, [r4]
    bl func_080AB7A4
    str r0, [r4]
_0803A302:
    movs r0, #0x1f
    bl func_080AB788
    adds r0, #0x10
    strh r0, [r4, #0x10]
    movs r7, #1
    mov sb, r7
_0803A310:
    mov r0, sb
    add sp, #0x48
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_0803A320
func_0803A320: @ 0x0803A320
    ldr r0, _0803A330 @ =0x080F16D2
    lsls r1, r1, #0x10
    asrs r1, r1, #0xf
    adds r1, r1, r0
    movs r2, #0
    ldrsh r0, [r1, r2]
    bx lr
    .align 2, 0
_0803A330: .4byte 0x080F16D2

    thumb_func_start func_0803A334
func_0803A334: @ 0x0803A334
    ldr r2, _0803A34C @ =0x080F16D2
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    adds r1, #0x40
    movs r0, #0xff
    ands r1, r0
    lsls r1, r1, #1
    adds r1, r1, r2
    movs r2, #0
    ldrsh r0, [r1, r2]
    bx lr
    .align 2, 0
_0803A34C: .4byte 0x080F16D2

    thumb_func_start func_0803A350
func_0803A350: @ 0x0803A350
    push {r4, r5, r6, lr}
    adds r6, r1, #0
    ldr r0, [r0]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0803A382
_0803A36C:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0803A37C
    ldr r0, [r4]
    b _0803A386
_0803A37C:
    adds r4, #4
    cmp r4, r5
    bne _0803A36C
_0803A382:
    subs r0, r5, #4
    ldr r0, [r0]
_0803A386:
    lsls r1, r6, #0x10
    lsrs r1, r1, #0x10
    bl func_08008B6C
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_0803A394
func_0803A394: @ 0x0803A394
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r6, r0, #0
    mov r8, r1
    adds r5, r2, #0
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    mov sb, r3
    ldr r7, _0803A3E4 @ =0x080F1904
    cmp r3, #0
    bne _0803A3B4
    ldr r7, _0803A3E8 @ =0x080F18D2
_0803A3B4:
    movs r0, #4
    mov sl, r0
    mov r1, sb
    cmp r1, #0
    bne _0803A3C2
    movs r2, #0xa
    mov sl, r2
_0803A3C2:
    movs r0, #0x63
    bl func_080AB788
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    movs r3, #0
    str r3, [sp]
    movs r0, #0
    str r0, [sp, #4]
    mov ip, r0
    cmp r5, #1
    beq _0803A3FC
    cmp r5, #1
    bgt _0803A3EC
    cmp r5, #0
    beq _0803A3F6
    b _0803A40C
    .align 2, 0
_0803A3E4: .4byte 0x080F1904
_0803A3E8: .4byte 0x080F18D2
_0803A3EC:
    cmp r5, #2
    beq _0803A402
    cmp r5, #3
    beq _0803A408
    b _0803A40C
_0803A3F6:
    movs r1, #0
    mov ip, r1
    b _0803A40C
_0803A3FC:
    movs r2, #1
    mov ip, r2
    b _0803A40C
_0803A402:
    movs r3, #2
    mov ip, r3
    b _0803A40C
_0803A408:
    movs r5, #3
    mov ip, r5
_0803A40C:
    movs r3, #0
    cmp r3, sl
    bge _0803A458
    lsls r0, r4, #0x10
    asrs r0, r0, #0x10
    mov r2, ip
    adds r1, r7, r2
    ldrb r1, [r1]
    cmp r0, r1
    bge _0803A428
    str r3, [sp]
    ldrb r5, [r7, #4]
    str r5, [sp, #4]
    b _0803A458
_0803A428:
    lsls r0, r3, #2
    adds r0, r0, r3
    adds r0, r0, r7
    add r0, ip
    ldrb r0, [r0]
    subs r0, r4, r0
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    adds r3, #1
    cmp r3, sl
    bge _0803A458
    lsls r0, r4, #0x10
    asrs r0, r0, #0x10
    lsls r1, r3, #2
    adds r1, r1, r3
    adds r2, r1, r7
    mov r5, ip
    adds r1, r2, r5
    ldrb r1, [r1]
    cmp r0, r1
    bge _0803A428
    str r3, [sp]
    ldrb r2, [r2, #4]
    str r2, [sp, #4]
_0803A458:
    ldr r0, [sp]
    cmp r0, #0
    beq _0803A468
    mov r1, sb
    cmp r1, #0
    beq _0803A468
    adds r0, #9
    str r0, [sp]
_0803A468:
    ldr r2, [sp, #4]
    cmp r2, #1
    ble _0803A47A
    adds r0, r2, #0
    subs r0, #1
    bl func_080AB788
    adds r0, #1
    str r0, [sp, #4]
_0803A47A:
    ldr r3, [sp, #4]
    cmp r3, #0
    bgt _0803A482
    b _0803A782
_0803A482:
    movs r0, #0xc4
    lsls r0, r0, #1
    bl func_080AB788
    adds r5, r0, #0
    adds r5, #0xb8
    cmp r5, #0xef
    bgt _0803A4A0
    movs r0, #0x38
    bl func_080AB788
    movs r1, #0xf8
    lsls r1, r1, #1
    adds r7, r0, r1
    b _0803A4AC
_0803A4A0:
    movs r0, #0x30
    bl func_080AB788
    movs r2, #0x8a
    lsls r2, r2, #2
    adds r7, r0, r2
_0803A4AC:
    ldr r0, [sp]
    subs r0, #1
    cmp r0, #0xb
    bls _0803A4B6
    b _0803A776
_0803A4B6:
    lsls r0, r0, #2
    ldr r1, _0803A4C0 @ =_0803A4C4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0803A4C0: .4byte _0803A4C4
_0803A4C4: @ jump table
    .4byte _0803A4F4 @ case 0
    .4byte _0803A55C @ case 1
    .4byte _0803A578 @ case 2
    .4byte _0803A598 @ case 3
    .4byte _0803A5B8 @ case 4
    .4byte _0803A608 @ case 5
    .4byte _0803A670 @ case 6
    .4byte _0803A690 @ case 7
    .4byte _0803A6B0 @ case 8
    .4byte _0803A6D0 @ case 9
    .4byte _0803A6F0 @ case 10
    .4byte _0803A710 @ case 11
_0803A4F4:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, _0803A554 @ =0x000009B6
    movs r3, #1
    bl func_08039E98
    ldr r0, _0803A558 @ =vtable_unk_080E76A4
_0803A508:
    str r0, [r4, #0x4c]
    movs r1, #0
    str r1, [r4, #0x50]
    adds r2, r4, #0
    adds r2, #0x54
    movs r3, #0
    strh r5, [r2]
    adds r5, r4, #0
    adds r5, #0x56
    strh r7, [r5]
    adds r0, r4, #0
    adds r0, #0x60
    strh r1, [r0]
    adds r0, #2
    strb r3, [r0]
    movs r3, #0
    ldrsh r0, [r2, r3]
    lsls r0, r0, #0x10
    str r0, [r4, #0x58]
    movs r1, #0
    ldrsh r0, [r5, r1]
    lsls r0, r0, #0x10
    str r0, [r4, #0x5c]
_0803A536:
    adds r1, r6, #0
    adds r1, #8
    ldr r0, [r6, #8]
    cmp r0, #2
    bls _0803A542
    b _0803A776
_0803A542:
    lsls r0, r0, #2
    adds r0, #4
    adds r0, r1, r0
    cmp r0, #0
    bne _0803A54E
    b _0803A770
_0803A54E:
    str r4, [r0]
    b _0803A770
    .align 2, 0
_0803A554: .4byte 0x000009B6
_0803A558: .4byte vtable_unk_080E76A4
_0803A55C:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    movs r2, #0x10
    movs r3, #1
    bl func_08039E98
    ldr r0, _0803A574 @ =vtable_unk_080E768C
    b _0803A508
    .align 2, 0
_0803A574: .4byte vtable_unk_080E768C
_0803A578:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, _0803A590 @ =0x000003DB
    movs r3, #1
    bl func_08039E98
    ldr r0, _0803A594 @ =vtable_unk_080E7674
    b _0803A508
    .align 2, 0
_0803A590: .4byte 0x000003DB
_0803A594: .4byte vtable_unk_080E7674
_0803A598:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, _0803A5B0 @ =0x00000806
    movs r3, #1
    bl func_08039E98
    ldr r0, _0803A5B4 @ =vtable_unk_080E765C
    b _0803A508
    .align 2, 0
_0803A5B0: .4byte 0x00000806
_0803A5B4: .4byte vtable_unk_080E765C
_0803A5B8:
    movs r0, #0x6c
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, _0803A600 @ =0x00000202
    movs r3, #1
    bl func_08039E98
    ldr r0, _0803A604 @ =vtable_unk_080E7644
    str r0, [r4, #0x4c]
    movs r1, #0
    str r1, [r4, #0x50]
    adds r2, r4, #0
    adds r2, #0x54
    movs r3, #0
    strh r5, [r2]
    adds r5, r4, #0
    adds r5, #0x56
    strh r7, [r5]
    adds r0, r4, #0
    adds r0, #0x60
    strh r1, [r0]
    adds r0, #2
    strb r3, [r0]
    movs r3, #0
    ldrsh r0, [r2, r3]
    lsls r0, r0, #0x10
    str r0, [r4, #0x58]
    movs r2, #0
    ldrsh r0, [r5, r2]
    lsls r0, r0, #0x10
    str r0, [r4, #0x5c]
    str r1, [r4, #0x68]
    b _0803A536
    .align 2, 0
_0803A600: .4byte 0x00000202
_0803A604: .4byte vtable_unk_080E7644
_0803A608:
    movs r0, #0x88
    bl __builtin_new
    adds r5, r0, #0
    mov r1, r8
    movs r2, #0xa9
    lsls r2, r2, #2
    movs r3, #1
    bl func_08039E98
    ldr r0, _0803A66C @ =vtable_unk_080E762C
    str r0, [r5, #0x4c]
    movs r4, #0
    str r4, [r5, #0x50]
    adds r1, r5, #0
    adds r1, #0x50
    adds r0, r5, #0
    movs r2, #1
    rsbs r2, r2, #0
    bl func_0803A144
    adds r1, r5, #0
    adds r1, #0x78
    strb r0, [r1]
    adds r1, #1
    movs r0, #0xff
    strb r0, [r1]
    adds r0, r5, #0
    adds r0, #0x60
    movs r1, #0
    strh r4, [r0]
    adds r0, #2
    strb r1, [r0]
    subs r0, #0xe
    movs r3, #0
    ldrsh r0, [r0, r3]
    lsls r0, r0, #0x10
    str r0, [r5, #0x58]
    adds r0, r5, #0
    adds r0, #0x56
    movs r1, #0
    ldrsh r0, [r0, r1]
    lsls r0, r0, #0x10
    str r0, [r5, #0x5c]
    adds r1, r5, #0
    adds r1, #0x84
    movs r0, #0xf8
    strb r0, [r1]
    b _0803A75A
    .align 2, 0
_0803A66C: .4byte vtable_unk_080E762C
_0803A670:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, _0803A688 @ =0x0000087B
    movs r3, #1
    bl func_08039E98
    ldr r0, _0803A68C @ =vtable_unk_080E7614
    b _0803A508
    .align 2, 0
_0803A688: .4byte 0x0000087B
_0803A68C: .4byte vtable_unk_080E7614
_0803A690:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, _0803A6A8 @ =0x0000065C
    movs r3, #1
    bl func_08039E98
    ldr r0, _0803A6AC @ =vtable_unk_080E75FC
    b _0803A508
    .align 2, 0
_0803A6A8: .4byte 0x0000065C
_0803A6AC: .4byte vtable_unk_080E75FC
_0803A6B0:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, _0803A6C8 @ =0x000008F9
    movs r3, #1
    bl func_08039E98
    ldr r0, _0803A6CC @ =vtable_unk_080E75E4
    b _0803A508
    .align 2, 0
_0803A6C8: .4byte 0x000008F9
_0803A6CC: .4byte vtable_unk_080E75E4
_0803A6D0:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, _0803A6E8 @ =0x000009A9
    movs r3, #1
    bl func_08039E98
    ldr r0, _0803A6EC @ =vtable_unk_080E75CC
    b _0803A508
    .align 2, 0
_0803A6E8: .4byte 0x000009A9
_0803A6EC: .4byte vtable_unk_080E75CC
_0803A6F0:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, _0803A708 @ =0x000008FD
    movs r3, #1
    bl func_08039E98
    ldr r0, _0803A70C @ =vtable_unk_080E75B4
    b _0803A508
    .align 2, 0
_0803A708: .4byte 0x000008FD
_0803A70C: .4byte vtable_unk_080E75B4
_0803A710:
    movs r0, #0x64
    bl __builtin_new
    adds r5, r0, #0
    mov r1, r8
    movs r2, #0x15
    movs r3, #0
    bl func_08039E98
    ldr r0, _0803A794 @ =vtable_unk_080E759C
    str r0, [r5, #0x4c]
    movs r4, #0
    str r4, [r5, #0x50]
    adds r1, r5, #0
    adds r1, #0x50
    adds r0, r5, #0
    movs r2, #1
    rsbs r2, r2, #0
    bl func_0803A144
    adds r0, r5, #0
    adds r0, #0x60
    movs r1, #0
    strh r4, [r0]
    adds r0, #2
    strb r1, [r0]
    subs r0, #0xe
    movs r2, #0
    ldrsh r0, [r0, r2]
    lsls r0, r0, #0x10
    str r0, [r5, #0x58]
    adds r0, r5, #0
    adds r0, #0x56
    movs r3, #0
    ldrsh r0, [r0, r3]
    lsls r0, r0, #0x10
    str r0, [r5, #0x5c]
_0803A75A:
    adds r1, r6, #0
    adds r1, #8
    ldr r0, [r6, #8]
    cmp r0, #2
    bhi _0803A776
    lsls r0, r0, #2
    adds r0, #4
    adds r0, r1, r0
    cmp r0, #0
    beq _0803A770
    str r5, [r0]
_0803A770:
    ldr r0, [r6, #8]
    adds r0, #1
    str r0, [r6, #8]
_0803A776:
    ldr r5, [sp, #4]
    subs r5, #1
    str r5, [sp, #4]
    cmp r5, #0
    ble _0803A782
    b _0803A482
_0803A782:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0803A794: .4byte vtable_unk_080E759C

    thumb_func_start func_0803A798
func_0803A798: @ 0x0803A798
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #8
    adds r6, r0, #0
    mov r8, r1
    movs r0, #0x20
    bl __builtin_new
    adds r5, r0, #0
    mov r1, sp
    ldrh r2, [r1]
    ldr r3, _0803A7FC @ =0xFFFFFC00
    adds r0, r3, #0
    ands r0, r2
    strh r0, [r1]
    ldrb r4, [r1, #1]
    movs r2, #3
    adds r0, r2, #0
    ands r0, r4
    strb r0, [r1, #1]
    ldrh r4, [r1, #2]
    adds r0, r3, #0
    ands r0, r4
    strh r0, [r1, #2]
    ldrb r0, [r1, #3]
    ands r2, r0
    strb r2, [r1, #3]
    ldrh r0, [r1, #4]
    ands r3, r0
    strh r3, [r1, #4]
    adds r0, r5, #0
    adds r1, r6, #0
    mov r2, sp
    bl func_0801FD78
    ldr r0, _0803A800 @ =vtable_unk_080E7568
    str r0, [r5, #0x14]
    mov r0, r8
    str r0, [r5, #0x18]
    movs r0, #1
    strb r0, [r5, #0x1c]
    adds r0, r5, #0
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_0803A7FC: .4byte 0xFFFFFC00
_0803A800: .4byte vtable_unk_080E7568
_0803A804:
    .byte 0x30, 0x30, 0x10, 0x21, 0x40, 0x5E, 0x70, 0x47, 0x30, 0x30, 0x01, 0x82
    .byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x30, 0x30, 0x24, 0xF0, 0x3C, 0xF8, 0x02, 0xBC, 0x08, 0x47
    .byte 0x00, 0xB5, 0x01, 0x1C, 0x30, 0x31, 0x00, 0x22, 0xC8, 0x89, 0x00, 0x28, 0x04, 0xD0, 0x10, 0x20
    .byte 0x09, 0x5E, 0x48, 0x42, 0x08, 0x43, 0xC2, 0x0F, 0x10, 0x1C, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
    .byte 0x10, 0xB5, 0x04, 0x1C, 0x21, 0x1C, 0x47, 0x31, 0x08, 0x78, 0x00, 0x28, 0x0A, 0xD1, 0x20, 0x1C
    .byte 0x30, 0x30, 0x24, 0xF0, 0x4D, 0xF8, 0x80, 0x07, 0x00, 0x28, 0x05, 0xDA, 0x21, 0x1C, 0x44, 0x31
    .byte 0x01, 0x20, 0x00, 0xE0, 0x00, 0x20, 0x08, 0x70, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
    .byte 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0xA0, 0x88, 0xA8, 0x42, 0x0D, 0xD0, 0x20, 0x1C, 0x30, 0x30
    .byte 0x23, 0xF0, 0xEE, 0xFF, 0x20, 0x1C, 0x44, 0x30, 0x00, 0x22, 0x01, 0x21, 0x01, 0x70, 0x02, 0x30
    .byte 0x02, 0x70, 0x01, 0x30, 0x01, 0x70, 0xA5, 0x80, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
    .byte 0x00, 0x68, 0x70, 0x47
