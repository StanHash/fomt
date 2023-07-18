    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start __16UnkActorEntity28
__16UnkActorEntity28: @ 0x08032300
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
    bl __12AActorEntityP10GameObjectRC13ActorLocationUiUi
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
    bl __12AActorEntityP10GameObjectRC13ActorLocationUiUi
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
    bl __12AActorEntityP10GameObjectRC13ActorLocationUiUi
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
    bl __12AActorEntityP10GameObjectRC13ActorLocationUiUi
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
