    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08010348
func_08010348: @ 0x08010348
    push {lr}
_0801034A:
    bl rand
    cmp r0, #0
    beq _0801034A
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08010358
func_08010358: @ 0x08010358
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xa8
    str r0, [sp, #0x48]
    mov sl, r2
    add r0, sp, #0xc
    mov sb, r0
    strb r3, [r0]
    ldr r7, [sp, #0xc8]
    ldr r3, [sp, #0x48]
    ldrb r2, [r3]
    movs r3, #2
    rsbs r3, r3, #0
    adds r0, r3, #0
    ands r0, r2
    movs r2, #3
    rsbs r2, r2, #0
    ands r0, r2
    subs r2, #2
    ands r0, r2
    subs r2, #4
    ands r0, r2
    subs r2, #8
    ands r0, r2
    ldr r2, [sp, #0x48]
    strb r0, [r2]
    ldr r0, [r2]
    ldr r2, _080105F0 @ =0xFFFC1FFF
    ands r0, r2
    ldr r2, [sp, #0x48]
    str r0, [r2]
    ldrh r2, [r2, #2]
    ldr r0, _080105F4 @ =0xFFFFFE03
    ands r0, r2
    ldr r2, [sp, #0x48]
    strh r0, [r2, #2]
    ldrb r2, [r2, #3]
    movs r0, #0x7f
    rsbs r0, r0, #0
    ands r0, r2
    movs r2, #0x7f
    ands r0, r2
    ldr r2, [sp, #0x48]
    strb r0, [r2, #3]
    ldrb r0, [r2, #4]
    ands r3, r0
    strb r3, [r2, #4]
    movs r0, #0x1d
    str r0, [sp]
    movs r5, #0
    str r5, [sp, #4]
    movs r3, #1
    mov r8, r3
    subs r3, #5
    ands r3, r4
    movs r2, #4
    subs r0, #0x9a
    ands r3, r0
    orrs r3, r2
    add r4, sp, #8
    adds r0, #0x5d
    ands r0, r6
    movs r2, #6
    orrs r0, r2
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r2, _080105F8 @ =0xFFFFFF00
    ands r2, r6
    orrs r2, r0
    movs r6, #0
    ldr r0, _080105FC @ =0xFFFFF81F
    ands r2, r0
    mov r0, r8
    strb r0, [r4]
    strb r3, [r4, #1]
    strh r2, [r4, #2]
    ldr r2, [sp, #0x48]
    adds r2, #8
    ldr r3, [sp, #0x48]
    str r5, [r3, #8]
    str r5, [r2, #4]
    ldr r0, [sp, #8]
    str r0, [r2, #8]
    adds r0, r3, #0
    adds r0, #0x14
    bl __4FarmPCc
    ldr r1, [sp, #0x48]
    ldr r2, _08010600 @ =0x00001AA8
    adds r0, r1, r2
    bl func_0809AB8C
    ldr r3, [sp, #0x48]
    ldr r1, _08010604 @ =0x00001BD8
    adds r0, r3, r1
    mov r1, sl
    mov r2, sb
    bl func_0800E354
    ldr r2, [sp, #0x48]
    ldr r3, _08010608 @ =0x00001C70
    adds r0, r2, r3
    adds r1, r7, #0
    bl __3DogPCc
    ldr r7, [sp, #0x48]
    movs r1, #0xe5
    lsls r1, r1, #5
    adds r0, r7, r1
    bl func_0800FF8C
    ldr r2, _0801060C @ =0x00001CCC
    adds r1, r7, r2
    movs r4, #0x8d
    lsls r4, r4, #2
    ldrh r2, [r1]
    ldr r3, _08010610 @ =0xFFFFFC00
    adds r0, r3, #0
    ands r0, r2
    orrs r0, r4
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
    ldr r3, _08010614 @ =0x00001CD4
    adds r0, r7, r3
    bl func_0809EEE8
    ldr r1, _08010618 @ =0x0000214C
    adds r0, r7, r1
    bl func_0809C6BC
    bl func_08010348
    ldr r3, _0801061C @ =0x000021CC
    adds r2, r7, r3
    str r0, [r2]
    str r5, [r2, #4]
    ldr r1, _08010620 @ =0x000021E0
    adds r0, r7, r1
    strb r6, [r0]
    adds r3, #0x24
    adds r0, r7, r3
    strb r6, [r0]
    adds r1, #0x20
    adds r0, r7, r1
    strb r6, [r0]
    str r5, [sp, #0x10]
    subs r3, #0x1c
    adds r0, r7, r3
    movs r1, #8
    add r4, sp, #0x14
    ldr r6, _08010624 @ =0x00002C48
    adds r5, r7, r6
    ldr r3, _08010628 @ =0x00002C4A
    adds r6, r7, r3
    add r7, sp, #0x18
    mov r3, sp
    adds r3, #0x20
    str r3, [sp, #0x8c]
    adds r3, #8
    str r3, [sp, #0x90]
    adds r3, #8
    str r3, [sp, #0x94]
    adds r3, #8
    str r3, [sp, #0x98]
    adds r3, #8
    str r3, [sp, #0x9c]
    movs r3, #0
_080104C8:
    strb r3, [r0]
    subs r1, #1
    adds r0, #1
    cmp r1, #0
    bgt _080104C8
    movs r0, #0
    str r0, [sp, #0x14]
    adds r0, r2, #0
    adds r0, #0x10
    movs r1, #4
    ldr r2, [r4]
_080104DE:
    strb r2, [r0]
    subs r1, #1
    adds r0, #1
    cmp r1, #0
    bgt _080104DE
    ldr r1, [sp, #0x48]
    ldr r2, _0801062C @ =0x00002210
    adds r0, r1, r2
    bl func_080114F8
    ldr r3, [sp, #0x48]
    ldr r1, _08010630 @ =0x00002214
    adds r0, r3, r1
    bl func_0809A8AC
    ldr r3, [sp, #0x48]
    ldr r0, _08010634 @ =0x00002C1C
    adds r2, r3, r0
    ldrb r0, [r5]
    movs r1, #3
    orrs r0, r1
    strb r0, [r5]
    ldr r0, [r2, #0x2c]
    ldr r1, _08010638 @ =0xFFF80003
    ands r0, r1
    str r0, [r2, #0x2c]
    ldrb r1, [r6]
    movs r0, #9
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #0x11
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #0x10
    ands r0, r1
    subs r1, #0x20
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r6]
    ldr r1, _0801063C @ =0x00002C4C
    adds r0, r3, r1
    movs r1, #9
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
_0801053A:
    strb r2, [r0]
    strh r2, [r0, #2]
    adds r0, #4
    subs r1, #1
    cmp r1, r3
    bne _0801053A
    ldr r2, [sp, #0x48]
    ldr r3, _08010640 @ =0x00002C74
    adds r0, r2, r3
    bl func_08011510
    ldr r6, [sp, #0x48]
    movs r1, #0xb2
    lsls r1, r1, #6
    adds r0, r6, r1
    bl func_0809CD78
    ldr r2, _08010644 @ =0x00002E58
    adds r0, r6, r2
    bl func_0809CE8C
    movs r3, #0xd2
    lsls r3, r3, #6
    adds r0, r6, r3
    bl func_0809C144
    ldr r0, _08010648 @ =0x00003494
    adds r2, r6, r0
    movs r3, #2
    movs r5, #0x10
    rsbs r5, r5, #0
    movs r4, #1
    rsbs r4, r4, #0
_0801057C:
    ldrb r1, [r2]
    adds r0, r5, #0
    ands r0, r1
    strb r0, [r2]
    adds r2, #0x10
    subs r3, #1
    cmp r3, r4
    bne _0801057C
    ldr r1, [sp, #0x48]
    ldr r2, _0801064C @ =0x000034C4
    adds r0, r1, r2
    movs r1, #0
    strb r1, [r0]
    ldr r3, [sp, #0x48]
    ldr r6, _08010650 @ =0x000034C5
    adds r0, r3, r6
    strb r1, [r0]
    ldr r1, _08010654 @ =0x000034C8
    adds r0, r3, r1
    bl func_080A1A48
    ldr r2, [sp, #0x48]
    ldr r3, _08010658 @ =0x000034D8
    adds r0, r2, r3
    bl func_0809C4E4
    ldr r6, [sp, #0x48]
    ldr r1, _0801065C @ =0x000034DC
    adds r0, r6, r1
    bl func_0809BFE8
    ldr r2, _08010608 @ =0x00001C70
    adds r0, r6, r2
    movs r1, #0x32
    bl AddAffection__6Animali
    movs r0, #0
    ldr r3, _08010660 @ =0x000009DC
    adds r6, r6, r3
    mov r8, r6
    str r7, [sp, #0x4c]
_080105CE:
    movs r6, #0
    str r6, [sp, #0x50]
    adds r0, #1
    str r0, [sp, #0x80]
_080105D6:
    movs r7, #1
    cmp r7, #0
    beq _08010664
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b _08010676
    .align 2, 0
_080105F0: .4byte 0xFFFC1FFF
_080105F4: .4byte 0xFFFFFE03
_080105F8: .4byte 0xFFFFFF00
_080105FC: .4byte 0xFFFFF81F
_08010600: .4byte 0x00001AA8
_08010604: .4byte 0x00001BD8
_08010608: .4byte 0x00001C70
_0801060C: .4byte 0x00001CCC
_08010610: .4byte 0xFFFFFC00
_08010614: .4byte 0x00001CD4
_08010618: .4byte 0x0000214C
_0801061C: .4byte 0x000021CC
_08010620: .4byte 0x000021E0
_08010624: .4byte 0x00002C48
_08010628: .4byte 0x00002C4A
_0801062C: .4byte 0x00002210
_08010630: .4byte 0x00002214
_08010634: .4byte 0x00002C1C
_08010638: .4byte 0xFFF80003
_0801063C: .4byte 0x00002C4C
_08010640: .4byte 0x00002C74
_08010644: .4byte 0x00002E58
_08010648: .4byte 0x00003494
_0801064C: .4byte 0x000034C4
_08010650: .4byte 0x000034C5
_08010654: .4byte 0x000034C8
_08010658: .4byte 0x000034D8
_0801065C: .4byte 0x000034DC
_08010660: .4byte 0x000009DC
_08010664:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
_08010676:
    bl __umodsi3
    adds r7, r0, #0
    movs r1, #0x2b
    adds r0, r7, #0
    muls r0, r1, r0
    mov sb, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, r8
    mov sl, r0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010730
    movs r2, #1
    cmp r2, #0
    beq _080106D8
    adds r5, r6, #1
    mov r3, sb
    adds r0, r5, r3
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010730
    adds r0, r7, #1
    movs r1, #0x2b
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010730
    adds r0, r5, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010730
_080106D8:
    mov r2, sl
    ldr r0, [r2]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010730
    movs r3, #1
    cmp r3, #0
    beq _08010726
    adds r2, r6, #1
    mov r1, sb
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010730
    adds r0, r7, #1
    movs r3, #0x2b
    adds r1, r0, #0
    muls r1, r3, r1
    adds r0, r6, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010730
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010730
_08010726:
    ldr r0, [sp, #0x4c]
    str r6, [r0]
    str r7, [r0, #4]
    movs r0, #1
    b _0801073E
_08010730:
    ldr r1, [sp, #0x50]
    adds r1, #1
    str r1, [sp, #0x50]
    cmp r1, #0x63
    bhi _0801073C
    b _080105D6
_0801073C:
    movs r0, #0
_0801073E:
    cmp r0, #0
    beq _080107A2
    ldr r0, [sp, #0x18]
    ldr r2, [sp, #0x4c]
    ldr r1, [r2, #4]
    movs r3, #0x2b
    muls r1, r3, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x1f
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x18]
    adds r0, #1
    ldr r6, [sp, #0x4c]
    ldr r1, [r6, #4]
    movs r7, #0x2b
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x20
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x18]
    ldr r1, [r6, #4]
    adds r1, #1
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x21
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x18]
    adds r0, #1
    ldr r1, [r6, #4]
    adds r1, #1
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x22
    movs r2, #8
    bl method_0800A134__9FieldPlotii
_080107A2:
    ldr r0, [sp, #0x80]
    cmp r0, #9
    bhi _080107AA
    b _080105CE
_080107AA:
    movs r0, #0
    ldr r1, [sp, #0x48]
    ldr r2, _080107DC @ =0x000009DC
    adds r1, r1, r2
    mov r8, r1
    ldr r3, [sp, #0x8c]
    str r3, [sp, #0x54]
_080107B8:
    movs r6, #0
    str r6, [sp, #0x58]
    adds r0, #1
    str r0, [sp, #0x88]
_080107C0:
    movs r7, #1
    cmp r7, #0
    beq _080107E0
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b _080107F2
    .align 2, 0
_080107DC: .4byte 0x000009DC
_080107E0:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
_080107F2:
    bl __umodsi3
    adds r7, r0, #0
    movs r1, #0x2b
    adds r0, r7, #0
    muls r0, r1, r0
    mov sb, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, r8
    mov sl, r0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080108AC
    movs r2, #1
    cmp r2, #0
    beq _08010854
    adds r5, r6, #1
    mov r3, sb
    adds r0, r5, r3
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080108AC
    adds r0, r7, #1
    movs r1, #0x2b
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080108AC
    adds r0, r5, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080108AC
_08010854:
    mov r2, sl
    ldr r0, [r2]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _080108AC
    movs r3, #1
    cmp r3, #0
    beq _080108A2
    adds r2, r6, #1
    mov r1, sb
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _080108AC
    adds r0, r7, #1
    movs r3, #0x2b
    adds r1, r0, #0
    muls r1, r3, r1
    adds r0, r6, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _080108AC
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _080108AC
_080108A2:
    ldr r0, [sp, #0x54]
    str r6, [r0]
    str r7, [r0, #4]
    movs r0, #1
    b _080108B8
_080108AC:
    ldr r1, [sp, #0x58]
    adds r1, #1
    str r1, [sp, #0x58]
    cmp r1, #0x63
    bls _080107C0
    movs r0, #0
_080108B8:
    cmp r0, #0
    beq _0801091C
    ldr r0, [sp, #0x20]
    ldr r2, [sp, #0x54]
    ldr r1, [r2, #4]
    movs r3, #0x2b
    muls r1, r3, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x23
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x20]
    adds r0, #1
    ldr r6, [sp, #0x54]
    ldr r1, [r6, #4]
    movs r7, #0x2b
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x24
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x20]
    ldr r1, [r6, #4]
    adds r1, #1
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x25
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x20]
    adds r0, #1
    ldr r1, [r6, #4]
    adds r1, #1
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x26
    movs r2, #8
    bl method_0800A134__9FieldPlotii
_0801091C:
    ldr r0, [sp, #0x88]
    cmp r0, #4
    bhi _08010924
    b _080107B8
_08010924:
    movs r0, #0
    ldr r1, [sp, #0x48]
    ldr r2, _08010954 @ =0x000009DC
    adds r1, r1, r2
    mov r8, r1
    ldr r3, [sp, #0x90]
    str r3, [sp, #0x5c]
_08010932:
    movs r6, #0
    str r6, [sp, #0x60]
    adds r0, #1
    str r0, [sp, #0xa4]
_0801093A:
    movs r7, #1
    cmp r7, #0
    beq _08010958
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b _0801096A
    .align 2, 0
_08010954: .4byte 0x000009DC
_08010958:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
_0801096A:
    bl __umodsi3
    adds r7, r0, #0
    movs r1, #0x2b
    adds r0, r7, #0
    muls r0, r1, r0
    mov sb, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, r8
    mov sl, r0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010A24
    movs r2, #1
    cmp r2, #0
    beq _080109CC
    adds r5, r6, #1
    mov r3, sb
    adds r0, r5, r3
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010A24
    adds r0, r7, #1
    movs r1, #0x2b
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010A24
    adds r0, r5, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010A24
_080109CC:
    mov r2, sl
    ldr r0, [r2]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010A24
    movs r3, #1
    cmp r3, #0
    beq _08010A1A
    adds r2, r6, #1
    mov r1, sb
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010A24
    adds r0, r7, #1
    movs r3, #0x2b
    adds r1, r0, #0
    muls r1, r3, r1
    adds r0, r6, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010A24
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010A24
_08010A1A:
    ldr r0, [sp, #0x5c]
    str r6, [r0]
    str r7, [r0, #4]
    movs r0, #1
    b _08010A30
_08010A24:
    ldr r1, [sp, #0x60]
    adds r1, #1
    str r1, [sp, #0x60]
    cmp r1, #0x63
    bls _0801093A
    movs r0, #0
_08010A30:
    cmp r0, #0
    beq _08010A94
    ldr r0, [sp, #0x28]
    ldr r2, [sp, #0x5c]
    ldr r1, [r2, #4]
    movs r3, #0x2b
    muls r1, r3, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x1b
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x28]
    adds r0, #1
    ldr r6, [sp, #0x5c]
    ldr r1, [r6, #4]
    movs r7, #0x2b
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x1c
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x28]
    ldr r1, [r6, #4]
    adds r1, #1
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x1d
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x28]
    adds r0, #1
    ldr r1, [r6, #4]
    adds r1, #1
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x1e
    movs r2, #8
    bl method_0800A134__9FieldPlotii
_08010A94:
    ldr r0, [sp, #0xa4]
    cmp r0, #9
    bhi _08010A9C
    b _08010932
_08010A9C:
    movs r1, #0
    ldr r0, [sp, #0x48]
    ldr r2, _08010ACC @ =0x000009DC
    adds r0, r0, r2
    mov r8, r0
    ldr r3, [sp, #0x94]
    str r3, [sp, #0x64]
_08010AAA:
    movs r6, #0
    str r6, [sp, #0x68]
    adds r1, #1
    str r1, [sp, #0x7c]
_08010AB2:
    movs r7, #0
    cmp r7, #0
    beq _08010AD0
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b _08010AE2
    .align 2, 0
_08010ACC: .4byte 0x000009DC
_08010AD0:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
_08010AE2:
    bl __umodsi3
    adds r7, r0, #0
    movs r1, #0x2b
    adds r0, r7, #0
    muls r0, r1, r0
    mov sb, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, r8
    mov sl, r0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010B9C
    movs r2, #0
    cmp r2, #0
    beq _08010B44
    adds r5, r6, #1
    mov r3, sb
    adds r0, r5, r3
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010B9C
    adds r0, r7, #1
    movs r1, #0x2b
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010B9C
    adds r0, r5, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010B9C
_08010B44:
    mov r2, sl
    ldr r0, [r2]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010B9C
    movs r3, #0
    cmp r3, #0
    beq _08010B92
    adds r2, r6, #1
    mov r1, sb
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010B9C
    adds r0, r7, #1
    movs r3, #0x2b
    adds r1, r0, #0
    muls r1, r3, r1
    adds r0, r6, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010B9C
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010B9C
_08010B92:
    ldr r0, [sp, #0x64]
    str r6, [r0]
    str r7, [r0, #4]
    movs r0, #1
    b _08010BA8
_08010B9C:
    ldr r1, [sp, #0x68]
    adds r1, #1
    str r1, [sp, #0x68]
    cmp r1, #0x63
    bls _08010AB2
    movs r0, #0
_08010BA8:
    cmp r0, #0
    beq _08010BC4
    ldr r0, [sp, #0x30]
    ldr r3, [sp, #0x94]
    ldr r2, [r3, #4]
    movs r1, #0x2b
    muls r1, r2, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x15
    movs r2, #8
    bl method_0800A134__9FieldPlotii
_08010BC4:
    ldr r1, [sp, #0x7c]
    ldr r0, _08010C00 @ =0x0000012B
    cmp r1, r0
    bhi _08010BCE
    b _08010AAA
_08010BCE:
    movs r0, #0
    ldr r6, [sp, #0x48]
    ldr r7, _08010C04 @ =0x000009DC
    adds r6, r6, r7
    mov r8, r6
    ldr r1, [sp, #0x98]
    str r1, [sp, #0x6c]
_08010BDC:
    movs r2, #0
    str r2, [sp, #0x70]
    adds r0, #1
    str r0, [sp, #0x84]
_08010BE4:
    movs r3, #0
    cmp r3, #0
    beq _08010C08
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b _08010C1A
    .align 2, 0
_08010C00: .4byte 0x0000012B
_08010C04: .4byte 0x000009DC
_08010C08:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
_08010C1A:
    bl __umodsi3
    adds r7, r0, #0
    movs r1, #0x2b
    adds r0, r7, #0
    muls r0, r1, r0
    mov sb, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, r8
    mov sl, r0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010CD4
    movs r2, #0
    cmp r2, #0
    beq _08010C7C
    adds r5, r6, #1
    mov r3, sb
    adds r0, r5, r3
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010CD4
    adds r0, r7, #1
    movs r1, #0x2b
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010CD4
    adds r0, r5, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010CD4
_08010C7C:
    mov r2, sl
    ldr r0, [r2]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010CD4
    movs r3, #0
    cmp r3, #0
    beq _08010CCA
    adds r2, r6, #1
    mov r1, sb
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010CD4
    adds r0, r7, #1
    movs r3, #0x2b
    adds r1, r0, #0
    muls r1, r3, r1
    adds r0, r6, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010CD4
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010CD4
_08010CCA:
    ldr r0, [sp, #0x6c]
    str r6, [r0]
    str r7, [r0, #4]
    movs r0, #1
    b _08010CE0
_08010CD4:
    ldr r1, [sp, #0x70]
    adds r1, #1
    str r1, [sp, #0x70]
    cmp r1, #0x63
    bls _08010BE4
    movs r0, #0
_08010CE0:
    cmp r0, #0
    beq _08010CFC
    ldr r0, [sp, #0x38]
    ldr r3, [sp, #0x98]
    ldr r2, [r3, #4]
    movs r1, #0x2b
    muls r1, r2, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x16
    movs r2, #8
    bl method_0800A134__9FieldPlotii
_08010CFC:
    ldr r0, [sp, #0x84]
    cmp r0, #0x31
    bhi _08010D04
    b _08010BDC
_08010D04:
    movs r0, #0
    ldr r6, [sp, #0x48]
    ldr r7, _08010D34 @ =0x000009DC
    adds r6, r6, r7
    mov r8, r6
    ldr r1, [sp, #0x9c]
    str r1, [sp, #0x74]
_08010D12:
    movs r2, #0
    str r2, [sp, #0x78]
    adds r0, #1
    str r0, [sp, #0xa0]
_08010D1A:
    movs r3, #0
    cmp r3, #0
    beq _08010D38
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b _08010D4A
    .align 2, 0
_08010D34: .4byte 0x000009DC
_08010D38:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
_08010D4A:
    bl __umodsi3
    adds r7, r0, #0
    movs r1, #0x2b
    adds r0, r7, #0
    muls r0, r1, r0
    mov sb, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, r8
    mov sl, r0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010E04
    movs r2, #0
    cmp r2, #0
    beq _08010DAC
    adds r5, r6, #1
    mov r3, sb
    adds r0, r5, r3
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010E04
    adds r0, r7, #1
    movs r1, #0x2b
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010E04
    adds r0, r5, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08010E04
_08010DAC:
    mov r2, sl
    ldr r0, [r2]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010E04
    movs r3, #0
    cmp r3, #0
    beq _08010DFA
    adds r2, r6, #1
    mov r1, sb
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010E04
    adds r0, r7, #1
    movs r3, #0x2b
    adds r1, r0, #0
    muls r1, r3, r1
    adds r0, r6, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010E04
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne _08010E04
_08010DFA:
    ldr r0, [sp, #0x74]
    str r6, [r0]
    str r7, [r0, #4]
    movs r0, #1
    b _08010E10
_08010E04:
    ldr r1, [sp, #0x78]
    adds r1, #1
    str r1, [sp, #0x78]
    cmp r1, #0x63
    bls _08010D1A
    movs r0, #0
_08010E10:
    cmp r0, #0
    beq _08010E2C
    ldr r0, [sp, #0x40]
    ldr r3, [sp, #0x9c]
    ldr r2, [r3, #4]
    movs r1, #0x2b
    muls r1, r2, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x17
    movs r2, #8
    bl method_0800A134__9FieldPlotii
_08010E2C:
    ldr r0, [sp, #0xa0]
    cmp r0, #0x31
    bhi _08010E34
    b _08010D12
_08010E34:
    ldr r0, [sp, #0x48]
    add sp, #0xa8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08010E48
func_08010E48: @ 0x08010E48
    ldrb r0, [r0]
    lsls r0, r0, #0x1f
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08010E50
func_08010E50: @ 0x08010E50
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08010E58
func_08010E58: @ 0x08010E58
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08010E60
func_08010E60: @ 0x08010E60
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08010E68
func_08010E68: @ 0x08010E68
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    movs r7, #1
    ldr r1, _08010E9C @ =0x00001C70
    adds r0, r6, r1
    bl GetAffection__C6Animal
    cmp r0, #0xc7
    bhi _08010E7C
    movs r7, #0
_08010E7C:
    adds r0, r6, #0
    adds r0, #0x14
    bl GetHorse__C4Farm
    cmp r0, #0
    beq _08010E92
    bl GetAffection__C6Animal
    cmp r0, #0xc7
    bhi _08010E92
    movs r7, #0
_08010E92:
    movs r4, #0
    movs r0, #0x82
    lsls r0, r0, #3
    adds r5, r6, r0
    b _08010EB8
    .align 2, 0
_08010E9C: .4byte 0x00001C70
_08010EA0:
    adds r0, r5, #0
    adds r1, r4, #0
    bl GetChicken__C4CoopUi
    cmp r0, #0
    beq _08010EB6
    bl GetAffection__C6Animal
    cmp r0, #0xc7
    bhi _08010EB6
    movs r7, #0
_08010EB6:
    adds r4, #1
_08010EB8:
    adds r0, r5, #0
    bl GetCapacity__C4Coop
    cmp r4, r0
    blo _08010EA0
    movs r4, #0
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r5, r6, r1
    b _08010EF0
_08010ECC:
    adds r0, r5, #0
    adds r1, r4, #0
    bl GetCow__C4BarnUi
    cmp r0, #0
    bne _08010EE4
    adds r0, r5, #0
    adds r1, r4, #0
    bl GetSheep__C4BarnUi
    cmp r0, #0
    beq _08010EEE
_08010EE4:
    bl GetAffection__C6Animal
    cmp r0, #0xc7
    bhi _08010EEE
    movs r7, #0
_08010EEE:
    adds r4, #1
_08010EF0:
    adds r0, r5, #0
    bl GetCapacity__C4Barn
    cmp r4, r0
    blo _08010ECC
    adds r0, r7, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08010F04
func_08010F04: @ 0x08010F04
    ldrb r0, [r0]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08010F0C
func_08010F0C: @ 0x08010F0C
    ldr r0, [r0]
    lsls r0, r0, #0xe
    lsrs r0, r0, #0x1b
    bx lr
_08010F14:
    .byte 0x40, 0x88, 0xC0, 0x05, 0x40, 0x0E, 0x70, 0x47

    thumb_func_start func_08010F1C
func_08010F1C: @ 0x08010F1C
    ldrb r0, [r0, #3]
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1a
    bx lr

    thumb_func_start func_08010F24
func_08010F24: @ 0x08010F24
    ldrb r1, [r0]
    movs r2, #1
    orrs r1, r2
    strb r1, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_08010F30
func_08010F30: @ 0x08010F30
    ldrb r1, [r0]
    movs r2, #2
    orrs r1, r2
    strb r1, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_08010F3C
func_08010F3C: @ 0x08010F3C
    ldrb r1, [r0]
    movs r2, #4
    orrs r1, r2
    strb r1, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_08010F48
func_08010F48: @ 0x08010F48
    ldrb r1, [r0]
    movs r2, #8
    orrs r1, r2
    strb r1, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_08010F54
func_08010F54: @ 0x08010F54
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x1c
    adds r6, r0, #0
    ldrb r1, [r6]
    movs r0, #0x11
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r6]
    ldr r0, [r6, #0xc]
    str r0, [r6, #8]
    ldrb r0, [r6, #0x11]
    lsls r1, r0, #0x1e
    movs r3, #3
    lsrs r1, r1, #0x1e
    movs r4, #4
    rsbs r4, r4, #0
    adds r2, r4, #0
    mov r5, sb
    ands r2, r5
    orrs r2, r1
    mov sb, r2
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1b
    adds r0, #1
    adds r5, r0, #1
    cmp r0, #0x1e
    bne _08010FA2
    lsls r0, r2, #0x1e
    lsrs r0, r0, #0x1e
    adds r0, #1
    ands r0, r3
    ands r2, r4
    orrs r2, r0
    mov sb, r2
    movs r5, #1
_08010FA2:
    movs r0, #0
    mov r8, r0
    movs r2, #0
    movs r1, #0x14
    adds r1, r1, r6
    mov sl, r1
    adds r0, r6, #0
    adds r0, #0x11
    str r0, [sp, #0x18]
    adds r1, r6, #0
    adds r1, #8
    str r1, [sp, #0x14]
    mov r1, sb
    lsls r0, r1, #0x1e
    lsrs r3, r0, #0x1e
    ldr r4, _080110EC @ =0x080F0566
_08010FC2:
    adds r0, r2, r4
    ldrb r1, [r0]
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1e
    cmp r3, r0
    bne _08010FDA
    lsls r0, r1, #0x19
    lsrs r0, r0, #0x1b
    cmp r5, r0
    bne _08010FDA
    movs r0, #1
    mov r8, r0
_08010FDA:
    adds r2, #1
    cmp r2, #0x18
    ble _08010FC2
    ldr r1, _080110F0 @ =0x00001CD4
    adds r4, r6, r1
    adds r0, r4, #0
    bl func_080A041C
    cmp r0, #0
    bne _08011056
    adds r0, r4, #0
    bl func_080A1480
    adds r4, r0, #0
    mov ip, r4
    movs r3, #0xc8
    str r3, [sp, #4]
    ldrb r0, [r6, #0x10]
    lsrs r2, r0, #3
    lsls r1, r2, #3
    subs r1, r1, r2
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    adds r1, r1, r0
    str r1, [sp, #8]
    add r0, sp, #8
    add r2, sp, #4
    cmp r3, r1
    bls _08011016
    adds r2, r0, #0
_08011016:
    ldr r7, [r2]
    str r3, [sp, #0xc]
    ldrb r0, [r4]
    lsrs r2, r0, #3
    lsls r1, r2, #3
    subs r1, r1, r2
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    adds r1, r1, r0
    str r1, [sp, #0x10]
    add r2, sp, #0x10
    add r0, sp, #0xc
    cmp r3, r1
    bls _08011034
    adds r0, r2, #0
_08011034:
    ldr r0, [r0]
    cmp r7, r0
    bne _08011056
    mov r0, sb
    lsls r1, r0, #0x1e
    mov r0, ip
    ldrb r2, [r0, #1]
    lsls r0, r2, #0x1e
    cmp r1, r0
    bne _08011056
    lsls r0, r2, #0x19
    lsrs r0, r0, #0x1b
    adds r0, #1
    cmp r5, r0
    bne _08011056
    movs r1, #1
    mov r8, r1
_08011056:
    ldr r5, _080110F4 @ =0x00001D6C
    adds r4, r6, r5
    adds r0, r4, #0
    bl GetRivalEventCount__C12Bachelorette
    cmp r0, #4
    bne _08011072
    adds r0, r4, #0
    bl GetDaysSinceRivalEvent__C12Bachelorette
    cmp r0, #5
    bne _08011072
    movs r0, #1
    mov r8, r0
_08011072:
    ldr r1, _080110F8 @ =0x00001E28
    adds r4, r6, r1
    adds r0, r4, #0
    bl GetRivalEventCount__C12Bachelorette
    cmp r0, #4
    bne _0801108E
    adds r0, r4, #0
    bl GetDaysSinceRivalEvent__C12Bachelorette
    cmp r0, #5
    bne _0801108E
    movs r5, #1
    mov r8, r5
_0801108E:
    ldr r0, _080110FC @ =0x00001EB8
    adds r4, r6, r0
    adds r0, r4, #0
    bl GetRivalEventCount__C12Bachelorette
    cmp r0, #4
    bne _080110AA
    adds r0, r4, #0
    bl GetDaysSinceRivalEvent__C12Bachelorette
    cmp r0, #5
    bne _080110AA
    movs r1, #1
    mov r8, r1
_080110AA:
    ldr r5, _08011100 @ =0x00001EE4
    adds r4, r6, r5
    adds r0, r4, #0
    bl GetRivalEventCount__C12Bachelorette
    cmp r0, #4
    bne _080110C6
    adds r0, r4, #0
    bl GetDaysSinceRivalEvent__C12Bachelorette
    cmp r0, #5
    bne _080110C6
    movs r0, #1
    mov r8, r0
_080110C6:
    ldr r1, _08011104 @ =0x00001F38
    adds r4, r6, r1
    adds r0, r4, #0
    bl GetRivalEventCount__C12Bachelorette
    cmp r0, #4
    bne _080110E2
    adds r0, r4, #0
    bl GetDaysSinceRivalEvent__C12Bachelorette
    cmp r0, #5
    bne _080110E2
    movs r5, #1
    mov r8, r5
_080110E2:
    mov r0, r8
    cmp r0, #1
    bne _08011108
    movs r0, #0
    b _0801116A
    .align 2, 0
_080110EC: .4byte 0x080F0566
_080110F0: .4byte 0x00001CD4
_080110F4: .4byte 0x00001D6C
_080110F8: .4byte 0x00001E28
_080110FC: .4byte 0x00001EB8
_08011100: .4byte 0x00001EE4
_08011104: .4byte 0x00001F38
_08011108:
    bl rand
    asrs r2, r0, #2
    movs r0, #0xff
    ands r2, r0
    mov r1, sb
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    beq _08011138
    cmp r0, #1
    bgt _08011126
    cmp r0, #0
    beq _08011130
    b _0801116C
_08011126:
    cmp r0, #2
    beq _0801114A
    cmp r0, #3
    beq _08011156
    b _0801116C
_08011130:
    cmp r2, #0xb3
    bls _0801116A
    movs r0, #1
    b _0801116A
_08011138:
    cmp r2, #0xe5
    bhi _08011140
    movs r0, #0
    b _0801116A
_08011140:
    subs r2, #0xe6
    cmp r2, #0xc
    bls _0801116A
    movs r0, #3
    b _0801116A
_0801114A:
    cmp r2, #0xcd
    bhi _08011152
    movs r0, #0
    b _0801116A
_08011152:
    movs r0, #1
    b _0801116A
_08011156:
    cmp r2, #0x7f
    bhi _0801115E
    movs r0, #0
    b _0801116A
_0801115E:
    subs r2, #0x80
    cmp r2, #0x65
    bhi _08011168
    movs r0, #2
    b _0801116A
_08011168:
    movs r0, #4
_0801116A:
    str r0, [r6, #0xc]
_0801116C:
    ldr r1, [r6, #8]
    mov r0, sl
    ldr r2, [sp, #0x18]
    bl DayUpdate__4FarmiRC4Date
    ldrb r1, [r6, #0x11]
    lsls r0, r1, #0x19
    lsrs r0, r0, #0x1b
    cmp r0, #0
    bne _080111A0
    lsls r0, r1, #0x1e
    lsrs r7, r0, #0x1e
    ldr r5, _08011200 @ =0x000009DC
    adds r4, r6, r5
    ldr r1, _08011204 @ =0x00001AA8
    adds r0, r6, r1
    cmp r4, r0
    bhs _080111A0
    adds r5, r0, #0
_08011192:
    adds r0, r4, #0
    adds r1, r7, #0
    bl func_0800AB08
    adds r4, #4
    cmp r4, r5
    blo _08011192
_080111A0:
    ldr r0, _08011208 @ =0x00001BD8
    adds r5, r6, r0
    adds r0, r5, #0
    bl func_0800EE60
    ldr r1, _0801120C @ =0x00001C70
    adds r0, r6, r1
    bl DayUpdate__3Dog
    ldr r1, _08011210 @ =0x00002C74
    adds r0, r6, r1
    bl func_08011568
    ldr r0, _08011214 @ =0x00001CD4
    adds r4, r6, r0
    ldr r1, _08011218 @ =0x0000214C
    adds r2, r6, r1
    mov r0, sl
    str r0, [sp]
    adds r0, r4, #0
    ldr r1, [sp, #0x14]
    adds r3, r5, #0
    bl func_080A0B18
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_0803D7E4
    ldr r1, _0801121C @ =0x00001F64
    adds r4, r6, r1
    adds r0, r4, #0
    bl func_0809EB70
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080111EA
    b _08011328
_080111EA:
    adds r0, r4, #0
    bl func_0809EB68
    cmp r0, #0xd
    bls _080111F6
    b _08011318
_080111F6:
    lsls r0, r0, #2
    ldr r1, _08011220 @ =_08011224
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08011200: .4byte 0x000009DC
_08011204: .4byte 0x00001AA8
_08011208: .4byte 0x00001BD8
_0801120C: .4byte 0x00001C70
_08011210: .4byte 0x00002C74
_08011214: .4byte 0x00001CD4
_08011218: .4byte 0x0000214C
_0801121C: .4byte 0x00001F64
_08011220: .4byte _08011224
_08011224: @ jump table
    .4byte _08011318 @ case 0
    .4byte _0801125C @ case 1
    .4byte _0801127C @ case 2
    .4byte _08011288 @ case 3
    .4byte _08011294 @ case 4
    .4byte _0801129C @ case 5
    .4byte _080112AA @ case 6
    .4byte _080112B8 @ case 7
    .4byte _080112C6 @ case 8
    .4byte _080112D4 @ case 9
    .4byte _080112E2 @ case 10
    .4byte _080112F0 @ case 11
    .4byte _080112FE @ case 12
    .4byte _0801130C @ case 13
_0801125C:
    movs r5, #0xfa
    lsls r5, r5, #1
    adds r4, r6, r5
    adds r0, r4, #0
    bl GetUpgradeLevel__C9FarmHouse
    cmp r0, #1
    bhi _08011274
    adds r0, r4, #0
    bl UpgradeHouseLevel__9FarmHouse
    b _08011318
_08011274:
    adds r0, r4, #0
    bl AddBathroom__9FarmHouse
    b _08011318
_0801127C:
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r6, r1
    bl Upgrade__4Coop
    b _08011318
_08011288:
    movs r5, #0xbe
    lsls r5, r5, #3
    adds r0, r6, r5
    bl Upgrade__4Barn
    b _08011318
_08011294:
    adds r0, r6, #0
    bl func_08010F30
    b _08011318
_0801129C:
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r6, r1
    movs r1, #0
    bl SetWindowStyle__9FarmHouseUi
    b _08011318
_080112AA:
    movs r5, #0xfa
    lsls r5, r5, #1
    adds r0, r6, r5
    movs r1, #1
    bl SetWindowStyle__9FarmHouseUi
    b _08011318
_080112B8:
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r6, r1
    movs r1, #2
    bl SetWindowStyle__9FarmHouseUi
    b _08011318
_080112C6:
    movs r5, #0xfa
    lsls r5, r5, #1
    adds r0, r6, r5
    movs r1, #0
    bl SetMailboxStyle__9FarmHouseUi
    b _08011318
_080112D4:
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r6, r1
    movs r1, #1
    bl SetMailboxStyle__9FarmHouseUi
    b _08011318
_080112E2:
    movs r5, #0xfa
    lsls r5, r5, #1
    adds r0, r6, r5
    movs r1, #2
    bl SetMailboxStyle__9FarmHouseUi
    b _08011318
_080112F0:
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r6, r1
    movs r1, #0
    bl SetDoghouseStyle__9FarmHouseUi
    b _08011318
_080112FE:
    movs r5, #0xfa
    lsls r5, r5, #1
    adds r0, r6, r5
    movs r1, #1
    bl SetDoghouseStyle__9FarmHouseUi
    b _08011318
_0801130C:
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r6, r1
    movs r1, #2
    bl SetDoghouseStyle__9FarmHouseUi
_08011318:
    ldr r5, _08011324 @ =0x00001F64
    adds r0, r6, r5
    bl func_0809EBD4
    b _0801132E
    .align 2, 0
_08011324: .4byte 0x00001F64
_08011328:
    adds r0, r4, #0
    bl func_0809EC48
_0801132E:
    ldr r0, _08011354 @ =0x00001DAC
    adds r4, r6, r0
    adds r0, r4, #0
    bl func_0809ECE0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080113AA
    adds r0, r4, #0
    bl func_0809ECD8
    cmp r0, #0x24
    beq _08011378
    cmp r0, #0x24
    bgt _08011358
    cmp r0, #0x23
    beq _0801135E
    b _080113AA
    .align 2, 0
_08011354: .4byte 0x00001DAC
_08011358:
    cmp r0, #0x25
    beq _08011392
    b _080113AA
_0801135E:
    movs r1, #0x82
    lsls r1, r1, #3
    adds r4, r6, r1
    adds r0, r4, #0
    bl method_0800C5C4__C4Coop
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080113AA
    adds r0, r4, #0
    bl method_0800C888__4Coop
    b _080113AA
_08011378:
    movs r5, #0xbe
    lsls r5, r5, #3
    adds r4, r6, r5
    adds r0, r4, #0
    bl method_0800CF00__C4Barn
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080113AA
    adds r0, r4, #0
    bl method_0800D3A0__4Barn
    b _080113AA
_08011392:
    movs r0, #0xbe
    lsls r0, r0, #3
    adds r4, r6, r0
    adds r0, r4, #0
    bl method_0800CF08__C4Barn
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080113AA
    adds r0, r4, #0
    bl method_0800D3B8__4Barn
_080113AA:
    ldrb r0, [r6, #0x11]
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1b
    cmp r0, #0
    bne _080113C4
    ldr r1, _080113C0 @ =0x00001AA8
    adds r0, r6, r1
    bl func_0809AE6C
    b _080113CC
    .align 2, 0
_080113C0: .4byte 0x00001AA8
_080113C4:
    ldr r5, _08011400 @ =0x00001AA8
    adds r0, r6, r5
    bl func_0809ADA8
_080113CC:
    ldr r1, _08011404 @ =0x000034C8
    adds r0, r6, r1
    bl func_080A1A4C
    ldr r5, _08011408 @ =0x000034DC
    adds r0, r6, r5
    bl func_0809C0D4
    ldrb r1, [r6, #3]
    movs r0, #0x7f
    ands r0, r1
    strb r0, [r6, #3]
    ldrb r1, [r6, #4]
    movs r0, #2
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r6, #4]
    add sp, #0x1c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08011400: .4byte 0x00001AA8
_08011404: .4byte 0x000034C8
_08011408: .4byte 0x000034DC

    thumb_func_start func_0801140C
func_0801140C: @ 0x0801140C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r7, r4, #0
    adds r7, #0x54
    adds r0, r7, #0
    bl GetValueShipped__C11ShippingBin
    adds r5, r0, #0
    ldr r0, _08011450 @ =0x00001AA8
    adds r6, r4, r0
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_0809ABD8
    ldr r0, _08011454 @ =0x000034C5
    adds r4, r4, r0
    ldrb r0, [r4]
    cmp r0, #0
    beq _0801143E
    adds r0, r6, #0
    adds r1, r5, #0
    bl func_0809ABD8
    movs r0, #0
    strb r0, [r4]
_0801143E:
    adds r0, r7, #0
    bl ResetValueShipped__11ShippingBin
    rsbs r0, r5, #0
    orrs r0, r5
    lsrs r0, r0, #0x1f
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_08011450: .4byte 0x00001AA8
_08011454: .4byte 0x000034C5

    thumb_func_start func_08011458
func_08011458: @ 0x08011458
    ldrb r1, [r0]
    movs r2, #0x10
    orrs r1, r2
    strb r1, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_08011464
func_08011464: @ 0x08011464
    push {r4, lr}
    adds r4, r0, #0
    adds r2, r1, #0
    cmp r2, #0x63
    bls _08011470
    movs r2, #0x63
_08011470:
    ldr r3, [r4]
    lsls r0, r3, #0xe
    lsrs r0, r0, #0x1b
    cmp r0, r2
    blo _0801147E
    movs r0, #0
    b _0801148E
_0801147E:
    movs r1, #0x1f
    ands r1, r2
    lsls r1, r1, #0xd
    ldr r0, _08011494 @ =0xFFFC1FFF
    ands r0, r3
    orrs r0, r1
    str r0, [r4]
    movs r0, #1
_0801148E:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08011494: .4byte 0xFFFC1FFF

    thumb_func_start func_08011498
func_08011498: @ 0x08011498
    push {lr}
    adds r3, r0, #0
    cmp r1, #0x63
    bls _080114A2
    movs r1, #0x63
_080114A2:
    ldrh r2, [r3, #2]
    lsls r0, r2, #0x17
    lsrs r0, r0, #0x19
    cmp r0, r1
    blo _080114B0
    movs r0, #0
    b _080114C0
_080114B0:
    movs r0, #0x7f
    ands r1, r0
    lsls r1, r1, #2
    ldr r0, _080114C4 @ =0xFFFFFE03
    ands r0, r2
    orrs r0, r1
    strh r0, [r3, #2]
    movs r0, #1
_080114C0:
    pop {r1}
    bx r1
    .align 2, 0
_080114C4: .4byte 0xFFFFFE03

    thumb_func_start func_080114C8
func_080114C8: @ 0x080114C8
    push {lr}
    adds r3, r0, #0
    cmp r1, #0x63
    bls _080114D2
    movs r1, #0x63
_080114D2:
    ldrb r2, [r3, #3]
    lsls r0, r2, #0x19
    lsrs r0, r0, #0x1a
    cmp r0, r1
    blo _080114E0
    movs r0, #0
    b _080114F2
_080114E0:
    movs r0, #0x3f
    ands r1, r0
    lsls r1, r1, #1
    movs r0, #0x7f
    rsbs r0, r0, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r3, #3]
    movs r0, #1
_080114F2:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080114F8
func_080114F8: @ 0x080114F8
    ldrb r2, [r0]
    movs r1, #2
    rsbs r1, r1, #0
    ands r1, r2
    movs r2, #2
    orrs r1, r2
    movs r2, #4
    orrs r1, r2
    movs r2, #8
    orrs r1, r2
    strb r1, [r0]
    bx lr

    thumb_func_start func_08011510
func_08011510: @ 0x08011510
    movs r1, #0x10
    str r1, [r0]
    str r1, [r0, #4]
    movs r1, #0
    strb r1, [r0, #8]
    bx lr

    thumb_func_start func_0801151C
func_0801151C: @ 0x0801151C
    ldr r0, [r0]
    bx lr

    thumb_func_start func_08011520
func_08011520: @ 0x08011520
    ldr r0, [r0, #4]
    bx lr

    thumb_func_start func_08011524
func_08011524: @ 0x08011524
    push {lr}
    adds r1, r0, #0
    movs r2, #0
    ldr r0, [r1, #4]
    cmp r0, #0x10
    beq _08011538
    ldrb r0, [r1, #8]
    cmp r0, #0
    bne _08011538
    movs r2, #1
_08011538:
    adds r0, r2, #0
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08011540
func_08011540: @ 0x08011540
    str r1, [r0]
    bx lr

    thumb_func_start func_08011544
func_08011544: @ 0x08011544
    ldr r1, [r0]
    str r1, [r0, #4]
    movs r1, #2
    strb r1, [r0, #8]
    bx lr
    .align 2, 0

    thumb_func_start func_08011550
func_08011550: @ 0x08011550
    push {lr}
    adds r2, r0, #0
    ldr r1, [r2, #4]
    ldr r0, [r2]
    cmp r1, r0
    bne _08011560
    movs r0, #0x10
    str r0, [r2]
_08011560:
    movs r0, #0x10
    str r0, [r2, #4]
    pop {r0}
    bx r0

    thumb_func_start func_08011568
func_08011568: @ 0x08011568
    push {lr}
    adds r1, r0, #0
    ldr r0, [r1]
    cmp r0, #0x10
    beq _08011582
    ldr r0, [r1, #4]
    cmp r0, #0x10
    beq _08011582
    ldrb r0, [r1, #8]
    cmp r0, #0
    beq _08011582
    subs r0, #1
    strb r0, [r1, #8]
_08011582:
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08011588
func_08011588: @ 0x08011588
    push {lr}
    movs r3, #0
    cmp r0, #0
    beq _080115A2
    cmp r1, #0
    beq _080115A2
    adds r2, r0, #0
_08011596:
    ldrb r0, [r2]
    adds r3, r3, r0
    adds r2, #1
    subs r1, #1
    cmp r1, #0
    bne _08011596
_080115A2:
    adds r0, r3, #0
    pop {r1}
    bx r1
_080115A8:
    .byte 0x00, 0x48, 0x70, 0x47, 0xFC, 0x34, 0x00, 0x00

    thumb_func_start func_080115B0
func_080115B0: @ 0x080115B0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r7, r0, #0
    adds r5, r1, #0
    adds r4, r2, #0
    mov r8, r4
    ldr r6, _080115E0 @ =0x000034F4
    str r6, [sp]
    adds r0, r5, #0
    adds r1, r4, #0
    mov r2, sp
    movs r3, #4
    bl func_080006A4
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080115E8
    ldr r0, _080115E4 @ =gUnk_03000400
    ldrh r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #9
    b _0801163C
    .align 2, 0
_080115E0: .4byte 0x000034F4
_080115E4: .4byte gUnk_03000400
_080115E8:
    adds r4, #4
    adds r0, r5, #0
    adds r1, r4, #0
    adds r2, r7, #0
    adds r3, r6, #0
    bl func_080006A4
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0801160C
    ldr r0, _08011608 @ =gUnk_03000400
    ldrh r0, [r0]
    movs r1, #0x80
    lsls r1, r1, #0xa
    b _0801163C
    .align 2, 0
_08011608: .4byte gUnk_03000400
_0801160C:
    ldr r4, _08011630 @ =0x000034F8
    add r4, r8
    adds r0, r7, #0
    adds r1, r6, #0
    bl func_08011588
    str r0, [sp, #4]
    add r2, sp, #4
    adds r0, r5, #0
    adds r1, r4, #0
    movs r3, #4
    bl func_080006A4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08011634
    movs r0, #0
    b _0801163E
    .align 2, 0
_08011630: .4byte 0x000034F8
_08011634:
    ldr r0, _0801164C @ =gUnk_03000400
    ldrh r0, [r0]
    movs r1, #0xc0
    lsls r1, r1, #0xa
_0801163C:
    orrs r0, r1
_0801163E:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0801164C: .4byte gUnk_03000400

    thumb_func_start func_08011650
func_08011650: @ 0x08011650
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    adds r7, r0, #0
    str r1, [sp, #0x14]
    mov sl, r2
    adds r6, r3, #0
    adds r1, r7, #0
    adds r1, #8
    movs r0, #0
    mov sb, r0
    str r0, [r7, #8]
    str r0, [r1, #4]
    mov r2, sb
    strb r2, [r1, #8]
    ldrb r2, [r1, #9]
    movs r4, #4
    rsbs r4, r4, #0
    adds r0, r4, #0
    ands r0, r2
    movs r3, #0x7d
    rsbs r3, r3, #0
    mov r8, r3
    ands r0, r3
    strb r0, [r1, #9]
    ldrb r2, [r1, #0xa]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r2
    strb r0, [r1, #0xa]
    ldrh r2, [r1, #0xa]
    ldr r0, _08011870 @ =0xFFFFF81F
    ands r0, r2
    strh r0, [r1, #0xa]
    adds r0, r7, #0
    adds r0, #0x14
    ldr r5, _08011874 @ =0x080F058C
    adds r1, r5, #0
    bl __4FarmPCc
    ldr r1, _08011878 @ =0x00001AA8
    adds r0, r7, r1
    bl func_0809AB8C
    ldr r2, _0801187C @ =0x00001BD8
    adds r0, r7, r2
    mov r1, sp
    ldrb r1, [r1]
    ands r4, r1
    mov r1, sp
    strb r4, [r1]
    mov r3, r8
    ands r4, r3
    strb r4, [r1]
    adds r1, r5, #0
    mov r2, sp
    bl func_0800E354
    ldr r1, _08011880 @ =0x00001C70
    adds r0, r7, r1
    adds r1, r5, #0
    bl __3DogPCc
    movs r2, #0xe5
    lsls r2, r2, #5
    adds r0, r7, r2
    bl func_0800FF8C
    ldr r3, _08011884 @ =0x00001CCC
    adds r1, r7, r3
    movs r4, #0x8d
    lsls r4, r4, #2
    ldrh r2, [r1]
    ldr r3, _08011888 @ =0xFFFFFC00
    adds r0, r3, #0
    ands r0, r2
    orrs r0, r4
    strh r0, [r1]
    movs r5, #0
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
    ldr r1, _0801188C @ =0x00001CD4
    adds r0, r7, r1
    bl func_0809EEE8
    ldr r2, _08011890 @ =0x0000214C
    adds r0, r7, r2
    bl func_0809C6BC
    ldr r3, _08011894 @ =0x000021CC
    adds r2, r7, r3
    movs r0, #1
    str r0, [r2]
    mov r0, sb
    str r0, [r2, #4]
    ldr r1, _08011898 @ =0x000021E0
    adds r0, r7, r1
    strb r5, [r0]
    adds r3, #0x24
    adds r0, r7, r3
    strb r5, [r0]
    adds r1, #0x20
    adds r0, r7, r1
    strb r5, [r0]
    mov r3, sb
    str r3, [sp, #4]
    subs r1, #0x2c
    adds r0, r7, r1
    movs r1, #8
    add r5, sp, #8
    add r3, sp, #0xc
    mov sb, r3
    movs r3, #0
_08011752:
    strb r3, [r0]
    subs r1, #1
    adds r0, #1
    cmp r1, #0
    bgt _08011752
    movs r0, #0
    str r0, [sp, #8]
    adds r0, r2, #0
    adds r0, #0x10
    movs r1, #4
    ldr r2, _0801189C @ =0x00002C48
    adds r4, r7, r2
    ldr r3, _080118A0 @ =0x00002C4A
    adds r3, r3, r7
    mov r8, r3
    ldr r2, [r5]
_08011772:
    strb r2, [r0]
    subs r1, #1
    adds r0, #1
    cmp r1, #0
    bgt _08011772
    ldr r1, _080118A4 @ =0x00002210
    adds r0, r7, r1
    bl func_080114F8
    ldr r2, _080118A8 @ =0x00002214
    adds r0, r7, r2
    bl func_0809A8AC
    ldr r3, _080118AC @ =0x00002C1C
    adds r2, r7, r3
    ldrb r0, [r4]
    movs r1, #3
    orrs r0, r1
    strb r0, [r4]
    ldr r0, [r2, #0x2c]
    ldr r1, _080118B0 @ =0xFFF80003
    ands r0, r1
    str r0, [r2, #0x2c]
    mov r0, r8
    ldrb r1, [r0]
    movs r0, #9
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #0x11
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #0x10
    ands r0, r1
    subs r1, #0x20
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    mov r1, r8
    strb r0, [r1]
    ldr r2, _080118B4 @ =0x00002C4C
    adds r0, r7, r2
    movs r1, #9
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
_080117CC:
    strb r2, [r0]
    strh r2, [r0, #2]
    adds r0, #4
    subs r1, #1
    cmp r1, r3
    bne _080117CC
    ldr r3, _080118B8 @ =0x00002C74
    adds r0, r7, r3
    bl func_08011510
    movs r1, #0xb2
    lsls r1, r1, #6
    adds r0, r7, r1
    bl func_0809CD78
    ldr r2, _080118BC @ =0x00002E58
    adds r0, r7, r2
    bl func_0809CE8C
    movs r3, #0xd2
    lsls r3, r3, #6
    adds r0, r7, r3
    bl func_0809C144
    ldr r0, _080118C0 @ =0x00003494
    adds r2, r7, r0
    movs r3, #2
    movs r5, #0x10
    rsbs r5, r5, #0
    movs r4, #1
    rsbs r4, r4, #0
_0801180A:
    ldrb r1, [r2]
    adds r0, r5, #0
    ands r0, r1
    strb r0, [r2]
    adds r2, #0x10
    subs r3, #1
    cmp r3, r4
    bne _0801180A
    ldr r1, _080118C4 @ =0x000034C8
    adds r0, r7, r1
    bl func_080A1A48
    ldr r2, _080118C8 @ =0x000034D8
    adds r0, r7, r2
    bl func_0809C4E4
    ldr r3, _080118CC @ =0x000034DC
    adds r0, r7, r3
    bl func_0809BFE8
    movs r5, #0
    str r5, [r6]
    str r5, [sp, #0xc]
    ldr r0, [sp, #0x14]
    mov r1, sb
    mov r2, sl
    movs r3, #4
    bl func_080006E4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0801190E
    ldr r4, [sp, #0xc]
    ldr r0, _080118D0 @ =0x000034F4
    cmp r4, r0
    bne _0801190E
    mov r2, sl
    adds r2, #4
    ldr r0, [sp, #0x14]
    adds r1, r7, #0
    adds r3, r4, #0
    bl func_080006E4
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080118D8
    ldr r2, _080118D4 @ =gUnk_03000400
    ldr r0, [r6]
    movs r1, #0x80
    lsls r1, r1, #0xa
    b _08011916
    .align 2, 0
_08011870: .4byte 0xFFFFF81F
_08011874: .4byte 0x080F058C
_08011878: .4byte 0x00001AA8
_0801187C: .4byte 0x00001BD8
_08011880: .4byte 0x00001C70
_08011884: .4byte 0x00001CCC
_08011888: .4byte 0xFFFFFC00
_0801188C: .4byte 0x00001CD4
_08011890: .4byte 0x0000214C
_08011894: .4byte 0x000021CC
_08011898: .4byte 0x000021E0
_0801189C: .4byte 0x00002C48
_080118A0: .4byte 0x00002C4A
_080118A4: .4byte 0x00002210
_080118A8: .4byte 0x00002214
_080118AC: .4byte 0x00002C1C
_080118B0: .4byte 0xFFF80003
_080118B4: .4byte 0x00002C4C
_080118B8: .4byte 0x00002C74
_080118BC: .4byte 0x00002E58
_080118C0: .4byte 0x00003494
_080118C4: .4byte 0x000034C8
_080118C8: .4byte 0x000034D8
_080118CC: .4byte 0x000034DC
_080118D0: .4byte 0x000034F4
_080118D4: .4byte gUnk_03000400
_080118D8:
    ldr r2, _080118F8 @ =0x000034F8
    add r2, sl
    str r5, [sp, #0x10]
    add r1, sp, #0x10
    ldr r0, [sp, #0x14]
    movs r3, #4
    bl func_080006E4
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08011900
    ldr r2, _080118FC @ =gUnk_03000400
    ldr r0, [r6]
    movs r1, #0xc0
    lsls r1, r1, #0xa
    b _08011916
    .align 2, 0
_080118F8: .4byte 0x000034F8
_080118FC: .4byte gUnk_03000400
_08011900:
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_08011588
    ldr r1, [sp, #0x10]
    cmp r0, r1
    beq _0801191E
_0801190E:
    ldr r2, _08011930 @ =gUnk_03000400
    ldr r0, [r6]
    movs r1, #0x80
    lsls r1, r1, #9
_08011916:
    orrs r0, r1
    ldrh r1, [r2]
    orrs r0, r1
    str r0, [r6]
_0801191E:
    adds r0, r7, #0
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_08011930: .4byte gUnk_03000400

    thumb_func_start func_08011934
func_08011934: @ 0x08011934
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x2c
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    mov sb, r2
    ldr r1, _080119AC @ =0x080F0654
    mov r0, sp
    movs r2, #3
    bl memcpy
    add r0, sp, #4
    ldr r1, _080119B0 @ =0x080F0658
    movs r2, #2
    bl memcpy
    movs r0, #1
    str r0, [sp, #0x10]
    movs r1, #0
    mov sl, r1
    ldr r0, [sp, #8]
    adds r0, #0x8c
    ldr r0, [r0]
    movs r2, #0x82
    lsls r2, r2, #3
    adds r0, r0, r2
    bl GetCapacity__C4Coop
    str r0, [sp, #0x14]
    movs r0, #0
    str r0, [sp, #0x18]
    ldr r1, [sp, #0x14]
    cmp sl, r1
    bhs _08011A70
_0801197E:
    ldr r0, [sp, #8]
    adds r0, #0x8c
    ldr r0, [r0]
    movs r2, #0x82
    lsls r2, r2, #3
    adds r0, r0, r2
    ldr r1, [sp, #0x18]
    bl GetChicken__4CoopUi
    adds r7, r0, #0
    cmp r7, #0
    beq _08011A64
    bl method_0809B514__C9Livestock
    ldr r1, [sp, #0xc]
    cmp r0, r1
    bne _08011A64
    ldr r2, [sp, #0x10]
    cmp r2, #0
    beq _080119B4
    movs r0, #0
    str r0, [sp, #0x10]
    b _080119EA
    .align 2, 0
_080119AC: .4byte 0x080F0654
_080119B0: .4byte 0x080F0658
_080119B4:
    ldr r1, _08011ABC @ =0x080F0654
    mov r8, r1
    mov r0, sb
    bl strlen
    mov r2, sb
    adds r6, r2, r0
    ldr r1, _08011AC0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _080119EA
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _080119D8
    adds r4, r5, #0
_080119D8:
    adds r0, r6, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r0, r6, r4
    mov r2, sp
    ldrb r2, [r2, #0x10]
    strb r2, [r0]
_080119EA:
    adds r0, r7, #0
    bl GetName__C6Animal
    adds r7, r0, #0
    adds r4, r7, #0
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r6, r1, r0
    ldr r2, _08011AC0 @ =0x00000383
    subs r5, r2, r0
    cmp r5, #0
    beq _08011A24
    adds r0, r4, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08011A14
    adds r4, r5, #0
_08011A14:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
_08011A24:
    movs r0, #1
    add sl, r0
    mov r1, sl
    cmp r1, #2
    bls _08011A64
    ldr r7, _08011AC4 @ =0x080F0658
    mov r0, sb
    bl strlen
    mov r2, sb
    adds r6, r2, r0
    ldr r1, _08011AC0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08011A60
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08011A50
    adds r4, r5, #0
_08011A50:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
_08011A60:
    movs r2, #0
    mov sl, r2
_08011A64:
    ldr r0, [sp, #0x18]
    adds r0, #1
    str r0, [sp, #0x18]
    ldr r1, [sp, #0x14]
    cmp r0, r1
    blo _0801197E
_08011A70:
    ldr r4, [sp, #8]
    adds r4, #0x8c
    ldr r0, [r4]
    movs r2, #0xbe
    lsls r2, r2, #3
    adds r0, r0, r2
    bl GetCapacity__C4Barn
    str r0, [sp, #0x1c]
    movs r0, #0
    str r0, [sp, #0x20]
    str r4, [sp, #0x28]
    ldr r1, [sp, #0x1c]
    cmp r0, r1
    bhs _08011B84
_08011A8E:
    ldr r2, [sp, #0x28]
    ldr r0, [r2]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    ldr r1, [sp, #0x20]
    bl GetCow__4BarnUi
    adds r7, r0, #0
    cmp r7, #0
    beq _08011B78
    bl method_0809B514__C9Livestock
    ldr r2, [sp, #0xc]
    cmp r0, r2
    bne _08011B78
    ldr r0, [sp, #0x10]
    cmp r0, #0
    beq _08011AC8
    movs r1, #0
    str r1, [sp, #0x10]
    b _08011AFE
    .align 2, 0
_08011ABC: .4byte 0x080F0654
_08011AC0: .4byte 0x00000383
_08011AC4: .4byte 0x080F0658
_08011AC8:
    ldr r2, _08011BBC @ =0x080F0654
    mov r8, r2
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r6, r1, r0
    ldr r2, _08011BC0 @ =0x00000383
    subs r5, r2, r0
    cmp r5, #0
    beq _08011AFE
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08011AEC
    adds r4, r5, #0
_08011AEC:
    adds r0, r6, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r0, r6, r4
    mov r1, sp
    ldrb r1, [r1, #0x10]
    strb r1, [r0]
_08011AFE:
    adds r0, r7, #0
    bl GetName__C6Animal
    mov r8, r0
    mov r6, r8
    mov r0, sb
    bl strlen
    mov r2, sb
    adds r7, r2, r0
    ldr r1, _08011BC0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08011B38
    adds r0, r6, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08011B28
    adds r4, r5, #0
_08011B28:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08011B38:
    movs r2, #1
    add sl, r2
    mov r0, sl
    cmp r0, #2
    bls _08011B78
    ldr r7, _08011BC4 @ =0x080F0658
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r6, r1, r0
    ldr r2, _08011BC0 @ =0x00000383
    subs r5, r2, r0
    cmp r5, #0
    beq _08011B74
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08011B64
    adds r4, r5, #0
_08011B64:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
_08011B74:
    movs r0, #0
    mov sl, r0
_08011B78:
    ldr r1, [sp, #0x20]
    adds r1, #1
    str r1, [sp, #0x20]
    ldr r2, [sp, #0x1c]
    cmp r1, r2
    blo _08011A8E
_08011B84:
    movs r0, #0
    str r0, [sp, #0x24]
    ldr r1, [sp, #0x1c]
    cmp r0, r1
    bhs _08011C84
_08011B8E:
    ldr r2, [sp, #0x28]
    ldr r0, [r2]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    ldr r1, [sp, #0x24]
    bl GetSheep__4BarnUi
    adds r7, r0, #0
    cmp r7, #0
    beq _08011C78
    bl method_0809B514__C9Livestock
    ldr r2, [sp, #0xc]
    cmp r0, r2
    bne _08011C78
    ldr r0, [sp, #0x10]
    cmp r0, #0
    beq _08011BC8
    movs r1, #0
    str r1, [sp, #0x10]
    b _08011BFE
    .align 2, 0
_08011BBC: .4byte 0x080F0654
_08011BC0: .4byte 0x00000383
_08011BC4: .4byte 0x080F0658
_08011BC8:
    ldr r2, _08011CCC @ =0x080F0654
    mov r8, r2
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r6, r1, r0
    ldr r2, _08011CD0 @ =0x00000383
    subs r5, r2, r0
    cmp r5, #0
    beq _08011BFE
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08011BEC
    adds r4, r5, #0
_08011BEC:
    adds r0, r6, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r0, r6, r4
    mov r1, sp
    ldrb r1, [r1, #0x10]
    strb r1, [r0]
_08011BFE:
    adds r0, r7, #0
    bl GetName__C6Animal
    mov r8, r0
    mov r6, r8
    mov r0, sb
    bl strlen
    mov r2, sb
    adds r7, r2, r0
    ldr r1, _08011CD0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08011C38
    adds r0, r6, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08011C28
    adds r4, r5, #0
_08011C28:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08011C38:
    movs r2, #1
    add sl, r2
    mov r0, sl
    cmp r0, #2
    bls _08011C78
    ldr r7, _08011CD4 @ =0x080F0658
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r6, r1, r0
    ldr r2, _08011CD0 @ =0x00000383
    subs r5, r2, r0
    cmp r5, #0
    beq _08011C74
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08011C64
    adds r4, r5, #0
_08011C64:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
_08011C74:
    movs r0, #0
    mov sl, r0
_08011C78:
    ldr r1, [sp, #0x24]
    adds r1, #1
    str r1, [sp, #0x24]
    ldr r2, [sp, #0x1c]
    cmp r1, r2
    blo _08011B8E
_08011C84:
    mov r0, sl
    cmp r0, #0
    beq _08011CBC
    ldr r7, _08011CD4 @ =0x080F0658
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r6, r1, r0
    ldr r1, _08011CD0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08011CBC
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08011CAC
    adds r4, r5, #0
_08011CAC:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
_08011CBC:
    add sp, #0x2c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08011CCC: .4byte 0x080F0654
_08011CD0: .4byte 0x00000383
_08011CD4: .4byte 0x080F0658

    thumb_func_start func_08011CD8
func_08011CD8: @ 0x08011CD8
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    sub sp, #0x4c
    adds r5, r0, #0
    adds r3, r5, #0
    adds r3, #0x10
    ldr r0, _08011DAC @ =vtable_unk_080E5BE8
    mov sb, r0
    movs r2, #0
    str r2, [sp]
    str r2, [sp, #4]
    ldr r0, _08011DB0 @ =vtable_unk_080E5AF0
    str r0, [sp, #8]
    str r3, [sp, #0xc]
    add r0, sp, #0x10
    mov r8, r0
    str r2, [sp, #0x10]
    str r2, [r0, #4]
    ldr r0, _08011DB4 @ =vtable_unk_080E5AE0
    str r0, [sp, #0x18]
    str r1, [sp, #0x1c]
    add r6, sp, #0x20
    str r2, [sp, #0x20]
    str r2, [r6, #4]
    ldr r0, _08011DB8 @ =vtable_unk_080E5AD0
    str r0, [sp, #0x28]
    str r5, [sp, #0x2c]
    add r4, sp, #0x30
    str r2, [sp, #0x30]
    str r2, [r4, #4]
    ldr r0, _08011DBC @ =vtable_unk_080E5BB4
    str r0, [sp, #0x38]
    add r1, sp, #0x40
    str r1, [r4, #0xc]
    mov r0, sb
    str r0, [sp, #0x48]
    str r2, [sp, #0x40]
    str r2, [r1, #4]
    ldr r0, _08011DC0 @ =vtable_unk_080E5BD8
    str r0, [r1, #8]
    add r0, sp, #0x3c
    str r0, [r4, #0x10]
    str r1, [r4, #0x14]
    adds r1, r5, #0
    adds r1, #0x6c
    adds r0, r4, #0
    bl func_08009940
    adds r0, r4, #0
    mov r1, sp
    bl func_08009940
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_08009940
    adds r0, r4, #0
    mov r1, r8
    bl func_08009940
    adds r5, #0x68
    adds r0, r5, #0
    bl func_08008AE0
    ldr r1, [r0, #8]
    ldr r2, [r1, #0x10]
    adds r1, r4, #0
    bl _call_via_r2
    adds r0, r5, #0
    bl func_08008AF0
    adds r0, r5, #0
    bl func_08008AE0
    ldr r1, [r0, #8]
    ldr r2, [r1, #0x14]
    adds r1, r4, #0
    bl _call_via_r2
    adds r0, r4, #0
    movs r1, #2
    bl func_080098DC
    adds r0, r6, #0
    movs r1, #2
    bl func_080098AC
    mov r0, r8
    movs r1, #2
    bl func_080098AC
    mov r0, sp
    movs r1, #2
    bl func_080098AC
    add sp, #0x4c
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
_08011DAC: .4byte vtable_unk_080E5BE8
_08011DB0: .4byte vtable_unk_080E5AF0
_08011DB4: .4byte vtable_unk_080E5AE0
_08011DB8: .4byte vtable_unk_080E5AD0
_08011DBC: .4byte vtable_unk_080E5BB4
_08011DC0: .4byte vtable_unk_080E5BD8

    thumb_func_start func_08011DC4
func_08011DC4: @ 0x08011DC4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    mov r8, r1
    adds r5, r2, #0
    ldr r0, _08011EC0 @ =vtable_unk_080E5E64
    str r0, [r6]
    movs r0, #0xf8
    bl __builtin_new
    adds r7, r0, #0
    adds r1, r7, #0
    adds r1, #0xf4
    ldr r0, _08011EC4 @ =vtable_unk_080E5C08
    str r0, [r1]
    movs r4, #0
    str r4, [r7]
    str r4, [r7, #4]
    adds r0, r7, #0
    adds r0, #8
    str r4, [r0, #4]
    adds r0, #8
    bl func_080096B0
    adds r0, r7, #0
    adds r0, #0x68
    bl func_08008980
    adds r2, r7, #0
    adds r2, #0x6c
    str r4, [r7, #0x6c]
    str r4, [r2, #4]
    ldr r0, _08011EC8 @ =vtable_unk_080E5BB4
    str r0, [r2, #8]
    adds r1, r7, #0
    adds r1, #0x7c
    str r1, [r2, #0xc]
    str r4, [r7, #0x7c]
    str r4, [r1, #4]
    ldr r0, _08011ECC @ =vtable_unk_080E5BD8
    str r0, [r1, #8]
    adds r0, r7, #0
    adds r0, #0x78
    str r0, [r2, #0x10]
    str r1, [r2, #0x14]
    adds r0, #0x10
    str r6, [r0]
    adds r0, #4
    mov r1, r8
    str r1, [r0]
    adds r0, #4
    ldm r5!, {r1, r2, r3}
    stm r0!, {r1, r2, r3}
    adds r0, r7, #0
    adds r0, #0xa0
    str r4, [r0]
    adds r0, #4
    str r4, [r0]
    adds r0, #4
    str r4, [r0]
    adds r0, #4
    str r4, [r0]
    adds r0, #4
    str r4, [r0]
    adds r0, #4
    str r4, [r0]
    adds r0, #4
    str r4, [r0]
    adds r0, #4
    movs r1, #0
    bl func_08008B54
    adds r0, r7, #0
    adds r0, #0xc0
    movs r1, #1
    bl func_08008B54
    adds r0, r7, #0
    adds r0, #0xc4
    movs r1, #2
    bl func_08008B54
    adds r0, r7, #0
    adds r0, #0xc8
    movs r1, #3
    bl func_08008B54
    adds r0, r7, #0
    adds r0, #0xcc
    movs r1, #4
    bl func_08008B54
    adds r0, r7, #0
    adds r0, #0xd0
    str r4, [r0]
    str r4, [r0, #4]
    adds r0, #8
    str r4, [r0, #4]
    adds r0, #0x10
    strb r4, [r0]
    adds r0, #2
    strb r4, [r0]
    adds r0, #6
    str r4, [r0]
    ldrh r0, [r7, #0x14]
    movs r1, #8
    orrs r0, r1
    strh r0, [r7, #0x14]
    ldr r1, _08011ED0 @ =0x04000004
    strh r0, [r1]
    str r7, [r6, #4]
    ldr r0, _08011ED4 @ =gUnk_0300040C
    ldr r0, [r0]
    adds r0, #8
    adds r1, r6, #0
    bl SetUnk__12ScriptEnginePv
    adds r0, r6, #0
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_08011EC0: .4byte vtable_unk_080E5E64
_08011EC4: .4byte vtable_unk_080E5C08
_08011EC8: .4byte vtable_unk_080E5BB4
_08011ECC: .4byte vtable_unk_080E5BD8
_08011ED0: .4byte 0x04000004
_08011ED4: .4byte gUnk_0300040C
_08011ED8:
    .byte 0xF0, 0xB5, 0x85, 0xB0, 0x05, 0x1C, 0x0E, 0x1C
    .byte 0x3B, 0x48, 0x28, 0x60, 0xF8, 0x20, 0xEE, 0xF7, 0x75, 0xFB, 0x07, 0x1C, 0x02, 0x20, 0x00, 0x90
    .byte 0x39, 0x1C, 0xF4, 0x31, 0x37, 0x48, 0x08, 0x60, 0x00, 0x24, 0x3C, 0x60, 0x7C, 0x60, 0x38, 0x1C
    .byte 0x08, 0x30, 0x44, 0x60, 0x08, 0x30, 0xF7, 0xF7, 0xD3, 0xFB, 0x38, 0x1C, 0x68, 0x30, 0xF6, 0xF7
    .byte 0x37, 0xFD, 0x3A, 0x1C, 0x6C, 0x32, 0xFC, 0x66, 0x54, 0x60, 0x2F, 0x48, 0x90, 0x60, 0x39, 0x1C
    .byte 0x7C, 0x31, 0xD1, 0x60, 0xFC, 0x67, 0x4C, 0x60, 0x2C, 0x48, 0x88, 0x60, 0x38, 0x1C, 0x78, 0x30
    .byte 0x10, 0x61, 0x51, 0x61, 0x10, 0x30, 0x05, 0x60, 0x04, 0x30, 0x06, 0x60, 0x14, 0x31, 0x68, 0x46
    .byte 0x4C, 0xC8, 0x4C, 0xC1, 0x38, 0x1C, 0xA0, 0x30, 0x04, 0x60, 0x04, 0x30, 0x04, 0x60, 0x04, 0x30
    .byte 0x04, 0x60, 0x04, 0x30, 0x04, 0x60, 0x04, 0x30, 0x04, 0x60, 0x04, 0x30, 0x04, 0x60, 0x04, 0x30
    .byte 0x04, 0x60, 0x04, 0x30, 0x00, 0x21, 0xF6, 0xF7, 0xF5, 0xFD, 0x38, 0x1C, 0xC0, 0x30, 0x01, 0x21
    .byte 0xF6, 0xF7, 0xF0, 0xFD, 0x38, 0x1C, 0xC4, 0x30, 0x02, 0x21, 0xF6, 0xF7, 0xEB, 0xFD, 0x38, 0x1C
    .byte 0xC8, 0x30, 0x03, 0x21, 0xF6, 0xF7, 0xE6, 0xFD, 0x38, 0x1C, 0xCC, 0x30, 0x04, 0x21, 0xF6, 0xF7
    .byte 0xE1, 0xFD, 0x38, 0x1C, 0xD0, 0x30, 0x04, 0x60, 0x44, 0x60, 0x08, 0x30, 0x44, 0x60, 0x10, 0x30
    .byte 0x04, 0x70, 0x02, 0x30, 0x04, 0x70, 0x06, 0x30, 0x04, 0x60, 0xB8, 0x8A, 0x08, 0x21, 0x08, 0x43
    .byte 0xB8, 0x82, 0x0B, 0x49, 0x08, 0x80, 0x6F, 0x60, 0x0A, 0x48, 0x00, 0x68, 0x08, 0x30, 0x29, 0x1C
    .byte 0x2D, 0xF0, 0x6E, 0xFC, 0x28, 0x1C, 0x05, 0xB0, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
    .byte 0x64, 0x5E, 0x0E, 0x08, 0x08, 0x5C, 0x0E, 0x08, 0xB4, 0x5B, 0x0E, 0x08, 0xD8, 0x5B, 0x0E, 0x08
    .byte 0x04, 0x00, 0x00, 0x04, 0x0C, 0x04, 0x00, 0x03

    thumb_func_start func_08011FE8
func_08011FE8: @ 0x08011FE8
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, _08012020 @ =vtable_unk_080E5E64
    str r0, [r4]
    ldr r0, _08012024 @ =gUnk_0300040C
    ldr r0, [r0]
    adds r0, #8
    bl ClearUnk__12ScriptEngine
    ldr r1, [r4, #4]
    cmp r1, #0
    beq _08012012
    adds r0, r1, #0
    adds r0, #0xf4
    ldr r0, [r0]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012012:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080007EC
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08012020: .4byte vtable_unk_080E5E64
_08012024: .4byte gUnk_0300040C

    thumb_func_start func_08012028
func_08012028: @ 0x08012028
    push {r4, lr}
    sub sp, #0xc
    adds r4, r0, #0
    ldr r1, [r1, #4]
    mov r0, sp
    bl sub_080D8178
    ldr r2, [sp]
    mov r0, sp
    str r0, [sp, #4]
    str r2, [sp, #8]
    adds r1, r0, #0
    movs r0, #0
    str r0, [r1]
    str r2, [r4]
    ldr r1, [sp]
    cmp r1, #0
    beq _08012058
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012058:
    adds r0, r4, #0
    add sp, #0xc
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08012064
func_08012064: @ 0x08012064
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    sub sp, #8
    mov r8, r1
    mov sb, r2
    adds r5, r3, #0
    ldr r6, [sp, #0x20]
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x14]
    bl _call_via_r1
    adds r2, r0, #0
    str r5, [sp]
    str r6, [sp, #4]
    adds r0, r4, #0
    mov r1, r8
    mov r3, sb
    bl func_080D7F9C
    add sp, #8
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_080120A4
func_080120A4: @ 0x080120A4
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    movs r1, #0
    cmp r0, #0
    beq _080120BC
    ldr r1, [r0, #8]
_080120BC:
    asrs r0, r1, #0x10
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080120C4
func_080120C4: @ 0x080120C4
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    movs r1, #0
    cmp r0, #0
    beq _080120DC
    ldr r1, [r0, #0xc]
_080120DC:
    asrs r0, r1, #0x10
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080120E4
func_080120E4: @ 0x080120E4
    push {r4, lr}
    adds r4, r2, #0
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    adds r1, r0, #0
    cmp r1, #0
    beq _0801210C
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r4
    beq _0801210C
    adds r0, r1, #0
    adds r1, r4, #0
    bl func_08032198
_0801210C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08012114
func_08012114: @ 0x08012114
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    cmp r0, #0
    beq _0801212E
    adds r0, #0x20
    ldrb r0, [r0]
    b _08012130
_0801212E:
    movs r0, #0
_08012130:
    pop {r1}
    bx r1

    thumb_func_start func_08012134
func_08012134: @ 0x08012134
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    movs r1, #0x8d
    lsls r1, r1, #2
    cmp r0, #0
    beq _0801214E
    ldrh r1, [r0, #4]
_0801214E:
    adds r0, r1, #0
    pop {r1}
    bx r1

    thumb_func_start func_08012154
func_08012154: @ 0x08012154
    push {r4, lr}
    adds r4, r2, #0
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    cmp r0, #0
    beq _0801216E
    adds r0, #0x21
    strb r4, [r0]
_0801216E:
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08012174
func_08012174: @ 0x08012174
    push {r4, r5, lr}
    adds r4, r2, #0
    adds r5, r3, #0
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    cmp r0, #0
    beq _08012194
    adds r1, r4, #0
    adds r2, r5, #0
    bl func_08032308
_08012194:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0801219C
func_0801219C: @ 0x0801219C
    push {r4, r5, lr}
    adds r4, r2, #0
    adds r5, r3, #0
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    cmp r0, #0
    beq _080121BC
    adds r1, r4, #0
    adds r2, r5, #0
    bl func_0803233C
_080121BC:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080121C4
func_080121C4: @ 0x080121C4
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    adds r1, r4, #0
    adds r1, #0xe4
    str r0, [r1]
    cmp r0, #0
    beq _080121E6
    subs r1, #0x48
    movs r0, #0x16
    str r0, [r1]
_080121E6:
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_080121EC
func_080121EC: @ 0x080121EC
    push {r4, lr}
    adds r4, r2, #0
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    adds r1, r0, #0
    cmp r1, #0
    beq _08012212
    ldrh r0, [r1, #0x22]
    cmp r0, r4
    beq _08012212
    adds r0, r1, #0
    adds r1, r4, #0
    bl func_080321B0
_08012212:
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08012218
func_08012218: @ 0x08012218
    bx lr
    .align 2, 0

    thumb_func_start func_0801221C
func_0801221C: @ 0x0801221C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    cmp r0, #0
    beq _08012238
    movs r1, #0x8d
    lsls r1, r1, #2
    bl func_0801FF38
_08012238:
    pop {r0}
    bx r0

    thumb_func_start func_0801223C
func_0801223C: @ 0x0801223C
    push {r4, r5, r6, lr}
    adds r5, r2, #0
    adds r6, r3, #0
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _0801226E
    movs r0, #0xa
    ldrsh r2, [r4, r0]
    movs r0, #0xe
    ldrsh r3, [r4, r0]
    adds r2, r2, r5
    adds r3, r3, r6
    adds r0, r4, #0
    adds r0, #0x30
    ldrb r1, [r0]
    adds r0, r4, #0
    bl func_08033B84
_0801226E:
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_08012274
func_08012274: @ 0x08012274
    push {r4, r5, lr}
    adds r5, r2, #0
    adds r4, r3, #0
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    cmp r0, #0
    beq _08012298
    rsbs r2, r4, #0
    orrs r2, r4
    lsrs r2, r2, #0x1f
    adds r1, r5, #0
    bl func_08032384
_08012298:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080122A0
func_080122A0: @ 0x080122A0
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    cmp r0, #0
    beq _080122B8
    bl func_080323C8
_080122B8:
    pop {r0}
    bx r0

    thumb_func_start func_080122BC
func_080122BC: @ 0x080122BC
    push {r4, lr}
    adds r4, r2, #0
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    cmp r0, #0
    beq _080122D8
    adds r1, r4, #0
    bl func_080323E0
_080122D8:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080122E0
func_080122E0: @ 0x080122E0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    ldr r0, [r0, #4]
    mov sl, r0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r4, [r0]
    mov ip, r4
    movs r5, #0xb4
    add ip, r5
    mov r8, sp
    ldr r7, _08012384 @ =0x000003FF
    ands r1, r7
    mov r4, r8
    ldrh r5, [r4]
    ldr r6, _08012388 @ =0xFFFFFC00
    adds r4, r6, #0
    ands r4, r5
    orrs r4, r1
    mov r5, r8
    strh r4, [r5]
    lsls r2, r2, #0x10
    lsrs r4, r2, #0x10
    movs r7, #0x3f
    ands r4, r7
    lsls r4, r4, #2
    ldrb r1, [r5, #1]
    mov sb, r1
    movs r5, #3
    adds r1, r5, #0
    mov r7, sb
    ands r1, r7
    orrs r1, r4
    mov r4, r8
    strb r1, [r4, #1]
    lsrs r2, r2, #0x16
    ldr r7, _08012384 @ =0x000003FF
    ands r2, r7
    ldrh r4, [r4, #2]
    adds r1, r6, #0
    ands r1, r4
    orrs r1, r2
    mov r2, r8
    strh r1, [r2, #2]
    lsls r3, r3, #0x10
    lsrs r1, r3, #0x10
    movs r4, #0x3f
    ands r1, r4
    lsls r1, r1, #2
    ldrb r2, [r2, #3]
    ands r5, r2
    orrs r5, r1
    mov r7, r8
    strb r5, [r7, #3]
    lsrs r3, r3, #0x16
    ldr r1, _08012384 @ =0x000003FF
    ands r3, r1
    ldrh r1, [r7, #4]
    ands r6, r1
    orrs r6, r3
    strh r6, [r7, #4]
    mov r2, ip
    ldr r3, [r2]
    mov r1, sp
    movs r2, #1
    bl _call_via_r3
    mov r0, sl
    bl func_080D7F08
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08012384: .4byte 0x000003FF
_08012388: .4byte 0xFFFFFC00

    thumb_func_start func_0801238C
func_0801238C: @ 0x0801238C
    push {r4, lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r4, [r0]
    ldr r4, [r4, #0x24]
    bl _call_via_r4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080123A4
func_080123A4: @ 0x080123A4
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r1, [r1, #0x28]
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080123C4
    adds r1, r4, #0
    adds r1, #0x9c
    movs r0, #0x17
    str r0, [r1]
_080123C4:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080123CC
func_080123CC: @ 0x080123CC
    push {r4, r5, lr}
    adds r5, r3, #0
    ldr r4, [r0, #4]
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    adds r0, r4, #0
    adds r0, #0xbc
    cmp r1, #1
    beq _080123F6
    cmp r1, #1
    bgt _080123E8
    cmp r1, #0
    beq _080123EE
    b _08012404
_080123E8:
    cmp r1, #2
    beq _080123FE
    b _08012404
_080123EE:
    adds r1, r2, #0
    bl func_08008B6C
    b _08012404
_080123F6:
    adds r1, r2, #0
    bl func_08008B88
    b _08012404
_080123FE:
    adds r1, r2, #0
    bl func_08008BB0
_08012404:
    adds r4, #0xbc
    adds r0, r4, #0
    bl func_08008CC4
    ldrh r1, [r5]
    adds r0, r4, #0
    bl func_08008C28
    ldrh r1, [r5, #2]
    adds r0, r4, #0
    ldr r2, _08012450 @ =0x0000FFFF
    bl func_08008C38
    movs r0, #4
    ldrsh r1, [r5, r0]
    adds r0, r4, #0
    ldr r2, _08012450 @ =0x0000FFFF
    bl func_08008C54
    movs r1, #6
    ldrsb r1, [r5, r1]
    adds r0, r4, #0
    ldr r2, _08012450 @ =0x0000FFFF
    bl func_08008C70
    ldrb r1, [r5, #7]
    adds r0, r4, #0
    ldr r2, _08012450 @ =0x0000FFFF
    bl func_08008C8C
    ldrb r1, [r5, #8]
    adds r0, r4, #0
    ldr r2, _08012450 @ =0x0000FFFF
    bl func_08008CA8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08012450: .4byte 0x0000FFFF

    thumb_func_start func_08012454
func_08012454: @ 0x08012454
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xbc
    bl func_08008BE0
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08012464
func_08012464: @ 0x08012464
    push {r4, r5, r6, r7, lr}
    adds r6, r1, #0
    adds r7, r2, #0
    ldr r0, [r0, #4]
    adds r0, #0xd0
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08012488
_08012476:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0801249E
    adds r4, #4
    cmp r4, r5
    bne _08012476
_08012488:
    subs r0, r5, #4
    ldr r3, [r0]
_0801248C:
    lsls r0, r7, #0x10
    lsrs r1, r0, #0x10
    cmp r6, #1
    beq _080124B0
    cmp r6, #1
    bgt _080124A2
    cmp r6, #0
    beq _080124A8
    b _080124BE
_0801249E:
    ldr r3, [r4]
    b _0801248C
_080124A2:
    cmp r6, #2
    beq _080124B8
    b _080124BE
_080124A8:
    adds r0, r3, #0
    bl func_08008B6C
    b _080124BE
_080124B0:
    adds r0, r3, #0
    bl func_08008B88
    b _080124BE
_080124B8:
    adds r0, r3, #0
    bl func_08008BB0
_080124BE:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_080124C4
func_080124C4: @ 0x080124C4
    push {lr}
    bl func_08008DE8
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080124D0
func_080124D0: @ 0x080124D0
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    ldr r7, [r0, #4]
    adds r4, r7, #0
    adds r4, #0xb4
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq _080124F2
    cmp r1, #0
    beq _080124F2
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080124F2:
    str r5, [r4]
    adds r4, r7, #0
    adds r4, #0xb8
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq _08012510
    cmp r1, #0
    beq _08012510
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012510:
    str r5, [r4]
    adds r0, r7, #0
    adds r0, #0xac
    ldr r5, [r0]
    adds r6, r0, #0
    cmp r5, #0
    bne _080125CA
    adds r0, #0x3c
    ldrb r0, [r0]
    cmp r0, #0
    bne _0801257A
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    add r0, sp, #0xc
    bl func_0800835C
    add r0, sp, #0x10
    bl func_0800770C
    add r1, sp, #0x10
    movs r0, #1
    str r0, [sp]
    add r0, sp, #0xc
    str r0, [sp, #4]
    str r1, [sp, #8]
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x1f
    movs r3, #0
    bl func_08050CC0
    adds r5, r6, #0
    adds r4, r0, #0
    ldr r0, [r6]
    cmp r4, r0
    beq _08012566
    cmp r0, #0
    beq _08012566
    movs r1, #3
    bl func_08050D0C
_08012566:
    str r4, [r5]
    add r0, sp, #0x10
    movs r1, #2
    bl func_08007714
    add r0, sp, #0xc
    movs r1, #2
    bl func_08008364
    b _080125CA
_0801257A:
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    add r0, sp, #0xc
    bl func_0800835C
    add r0, sp, #0x10
    bl func_0800770C
    add r0, sp, #0x10
    str r5, [sp]
    add r1, sp, #0xc
    str r1, [sp, #4]
    str r0, [sp, #8]
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x1f
    movs r3, #0
    bl func_08050CC0
    adds r5, r6, #0
    adds r4, r0, #0
    ldr r0, [r6]
    cmp r4, r0
    beq _080125B8
    cmp r0, #0
    beq _080125B8
    movs r1, #3
    bl func_08050D0C
_080125B8:
    str r4, [r5]
    add r0, sp, #0x10
    movs r1, #2
    bl func_08007714
    add r0, sp, #0xc
    movs r1, #2
    bl func_08008364
_080125CA:
    ldr r0, [r6]
    bl func_08050D34
    cmp r0, #3
    beq _080125E2
    ldr r0, [r6]
    bl func_08050D5C
    adds r1, r7, #0
    adds r1, #0x9c
    movs r0, #0xe
    str r0, [r1]
_080125E2:
    add sp, #0x14
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080125EC
func_080125EC: @ 0x080125EC
    push {r4, r5, r6, lr}
    ldr r4, [r0, #4]
    adds r5, r4, #0
    adds r5, #0xb4
    movs r6, #0
    ldr r1, [r5]
    cmp r6, r1
    beq _0801260C
    cmp r1, #0
    beq _0801260C
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801260C:
    str r6, [r5]
    adds r5, r4, #0
    adds r5, #0xb8
    movs r6, #0
    ldr r1, [r5]
    cmp r6, r1
    beq _0801262A
    cmp r1, #0
    beq _0801262A
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801262A:
    str r6, [r5]
    adds r5, r4, #0
    adds r5, #0xac
    movs r6, #0
    ldr r0, [r5]
    cmp r6, r0
    beq _08012642
    cmp r0, #0
    beq _08012642
    movs r1, #3
    bl func_08050D0C
_08012642:
    str r6, [r5]
    ldrh r1, [r4, #0x10]
    ldr r0, _08012654 @ =0x0000FEFF
    ands r0, r1
    strh r0, [r4, #0x10]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
_08012654: .4byte 0x0000FEFF

    thumb_func_start func_08012658
func_08012658: @ 0x08012658
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xac
    ldr r0, [r0]
    cmp r0, #0
    beq _08012684
    bl func_08050D74
    adds r0, r4, #0
    bl func_080D7F88
    adds r0, r4, #0
    bl func_080D7F74
    adds r0, r4, #0
    bl func_080D7F60
    adds r1, r4, #0
    adds r1, #0x9c
    movs r0, #0xf
    str r0, [r1]
_08012684:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0801268C
func_0801268C: @ 0x0801268C
    push {r4, r5, lr}
    adds r5, r1, #0
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xac
    ldr r1, [r0]
    cmp r1, #0
    beq _080126B4
    lsls r2, r2, #0x10
    lsrs r2, r2, #0x10
    adds r0, #4
    ldr r3, [r0]
    adds r0, r1, #0
    adds r1, r5, #0
    bl func_08050DC8
    adds r1, r4, #0
    adds r1, #0x9c
    movs r0, #0x10
    str r0, [r1]
_080126B4:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080126BC
func_080126BC: @ 0x080126BC
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xac
    ldr r2, [r0]
    cmp r2, #0
    beq _080126DE
    adds r0, #4
    ldr r3, [r0]
    adds r0, r2, #0
    movs r2, #0x40
    bl func_08050DC8
    adds r1, r4, #0
    adds r1, #0x9c
    movs r0, #0x11
    str r0, [r1]
_080126DE:
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_080126E4
func_080126E4: @ 0x080126E4
    push {r4, lr}
    ldr r2, [r0, #4]
    adds r0, r2, #0
    adds r0, #0xac
    ldr r4, [r0]
    cmp r4, #0
    beq _08012712
    subs r0, #0x20
    ldr r2, [r0]
    ldr r3, _08012718 @ =0x00002210
    adds r0, r2, r3
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    bge _08012712
    ldr r3, _0801271C @ =0x00001CD4
    adds r0, r2, r3
    bl func_0809FE3C
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08050E68
_08012712:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
_08012718: .4byte 0x00002210
_0801271C: .4byte 0x00001CD4

    thumb_func_start func_08012720
func_08012720: @ 0x08012720
    push {lr}
    ldr r2, [r0, #4]
    adds r0, r2, #0
    adds r0, #0xac
    ldr r3, [r0]
    cmp r3, #0
    beq _08012744
    subs r0, #0x20
    ldr r0, [r0]
    ldr r2, _08012748 @ =0x00002210
    adds r0, r0, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    cmp r0, #0
    bge _08012744
    adds r0, r3, #0
    bl func_08050E68
_08012744:
    pop {r0}
    bx r0
    .align 2, 0
_08012748: .4byte 0x00002210

    thumb_func_start func_0801274C
func_0801274C: @ 0x0801274C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xac
    ldr r0, [r0]
    cmp r0, #0
    beq _0801275C
    bl func_08050E74
_0801275C:
    pop {r0}
    bx r0

    thumb_func_start func_08012760
func_08012760: @ 0x08012760
    push {lr}
    ldr r2, [r0, #4]
    adds r0, r2, #0
    adds r0, #0xac
    ldr r3, [r0]
    cmp r3, #0
    beq _08012784
    subs r0, #0x20
    ldr r0, [r0]
    ldr r2, _08012788 @ =0x00002210
    adds r0, r0, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge _08012784
    adds r0, r3, #0
    bl func_08050E50
_08012784:
    pop {r0}
    bx r0
    .align 2, 0
_08012788: .4byte 0x00002210

    thumb_func_start func_0801278C
func_0801278C: @ 0x0801278C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xac
    ldr r0, [r0]
    cmp r0, #0
    beq _0801279C
    bl func_08050E5C
_0801279C:
    pop {r0}
    bx r0

    thumb_func_start func_080127A0
func_080127A0: @ 0x080127A0
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xac
    ldr r0, [r0]
    cmp r0, #0
    beq _08012840
    adds r0, r4, #0
    adds r0, #0x8c
    ldr r2, [r0]
    ldr r3, _080127E0 @ =0x00002210
    adds r0, r2, r3
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge _08012840
    cmp r1, #0x1f
    beq _08012840
    ldr r3, _080127E4 @ =0x00001CD4
    adds r0, r2, r3
    bl func_080A0878
    cmp r0, #0
    beq _08012840
    bl GetLove__C12Bachelorette
    adds r2, r0, #0
    ldr r0, _080127E8 @ =0x0000EA5F
    cmp r2, r0
    bls _080127EC
    movs r1, #6
    b _08012836
    .align 2, 0
_080127E0: .4byte 0x00002210
_080127E4: .4byte 0x00001CD4
_080127E8: .4byte 0x0000EA5F
_080127EC:
    ldr r0, _080127F8 @ =0x0000C34F
    cmp r2, r0
    bls _080127FC
    movs r1, #5
    b _08012836
    .align 2, 0
_080127F8: .4byte 0x0000C34F
_080127FC:
    ldr r0, _08012808 @ =0x00009C3F
    cmp r2, r0
    bls _0801280C
    movs r1, #4
    b _08012836
    .align 2, 0
_08012808: .4byte 0x00009C3F
_0801280C:
    ldr r0, _08012818 @ =0x0000752F
    cmp r2, r0
    bls _0801281C
    movs r1, #3
    b _08012836
    .align 2, 0
_08012818: .4byte 0x0000752F
_0801281C:
    ldr r0, _08012828 @ =0x00004E1F
    cmp r2, r0
    bls _0801282C
    movs r1, #2
    b _08012836
    .align 2, 0
_08012828: .4byte 0x00004E1F
_0801282C:
    ldr r0, _08012848 @ =0x0000270F
    movs r1, #0
    cmp r2, r0
    bls _08012836
    movs r1, #1
_08012836:
    adds r0, r4, #0
    adds r0, #0xac
    ldr r0, [r0]
    bl func_08050E80
_08012840:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
_08012848: .4byte 0x0000270F

    thumb_func_start func_0801284C
func_0801284C: @ 0x0801284C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xac
    ldr r0, [r0]
    cmp r0, #0
    beq _0801285C
    bl func_08050E8C
_0801285C:
    pop {r0}
    bx r0

    thumb_func_start func_08012860
func_08012860: @ 0x08012860
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    adds r6, r1, #0
    adds r5, r3, #0
    ldr r3, [sp, #0x20]
    ldr r7, [sp, #0x24]
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xac
    ldr r1, [r0]
    cmp r1, #0
    beq _080128C8
    cmp r2, #0
    beq _080128C8
    cmp r5, #0
    beq _080128C8
    cmp r3, #0
    bne _0801288E
    adds r0, #4
    ldr r0, [r0]
    str r3, [sp]
    str r3, [sp, #4]
    b _0801289C
_0801288E:
    cmp r7, #0
    bne _080128AA
    adds r0, r4, #0
    adds r0, #0xb0
    ldr r0, [r0]
    str r3, [sp]
    str r7, [sp, #4]
_0801289C:
    str r0, [sp, #8]
    adds r0, r1, #0
    adds r1, r6, #0
    adds r3, r5, #0
    bl func_08050E30
    b _080128C0
_080128AA:
    adds r0, r4, #0
    adds r0, #0xb0
    ldr r0, [r0]
    str r3, [sp]
    str r7, [sp, #4]
    str r0, [sp, #8]
    adds r0, r1, #0
    adds r1, r6, #0
    adds r3, r5, #0
    bl func_08050E30
_080128C0:
    adds r1, r4, #0
    adds r1, #0x9c
    movs r0, #0x14
    str r0, [r1]
_080128C8:
    add sp, #0xc
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_080128D0
func_080128D0: @ 0x080128D0
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    adds r5, r1, #0
    adds r6, r2, #0
    ldr r1, [sp, #0x24]
    ldr r7, [sp, #0x28]
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xac
    ldr r2, [r0]
    cmp r2, #0
    beq _08012974
    cmp r5, #0
    beq _08012974
    cmp r6, #0
    beq _08012974
    cmp r3, #0
    bne _0801290E
    adds r0, #4
    ldr r0, [r0]
    str r3, [sp]
    str r3, [sp, #4]
    str r3, [sp, #8]
    str r0, [sp, #0xc]
    adds r0, r2, #0
    adds r1, r5, #0
    adds r2, r6, #0
    movs r3, #0
    bl func_08050E0C
    b _0801296C
_0801290E:
    cmp r1, #0
    bne _0801291E
    adds r0, r4, #0
    adds r0, #0xb0
    ldr r0, [r0]
    str r1, [sp]
    str r1, [sp, #4]
    b _08012942
_0801291E:
    cmp r7, #0
    bne _08012930
    adds r0, r4, #0
    adds r0, #0xb0
    ldr r0, [r0]
    str r1, [sp]
    str r7, [sp, #4]
    str r7, [sp, #8]
    b _08012944
_08012930:
    ldr r0, [sp, #0x2c]
    cmp r0, #0
    bne _08012952
    adds r0, r4, #0
    adds r0, #0xb0
    ldr r0, [r0]
    str r1, [sp]
    str r7, [sp, #4]
    ldr r1, [sp, #0x2c]
_08012942:
    str r1, [sp, #8]
_08012944:
    str r0, [sp, #0xc]
    adds r0, r2, #0
    adds r1, r5, #0
    adds r2, r6, #0
    bl func_08050E0C
    b _0801296C
_08012952:
    adds r0, r4, #0
    adds r0, #0xb0
    ldr r0, [r0]
    str r1, [sp]
    str r7, [sp, #4]
    ldr r1, [sp, #0x2c]
    str r1, [sp, #8]
    str r0, [sp, #0xc]
    adds r0, r2, #0
    adds r1, r5, #0
    adds r2, r6, #0
    bl func_08050E0C
_0801296C:
    adds r1, r4, #0
    adds r1, #0x9c
    movs r0, #0x14
    str r0, [r1]
_08012974:
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0801297C
func_0801297C: @ 0x0801297C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r1, #0
    add r1, sp, #0x18
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    mov r8, r3
    ldrb r3, [r1]
    ldr r4, [r0, #4]
    cmp r5, #4
    bls _08012996
    b _08012A98
_08012996:
    lsls r0, r5, #2
    ldr r1, _080129A0 @ =_080129A4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080129A0: .4byte _080129A4
_080129A4: @ jump table
    .4byte _080129B8 @ case 0
    .4byte _080129BE @ case 1
    .4byte _080129C4 @ case 2
    .4byte _080129C8 @ case 3
    .4byte _080129CC @ case 4
_080129B8:
    movs r6, #2
    movs r7, #0
    b _080129D0
_080129BE:
    movs r6, #1
    movs r7, #0
    b _080129D0
_080129C4:
    movs r6, #2
    b _080129CE
_080129C8:
    movs r6, #1
    b _080129CE
_080129CC:
    movs r6, #0
_080129CE:
    movs r7, #1
_080129D0:
    cmp r2, #1
    beq _080129EC
    cmp r2, #1
    bgt _080129DE
    cmp r2, #0
    beq _080129E4
    b _08012A98
_080129DE:
    cmp r2, #2
    beq _080129F4
    b _08012A98
_080129E4:
    ldr r5, _080129E8 @ =0x00001112
    b _080129F6
    .align 2, 0
_080129E8: .4byte 0x00001112
_080129EC:
    ldr r5, _080129F0 @ =0x00000889
    b _080129F6
    .align 2, 0
_080129F0: .4byte 0x00000889
_080129F4:
    ldr r5, _08012A2C @ =0x00000444
_080129F6:
    mov r0, r8
    cmp r0, #0
    beq _08012A30
    adds r0, r4, #0
    adds r0, #0xa0
    ldr r0, [r0]
    adds r1, r5, #0
    adds r2, r6, #0
    adds r3, r7, #0
    bl func_08009378
    adds r1, r4, #0
    adds r1, #0x9c
    movs r0, #0x12
    str r0, [r1]
    adds r1, #0x4c
    movs r0, #0
    strb r0, [r1]
    movs r1, #0
    cmp r6, #2
    bne _08012A22
    movs r1, #1
_08012A22:
    adds r0, r4, #0
    adds r0, #0xe9
    strb r1, [r0]
    b _08012A98
    .align 2, 0
_08012A2C: .4byte 0x00000444
_08012A30:
    cmp r3, #0
    beq _08012A44
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    adds r1, #0xb8
    ldr r1, [r1]
    bl _call_via_r1
_08012A44:
    adds r0, r4, #0
    adds r0, #0xa0
    ldr r0, [r0]
    adds r1, r5, #0
    adds r2, r6, #0
    adds r3, r7, #0
    bl func_0800934C
    adds r1, r4, #0
    adds r1, #0x9c
    movs r0, #0x13
    str r0, [r1]
    adds r0, r4, #0
    adds r0, #0xe8
    mov r1, r8
    strb r1, [r0]
    movs r1, #0
    cmp r6, #2
    bne _08012A6C
    movs r1, #1
_08012A6C:
    adds r0, r4, #0
    adds r0, #0xe9
    strb r1, [r0]
    ldrh r0, [r4, #0x10]
    movs r2, #0xe0
    lsls r2, r2, #4
    adds r1, r2, #0
    orrs r0, r1
    strh r0, [r4, #0x10]
    cmp r6, #1
    bne _08012A8C
    adds r0, r4, #0
    adds r0, #0x60
    ldrh r1, [r0]
    movs r2, #0x80
    b _08012A94
_08012A8C:
    adds r0, r4, #0
    adds r0, #0x60
    ldrh r1, [r0]
    movs r2, #0xc0
_08012A94:
    orrs r1, r2
    strh r1, [r0]
_08012A98:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08012AA4
func_08012AA4: @ 0x08012AA4
    push {r4, r5, lr}
    sub sp, #0x34
    adds r5, r1, #0
    ldr r4, [r0, #4]
    adds r0, r2, #0
    mov r1, sp
    movs r2, #0
    bl func_0804EC84
    adds r4, #0xb0
    ldr r0, [r4]
    adds r1, r5, #0
    mov r2, sp
    bl func_0803B6B8
    add sp, #0x34
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08012ACC
func_08012ACC: @ 0x08012ACC
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xb0
    ldr r0, [r0]
    bl func_0803B6B8
    pop {r0}
    bx r0

    thumb_func_start func_08012ADC
func_08012ADC: @ 0x08012ADC
    push {r4, r5, lr}
    sub sp, #0x34
    adds r5, r1, #0
    ldr r4, [r0, #4]
    adds r0, r2, #0
    mov r1, sp
    adds r2, r3, #0
    bl func_0804EC84
    adds r4, #0xb0
    ldr r0, [r4]
    adds r1, r5, #0
    mov r2, sp
    bl func_0803B6B8
    add sp, #0x34
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08012B04
func_08012B04: @ 0x08012B04
    push {r4, lr}
    ldr r4, [r0, #4]
    ldr r0, _08012B20 @ =gUnk_0300040C
    ldr r0, [r0]
    adds r0, #8
    bl LoadById__12ScriptEngineii
    adds r0, r4, #0
    bl func_080D7F3C
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
_08012B20: .4byte gUnk_0300040C

    thumb_func_start func_08012B24
func_08012B24: @ 0x08012B24
    push {r4, lr}
    ldr r0, _08012B40 @ =gUnk_0300040C
    ldr r3, [r0]
    movs r0, #0xde
    lsls r0, r0, #2
    adds r4, r3, r0
    cmp r2, #1
    beq _08012B6A
    cmp r2, #1
    bgt _08012B44
    cmp r2, #0
    beq _08012B4A
    b _08012BA0
    .align 2, 0
_08012B40: .4byte gUnk_0300040C
_08012B44:
    cmp r2, #2
    beq _08012B7E
    b _08012BA0
_08012B4A:
    ldr r0, [r4]
    cmp r0, #1
    bhi _08012BA0
    lsls r0, r0, #3
    adds r0, #4
    adds r2, r4, r0
    cmp r2, #0
    beq _08012B62
    ldr r0, [r1]
    ldr r1, [r1, #4]
    str r0, [r2]
    str r1, [r2, #4]
_08012B62:
    ldr r0, [r4]
    adds r0, #1
    str r0, [r4]
    b _08012BA0
_08012B6A:
    movs r0, #0xe3
    lsls r0, r0, #2
    adds r2, r3, r0
    ldr r0, [r2]
    cmp r0, #0x27
    bhi _08012BA0
    lsls r0, r0, #3
    adds r0, #4
    adds r3, r2, r0
    b _08012B8E
_08012B7E:
    movs r0, #0x9a
    lsls r0, r0, #3
    adds r2, r3, r0
    ldr r0, [r2]
    cmp r0, #0
    bne _08012BA0
    ldr r0, _08012BA8 @ =0x000004D4
    adds r3, r3, r0
_08012B8E:
    cmp r3, #0
    beq _08012B9A
    ldr r0, [r1]
    ldr r1, [r1, #4]
    str r0, [r3]
    str r1, [r3, #4]
_08012B9A:
    ldr r0, [r2]
    adds r0, #1
    str r0, [r2]
_08012BA0:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
_08012BA8: .4byte 0x000004D4

    thumb_func_start func_08012BAC
func_08012BAC: @ 0x08012BAC
    ldr r0, [r0, #4]
    adds r2, r0, #0
    adds r2, #0xe0
    strh r1, [r2]
    adds r0, #0x9c
    movs r1, #0x15
    str r1, [r0]
    bx lr

    thumb_func_start func_08012BBC
func_08012BBC: @ 0x08012BBC
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0xa
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08012C48 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08012C4C @ =vtable_unk_080E5E34
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08012C24
    cmp r1, #0
    beq _08012C24
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012C24:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08012C40
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012C40:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08012C48: .4byte vtable_unk_080E5E74
_08012C4C: .4byte vtable_unk_080E5E34

    thumb_func_start func_08012C50
func_08012C50: @ 0x08012C50
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    mov r8, r1
    ldr r7, [r0, #4]
    movs r0, #0xb
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r7, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    ldr r1, _08012CEC @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08012CF0 @ =vtable_unk_080E5E24
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    mov r1, r8
    str r1, [r0, #0xc]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08012CC2
    cmp r1, #0
    beq _08012CC2
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012CC2:
    str r4, [r5]
    adds r1, r7, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08012CDE
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012CDE:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08012CEC: .4byte vtable_unk_080E5E74
_08012CF0: .4byte vtable_unk_080E5E24

    thumb_func_start func_08012CF4
func_08012CF4: @ 0x08012CF4
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0xc
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08012D80 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08012D84 @ =vtable_unk_080E5DE4
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08012D5C
    cmp r1, #0
    beq _08012D5C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012D5C:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08012D78
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012D78:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08012D80: .4byte vtable_unk_080E5E74
_08012D84: .4byte vtable_unk_080E5DE4

    thumb_func_start func_08012D88
func_08012D88: @ 0x08012D88
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0xd
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08012E14 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08012E18 @ =vtable_unk_080E5DF4
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08012DF0
    cmp r1, #0
    beq _08012DF0
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012DF0:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08012E0C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012E0C:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08012E14: .4byte vtable_unk_080E5E74
_08012E18: .4byte vtable_unk_080E5DF4

    thumb_func_start func_08012E1C
func_08012E1C: @ 0x08012E1C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0xe
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08012EB8 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0x20
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08012EBC @ =vtable_unk_080E5E14
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    movs r1, #0x51
    str r1, [r0, #0xc]
    movs r1, #0x5f
    str r1, [r0, #0x10]
    str r2, [r0, #0x14]
    str r2, [r0, #0x18]
    strb r2, [r0, #0x1c]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08012E92
    cmp r1, #0
    beq _08012E92
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012E92:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08012EAE
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012EAE:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08012EB8: .4byte vtable_unk_080E5E74
_08012EBC: .4byte vtable_unk_080E5E14

    thumb_func_start func_08012EC0
func_08012EC0: @ 0x08012EC0
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0xf
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08012F4C @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08012F50 @ =vtable_unk_080E5E04
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08012F28
    cmp r1, #0
    beq _08012F28
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012F28:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08012F44
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012F44:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08012F4C: .4byte vtable_unk_080E5E74
_08012F50: .4byte vtable_unk_080E5E04

    thumb_func_start func_08012F54
func_08012F54: @ 0x08012F54
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x10
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08012FE0 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08012FE4 @ =vtable_unk_080E5DD4
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08012FBC
    cmp r1, #0
    beq _08012FBC
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012FBC:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08012FD8
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08012FD8:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08012FE0: .4byte vtable_unk_080E5E74
_08012FE4: .4byte vtable_unk_080E5DD4

    thumb_func_start func_08012FE8
func_08012FE8: @ 0x08012FE8
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x11
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08013078 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _0801307C @ =vtable_unk_080E5D94
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    str r2, [r0, #0xc]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013052
    cmp r1, #0
    beq _08013052
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013052:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _0801306E
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801306E:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013078: .4byte vtable_unk_080E5E74
_0801307C: .4byte vtable_unk_080E5D94

    thumb_func_start func_08013080
func_08013080: @ 0x08013080
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x12
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _0801310C @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08013110 @ =vtable_unk_080E5DB4
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _080130E8
    cmp r1, #0
    beq _080130E8
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080130E8:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013104
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013104:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801310C: .4byte vtable_unk_080E5E74
_08013110: .4byte vtable_unk_080E5DB4

    thumb_func_start func_08013114
func_08013114: @ 0x08013114
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x13
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _080131A0 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _080131A4 @ =vtable_unk_080E5DC4
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _0801317C
    cmp r1, #0
    beq _0801317C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801317C:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013198
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013198:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080131A0: .4byte vtable_unk_080E5E74
_080131A4: .4byte vtable_unk_080E5DC4

    thumb_func_start func_080131A8
func_080131A8: @ 0x080131A8
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x14
    str r0, [sp]
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08013234 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08013238 @ =vtable_unk_080E5DA4
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    str r2, [r0, #0xc]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013210
    cmp r1, #0
    beq _08013210
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013210:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _0801322C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801322C:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013234: .4byte vtable_unk_080E5E74
_08013238: .4byte vtable_unk_080E5DA4

    thumb_func_start func_0801323C
func_0801323C: @ 0x0801323C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x16
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _080132C8 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _080132CC @ =vtable_unk_080E5D64
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _080132A4
    cmp r1, #0
    beq _080132A4
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080132A4:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _080132C0
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080132C0:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080132C8: .4byte vtable_unk_080E5E74
_080132CC: .4byte vtable_unk_080E5D64

    thumb_func_start func_080132D0
func_080132D0: @ 0x080132D0
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x17
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _0801335C @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08013360 @ =vtable_unk_080E5D84
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013338
    cmp r1, #0
    beq _08013338
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013338:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013354
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013354:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801335C: .4byte vtable_unk_080E5E74
_08013360: .4byte vtable_unk_080E5D84

    thumb_func_start func_08013364
func_08013364: @ 0x08013364
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    mov r8, r1
    ldr r7, [r0, #4]
    movs r0, #0x18
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r7, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    ldr r1, _08013400 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08013404 @ =vtable_unk_080E5D54
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    mov r1, r8
    str r1, [r0, #0xc]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _080133D6
    cmp r1, #0
    beq _080133D6
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080133D6:
    str r4, [r5]
    adds r1, r7, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _080133F2
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080133F2:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013400: .4byte vtable_unk_080E5E74
_08013404: .4byte vtable_unk_080E5D54

    thumb_func_start func_08013408
func_08013408: @ 0x08013408
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x18
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r4, r6, #0
    adds r4, #0x8c
    ldr r1, [r4]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r5, r7}
    stm r2!, {r3, r5, r7}
    ldr r1, _0801349C @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r5, r7}
    stm r2!, {r3, r5, r7}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r3, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r3, [sp, #0x10]
    ldr r4, [r4]
    movs r5, #0x80
    lsls r5, r5, #5
    ldr r1, _080134A0 @ =vtable_unk_080E5D54
    str r1, [r0]
    str r2, [sp, #0x10]
    str r3, [r0, #4]
    str r4, [r0, #8]
    str r5, [r0, #0xc]
    adds r5, r6, #0
    adds r5, #0xa4
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013478
    cmp r1, #0
    beq _08013478
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013478:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013494
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013494:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801349C: .4byte vtable_unk_080E5E74
_080134A0: .4byte vtable_unk_080E5D54

    thumb_func_start func_080134A4
func_080134A4: @ 0x080134A4
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x18
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r4, r6, #0
    adds r4, #0x8c
    ldr r1, [r4]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r5, r7}
    stm r2!, {r3, r5, r7}
    ldr r1, _08013538 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r5, r7}
    stm r2!, {r3, r5, r7}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r3, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r3, [sp, #0x10]
    ldr r4, [r4]
    ldr r5, _0801353C @ =0x00001001
    ldr r1, _08013540 @ =vtable_unk_080E5D54
    str r1, [r0]
    str r2, [sp, #0x10]
    str r3, [r0, #4]
    str r4, [r0, #8]
    str r5, [r0, #0xc]
    adds r5, r6, #0
    adds r5, #0xa4
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013512
    cmp r1, #0
    beq _08013512
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013512:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _0801352E
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801352E:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013538: .4byte vtable_unk_080E5E74
_0801353C: .4byte 0x00001001
_08013540: .4byte vtable_unk_080E5D54

    thumb_func_start func_08013544
func_08013544: @ 0x08013544
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x19
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _080135D0 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _080135D4 @ =vtable_unk_080E5CB4
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _080135AC
    cmp r1, #0
    beq _080135AC
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080135AC:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _080135C8
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080135C8:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080135D0: .4byte vtable_unk_080E5E74
_080135D4: .4byte vtable_unk_080E5CB4

    thumb_func_start func_080135D8
func_080135D8: @ 0x080135D8
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x1a
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08013664 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08013668 @ =vtable_unk_080E5CE4
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013640
    cmp r1, #0
    beq _08013640
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013640:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _0801365C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801365C:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013664: .4byte vtable_unk_080E5E74
_08013668: .4byte vtable_unk_080E5CE4

    thumb_func_start func_0801366C
func_0801366C: @ 0x0801366C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x1b
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _080136F8 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _080136FC @ =vtable_unk_080E5CC4
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _080136D4
    cmp r1, #0
    beq _080136D4
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080136D4:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _080136F0
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080136F0:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080136F8: .4byte vtable_unk_080E5E74
_080136FC: .4byte vtable_unk_080E5CC4

    thumb_func_start func_08013700
func_08013700: @ 0x08013700
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x1c
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _0801378C @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08013790 @ =vtable_unk_080E5CD4
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013768
    cmp r1, #0
    beq _08013768
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013768:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013784
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013784:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801378C: .4byte vtable_unk_080E5E74
_08013790: .4byte vtable_unk_080E5CD4

    thumb_func_start func_08013794
func_08013794: @ 0x08013794
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x1d
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08013820 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r3, #0
    str r3, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r2, [r5]
    ldr r1, _08013824 @ =vtable_unk_080E5E54
    str r1, [r0]
    str r2, [r0, #4]
    str r3, [sp, #0x10]
    str r4, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _080137FC
    cmp r1, #0
    beq _080137FC
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080137FC:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013818
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013818:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013820: .4byte vtable_unk_080E5E74
_08013824: .4byte vtable_unk_080E5E54

    thumb_func_start func_08013828
func_08013828: @ 0x08013828
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x1e
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _080138B8 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _080138BC @ =vtable_unk_080E5D44
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    strb r2, [r0, #0xc]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013892
    cmp r1, #0
    beq _08013892
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013892:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _080138AE
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080138AE:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080138B8: .4byte vtable_unk_080E5E74
_080138BC: .4byte vtable_unk_080E5D44

    thumb_func_start func_080138C0
func_080138C0: @ 0x080138C0
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x1f
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r4, r6, #0
    adds r4, #0x8c
    ldr r1, [r4]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r5, r7}
    stm r2!, {r3, r5, r7}
    ldr r1, _08013954 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r5, r7}
    stm r2!, {r3, r5, r7}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r3, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r3, [sp, #0x10]
    ldr r4, [r4]
    movs r5, #1
    ldr r1, _08013958 @ =vtable_unk_080E5D44
    str r1, [r0]
    str r2, [sp, #0x10]
    str r3, [r0, #4]
    str r4, [r0, #8]
    strb r5, [r0, #0xc]
    adds r5, r6, #0
    adds r5, #0xa4
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _0801392E
    cmp r1, #0
    beq _0801392E
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801392E:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _0801394A
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801394A:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013954: .4byte vtable_unk_080E5E74
_08013958: .4byte vtable_unk_080E5D44

    thumb_func_start func_0801395C
func_0801395C: @ 0x0801395C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x20
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _080139E8 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _080139EC @ =vtable_unk_080E5C34
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _080139C4
    cmp r1, #0
    beq _080139C4
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080139C4:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _080139E0
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080139E0:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080139E8: .4byte vtable_unk_080E5E74
_080139EC: .4byte vtable_unk_080E5C34

    thumb_func_start func_080139F0
func_080139F0: @ 0x080139F0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    mov r8, r1
    ldr r7, [r0, #4]
    movs r0, #0x21
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r7, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    ldr r1, _08013A8C @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08013A90 @ =vtable_unk_080E5C94
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    mov r1, r8
    str r1, [r0, #0xc]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013A62
    cmp r1, #0
    beq _08013A62
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013A62:
    str r4, [r5]
    adds r1, r7, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013A7E
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013A7E:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013A8C: .4byte vtable_unk_080E5E74
_08013A90: .4byte vtable_unk_080E5C94

    thumb_func_start func_08013A94
func_08013A94: @ 0x08013A94
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    mov r8, r1
    ldr r7, [r0, #4]
    movs r0, #0x22
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r7, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    ldr r1, _08013B30 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08013B34 @ =vtable_unk_080E5C84
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    mov r1, r8
    str r1, [r0, #0xc]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013B06
    cmp r1, #0
    beq _08013B06
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013B06:
    str r4, [r5]
    adds r1, r7, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013B22
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013B22:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013B30: .4byte vtable_unk_080E5E74
_08013B34: .4byte vtable_unk_080E5C84

    thumb_func_start func_08013B38
func_08013B38: @ 0x08013B38
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    mov r8, r1
    ldr r7, [r0, #4]
    movs r0, #0x23
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r7, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    ldr r1, _08013BD4 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08013BD8 @ =vtable_unk_080E5C74
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    mov r1, r8
    str r1, [r0, #0xc]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013BAA
    cmp r1, #0
    beq _08013BAA
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013BAA:
    str r4, [r5]
    adds r1, r7, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013BC6
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013BC6:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013BD4: .4byte vtable_unk_080E5E74
_08013BD8: .4byte vtable_unk_080E5C74

    thumb_func_start func_08013BDC
func_08013BDC: @ 0x08013BDC
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x29
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08013C68 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08013C6C @ =vtable_unk_080E5C44
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013C44
    cmp r1, #0
    beq _08013C44
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013C44:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013C60
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013C60:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013C68: .4byte vtable_unk_080E5E74
_08013C6C: .4byte vtable_unk_080E5C44

    thumb_func_start func_08013C70
func_08013C70: @ 0x08013C70
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x2b
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08013CFC @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08013D00 @ =vtable_unk_080E5CF4
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013CD8
    cmp r1, #0
    beq _08013CD8
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013CD8:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013CF4
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013CF4:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013CFC: .4byte vtable_unk_080E5E74
_08013D00: .4byte vtable_unk_080E5CF4

    thumb_func_start func_08013D04
func_08013D04: @ 0x08013D04
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    lsls r4, r1, #0x18
    lsrs r4, r4, #0x18
    ldr r7, [r0, #4]
    movs r0, #0x10
    bl __builtin_new
    mov r8, r0
    rsbs r6, r4, #0
    orrs r6, r4
    asrs r6, r6, #0x1f
    movs r0, #2
    ands r6, r0
    adds r0, r7, #0
    adds r0, #0x8c
    ldr r0, [r0]
    mov sb, r0
    ldr r0, _08013DB8 @ =vtable_unk_080E5C14
    mov r1, r8
    str r0, [r1]
    mov r0, sb
    str r0, [r1, #4]
    movs r0, #0x14
    bl __builtin_new
    ldr r1, _08013DBC @ =vtable_unk_080E5E44
    str r1, [r0]
    movs r1, #0
    strb r1, [r0, #4]
    adds r4, r0, #6
    movs r5, #0x8d
    lsls r5, r5, #2
    ldrh r2, [r0, #6]
    ldr r3, _08013DC0 @ =0xFFFFFC00
    adds r1, r3, #0
    ands r1, r2
    orrs r1, r5
    strh r1, [r0, #6]
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
    ldr r1, _08013DC4 @ =vtable_unk_080E5C24
    str r1, [r0]
    mov r1, sb
    str r1, [r0, #0xc]
    str r6, [r0, #0x10]
    mov r1, r8
    str r0, [r1, #8]
    str r6, [r1, #0xc]
    adds r5, r7, #0
    adds r5, #0xa4
    mov r4, r8
    ldr r1, [r5]
    cmp r4, r1
    beq _08013DA0
    cmp r1, #0
    beq _08013DA0
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013DA0:
    str r4, [r5]
    adds r1, r7, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013DB8: .4byte vtable_unk_080E5C14
_08013DBC: .4byte vtable_unk_080E5E44
_08013DC0: .4byte 0xFFFFFC00
_08013DC4: .4byte vtable_unk_080E5C24

    thumb_func_start func_08013DC8
func_08013DC8: @ 0x08013DC8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    mov r8, r1
    ldr r7, [r0, #4]
    movs r0, #0x2d
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r7, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    ldr r1, _08013E64 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08013E68 @ =vtable_unk_080E5C54
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    mov r1, r8
    str r1, [r0, #0xc]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013E3A
    cmp r1, #0
    beq _08013E3A
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013E3A:
    str r4, [r5]
    adds r1, r7, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013E56
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013E56:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013E64: .4byte vtable_unk_080E5E74
_08013E68: .4byte vtable_unk_080E5C54

    thumb_func_start func_08013E6C
func_08013E6C: @ 0x08013E6C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x2e
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r1, r6, #0
    adds r1, #0x8c
    ldr r3, [r1]
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r4, r5, r7}
    stm r2!, {r4, r5, r7}
    ldr r1, _08013EF0 @ =vtable_unk_080E5E74
    str r1, [r0]
    str r3, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    str r0, [sp, #0xc]
    movs r0, #8
    bl __builtin_new
    ldr r3, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    ldr r1, _08013EF4 @ =vtable_unk_080E5D74
    str r1, [r0]
    str r2, [sp, #0x10]
    str r3, [r0, #4]
    adds r5, r6, #0
    adds r5, #0xa4
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013ECC
    cmp r1, #0
    beq _08013ECC
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013ECC:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013EE8
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013EE8:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013EF0: .4byte vtable_unk_080E5E74
_08013EF4: .4byte vtable_unk_080E5D74

    thumb_func_start func_08013EF8
func_08013EF8: @ 0x08013EF8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    mov r8, r1
    ldr r6, [r0, #4]
    movs r0, #0x2f
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r1, r6, #0
    adds r1, #0x8c
    ldr r3, [r1]
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r4, r5, r7}
    stm r2!, {r4, r5, r7}
    ldr r1, _08013F84 @ =vtable_unk_080E5E74
    str r1, [r0]
    str r3, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    movs r1, #0
    str r1, [sp, #0xc]
    str r0, [sp, #0x10]
    movs r0, #0xc
    bl __builtin_new
    add r1, sp, #0x10
    mov r2, r8
    bl func_0803B6FC
    adds r5, r6, #0
    adds r5, #0xa4
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08013F5C
    cmp r1, #0
    beq _08013F5C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013F5C:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08013F78
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08013F78:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08013F84: .4byte vtable_unk_080E5E74

    thumb_func_start func_08013F88
func_08013F88: @ 0x08013F88
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x1c
    mov sb, r1
    mov r8, r2
    ldr r7, [r0, #4]
    movs r0, #0x2c
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r7, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    ldr r1, _0801402C @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r6}
    stm r2!, {r3, r4, r6}
    str r0, [sp, #0xc]
    movs r0, #0x14
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08014030 @ =vtable_unk_080E5C64
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    mov r1, sb
    str r1, [r0, #0xc]
    mov r3, r8
    strb r3, [r0, #0x10]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08014002
    cmp r1, #0
    beq _08014002
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08014002:
    str r4, [r5]
    adds r1, r7, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _0801401E
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801401E:
    add sp, #0x1c
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801402C: .4byte vtable_unk_080E5E74
_08014030: .4byte vtable_unk_080E5C64

    thumb_func_start func_08014034
func_08014034: @ 0x08014034
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    adds r1, #0x84
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0801404C
func_0801404C: @ 0x0801404C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    adds r1, #0x88
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08014064
func_08014064: @ 0x08014064
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    adds r1, #0x8c
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0801407C
func_0801407C: @ 0x0801407C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    adds r1, #0x90
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08014094
func_08014094: @ 0x08014094
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    adds r1, #0x94
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080140AC
func_080140AC: @ 0x080140AC
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    adds r1, #0x98
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080140C4
func_080140C4: @ 0x080140C4
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    adds r2, #0x9c
    ldr r2, [r2]
    bl _call_via_r2
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080140DC
func_080140DC: @ 0x080140DC
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    adds r2, #0xa0
    ldr r2, [r2]
    bl _call_via_r2
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080140F4
func_080140F4: @ 0x080140F4
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    adds r1, #0x80
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0801410C
func_0801410C: @ 0x0801410C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r1, [r1, #0x40]
    bl _call_via_r1
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0801412C
func_0801412C: @ 0x0801412C
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r1, [r1, #0x48]
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0801415A
    adds r1, r4, #0
    adds r1, #0x9c
    movs r0, #0x19
    str r0, [r1]
    movs r0, #1
    b _0801415C
_0801415A:
    movs r0, #0
_0801415C:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08014164
func_08014164: @ 0x08014164
    push {r4, r5, r6, lr}
    adds r6, r1, #0
    lsls r5, r2, #0x18
    lsrs r5, r5, #0x18
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r3, [r1, #0x5c]
    adds r1, r6, #0
    adds r2, r5, #0
    bl _call_via_r3
    adds r4, #0x9c
    movs r0, #0x19
    str r0, [r4]
    movs r0, #1
    pop {r4, r5, r6}
    pop {r1}
    bx r1

    thumb_func_start func_08014198
func_08014198: @ 0x08014198
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r1, [r1, #0x60]
    bl _call_via_r1
    adds r4, #0x9c
    movs r0, #0x19
    str r0, [r4]
    movs r0, #1
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080141C4
func_080141C4: @ 0x080141C4
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r1, [r1, #0x4c]
    bl _call_via_r1
    adds r4, #0x9c
    movs r0, #0x19
    str r0, [r4]
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_080141EC
func_080141EC: @ 0x080141EC
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r1, [r1, #0x50]
    bl _call_via_r1
    adds r4, #0x9c
    movs r0, #0x19
    str r0, [r4]
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08014214
func_08014214: @ 0x08014214
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r1, [r1, #0x54]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08014234
func_08014234: @ 0x08014234
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    adds r1, #0xa4
    ldr r1, [r1]
    bl _call_via_r1
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0801424C
func_0801424C: @ 0x0801424C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    adds r2, #0xa8
    ldr r2, [r2]
    bl _call_via_r2
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08014264
func_08014264: @ 0x08014264
    push {r4, lr}
    adds r4, r2, #0
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    adds r1, r0, #0
    cmp r1, #0
    beq _08014288
    ldr r0, [r1, #0x14]
    ldr r2, [r0, #0x38]
    adds r0, r1, #0
    adds r1, r4, #0
    bl _call_via_r2
_08014288:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08014290
func_08014290: @ 0x08014290
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    adds r1, r0, #0
    cmp r1, #0
    beq _080142B2
    ldr r0, [r1, #0x14]
    ldr r2, [r0, #0x38]
    adds r0, r1, #0
    movs r1, #0
    bl _call_via_r2
_080142B2:
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080142B8
func_080142B8: @ 0x080142B8
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    movs r3, #0x8c
    lsls r3, r3, #1
    adds r2, r2, r3
    ldr r2, [r2]
    bl _call_via_r2
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080142D4
func_080142D4: @ 0x080142D4
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    movs r2, #0x8e
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080142F0
func_080142F0: @ 0x080142F0
    ldr r0, [r0, #4]
    adds r0, #0x8c
    ldr r0, [r0]
    ldr r1, _08014300 @ =0x000034C4
    adds r0, r0, r1
    movs r1, #1
    strb r1, [r0]
    bx lr
    .align 2, 0
_08014300: .4byte 0x000034C4

    thumb_func_start func_08014304
func_08014304: @ 0x08014304
    ldr r0, [r0, #4]
    adds r0, #0x8c
    ldr r0, [r0]
    ldr r1, _08014314 @ =0x000034C4
    adds r0, r0, r1
    movs r1, #0
    strb r1, [r0]
    bx lr
    .align 2, 0
_08014314: .4byte 0x000034C4

    thumb_func_start func_08014318
func_08014318: @ 0x08014318
    push {r4, r5, r6, r7, lr}
    ldr r4, [r0, #4]
    adds r5, r4, #0
    adds r5, #0xa8
    ldr r0, [r5]
    ldr r2, [r0]
    adds r2, #0xbc
    ldr r2, [r2]
    bl _call_via_r2
    adds r0, r4, #0
    adds r0, #0xb4
    ldr r0, [r0]
    cmp r0, #0
    beq _08014370
    adds r6, r0, #0
    movs r7, #0
    ldr r0, [r5]
    ldr r1, [r0]
    adds r1, #0xb0
    ldr r1, [r1]
    bl _call_via_r1
    lsls r0, r0, #0x18
    adds r3, r4, #0
    adds r3, #0x8c
    cmp r0, #0
    bne _08014360
    ldr r0, [r3]
    ldrh r1, [r0, #0x12]
    lsls r1, r1, #0x15
    lsrs r1, r1, #0x1a
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq _08014362
_08014360:
    movs r7, #1
_08014362:
    adds r2, r7, #0
    ldr r1, [r3]
    adds r1, #0x10
    adds r0, r6, #0
    adds r0, #8
    bl func_0803CD4C
_08014370:
    adds r0, r4, #0
    bl func_080D7F08
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0801437C
func_0801437C: @ 0x0801437C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x24
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08014408 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _0801440C @ =vtable_unk_080E5CA4
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _080143E4
    cmp r1, #0
    beq _080143E4
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080143E4:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08014400
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08014400:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08014408: .4byte vtable_unk_080E5E74
_0801440C: .4byte vtable_unk_080E5CA4

    thumb_func_start func_08014410
func_08014410: @ 0x08014410
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    mov r8, r1
    ldr r7, [r0, #4]
    movs r0, #0x25
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r6, r7, #0
    adds r6, #0x8c
    ldr r1, [r6]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldr r1, _080144B4 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r5, [sp, #0xc]
    movs r4, #0
    str r4, [sp, #0xc]
    str r5, [sp, #0x10]
    mov r1, r8
    rsbs r2, r1, #0
    orrs r2, r1
    lsrs r2, r2, #0x1f
    ldr r3, [r6]
    ldr r1, _080144B8 @ =vtable_unk_080E5D34
    str r1, [r0]
    str r4, [sp, #0x10]
    str r5, [r0, #4]
    str r3, [r0, #8]
    strb r2, [r0, #0xc]
    adds r5, r7, #0
    adds r5, #0xa4
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _0801448A
    cmp r1, #0
    beq _0801448A
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801448A:
    str r4, [r5]
    adds r1, r7, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _080144A6
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080144A6:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080144B4: .4byte vtable_unk_080E5E74
_080144B8: .4byte vtable_unk_080E5D34

    thumb_func_start func_080144BC
func_080144BC: @ 0x080144BC
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x26
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08014548 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _0801454C @ =vtable_unk_080E5D24
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08014524
    cmp r1, #0
    beq _08014524
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08014524:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _08014540
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08014540:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08014548: .4byte vtable_unk_080E5E74
_0801454C: .4byte vtable_unk_080E5D24

    thumb_func_start func_08014550
func_08014550: @ 0x08014550
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    lsls r5, r1, #0x18
    lsrs r5, r5, #0x18
    mov r8, r5
    ldr r7, [r0, #4]
    movs r0, #0x27
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r6, r7, #0
    adds r6, #0x8c
    ldr r1, [r6]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldr r1, _080145F0 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    str r0, [sp, #0xc]
    movs r0, #0x10
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r6]
    ldr r1, _080145F4 @ =vtable_unk_080E5D14
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    mov r1, r8
    strb r1, [r0, #0xc]
    adds r5, r7, #0
    adds r5, #0xa4
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _080145C8
    cmp r1, #0
    beq _080145C8
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080145C8:
    str r4, [r5]
    adds r1, r7, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _080145E4
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080145E4:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080145F0: .4byte vtable_unk_080E5E74
_080145F4: .4byte vtable_unk_080E5D14

    thumb_func_start func_080145F8
func_080145F8: @ 0x080145F8
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    movs r0, #0x28
    str r0, [sp]
    movs r0, #0x14
    bl __builtin_new
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r1, [r5]
    mov ip, r1
    add r2, sp, #0x10
    mov r1, sp
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    ldr r1, _08014684 @ =vtable_unk_080E5E74
    str r1, [r0]
    mov r1, ip
    str r1, [r0, #4]
    adds r2, r0, #0
    adds r2, #8
    add r1, sp, #0x10
    ldm r1!, {r3, r4, r7}
    stm r2!, {r3, r4, r7}
    str r0, [sp, #0xc]
    movs r0, #0xc
    bl __builtin_new
    ldr r4, [sp, #0xc]
    movs r2, #0
    str r2, [sp, #0xc]
    str r4, [sp, #0x10]
    ldr r3, [r5]
    ldr r1, _08014688 @ =vtable_unk_080E5D04
    str r1, [r0]
    str r2, [sp, #0x10]
    str r4, [r0, #4]
    str r3, [r0, #8]
    adds r5, #0x18
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08014660
    cmp r1, #0
    beq _08014660
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08014660:
    str r4, [r5]
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x18
    str r0, [r1]
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _0801467C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801467C:
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08014684: .4byte vtable_unk_080E5E74
_08014688: .4byte vtable_unk_080E5D04

    thumb_func_start func_0801468C
func_0801468C: @ 0x0801468C
    ldr r0, [r0, #4]
    adds r0, #0xd0
    bx lr
    .align 2, 0

    thumb_func_start func_08014694
func_08014694: @ 0x08014694
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    movs r3, #0xa8
    lsls r3, r3, #1
    adds r2, r2, r3
    ldr r2, [r2]
    bl _call_via_r2
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080146B0
func_080146B0: @ 0x080146B0
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    movs r3, #0xaa
    lsls r3, r3, #1
    adds r2, r2, r3
    ldr r2, [r2]
    bl _call_via_r2
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080146CC
func_080146CC: @ 0x080146CC
    push {r4, r5, lr}
    adds r5, r1, #0
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0x8c
    ldr r0, [r0]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r5, #0
    bl BeginIncubation__4CoopUi
    adds r4, #0xa8
    ldr r0, [r4]
    ldr r1, [r0]
    adds r1, #0xac
    ldr r2, [r1]
    adds r1, r5, #0
    bl _call_via_r2
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080146FC
func_080146FC: @ 0x080146FC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x54
    ldr r5, [r0, #4]
    adds r0, r5, #0
    adds r0, #0xea
    movs r4, #1
    strb r4, [r0]
    adds r3, r5, #0
    adds r3, #0xec
    strh r1, [r3]
    adds r2, r5, #0
    adds r2, #0x10
    ldrh r0, [r5, #0x10]
    movs r6, #0x80
    lsls r6, r6, #1
    adds r1, r6, #0
    orrs r0, r1
    strh r0, [r5, #0x10]
    mov r1, sp
    ldr r0, _080147A4 @ =0x00001F0C
    strh r0, [r1]
    strh r0, [r5, #0x18]
    mov r0, sp
    movs r7, #0
    strh r7, [r0]
    movs r0, #0
    strh r0, [r2, #0x10]
    mov r0, sp
    movs r1, #0
    strh r1, [r0]
    strh r1, [r5, #0x22]
    ldrh r1, [r3]
    mov r8, r5
    add r0, sp, #4
    ldr r2, _080147A8 @ =0x05000002
    movs r3, #2
    bl func_08008F60
    add r2, sp, #4
    mov sb, r2
    ldr r1, [r5, #4]
    ldr r0, [r5, #0xc]
    cmp r1, r0
    beq _080147AC
    cmp r1, #0
    beq _0801476C
    adds r0, r1, #0
    mov r1, sb
    ldm r1!, {r3, r4, r6}
    stm r0!, {r3, r4, r6}
    ldr r1, [r1]
    str r1, [r0]
_0801476C:
    ldr r0, [r5, #4]
    adds r0, #0x10
    str r0, [r5, #4]
    movs r7, #3
    lsls r7, r7, #9
    str r7, [sp, #0x38]
    movs r0, #0
    str r0, [sp, #0x3c]
    movs r1, #0x1f
    lsls r1, r1, #0xb
    str r1, [sp, #0x40]
    adds r2, r5, #0
    adds r2, #0x60
    str r2, [sp, #0x44]
    adds r3, r5, #0
    adds r3, #0xee
    str r3, [sp, #0x30]
    adds r4, r5, #0
    adds r4, #0x62
    str r4, [sp, #0x48]
    adds r6, r5, #0
    adds r6, #0xef
    str r6, [sp, #0x34]
    adds r7, r5, #0
    adds r7, #0x9c
    str r7, [sp, #0x2c]
    b _080148A0
    .align 2, 0
_080147A4: .4byte 0x00001F0C
_080147A8: .4byte 0x05000002
_080147AC:
    str r1, [sp, #0x4c]
    str r4, [sp, #0x18]
    ldr r0, [r5]
    subs r0, r1, r0
    asrs r4, r0, #4
    str r4, [sp, #0x14]
    add r1, sp, #0x18
    add r0, sp, #0x14
    cmp r4, #1
    bhs _080147C2
    adds r0, r1, #0
_080147C2:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq _080147E0
    lsls r4, r0, #4
    adds r0, r4, #0
    bl malloc
    mov sl, r4
    cmp r0, #0
    bne _080147E4
    mov r0, sl
    bl func_080D3BC0
    b _080147E4
_080147E0:
    movs r0, #0
    mov sl, r0
_080147E4:
    adds r4, r0, #0
    str r4, [sp, #0x50]
    mov r3, r8
    ldr r2, [r3]
    adds r3, r4, #0
    movs r4, #3
    lsls r4, r4, #9
    str r4, [sp, #0x38]
    movs r6, #0
    lsls r6, r6, #0xc
    str r6, [sp, #0x3c]
    movs r7, #0x1f
    lsls r7, r7, #0xb
    str r7, [sp, #0x40]
    adds r0, r5, #0
    adds r0, #0x60
    str r0, [sp, #0x44]
    adds r1, r5, #0
    adds r1, #0xee
    str r1, [sp, #0x30]
    adds r4, r5, #0
    adds r4, #0x62
    str r4, [sp, #0x48]
    adds r6, r5, #0
    adds r6, #0xef
    str r6, [sp, #0x34]
    adds r7, r5, #0
    adds r7, #0x9c
    str r7, [sp, #0x2c]
    b _08014834
_08014820:
    cmp r3, #0
    beq _08014830
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r6, r7}
    stm r0!, {r4, r6, r7}
    ldr r1, [r1]
    str r1, [r0]
_08014830:
    adds r2, #0x10
    adds r3, #0x10
_08014834:
    ldr r0, [sp, #0x4c]
    cmp r2, r0
    bne _08014820
    adds r4, r3, #0
    ldr r0, [sp, #0x18]
    cmp r0, #1
    bne _08014856
    cmp r4, #0
    beq _08014852
    adds r0, r4, #0
    mov r1, sb
    ldm r1!, {r2, r3, r6}
    stm r0!, {r2, r3, r6}
    ldr r1, [r1]
    str r1, [r0]
_08014852:
    adds r4, #0x10
    b _08014878
_08014856:
    adds r3, r0, #0
    adds r2, r4, #0
    cmp r3, #0
    beq _08014876
_0801485E:
    cmp r2, #0
    beq _0801486E
    adds r0, r2, #0
    mov r1, sb
    ldm r1!, {r4, r6, r7}
    stm r0!, {r4, r6, r7}
    ldr r1, [r1]
    str r1, [r0]
_0801486E:
    subs r3, #1
    adds r2, #0x10
    cmp r3, #0
    bne _0801485E
_08014876:
    adds r4, r2, #0
_08014878:
    mov r7, r8
    ldr r2, [r7, #4]
    ldr r0, [r7]
    adds r1, r0, #0
    cmp r0, r2
    beq _0801488A
_08014884:
    adds r1, #0x10
    cmp r1, r2
    bne _08014884
_0801488A:
    cmp r0, #0
    beq _08014892
    bl free
_08014892:
    ldr r0, [sp, #0x50]
    add r0, sl
    ldr r1, [sp, #0x50]
    mov r2, r8
    str r1, [r2]
    str r4, [r2, #4]
    str r0, [r2, #0xc]
_080148A0:
    ldr r1, _080148E0 @ =0x11111111
    ldr r3, [sp, #0x38]
    movs r4, #0xf4
    lsls r4, r4, #1
    adds r2, r3, r4
    mov r8, r5
    lsls r2, r2, #5
    movs r6, #0xc0
    lsls r6, r6, #0x13
    adds r2, r2, r6
    mov r0, sp
    movs r3, #0x20
    bl func_08008F60
    mov sl, sp
    ldr r1, [r5, #4]
    ldr r0, [r5, #0xc]
    cmp r1, r0
    beq _080148E4
    cmp r1, #0
    beq _080148D6
    adds r0, r1, #0
    mov r1, sp
    ldm r1!, {r2, r3, r7}
    stm r0!, {r2, r3, r7}
    ldr r1, [r1]
    str r1, [r0]
_080148D6:
    ldr r0, [r5, #4]
    adds r0, #0x10
    str r0, [r5, #4]
    b _080149B0
    .align 2, 0
_080148E0: .4byte 0x11111111
_080148E4:
    str r1, [sp, #0x4c]
    movs r0, #1
    str r0, [sp, #0x20]
    ldr r0, [r5]
    adds r4, r1, #0
    subs r0, r4, r0
    asrs r4, r0, #4
    str r4, [sp, #0x1c]
    add r1, sp, #0x20
    add r0, sp, #0x1c
    cmp r4, #1
    bhs _080148FE
    adds r0, r1, #0
_080148FE:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq _0801491C
    lsls r4, r0, #4
    adds r0, r4, #0
    bl malloc
    mov sb, r4
    cmp r0, #0
    bne _08014920
    mov r0, sb
    bl func_080D3BC0
    b _08014920
_0801491C:
    movs r0, #0
    mov sb, r0
_08014920:
    adds r4, r0, #0
    str r4, [sp, #0x50]
    mov r6, r8
    ldr r2, [r6]
    adds r3, r4, #0
    ldr r7, [sp, #0x4c]
    cmp r2, r7
    beq _0801494A
_08014930:
    cmp r3, #0
    beq _08014940
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r6, r7}
    stm r0!, {r4, r6, r7}
    ldr r1, [r1]
    str r1, [r0]
_08014940:
    adds r2, #0x10
    adds r3, #0x10
    ldr r0, [sp, #0x4c]
    cmp r2, r0
    bne _08014930
_0801494A:
    adds r4, r3, #0
    ldr r0, [sp, #0x20]
    cmp r0, #1
    bne _08014966
    cmp r4, #0
    beq _08014962
    adds r0, r4, #0
    mov r1, sl
    ldm r1!, {r2, r3, r6}
    stm r0!, {r2, r3, r6}
    ldr r1, [r1]
    str r1, [r0]
_08014962:
    adds r4, #0x10
    b _08014988
_08014966:
    adds r3, r0, #0
    adds r2, r4, #0
    cmp r3, #0
    beq _08014986
_0801496E:
    cmp r2, #0
    beq _0801497E
    adds r0, r2, #0
    mov r1, sl
    ldm r1!, {r4, r6, r7}
    stm r0!, {r4, r6, r7}
    ldr r1, [r1]
    str r1, [r0]
_0801497E:
    subs r3, #1
    adds r2, #0x10
    cmp r3, #0
    bne _0801496E
_08014986:
    adds r4, r2, #0
_08014988:
    mov r7, r8
    ldr r2, [r7, #4]
    ldr r0, [r7]
    adds r1, r0, #0
    cmp r0, r2
    beq _0801499A
_08014994:
    adds r1, #0x10
    cmp r1, r2
    bne _08014994
_0801499A:
    cmp r0, #0
    beq _080149A2
    bl free
_080149A2:
    ldr r0, [sp, #0x50]
    add r0, sb
    ldr r1, [sp, #0x50]
    mov r2, r8
    str r1, [r2]
    str r4, [r2, #4]
    str r0, [r2, #0xc]
_080149B0:
    movs r3, #0xf0
    lsls r3, r3, #8
    adds r0, r3, #0
    ldr r1, [sp, #0x3c]
    ands r1, r0
    movs r4, #0xf4
    lsls r4, r4, #1
    orrs r1, r4
    lsls r0, r1, #0x10
    orrs r1, r0
    ldr r6, [sp, #0x40]
    movs r7, #0xc0
    lsls r7, r7, #0x13
    adds r2, r6, r7
    mov r0, sp
    movs r3, #0xa0
    lsls r3, r3, #3
    bl func_08008F60
    mov sb, sp
    ldr r1, [r5, #4]
    ldr r0, [r5, #0xc]
    cmp r1, r0
    beq _080149F8
    cmp r1, #0
    beq _080149F0
    adds r0, r1, #0
    mov r1, sp
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
_080149F0:
    ldr r0, [r5, #4]
    adds r0, #0x10
    str r0, [r5, #4]
    b _08014AB8
_080149F8:
    mov sl, r1
    movs r0, #1
    str r0, [sp, #0x28]
    ldr r0, [r5]
    subs r0, r1, r0
    asrs r4, r0, #4
    str r4, [sp, #0x24]
    add r1, sp, #0x28
    add r0, sp, #0x24
    cmp r4, #1
    bhs _08014A10
    adds r0, r1, #0
_08014A10:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq _08014A2E
    lsls r4, r0, #4
    adds r0, r4, #0
    bl malloc
    mov r8, r4
    cmp r0, #0
    bne _08014A32
    mov r0, r8
    bl func_080D3BC0
    b _08014A32
_08014A2E:
    movs r0, #0
    mov r8, r0
_08014A32:
    adds r4, r0, #0
    str r4, [sp, #0x50]
    ldr r2, [r5]
    adds r3, r4, #0
    cmp r2, sl
    beq _08014A56
_08014A3E:
    cmp r3, #0
    beq _08014A4E
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r6, r7}
    stm r0!, {r4, r6, r7}
    ldr r1, [r1]
    str r1, [r0]
_08014A4E:
    adds r2, #0x10
    adds r3, #0x10
    cmp r2, sl
    bne _08014A3E
_08014A56:
    adds r4, r3, #0
    ldr r0, [sp, #0x28]
    cmp r0, #1
    bne _08014A72
    cmp r4, #0
    beq _08014A6E
    adds r0, r4, #0
    mov r1, sb
    ldm r1!, {r2, r6, r7}
    stm r0!, {r2, r6, r7}
    ldr r1, [r1]
    str r1, [r0]
_08014A6E:
    adds r4, #0x10
    b _08014A94
_08014A72:
    adds r3, r0, #0
    adds r2, r4, #0
    cmp r3, #0
    beq _08014A92
_08014A7A:
    cmp r2, #0
    beq _08014A8A
    adds r0, r2, #0
    mov r1, sb
    ldm r1!, {r4, r6, r7}
    stm r0!, {r4, r6, r7}
    ldr r1, [r1]
    str r1, [r0]
_08014A8A:
    subs r3, #1
    adds r2, #0x10
    cmp r3, #0
    bne _08014A7A
_08014A92:
    adds r4, r2, #0
_08014A94:
    ldr r2, [r5, #4]
    ldr r0, [r5]
    adds r1, r0, #0
    cmp r0, r2
    beq _08014AA4
_08014A9E:
    adds r1, #0x10
    cmp r1, r2
    bne _08014A9E
_08014AA4:
    cmp r0, #0
    beq _08014AAC
    bl free
_08014AAC:
    ldr r0, [sp, #0x50]
    add r0, r8
    ldr r1, [sp, #0x50]
    str r1, [r5]
    str r4, [r5, #4]
    str r0, [r5, #0xc]
_08014AB8:
    mov r1, sp
    ldr r2, _08014AF0 @ =0x00003E41
    adds r0, r2, #0
    strh r0, [r1]
    ldr r3, [sp, #0x44]
    strh r0, [r3]
    movs r2, #0
    movs r0, #0x10
    ldr r4, [sp, #0x30]
    strb r0, [r4]
    ldr r0, _08014AF4 @ =0x00001010
    strh r0, [r1]
    ldr r6, [sp, #0x48]
    strh r0, [r6]
    ldr r7, [sp, #0x34]
    strb r2, [r7]
    movs r0, #0x1a
    ldr r1, [sp, #0x2c]
    str r0, [r1]
    add sp, #0x54
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08014AF0: .4byte 0x00003E41
_08014AF4: .4byte 0x00001010

    thumb_func_start func_08014AF8
func_08014AF8: @ 0x08014AF8
    push {r4, r5, r6, lr}
    sub sp, #0xc
    ldr r5, [r0, #4]
    adds r4, r5, #0
    adds r4, #0xa8
    movs r6, #0
    ldr r1, [r4]
    cmp r6, r1
    beq _08014B1A
    cmp r1, #0
    beq _08014B1A
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08014B1A:
    str r6, [r4]
    adds r4, r5, #0
    adds r4, #0x8c
    ldr r0, [r4]
    bl func_08010F54
    adds r6, r5, #0
    adds r6, #0xa8
    ldr r1, [r4]
    adds r0, r5, #0
    adds r0, #0x88
    ldr r2, [r0]
    mov r0, sp
    movs r3, #0
    bl func_0801FB7C
    ldr r1, [sp]
    mov r0, sp
    str r0, [sp, #4]
    str r1, [sp, #8]
    movs r0, #0
    str r0, [sp]
    adds r4, r1, #0
    ldr r1, [r6]
    adds r5, r6, #0
    cmp r4, r1
    beq _08014B60
    cmp r1, #0
    beq _08014B60
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08014B60:
    str r4, [r6]
    ldr r1, [sp]
    cmp r1, #0
    beq _08014B74
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08014B74:
    ldr r0, [r5]
    ldr r1, [r0]
    movs r2, #0x9c
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r0, [r5]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    adds r4, r0, #0
    ldr r0, _08014BB4 @ =gUnk_0300040C
    ldr r1, [r0]
    movs r2, #0xdb
    lsls r2, r2, #2
    adds r0, r1, r2
    ldrb r0, [r0]
    cmp r0, #0
    beq _08014BCE
    adds r2, #8
    adds r0, r1, r2
    ldrh r0, [r0]
    lsls r0, r0, #0x1b
    lsrs r1, r0, #0x1b
    cmp r1, #5
    bhi _08014BB8
    movs r0, #6
    b _08014BBA
    .align 2, 0
_08014BB4: .4byte gUnk_0300040C
_08014BB8:
    movs r0, #0x1e
_08014BBA:
    subs r2, r0, r1
    ldr r0, [r4, #0x14]
    lsls r1, r2, #3
    subs r1, r1, r2
    lsls r2, r2, #1
    rsbs r2, r2, #0
    ldr r3, [r0, #0x64]
    adds r0, r4, #0
    bl _call_via_r3
_08014BCE:
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08014BD8
func_08014BD8: @ 0x08014BD8
    push {r4, r5, lr}
    ldr r0, [r0, #4]
    movs r4, #1
    adds r5, r0, #0
    adds r5, #0xa8
_08014BE2:
    ldr r0, [r5]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r4, #0
    bl _call_via_r2
    adds r1, r0, #0
    cmp r1, #0
    beq _08014C00
    ldr r0, [r1, #0x14]
    ldr r2, [r0, #0x3c]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08014C00:
    adds r4, #1
    cmp r4, #0x23
    bls _08014BE2
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_08014C0C
func_08014C0C: @ 0x08014C0C
    push {r4, r5, lr}
    adds r4, r1, #0
    adds r5, r2, #0
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r3, [r1, #0x64]
    adds r1, r4, #0
    adds r2, r5, #0
    bl _call_via_r3
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_08014C34
func_08014C34: @ 0x08014C34
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x44
    adds r7, r1, #0
    str r2, [sp, #0x3c]
    ldr r0, [r0, #4]
    str r0, [sp, #0x40]
    cmp r7, #0
    bne _08014D18
    adds r0, #0x8c
    ldr r0, [r0]
    mov sl, r0
    movs r0, #0x14
    add sl, r0
    add r1, sp, #0x34
    ldr r0, _08014D28 @ =0x000003FF
    mov r8, r0
    mov r0, r8
    ands r3, r0
    ldrh r2, [r1]
    ldr r5, _08014D2C @ =0xFFFFFC00
    adds r0, r5, #0
    ands r0, r2
    orrs r0, r3
    strh r0, [r1]
    ldr r2, [sp, #0x64]
    lsls r2, r2, #0x10
    lsrs r3, r2, #0x10
    movs r0, #0x3f
    mov sb, r0
    ands r3, r0
    lsls r3, r3, #2
    ldrb r6, [r1, #1]
    movs r4, #3
    adds r0, r4, #0
    ands r0, r6
    orrs r0, r3
    strb r0, [r1, #1]
    lsrs r2, r2, #0x16
    mov r3, r8
    ands r2, r3
    ldrh r3, [r1, #2]
    adds r0, r5, #0
    ands r0, r3
    orrs r0, r2
    strh r0, [r1, #2]
    ldr r2, [sp, #0x68]
    lsls r2, r2, #0x10
    lsrs r0, r2, #0x10
    mov r3, sb
    ands r0, r3
    lsls r0, r0, #2
    ldrb r3, [r1, #3]
    ands r4, r3
    orrs r4, r0
    strb r4, [r1, #3]
    lsrs r2, r2, #0x16
    mov r0, r8
    ands r2, r0
    ldrh r0, [r1, #4]
    ands r5, r0
    orrs r5, r2
    strh r5, [r1, #4]
    add r4, sp, #0x2c
    adds r0, r4, #0
    movs r2, #6
    bl memcpy
    strb r7, [r4, #6]
    ldr r3, [sp, #0x3c]
    lsls r2, r3, #4
    subs r2, r2, r3
    lsls r2, r2, #3
    mov r0, sp
    adds r1, r4, #0
    bl __5HorseRC13ActorLocationUi
    mov r0, sl
    mov r1, sp
    bl SetHorse__4FarmRC5Horse
    ldr r4, [sp, #0x40]
    adds r4, #0xa8
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x38]
    movs r1, #0x2c
    bl _call_via_r2
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _08014D18
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08014D18
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x20]
    adds r0, r4, #0
    bl _call_via_r1
_08014D18:
    add sp, #0x44
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08014D28: .4byte 0x000003FF
_08014D2C: .4byte 0xFFFFFC00

    thumb_func_start func_08014D30
func_08014D30: @ 0x08014D30
    push {r4, lr}
    ldr r4, [r0, #4]
    cmp r1, #0
    bne _08014D54
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x3c]
    movs r1, #0x2c
    bl _call_via_r2
    adds r0, r4, #0
    adds r0, #0x8c
    ldr r0, [r0]
    adds r0, #0x14
    bl RemoveHorse__4Farm
_08014D54:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08014D5C
func_08014D5C: @ 0x08014D5C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r1, [r1, #0x78]
    bl _call_via_r1
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08014D7C
func_08014D7C: @ 0x08014D7C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r1, [r1, #0x44]
    bl _call_via_r1
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08014D9C
func_08014D9C: @ 0x08014D9C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    ldr r4, _0801510C @ =0xFFFFFC70
    add sp, r4
    ldr r0, [r0, #4]
    mov sl, r0
    mov r4, sl
    adds r4, #0xf0
    movs r7, #0
    ldr r0, [r4]
    cmp r7, r0
    beq _08014DBE
    bl __builtin_delete
_08014DBE:
    str r7, [r4]
    mov r0, sp
    strb r7, [r0]
    ldr r1, _08015110 @ =0x080F0654
    add r0, sp, #0x384
    movs r2, #3
    bl memcpy
    ldr r1, _08015114 @ =0x080F0658
    add r0, sp, #0x388
    movs r2, #2
    bl memcpy
    ldr r1, _08015118 @ =0x080F065C
    add r0, sp, #0x38c
    movs r2, #2
    bl memcpy
    mov sb, sp
    ldr r0, _0801511C @ =0x080F0660
    mov r8, r0
    mov r0, sp
    bl strlen
    mov r1, sp
    adds r6, r1, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08014E16
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08014E08
    adds r4, r5, #0
_08014E08:
    adds r0, r6, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r0, r6, r4
    strb r7, [r0]
_08014E16:
    mov r6, sb
    ldr r0, _08015110 @ =0x080F0654
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08014E4A
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08014E3A
    adds r4, r5, #0
_08014E3A:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08014E4A:
    ldr r1, _08015124 @ =0x080F067C
    mov r8, r1
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08014E7C
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08014E6C
    adds r4, r5, #0
_08014E6C:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08014E7C:
    mov r0, sl
    adds r0, #0x8c
    ldr r0, [r0]
    adds r0, #0x14
    bl method_08009AF4__C4Farm
    mov r8, r0
    mov r4, r8
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08014EBA
    adds r0, r4, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08014EAA
    adds r4, r5, #0
_08014EAA:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08014EBA:
    ldr r0, _08015128 @ =0x080F0684
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08014EEC
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08014EDC
    adds r4, r5, #0
_08014EDC:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08014EEC:
    ldr r1, _08015110 @ =0x080F0654
    mov r8, r1
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08014F1E
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08014F0E
    adds r4, r5, #0
_08014F0E:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08014F1E:
    ldr r0, _0801512C @ =0x080F068C
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08014F50
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08014F40
    adds r4, r5, #0
_08014F40:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08014F50:
    ldr r1, _08015114 @ =0x080F0658
    mov r8, r1
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08014F82
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08014F72
    adds r4, r5, #0
_08014F72:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08014F82:
    ldr r0, _08015110 @ =0x080F0654
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08014FB4
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08014FA4
    adds r4, r5, #0
_08014FA4:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08014FB4:
    ldr r1, _08015130 @ =0x080F069C
    mov r8, r1
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08014FE6
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08014FD6
    adds r4, r5, #0
_08014FD6:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08014FE6:
    ldr r0, _08015114 @ =0x080F0658
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08015018
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08015008
    adds r4, r5, #0
_08015008:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08015018:
    ldr r1, _08015110 @ =0x080F0654
    mov r8, r1
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _0801504A
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _0801503A
    adds r4, r5, #0
_0801503A:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_0801504A:
    ldr r7, _08015118 @ =0x080F065C
    adds r0, r6, #0
    bl strlen
    adds r6, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _0801507A
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _0801506A
    adds r4, r5, #0
_0801506A:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
_0801507A:
    mov r0, sl
    movs r1, #2
    mov r2, sp
    bl func_08011934
    mov r8, sp
    ldr r7, _08015118 @ =0x080F065C
    mov r0, sp
    bl strlen
    mov r1, sp
    adds r6, r1, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _080150B8
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _080150A8
    adds r4, r5, #0
_080150A8:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
_080150B8:
    mov r6, r8
    ldr r0, _08015134 @ =0x080F06B4
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _080150EC
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _080150DC
    adds r4, r5, #0
_080150DC:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_080150EC:
    ldr r1, _08015110 @ =0x080F0654
    mov r8, r1
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015120 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _0801514C
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    b _08015138
    .align 2, 0
_0801510C: .4byte 0xFFFFFC70
_08015110: .4byte 0x080F0654
_08015114: .4byte 0x080F0658
_08015118: .4byte 0x080F065C
_0801511C: .4byte 0x080F0660
_08015120: .4byte 0x00000383
_08015124: .4byte 0x080F067C
_08015128: .4byte 0x080F0684
_0801512C: .4byte 0x080F068C
_08015130: .4byte 0x080F069C
_08015134: .4byte 0x080F06B4
_08015138:
    bls _0801513C
    adds r4, r5, #0
_0801513C:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_0801514C:
    ldr r0, _08015204 @ =0x080F06D0
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015208 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _0801517E
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _0801516E
    adds r4, r5, #0
_0801516E:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_0801517E:
    ldr r7, _0801520C @ =0x080F0658
    adds r0, r6, #0
    bl strlen
    adds r6, r6, r0
    ldr r1, _08015208 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _080151AE
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _0801519E
    adds r4, r5, #0
_0801519E:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
_080151AE:
    movs r0, #0xe1
    lsls r0, r0, #2
    bl __builtin_new
    adds r4, r0, #0
    mov r1, sp
    bl strcpy
    mov r5, sl
    adds r5, #0xf0
    ldr r0, [r5]
    cmp r4, r0
    beq _080151CC
    bl __builtin_delete
_080151CC:
    str r4, [r5]
    mov r0, sl
    adds r0, #0xac
    ldr r1, [r0]
    cmp r1, #0
    beq _080151F0
    adds r0, #4
    ldr r3, [r0]
    adds r0, r1, #0
    adds r1, r4, #0
    movs r2, #0x80
    lsls r2, r2, #1
    bl func_08050DC8
    mov r1, sl
    adds r1, #0x9c
    movs r0, #0x10
    str r0, [r1]
_080151F0:
    movs r3, #0xe4
    lsls r3, r3, #2
    add sp, r3
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08015204: .4byte 0x080F06D0
_08015208: .4byte 0x00000383
_0801520C: .4byte 0x080F0658

    thumb_func_start func_08015210
func_08015210: @ 0x08015210
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    ldr r0, [r0, #4]
    mov r8, r0
    mov r5, r8
    adds r5, #0x8c
    ldr r0, [r5]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    bl GetCapacity__C4Coop
    adds r6, r0, #0
    movs r4, #0
    cmp r4, r6
    bhs _08015272
    mov r7, r8
    adds r7, #0xa8
_08015236:
    ldr r0, [r5]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r4, #0
    bl GetChicken__4CoopUi
    cmp r0, #0
    beq _0801526C
    bl method_0809B514__C9Livestock
    cmp r0, #2
    bne _0801526C
    ldr r0, [r7]
    ldr r2, [r0]
    adds r1, r4, #0
    adds r1, #0x2e
    ldr r2, [r2, #0x3c]
    bl _call_via_r2
    ldr r0, [r5]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r4, #0
    bl RemoveAndRememberUnk__4CoopUi
_0801526C:
    adds r4, #1
    cmp r4, r6
    blo _08015236
_08015272:
    mov r4, r8
    adds r4, #0x8c
    ldr r0, [r4]
    ldr r1, _08015318 @ =0x00001C2C
    adds r5, r0, r1
    adds r0, r5, #0
    bl func_0800F190
    lsls r0, r0, #0x18
    adds r6, r4, #0
    cmp r0, #0
    bne _080152B8
    adds r0, r5, #0
    bl func_0800F204
    cmp r0, #3
    bne _080152B8
    ldr r4, [r6]
    movs r0, #0x82
    lsls r0, r0, #3
    adds r4, r4, r0
    adds r0, r5, #0
    bl func_0800F344
    adds r1, r0, #0
    adds r0, r4, #0
    bl GetChicken__4CoopUi
    cmp r0, #0
    bne _080152B8
    ldr r0, [r6]
    ldr r1, _08015318 @ =0x00001C2C
    adds r0, r0, r1
    bl func_0800F390
_080152B8:
    ldr r0, [r6]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    bl GetCapacity__C4Barn
    adds r7, r0, #0
    movs r4, #0
    cmp r4, r7
    bhs _0801530E
    adds r5, r6, #0
    mov r6, r8
    adds r6, #0xa8
_080152D2:
    ldr r0, [r5]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r4, #0
    bl GetBarnAnimal__4BarnUi
    cmp r0, #0
    beq _08015308
    bl method_0809B514__C9Livestock
    cmp r0, #2
    bne _08015308
    ldr r0, [r6]
    ldr r2, [r0]
    adds r1, r4, #0
    adds r1, #0x36
    ldr r2, [r2, #0x3c]
    bl _call_via_r2
    ldr r0, [r5]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r4, #0
    bl RemoveAndRememberUnk__4BarnUi
_08015308:
    adds r4, #1
    cmp r4, r7
    blo _080152D2
_0801530E:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08015318: .4byte 0x00001C2C

    thumb_func_start func_0801531C
func_0801531C: @ 0x0801531C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    ldr r4, _0801568C @ =0xFFFFFC70
    add sp, r4
    ldr r0, [r0, #4]
    mov sl, r0
    mov r4, sl
    adds r4, #0xf0
    movs r7, #0
    ldr r0, [r4]
    cmp r7, r0
    beq _0801533E
    bl __builtin_delete
_0801533E:
    str r7, [r4]
    mov r0, sp
    strb r7, [r0]
    ldr r1, _08015690 @ =0x080F0654
    add r0, sp, #0x384
    movs r2, #3
    bl memcpy
    ldr r1, _08015694 @ =0x080F0658
    add r0, sp, #0x388
    movs r2, #2
    bl memcpy
    ldr r1, _08015698 @ =0x080F065C
    add r0, sp, #0x38c
    movs r2, #2
    bl memcpy
    mov sb, sp
    ldr r0, _0801569C @ =0x080F0660
    mov r8, r0
    mov r0, sp
    bl strlen
    mov r1, sp
    adds r6, r1, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08015396
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08015388
    adds r4, r5, #0
_08015388:
    adds r0, r6, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r0, r6, r4
    strb r7, [r0]
_08015396:
    mov r6, sb
    ldr r0, _08015690 @ =0x080F0654
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _080153CA
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _080153BA
    adds r4, r5, #0
_080153BA:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_080153CA:
    ldr r1, _080156A4 @ =0x080F067C
    mov r8, r1
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _080153FC
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _080153EC
    adds r4, r5, #0
_080153EC:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_080153FC:
    mov r0, sl
    adds r0, #0x8c
    ldr r0, [r0]
    adds r0, #0x14
    bl method_08009AF4__C4Farm
    mov r8, r0
    mov r4, r8
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _0801543A
    adds r0, r4, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _0801542A
    adds r4, r5, #0
_0801542A:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_0801543A:
    ldr r0, _080156A8 @ =0x080F0684
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _0801546C
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _0801545C
    adds r4, r5, #0
_0801545C:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_0801546C:
    ldr r1, _08015690 @ =0x080F0654
    mov r8, r1
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _0801549E
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _0801548E
    adds r4, r5, #0
_0801548E:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_0801549E:
    ldr r0, _080156AC @ =0x080F068C
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _080154D0
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _080154C0
    adds r4, r5, #0
_080154C0:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_080154D0:
    ldr r1, _08015694 @ =0x080F0658
    mov r8, r1
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08015502
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _080154F2
    adds r4, r5, #0
_080154F2:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08015502:
    ldr r0, _08015690 @ =0x080F0654
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08015534
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08015524
    adds r4, r5, #0
_08015524:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08015534:
    ldr r1, _080156B0 @ =0x080F069C
    mov r8, r1
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08015566
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08015556
    adds r4, r5, #0
_08015556:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08015566:
    ldr r0, _08015694 @ =0x080F0658
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08015598
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08015588
    adds r4, r5, #0
_08015588:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_08015598:
    ldr r1, _08015690 @ =0x080F0654
    mov r8, r1
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _080155CA
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _080155BA
    adds r4, r5, #0
_080155BA:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_080155CA:
    ldr r7, _08015698 @ =0x080F065C
    adds r0, r6, #0
    bl strlen
    adds r6, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _080155FA
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _080155EA
    adds r4, r5, #0
_080155EA:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
_080155FA:
    mov r0, sl
    movs r1, #1
    mov r2, sp
    bl func_08011934
    mov r8, sp
    ldr r7, _08015698 @ =0x080F065C
    mov r0, sp
    bl strlen
    mov r1, sp
    adds r6, r1, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _08015638
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _08015628
    adds r4, r5, #0
_08015628:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
_08015638:
    mov r6, r8
    ldr r0, _080156B4 @ =0x080F06B4
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _0801566C
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _0801565C
    adds r4, r5, #0
_0801565C:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_0801566C:
    ldr r1, _08015690 @ =0x080F0654
    mov r8, r1
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _080156A0 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _080156CC
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    b _080156B8
    .align 2, 0
_0801568C: .4byte 0xFFFFFC70
_08015690: .4byte 0x080F0654
_08015694: .4byte 0x080F0658
_08015698: .4byte 0x080F065C
_0801569C: .4byte 0x080F0660
_080156A0: .4byte 0x00000383
_080156A4: .4byte 0x080F067C
_080156A8: .4byte 0x080F0684
_080156AC: .4byte 0x080F068C
_080156B0: .4byte 0x080F069C
_080156B4: .4byte 0x080F06B4
_080156B8:
    bls _080156BC
    adds r4, r5, #0
_080156BC:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_080156CC:
    ldr r0, _08015784 @ =0x080F06D0
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    ldr r1, _08015788 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _080156FE
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _080156EE
    adds r4, r5, #0
_080156EE:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
_080156FE:
    ldr r7, _0801578C @ =0x080F0658
    adds r0, r6, #0
    bl strlen
    adds r6, r6, r0
    ldr r1, _08015788 @ =0x00000383
    subs r5, r1, r0
    cmp r5, #0
    beq _0801572E
    adds r0, r7, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls _0801571E
    adds r4, r5, #0
_0801571E:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
_0801572E:
    movs r0, #0xe1
    lsls r0, r0, #2
    bl __builtin_new
    adds r4, r0, #0
    mov r1, sp
    bl strcpy
    mov r5, sl
    adds r5, #0xf0
    ldr r0, [r5]
    cmp r4, r0
    beq _0801574C
    bl __builtin_delete
_0801574C:
    str r4, [r5]
    mov r0, sl
    adds r0, #0xac
    ldr r1, [r0]
    cmp r1, #0
    beq _08015770
    adds r0, #4
    ldr r3, [r0]
    adds r0, r1, #0
    adds r1, r4, #0
    movs r2, #0x80
    lsls r2, r2, #1
    bl func_08050DC8
    mov r1, sl
    adds r1, #0x9c
    movs r0, #0x10
    str r0, [r1]
_08015770:
    movs r3, #0xe4
    lsls r3, r3, #2
    add sp, r3
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08015784: .4byte 0x080F06D0
_08015788: .4byte 0x00000383
_0801578C: .4byte 0x080F0658

    thumb_func_start func_08015790
func_08015790: @ 0x08015790
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    ldr r0, [r0, #4]
    mov r8, r0
    mov r5, r8
    adds r5, #0x8c
    ldr r0, [r5]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    bl GetCapacity__C4Coop
    adds r6, r0, #0
    movs r4, #0
    cmp r4, r6
    bhs _080157F2
    mov r7, r8
    adds r7, #0xa8
_080157B6:
    ldr r0, [r5]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r4, #0
    bl GetChicken__4CoopUi
    cmp r0, #0
    beq _080157EC
    bl method_0809B514__C9Livestock
    cmp r0, #1
    bne _080157EC
    ldr r0, [r7]
    ldr r2, [r0]
    adds r1, r4, #0
    adds r1, #0x2e
    ldr r2, [r2, #0x3c]
    bl _call_via_r2
    ldr r0, [r5]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r4, #0
    bl RemoveAndRememberUnk__4CoopUi
_080157EC:
    adds r4, #1
    cmp r4, r6
    blo _080157B6
_080157F2:
    mov r4, r8
    adds r4, #0x8c
    ldr r0, [r4]
    ldr r1, _08015898 @ =0x00001C2C
    adds r5, r0, r1
    adds r0, r5, #0
    bl func_0800F190
    lsls r0, r0, #0x18
    adds r6, r4, #0
    cmp r0, #0
    bne _08015838
    adds r0, r5, #0
    bl func_0800F204
    cmp r0, #3
    bne _08015838
    ldr r4, [r6]
    movs r0, #0x82
    lsls r0, r0, #3
    adds r4, r4, r0
    adds r0, r5, #0
    bl func_0800F344
    adds r1, r0, #0
    adds r0, r4, #0
    bl GetChicken__4CoopUi
    cmp r0, #0
    bne _08015838
    ldr r0, [r6]
    ldr r1, _08015898 @ =0x00001C2C
    adds r0, r0, r1
    bl func_0800F390
_08015838:
    ldr r0, [r6]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    bl GetCapacity__C4Barn
    adds r7, r0, #0
    movs r4, #0
    cmp r4, r7
    bhs _0801588E
    adds r5, r6, #0
    mov r6, r8
    adds r6, #0xa8
_08015852:
    ldr r0, [r5]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r4, #0
    bl GetBarnAnimal__4BarnUi
    cmp r0, #0
    beq _08015888
    bl method_0809B514__C9Livestock
    cmp r0, #1
    bne _08015888
    ldr r0, [r6]
    ldr r2, [r0]
    adds r1, r4, #0
    adds r1, #0x36
    ldr r2, [r2, #0x3c]
    bl _call_via_r2
    ldr r0, [r5]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r4, #0
    bl RemoveAndRememberUnk__4BarnUi
_08015888:
    adds r4, #1
    cmp r4, r7
    blo _08015852
_0801588E:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08015898: .4byte 0x00001C2C

    thumb_func_start func_0801589C
func_0801589C: @ 0x0801589C
    push {r4, r5, lr}
    lsls r5, r1, #0x10
    lsrs r5, r5, #0x10
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r2, [r1, #0x68]
    adds r1, r5, #0
    bl _call_via_r2
    adds r4, #0x9c
    movs r0, #0x19
    str r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080158CC
func_080158CC: @ 0x080158CC
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    adds r1, #0x80
    ldr r1, [r1]
    bl _call_via_r1
    adds r4, #0x9c
    movs r0, #0x19
    str r0, [r4]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080158F8
func_080158F8: @ 0x080158F8
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r1, [r1, #0x7c]
    bl _call_via_r1
    adds r4, #0x9c
    movs r0, #0x19
    str r0, [r4]
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08015920
func_08015920: @ 0x08015920
    push {lr}
    adds r3, r1, #0
    ldr r1, [r0, #4]
    adds r0, r3, #0
    subs r0, #0x24
    cmp r0, #6
    bhi _08015948
    adds r0, r1, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r3, #0
    bl _call_via_r2
    cmp r0, #0
    beq _08015948
    bl func_08033B24
    b _0801594A
_08015948:
    movs r0, #0
_0801594A:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08015950
func_08015950: @ 0x08015950
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    adds r1, #0x84
    ldr r1, [r1]
    bl _call_via_r1
    pop {r1}
    bx r1

    thumb_func_start func_08015970
func_08015970: @ 0x08015970
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    adds r1, #0x88
    ldr r1, [r1]
    bl _call_via_r1
    pop {r1}
    bx r1

    thumb_func_start func_08015990
func_08015990: @ 0x08015990
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    adds r1, #0x8c
    ldr r1, [r1]
    bl _call_via_r1
    pop {r1}
    bx r1

    thumb_func_start func_080159B0
func_080159B0: @ 0x080159B0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x88
    adds r5, r1, #0
    adds r6, r2, #0
    ldr r7, [r0, #4]
    movs r0, #0
    str r0, [sp, #8]
    adds r0, r7, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4a
    bl _call_via_r2
    adds r3, r0, #0
    cmp r3, #0
    bne _080159DA
    b _08015B1A
_080159DA:
    ldrh r1, [r3, #4]
    cmp r5, #0
    bne _080159FC
    cmp r1, #0x33
    ble _080159FC
    ldr r0, _080159F8 @ =0x00000133
    cmp r1, r0
    bgt _080159FC
    adds r0, r1, #0
    subs r0, #0x34
    cmp r6, r0
    bne _08015A16
    movs r1, #1
    b _08015A18
    .align 2, 0
_080159F8: .4byte 0x00000133
_080159FC:
    cmp r5, #1
    bne _08015A16
    ldr r0, _08015B50 @ =0x00000133
    cmp r1, r0
    ble _08015A16
    ldr r0, _08015B54 @ =0x00000233
    cmp r1, r0
    bgt _08015A16
    ldr r2, _08015B58 @ =0xFFFFFECC
    adds r0, r1, r2
    movs r1, #1
    cmp r6, r0
    beq _08015A18
_08015A16:
    movs r1, #0
_08015A18:
    cmp r1, #0
    beq _08015B1A
    ldr r1, [r3, #0x14]
    add r4, sp, #0x3c
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015A34
    adds r0, #7
_08015A34:
    asrs r2, r0, #3
    movs r0, #2
    ldrsh r1, [r4, r0]
    cmp r1, #0
    bge _08015A40
    adds r1, #7
_08015A40:
    asrs r1, r1, #3
    add r0, sp, #0x44
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015A66
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015A60
    ldr r0, [sp, #0x44]
    str r0, [r1]
_08015A60:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015A66:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015A70
    adds r0, #7
_08015A70:
    asrs r2, r0, #3
    movs r0, #2
    ldrsh r1, [r4, r0]
    cmp r1, #0
    bge _08015A7C
    adds r1, #7
_08015A7C:
    asrs r1, r1, #3
    add r0, sp, #0x48
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015AA2
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015A9C
    ldr r0, [sp, #0x48]
    str r0, [r1]
_08015A9C:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015AA2:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015AAC
    adds r0, #7
_08015AAC:
    asrs r2, r0, #3
    movs r0, #6
    ldrsh r1, [r4, r0]
    cmp r1, #0
    bge _08015AB8
    adds r1, #7
_08015AB8:
    asrs r1, r1, #3
    add r0, sp, #0x4c
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015ADE
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015AD8
    ldr r0, [sp, #0x4c]
    str r0, [r1]
_08015AD8:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015ADE:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015AE8
    adds r0, #7
_08015AE8:
    asrs r2, r0, #3
    movs r0, #6
    ldrsh r1, [r4, r0]
    cmp r1, #0
    bge _08015AF4
    adds r1, #7
_08015AF4:
    asrs r1, r1, #3
    add r0, sp, #0x50
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015B1A
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015B14
    ldr r0, [sp, #0x50]
    str r0, [r1]
_08015B14:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015B1A:
    adds r4, r7, #0
    adds r4, #0xa8
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2b
    bl _call_via_r2
    adds r3, r0, #0
    mov r8, r4
    cmp r3, #0
    bne _08015B34
    b _08015C7A
_08015B34:
    ldrh r1, [r3, #4]
    cmp r5, #0
    bne _08015B5C
    cmp r1, #0x33
    ble _08015B5C
    ldr r0, _08015B50 @ =0x00000133
    cmp r1, r0
    bgt _08015B5C
    adds r0, r1, #0
    subs r0, #0x34
    cmp r6, r0
    bne _08015B76
    movs r1, #1
    b _08015B78
    .align 2, 0
_08015B50: .4byte 0x00000133
_08015B54: .4byte 0x00000233
_08015B58: .4byte 0xFFFFFECC
_08015B5C:
    cmp r5, #1
    bne _08015B76
    ldr r0, _08015CAC @ =0x00000133
    cmp r1, r0
    ble _08015B76
    ldr r0, _08015CB0 @ =0x00000233
    cmp r1, r0
    bgt _08015B76
    ldr r2, _08015CB4 @ =0xFFFFFECC
    adds r0, r1, r2
    movs r1, #1
    cmp r6, r0
    beq _08015B78
_08015B76:
    movs r1, #0
_08015B78:
    cmp r1, #0
    beq _08015C7A
    ldr r1, [r3, #0x14]
    add r4, sp, #0x54
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015B94
    adds r0, #7
_08015B94:
    asrs r2, r0, #3
    movs r0, #2
    ldrsh r1, [r4, r0]
    cmp r1, #0
    bge _08015BA0
    adds r1, #7
_08015BA0:
    asrs r1, r1, #3
    add r0, sp, #0x5c
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015BC6
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015BC0
    ldr r0, [sp, #0x5c]
    str r0, [r1]
_08015BC0:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015BC6:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015BD0
    adds r0, #7
_08015BD0:
    asrs r2, r0, #3
    movs r0, #2
    ldrsh r1, [r4, r0]
    cmp r1, #0
    bge _08015BDC
    adds r1, #7
_08015BDC:
    asrs r1, r1, #3
    add r0, sp, #0x60
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015C02
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015BFC
    ldr r0, [sp, #0x60]
    str r0, [r1]
_08015BFC:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015C02:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015C0C
    adds r0, #7
_08015C0C:
    asrs r2, r0, #3
    movs r0, #6
    ldrsh r1, [r4, r0]
    cmp r1, #0
    bge _08015C18
    adds r1, #7
_08015C18:
    asrs r1, r1, #3
    add r0, sp, #0x64
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015C3E
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015C38
    ldr r0, [sp, #0x64]
    str r0, [r1]
_08015C38:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015C3E:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015C48
    adds r0, #7
_08015C48:
    asrs r2, r0, #3
    movs r0, #6
    ldrsh r1, [r4, r0]
    cmp r1, #0
    bge _08015C54
    adds r1, #7
_08015C54:
    asrs r1, r1, #3
    add r0, sp, #0x68
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015C7A
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015C74
    ldr r0, [sp, #0x68]
    str r0, [r1]
_08015C74:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015C7A:
    mov r1, r8
    ldr r0, [r1]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4b
    bl _call_via_r2
    adds r3, r0, #0
    cmp r3, #0
    bne _08015C90
    b _08015DD6
_08015C90:
    ldrh r1, [r3, #4]
    cmp r5, #0
    bne _08015CB8
    cmp r1, #0x33
    ble _08015CB8
    ldr r0, _08015CAC @ =0x00000133
    cmp r1, r0
    bgt _08015CB8
    adds r0, r1, #0
    subs r0, #0x34
    cmp r6, r0
    bne _08015CD2
    movs r1, #1
    b _08015CD4
    .align 2, 0
_08015CAC: .4byte 0x00000133
_08015CB0: .4byte 0x00000233
_08015CB4: .4byte 0xFFFFFECC
_08015CB8:
    cmp r5, #1
    bne _08015CD2
    ldr r0, _08015E20 @ =0x00000133
    cmp r1, r0
    ble _08015CD2
    ldr r0, _08015E24 @ =0x00000233
    cmp r1, r0
    bgt _08015CD2
    ldr r2, _08015E28 @ =0xFFFFFECC
    adds r0, r1, r2
    movs r1, #1
    cmp r6, r0
    beq _08015CD4
_08015CD2:
    movs r1, #0
_08015CD4:
    cmp r1, #0
    beq _08015DD6
    ldr r1, [r3, #0x14]
    add r4, sp, #0x6c
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015CF0
    adds r0, #7
_08015CF0:
    asrs r2, r0, #3
    movs r0, #2
    ldrsh r1, [r4, r0]
    cmp r1, #0
    bge _08015CFC
    adds r1, #7
_08015CFC:
    asrs r1, r1, #3
    add r0, sp, #0x74
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015D22
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015D1C
    ldr r0, [sp, #0x74]
    str r0, [r1]
_08015D1C:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015D22:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015D2C
    adds r0, #7
_08015D2C:
    asrs r2, r0, #3
    movs r0, #2
    ldrsh r1, [r4, r0]
    cmp r1, #0
    bge _08015D38
    adds r1, #7
_08015D38:
    asrs r1, r1, #3
    add r0, sp, #0x78
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015D5E
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015D58
    ldr r0, [sp, #0x78]
    str r0, [r1]
_08015D58:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015D5E:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015D68
    adds r0, #7
_08015D68:
    asrs r2, r0, #3
    movs r0, #6
    ldrsh r1, [r4, r0]
    cmp r1, #0
    bge _08015D74
    adds r1, #7
_08015D74:
    asrs r1, r1, #3
    add r0, sp, #0x7c
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015D9A
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015D94
    ldr r0, [sp, #0x7c]
    str r0, [r1]
_08015D94:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015D9A:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015DA4
    adds r0, #7
_08015DA4:
    asrs r2, r0, #3
    movs r0, #6
    ldrsh r1, [r4, r0]
    cmp r1, #0
    bge _08015DB0
    adds r1, #7
_08015DB0:
    asrs r1, r1, #3
    add r0, sp, #0x80
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015DD6
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015DD0
    ldr r0, [sp, #0x80]
    str r0, [r1]
_08015DD0:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015DD6:
    ldr r2, [sp, #8]
    movs r3, #0
    add r4, sp, #0xc
    cmp r2, #0
    beq _08015DE2
    adds r3, r4, #0
_08015DE2:
    adds r0, r7, #0
    adds r0, #0x8c
    ldr r1, [r0]
    ldr r0, _08015E2C @ =0x00002E58
    adds r1, r1, r0
    str r3, [sp]
    str r2, [sp, #4]
    add r0, sp, #0x84
    adds r2, r5, #0
    adds r3, r6, #0
    bl func_0809CF34
    ldr r0, [sp, #8]
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    adds r0, r4, #0
    cmp r0, r1
    beq _08015E12
_08015E0C:
    adds r0, #4
    cmp r0, r1
    bne _08015E0C
_08015E12:
    add sp, #0x88
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08015E20: .4byte 0x00000133
_08015E24: .4byte 0x00000233
_08015E28: .4byte 0xFFFFFECC
_08015E2C: .4byte 0x00002E58

    thumb_func_start func_08015E30
func_08015E30: @ 0x08015E30
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xe8
    ldr r0, [r0, #4]
    str r0, [sp, #0xd8]
    adds r4, r0, #0
    adds r4, #0xa8
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x14]
    bl _call_via_r1
    adds r2, r0, #0
    add r0, sp, #0x3c
    movs r3, #0
    strb r3, [r0]
    strb r3, [r0, #1]
    adds r1, r2, #0
    subs r1, #0x34
    adds r7, r0, #0
    cmp r1, #0xff
    bls _08015E64
    b _08016250
_08015E64:
    adds r0, r2, #1
    mov r8, r0
    adds r6, r2, #0
    subs r6, #0x33
    str r3, [sp, #8]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4a
    bl _call_via_r2
    adds r3, r0, #0
    cmp r3, #0
    bne _08015E82
    b _08015F9C
_08015E82:
    ldrh r1, [r3, #4]
    movs r2, #0
    cmp r1, #0x33
    ble _08015E9A
    ldr r0, _080161A0 @ =0x00000133
    cmp r1, r0
    bgt _08015E9A
    adds r0, r1, #0
    subs r0, #0x34
    cmp r6, r0
    bne _08015E9A
    movs r2, #1
_08015E9A:
    cmp r2, #0
    beq _08015F9C
    ldr r1, [r3, #0x14]
    add r4, sp, #0x40
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015EB6
    adds r0, #7
_08015EB6:
    asrs r2, r0, #3
    movs r3, #2
    ldrsh r1, [r4, r3]
    cmp r1, #0
    bge _08015EC2
    adds r1, #7
_08015EC2:
    asrs r1, r1, #3
    add r0, sp, #0x48
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015EE8
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015EE2
    ldr r0, [sp, #0x48]
    str r0, [r1]
_08015EE2:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015EE8:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015EF2
    adds r0, #7
_08015EF2:
    asrs r2, r0, #3
    movs r3, #2
    ldrsh r1, [r4, r3]
    cmp r1, #0
    bge _08015EFE
    adds r1, #7
_08015EFE:
    asrs r1, r1, #3
    add r0, sp, #0x4c
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015F24
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015F1E
    ldr r0, [sp, #0x4c]
    str r0, [r1]
_08015F1E:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015F24:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015F2E
    adds r0, #7
_08015F2E:
    asrs r2, r0, #3
    movs r3, #6
    ldrsh r1, [r4, r3]
    cmp r1, #0
    bge _08015F3A
    adds r1, #7
_08015F3A:
    asrs r1, r1, #3
    add r0, sp, #0x50
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015F60
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015F5A
    ldr r0, [sp, #0x50]
    str r0, [r1]
_08015F5A:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015F60:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015F6A
    adds r0, #7
_08015F6A:
    asrs r2, r0, #3
    movs r3, #6
    ldrsh r1, [r4, r3]
    cmp r1, #0
    bge _08015F76
    adds r1, #7
_08015F76:
    asrs r1, r1, #3
    add r0, sp, #0x54
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08015F9C
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08015F96
    ldr r0, [sp, #0x54]
    str r0, [r1]
_08015F96:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08015F9C:
    ldr r4, [sp, #0xd8]
    adds r4, #0xa8
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2b
    bl _call_via_r2
    adds r3, r0, #0
    str r4, [sp, #0xe0]
    cmp r3, #0
    bne _08015FB6
    b _080160D0
_08015FB6:
    ldrh r1, [r3, #4]
    movs r2, #0
    cmp r1, #0x33
    ble _08015FCE
    ldr r0, _080161A0 @ =0x00000133
    cmp r1, r0
    bgt _08015FCE
    adds r0, r1, #0
    subs r0, #0x34
    cmp r6, r0
    bne _08015FCE
    movs r2, #1
_08015FCE:
    cmp r2, #0
    beq _080160D0
    ldr r1, [r3, #0x14]
    add r4, sp, #0x58
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08015FEA
    adds r0, #7
_08015FEA:
    asrs r2, r0, #3
    movs r3, #2
    ldrsh r1, [r4, r3]
    cmp r1, #0
    bge _08015FF6
    adds r1, #7
_08015FF6:
    asrs r1, r1, #3
    add r0, sp, #0x60
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _0801601C
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08016016
    ldr r0, [sp, #0x60]
    str r0, [r1]
_08016016:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_0801601C:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08016026
    adds r0, #7
_08016026:
    asrs r2, r0, #3
    movs r3, #2
    ldrsh r1, [r4, r3]
    cmp r1, #0
    bge _08016032
    adds r1, #7
_08016032:
    asrs r1, r1, #3
    add r0, sp, #0x64
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08016058
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08016052
    ldr r0, [sp, #0x64]
    str r0, [r1]
_08016052:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08016058:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08016062
    adds r0, #7
_08016062:
    asrs r2, r0, #3
    movs r3, #6
    ldrsh r1, [r4, r3]
    cmp r1, #0
    bge _0801606E
    adds r1, #7
_0801606E:
    asrs r1, r1, #3
    add r0, sp, #0x68
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08016094
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _0801608E
    ldr r0, [sp, #0x68]
    str r0, [r1]
_0801608E:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08016094:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _0801609E
    adds r0, #7
_0801609E:
    asrs r2, r0, #3
    movs r3, #6
    ldrsh r1, [r4, r3]
    cmp r1, #0
    bge _080160AA
    adds r1, #7
_080160AA:
    asrs r1, r1, #3
    add r0, sp, #0x6c
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _080160D0
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _080160CA
    ldr r0, [sp, #0x6c]
    str r0, [r1]
_080160CA:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_080160D0:
    ldr r4, [sp, #0xe0]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4b
    bl _call_via_r2
    adds r3, r0, #0
    cmp r3, #0
    bne _080160E6
    b _0801620A
_080160E6:
    ldrh r1, [r3, #4]
    movs r2, #0
    cmp r1, #0x33
    ble _080160FE
    ldr r0, _080161A0 @ =0x00000133
    cmp r1, r0
    bgt _080160FE
    adds r0, r1, #0
    subs r0, #0x34
    cmp r6, r0
    bne _080160FE
    movs r2, #1
_080160FE:
    cmp r2, #0
    bne _08016104
    b _0801620A
_08016104:
    ldr r1, [r3, #0x14]
    add r4, sp, #0x70
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _0801611C
    adds r0, #7
_0801611C:
    asrs r2, r0, #3
    movs r3, #2
    ldrsh r1, [r4, r3]
    cmp r1, #0
    bge _08016128
    adds r1, #7
_08016128:
    asrs r1, r1, #3
    add r0, sp, #0x78
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _0801614E
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08016148
    ldr r0, [sp, #0x78]
    str r0, [r1]
_08016148:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_0801614E:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08016158
    adds r0, #7
_08016158:
    asrs r2, r0, #3
    movs r3, #2
    ldrsh r1, [r4, r3]
    cmp r1, #0
    bge _08016164
    adds r1, #7
_08016164:
    asrs r1, r1, #3
    add r0, sp, #0x7c
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _0801618A
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08016184
    ldr r0, [sp, #0x7c]
    str r0, [r1]
_08016184:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_0801618A:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08016194
    adds r0, #7
_08016194:
    asrs r2, r0, #3
    movs r3, #6
    ldrsh r1, [r4, r3]
    cmp r1, #0
    b _080161A4
    .align 2, 0
_080161A0: .4byte 0x00000133
_080161A4:
    bge _080161A8
    adds r1, #7
_080161A8:
    asrs r1, r1, #3
    add r0, sp, #0x80
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _080161CE
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _080161C8
    ldr r0, [sp, #0x80]
    str r0, [r1]
_080161C8:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_080161CE:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _080161D8
    adds r0, #7
_080161D8:
    asrs r2, r0, #3
    movs r3, #6
    ldrsh r1, [r4, r3]
    cmp r1, #0
    bge _080161E4
    adds r1, #7
_080161E4:
    asrs r1, r1, #3
    add r0, sp, #0x84
    strb r2, [r0]
    strb r1, [r0, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _0801620A
    lsls r0, r0, #2
    adds r0, #4
    mov r1, sp
    adds r1, r1, r0
    adds r1, #8
    cmp r1, #0
    beq _08016204
    ldr r0, [sp, #0x84]
    str r0, [r1]
_08016204:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_0801620A:
    movs r2, #0
    ldr r0, [sp, #8]
    add r5, sp, #0xc
    cmp r0, #0
    beq _08016216
    adds r2, r5, #0
_08016216:
    ldr r4, [sp, #0xd8]
    adds r4, #0x8c
    ldr r1, [r4]
    ldr r3, _0801624C @ =0x00002E58
    adds r1, r1, r3
    str r2, [sp]
    str r0, [sp, #4]
    add r0, sp, #0x88
    movs r2, #0
    adds r3, r6, #0
    bl func_0809CF34
    ldr r0, [sp, #8]
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    adds r1, r5, #0
    add r0, sp, #0x88
    cmp r1, r2
    bne _08016244
    b _0801664A
_08016244:
    adds r1, #4
    cmp r1, r2
    bne _08016244
    b _0801664A
    .align 2, 0
_0801624C: .4byte 0x00002E58
_08016250:
    ldr r1, _0801656C @ =0xFFFFFECC
    adds r0, r2, r1
    cmp r0, #0xff
    bls _0801625A
    b _08016740
_0801625A:
    adds r0, r2, #1
    mov r8, r0
    adds r1, #1
    adds r6, r2, r1
    str r3, [sp, #8]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4a
    bl _call_via_r2
    adds r3, r0, #0
    cmp r3, #0
    bne _08016278
    b _08016394
_08016278:
    ldrh r1, [r3, #4]
    ldr r0, _08016570 @ =0x00000133
    movs r2, #0
    cmp r1, r0
    ble _08016292
    ldr r0, _08016574 @ =0x00000233
    cmp r1, r0
    bgt _08016292
    ldr r4, _0801656C @ =0xFFFFFECC
    adds r0, r1, r4
    cmp r6, r0
    bne _08016292
    movs r2, #1
_08016292:
    cmp r2, #0
    beq _08016394
    ldr r1, [r3, #0x14]
    add r4, sp, #0x8c
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _080162AE
    adds r0, #7
_080162AE:
    asrs r2, r0, #3
    movs r3, #2
    ldrsh r0, [r4, r3]
    cmp r0, #0
    bge _080162BA
    adds r0, #7
_080162BA:
    asrs r0, r0, #3
    add r1, sp, #0x94
    strb r2, [r1]
    strb r0, [r1, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _080162E0
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    cmp r2, #0
    beq _080162DA
    ldr r0, [r1]
    str r0, [r2]
_080162DA:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_080162E0:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _080162EA
    adds r0, #7
_080162EA:
    asrs r2, r0, #3
    movs r3, #2
    ldrsh r0, [r4, r3]
    cmp r0, #0
    bge _080162F6
    adds r0, #7
_080162F6:
    asrs r0, r0, #3
    add r1, sp, #0x98
    strb r2, [r1]
    strb r0, [r1, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _0801631C
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    cmp r2, #0
    beq _08016316
    ldr r0, [r1]
    str r0, [r2]
_08016316:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_0801631C:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08016326
    adds r0, #7
_08016326:
    asrs r2, r0, #3
    movs r3, #6
    ldrsh r0, [r4, r3]
    cmp r0, #0
    bge _08016332
    adds r0, #7
_08016332:
    asrs r0, r0, #3
    add r1, sp, #0x9c
    strb r2, [r1]
    strb r0, [r1, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08016358
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    cmp r2, #0
    beq _08016352
    ldr r0, [r1]
    str r0, [r2]
_08016352:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08016358:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08016362
    adds r0, #7
_08016362:
    asrs r2, r0, #3
    movs r3, #6
    ldrsh r0, [r4, r3]
    cmp r0, #0
    bge _0801636E
    adds r0, #7
_0801636E:
    asrs r0, r0, #3
    add r1, sp, #0xa0
    strb r2, [r1]
    strb r0, [r1, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08016394
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    cmp r2, #0
    beq _0801638E
    ldr r0, [r1]
    str r0, [r2]
_0801638E:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08016394:
    ldr r4, [sp, #0xd8]
    adds r4, #0xa8
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2b
    bl _call_via_r2
    adds r3, r0, #0
    str r4, [sp, #0xe0]
    cmp r3, #0
    bne _080163AE
    b _080164CA
_080163AE:
    ldrh r1, [r3, #4]
    ldr r0, _08016570 @ =0x00000133
    movs r2, #0
    cmp r1, r0
    ble _080163C8
    ldr r0, _08016574 @ =0x00000233
    cmp r1, r0
    bgt _080163C8
    ldr r4, _0801656C @ =0xFFFFFECC
    adds r0, r1, r4
    cmp r6, r0
    bne _080163C8
    movs r2, #1
_080163C8:
    cmp r2, #0
    beq _080164CA
    ldr r1, [r3, #0x14]
    add r4, sp, #0xa4
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _080163E4
    adds r0, #7
_080163E4:
    asrs r2, r0, #3
    movs r3, #2
    ldrsh r0, [r4, r3]
    cmp r0, #0
    bge _080163F0
    adds r0, #7
_080163F0:
    asrs r0, r0, #3
    add r1, sp, #0xac
    strb r2, [r1]
    strb r0, [r1, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08016416
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    cmp r2, #0
    beq _08016410
    ldr r0, [r1]
    str r0, [r2]
_08016410:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08016416:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08016420
    adds r0, #7
_08016420:
    asrs r2, r0, #3
    movs r3, #2
    ldrsh r0, [r4, r3]
    cmp r0, #0
    bge _0801642C
    adds r0, #7
_0801642C:
    asrs r0, r0, #3
    add r1, sp, #0xb0
    strb r2, [r1]
    strb r0, [r1, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _08016452
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    cmp r2, #0
    beq _0801644C
    ldr r0, [r1]
    str r0, [r2]
_0801644C:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08016452:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _0801645C
    adds r0, #7
_0801645C:
    asrs r2, r0, #3
    movs r3, #6
    ldrsh r0, [r4, r3]
    cmp r0, #0
    bge _08016468
    adds r0, #7
_08016468:
    asrs r0, r0, #3
    add r1, sp, #0xb4
    strb r2, [r1]
    strb r0, [r1, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _0801648E
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    cmp r2, #0
    beq _08016488
    ldr r0, [r1]
    str r0, [r2]
_08016488:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_0801648E:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08016498
    adds r0, #7
_08016498:
    asrs r2, r0, #3
    movs r3, #6
    ldrsh r0, [r4, r3]
    cmp r0, #0
    bge _080164A4
    adds r0, #7
_080164A4:
    asrs r0, r0, #3
    add r1, sp, #0xb8
    strb r2, [r1]
    strb r0, [r1, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _080164CA
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    cmp r2, #0
    beq _080164C4
    ldr r0, [r1]
    str r0, [r2]
_080164C4:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_080164CA:
    ldr r4, [sp, #0xe0]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4b
    bl _call_via_r2
    adds r3, r0, #0
    cmp r3, #0
    bne _080164E0
    b _0801660C
_080164E0:
    ldrh r1, [r3, #4]
    ldr r0, _08016570 @ =0x00000133
    movs r2, #0
    cmp r1, r0
    ble _080164FA
    ldr r0, _08016574 @ =0x00000233
    cmp r1, r0
    bgt _080164FA
    ldr r4, _0801656C @ =0xFFFFFECC
    adds r0, r1, r4
    cmp r6, r0
    bne _080164FA
    movs r2, #1
_080164FA:
    cmp r2, #0
    bne _08016500
    b _0801660C
_08016500:
    ldr r1, [r3, #0x14]
    add r4, sp, #0xbc
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08016518
    adds r0, #7
_08016518:
    asrs r2, r0, #3
    movs r3, #2
    ldrsh r0, [r4, r3]
    cmp r0, #0
    bge _08016524
    adds r0, #7
_08016524:
    asrs r0, r0, #3
    add r1, sp, #0xc4
    strb r2, [r1]
    strb r0, [r1, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _0801654A
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    cmp r2, #0
    beq _08016544
    ldr r0, [r1]
    str r0, [r2]
_08016544:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_0801654A:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _08016554
    adds r0, #7
_08016554:
    asrs r2, r0, #3
    movs r3, #2
    ldrsh r0, [r4, r3]
    cmp r0, #0
    bge _08016560
    adds r0, #7
_08016560:
    asrs r0, r0, #3
    add r1, sp, #0xc8
    strb r2, [r1]
    strb r0, [r1, #1]
    ldr r0, [sp, #8]
    b _08016578
    .align 2, 0
_0801656C: .4byte 0xFFFFFECC
_08016570: .4byte 0x00000133
_08016574: .4byte 0x00000233
_08016578:
    cmp r0, #0xb
    bhi _08016594
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    cmp r2, #0
    beq _0801658E
    ldr r0, [r1]
    str r0, [r2]
_0801658E:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_08016594:
    movs r1, #0
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _0801659E
    adds r0, #7
_0801659E:
    asrs r2, r0, #3
    movs r3, #6
    ldrsh r0, [r4, r3]
    cmp r0, #0
    bge _080165AA
    adds r0, #7
_080165AA:
    asrs r0, r0, #3
    add r1, sp, #0xcc
    strb r2, [r1]
    strb r0, [r1, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _080165D0
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    cmp r2, #0
    beq _080165CA
    ldr r0, [r1]
    str r0, [r2]
_080165CA:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_080165D0:
    movs r1, #4
    ldrsh r0, [r4, r1]
    cmp r0, #0
    bge _080165DA
    adds r0, #7
_080165DA:
    asrs r2, r0, #3
    movs r3, #6
    ldrsh r0, [r4, r3]
    cmp r0, #0
    bge _080165E6
    adds r0, #7
_080165E6:
    asrs r0, r0, #3
    add r1, sp, #0xd0
    strb r2, [r1]
    strb r0, [r1, #1]
    ldr r0, [sp, #8]
    cmp r0, #0xb
    bhi _0801660C
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    cmp r2, #0
    beq _08016606
    ldr r0, [r1]
    str r0, [r2]
_08016606:
    ldr r0, [sp, #8]
    adds r0, #1
    str r0, [sp, #8]
_0801660C:
    movs r2, #0
    ldr r0, [sp, #8]
    add r5, sp, #0xc
    cmp r0, #0
    beq _08016618
    adds r2, r5, #0
_08016618:
    ldr r4, [sp, #0xd8]
    adds r4, #0x8c
    ldr r1, [r4]
    ldr r3, _08016668 @ =0x00002E58
    adds r1, r1, r3
    str r2, [sp]
    str r0, [sp, #4]
    add r0, sp, #0xd4
    movs r2, #1
    adds r3, r6, #0
    bl func_0809CF34
    ldr r0, [sp, #8]
    lsls r0, r0, #2
    adds r0, #4
    mov r2, sp
    adds r2, r2, r0
    adds r2, #8
    adds r1, r5, #0
    add r0, sp, #0xd4
    cmp r1, r2
    beq _0801664A
_08016644:
    adds r1, #4
    cmp r1, r2
    bne _08016644
_0801664A:
    ldr r0, [r0]
    str r0, [sp, #0x3c]
    ldr r0, [r4]
    ldr r4, _08016668 @ =0x00002E58
    adds r0, r0, r4
    bl func_0809D8A0
    cmp r0, #4
    bhi _08016740
    lsls r0, r0, #2
    ldr r1, _0801666C @ =_08016670
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08016668: .4byte 0x00002E58
_0801666C: .4byte _08016670
_08016670: @ jump table
    .4byte _08016684 @ case 0
    .4byte _08016684 @ case 1
    .4byte _08016684 @ case 2
    .4byte _08016684 @ case 3
    .4byte _08016684 @ case 4
_08016684:
    ldrb r0, [r7]
    lsls r0, r0, #4
    adds r0, #0x10
    mov sl, r0
    add r0, sp, #0x3c
    ldrb r0, [r0, #1]
    lsls r0, r0, #4
    adds r7, r0, #0
    adds r7, #0x38
    movs r0, #8
    add sl, r0
    adds r7, #8
    ldr r1, [sp, #0xe0]
    ldr r0, [r1]
    ldr r2, [r0]
    adds r2, #0xb4
    str r2, [sp, #0xdc]
    add r6, sp, #8
    ldr r3, _08016750 @ =0x000003FF
    mov sb, r3
    mov r4, r8
    mov r1, sb
    ands r4, r1
    ldrh r2, [r6]
    ldr r5, _08016754 @ =0xFFFFFC00
    adds r1, r5, #0
    ands r1, r2
    orrs r1, r4
    strh r1, [r6]
    mov r2, sl
    lsls r4, r2, #0x10
    lsrs r2, r4, #0x10
    movs r3, #0x3f
    mov ip, r3
    ands r2, r3
    lsls r2, r2, #2
    str r2, [sp, #0xe4]
    ldrb r1, [r6, #1]
    mov r8, r1
    movs r3, #3
    adds r1, r3, #0
    mov r2, r8
    ands r1, r2
    ldr r2, [sp, #0xe4]
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
    mov r1, sb
    ands r2, r1
    ldrh r1, [r6, #4]
    ands r5, r1
    orrs r5, r2
    strh r5, [r6, #4]
    ldr r2, [sp, #0xdc]
    ldr r3, [r2]
    adds r1, r6, #0
    movs r2, #1
    bl _call_via_r3
    ldr r0, [sp, #0xd8]
    bl func_080D7F08
    movs r4, #0
    ldr r3, [sp, #0xe0]
    ldr r0, [r3]
    ldr r1, [r0]
    ldr r1, [r1, #0x14]
    bl _call_via_r1
    adds r2, r0, #0
    str r7, [sp]
    str r4, [sp, #4]
    ldr r0, [sp, #0xd8]
    movs r1, #0
    mov r3, sl
    bl func_080D7F9C
_08016740:
    add sp, #0xe8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08016750: .4byte 0x000003FF
_08016754: .4byte 0xFFFFFC00
_08016758:
    .byte 0x10, 0xB5, 0x40, 0x68, 0x04, 0x1C, 0xBC, 0x34
    .byte 0xA8, 0x30, 0x00, 0x68, 0x01, 0x68, 0xA4, 0x22, 0x52, 0x00, 0x89, 0x18, 0x09, 0x68, 0xBD, 0xF0
    .byte 0xCF, 0xF8, 0x01, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x20, 0x1C, 0xF2, 0xF7, 0x05, 0xFA, 0x10, 0xBC
    .byte 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_08016784
func_08016784: @ 0x08016784
    push {r4, lr}
    ldr r0, [r0, #4]
    adds r4, r0, #0
    adds r4, #0xbc
    adds r0, r4, #0
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080167A4
    adds r0, r4, #0
    movs r1, #5
    bl func_08008BF8
    movs r0, #1
    b _080167A6
_080167A4:
    movs r0, #0
_080167A6:
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_080167AC
func_080167AC: @ 0x080167AC
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    adds r1, #0x90
    ldr r1, [r1]
    bl _call_via_r1
    pop {r1}
    bx r1

    thumb_func_start func_080167CC
func_080167CC: @ 0x080167CC
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xbc
    bl func_08008CD0
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080167DC
func_080167DC: @ 0x080167DC
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0x8c
    ldr r1, [r0]
    ldr r2, _08016830 @ =0x00001CD4
    adds r0, r1, r2
    adds r1, #0x11
    bl func_080A05E8
    adds r4, #0xa8
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x38]
    movs r1, #0x23
    bl _call_via_r2
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x23
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _0801682A
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0801682A
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x20]
    adds r0, r4, #0
    bl _call_via_r1
_0801682A:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
_08016830: .4byte 0x00001CD4

    thumb_func_start func_08016834
func_08016834: @ 0x08016834
    push {r4, r5, lr}
    adds r5, r2, #0
    ldr r4, [r0, #4]
    cmp r1, #4
    bhi _080168CE
    lsls r0, r1, #2
    ldr r1, _08016848 @ =_0801684C
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08016848: .4byte _0801684C
_0801684C: @ jump table
    .4byte _08016860 @ case 0
    .4byte _08016884 @ case 1
    .4byte _08016884 @ case 2
    .4byte _080168AA @ case 3
    .4byte _08016872 @ case 4
_08016860:
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x3c]
    movs r1, #0x2c
    bl _call_via_r2
    b _080168CE
_08016872:
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x3c]
    movs r1, #0x2b
    bl _call_via_r2
    b _080168CE
_08016884:
    adds r0, r4, #0
    adds r0, #0x8c
    ldr r0, [r0]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r5, #0
    bl method_0800D80C__4BarnUi
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    adds r1, r5, #0
    adds r1, #0x36
    ldr r2, [r2, #0x3c]
    bl _call_via_r2
    b _080168CE
_080168AA:
    adds r0, r4, #0
    adds r0, #0x8c
    ldr r0, [r0]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r5, #0
    bl method_0800CB7C__4CoopUi
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    adds r1, r5, #0
    adds r1, #0x2e
    ldr r2, [r2, #0x3c]
    bl _call_via_r2
_080168CE:
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_080168D4
func_080168D4: @ 0x080168D4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    ldr r6, [r0, #4]
    cmp r1, #4
    bls _080168E4
    b _08016AF0
_080168E4:
    lsls r0, r1, #2
    ldr r1, _080168F0 @ =_080168F4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080168F0: .4byte _080168F4
_080168F4: @ jump table
    .4byte _08016908 @ case 0
    .4byte _0801696C @ case 1
    .4byte _0801696C @ case 2
    .4byte _08016A02 @ case 3
    .4byte _08016A92 @ case 4
_08016908:
    adds r4, r6, #0
    adds r4, #0xa8
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    cmp r0, #0
    beq _0801691E
    b _08016AF0
_0801691E:
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x38]
    movs r1, #0x2c
    bl _call_via_r2
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2c
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _08016956
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08016956
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x20]
    adds r0, r4, #0
    bl _call_via_r1
_08016956:
    cmp r4, #0
    bne _0801695C
    b _08016AF0
_0801695C:
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0xbc
    lsls r2, r2, #2
    movs r3, #0x84
    bl func_0801FE78
    b _08016AF0
_0801696C:
    adds r4, r6, #0
    adds r4, #0x8c
    ldr r0, [r4]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    bl method_0800D058__C4Barn
    adds r7, r0, #0
    movs r0, #1
    rsbs r0, r0, #0
    mov r8, r4
    cmp r7, r0
    bne _0801698A
    b _08016AF0
_0801698A:
    ldr r0, [r4]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    bl method_0800D858__4Barn
    adds r5, r7, #0
    adds r5, #0x36
    adds r4, #0x1c
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x38]
    adds r1, r5, #0
    bl _call_via_r2
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r5, #0
    bl _call_via_r2
    adds r5, r0, #0
    cmp r5, #0
    beq _080169D4
    ldr r0, [r5, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r5, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080169D4
    ldr r0, [r5, #0x14]
    ldr r1, [r0, #0x20]
    adds r0, r5, #0
    bl _call_via_r1
_080169D4:
    mov r0, r8
    ldr r1, [r0]
    movs r0, #0xbe
    lsls r0, r0, #3
    adds r1, r1, r0
    mov r4, sp
    mov r0, sp
    adds r2, r7, #0
    bl method_0800D074__C4BarnUi
    cmp r5, #0
    bne _080169EE
    b _08016AF0
_080169EE:
    mov r0, sp
    movs r1, #0
    ldrsh r2, [r0, r1]
    movs r0, #2
    ldrsh r3, [r4, r0]
    adds r0, r5, #0
    movs r1, #0x25
    bl func_0801FE78
    b _08016AF0
_08016A02:
    adds r4, r6, #0
    adds r4, #0x8c
    ldr r0, [r4]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    bl GetUnkEnt__C4Coop
    adds r7, r0, #0
    movs r0, #1
    rsbs r0, r0, #0
    mov r8, r4
    cmp r7, r0
    beq _08016AF0
    ldr r0, [r4]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    bl method_0800CBC0__4Coop
    adds r5, r7, #0
    adds r5, #0x2e
    adds r4, #0x1c
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x38]
    adds r1, r5, #0
    bl _call_via_r2
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r5, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _08016A68
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08016A68
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x20]
    adds r0, r4, #0
    bl _call_via_r1
_08016A68:
    mov r0, r8
    ldr r1, [r0]
    movs r0, #0x82
    lsls r0, r0, #3
    adds r1, r1, r0
    add r5, sp, #4
    adds r0, r5, #0
    adds r2, r7, #0
    bl method_0800C6F0__C4CoopUi
    cmp r4, #0
    beq _08016AF0
    movs r1, #0
    ldrsh r2, [r5, r1]
    movs r0, #2
    ldrsh r3, [r5, r0]
    adds r0, r4, #0
    movs r1, #0x11
    bl func_0801FE78
    b _08016AF0
_08016A92:
    adds r4, r6, #0
    adds r4, #0xa8
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2b
    bl _call_via_r2
    cmp r0, #0
    bne _08016AF0
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x38]
    movs r1, #0x2b
    bl _call_via_r2
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2b
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _08016ADE
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08016ADE
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x20]
    adds r0, r4, #0
    bl _call_via_r1
_08016ADE:
    cmp r4, #0
    beq _08016AF0
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0xbf
    lsls r2, r2, #1
    movs r3, #0x52
    bl func_0801FE78
_08016AF0:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08016AFC
func_08016AFC: @ 0x08016AFC
    push {lr}
    ldr r2, [r0, #4]
    cmp r1, #4
    bhi _08016B4A
    lsls r0, r1, #2
    ldr r1, _08016B10 @ =_08016B14
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08016B10: .4byte _08016B14
_08016B14: @ jump table
    .4byte _08016B28 @ case 0
    .4byte _08016B78 @ case 1
    .4byte _08016B78 @ case 2
    .4byte _08016B8A @ case 3
    .4byte _08016B58 @ case 4
_08016B28:
    adds r0, r2, #0
    adds r0, #0x8c
    ldr r2, [r0]
    ldr r1, _08016B50 @ =0x0000219A
    adds r0, r2, r1
    ldrb r1, [r0]
    movs r0, #2
    ands r0, r1
    cmp r0, #0
    bne _08016B70
    ldr r1, _08016B54 @ =0x000021A1
    adds r0, r2, r1
    ldrb r1, [r0]
    movs r0, #4
    ands r0, r1
    cmp r0, #0
    bne _08016B70
_08016B4A:
    movs r1, #1
    rsbs r1, r1, #0
    b _08016B9C
    .align 2, 0
_08016B50: .4byte 0x0000219A
_08016B54: .4byte 0x000021A1
_08016B58:
    adds r0, r2, #0
    adds r0, #0x8c
    ldr r0, [r0]
    ldr r1, _08016B74 @ =0x0000219C
    adds r0, r0, r1
    ldrb r1, [r0]
    movs r0, #0x10
    ands r0, r1
    movs r1, #1
    rsbs r1, r1, #0
    cmp r0, #0
    beq _08016B9C
_08016B70:
    movs r1, #0
    b _08016B9C
    .align 2, 0
_08016B74: .4byte 0x0000219C
_08016B78:
    adds r0, r2, #0
    adds r0, #0x8c
    ldr r0, [r0]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    bl method_0800D058__C4Barn
    b _08016B9A
_08016B8A:
    adds r0, r2, #0
    adds r0, #0x8c
    ldr r0, [r0]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    bl GetUnkEnt__C4Coop
_08016B9A:
    adds r1, r0, #0
_08016B9C:
    adds r0, r1, #0
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08016BA4
func_08016BA4: @ 0x08016BA4
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    movs r3, #0x86
    lsls r3, r3, #1
    adds r2, r2, r3
    ldr r2, [r2]
    bl _call_via_r2
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08016BC0
func_08016BC0: @ 0x08016BC0
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    movs r3, #0x88
    lsls r3, r3, #1
    adds r2, r2, r3
    ldr r2, [r2]
    bl _call_via_r2
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08016BDC
func_08016BDC: @ 0x08016BDC
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    adds r1, #0xfc
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08016BF4
func_08016BF4: @ 0x08016BF4
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    movs r2, #0x80
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08016C10
func_08016C10: @ 0x08016C10
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    movs r2, #0x82
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08016C2C
func_08016C2C: @ 0x08016C2C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x5d
    bl _call_via_r2
    bl func_080387B8
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08016C48
func_08016C48: @ 0x08016C48
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x5d
    bl _call_via_r2
    bl func_080387C8
    adds r4, #0x9c
    movs r0, #0x1c
    str r0, [r4]
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08016C6C
func_08016C6C: @ 0x08016C6C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x5d
    bl _call_via_r2
    bl func_080387EC
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08016C88
func_08016C88: @ 0x08016C88
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x5d
    bl _call_via_r2
    bl func_080387FC
    adds r4, #0x9c
    movs r0, #0x1b
    str r0, [r4]
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08016CAC
func_08016CAC: @ 0x08016CAC
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    adds r1, #0xa8
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0

    thumb_func_start func_08016CCC
func_08016CCC: @ 0x08016CCC
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    adds r1, #0xac
    ldr r1, [r1]
    bl _call_via_r1
    pop {r0}
    bx r0

    thumb_func_start func_08016CEC
func_08016CEC: @ 0x08016CEC
    push {r4, r5, lr}
    adds r5, r1, #0
    ldr r4, [r0, #4]
    adds r4, #0xa8
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x38]
    adds r1, r5, #0
    bl _call_via_r2
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r5, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _08016D2C
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08016D2C
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x20]
    adds r0, r4, #0
    bl _call_via_r1
_08016D2C:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08016D34:
    .byte 0x00, 0xB5, 0x40, 0x68, 0xA8, 0x30, 0x00, 0x68, 0x02, 0x68, 0xD2, 0x6B
    .byte 0xBC, 0xF0, 0xE8, 0xFD, 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_08016D48
func_08016D48: @ 0x08016D48
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, _08016D7C @ =gUnk_0300040C
    ldr r1, [r1]
    movs r2, #0xdb
    lsls r2, r2, #2
    adds r1, r1, r2
    ldrh r3, [r0, #4]
    adds r4, #0x8c
    ldr r2, [r4]
    movs r0, #1
    strb r0, [r1]
    str r3, [r1, #4]
    ldrh r0, [r2, #0x12]
    strh r0, [r1, #8]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
_08016D7C: .4byte gUnk_0300040C

    thumb_func_start func_08016D80
func_08016D80: @ 0x08016D80
    ldr r0, _08016D98 @ =gUnk_0300040C
    ldr r0, [r0]
    movs r1, #0xdb
    lsls r1, r1, #2
    adds r0, r0, r1
    movs r1, #0
    strb r1, [r0]
    movs r1, #0x8d
    lsls r1, r1, #2
    str r1, [r0, #4]
    bx lr
    .align 2, 0
_08016D98: .4byte gUnk_0300040C

    thumb_func_start func_08016D9C
func_08016D9C: @ 0x08016D9C
    ldr r0, _08016DAC @ =gUnk_0300040C
    ldr r0, [r0]
    movs r1, #0xdb
    lsls r1, r1, #2
    adds r0, r0, r1
    ldr r0, [r0, #4]
    bx lr
    .align 2, 0
_08016DAC: .4byte gUnk_0300040C

    thumb_func_start func_08016DB0
func_08016DB0: @ 0x08016DB0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    ldr r6, [r0, #4]
    adds r0, r6, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    adds r7, r0, #0
    ldr r0, [r7, #0x14]
    mov r8, r0
    adds r5, r6, #0
    adds r5, #0x8c
    ldr r0, [r5]
    ldr r1, _08016E30 @ =0x00002214
    adds r0, r0, r1
    bl func_0809AAD4
    adds r4, r0, #0
    adds r4, #2
    bl rand
    adds r1, r4, #0
    bl __umodsi3
    cmp r0, #0
    beq _08016E34
    cmp r0, #1
    beq _08016E3E
    subs r2, r0, #2
    ldr r1, [r5]
    ldr r0, _08016E30 @ =0x00002214
    adds r1, r1, r0
    add r0, sp, #4
    bl func_0809AB08
    add r4, sp, #4
    ldrh r0, [r4]
    cmp r0, #0
    beq _08016E48
    adds r1, r0, #0
    subs r1, #1
    add r0, sp, #0x18
    bl __4FoodUi
    ldrh r1, [r4, #2]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    movs r2, #4
    ldrsb r2, [r4, r2]
    add r0, sp, #0x18
    bl AddBonuses__4FoodScSc
    mov r0, sp
    add r1, sp, #0x18
    movs r2, #3
    bl memcpy
    b _08016E50
    .align 2, 0
_08016E30: .4byte 0x00002214
_08016E34:
    mov r0, sp
    movs r1, #0x3f
    bl __4FoodUi
    b _08016E50
_08016E3E:
    mov r0, sp
    movs r1, #0x40
    bl __4FoodUi
    b _08016E50
_08016E48:
    mov r0, sp
    movs r1, #0x40
    bl __4FoodUi
_08016E50:
    mov r0, sp
    mov r1, sp
    movs r2, #3
    bl memcpy
    mov r1, r8
    ldr r2, [r1, #0x58]
    adds r0, r7, #0
    mov r1, sp
    bl _call_via_r2
    adds r1, r6, #0
    adds r1, #0x9c
    movs r0, #0x19
    str r0, [r1]
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08016E7C
func_08016E7C: @ 0x08016E7C
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r1, [r1, #0x6c]
    bl _call_via_r1
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08016E9C
func_08016E9C: @ 0x08016E9C
    push {r4, lr}
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r1, [r1, #0x70]
    bl _call_via_r1
    adds r4, #0x9c
    movs r0, #0x19
    str r0, [r4]
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08016EC4
func_08016EC4: @ 0x08016EC4
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    ldr r6, [sp, #0x1c]
    ldr r5, [sp, #0x20]
    lsls r5, r5, #0x10
    lsrs r5, r5, #0x10
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r4, [r0]
    movs r7, #0xb0
    lsls r7, r7, #1
    adds r4, r4, r7
    str r6, [sp]
    str r5, [sp, #4]
    ldr r4, [r4]
    bl _call_via_r4
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08016EF0
func_08016EF0: @ 0x08016EF0
    push {lr}
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r2, [r0]
    movs r3, #0xb2
    lsls r3, r3, #1
    adds r2, r2, r3
    ldr r2, [r2]
    bl _call_via_r2
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08016F0C
func_08016F0C: @ 0x08016F0C
    push {r4, lr}
    lsls r4, r1, #0x18
    lsrs r4, r4, #0x18
    ldr r0, [r0, #4]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    adds r1, #0x9c
    ldr r2, [r1]
    adds r1, r4, #0
    bl _call_via_r2
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08016F34
func_08016F34: @ 0x08016F34
    push {r4, r5, lr}
    adds r5, r1, #0
    ldr r4, [r0, #4]
    adds r0, r4, #0
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    ldr r1, [r0, #0x14]
    ldr r2, [r1, #0x74]
    adds r1, r5, #0
    bl _call_via_r2
    adds r4, #0x9c
    movs r0, #0x19
    str r0, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_08016F60
func_08016F60: @ 0x08016F60
    push {r4, r5, r6, lr}
    ldr r0, [r0, #4]
    movs r5, #0x2e
    adds r6, r0, #0
    adds r6, #0xa8
_08016F6A:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    adds r1, r5, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq _08016F96
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x5c]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08016F96
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x7c]
    adds r0, r4, #0
    bl _call_via_r1
_08016F96:
    adds r5, #1
    cmp r5, #0x45
    bls _08016F6A
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08016FA4
func_08016FA4: @ 0x08016FA4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    str r1, [sp, #0x10]
    adds r4, r3, #0
    ldr r0, [r0, #4]
    str r0, [sp, #0x14]
    mov sl, r2
    cmp r1, #0x49
    bgt _08017060
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    ldr r1, [sp, #0x10]
    bl _call_via_r2
    adds r7, r0, #0
    cmp r7, #0
    bne _08016FD4
    b _0801710E
_08016FD4:
    add r1, sp, #8
    ldr r0, _08017058 @ =0x000003FF
    mov r8, r0
    mov r2, sl
    mov r0, r8
    ands r2, r0
    ldrh r3, [r1]
    ldr r5, _0801705C @ =0xFFFFFC00
    adds r0, r5, #0
    ands r0, r3
    orrs r0, r2
    strh r0, [r1]
    lsls r4, r4, #0x10
    lsrs r2, r4, #0x10
    movs r0, #0x3f
    mov sb, r0
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
    ldr r4, [sp, #0x38]
    lsls r2, r4, #0x10
    lsrs r0, r2, #0x10
    mov r4, sb
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
    mov r4, sp
    mov r0, sp
    movs r2, #6
    bl memcpy
    ldr r0, [sp, #0x3c]
    strb r0, [r4, #6]
    adds r0, r7, #0
    mov r1, sp
    bl func_0803211C
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x20]
    adds r0, r7, #0
    bl _call_via_r1
    b _0801710E
    .align 2, 0
_08017058: .4byte 0x000003FF
_0801705C: .4byte 0xFFFFFC00
_08017060:
    ldr r0, [sp, #0x14]
    adds r0, #0xa8
    ldr r0, [r0]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    ldr r1, [sp, #0x10]
    bl _call_via_r2
    adds r7, r0, #0
    cmp r7, #0
    beq _0801710E
    mov r5, sp
    ldr r1, _08017138 @ =0x000003FF
    mov r8, r1
    mov r1, sl
    mov r2, r8
    ands r1, r2
    ldrh r2, [r5]
    ldr r3, _0801713C @ =0xFFFFFC00
    adds r0, r3, #0
    ands r0, r2
    orrs r0, r1
    strh r0, [r5]
    lsls r2, r4, #0x10
    lsrs r0, r2, #0x10
    movs r4, #0x3f
    mov sb, r4
    ands r0, r4
    lsls r0, r0, #2
    ldrb r1, [r5, #1]
    movs r4, #3
    adds r6, r4, #0
    ands r6, r1
    orrs r6, r0
    strb r6, [r5, #1]
    lsrs r2, r2, #0x16
    mov r0, r8
    ands r2, r0
    ldrh r1, [r5, #2]
    adds r0, r3, #0
    ands r0, r1
    orrs r0, r2
    strh r0, [r5, #2]
    ldr r2, [sp, #0x38]
    lsls r1, r2, #0x10
    lsrs r0, r1, #0x10
    mov r2, sb
    ands r0, r2
    lsls r0, r0, #2
    ldrb r2, [r5, #3]
    ands r4, r2
    orrs r4, r0
    strb r4, [r5, #3]
    lsrs r1, r1, #0x16
    mov r0, r8
    ands r1, r0
    ldrh r0, [r5, #4]
    ands r3, r0
    orrs r3, r1
    strh r3, [r5, #4]
    mov r0, sp
    ldrh r1, [r0]
    lsls r1, r1, #0x16
    lsrs r1, r1, #0x16
    lsrs r6, r6, #2
    ldrh r2, [r0, #2]
    ldr r5, _08017138 @ =0x000003FF
    ands r2, r5
    lsls r2, r2, #6
    orrs r2, r6
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    lsrs r4, r4, #2
    ldrh r3, [r0, #4]
    ands r3, r5
    lsls r3, r3, #6
    orrs r3, r4
    lsls r3, r3, #0x10
    asrs r3, r3, #0x10
    adds r0, r7, #0
    bl func_0801FE78
    ldr r0, [r7, #0x14]
    ldr r1, [r0, #0x20]
    adds r0, r7, #0
    bl _call_via_r1
_0801710E:
    ldr r1, [sp, #0x10]
    cmp r1, #0
    bne _08017162
    mov r2, sl
    cmp r2, #0x19
    bne _08017128
    ldr r0, [sp, #0x14]
    adds r0, #0x8c
    ldr r0, [r0]
    ldr r4, _08017140 @ =0x00001CD4
    adds r0, r0, r4
    bl func_080A0A90
_08017128:
    movs r1, #0
    mov r0, sl
    subs r0, #0x35
    cmp r0, #0xfe
    bhi _08017144
    mov r1, sl
    subs r1, #0x34
    b _08017150
    .align 2, 0
_08017138: .4byte 0x000003FF
_0801713C: .4byte 0xFFFFFC00
_08017140: .4byte 0x00001CD4
_08017144:
    ldr r0, _08017174 @ =0xFFFFFECB
    add r0, sl
    cmp r0, #0xfe
    bhi _08017150
    ldr r1, _08017178 @ =0xFFFFFECC
    add r1, sl
_08017150:
    cmp r1, #0
    ble _08017162
    ldr r0, [sp, #0x14]
    adds r0, #0x8c
    ldr r0, [r0]
    ldr r2, _0801717C @ =0x00001BD8
    adds r0, r0, r2
    bl func_0800EECC
_08017162:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08017174: .4byte 0xFFFFFECB
_08017178: .4byte 0xFFFFFECC
_0801717C: .4byte 0x00001BD8

    thumb_func_start func_08017180
func_08017180: @ 0x08017180
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r5, r0, #0
    adds r6, r1, #0
    adds r4, r2, #0
    cmp r5, #0
    beq _080171EC
    cmp r6, #0
    beq _080171EC
    ldr r2, [r4, #0x14]
    cmp r2, #0
    beq _080171EC
    ldr r0, [r4, #0x10]
    mov r8, r0
    cmp r0, #0
    beq _080171EC
    ldrb r7, [r4]
    adds r0, r3, r7
    cmp r0, r6
    bhi _080171EC
    lsls r1, r3, #2
    adds r1, r5, r1
    ldr r0, [sp, #0x1c]
    muls r0, r6, r0
    lsls r0, r0, #2
    adds r5, r1, r0
    ldrb r4, [r4, #1]
    mov ip, r4
    movs r0, #0
    cmp r0, ip
    bhs _080171EC
    lsls r6, r6, #2
    mov sb, r6
_080171C6:
    movs r1, #0
    adds r6, r0, #1
    cmp r1, r7
    bhs _080171E4
    mov r3, r8
    adds r4, r5, #0
_080171D2:
    ldrb r0, [r2]
    lsls r0, r0, #2
    adds r0, r0, r3
    ldr r0, [r0]
    stm r4!, {r0}
    adds r2, #1
    adds r1, #1
    cmp r1, r7
    blo _080171D2
_080171E4:
    add r5, sb
    adds r0, r6, #0
    cmp r0, ip
    blo _080171C6
_080171EC:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_080171F8
func_080171F8: @ 0x080171F8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    str r0, [sp, #4]
    str r1, [sp, #8]
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp, #0xc]
    rsbs r0, r2, #0
    orrs r0, r2
    lsrs r0, r0, #0x1f
    bl func_080A4698
    adds r3, r0, #0
    ldrh r0, [r3, #0x20]
    mov sb, r0
    ldrh r0, [r3, #0x22]
    movs r2, #0
    mov r4, sb
    muls r4, r0, r4
    cmp r2, r4
    bhs _08017242
    ldr r5, [sp, #4]
_0801722C:
    ldr r0, [r3, #0x1c]
    adds r0, r0, r2
    ldrb r0, [r0]
    ldr r1, [r3, #0x18]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    stm r5!, {r0}
    adds r2, #1
    cmp r2, r4
    blo _0801722C
_08017242:
    movs r1, #0
    ldr r0, _080172D8 @ =0x000009C8
    ldr r2, [sp, #8]
    adds r0, r2, r0
    str r0, [sp, #0x10]
    movs r2, #2
    rsbs r2, r2, #0
    mov r8, r2
_08017252:
    lsls r0, r1, #1
    adds r0, #0x16
    mov sl, r0
    movs r7, #0
    adds r0, r1, #1
    str r0, [sp, #0x14]
    movs r6, #0x22
    movs r0, #0xac
    muls r0, r1, r0
    ldr r1, [sp, #0x10]
    adds r5, r0, r1
_08017268:
    mov r2, sb
    mov r4, sl
    muls r4, r2, r4
    adds r4, r6, r4
    adds r0, r5, #0
    bl func_0800A07C
    lsls r3, r4, #2
    ldr r1, [sp, #4]
    adds r3, r3, r1
    add r4, sb
    lsls r4, r4, #2
    adds r4, r4, r1
    movs r2, #1
    ands r2, r0
    ldrb r1, [r4, #4]
    mov r0, r8
    ands r0, r1
    orrs r0, r2
    strb r0, [r4, #4]
    ldrb r1, [r4]
    mov r0, r8
    ands r0, r1
    orrs r0, r2
    strb r0, [r4]
    ldrb r1, [r3, #4]
    mov r0, r8
    ands r0, r1
    orrs r0, r2
    strb r0, [r3, #4]
    ldrb r1, [r3]
    mov r0, r8
    ands r0, r1
    orrs r0, r2
    strb r0, [r3]
    adds r6, #2
    adds r5, #4
    adds r7, #1
    cmp r7, #0x2a
    bls _08017268
    ldr r1, [sp, #0x14]
    cmp r1, #0x18
    bls _08017252
    ldr r2, [sp, #8]
    movs r1, #0xf0
    lsls r1, r1, #1
    adds r0, r2, r1
    bl GetUpgradeLevel__C9FarmHouse
    cmp r0, #1
    beq _08017300
    cmp r0, #1
    blo _080172DC
    cmp r0, #2
    beq _08017324
    b _0801733A
    .align 2, 0
_080172D8: .4byte 0x000009C8
_080172DC:
    ldr r2, _080172F8 @ =0x0810692C
    ldr r0, [sp, #0xc]
    cmp r0, #0
    beq _080172E6
    ldr r2, _080172FC @ =0x08106944
_080172E6:
    movs r0, #3
    str r0, [sp]
    ldr r0, [sp, #4]
    mov r1, sb
    movs r3, #0x1a
    bl func_08017180
    b _0801733A
    .align 2, 0
_080172F8: .4byte 0x0810692C
_080172FC: .4byte 0x08106944
_08017300:
    ldr r2, _0801731C @ =0x0810695C
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _0801730A
    ldr r2, _08017320 @ =0x08106974
_0801730A:
    movs r0, #3
    str r0, [sp]
    ldr r0, [sp, #4]
    mov r1, sb
    movs r3, #0x12
    bl func_08017180
    b _0801733A
    .align 2, 0
_0801731C: .4byte 0x0810695C
_08017320: .4byte 0x08106974
_08017324:
    ldr r2, _08017350 @ =0x0810698C
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _0801732E
    ldr r2, _08017354 @ =0x081069A4
_0801732E:
    str r0, [sp]
    ldr r0, [sp, #4]
    mov r1, sb
    movs r3, #0xa
    bl func_08017180
_0801733A:
    ldr r2, [sp, #8]
    ldr r1, _08017358 @ =0x000005DC
    adds r0, r2, r1
    bl GetUpgradeLevel__C4Barn
    cmp r0, #0
    beq _0801735C
    cmp r0, #1
    beq _08017380
    b _08017398
    .align 2, 0
_08017350: .4byte 0x0810698C
_08017354: .4byte 0x081069A4
_08017358: .4byte 0x000005DC
_0801735C:
    ldr r2, _08017378 @ =0x081069BC
    ldr r0, [sp, #0xc]
    cmp r0, #0
    beq _08017366
    ldr r2, _0801737C @ =0x081069D4
_08017366:
    movs r0, #2
    str r0, [sp]
    ldr r0, [sp, #4]
    mov r1, sb
    movs r3, #0x3a
    bl func_08017180
    b _08017398
    .align 2, 0
_08017378: .4byte 0x081069BC
_0801737C: .4byte 0x081069D4
_08017380:
    ldr r2, _080173B0 @ =0x081069EC
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _0801738A
    ldr r2, _080173B4 @ =0x08106A04
_0801738A:
    movs r0, #2
    str r0, [sp]
    ldr r0, [sp, #4]
    mov r1, sb
    movs r3, #0x3a
    bl func_08017180
_08017398:
    ldr r2, [sp, #8]
    movs r1, #0xff
    lsls r1, r1, #2
    adds r0, r2, r1
    bl GetUpgradeLevel__C4Coop
    cmp r0, #0
    beq _080173B8
    cmp r0, #1
    beq _080173DC
    b _080173F4
    .align 2, 0
_080173B0: .4byte 0x081069EC
_080173B4: .4byte 0x08106A04
_080173B8:
    ldr r2, _080173D4 @ =0x08106A1C
    ldr r0, [sp, #0xc]
    cmp r0, #0
    beq _080173C2
    ldr r2, _080173D8 @ =0x08106A34
_080173C2:
    movs r0, #0x34
    str r0, [sp]
    ldr r0, [sp, #4]
    mov r1, sb
    movs r3, #0xe
    bl func_08017180
    b _080173F4
    .align 2, 0
_080173D4: .4byte 0x08106A1C
_080173D8: .4byte 0x08106A34
_080173DC:
    ldr r2, _08017404 @ =0x08106A4C
    ldr r1, [sp, #0xc]
    cmp r1, #0
    beq _080173E6
    ldr r2, _08017408 @ =0x08106A64
_080173E6:
    movs r0, #0x34
    str r0, [sp]
    ldr r0, [sp, #4]
    mov r1, sb
    movs r3, #0xe
    bl func_08017180
_080173F4:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08017404: .4byte 0x08106A4C
_08017408: .4byte 0x08106A64

    thumb_func_start func_0801740C
func_0801740C: @ 0x0801740C
    push {lr}
    ldr r0, [r0]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x1a
    subs r0, #0x1b
    cmp r0, #0xb
    bhi _08017458
    lsls r0, r0, #2
    ldr r1, _08017424 @ =_08017428
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08017424: .4byte _08017428
_08017428: @ jump table
    .4byte _08017458 @ case 0
    .4byte _0801745C @ case 1
    .4byte _08017460 @ case 2
    .4byte _08017464 @ case 3
    .4byte _08017458 @ case 4
    .4byte _0801745C @ case 5
    .4byte _08017460 @ case 6
    .4byte _08017464 @ case 7
    .4byte _08017458 @ case 8
    .4byte _0801745C @ case 9
    .4byte _08017460 @ case 10
    .4byte _08017464 @ case 11
_08017458:
    movs r0, #0
    b _08017466
_0801745C:
    movs r0, #1
    b _08017466
_08017460:
    movs r0, #2
    b _08017466
_08017464:
    movs r0, #3
_08017466:
    pop {r1}
    bx r1
    .align 2, 0
_0801746C:
    .byte 0x00, 0xB5, 0x00, 0x68
    .byte 0x00, 0x06, 0x80, 0x0E, 0x1B, 0x38, 0x0B, 0x28, 0x1E, 0xD8, 0x80, 0x00, 0x01, 0x49, 0x40, 0x18
    .byte 0x00, 0x68, 0x87, 0x46, 0x88, 0x74, 0x01, 0x08, 0xB8, 0x74, 0x01, 0x08, 0xB8, 0x74, 0x01, 0x08
    .byte 0xB8, 0x74, 0x01, 0x08, 0xB8, 0x74, 0x01, 0x08, 0xBC, 0x74, 0x01, 0x08, 0xBC, 0x74, 0x01, 0x08
    .byte 0xBC, 0x74, 0x01, 0x08, 0xBC, 0x74, 0x01, 0x08, 0xC0, 0x74, 0x01, 0x08, 0xC0, 0x74, 0x01, 0x08
    .byte 0xC0, 0x74, 0x01, 0x08, 0xC0, 0x74, 0x01, 0x08, 0x00, 0x20, 0x02, 0xE0, 0x01, 0x20, 0x00, 0xE0
    .byte 0x02, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_080174C8
func_080174C8: @ 0x080174C8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    mov sb, r0
    adds r6, r1, #0
    adds r7, r2, #0
    mov sl, r3
    add r0, sp, #0x34
    ldr r1, [sp, #0x38]
    mov r8, r1
    ldrb r4, [r0]
    mov r0, sp
    adds r1, r6, #0
    bl func_080A1CBC
    mov r5, sp
    movs r2, #0
    cmp r4, #0
    beq _08017508
    ldr r0, [sp]
    cmp r0, #0x13
    beq _08017500
    cmp r0, #0x14
    beq _08017504
    b _080175A0
_08017500:
    movs r2, #2
    b _08017514
_08017504:
    movs r2, #7
    b _08017514
_08017508:
    ldr r0, [sp]
    cmp r0, #0x12
    beq _08017514
    cmp r0, #0x15
    bne _080175A0
    movs r2, #1
_08017514:
    movs r0, #0
    mov r1, r8
    strb r0, [r1, #0x10]
    ldr r0, [sp, #0x30]
    subs r2, r0, r2
    cmp r2, #0
    ble _080175A0
    ldr r0, [r5]
    cmp r0, #0x12
    beq _08017542
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_080A1FC4
    ldr r0, [r5]
    cmp r0, #0x12
    beq _08017542
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_080A1EF4
    cmp r0, #0
    bne _080175A0
_08017542:
    adds r0, r6, #0
    adds r1, r7, #0
    mov r2, sl
    bl func_080A1C94
    movs r0, #1
    mov r1, r8
    strb r0, [r1]
    movs r1, #8
    ldrsh r0, [r5, r1]
    mov r1, r8
    str r0, [r1, #8]
    movs r1, #0xa
    ldrsh r0, [r5, r1]
    mov r1, r8
    str r0, [r1, #0xc]
    ldr r0, [r5]
    cmp r0, #0x13
    beq _08017592
    cmp r0, #0x13
    bgt _08017572
    cmp r0, #0x12
    beq _08017586
    b _0801759C
_08017572:
    cmp r0, #0x14
    beq _08017596
    cmp r0, #0x15
    bne _0801759C
    mov r0, sb
    movs r1, #6
    bl method_08009B68__4FarmUi
    movs r0, #7
    b _08017598
_08017586:
    mov r0, sb
    movs r1, #1
    bl method_08009B68__4FarmUi
    movs r0, #4
    b _08017598
_08017592:
    movs r0, #6
    b _08017598
_08017596:
    movs r0, #9
_08017598:
    mov r1, r8
    str r0, [r1, #4]
_0801759C:
    movs r0, #1
    b _080175A2
_080175A0:
    movs r0, #0
_080175A2:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080175B4
func_080175B4: @ 0x080175B4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x30
    adds r7, r0, #0
    str r1, [sp, #0x18]
    mov sl, r2
    str r3, [sp, #0x1c]
    add r0, sp, #0x50
    ldrb r0, [r0]
    str r0, [sp, #0x20]
    ldr r0, _08017834 @ =vtable_unk_080E6038
    str r0, [r7]
    ldr r1, _08017838 @ =vtable_unk_080E5EC4
    adds r0, r7, #0
    stm r0!, {r1}
    ldr r2, [sp, #0x1c]
    ldr r1, [r2]
    movs r3, #0
    str r3, [r2]
    str r1, [sp, #4]
    add r1, sp, #4
    bl func_080AC674
    ldr r0, _0801783C @ =0x00001038
    adds r0, r0, r7
    mov r8, r0
    ldr r1, [sp, #0x18]
    str r1, [r0]
    ldr r2, _08017840 @ =0x0000103C
    adds r0, r7, r2
    movs r3, #0
    strb r3, [r0]
    movs r0, #0x82
    lsls r0, r0, #5
    adds r4, r7, r0
    mov r2, r8
    ldr r1, [r2]
    adds r0, r1, #0
    adds r0, #0x10
    str r0, [r4]
    strb r3, [r4, #4]
    ldr r3, _08017844 @ =0x00001048
    adds r3, r3, r7
    mov sb, r3
    ldr r1, [r1, #0x10]
    lsls r1, r1, #0xb
    lsrs r1, r1, #0x1b
    adds r0, r7, #0
    bl func_0801A8C0
    mov r1, sb
    str r0, [r1]
    ldr r0, [r4]
    ldr r4, [r0]
    lsls r5, r4, #0xb
    lsrs r5, r5, #0x1b
    lsls r4, r4, #5
    lsrs r4, r4, #0x1a
    mov r2, r8
    ldr r0, [r2]
    adds r0, #0x10
    bl func_0800E324
    adds r2, r0, #0
    mov r0, sb
    ldr r3, [r0]
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_080A4650
    ldr r2, _08017848 @ =0x0000104C
    adds r1, r7, r2
    strb r0, [r1]
    ldr r3, _0801784C @ =0x00001050
    adds r4, r7, r3
    movs r0, #0xb0
    lsls r0, r0, #8
    bl __builtin_vec_new
    str r0, [r4]
    ldr r1, _08017850 @ =0x00001054
    adds r0, r7, r1
    mov r2, sl
    str r2, [r0]
    ldr r3, _08017854 @ =0x00001058
    adds r0, r7, r3
    movs r1, #0
    str r1, [r0]
    ldr r2, _08017858 @ =0x0000105C
    adds r0, r7, r2
    str r1, [r0]
    adds r3, #0xc
    adds r0, r7, r3
    str r1, [r0]
    ldr r1, _0801785C @ =0x00001068
    adds r0, r7, r1
    movs r2, #0
    str r2, [r0]
    adds r3, #8
    adds r1, r7, r3
    movs r0, #1
    add r2, sp, #8
    mov r8, r2
    movs r3, #0
    movs r2, #1
    rsbs r2, r2, #0
_0801768E:
    stm r1!, {r3}
    subs r0, #1
    cmp r0, r2
    bne _0801768E
    ldr r3, _08017860 @ =0x00001074
    adds r1, r7, r3
    movs r0, #1
    ldr r2, _08017864 @ =0x0000107C
    adds r2, r2, r7
    mov sb, r2
    movs r3, #0
    movs r2, #1
    rsbs r2, r2, #0
_080176A8:
    stm r1!, {r3}
    subs r0, #1
    cmp r0, r2
    bne _080176A8
    ldr r3, _08017864 @ =0x0000107C
    adds r1, r7, r3
    movs r0, #0
    str r0, [r1]
    movs r0, #0x84
    lsls r0, r0, #5
    adds r2, r7, r0
    movs r3, #3
    movs r6, #4
    rsbs r6, r6, #0
    movs r5, #0
    movs r4, #1
    rsbs r4, r4, #0
_080176CA:
    ldrb r1, [r2, #1]
    adds r0, r6, #0
    ands r0, r1
    strb r0, [r2, #1]
    str r5, [r2, #8]
    adds r2, #0xc
    subs r3, #1
    cmp r3, r4
    bne _080176CA
    ldr r2, _08017868 @ =0x000010B0
    adds r1, r7, r2
    movs r0, #5
    movs r3, #0
    movs r2, #1
    rsbs r2, r2, #0
_080176E8:
    stm r1!, {r3}
    subs r0, #1
    cmp r0, r2
    bne _080176E8
    ldr r3, _0801786C @ =0x000010C8
    adds r1, r7, r3
    movs r0, #0
    strb r0, [r1]
    ldr r4, [r7, #4]
    ldr r0, _0801783C @ =0x00001038
    adds r6, r7, r0
    ldr r1, [r6]
    ldr r2, _08017870 @ =0x00001BD8
    adds r1, r1, r2
    mov r0, r8
    bl func_0800E924
    ldr r3, _08017844 @ =0x00001048
    adds r0, r7, r3
    ldr r2, [r0]
    ldr r1, _08017848 @ =0x0000104C
    adds r0, r7, r1
    ldrb r3, [r0]
    movs r0, #0x1e
    subs r0, r0, r3
    str r0, [sp]
    adds r0, r4, #0
    mov r1, r8
    bl func_080A56DC
    ldr r0, [r7, #4]
    ldr r0, [r0]
    cmp r0, #2
    beq _0801774E
    ldr r2, _0801784C @ =0x00001050
    adds r0, r7, r2
    ldr r5, [r0]
    ldr r0, [r6]
    adds r4, r0, #0
    adds r4, #0x14
    adds r0, #0x10
    bl func_0800E324
    movs r2, #0
    cmp r0, #3
    bne _08017746
    movs r2, #1
_08017746:
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_080171F8
_0801774E:
    ldr r3, [sp, #0x20]
    cmp r3, #0
    beq _0801777E
    ldr r1, _0801783C @ =0x00001038
    adds r0, r7, r1
    ldr r0, [r0]
    ldr r2, _08017874 @ =0x0000214C
    adds r0, r0, r2
    bl func_0809C5F4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08017778
    ldr r3, _08017850 @ =0x00001054
    adds r0, r7, r3
    ldr r0, [r0]
    bl func_080167CC
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0801777E
_08017778:
    adds r0, r7, #0
    bl func_0801DB58
_0801777E:
    movs r0, #0xa0
    bl __builtin_new
    adds r1, r7, #0
    bl func_0803AB30
    ldr r1, _08017878 @ =0x00001024
    adds r5, r7, r1
    adds r4, r0, #0
    ldr r0, [r5]
    cmp r4, r0
    beq _080177A0
    cmp r0, #0
    beq _080177A0
    movs r1, #3
    bl func_0803AC78
_080177A0:
    str r4, [r5]
    ldr r2, _0801787C @ =0x00001028
    adds r4, r7, r2
    movs r5, #0
    ldr r0, [r4]
    cmp r5, r0
    beq _080177B8
    cmp r0, #0
    beq _080177B8
    movs r1, #3
    bl func_080AB2E4
_080177B8:
    str r5, [r4]
    movs r0, #4
    bl __builtin_new
    ldr r1, [r7, #4]
    ldr r2, [r1, #4]
    adds r1, r7, #0
    bl func_080AAFC8
    ldr r3, _0801787C @ =0x00001028
    adds r5, r7, r3
    adds r4, r0, #0
    ldr r0, [r5]
    cmp r4, r0
    beq _080177E0
    cmp r0, #0
    beq _080177E0
    movs r1, #3
    bl func_080AB2E4
_080177E0:
    str r4, [r5]
    movs r4, #0
_080177E4:
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_0801A8E0
    adds r4, #1
    cmp r4, #0x63
    bls _080177E4
    mov r4, sb
    movs r5, #0
    ldr r0, [r4]
    cmp r5, r0
    beq _08017806
    cmp r0, #0
    beq _08017806
    movs r1, #3
    bl func_0803B0A8
_08017806:
    str r5, [r4]
    ldr r0, [r7, #4]
    ldr r0, [r0, #4]
    bl func_080A4698
    adds r0, #0x24
    ldrb r0, [r0]
    cmp r0, #0
    bne _080178AE
    ldr r0, [r7, #4]
    ldr r1, [r0]
    ldr r2, _0801783C @ =0x00001038
    adds r0, r7, r2
    ldr r0, [r0]
    adds r0, #8
    cmp r1, #0x2e
    beq _08017888
    cmp r1, #0x2e
    ble _08017880
    cmp r1, #0x2f
    beq _0801788C
    b _08017890
    .align 2, 0
_08017834: .4byte vtable_unk_080E6038
_08017838: .4byte vtable_unk_080E5EC4
_0801783C: .4byte 0x00001038
_08017840: .4byte 0x0000103C
_08017844: .4byte 0x00001048
_08017848: .4byte 0x0000104C
_0801784C: .4byte 0x00001050
_08017850: .4byte 0x00001054
_08017854: .4byte 0x00001058
_08017858: .4byte 0x0000105C
_0801785C: .4byte 0x00001068
_08017860: .4byte 0x00001074
_08017864: .4byte 0x0000107C
_08017868: .4byte 0x000010B0
_0801786C: .4byte 0x000010C8
_08017870: .4byte 0x00001BD8
_08017874: .4byte 0x0000214C
_08017878: .4byte 0x00001024
_0801787C: .4byte 0x00001028
_08017880:
    cmp r1, #0x2c
    blt _08017890
    movs r0, #0
    b _08017892
_08017888:
    movs r0, #1
    b _08017892
_0801788C:
    movs r0, #2
    b _08017892
_08017890:
    ldr r0, [r0]
_08017892:
    cmp r0, #1
    beq _0801789C
    cmp r0, #2
    beq _080178A6
    b _080178AE
_0801789C:
    adds r0, r7, #0
    movs r1, #1
    bl func_0801FAC8
    b _080178AE
_080178A6:
    adds r0, r7, #0
    movs r1, #0
    bl func_0801FAC8
_080178AE:
    adds r0, r7, #0
    bl func_0801F14C
    adds r0, r7, #0
    bl func_0801F3E4
    adds r0, r7, #0
    bl func_0801F2DC
    adds r0, r7, #0
    bl func_0801F614
    adds r0, r7, #0
    bl func_0801F77C
    ldr r0, _080179B4 @ =gUnk_0300040C
    ldr r0, [r0]
    movs r3, #0
    str r3, [sp, #0x24]
    ldr r1, _080179B8 @ =0x00000DE4
    adds r1, r7, r1
    str r1, [sp, #0x28]
    ldr r2, _080179BC @ =0x000004DC
    adds r6, r0, r2
_080178DE:
    ldrb r0, [r6]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    mov sl, r0
    cmp r0, #1
    bne _08017964
    ldrh r0, [r6, #2]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    ldr r1, [r7, #4]
    ldr r1, [r1]
    cmp r0, r1
    bne _08017964
    ldr r3, _080179C0 @ =0x000010B0
    adds r3, r3, r7
    mov r8, r3
    ldr r1, [sp, #0x24]
    lsls r0, r1, #2
    add r8, r0
    movs r0, #0x4c
    bl __builtin_new
    adds r4, r0, #0
    ldrh r2, [r6, #8]
    mov sb, r2
    adds r1, r7, #0
    movs r2, #2
    movs r3, #0x1b
    bl func_080A4740
    ldr r0, _080179C4 @ =vtable_unk_080E602C
    str r0, [r4, #0x24]
    adds r3, r4, #0
    adds r3, #0x28
    str r3, [sp, #0x2c]
    ldr r0, [sp, #0x28]
    ldr r5, [r0]
    add r0, sp, #0x10
    ldr r3, [r5, #0xc]
    ldr r1, [sp, #0x28]
    mov r2, sb
    bl _call_via_r3
    ldr r0, [sp, #0x10]
    ldrh r2, [r0]
    ldr r0, [sp, #0x2c]
    ldr r3, [r5, #0x10]
    ldr r1, [sp, #0x28]
    bl _call_via_r3
    adds r0, r4, #0
    adds r0, #0x48
    mov r1, sl
    strb r1, [r0]
    mov r5, r8
    ldr r1, [r5]
    cmp r4, r1
    beq _08017962
    cmp r1, #0
    beq _08017962
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08017962:
    str r4, [r5]
_08017964:
    adds r6, #0xc
    ldr r2, [sp, #0x24]
    adds r2, #1
    str r2, [sp, #0x24]
    cmp r2, #6
    blo _080178DE
    ldr r3, [sp, #0x18]
    ldr r1, _080179C8 @ =0x000034C4
    adds r0, r3, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq _08017988
    adds r0, r7, #0
    bl func_0801D8CC
    adds r0, r7, #0
    bl func_0801D948
_08017988:
    ldr r2, [sp, #0x1c]
    ldr r1, [r2]
    cmp r1, #0
    beq _080179A0
    adds r0, r1, #0
    adds r0, #0x90
    ldr r0, [r0]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080179A0:
    adds r0, r7, #0
    add sp, #0x30
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_080179B4: .4byte gUnk_0300040C
_080179B8: .4byte 0x00000DE4
_080179BC: .4byte 0x000004DC
_080179C0: .4byte 0x000010B0
_080179C4: .4byte vtable_unk_080E602C
_080179C8: .4byte 0x000034C4

    thumb_func_start func_080179CC
func_080179CC: @ 0x080179CC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    mov r8, r1
    ldr r0, _08017A50 @ =vtable_unk_080E5EC4
    str r0, [r6]
    ldr r1, _08017A54 @ =0x000010C8
    adds r0, r6, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq _08017A86
    ldr r0, _08017A58 @ =0x00001038
    adds r4, r6, r0
    ldr r0, [r4]
    ldr r1, _08017A5C @ =0x00001BD8
    adds r0, r0, r1
    bl func_0800ED2C
    ldr r0, [r4]
    ldr r1, _08017A60 @ =0x00001CCC
    adds r7, r0, r1
    ldr r1, _08017A64 @ =0x000010C9
    adds r0, r6, r1
    ldrb r0, [r0]
    cmp r0, #0
    bne _08017A86
    adds r0, r6, #0
    bl func_0801DB44
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08017A24
_08017A12:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08017A70
    adds r4, #4
    cmp r4, r5
    bne _08017A12
_08017A24:
    subs r0, r5, #4
    ldr r0, [r0]
_08017A28:
    movs r1, #0x6d
    bl func_08008B6C
    adds r0, r7, #0
    bl func_080A45A8
    cmp r0, #2
    beq _08017A74
    ldr r1, _08017A58 @ =0x00001038
    adds r0, r6, r1
    ldr r2, [r0]
    ldr r1, _08017A68 @ =0x00001CD4
    adds r0, r2, r1
    ldr r1, _08017A6C @ =0x0000214C
    adds r2, r2, r1
    adds r1, r7, #0
    bl func_080A1484
    b _08017A86
    .align 2, 0
_08017A50: .4byte vtable_unk_080E5EC4
_08017A54: .4byte 0x000010C8
_08017A58: .4byte 0x00001038
_08017A5C: .4byte 0x00001BD8
_08017A60: .4byte 0x00001CCC
_08017A64: .4byte 0x000010C9
_08017A68: .4byte 0x00001CD4
_08017A6C: .4byte 0x0000214C
_08017A70:
    ldr r0, [r4]
    b _08017A28
_08017A74:
    ldr r0, _08017ABC @ =0x0000023B
    movs r1, #0
    str r0, [sp]
    str r1, [sp, #4]
    adds r0, r6, #0
    mov r1, sp
    movs r2, #0
    bl func_0801D9A8
_08017A86:
    ldr r1, _08017AC0 @ =0x00001050
    adds r0, r6, r1
    ldr r0, [r0]
    cmp r0, #0
    beq _08017A94
    bl __builtin_vec_delete
_08017A94:
    ldr r0, _08017AC4 @ =0x000010B0
    adds r5, r6, r0
    adds r7, r6, #4
    cmp r5, #0
    beq _08017ACC
    ldr r1, _08017AC8 @ =0x000010C8
    adds r4, r6, r1
_08017AA2:
    cmp r5, r4
    beq _08017ACC
    subs r4, #4
    ldr r1, [r4]
    cmp r1, #0
    beq _08017AA2
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
    b _08017AA2
    .align 2, 0
_08017ABC: .4byte 0x0000023B
_08017AC0: .4byte 0x00001050
_08017AC4: .4byte 0x000010B0
_08017AC8: .4byte 0x000010C8
_08017ACC:
    movs r1, #0x84
    lsls r1, r1, #5
    adds r0, r6, r1
    cmp r0, #0
    beq _08017AFC
    adds r1, #0x30
    adds r4, r6, r1
    cmp r0, r4
    beq _08017AFC
    movs r0, #0x84
    lsls r0, r0, #5
    adds r5, r6, r0
_08017AE4:
    subs r4, #0xc
    ldr r1, [r4, #8]
    cmp r1, #0
    beq _08017AF8
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08017AF8:
    cmp r5, r4
    bne _08017AE4
_08017AFC:
    ldr r1, _08017BE0 @ =0x0000107C
    adds r4, r6, r1
    ldr r0, [r4]
    cmp r0, #0
    beq _08017B0C
    movs r1, #3
    bl func_0803B0A8
_08017B0C:
    ldr r1, _08017BE4 @ =0x00001074
    adds r0, r6, r1
    cmp r0, #0
    beq _08017B32
    cmp r0, r4
    beq _08017B32
    adds r5, r0, #0
_08017B1A:
    subs r4, #4
    ldr r1, [r4]
    cmp r1, #0
    beq _08017B2E
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08017B2E:
    cmp r5, r4
    bne _08017B1A
_08017B32:
    ldr r1, _08017BE8 @ =0x0000106C
    adds r0, r6, r1
    cmp r0, #0
    beq _08017B5E
    adds r1, #8
    adds r4, r6, r1
    cmp r0, r4
    beq _08017B5E
    ldr r0, _08017BE8 @ =0x0000106C
    adds r5, r6, r0
_08017B46:
    subs r4, #4
    ldr r1, [r4]
    cmp r1, #0
    beq _08017B5A
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08017B5A:
    cmp r5, r4
    bne _08017B46
_08017B5E:
    ldr r1, _08017BEC @ =0x00001068
    adds r0, r6, r1
    ldr r1, [r0]
    cmp r1, #0
    beq _08017B74
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08017B74:
    ldr r1, _08017BF0 @ =0x00001064
    adds r0, r6, r1
    ldr r1, [r0]
    cmp r1, #0
    beq _08017B8A
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08017B8A:
    ldr r1, _08017BF4 @ =0x0000105C
    adds r0, r6, r1
    ldr r1, [r0]
    cmp r1, #0
    beq _08017BA0
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08017BA0:
    ldr r1, _08017BF8 @ =0x00001058
    adds r0, r6, r1
    ldr r1, [r0]
    cmp r1, #0
    beq _08017BB6
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08017BB6:
    adds r0, r7, #0
    movs r1, #2
    bl func_080AC85C
    ldr r0, _08017BFC @ =vtable_unk_080E61A0
    str r0, [r6]
    movs r0, #1
    mov r1, r8
    ands r0, r1
    cmp r0, #0
    beq _08017BD2
    adds r0, r6, #0
    bl __builtin_delete
_08017BD2:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08017BE0: .4byte 0x0000107C
_08017BE4: .4byte 0x00001074
_08017BE8: .4byte 0x0000106C
_08017BEC: .4byte 0x00001068
_08017BF0: .4byte 0x00001064
_08017BF4: .4byte 0x0000105C
_08017BF8: .4byte 0x00001058
_08017BFC: .4byte vtable_unk_080E61A0

    thumb_func_start func_08017C00
func_08017C00: @ 0x08017C00
    push {lr}
    adds r1, r0, #0
    ldr r2, _08017C24 @ =0x0000103C
    adds r0, r1, r2
    ldrb r0, [r0]
    cmp r0, #0
    bne _08017C28
    ldr r0, [r1, #4]
    ldr r0, [r0, #4]
    bl func_080A4698
    adds r0, #0x24
    ldrb r0, [r0]
    cmp r0, #0
    bne _08017C28
    movs r0, #0
    b _08017C2A
    .align 2, 0
_08017C24: .4byte 0x0000103C
_08017C28:
    movs r0, #1
_08017C2A:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08017C30
func_08017C30: @ 0x08017C30
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x3c
    mov r8, r0
    str r1, [sp, #0x28]
    ldr r4, _08017D74 @ =0x00001038
    add r4, r8
    ldr r0, [r4]
    ldr r1, _08017D78 @ =0x00001BD8
    adds r0, r0, r1
    bl func_0800E4FC
    str r0, [sp, #0x2c]
    ldr r1, _08017D7C @ =0x000010C8
    add r1, r8
    ldrb r0, [r1]
    add r2, sp, #0x20
    mov sb, r2
    cmp r0, #0
    bne _08017C60
    b _08017DBE
_08017C60:
    movs r0, #0
    strb r0, [r1]
    mov r3, r8
    ldr r0, [r3]
    ldr r2, [r0, #0x3c]
    mov r0, r8
    movs r1, #0x4b
    bl _call_via_r2
    ldr r0, [r4]
    ldr r1, _08017D78 @ =0x00001BD8
    adds r0, r0, r1
    bl func_0800ED2C
    ldr r0, [r4]
    ldr r2, _08017D80 @ =0x00001CCC
    adds r6, r0, r2
    ldr r0, _08017D84 @ =0x000010C9
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    beq _08017C8E
    b _08017DBE
_08017C8E:
    mov r3, r8
    ldr r0, [r3]
    movs r1, #0xa6
    lsls r1, r1, #1
    adds r0, r0, r1
    ldr r1, [r0]
    mov r0, r8
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _08017CBA
_08017CA8:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08017D9C
    adds r4, #4
    cmp r4, r5
    bne _08017CA8
_08017CBA:
    subs r0, r5, #4
    ldr r0, [r0]
_08017CBE:
    movs r1, #0x6d
    bl func_08008B6C
    adds r0, r6, #0
    bl func_080A45A8
    cmp r0, #2
    beq _08017DA0
    ldr r0, _08017D74 @ =0x00001038
    add r0, r8
    ldr r2, [r0]
    ldr r3, _08017D88 @ =0x00001CD4
    adds r0, r2, r3
    ldr r1, _08017D8C @ =0x0000214C
    adds r2, r2, r1
    adds r1, r6, #0
    bl func_080A1484
    ldrb r0, [r6, #1]
    lsrs r0, r0, #2
    ldrh r2, [r6, #2]
    ldr r3, _08017D90 @ =0x000003FF
    ands r2, r3
    lsls r2, r2, #6
    orrs r2, r0
    ldrb r1, [r6, #3]
    lsrs r1, r1, #2
    ldrh r0, [r6, #4]
    ands r0, r3
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    add r3, sp, #0xc
    adds r1, r3, #0
    strh r2, [r1]
    strh r0, [r3, #2]
    mov r2, r8
    ldr r0, [r2]
    ldr r1, [r0, #0x64]
    mov r0, r8
    bl _call_via_r1
    ldr r5, _08017D94 @ =0x0000102C
    add r5, r8
    adds r6, r0, #0
    ldr r0, [sp, #0xc]
    str r0, [r5, #4]
    movs r4, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08017D36
    cmp r1, #0
    beq _08017D36
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08017D36:
    str r4, [r5]
    movs r4, #0
    strb r4, [r5, #8]
    movs r0, #0x40
    bl __builtin_new
    movs r1, #2
    str r1, [sp]
    movs r1, #3
    str r1, [sp, #4]
    add r1, sp, #8
    strb r4, [r1]
    adds r1, r6, #0
    ldr r2, _08017D98 @ =0x000001A9
    mov r3, r8
    bl func_080A4A00
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _08017D70
    cmp r1, #0
    beq _08017D70
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08017D70:
    str r4, [r5]
    b _08017DBE
    .align 2, 0
_08017D74: .4byte 0x00001038
_08017D78: .4byte 0x00001BD8
_08017D7C: .4byte 0x000010C8
_08017D80: .4byte 0x00001CCC
_08017D84: .4byte 0x000010C9
_08017D88: .4byte 0x00001CD4
_08017D8C: .4byte 0x0000214C
_08017D90: .4byte 0x000003FF
_08017D94: .4byte 0x0000102C
_08017D98: .4byte 0x000001A9
_08017D9C:
    ldr r0, [r4]
    b _08017CBE
_08017DA0:
    mov r3, r8
    ldr r0, [r3]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r0, r0, r1
    add r1, sp, #0x10
    ldr r2, _08017E48 @ =0x0000023B
    movs r3, #0
    str r2, [sp, #0x10]
    str r3, [r1, #4]
    ldr r3, [r0]
    mov r0, r8
    movs r2, #0
    bl _call_via_r3
_08017DBE:
    mov r2, r8
    ldr r0, [r2]
    ldr r2, [r0, #0x40]
    mov r0, r8
    movs r1, #0
    bl _call_via_r2
    adds r6, r0, #0
    mov r3, r8
    ldr r0, [r3, #4]
    adds r1, r0, #0
    adds r1, #0x90
    ldr r1, [r1]
    ldr r1, [r1, #0xc]
    bl _call_via_r1
    mov r1, r8
    ldr r0, [r1, #4]
    ldr r0, [r0, #4]
    bl func_080A4698
    adds r0, #0x24
    ldrb r0, [r0]
    mov sl, r0
    mov r2, r8
    ldr r0, [r2, #4]
    ldr r0, [r0]
    str r0, [sp, #0x30]
    movs r3, #0
    str r3, [sp, #0x34]
    ldr r0, _08017E4C @ =0x0000103C
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    beq _08017E06
    b _08018002
_08017E06:
    ldr r0, _08017E50 @ =0x00001038
    add r0, r8
    ldr r0, [r0]
    ldr r1, _08017E54 @ =0x000034C4
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq _08017E18
    b _08018002
_08017E18:
    mov r2, sl
    cmp r2, #0
    beq _08017E20
    b _08018002
_08017E20:
    ldr r0, [r6, #0x14]
    adds r0, #0x98
    ldr r1, [r0]
    adds r0, r6, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08017E34
    b _08018002
_08017E34:
    movs r5, #0x82
    lsls r5, r5, #5
    add r5, r8
    ldrb r0, [r5, #4]
    adds r0, #1
    cmp r0, #0x19
    bhs _08017E58
    strb r0, [r5, #4]
    movs r0, #0
    b _08017F2E
    .align 2, 0
_08017E48: .4byte 0x0000023B
_08017E4C: .4byte 0x0000103C
_08017E50: .4byte 0x00001038
_08017E54: .4byte 0x000034C4
_08017E58:
    mov r3, sl
    strb r3, [r5, #4]
    ldr r4, [r5]
    ldr r1, [r4]
    lsls r1, r1, #5
    lsrs r1, r1, #0x1a
    adds r1, #1
    movs r2, #0x3f
    ands r2, r1
    lsls r2, r2, #5
    ldrh r3, [r4, #2]
    ldr r7, _08017F80 @ =0xFFFFF81F
    adds r0, r7, #0
    ands r0, r3
    orrs r0, r2
    strh r0, [r4, #2]
    movs r0, #0x3f
    ands r1, r0
    cmp r1, #0x3b
    bls _08017F2C
    ldr r2, [r5]
    ldrh r1, [r2, #2]
    adds r0, r7, #0
    ands r0, r1
    strh r0, [r2, #2]
    ldr r2, [r5]
    ldr r1, [r2]
    lsls r1, r1, #0xb
    lsrs r1, r1, #0x1b
    adds r1, #1
    movs r7, #0x1f
    ands r1, r7
    ldrb r3, [r2, #2]
    movs r4, #0x20
    rsbs r4, r4, #0
    adds r0, r4, #0
    ands r0, r3
    orrs r0, r1
    strb r0, [r2, #2]
    cmp r1, #0x17
    bls _08017F2C
    ldr r2, [r5]
    ldrb r1, [r2, #2]
    adds r0, r4, #0
    ands r0, r1
    strb r0, [r2, #2]
    ldr r4, [r5]
    ldrb r3, [r4, #1]
    lsls r0, r3, #0x19
    lsrs r0, r0, #0x1b
    adds r0, #1
    cmp r0, #0x1e
    bne _08017ED8
    lsls r0, r3, #0x1e
    lsrs r0, r0, #0x1e
    movs r1, #4
    rsbs r1, r1, #0
    adds r0, #1
    movs r2, #3
    ands r0, r2
    ands r1, r3
    orrs r1, r0
    strb r1, [r4, #1]
    movs r0, #0
_08017ED8:
    ands r0, r7
    lsls r2, r0, #2
    ldrb r1, [r4, #1]
    movs r0, #0x7d
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r2
    strb r0, [r4, #1]
    ldr r2, [r5]
    movs r3, #0
    ldrb r1, [r2, #1]
    movs r0, #0x7f
    ands r0, r1
    cmp r0, #0
    bne _08017EF8
    movs r3, #1
_08017EF8:
    cmp r3, #0
    beq _08017F2C
    ldrb r5, [r2]
    lsls r0, r5, #0x1d
    lsrs r0, r0, #0x1d
    adds r3, r0, #1
    cmp r3, #6
    bls _08017F1C
    movs r3, #0
    lsrs r1, r5, #3
    cmp r1, #0x1c
    bhi _08017F1C
    adds r1, #1
    lsls r1, r1, #3
    movs r0, #7
    ands r0, r5
    orrs r0, r1
    strb r0, [r2]
_08017F1C:
    movs r0, #7
    ands r3, r0
    ldrb r1, [r2]
    movs r0, #8
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
_08017F2C:
    movs r0, #1
_08017F2E:
    cmp r0, #0
    beq _08018002
    movs r0, #0x82
    lsls r0, r0, #5
    add r0, r8
    ldr r0, [r0]
    ldr r0, [r0]
    lsls r1, r0, #0xb
    lsrs r5, r1, #0x1b
    lsls r0, r0, #5
    lsrs r4, r0, #0x1a
    cmp r5, #6
    bne _08017F88
    cmp r4, #0
    bne _08017F88
    ldr r0, [r6, #0x14]
    ldr r3, [r0, #0x64]
    adds r0, r6, #0
    movs r1, #0
    movs r2, #0xa
    bl _call_via_r3
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08017FFE
    mov r0, r8
    ldr r2, [r0]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    add r1, sp, #0x18
    ldr r0, _08017F84 @ =0x000003D5
    str r0, [sp, #0x18]
    str r4, [r1, #4]
    ldr r3, [r2]
    mov r0, r8
    movs r2, #2
    bl _call_via_r3
    b _08017FFE
    .align 2, 0
_08017F80: .4byte 0xFFFFF81F
_08017F84: .4byte 0x000003D5
_08017F88:
    mov r0, r8
    adds r1, r5, #0
    adds r2, r4, #0
    movs r3, #0
    bl func_0801A13C
    cmp r5, #0x14
    bne _08017FB8
    cmp r4, #0
    bne _08017FB8
    ldr r0, _08017FB4 @ =0x00001054
    add r0, r8
    ldr r0, [r0]
    movs r1, #0
    movs r2, #0x9e
    bl func_08012464
    mov r0, r8
    bl func_0801DB58
    b _08017FFE
    .align 2, 0
_08017FB4: .4byte 0x00001054
_08017FB8:
    cmp r5, #0
    bne _08017FD0
    cmp r4, #0
    bne _08017FD0
    ldr r0, [r6, #0x14]
    ldr r3, [r0, #0x64]
    adds r0, r6, #0
    movs r1, #0
    movs r2, #3
    bl _call_via_r3
    b _08017FFE
_08017FD0:
    cmp r5, #2
    bne _08017FE8
    cmp r4, #0
    bne _08017FE8
    ldr r0, [r6, #0x14]
    ldr r3, [r0, #0x64]
    adds r0, r6, #0
    movs r1, #0
    movs r2, #4
    bl _call_via_r3
    b _08017FFE
_08017FE8:
    cmp r5, #4
    bne _08017FFE
    cmp r4, #0
    bne _08017FFE
    ldr r0, [r6, #0x14]
    ldr r3, [r0, #0x64]
    adds r0, r6, #0
    movs r1, #0
    movs r2, #5
    bl _call_via_r3
_08017FFE:
    movs r2, #1
    str r2, [sp, #0x34]
_08018002:
    mov r5, r8
    adds r5, #8
    movs r7, #0xcc
    lsls r7, r7, #1
    add r7, r8
    ldr r3, [sp, #0x28]
    ldr r0, [r3]
    str r0, [sp, #0x20]
    add r0, sp, #0x34
    ldrb r1, [r0]
    mov r0, sb
    strb r1, [r0, #4]
    cmp r5, r7
    beq _08018064
_0801801E:
    ldr r4, [r5]
    adds r6, r4, #0
    cmp r4, #0
    beq _0801805E
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08018044
    ldr r0, [r4, #0x14]
    ldr r2, [r0, #0x2c]
    adds r0, r4, #0
    mov r1, sb
    bl _call_via_r2
    b _0801805E
_08018044:
    mov r1, sl
    cmp r1, #0
    beq _08018052
    ldr r2, [sp, #0x30]
    ldrh r4, [r4, #4]
    cmp r2, r4
    bne _0801805E
_08018052:
    ldr r0, [r6, #0x14]
    ldr r2, [r0, #0x18]
    adds r0, r6, #0
    mov r1, sb
    bl _call_via_r2
_0801805E:
    adds r5, #4
    cmp r5, r7
    bne _0801801E
_08018064:
    ldr r0, _080180AC @ =0x0000107C
    add r0, r8
    ldr r0, [r0]
    cmp r0, #0
    beq _08018072
    bl func_0803B2A8
_08018072:
    ldr r0, _080180B0 @ =0x00001028
    add r0, r8
    ldr r0, [r0]
    cmp r0, #0
    beq _08018080
    bl func_080AB380
_08018080:
    movs r6, #0
    ldr r5, _080180B4 @ =0x0000106C
    add r5, r8
_08018086:
    ldr r4, [r5]
    cmp r4, #0
    beq _080180BC
    adds r1, r4, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #0
    bne _080180B8
    adds r0, r4, #0
    adds r0, #0x28
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _080180BC
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #1
    b _080180BA
    .align 2, 0
_080180AC: .4byte 0x0000107C
_080180B0: .4byte 0x00001028
_080180B4: .4byte 0x0000106C
_080180B8:
    movs r0, #0
_080180BA:
    strb r0, [r1]
_080180BC:
    adds r5, #4
    adds r6, #1
    cmp r6, #1
    bls _08018086
    movs r6, #0
    ldr r5, _080180F0 @ =0x00001074
    add r5, r8
_080180CA:
    ldr r4, [r5]
    cmp r4, #0
    beq _080180F8
    adds r1, r4, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #0
    bne _080180F4
    adds r0, r4, #0
    adds r0, #0x28
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _080180F8
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #1
    b _080180F6
    .align 2, 0
_080180F0: .4byte 0x00001074
_080180F4:
    movs r0, #0
_080180F6:
    strb r0, [r1]
_080180F8:
    adds r5, #4
    adds r6, #1
    cmp r6, #1
    bls _080180CA
    movs r3, #0
    mov sl, r3
    ldr r0, _08018130 @ =0x00001088
    add r0, r8
    mov sb, r0
    movs r6, #0x84
    lsls r6, r6, #5
    add r6, r8
_08018110:
    ldrb r1, [r6, #1]
    lsls r0, r1, #0x1e
    lsrs r7, r0, #0x1e
    cmp r7, #1
    beq _0801811C
    b _0801823A
_0801811C:
    lsls r0, r1, #0x1c
    lsrs r5, r0, #0x1e
    cmp r5, #1
    beq _080181A4
    cmp r5, #1
    bgt _08018134
    cmp r5, #0
    beq _0801813A
    b _0801823A
    .align 2, 0
_08018130: .4byte 0x00001088
_08018134:
    cmp r5, #2
    beq _080181E0
    b _0801823A
_0801813A:
    ldr r4, [r6, #8]
    adds r1, r4, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #0
    bne _08018160
    adds r0, r4, #0
    adds r0, #0x28
    bl func_0805E8F0
    adds r1, r0, #0
    lsls r0, r1, #0x1e
    cmp r0, #0
    bge _0801815C
    adds r0, r4, #0
    adds r0, #0x3c
    strb r7, [r0]
_0801815C:
    adds r0, r1, #0
    b _08018164
_08018160:
    strb r5, [r1]
    movs r0, #2
_08018164:
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge _0801823A
    ldrb r1, [r6, #1]
    movs r2, #0xd
    rsbs r2, r2, #0
    adds r0, r2, #0
    ands r1, r0
    movs r0, #4
    orrs r1, r0
    strb r1, [r6, #1]
    ldr r4, [r6, #8]
    adds r0, r4, #0
    adds r0, #0x28
    ldr r1, _080181A0 @ =0x0000086B
    bl func_0805E860
    adds r0, r4, #0
    adds r0, #0x3c
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
    movs r0, #0x78
    strb r0, [r6]
    b _0801823A
    .align 2, 0
_080181A0: .4byte 0x0000086B
_080181A4:
    ldrb r0, [r6]
    subs r0, #1
    strb r0, [r6]
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
    cmp r7, #0
    bne _0801823A
    movs r3, #0xd
    rsbs r3, r3, #0
    adds r0, r3, #0
    ands r0, r1
    movs r1, #8
    orrs r0, r1
    strb r0, [r6, #1]
    ldr r4, [r6, #8]
    adds r0, r4, #0
    adds r0, #0x28
    ldr r1, _080181DC @ =0x00000873
    bl func_0805E860
    adds r0, r4, #0
    adds r0, #0x3c
    strb r5, [r0]
    adds r0, #2
    strb r7, [r0]
    adds r0, #1
    strb r5, [r0]
    b _0801823A
    .align 2, 0
_080181DC: .4byte 0x00000873
_080181E0:
    ldr r4, [r6, #8]
    adds r1, r4, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #0
    bne _08018206
    adds r0, r4, #0
    adds r0, #0x28
    bl func_0805E8F0
    adds r1, r0, #0
    lsls r0, r1, #0x1e
    cmp r0, #0
    bge _08018202
    adds r0, r4, #0
    adds r0, #0x3c
    strb r7, [r0]
_08018202:
    adds r0, r1, #0
    b _0801820C
_08018206:
    movs r0, #0
    strb r0, [r1]
    movs r0, #2
_0801820C:
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge _0801823A
    ldrb r0, [r6, #1]
    movs r2, #4
    rsbs r2, r2, #0
    adds r1, r2, #0
    ands r0, r1
    strb r0, [r6, #1]
    mov r4, sb
    movs r5, #0
    ldr r1, [r6, #8]
    cmp r5, r1
    beq _08018238
    cmp r1, #0
    beq _08018238
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08018238:
    str r5, [r4]
_0801823A:
    movs r3, #0xc
    add sb, r3
    adds r6, #0xc
    movs r0, #1
    add sl, r0
    mov r1, sl
    cmp r1, #3
    bhi _0801824C
    b _08018110
_0801824C:
    ldr r0, _080182B4 @ =0x0000103C
    add r0, r8
    ldrb r0, [r0]
    cmp r0, #0
    bne _08018268
    mov r3, r8
    ldr r2, [r3, #8]
    ldr r0, [r3, #4]
    movs r3, #0xa
    ldrsh r1, [r2, r3]
    movs r3, #0xe
    ldrsh r2, [r2, r3]
    bl func_080A5960
_08018268:
    ldr r4, _080182B8 @ =0x00001038
    add r4, r8
    ldr r0, [r4]
    ldr r1, _080182BC @ =0x00001BD8
    adds r0, r0, r1
    bl func_0800E4FC
    ldr r2, [sp, #0x2c]
    cmp r0, r2
    beq _080182A2
    ldr r0, _080182C0 @ =0x00001054
    add r0, r8
    ldr r0, [r0]
    bl func_080167CC
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _080182A2
    ldr r0, [r4]
    ldr r3, _080182C4 @ =0x0000214C
    adds r0, r0, r3
    bl func_0809C5F4
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _080182A2
    mov r0, r8
    bl func_0801DB58
_080182A2:
    add sp, #0x3c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080182B4: .4byte 0x0000103C
_080182B8: .4byte 0x00001038
_080182BC: .4byte 0x00001BD8
_080182C0: .4byte 0x00001054
_080182C4: .4byte 0x0000214C

    thumb_func_start func_080182C8
func_080182C8: @ 0x080182C8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    ldr r4, _080184E4 @ =0xFFFFF320
    add sp, r4
    mov sb, r0
    ldr r0, _080184E8 @ =0x00000C6C
    add r0, sp
    str r1, [r0]
    movs r0, #0
    ldr r1, _080184EC @ =0x00000C58
    add r1, sp
    str r0, [r1]
    movs r1, #0xce
    lsls r1, r1, #1
    add r1, sb
    movs r2, #0x20
    ldr r0, _080184EC @ =0x00000C58
    add r0, sp
    ldr r0, [r0]
_080182F4:
    strb r0, [r1]
    subs r2, #1
    adds r1, #1
    cmp r2, #0
    bgt _080182F4
    ldr r0, _080184F0 @ =0x00001024
    add r0, sb
    ldr r2, [r0]
    ldr r3, _080184E8 @ =0x00000C6C
    add r3, sp
    ldr r3, [r3]
    ldr r1, [r3]
    adds r4, r2, #0
    adds r4, #0x9c
    ldrb r0, [r4]
    cmp r0, #0
    beq _08018320
    adds r0, r2, #0
    bl func_0803ACD8
    movs r0, #0
    strb r0, [r4]
_08018320:
    ldr r0, _080184F4 @ =0x0000107C
    add r0, sb
    ldr r2, [r0]
    cmp r2, #0
    beq _08018346
    ldr r4, _080184E8 @ =0x00000C6C
    add r4, sp
    ldr r4, [r4]
    ldr r1, [r4]
    adds r4, r2, #0
    adds r4, #0xe5
    ldrb r0, [r4]
    cmp r0, #0
    beq _08018346
    adds r0, r2, #0
    bl func_0803B128
    movs r0, #0
    strb r0, [r4]
_08018346:
    mov r5, sb
    ldr r0, [r5, #4]
    adds r1, r0, #0
    adds r1, #0x90
    ldr r4, [r1]
    ldr r6, _080184E8 @ =0x00000C6C
    add r6, sp
    ldr r6, [r6]
    ldr r1, [r6]
    ldr r2, [r6, #4]
    ldr r3, [r6, #0xc]
    ldr r4, [r4, #0x10]
    bl _call_via_r4
    movs r4, #0xce
    lsls r4, r4, #1
    add r4, sb
    movs r2, #0xdb
    lsls r2, r2, #4
    add r2, sb
    ldrb r0, [r2]
    ldr r1, _080184F8 @ =0x00000DB1
    add r1, sb
    strb r0, [r1]
    movs r3, #0
    ldr r6, _080184FC @ =0x00000CBC
    add r6, sp
    str r2, [r6]
    movs r0, #0xcc
    lsls r0, r0, #4
    add r0, sp
    str r1, [r0]
    ldrb r1, [r1]
    cmp r3, r1
    bhs _080183BE
    movs r5, #0xde
    lsls r5, r5, #1
    add r5, sb
    ldr r2, _08018500 @ =0x00000D1D
    add r2, sb
_08018396:
    ldrb r0, [r2]
    lsrs r0, r0, #7
    cmp r0, #0
    bne _080183B0
    movs r0, #0
    ldrsb r0, [r2, r0]
    lsls r1, r0, #5
    adds r1, r1, r0
    lsls r1, r1, #2
    adds r1, r5, r1
    adds r1, #0x80
    movs r0, #0xff
    strb r0, [r1]
_080183B0:
    adds r2, #0xc
    adds r3, #1
    ldr r6, _08018504 @ =0x00000C15
    adds r0, r4, r6
    ldrb r0, [r0]
    cmp r3, r0
    blo _08018396
_080183BE:
    ldr r1, _08018508 @ =0x00000C14
    adds r0, r4, r1
    movs r2, #0
    strb r2, [r0]
    ldr r3, _080184E8 @ =0x00000C6C
    add r3, sp
    ldr r3, [r3]
    ldr r0, [r3, #8]
    ldrb r1, [r0]
    movs r0, #0x7c
    subs r0, r0, r1
    movs r4, #0xc7
    lsls r4, r4, #4
    add r4, sp
    str r0, [r4]
    cmp r0, #0x80
    bls _080183E4
    bl _08019870
_080183E4:
    add r0, sp, #0x14
    strb r2, [r0]
    add r0, sp, #0x18
    movs r1, #3
    mov r5, sb
    ldr r4, [r5]
    mov r6, sb
    adds r6, #8
    ldr r2, _0801850C @ =0x00000C5C
    add r2, sp
    movs r3, #0xcb
    lsls r3, r3, #4
    add r3, sp
    str r2, [r3]
    movs r5, #0xcc
    lsls r5, r5, #1
    add r5, sb
    ldr r2, _08018510 @ =0x00000CC4
    add r2, sp
    str r5, [r2]
    ldr r3, _08018514 @ =0x00000828
    add r3, sp
    ldr r5, _08018518 @ =0x00000CC8
    add r5, sp
    str r3, [r5]
    movs r3, #0
    movs r2, #1
    rsbs r2, r2, #0
_0801841C:
    str r3, [r0]
    movs r5, #0x81
    lsls r5, r5, #2
    adds r0, r0, r5
    subs r1, #1
    cmp r1, r2
    bne _0801841C
    ldr r1, [r4, #0x18]
    mov r0, sb
    bl _call_via_r1
    adds r4, r0, #0
    mov r1, sb
    ldr r0, [r1]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    ldr r5, _0801851C @ =0x00000C28
    add r5, sp
    ldr r2, _080184E8 @ =0x00000C6C
    add r2, sp
    ldr r2, [r2]
    ldr r1, [r2]
    ldr r2, [r2, #4]
    str r1, [r5]
    str r2, [r5, #4]
    add r1, sp, #0x14
    str r1, [r5, #8]
    strh r4, [r5, #0xc]
    strh r0, [r5, #0xe]
    ldr r2, _08018520 @ =0x00000C98
    add r2, sp
    str r6, [r2]
    ldr r3, _08018524 @ =0x00000C74
    add r3, sp
    str r6, [r3]
    ldr r4, [r2]
    ldr r1, [r4]
    cmp r1, #0
    beq _0801847A
    ldr r0, [r1, #0x14]
    ldr r2, [r0, #0x1c]
    adds r0, r1, #0
    adds r1, r5, #0
    bl _call_via_r2
_0801847A:
    ldr r0, _080184F4 @ =0x0000107C
    add r0, sb
    ldr r0, [r0]
    cmp r0, #0
    beq _0801848A
    add r1, sp, #0x14
    bl func_0803B368
_0801848A:
    ldr r0, _08018528 @ =0x00001028
    add r0, sb
    ldr r0, [r0]
    cmp r0, #0
    beq _0801849C
    ldr r2, [r5]
    add r1, sp, #0x14
    bl func_080AB410
_0801849C:
    ldr r1, [r5]
    ldr r2, [r5, #8]
    ldr r0, _0801850C @ =0x00000C5C
    add r0, sp
    str r1, [r0]
    movs r5, #0xcb
    lsls r5, r5, #4
    add r5, sp
    ldr r5, [r5]
    str r2, [r5, #4]
    ldr r0, _0801852C @ =0x0000105C
    add r0, sb
    ldr r4, [r0]
    cmp r4, #0
    bne _080184BC
    b _0801887E
_080184BC:
    movs r5, #0
    adds r1, r4, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #0
    bne _08018530
    adds r0, r4, #0
    adds r0, #0x28
    bl func_0805E8F0
    adds r2, r0, #0
    lsls r0, r2, #0x1e
    cmp r0, #0
    bge _080184E0
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #1
    strb r0, [r1]
_080184E0:
    adds r0, r2, #0
    b _08018536
    .align 2, 0
_080184E4: .4byte 0xFFFFF320
_080184E8: .4byte 0x00000C6C
_080184EC: .4byte 0x00000C58
_080184F0: .4byte 0x00001024
_080184F4: .4byte 0x0000107C
_080184F8: .4byte 0x00000DB1
_080184FC: .4byte 0x00000CBC
_08018500: .4byte 0x00000D1D
_08018504: .4byte 0x00000C15
_08018508: .4byte 0x00000C14
_0801850C: .4byte 0x00000C5C
_08018510: .4byte 0x00000CC4
_08018514: .4byte 0x00000828
_08018518: .4byte 0x00000CC8
_0801851C: .4byte 0x00000C28
_08018520: .4byte 0x00000C98
_08018524: .4byte 0x00000C74
_08018528: .4byte 0x00001028
_0801852C: .4byte 0x0000105C
_08018530:
    movs r0, #0
    strb r0, [r1]
    movs r0, #2
_08018536:
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge _0801854A
    movs r0, #0x83
    lsls r0, r0, #5
    add r0, sb
    ldrb r0, [r0]
    cmp r0, #0
    beq _0801854A
    movs r5, #1
_0801854A:
    cmp r5, #0
    beq _08018578
    movs r0, #0x83
    lsls r0, r0, #5
    add r0, sb
    movs r4, #0
    strb r4, [r0]
    ldr r0, _08018598 @ =0x0000105C
    add r0, sb
    ldr r5, [r0]
    adds r0, r5, #0
    adds r0, #0x28
    movs r1, #1
    bl func_0805E860
    adds r0, r5, #0
    adds r0, #0x3c
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r4, [r0]
    adds r0, #1
    strb r1, [r0]
_08018578:
    mov r6, sb
    ldr r0, [r6]
    ldr r1, [r0, #0x14]
    mov r0, sb
    bl _call_via_r1
    subs r0, #0xa
    cmp r0, #0x1d
    bls _0801858C
    b _0801887E
_0801858C:
    lsls r0, r0, #2
    ldr r1, _0801859C @ =_080185A0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_08018598: .4byte 0x0000105C
_0801859C: .4byte _080185A0
_080185A0: @ jump table
    .4byte _08018770 @ case 0
    .4byte _0801887E @ case 1
    .4byte _0801887E @ case 2
    .4byte _0801887E @ case 3
    .4byte _0801887E @ case 4
    .4byte _0801887E @ case 5
    .4byte _0801887E @ case 6
    .4byte _0801887E @ case 7
    .4byte _080186E2 @ case 8
    .4byte _0801887E @ case 9
    .4byte _0801887E @ case 10
    .4byte _0801887E @ case 11
    .4byte _0801887E @ case 12
    .4byte _0801887E @ case 13
    .4byte _0801887E @ case 14
    .4byte _0801887E @ case 15
    .4byte _0801887E @ case 16
    .4byte _0801878C @ case 17
    .4byte _0801887E @ case 18
    .4byte _08018618 @ case 19
    .4byte _0801887E @ case 20
    .4byte _0801887E @ case 21
    .4byte _0801887E @ case 22
    .4byte _0801887E @ case 23
    .4byte _0801887E @ case 24
    .4byte _0801887E @ case 25
    .4byte _0801887E @ case 26
    .4byte _0801887E @ case 27
    .4byte _0801887E @ case 28
    .4byte _08018754 @ case 29
_08018618:
    ldr r0, _080186A0 @ =0x0000105C
    add r0, sb
    ldr r5, [r0]
    mov r1, sb
    ldr r0, [r1]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r4, #0x30
    subs r0, r4, r0
    mov r8, r0
    mov r2, sb
    ldr r0, [r2]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    subs r7, r4, r0
    movs r3, #0xcb
    lsls r3, r3, #4
    add r3, sp
    ldr r3, [r3]
    mov sl, r3
    ldr r4, _080186A4 @ =0x00000C38
    add r4, sp
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r6, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    ldr r4, [r0, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _080186B0
_0801867C:
    ldrh r1, [r5, #0xc]
    adds r2, r5, #0
    adds r2, #0x10
    ldr r0, _080186A8 @ =0x01FFFFFF
    str r0, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, r8
    adds r2, r7, #0
    movs r3, #0xff
    ldr r4, _080186AC @ =func_030004DC
    bl _call_via_r4
    b _080186B2
    .align 2, 0
_080186A0: .4byte 0x0000105C
_080186A4: .4byte 0x00000C38
_080186A8: .4byte 0x01FFFFFF
_080186AC: .4byte func_030004DC
_080186B0:
    movs r0, #0
_080186B2:
    cmp r0, #0
    bne _080186B8
    b _0801887E
_080186B8:
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r7, r0, #0
    cmp r1, #0
    bne _080186C6
    b _0801887E
_080186C6:
    mov r2, sl
    ldr r1, [r2]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _080186E0
    b _08018852
_080186E0:
    b _08018860
_080186E2:
    ldr r0, _0801874C @ =0x0000105C
    add r0, sb
    ldr r4, [r0]
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x68
_080186F6:
    subs r1, r1, r0
    mov r8, r1
    mov r5, sb
    ldr r0, [r5]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x30
    subs r7, r1, r0
    adds r5, r4, #0
    movs r6, #0xcb
    lsls r6, r6, #4
    add r6, sp
    ldr r6, [r6]
    mov sl, r6
    ldr r4, _08018750 @ =0x00000C38
    add r4, sp
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r6, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    ldr r4, [r0, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    blt _0801867C
    b _080186B0
    .align 2, 0
_0801874C: .4byte 0x0000105C
_08018750: .4byte 0x00000C38
_08018754:
    ldr r0, _0801876C @ =0x0000105C
    add r0, sb
    ldr r4, [r0]
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x18
    b _080186F6
    .align 2, 0
_0801876C: .4byte 0x0000105C
_08018770:
    ldr r0, _08018788 @ =0x0000105C
    add r0, sb
    ldr r4, [r0]
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x38
    b _080186F6
    .align 2, 0
_08018788: .4byte 0x0000105C
_0801878C:
    ldr r0, _08018818 @ =0x0000105C
    add r0, sb
    ldr r4, [r0]
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x68
    subs r1, r1, r0
    mov r8, r1
    mov r5, sb
    ldr r0, [r5]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x30
    subs r7, r1, r0
    adds r5, r4, #0
    movs r6, #0xcb
    lsls r6, r6, #4
    add r6, sp
    ldr r6, [r6]
    mov sl, r6
    ldr r4, _0801881C @ =0x00000C38
    add r4, sp
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r6, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    ldr r4, [r0, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08018828
    ldrh r1, [r5, #0xc]
    adds r2, r5, #0
    adds r2, #0x10
    ldr r0, _08018820 @ =0x01FFFFFF
    str r0, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, r8
    adds r2, r7, #0
    movs r3, #0xff
    ldr r4, _08018824 @ =func_030004DC
    bl _call_via_r4
    b _0801882A
    .align 2, 0
_08018818: .4byte 0x0000105C
_0801881C: .4byte 0x00000C38
_08018820: .4byte 0x01FFFFFF
_08018824: .4byte func_030004DC
_08018828:
    movs r0, #0
_0801882A:
    cmp r0, #0
    beq _0801887E
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r7, r0, #0
    cmp r1, #0
    beq _0801887E
    mov r2, sl
    ldr r1, [r2]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _08018860
_08018852:
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    b _0801887A
_08018860:
    adds r4, r5, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _0801887A
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_0801887A:
    movs r0, #0
    strb r0, [r7]
_0801887E:
    ldr r0, _080188AC @ =0x00001064
    add r0, sb
    ldr r4, [r0]
    cmp r4, #0
    bne _0801888A
    b _080189A6
_0801888A:
    adds r1, r4, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #0
    bne _080188B0
    adds r0, r4, #0
    adds r0, #0x28
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _080188B4
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #1
    b _080188B2
    .align 2, 0
_080188AC: .4byte 0x00001064
_080188B0:
    movs r0, #0
_080188B2:
    strb r0, [r1]
_080188B4:
    ldr r0, _08018940 @ =0x00001064
    add r0, sb
    ldr r4, [r0]
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x58
    subs r1, r1, r0
    mov r8, r1
    mov r5, sb
    ldr r0, [r5]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x10
    subs r7, r1, r0
    adds r5, r4, #0
    movs r6, #0xcb
    lsls r6, r6, #4
    add r6, sp
    ldr r6, [r6]
    mov sl, r6
    ldr r4, _08018944 @ =0x00000C38
    add r4, sp
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r6, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    ldr r4, [r0, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08018950
    ldrh r1, [r5, #0xc]
    adds r2, r5, #0
    adds r2, #0x10
    ldr r0, _08018948 @ =0x01FFFFFF
    str r0, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, r8
    adds r2, r7, #0
    movs r3, #0xaa
    ldr r4, _0801894C @ =func_030004DC
    bl _call_via_r4
    b _08018952
    .align 2, 0
_08018940: .4byte 0x00001064
_08018944: .4byte 0x00000C38
_08018948: .4byte 0x01FFFFFF
_0801894C: .4byte func_030004DC
_08018950:
    movs r0, #0
_08018952:
    cmp r0, #0
    beq _080189A6
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r7, r0, #0
    cmp r1, #0
    beq _080189A6
    mov r2, sl
    ldr r1, [r2]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _08018988
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    b _080189A2
_08018988:
    adds r4, r5, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _080189A2
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_080189A2:
    movs r0, #0
    strb r0, [r7]
_080189A6:
    movs r3, #0
    ldr r4, _08018A5C @ =0x00000C78
    add r4, sp
    str r3, [r4]
    movs r5, #0xde
    lsls r5, r5, #2
    movs r6, #0xcd
    lsls r6, r6, #4
    add r6, sp
    str r5, [r6]
    ldr r0, _08018A60 @ =0x0000106C
    add r0, sb
    ldr r1, _08018A64 @ =0x00000CD4
    add r1, sp
    str r0, [r1]
_080189C4:
    ldr r2, _08018A64 @ =0x00000CD4
    add r2, sp
    ldr r2, [r2]
    ldr r4, [r2]
    cmp r4, #0
    beq _08018ACA
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r5, #0xcd
    lsls r5, r5, #4
    add r5, sp
    ldr r5, [r5]
    subs r0, r5, r0
    mov r8, r0
    mov r6, sb
    ldr r0, [r6]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0xf0
    lsls r1, r1, #1
    subs r7, r1, r0
    adds r5, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    mov sl, r0
    ldr r4, _08018A68 @ =0x00000C38
    add r4, sp
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r6, r4, #0
    movs r1, #0xcb
    lsls r1, r1, #4
    add r1, sp
    ldr r1, [r1]
    ldr r3, [r1, #4]
    adds r0, r5, #0
    ldm r0!, {r2}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08018A74
    ldrh r0, [r5, #0xc]
    adds r1, r5, #0
    adds r1, #0x10
    ldr r4, _08018A6C @ =0x01FFFFFF
    str r4, [sp]
    str r6, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    adds r0, r3, #0
    mov r1, r8
    adds r2, r7, #0
    movs r3, #0x55
    ldr r4, _08018A70 @ =func_030004DC
    bl _call_via_r4
    b _08018A76
    .align 2, 0
_08018A5C: .4byte 0x00000C78
_08018A60: .4byte 0x0000106C
_08018A64: .4byte 0x00000CD4
_08018A68: .4byte 0x00000C38
_08018A6C: .4byte 0x01FFFFFF
_08018A70: .4byte func_030004DC
_08018A74:
    movs r0, #0
_08018A76:
    cmp r0, #0
    beq _08018ACA
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r7, r0, #0
    cmp r1, #0
    beq _08018ACA
    mov r0, sl
    ldr r1, [r0]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _08018AAC
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    b _08018AC6
_08018AAC:
    adds r4, r5, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _08018AC6
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_08018AC6:
    movs r0, #0
    strb r0, [r7]
_08018ACA:
    movs r2, #0xcd
    lsls r2, r2, #4
    add r2, sp
    ldr r1, [r2]
    adds r1, #0x28
    str r1, [r2]
    ldr r4, _08018B1C @ =0x00000CD4
    add r4, sp
    ldr r3, [r4]
    adds r3, #4
    str r3, [r4]
    ldr r6, _08018B20 @ =0x00000C78
    add r6, sp
    ldr r5, [r6]
    adds r5, #1
    str r5, [r6]
    cmp r5, #1
    bhi _08018AF0
    b _080189C4
_08018AF0:
    ldr r4, _08018B24 @ =0x00001074
    add r4, sb
    ldr r0, [r4]
    cmp r0, #0
    bne _08018AFC
    b _08018D76
_08018AFC:
    mov r1, sb
    ldr r0, [r1]
    ldr r1, [r0, #0x14]
    mov r0, sb
    bl _call_via_r1
    cmp r0, #2
    bne _08018B0E
    b _08018C8E
_08018B0E:
    cmp r0, #2
    bgt _08018B28
    cmp r0, #0
    bne _08018B18
    b _08018C68
_08018B18:
    b _08018D76
    .align 2, 0
_08018B1C: .4byte 0x00000CD4
_08018B20: .4byte 0x00000C78
_08018B24: .4byte 0x00001074
_08018B28:
    cmp r0, #3
    beq _08018BFA
    cmp r0, #7
    beq _08018B32
    b _08018D76
_08018B32:
    ldr r4, [r4]
    mov r2, sb
    ldr r0, [r2]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x8b
    lsls r1, r1, #2
    subs r1, r1, r0
    mov r8, r1
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x86
    subs r7, r1, r0
    adds r5, r4, #0
    movs r4, #0xcb
    lsls r4, r4, #4
    add r4, sp
    ldr r4, [r4]
    mov sl, r4
    ldr r4, _08018BBC @ =0x00000C38
    add r4, sp
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r6, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    ldr r4, [r0, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08018BC8
_08018B98:
    ldrh r1, [r5, #0xc]
    adds r2, r5, #0
    adds r2, #0x10
    ldr r0, _08018BC0 @ =0x01FFFFFF
    str r0, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, r8
    adds r2, r7, #0
    movs r3, #0x55
    ldr r4, _08018BC4 @ =func_030004DC
    bl _call_via_r4
    b _08018BCA
    .align 2, 0
_08018BBC: .4byte 0x00000C38
_08018BC0: .4byte 0x01FFFFFF
_08018BC4: .4byte func_030004DC
_08018BC8:
    movs r0, #0
_08018BCA:
    cmp r0, #0
    bne _08018BD0
    b _08018D76
_08018BD0:
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r7, r0, #0
    cmp r1, #0
    bne _08018BDE
    b _08018D76
_08018BDE:
    mov r2, sl
    ldr r1, [r2]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _08018BF8
    b _08018D4A
_08018BF8:
    b _08018D58
_08018BFA:
    ldr r4, [r4]
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x9b
    lsls r1, r1, #2
    subs r1, r1, r0
    mov r8, r1
    mov r5, sb
    ldr r0, [r5]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x76
_08018C1E:
    subs r7, r1, r0
    adds r5, r4, #0
    movs r6, #0xcb
    lsls r6, r6, #4
    add r6, sp
    ldr r6, [r6]
    mov sl, r6
    ldr r4, _08018C64 @ =0x00000C38
    add r4, sp
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r6, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    ldr r4, [r0, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    blt _08018B98
    b _08018BC8
    .align 2, 0
_08018C64: .4byte 0x00000C38
_08018C68:
    ldr r4, [r4]
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0xb0
    lsls r1, r1, #1
    subs r1, r1, r0
    mov r8, r1
    mov r5, sb
    ldr r0, [r5]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x23
    b _08018C1E
_08018C8E:
    ldr r4, [r4]
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x88
    subs r1, r1, r0
    mov r8, r1
    mov r5, sb
    ldr r0, [r5]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x23
    subs r7, r1, r0
    adds r5, r4, #0
    movs r6, #0xcb
    lsls r6, r6, #4
    add r6, sp
    ldr r6, [r6]
    mov sl, r6
    ldr r4, _08018D14 @ =0x00000C38
    add r4, sp
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r6, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    ldr r4, [r0, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08018D20
    ldrh r1, [r5, #0xc]
    adds r2, r5, #0
    adds r2, #0x10
    ldr r0, _08018D18 @ =0x01FFFFFF
    str r0, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, r8
    adds r2, r7, #0
    movs r3, #0x55
    ldr r4, _08018D1C @ =func_030004DC
    bl _call_via_r4
    b _08018D22
    .align 2, 0
_08018D14: .4byte 0x00000C38
_08018D18: .4byte 0x01FFFFFF
_08018D1C: .4byte func_030004DC
_08018D20:
    movs r0, #0
_08018D22:
    cmp r0, #0
    beq _08018D76
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r7, r0, #0
    cmp r1, #0
    beq _08018D76
    mov r2, sl
    ldr r1, [r2]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _08018D58
_08018D4A:
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    b _08018D72
_08018D58:
    adds r4, r5, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _08018D72
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_08018D72:
    movs r0, #0
    strb r0, [r7]
_08018D76:
    ldr r0, _08018E04 @ =0x00001078
    add r0, sb
    ldr r4, [r0]
    cmp r4, #0
    beq _08018E6E
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    ldr r1, _08018E08 @ =0x00000235
    subs r1, r1, r0
    mov r8, r1
    mov r5, sb
    ldr r0, [r5]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x13
    subs r7, r1, r0
    adds r5, r4, #0
    movs r6, #0xcb
    lsls r6, r6, #4
    add r6, sp
    ldr r6, [r6]
    mov sl, r6
    ldr r4, _08018E0C @ =0x00000C38
    add r4, sp
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r6, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    ldr r4, [r0, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08018E18
    ldrh r1, [r5, #0xc]
    adds r2, r5, #0
    adds r2, #0x10
    ldr r0, _08018E10 @ =0x01FFFFFF
    str r0, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, r8
    adds r2, r7, #0
    movs r3, #0x55
    ldr r4, _08018E14 @ =func_030004DC
    bl _call_via_r4
    b _08018E1A
    .align 2, 0
_08018E04: .4byte 0x00001078
_08018E08: .4byte 0x00000235
_08018E0C: .4byte 0x00000C38
_08018E10: .4byte 0x01FFFFFF
_08018E14: .4byte func_030004DC
_08018E18:
    movs r0, #0
_08018E1A:
    cmp r0, #0
    beq _08018E6E
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r7, r0, #0
    cmp r1, #0
    beq _08018E6E
    mov r2, sl
    ldr r1, [r2]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _08018E50
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    b _08018E6A
_08018E50:
    adds r4, r5, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _08018E6A
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_08018E6A:
    movs r0, #0
    strb r0, [r7]
_08018E6E:
    ldr r0, _08018E9C @ =0x00001058
    add r0, sb
    ldr r4, [r0]
    cmp r4, #0
    bne _08018E7A
    b _080190C2
_08018E7A:
    adds r1, r4, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #0
    bne _08018EA0
    adds r0, r4, #0
    adds r0, #0x28
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _08018EA4
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #1
    b _08018EA2
    .align 2, 0
_08018E9C: .4byte 0x00001058
_08018EA0:
    movs r0, #0
_08018EA2:
    strb r0, [r1]
_08018EA4:
    ldr r0, _08018ED0 @ =0x00001038
    add r0, sb
    ldr r0, [r0]
    movs r3, #0xfa
    lsls r3, r3, #1
    adds r0, r0, r3
    bl GetUpgradeLevel__C9FarmHouse
    adds r5, r0, #0
    mov r4, sb
    ldr r0, [r4]
    ldr r1, [r0, #0x14]
    mov r0, sb
    bl _call_via_r1
    cmp r0, #0x1d
    beq _08018ED4
    cmp r0, #0x27
    bne _08018ECC
    b _08018FCA
_08018ECC:
    b _080190C2
    .align 2, 0
_08018ED0: .4byte 0x00001038
_08018ED4:
    ldr r0, _08018F6C @ =0x00001058
    add r0, sb
    ldr r6, [r0]
    mov r1, sb
    ldr r0, [r1]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    ldr r4, _08018F70 @ =0x080F06FD
    lsls r5, r5, #1
    adds r1, r5, r4
    ldrb r1, [r1]
    lsls r1, r1, #3
    subs r1, r1, r0
    mov r8, r1
    mov r2, sb
    ldr r0, [r2]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    adds r4, #1
    adds r5, r5, r4
    ldrb r1, [r5]
    lsls r1, r1, #3
    subs r7, r1, r0
    movs r3, #0xcb
    lsls r3, r3, #4
    add r3, sp
    ldr r3, [r3]
    mov sl, r3
    ldr r4, _08018F74 @ =0x00000C38
    add r4, sp
    ldr r1, [r6, #0x28]
    ldr r3, [r1]
    ldrh r2, [r6, #0x34]
    lsls r2, r2, #2
    ldr r0, [r6, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r5, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    ldr r4, [r0, #4]
    adds r0, r6, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08018F80
    ldrh r1, [r6, #0xc]
    adds r2, r6, #0
    adds r2, #0x10
    ldr r0, _08018F78 @ =0x01FFFFFF
    str r0, [sp]
    str r5, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, r8
    adds r2, r7, #0
    movs r3, #0xaa
    ldr r4, _08018F7C @ =func_030004DC
    bl _call_via_r4
    b _08018F82
    .align 2, 0
_08018F6C: .4byte 0x00001058
_08018F70: .4byte 0x080F06FD
_08018F74: .4byte 0x00000C38
_08018F78: .4byte 0x01FFFFFF
_08018F7C: .4byte func_030004DC
_08018F80:
    movs r0, #0
_08018F82:
    cmp r0, #0
    bne _08018F88
    b _080190C2
_08018F88:
    adds r0, r6, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r7, r0, #0
    cmp r1, #0
    bne _08018F96
    b _080190C2
_08018F96:
    mov r2, sl
    ldr r1, [r2]
    adds r2, r5, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _08018FB6
    adds r1, r5, #0
    adds r1, #0x10
    adds r0, r6, #0
    b _0801909C
_08018FB6:
    adds r4, r6, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    beq _08018FC2
    b _080190BE
_08018FC2:
    adds r1, r5, #0
    adds r1, #0x10
    adds r0, r6, #0
    b _080190B4
_08018FCA:
    ldr r0, _08019058 @ =0x00001058
    add r0, sb
    ldr r5, [r0]
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    ldr r4, _0801905C @ =0x080F06FD
    ldrb r1, [r4]
    lsls r1, r1, #3
    subs r1, r1, r0
    mov r8, r1
    mov r6, sb
    ldr r0, [r6]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    ldrb r1, [r4, #1]
    lsls r1, r1, #3
    subs r7, r1, r0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    mov sl, r0
    ldr r4, _08019060 @ =0x00000C38
    add r4, sp
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r6, r4, #0
    movs r1, #0xcb
    lsls r1, r1, #4
    add r1, sp
    ldr r1, [r1]
    ldr r4, [r1, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _0801906C
    ldrh r1, [r5, #0xc]
    adds r2, r5, #0
    adds r2, #0x10
    ldr r0, _08019064 @ =0x01FFFFFF
    str r0, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, r8
    adds r2, r7, #0
    movs r3, #0xaa
    ldr r4, _08019068 @ =func_030004DC
    bl _call_via_r4
    b _0801906E
    .align 2, 0
_08019058: .4byte 0x00001058
_0801905C: .4byte 0x080F06FD
_08019060: .4byte 0x00000C38
_08019064: .4byte 0x01FFFFFF
_08019068: .4byte func_030004DC
_0801906C:
    movs r0, #0
_0801906E:
    cmp r0, #0
    beq _080190C2
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r7, r0, #0
    cmp r1, #0
    beq _080190C2
    mov r2, sl
    ldr r1, [r2]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _080190A4
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
_0801909C:
    movs r2, #1
    bl func_080A4944
    b _080190BE
_080190A4:
    adds r4, r5, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _080190BE
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
_080190B4:
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_080190BE:
    movs r0, #0
    strb r0, [r7]
_080190C2:
    ldr r4, _08019100 @ =0x00001068
    add r4, sb
    ldr r0, [r4]
    cmp r0, #0
    bne _080190CE
    b _08019232
_080190CE:
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x14]
    mov r0, sb
    bl _call_via_r1
    cmp r0, #0x1d
    beq _080190E0
    b _08019232
_080190E0:
    ldr r0, _08019104 @ =0x00001038
    add r0, sb
    ldr r0, [r0]
    movs r5, #0xfa
    lsls r5, r5, #1
    adds r0, r0, r5
    bl GetUpgradeLevel__C9FarmHouse
    cmp r0, #1
    beq _0801914C
    cmp r0, #1
    blo _08019108
    cmp r0, #2
    beq _0801918C
    b _08019232
    .align 2, 0
_08019100: .4byte 0x00001068
_08019104: .4byte 0x00001038
_08019108:
    ldr r4, [r4]
    mov r6, sb
    ldr r0, [r6]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0xa0
    subs r1, r1, r0
    mov r8, r1
    ldr r0, [r6]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x30
    subs r7, r1, r0
    adds r5, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    mov sl, r0
    adds r6, r5, #0
    adds r6, #0x28
_0801913A:
    ldr r4, [r0, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    blt _080191DA
    b _08019204
_0801914C:
    ldr r4, [r4]
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x8c
    lsls r1, r1, #1
    subs r1, r1, r0
    mov r8, r1
    mov r5, sb
    ldr r0, [r5]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x30
    subs r7, r1, r0
    adds r5, r4, #0
    movs r6, #0xcb
    lsls r6, r6, #4
    add r6, sp
    ldr r6, [r6]
    mov sl, r6
    adds r6, r5, #0
    adds r6, #0x28
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    b _0801913A
_0801918C:
    ldr r4, [r4]
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0xac
    lsls r1, r1, #1
    subs r1, r1, r0
    mov r8, r1
    mov r5, sb
    ldr r0, [r5]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    movs r1, #0x30
    subs r7, r1, r0
    adds r5, r4, #0
    movs r6, #0xcb
    lsls r6, r6, #4
    add r6, sp
    ldr r6, [r6]
    mov sl, r6
    adds r6, r5, #0
    adds r6, #0x28
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    ldr r4, [r0, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08019204
_080191DA:
    ldrh r1, [r5, #0xc]
    adds r2, r5, #0
    adds r2, #0x10
    ldr r0, _080191FC @ =0x01FFFFFF
    str r0, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, r8
    adds r2, r7, #0
    movs r3, #0xaa
    ldr r4, _08019200 @ =func_030004DC
    bl _call_via_r4
    b _08019206
    .align 2, 0
_080191FC: .4byte 0x01FFFFFF
_08019200: .4byte func_030004DC
_08019204:
    movs r0, #0
_08019206:
    cmp r0, #0
    beq _08019232
    adds r4, r5, #0
    adds r4, #0x48
    ldrb r0, [r4]
    cmp r0, #0
    beq _08019232
    mov r2, sl
    ldr r1, [r2]
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
_08019232:
    ldr r1, _08019274 @ =0x0000102C
    add r1, sb
    ldr r4, [r1]
    rsbs r0, r4, #0
    orrs r0, r4
    cmp r0, #0
    blt _08019242
    b _08019502
_08019242:
    adds r5, r1, #0
    ldrb r2, [r5, #8]
    cmp r2, #0
    beq _080192AA
    ldrb r0, [r5, #9]
    subs r0, #1
    movs r2, #0
    strb r0, [r5, #9]
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08019278
    ldr r1, [r5]
    cmp r2, r1
    beq _0801926E
    cmp r1, #0
    beq _0801926E
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801926E:
    movs r0, #0
    str r0, [r5]
    b _0801929E
    .align 2, 0
_08019274: .4byte 0x0000102C
_08019278:
    ldr r4, [r5]
    adds r1, r4, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #0
    bne _0801929C
    adds r0, r4, #0
    adds r0, #0x28
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge _0801929E
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #1
    strb r0, [r1]
    b _0801929E
_0801929C:
    strb r2, [r1]
_0801929E:
    ldrb r0, [r5, #0xa]
    adds r0, #1
    movs r1, #7
    ands r0, r1
    strb r0, [r5, #0xa]
    b _080192F4
_080192AA:
    adds r1, r4, #0
    adds r1, #0x3f
    ldrb r0, [r1]
    cmp r0, #0
    bne _080192D0
    adds r0, r4, #0
    adds r0, #0x28
    bl func_0805E8F0
    adds r2, r0, #0
    lsls r0, r2, #0x1e
    cmp r0, #0
    bge _080192CC
    adds r1, r4, #0
    adds r1, #0x3c
    movs r0, #1
    strb r0, [r1]
_080192CC:
    adds r0, r2, #0
    b _080192D4
_080192D0:
    strb r2, [r1]
    movs r0, #2
_080192D4:
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge _080192F4
    movs r4, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _080192F2
    cmp r1, #0
    beq _080192F2
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080192F2:
    str r4, [r5]
_080192F4:
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    adds r4, r0, #0
    mov r5, sb
    ldr r0, [r5]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    adds r2, r0, #0
    ldr r1, _080193BC @ =0x0000102C
    add r1, sb
    movs r6, #0xcb
    lsls r6, r6, #4
    add r6, sp
    ldr r6, [r6]
    ldr r0, _080193C0 @ =0x00000C7C
    add r0, sp
    str r6, [r0]
    ldr r5, [r1]
    rsbs r0, r5, #0
    orrs r0, r5
    cmp r0, #0
    blt _0801932E
    b _08019502
_0801932E:
    ldrb r0, [r1, #8]
    cmp r0, #0
    bne _08019336
    b _08019430
_08019336:
    ldrb r0, [r1, #0xa]
    cmp r0, #2
    bhi _0801933E
    b _08019502
_0801933E:
    movs r3, #4
    ldrsh r0, [r1, r3]
    subs r0, r0, r4
    movs r6, #0xc8
    lsls r6, r6, #4
    add r6, sp
    str r0, [r6]
    movs r0, #6
    ldrsh r1, [r1, r0]
    subs r2, r1, r2
    mov sl, r2
    movs r0, #0x80
    lsls r0, r0, #8
    subs r0, r0, r1
    mov r8, r0
    adds r6, r5, #0
    ldr r4, _080193C4 @ =0x00000C38
    add r4, sp
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r7, r4, #0
    movs r1, #0xcb
    lsls r1, r1, #4
    add r1, sp
    ldr r1, [r1]
    ldr r3, [r1, #4]
    adds r0, r5, #0
    ldm r0!, {r2}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _080193CC
    ldrh r0, [r5, #0xc]
    adds r1, r5, #0
    adds r1, #0x10
    mov r4, r8
    str r4, [sp]
    str r7, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    adds r0, r3, #0
    movs r5, #0xc8
    lsls r5, r5, #4
    add r5, sp
    ldr r1, [r5]
    mov r2, sl
    movs r3, #0xaa
    ldr r4, _080193C8 @ =func_030004DC
    bl _call_via_r4
    b _080193CE
    .align 2, 0
_080193BC: .4byte 0x0000102C
_080193C0: .4byte 0x00000C7C
_080193C4: .4byte 0x00000C38
_080193C8: .4byte func_030004DC
_080193CC:
    movs r0, #0
_080193CE:
    cmp r0, #0
    bne _080193D4
    b _08019502
_080193D4:
    adds r0, r6, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r5, r0, #0
    cmp r1, #0
    bne _080193E2
    b _08019502
_080193E2:
    ldr r0, _0801940C @ =0x00000C7C
    add r0, sp
    ldr r0, [r0]
    ldr r1, [r0]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _08019410
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    b _0801942A
    .align 2, 0
_0801940C: .4byte 0x00000C7C
_08019410:
    adds r4, r6, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _0801942A
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_0801942A:
    movs r0, #0
    strb r0, [r5]
    b _08019502
_08019430:
    movs r3, #4
    ldrsh r0, [r1, r3]
    subs r0, r0, r4
    mov sl, r0
    movs r4, #6
    ldrsh r1, [r1, r4]
    subs r2, r1, r2
    mov r8, r2
    movs r0, #0x80
    lsls r0, r0, #8
    subs r7, r0, r1
    ldr r4, _0801949C @ =0x00000C38
    add r4, sp
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r6, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    ldr r3, [r0, #4]
    adds r0, r5, #0
    ldm r0!, {r2}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _080194A4
    ldrh r0, [r5, #0xc]
    adds r1, r5, #0
    adds r1, #0x10
    str r7, [sp]
    str r6, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    adds r0, r3, #0
    mov r1, sl
    mov r2, r8
    movs r3, #0xaa
    ldr r4, _080194A0 @ =func_030004DC
    bl _call_via_r4
    b _080194A6
    .align 2, 0
_0801949C: .4byte 0x00000C38
_080194A0: .4byte func_030004DC
_080194A4:
    movs r0, #0
_080194A6:
    cmp r0, #0
    beq _08019502
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r7, r0, #0
    cmp r1, #0
    beq _08019502
    ldr r2, _080194E0 @ =0x00000C7C
    add r2, sp
    ldr r2, [r2]
    ldr r1, [r2]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _080194E4
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    b _080194FE
    .align 2, 0
_080194E0: .4byte 0x00000C7C
_080194E4:
    adds r4, r5, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _080194FE
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_080194FE:
    movs r0, #0
    strb r0, [r7]
_08019502:
    movs r3, #0
    ldr r4, _080195CC @ =0x00000C84
    add r4, sp
    str r3, [r4]
    ldr r7, _080195D0 @ =0x00001084
    add r7, sb
    ldr r5, _080195D4 @ =0x00001081
    add r5, sb
    ldr r6, _080195D8 @ =0x00000CCC
    add r6, sp
    str r5, [r6]
_08019518:
    ldr r1, _080195D8 @ =0x00000CCC
    add r1, sp
    ldr r1, [r1]
    ldrb r0, [r1]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    beq _0801952A
    b _0801964C
_0801952A:
    ldrh r4, [r7]
    lsls r4, r4, #3
    adds r4, #8
    ldrh r5, [r7, #2]
    lsls r5, r5, #3
    adds r5, #8
    ldr r6, [r7, #4]
    mov r2, sb
    ldr r0, [r2]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    subs r4, r4, r0
    ldr r3, _080195DC @ =0x00000C88
    add r3, sp
    str r4, [r3]
    mov r4, sb
    ldr r0, [r4]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    subs r0, r5, r0
    mov sl, r0
    movs r0, #0x80
    lsls r0, r0, #8
    subs r0, r0, r5
    mov r8, r0
    movs r5, #0xcb
    lsls r5, r5, #4
    add r5, sp
    ldr r5, [r5]
    ldr r0, _080195E0 @ =0x00000C8C
    add r0, sp
    str r5, [r0]
    ldr r4, _080195E4 @ =0x00000C38
    add r4, sp
    ldr r1, [r6, #0x28]
    ldr r3, [r1]
    ldrh r2, [r6, #0x34]
    lsls r2, r2, #2
    ldr r0, [r6, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r4, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r5, r4, #0
    movs r0, #0xcb
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    ldr r3, [r0, #4]
    adds r0, r6, #0
    ldm r0!, {r2}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _080195EC
    ldrh r0, [r6, #0xc]
    adds r1, r6, #0
    adds r1, #0x10
    mov r4, r8
    str r4, [sp]
    str r5, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    adds r0, r3, #0
    ldr r2, _080195DC @ =0x00000C88
    add r2, sp
    ldr r1, [r2]
    mov r2, sl
    movs r3, #0xaa
    ldr r4, _080195E8 @ =func_030004DC
    bl _call_via_r4
    b _080195EE
    .align 2, 0
_080195CC: .4byte 0x00000C84
_080195D0: .4byte 0x00001084
_080195D4: .4byte 0x00001081
_080195D8: .4byte 0x00000CCC
_080195DC: .4byte 0x00000C88
_080195E0: .4byte 0x00000C8C
_080195E4: .4byte 0x00000C38
_080195E8: .4byte func_030004DC
_080195EC:
    movs r0, #0
_080195EE:
    cmp r0, #0
    beq _0801964C
    adds r0, r6, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    mov r8, r0
    cmp r1, #0
    beq _0801964C
    ldr r3, _08019628 @ =0x00000C8C
    add r3, sp
    ldr r3, [r3]
    ldr r1, [r3]
    adds r2, r5, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq _0801962C
    adds r1, r5, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    b _08019646
    .align 2, 0
_08019628: .4byte 0x00000C8C
_0801962C:
    adds r4, r6, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne _08019646
    adds r1, r5, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
_08019646:
    movs r0, #0
    mov r4, r8
    strb r0, [r4]
_0801964C:
    adds r7, #0xc
    ldr r6, _08019758 @ =0x00000CCC
    add r6, sp
    ldr r5, [r6]
    adds r5, #0xc
    str r5, [r6]
    ldr r1, _0801975C @ =0x00000C84
    add r1, sp
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    cmp r0, #3
    bhi _08019668
    b _08019518
_08019668:
    ldr r0, _08019760 @ =gUnk_0300040C
    ldr r0, [r0]
    movs r2, #0
    movs r3, #0xc9
    lsls r3, r3, #4
    add r3, sp
    str r2, [r3]
    ldr r4, _08019764 @ =0x000004DC
    adds r7, r0, r4
_0801967A:
    ldrb r0, [r7]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    beq _08019686
    b _080197AA
_08019686:
    ldrh r4, [r7, #2]
    lsls r4, r4, #0x16
    lsrs r4, r4, #0x16
    mov r5, sb
    ldr r0, [r5]
    ldr r1, [r0, #0x14]
    mov r0, sb
    bl _call_via_r1
    cmp r4, r0
    beq _0801969E
    b _080197AA
_0801969E:
    ldrb r1, [r7, #3]
    lsrs r1, r1, #2
    ldrh r4, [r7, #4]
    ldr r0, _08019768 @ =0x000003FF
    ands r4, r0
    lsls r4, r4, #6
    orrs r4, r1
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    ldr r6, [r7, #4]
    lsls r6, r6, #6
    asrs r6, r6, #0x10
    ldrb r5, [r7]
    lsls r5, r5, #0x1c
    lsrs r5, r5, #0x1e
    ldr r0, _0801976C @ =0x000010B0
    add r0, sb
    movs r2, #0xc9
    lsls r2, r2, #4
    add r2, sp
    ldr r2, [r2]
    lsls r1, r2, #2
    adds r0, r0, r1
    ldr r0, [r0]
    mov r8, r0
    mov r3, sb
    ldr r0, [r3]
    ldr r1, [r0, #0x18]
    mov r0, sb
    bl _call_via_r1
    subs r4, r4, r0
    ldr r1, _08019770 @ =0x00000C94
    add r1, sp
    str r4, [r1]
    mov r2, sb
    ldr r0, [r2]
    ldr r1, [r0, #0x1c]
    mov r0, sb
    bl _call_via_r1
    subs r0, r6, r0
    mov ip, r0
    movs r0, #0x80
    lsls r0, r0, #8
    subs r0, r0, r6
    mov sl, r0
    mov r6, r8
    movs r3, #0xcb
    lsls r3, r3, #4
    add r3, sp
    ldr r3, [r3]
    mov r8, r3
    lsls r3, r5, #2
    orrs r3, r5
    lsls r0, r5, #4
    orrs r3, r0
    lsls r5, r5, #6
    orrs r3, r5
    adds r5, r6, #0
    adds r5, #0x28
    mov r4, r8
    ldr r4, [r4, #4]
    ldr r0, _08019774 @ =0x00000CD8
    add r0, sp
    str r4, [r0]
    adds r0, r6, #0
    ldm r0!, {r2}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _0801977C
    ldrh r0, [r6, #0xc]
    adds r1, r6, #0
    adds r1, #0x10
    mov r4, sl
    str r4, [sp]
    str r5, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    ldr r1, _08019774 @ =0x00000CD8
    add r1, sp
    ldr r0, [r1]
    ldr r2, _08019770 @ =0x00000C94
    add r2, sp
    ldr r1, [r2]
    mov r2, ip
    ldr r4, _08019778 @ =func_030004DC
    bl _call_via_r4
    b _0801977E
    .align 2, 0
_08019758: .4byte 0x00000CCC
_0801975C: .4byte 0x00000C84
_08019760: .4byte gUnk_0300040C
_08019764: .4byte 0x000004DC
_08019768: .4byte 0x000003FF
_0801976C: .4byte 0x000010B0
_08019770: .4byte 0x00000C94
_08019774: .4byte 0x00000CD8
_08019778: .4byte func_030004DC
_0801977C:
    movs r0, #0
_0801977E:
    cmp r0, #0
    beq _080197AA
    adds r4, r6, #0
    adds r4, #0x48
    ldrb r0, [r4]
    cmp r0, #0
    beq _080197AA
    mov r3, r8
    ldr r1, [r3]
    adds r2, r5, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    adds r1, r5, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #0
    strb r0, [r4]
_080197AA:
    adds r7, #0xc
    movs r5, #0xc9
    lsls r5, r5, #4
    add r5, sp
    ldr r4, [r5]
    adds r4, #1
    str r4, [r5]
    cmp r4, #6
    bhs _080197BE
    b _0801967A
_080197BE:
    movs r0, #0xcc
    lsls r0, r0, #1
    add r0, sb
    ldr r5, [r0]
    cmp r5, #0x64
    blo _080197CC
    movs r5, #0
_080197CC:
    lsls r0, r5, #2
    ldr r1, _080197F4 @ =0x00000C98
    add r1, sp
    ldr r1, [r1]
    adds r6, r1, r0
    ldr r2, _080197F8 @ =0x00000CC4
    add r2, sp
    ldr r7, [r2]
    adds r4, r6, #0
    add r0, sp, #0x14
    ldrb r0, [r0]
    movs r3, #0xc7
    lsls r3, r3, #4
    add r3, sp
    ldr r3, [r3]
    cmp r0, r3
    blo _080197FC
    subs r0, r4, r1
    b _08019842
    .align 2, 0
_080197F4: .4byte 0x00000C98
_080197F8: .4byte 0x00000CC4
_080197FC:
    ldr r0, _08019970 @ =0x00000C74
    add r0, sp
    ldr r0, [r0]
    cmp r4, r0
    beq _0801981A
    ldr r3, [r4]
    cmp r3, #0
    beq _0801981A
    ldr r0, [r3, #0x14]
    ldr r1, _08019974 @ =0x00000C28
    add r1, sp
    ldr r2, [r0, #0x1c]
    adds r0, r3, #0
    bl _call_via_r2
_0801981A:
    adds r4, #4
    cmp r4, r7
    bne _08019826
    ldr r1, _08019978 @ =0x00000C98
    add r1, sp
    ldr r4, [r1]
_08019826:
    cmp r4, r6
    beq _08019844
    add r0, sp, #0x14
    ldrb r0, [r0]
    movs r2, #0xc7
    lsls r2, r2, #4
    add r2, sp
    ldr r2, [r2]
    cmp r0, r2
    blo _080197FC
    ldr r3, _08019978 @ =0x00000C98
    add r3, sp
    ldr r3, [r3]
    subs r0, r4, r3
_08019842:
    asrs r5, r0, #2
_08019844:
    movs r0, #0xcc
    lsls r0, r0, #1
    add r0, sb
    str r5, [r0]
    ldr r4, _0801997C @ =0x00000C6C
    add r4, sp
    ldr r4, [r4]
    ldr r1, [r4, #8]
    add r0, sp, #0x14
    bl func_08094A3C
    ldr r5, _08019980 @ =0x00000CC8
    add r5, sp
    ldr r0, [r5]
    add r6, sp, #0x18
    cmp r6, r0
    beq _08019870
    adds r1, r6, #0
_08019868:
    ldr r2, _08019984 @ =0xFFFFFDFC
    adds r0, r0, r2
    cmp r1, r0
    bne _08019868
_08019870:
    mov r3, sb
    ldr r0, [r3, #4]
    ldr r0, [r0, #4]
    bl func_080A4698
    adds r0, #0x24
    ldrb r1, [r0]
    movs r0, #1
    movs r4, #0xce
    lsls r4, r4, #1
    add r4, sb
    ldr r5, _08019988 @ =0x00000C9C
    add r5, sp
    str r4, [r5]
    ldr r6, _0801997C @ =0x00000C6C
    add r6, sp
    ldr r6, [r6]
    ldr r7, [r6]
    adds r2, r1, #0
    eors r2, r0
    movs r3, #0xca
    lsls r3, r3, #4
    add r3, sp
    str r2, [r3]
    movs r4, #0
    ldr r5, _0801998C @ =0x00000CA4
    add r5, sp
    str r4, [r5]
    ldr r6, _08019990 @ =0x00000CBC
    add r6, sp
    ldr r6, [r6]
    ldrb r6, [r6]
    ldr r0, _08019994 @ =0x00000CA8
    add r0, sp
    str r6, [r0]
    cmp r4, r6
    blo _080198BC
    b _08019B10
_080198BC:
    ldr r1, _08019988 @ =0x00000C9C
    add r1, sp
    ldr r1, [r1]
    ldr r2, _08019998 @ =0x00000B78
    adds r0, r1, r2
    ldr r2, _0801998C @ =0x00000CA4
    add r2, sp
    ldr r2, [r2]
    lsls r1, r2, #1
    adds r1, r1, r2
    lsls r1, r1, #2
    adds r0, r0, r1
    mov sl, r0
    ldrb r0, [r0, #9]
    lsrs r0, r0, #7
    adds r2, #1
    ldr r4, _0801999C @ =0x00000CB4
    add r4, sp
    str r2, [r4]
    cmp r0, #0
    beq _080198E8
    b _08019AF8
_080198E8:
    mov r5, sl
    movs r1, #9
    ldrsb r1, [r5, r1]
    ldr r6, _08019988 @ =0x00000C9C
    add r6, sp
    ldr r2, [r6]
    adds r2, #0x20
    lsls r0, r1, #5
    adds r0, r0, r1
    lsls r0, r0, #2
    adds r2, r2, r0
    mov r8, r2
    mov r4, r8
    adds r4, #0x82
    ldrb r0, [r4]
    cmp r0, #0
    bne _08019912
    ldrb r0, [r5, #0xa]
    cmp r0, #0
    beq _08019912
    b _08019AF8
_08019912:
    mov r1, r8
    adds r1, #0x60
    movs r0, #0xca
    lsls r0, r0, #4
    add r0, sp
    ldr r0, [r0]
    cmp r0, #0
    bne _08019924
    mov r1, r8
_08019924:
    mov r3, sl
    ldrb r2, [r3, #8]
    lsls r2, r2, #5
    ldr r5, _080199A0 @ =0x05000200
    adds r2, r2, r5
    add r0, sp, #0x14
    movs r3, #0x20
    bl func_08008F0C
    mov r6, sp
    adds r6, #0x14
    ldr r0, _080199A4 @ =0x00000CAC
    add r0, sp
    str r6, [r0]
    ldr r1, [r7, #4]
    ldr r0, [r7, #0xc]
    cmp r1, r0
    beq _080199A8
    cmp r1, #0
    beq _08019958
    adds r0, r1, #0
    add r1, sp, #0x14
    ldm r1!, {r2, r3, r5}
    stm r0!, {r2, r3, r5}
    ldr r1, [r1]
    str r1, [r0]
_08019958:
    ldr r0, [r7, #4]
    adds r0, #0x10
    str r0, [r7, #4]
    mov r8, r4
    ldr r0, _0801998C @ =0x00000CA4
    add r0, sp
    ldr r6, [r0]
    adds r6, #1
    ldr r0, _0801999C @ =0x00000CB4
    add r0, sp
    str r6, [r0]
    b _08019ADE
    .align 2, 0
_08019970: .4byte 0x00000C74
_08019974: .4byte 0x00000C28
_08019978: .4byte 0x00000C98
_0801997C: .4byte 0x00000C6C
_08019980: .4byte 0x00000CC8
_08019984: .4byte 0xFFFFFDFC
_08019988: .4byte 0x00000C9C
_0801998C: .4byte 0x00000CA4
_08019990: .4byte 0x00000CBC
_08019994: .4byte 0x00000CA8
_08019998: .4byte 0x00000B78
_0801999C: .4byte 0x00000CB4
_080199A0: .4byte 0x05000200
_080199A4: .4byte 0x00000CAC
_080199A8:
    ldr r2, _080199EC @ =0x00000CDC
    add r2, sp
    str r1, [r2]
    movs r0, #1
    ldr r2, _080199F0 @ =0x00000C68
    add r2, sp
    str r0, [r2]
    ldr r0, [r7]
    subs r0, r1, r0
    asrs r4, r0, #4
    ldr r0, _080199F4 @ =0x00000C64
    add r0, sp
    str r4, [r0]
    ldr r1, [r2]
    cmp r4, r1
    bhs _080199CA
    adds r0, r2, #0
_080199CA:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq _080199FC
    lsls r4, r0, #4
    adds r0, r4, #0
    bl malloc
    ldr r5, _080199F8 @ =0x00000CB8
    add r5, sp
    str r4, [r5]
    cmp r0, #0
    bne _08019A04
    adds r0, r4, #0
    bl func_080D3BC0
    b _08019A04
    .align 2, 0
_080199EC: .4byte 0x00000CDC
_080199F0: .4byte 0x00000C68
_080199F4: .4byte 0x00000C64
_080199F8: .4byte 0x00000CB8
_080199FC:
    movs r0, #0
    ldr r6, _08019A70 @ =0x00000CB8
    add r6, sp
    str r0, [r6]
_08019A04:
    adds r5, r0, #0
    ldr r0, _08019A74 @ =0x00000CD8
    add r0, sp
    str r5, [r0]
    ldr r2, [r7]
    adds r3, r5, #0
    movs r1, #0x82
    add r8, r1
    ldr r5, _08019A78 @ =0x00000CA4
    add r5, sp
    ldr r4, [r5]
    adds r4, #1
    ldr r5, _08019A7C @ =0x00000CB4
    add r5, sp
    str r4, [r5]
    ldr r6, _08019A80 @ =0x00000CDC
    add r6, sp
    ldr r6, [r6]
    cmp r2, r6
    beq _08019A4A
_08019A2C:
    cmp r3, #0
    beq _08019A3C
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r5, r6}
    stm r0!, {r4, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08019A3C:
    adds r2, #0x10
    adds r3, #0x10
    ldr r0, _08019A80 @ =0x00000CDC
    add r0, sp
    ldr r0, [r0]
    cmp r2, r0
    bne _08019A2C
_08019A4A:
    adds r5, r3, #0
    ldr r0, _08019A84 @ =0x00000C68
    add r0, sp
    ldr r0, [r0]
    cmp r0, #1
    bne _08019A8C
    cmp r5, #0
    beq _08019A6A
    adds r0, r5, #0
    ldr r2, _08019A88 @ =0x00000CAC
    add r2, sp
    ldr r1, [r2]
    ldm r1!, {r3, r4, r6}
    stm r0!, {r3, r4, r6}
    ldr r1, [r1]
    str r1, [r0]
_08019A6A:
    adds r5, #0x10
    b _08019AB2
    .align 2, 0
_08019A70: .4byte 0x00000CB8
_08019A74: .4byte 0x00000CD8
_08019A78: .4byte 0x00000CA4
_08019A7C: .4byte 0x00000CB4
_08019A80: .4byte 0x00000CDC
_08019A84: .4byte 0x00000C68
_08019A88: .4byte 0x00000CAC
_08019A8C:
    adds r3, r0, #0
    adds r2, r5, #0
    cmp r3, #0
    beq _08019AB0
_08019A94:
    cmp r2, #0
    beq _08019AA8
    adds r0, r2, #0
    ldr r4, _08019B6C @ =0x00000CAC
    add r4, sp
    ldr r1, [r4]
    ldm r1!, {r4, r5, r6}
    stm r0!, {r4, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08019AA8:
    subs r3, #1
    adds r2, #0x10
    cmp r3, #0
    bne _08019A94
_08019AB0:
    adds r5, r2, #0
_08019AB2:
    ldr r2, [r7, #4]
    ldr r0, [r7]
    adds r1, r0, #0
    cmp r0, r2
    beq _08019AC2
_08019ABC:
    adds r1, #0x10
    cmp r1, r2
    bne _08019ABC
_08019AC2:
    cmp r0, #0
    beq _08019ACA
    bl free
_08019ACA:
    ldr r6, _08019B70 @ =0x00000CB8
    add r6, sp
    ldr r6, [r6]
    ldr r1, _08019B74 @ =0x00000CD8
    add r1, sp
    ldr r1, [r1]
    adds r0, r6, r1
    str r1, [r7]
    str r5, [r7, #4]
    str r0, [r7, #0xc]
_08019ADE:
    movs r0, #0
    mov r3, r8
    strb r0, [r3]
    mov r4, sl
    ldrb r0, [r4, #0xa]
    cmp r0, #0
    bne _08019AF8
    ldrb r0, [r4, #9]
    lsrs r0, r0, #7
    cmp r0, #0
    bne _08019AF8
    movs r0, #1
    strb r0, [r4, #0xa]
_08019AF8:
    ldr r5, _08019B78 @ =0x00000CB4
    add r5, sp
    ldr r5, [r5]
    ldr r6, _08019B7C @ =0x00000CA4
    add r6, sp
    str r5, [r6]
    ldr r0, _08019B80 @ =0x00000CA8
    add r0, sp
    ldr r6, [r0]
    cmp r5, r6
    bhs _08019B10
    b _080198BC
_08019B10:
    movs r1, #0xce
    lsls r1, r1, #1
    add r1, sb
    ldr r3, _08019B84 @ =0x00000CBC
    add r3, sp
    ldr r3, [r3]
    ldrb r2, [r3]
    movs r4, #0xcc
    lsls r4, r4, #4
    add r4, sp
    ldr r4, [r4]
    ldrb r4, [r4]
    cmp r2, r4
    bhs _08019B56
    movs r5, #0xff
    lsls r0, r2, #1
    adds r0, r0, r2
    lsls r0, r0, #2
    ldr r6, _08019B88 @ =0x00000B81
    adds r0, r0, r6
    adds r3, r0, r1
    ldr r1, _08019B8C @ =0x00000DB1
    add r1, sb
_08019B3E:
    ldrb r4, [r3]
    lsrs r0, r4, #7
    cmp r0, #0
    bne _08019B4C
    adds r0, r4, #0
    orrs r0, r5
    strb r0, [r3]
_08019B4C:
    adds r3, #0xc
    adds r2, #1
    ldrb r0, [r1]
    cmp r2, r0
    blo _08019B3E
_08019B56:
    movs r3, #0xce
    lsls r3, r3, #4
    add sp, r3
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08019B6C: .4byte 0x00000CAC
_08019B70: .4byte 0x00000CB8
_08019B74: .4byte 0x00000CD8
_08019B78: .4byte 0x00000CB4
_08019B7C: .4byte 0x00000CA4
_08019B80: .4byte 0x00000CA8
_08019B84: .4byte 0x00000CBC
_08019B88: .4byte 0x00000B81
_08019B8C: .4byte 0x00000DB1

    thumb_func_start func_08019B90
func_08019B90: @ 0x08019B90
    push {r4, r5, lr}
    adds r5, r0, #0
    ldr r0, [r5, #4]
    adds r1, r0, #0
    adds r1, #0x90
    ldr r4, [r1]
    ldr r2, _08019BE4 @ =0x00001048
    adds r1, r5, r2
    ldr r1, [r1]
    ldr r3, _08019BE8 @ =0x0000104C
    adds r2, r5, r3
    ldrb r2, [r2]
    movs r3, #0x1e
    subs r3, r3, r2
    ldr r4, [r4, #0x14]
    bl _call_via_r4
    ldr r0, [r5, #4]
    ldr r0, [r0, #4]
    bl func_080A4698
    adds r0, #0x24
    ldrb r0, [r0]
    cmp r0, #0
    bne _08019BDC
    movs r1, #0x82
    lsls r1, r1, #5
    adds r0, r5, r1
    ldr r0, [r0]
    ldr r2, [r0]
    lsls r1, r2, #0xb
    lsrs r1, r1, #0x1b
    lsls r2, r2, #5
    lsrs r2, r2, #0x1a
    adds r0, r5, #0
    movs r3, #1
    bl func_0801A13C
_08019BDC:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08019BE4: .4byte 0x00001048
_08019BE8: .4byte 0x0000104C

    thumb_func_start func_08019BEC
func_08019BEC: @ 0x08019BEC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x24
    adds r7, r0, #0
    mov r8, r1
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    str r2, [sp, #0xc]
    adds r4, r7, #0
    adds r4, #8
    movs r0, #0xcc
    lsls r0, r0, #1
    adds r5, r7, r0
    cmp r4, r5
    beq _08019C26
_08019C10:
    ldr r2, [r4]
    cmp r2, #0
    beq _08019C20
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x14]
    adds r0, r2, #0
    bl _call_via_r1
_08019C20:
    adds r4, #4
    cmp r4, r5
    bne _08019C10
_08019C26:
    ldr r0, _08019DF8 @ =gUnk_0300040C
    ldr r0, [r0]
    ldr r1, _08019DFC @ =0x000004DC
    adds r1, r1, r0
    mov sl, r1
    movs r5, #0
    adds r2, r7, #0
    adds r2, #8
    str r2, [sp, #0x18]
    movs r3, #0xcc
    lsls r3, r3, #1
    adds r3, r7, r3
    str r3, [sp, #0x1c]
    ldr r0, _08019E00 @ =0x0000107C
    adds r0, r0, r7
    mov sb, r0
    movs r6, #0
    ldr r1, _08019E04 @ =0x000010B0
    adds r4, r7, r1
_08019C4C:
    ldr r1, [r4]
    cmp r6, r1
    beq _08019C62
    cmp r1, #0
    beq _08019C62
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08019C62:
    stm r4!, {r6}
    adds r5, #1
    cmp r5, #6
    blo _08019C4C
    mov r2, r8
    ldrh r0, [r2]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    cmp r0, #2
    beq _08019C92
    ldr r2, [r7, #4]
    ldr r0, [r2]
    cmp r0, #2
    bne _08019C92
    ldr r3, _08019E08 @ =0x00001050
    adds r0, r7, r3
    ldr r1, [r0]
    cmp r1, #0
    beq _08019C92
    ldr r0, [r2, #0x2c]
    movs r2, #0xb0
    lsls r2, r2, #8
    bl func_08008E64
_08019C92:
    ldr r0, [r7, #4]
    ldr r2, _08019E0C @ =0x00001048
    adds r1, r7, r2
    ldr r2, [r1]
    ldr r3, _08019E10 @ =0x0000104C
    adds r1, r7, r3
    ldrb r3, [r1]
    movs r1, #0x1e
    subs r1, r1, r3
    str r1, [sp]
    mov r1, r8
    bl func_080A56DC
    ldr r0, _08019E14 @ =0x00001024
    adds r4, r7, r0
    movs r5, #0
    ldr r0, [r4]
    cmp r5, r0
    beq _08019CC2
    cmp r0, #0
    beq _08019CC2
    movs r1, #3
    bl func_0803AC78
_08019CC2:
    str r5, [r4]
    mov r4, sb
    movs r5, #0
    ldr r0, [r4]
    cmp r5, r0
    beq _08019CD8
    cmp r0, #0
    beq _08019CD8
    movs r1, #3
    bl func_0803B0A8
_08019CD8:
    str r5, [r4]
    ldr r1, _08019E18 @ =0x00001028
    adds r4, r7, r1
    movs r5, #0
    ldr r0, [r4]
    cmp r5, r0
    beq _08019CF0
    cmp r0, #0
    beq _08019CF0
    movs r1, #3
    bl func_080AB2E4
_08019CF0:
    str r5, [r4]
    movs r2, #0
    str r2, [sp, #0x10]
    mov r3, sl
    str r3, [sp, #0x20]
_08019CFA:
    ldr r1, [sp, #0x20]
    ldrb r0, [r1]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    str r0, [sp, #0x14]
    cmp r0, #1
    bne _08019D98
    ldrh r4, [r1, #2]
    lsls r4, r4, #0x16
    lsrs r4, r4, #0x16
    ldr r0, [r7]
    ldr r1, [r0, #0x14]
    adds r0, r7, #0
    bl _call_via_r1
    cmp r4, r0
    bne _08019D98
    ldr r2, _08019E04 @ =0x000010B0
    adds r2, r2, r7
    mov sb, r2
    ldr r3, [sp, #0x10]
    lsls r0, r3, #2
    add sb, r0
    movs r0, #0x4c
    bl __builtin_new
    adds r6, r0, #0
    ldr r0, [r7]
    ldr r1, [r0, #0x64]
    adds r0, r7, #0
    bl _call_via_r1
    adds r5, r0, #0
    ldr r0, [sp, #0x20]
    ldrh r0, [r0, #8]
    mov sl, r0
    adds r0, r6, #0
    adds r1, r7, #0
    movs r2, #2
    movs r3, #0x1b
    bl func_080A4740
    ldr r0, _08019E1C @ =vtable_unk_080E602C
    str r0, [r6, #0x24]
    movs r1, #0x28
    adds r1, r1, r6
    mov r8, r1
    ldr r4, [r5]
    add r0, sp, #4
    ldr r3, [r4, #0xc]
    adds r1, r5, #0
    mov r2, sl
    bl _call_via_r3
    ldr r0, [sp, #4]
    ldrh r2, [r0]
    mov r0, r8
    ldr r3, [r4, #0x10]
    adds r1, r5, #0
    bl _call_via_r3
    adds r0, r6, #0
    adds r0, #0x48
    mov r2, sp
    ldrb r2, [r2, #0x14]
    strb r2, [r0]
    mov r4, sb
    ldr r1, [r4]
    cmp r6, r1
    beq _08019D96
    cmp r1, #0
    beq _08019D96
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08019D96:
    str r6, [r4]
_08019D98:
    ldr r3, [sp, #0x20]
    adds r3, #0xc
    str r3, [sp, #0x20]
    ldr r0, [sp, #0x10]
    adds r0, #1
    str r0, [sp, #0x10]
    cmp r0, #6
    blo _08019CFA
    movs r0, #0xa0
    bl __builtin_new
    adds r1, r7, #0
    bl func_0803AB30
    ldr r1, _08019E14 @ =0x00001024
    adds r5, r7, r1
    adds r4, r0, #0
    ldr r0, [r5]
    cmp r4, r0
    beq _08019DCA
    cmp r0, #0
    beq _08019DCA
    movs r1, #3
    bl func_0803AC78
_08019DCA:
    str r4, [r5]
    ldr r0, [r7, #4]
    ldr r0, [r0, #4]
    bl func_080A4698
    adds r0, #0x24
    ldrb r0, [r0]
    cmp r0, #0
    bne _08019E52
    ldr r0, [r7, #4]
    ldr r1, [r0]
    ldr r2, _08019E20 @ =0x00001038
    adds r0, r7, r2
    ldr r0, [r0]
    adds r0, #8
    cmp r1, #0x2e
    beq _08019E2C
    cmp r1, #0x2e
    ble _08019E24
    cmp r1, #0x2f
    beq _08019E30
    b _08019E34
    .align 2, 0
_08019DF8: .4byte gUnk_0300040C
_08019DFC: .4byte 0x000004DC
_08019E00: .4byte 0x0000107C
_08019E04: .4byte 0x000010B0
_08019E08: .4byte 0x00001050
_08019E0C: .4byte 0x00001048
_08019E10: .4byte 0x0000104C
_08019E14: .4byte 0x00001024
_08019E18: .4byte 0x00001028
_08019E1C: .4byte vtable_unk_080E602C
_08019E20: .4byte 0x00001038
_08019E24:
    cmp r1, #0x2c
    blt _08019E34
    movs r0, #0
    b _08019E36
_08019E2C:
    movs r0, #1
    b _08019E36
_08019E30:
    movs r0, #2
    b _08019E36
_08019E34:
    ldr r0, [r0]
_08019E36:
    cmp r0, #1
    beq _08019E40
    cmp r0, #2
    beq _08019E4A
    b _08019E52
_08019E40:
    adds r0, r7, #0
    movs r1, #1
    bl func_0801FAC8
    b _08019E52
_08019E4A:
    adds r0, r7, #0
    movs r1, #0
    bl func_0801FAC8
_08019E52:
    movs r0, #4
    bl __builtin_new
    ldr r1, [r7, #4]
    ldr r2, [r1, #4]
    adds r1, r7, #0
    bl func_080AAFC8
    ldr r3, _08019F28 @ =0x00001028
    adds r5, r7, r3
    adds r4, r0, #0
    ldr r0, [r5]
    cmp r4, r0
    beq _08019E78
    cmp r0, #0
    beq _08019E78
    movs r1, #3
    bl func_080AB2E4
_08019E78:
    str r4, [r5]
    adds r0, r7, #0
    bl func_0801F14C
    adds r0, r7, #0
    bl func_0801F3E4
    adds r0, r7, #0
    bl func_0801F2DC
    adds r0, r7, #0
    bl func_0801F614
    adds r0, r7, #0
    bl func_0801F77C
    adds r0, r7, #0
    bl func_0801E67C
    ldr r4, [sp, #0x18]
    ldr r5, [sp, #0x1c]
    cmp r4, r5
    beq _08019EBC
_08019EA6:
    ldr r2, [r4]
    cmp r2, #0
    beq _08019EB6
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x10]
    adds r0, r2, #0
    bl _call_via_r1
_08019EB6:
    adds r4, #4
    cmp r4, r5
    bne _08019EA6
_08019EBC:
    ldr r0, [sp, #0xc]
    cmp r0, #0
    beq _08019EEC
    ldr r1, _08019F2C @ =0x00001038
    adds r0, r7, r1
    ldr r0, [r0]
    ldr r2, _08019F30 @ =0x0000214C
    adds r0, r0, r2
    bl func_0809C5F4
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _08019EE6
    ldr r3, _08019F34 @ =0x00001054
    adds r0, r7, r3
    ldr r0, [r0]
    bl func_080167CC
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08019EEC
_08019EE6:
    adds r0, r7, #0
    bl func_0801DB58
_08019EEC:
    ldr r0, [r7, #4]
    ldr r0, [r0, #4]
    bl func_080A4698
    adds r0, #0x24
    ldrb r0, [r0]
    cmp r0, #0
    bne _08019F16
    movs r1, #0x82
    lsls r1, r1, #5
    adds r0, r7, r1
    ldr r0, [r0]
    ldr r2, [r0]
    lsls r1, r2, #0xb
    lsrs r1, r1, #0x1b
    lsls r2, r2, #5
    lsrs r2, r2, #0x1a
    adds r0, r7, #0
    movs r3, #1
    bl func_0801A13C
_08019F16:
    add sp, #0x24
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_08019F28: .4byte 0x00001028
_08019F2C: .4byte 0x00001038
_08019F30: .4byte 0x0000214C
_08019F34: .4byte 0x00001054

    thumb_func_start func_08019F38
func_08019F38: @ 0x08019F38
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, [r4, #4]
    ldr r0, [r0, #4]
    bl func_080A4698
    adds r0, #0x24
    ldrb r0, [r0]
    cmp r0, #0
    bne _08019F6C
    ldr r1, _08019F70 @ =0x00001038
    adds r0, r4, r1
    ldr r0, [r0]
    adds r0, #0x10
    bl func_0800E324
    cmp r0, #3
    beq _08019F74
    ldr r0, [r4, #4]
    adds r1, r5, #0
    bl func_080A5EB8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _08019F74
_08019F6C:
    movs r0, #0
    b _08019F76
    .align 2, 0
_08019F70: .4byte 0x00001038
_08019F74:
    movs r0, #1
_08019F76:
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_08019F7C
func_08019F7C: @ 0x08019F7C
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    sub sp, #4
    adds r4, r0, #0
    mov sb, r1
    ldr r0, _08019FE4 @ =0x00001038
    adds r4, r4, r0
    ldr r0, [r4]
    adds r0, #0x10
    bl func_0800E324
    mov r8, r0
    ldr r0, [r4]
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r0, r1
    bl GetUpgradeLevel__C9FarmHouse
    adds r6, r0, #0
    ldr r0, [r4]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    bl GetUpgradeLevel__C4Coop
    adds r5, r0, #0
    ldr r0, [r4]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    bl GetUpgradeLevel__C4Barn
    str r0, [sp]
    mov r0, sb
    mov r1, r8
    adds r2, r6, #0
    adds r3, r5, #0
    bl func_0803A8A4
    bl func_080A4698
    ldrh r0, [r0, #0x20]
    lsls r0, r0, #3
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08019FE4: .4byte 0x00001038

    thumb_func_start func_08019FE8
func_08019FE8: @ 0x08019FE8
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    sub sp, #4
    adds r4, r0, #0
    mov sb, r1
    ldr r0, _0801A050 @ =0x00001038
    adds r4, r4, r0
    ldr r0, [r4]
    adds r0, #0x10
    bl func_0800E324
    mov r8, r0
    ldr r0, [r4]
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r0, r1
    bl GetUpgradeLevel__C9FarmHouse
    adds r6, r0, #0
    ldr r0, [r4]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    bl GetUpgradeLevel__C4Coop
    adds r5, r0, #0
    ldr r0, [r4]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    bl GetUpgradeLevel__C4Barn
    str r0, [sp]
    mov r0, sb
    mov r1, r8
    adds r2, r6, #0
    adds r3, r5, #0
    bl func_0803A8A4
    bl func_080A4698
    ldrh r0, [r0, #0x22]
    lsls r0, r0, #3
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_0801A050: .4byte 0x00001038

    thumb_func_start func_0801A054
func_0801A054: @ 0x0801A054
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r7, r0, #0
    mov sl, r1
    mov sb, r2
    ldr r0, _0801A078 @ =0x00000233
    cmp sb, r0
    bls _0801A07C
    movs r0, #0
    str r0, [r7]
    str r0, [r7, #4]
    strh r0, [r7, #8]
    strh r0, [r7, #0xa]
    b _0801A128
    .align 2, 0
_0801A078: .4byte 0x00000233
_0801A07C:
    mov r1, sl
    ldr r0, [r1, #4]
    ldr r1, [r0]
    str r1, [sp, #4]
    mov r1, sb
    cmp r1, #2
    bne _0801A0AC
    ldr r1, [sp, #4]
    cmp r1, #2
    beq _0801A0AC
    ldr r0, _0801A0A8 @ =0x00001050
    add r0, sl
    ldr r0, [r0]
    movs r1, #0x80
    movs r2, #0x58
    str r0, [r7]
    movs r0, #0
    str r0, [r7, #4]
    strh r1, [r7, #8]
    strh r2, [r7, #0xa]
    b _0801A128
    .align 2, 0
_0801A0A8: .4byte 0x00001050
_0801A0AC:
    ldr r1, [sp, #4]
    cmp r1, sb
    bne _0801A0B6
    ldr r0, [r0, #4]
    b _0801A0FA
_0801A0B6:
    ldr r4, _0801A118 @ =0x00001038
    add r4, sl
    ldr r0, [r4]
    adds r0, #0x10
    bl func_0800E324
    mov r8, r0
    ldr r0, [r4]
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r0, r1
    bl GetUpgradeLevel__C9FarmHouse
    adds r6, r0, #0
    ldr r0, [r4]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    bl GetUpgradeLevel__C4Coop
    adds r5, r0, #0
    ldr r0, [r4]
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r0, r0, r1
    bl GetUpgradeLevel__C4Barn
    str r0, [sp]
    mov r0, sb
    mov r1, r8
    adds r2, r6, #0
    adds r3, r5, #0
    bl func_0803A8A4
_0801A0FA:
    bl func_080A4698
    ldrh r5, [r0, #0x20]
    ldrh r6, [r0, #0x22]
    ldr r1, [sp, #4]
    cmp r1, sb
    bne _0801A11C
    mov r0, sl
    ldr r4, [r0, #4]
    ldr r0, [r4, #4]
    bl func_080A4698
    movs r1, #0
    ldr r0, [r4, #0x2c]
    b _0801A120
    .align 2, 0
_0801A118: .4byte 0x00001038
_0801A11C:
    ldr r1, [r0, #0x1c]
    ldr r0, [r0, #0x18]
_0801A120:
    str r0, [r7]
    str r1, [r7, #4]
    strh r5, [r7, #8]
    strh r6, [r7, #0xa]
_0801A128:
    adds r0, r7, #0
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0801A13C
func_0801A13C: @ 0x0801A13C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc4
    str r0, [sp, #0x90]
    adds r4, r1, #0
    adds r7, r2, #0
    lsls r3, r3, #0x18
    lsrs r6, r3, #0x18
    bl func_0801A8C0
    adds r1, r0, #0
    ldr r0, [sp, #0x90]
    ldr r3, _0801A198 @ =0x00001048
    adds r2, r0, r3
    ldr r0, [r2]
    cmp r0, r1
    bne _0801A172
    lsls r0, r4, #0x18
    str r0, [sp, #0xa8]
    lsls r3, r7, #0x18
    str r3, [sp, #0xac]
    cmp r6, #0
    bne _0801A172
    b _0801A7B0
_0801A172:
    str r1, [r2]
    ldr r6, [sp, #0x90]
    ldr r0, [r6, #4]
    bl func_080A5D14
    ldr r0, [r6, #4]
    ldr r1, [r0]
    ldr r2, _0801A19C @ =0x00001038
    adds r0, r6, r2
    ldr r0, [r0]
    adds r0, #8
    cmp r1, #0x2e
    beq _0801A1A8
    cmp r1, #0x2e
    ble _0801A1A0
    cmp r1, #0x2f
    beq _0801A1AC
    b _0801A1B0
    .align 2, 0
_0801A198: .4byte 0x00001048
_0801A19C: .4byte 0x00001038
_0801A1A0:
    cmp r1, #0x2c
    blt _0801A1B0
    movs r1, #0
    b _0801A1B2
_0801A1A8:
    movs r1, #1
    b _0801A1B2
_0801A1AC:
    movs r1, #2
    b _0801A1B2
_0801A1B0:
    ldr r1, [r0]
_0801A1B2:
    movs r6, #0xce
    lsls r6, r6, #1
    ldr r3, [sp, #0x90]
    adds r6, r3, r6
    str r6, [sp, #0x94]
    ldr r2, _0801A21C @ =0x00001048
    adds r0, r3, r2
    ldr r0, [r0]
    str r0, [sp, #0x98]
    str r1, [sp, #0x9c]
    movs r3, #0
    mov r8, r3
    lsls r4, r4, #0x18
    str r4, [sp, #0xa8]
    lsls r4, r7, #0x18
    str r4, [sp, #0xac]
_0801A1D2:
    ldr r0, [sp, #0x94]
    adds r0, #0x20
    mov r6, r8
    lsls r1, r6, #5
    add r1, r8
    lsls r1, r1, #2
    adds r5, r0, r1
    adds r0, r5, #0
    adds r0, #0x83
    ldrb r0, [r0]
    cmp r0, #0
    bne _0801A220
    adds r1, r5, #0
    adds r1, #0x20
    adds r0, r5, #0
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldm r0!, {r4, r6}
    stm r1!, {r4, r6}
    adds r1, r5, #0
    adds r1, #0x40
    adds r0, r5, #0
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldm r0!, {r4, r6}
    stm r1!, {r4, r6}
    adds r1, r5, #0
    adds r1, #0x82
    movs r0, #1
    strb r0, [r1]
    add r0, r8
    mov sb, r0
    b _0801A7A4
    .align 2, 0
_0801A21C: .4byte 0x00001048
_0801A220:
    adds r1, r5, #0
    adds r1, #0x82
    str r1, [sp, #0xc0]
    movs r2, #1
    add r2, r8
    mov sb, r2
    ldr r3, [sp, #0x9c]
    cmp r3, #4
    bls _0801A234
    b _0801A79E
_0801A234:
    lsls r0, r3, #2
    ldr r1, _0801A240 @ =_0801A244
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0801A240: .4byte _0801A244
_0801A244: @ jump table
    .4byte _0801A258 @ case 0
    .4byte _0801A4BC @ case 1
    .4byte _0801A4BC @ case 2
    .4byte _0801A258 @ case 3
    .4byte _0801A258 @ case 4
_0801A258:
    ldr r4, [sp, #0x98]
    cmp r4, #1
    bne _0801A260
    b _0801A3A0
_0801A260:
    cmp r4, #1
    bgt _0801A274
    cmp r4, #0
    beq _0801A330
    adds r5, #0x82
    str r5, [sp, #0xc0]
    movs r6, #1
    add r6, r8
    mov sb, r6
    b _0801A79E
_0801A274:
    ldr r0, [sp, #0x98]
    cmp r0, #2
    bne _0801A27C
    b _0801A404
_0801A27C:
    adds r1, r5, #0
    adds r1, #0x82
    str r1, [sp, #0xc0]
    movs r2, #1
    add r2, r8
    mov sb, r2
    cmp r0, #3
    beq _0801A28E
    b _0801A79E
_0801A28E:
    add r2, sp, #0x20
    movs r3, #0xa
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xa0
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A320 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    adds r0, r5, #0
    adds r0, #0x20
    ldr r3, _0801A324 @ =0x00002529
    str r3, [sp, #0x24]
    mov r1, sp
    adds r6, r2, #0
    adds r7, r0, #0
    add r4, sp, #0x28
    mov r8, r4
    add r4, sp, #0x2c
    mov sl, r4
    adds r4, r2, #0
    cmp sp, r4
    beq _0801A2D2
    adds r4, r3, #0
_0801A2CA:
    strh r4, [r1]
    adds r1, #2
    cmp r1, r6
    bne _0801A2CA
_0801A2D2:
    ldr r3, [r2]
    mov r1, sp
    adds r2, r5, #0
    ldr r4, _0801A328 @ =func_03000C2C
    bl _call_via_r4
    movs r3, #9
    add r2, sp, #0x28
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xa8
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A320 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    adds r4, r7, #0
    adds r4, #0x20
    mov r3, r8
    ldr r0, _0801A32C @ =0x00001BAA
    str r0, [sp, #0x2c]
    mov r0, sp
    add r2, sp, #0x20
    cmp sp, r2
    bne _0801A310
    b _0801A6D8
_0801A310:
    mov r6, sl
    ldr r1, [r6]
_0801A314:
    strh r1, [r0]
    adds r0, #2
    cmp r0, r2
    bne _0801A314
    b _0801A6D8
    .align 2, 0
_0801A320: .4byte 0xFFFFFC1F
_0801A324: .4byte 0x00002529
_0801A328: .4byte func_03000C2C
_0801A32C: .4byte 0x00001BAA
_0801A330:
    add r2, sp, #0x30
    movs r3, #9
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xa8
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A394 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    adds r6, r5, #0
    adds r6, #0x20
    ldr r0, _0801A398 @ =0x00001BAA
    str r0, [sp, #0x34]
    mov r1, sp
    add r4, sp, #0x20
    adds r7, r6, #0
    ldr r3, _0801A39C @ =func_03000C2C
    mov ip, r3
    adds r3, r5, #0
    adds r3, #0x82
    str r3, [sp, #0xc0]
    movs r3, #1
    add r3, r8
    mov sb, r3
    cmp sp, r4
    beq _0801A378
_0801A370:
    strh r0, [r1]
    adds r1, #2
    cmp r1, r4
    bne _0801A370
_0801A378:
    ldr r3, [r2]
    adds r0, r6, #0
    mov r1, sp
    adds r2, r5, #0
    bl _call_via_ip
    adds r0, r7, #0
    adds r0, #0x20
    adds r1, r5, #0
    movs r2, #0x20
    bl memcpy
    b _0801A79E
    .align 2, 0
_0801A394: .4byte 0xFFFFFC1F
_0801A398: .4byte 0x00001BAA
_0801A39C: .4byte func_03000C2C
_0801A3A0:
    adds r4, r5, #0
    adds r4, #0x20
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #0x20
    bl memcpy
    add r2, sp, #0x38
    movs r3, #3
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xd8
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A400 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    adds r4, #0x20
    adds r3, r2, #0
    movs r1, #8
    lsls r2, r1, #5
    movs r0, #0x20
    orrs r2, r0
    lsls r1, r1, #0xa
    orrs r2, r1
    str r2, [sp, #0x3c]
    mov r0, sp
    add r1, sp, #0x20
    adds r6, r5, #0
    adds r6, #0x82
    str r6, [sp, #0xc0]
    movs r6, #1
    add r6, r8
    mov sb, r6
    cmp sp, r1
    bne _0801A3F4
    b _0801A6D8
_0801A3F4:
    strh r2, [r0]
    adds r0, #2
    cmp r0, r1
    bne _0801A3F4
    b _0801A6D8
    .align 2, 0
_0801A400: .4byte 0xFFFFFC1F
_0801A404:
    add r2, sp, #0x40
    movs r3, #3
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xd8
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A4B0 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    adds r6, r5, #0
    adds r6, #0x20
    adds r3, r2, #0
    movs r1, #8
    lsls r2, r1, #5
    movs r0, #0x20
    orrs r2, r0
    lsls r1, r1, #0xa
    orrs r2, r1
    str r2, [sp, #0x44]
    mov r4, sp
    add r0, sp, #0x20
    adds r7, r6, #0
    add r1, sp, #0x48
    mov sl, r1
    mov r1, sp
    adds r1, #0x4c
    str r1, [sp, #0xb0]
    adds r1, r5, #0
    adds r1, #0x82
    str r1, [sp, #0xc0]
    movs r1, #1
    add r1, r8
    mov sb, r1
    cmp sp, r0
    beq _0801A460
    adds r1, r2, #0
_0801A458:
    strh r1, [r4]
    adds r4, #2
    cmp r4, r0
    bne _0801A458
_0801A460:
    ldr r3, [r3]
    adds r0, r6, #0
    mov r1, sp
    adds r2, r5, #0
    ldr r4, _0801A4B4 @ =func_03000C2C
    bl _call_via_r4
    movs r3, #0xa
    add r2, sp, #0x48
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xa0
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A4B0 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    adds r4, r7, #0
    adds r4, #0x20
    mov r3, sl
    ldr r0, _0801A4B8 @ =0x00002529
    str r0, [sp, #0x4c]
    mov r0, sp
    add r2, sp, #0x20
    cmp sp, r2
    bne _0801A4A0
    b _0801A6D8
_0801A4A0:
    ldr r6, [sp, #0xb0]
    ldr r1, [r6]
_0801A4A4:
    strh r1, [r0]
    adds r0, #2
    cmp r0, r2
    bne _0801A4A4
    b _0801A6D8
    .align 2, 0
_0801A4B0: .4byte 0xFFFFFC1F
_0801A4B4: .4byte func_03000C2C
_0801A4B8: .4byte 0x00002529
_0801A4BC:
    ldr r0, [sp, #0x98]
    cmp r0, #1
    bne _0801A4C4
    b _0801A63C
_0801A4C4:
    cmp r0, #1
    bgt _0801A4D8
    cmp r0, #0
    beq _0801A590
    adds r5, #0x82
    str r5, [sp, #0xc0]
    movs r1, #1
    add r1, r8
    mov sb, r1
    b _0801A79E
_0801A4D8:
    ldr r2, [sp, #0x98]
    cmp r2, #2
    bne _0801A4E0
    b _0801A6F4
_0801A4E0:
    adds r3, r5, #0
    adds r3, #0x82
    str r3, [sp, #0xc0]
    movs r4, #1
    add r4, r8
    mov sb, r4
    cmp r2, #3
    beq _0801A4F2
    b _0801A79E
_0801A4F2:
    add r2, sp, #0x50
    movs r3, #0xa
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xa0
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A580 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    adds r6, r5, #0
    adds r6, #0x20
    ldr r0, _0801A584 @ =0x00002529
    str r0, [sp, #0x54]
    mov r1, sp
    add r4, sp, #0x20
    adds r7, r6, #0
    add r3, sp, #0x58
    mov r8, r3
    add r3, sp, #0x5c
    mov sl, r3
    cmp sp, r4
    beq _0801A532
_0801A52A:
    strh r0, [r1]
    adds r1, #2
    cmp r1, r4
    bne _0801A52A
_0801A532:
    ldr r3, [r2]
    adds r0, r6, #0
    mov r1, sp
    adds r2, r5, #0
    ldr r4, _0801A588 @ =func_03000C2C
    bl _call_via_r4
    movs r3, #0xa
    add r2, sp, #0x58
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xa0
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A580 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    adds r4, r7, #0
    adds r4, #0x20
    mov r3, r8
    ldr r0, _0801A58C @ =0x00006A32
    str r0, [sp, #0x5c]
    mov r0, sp
    add r2, sp, #0x20
    cmp sp, r2
    bne _0801A572
    b _0801A6D8
_0801A572:
    mov r6, sl
    ldr r1, [r6]
_0801A576:
    strh r1, [r0]
    adds r0, #2
    cmp r0, r2
    bne _0801A576
    b _0801A6D8
    .align 2, 0
_0801A580: .4byte 0xFFFFFC1F
_0801A584: .4byte 0x00002529
_0801A588: .4byte func_03000C2C
_0801A58C: .4byte 0x00006A32
_0801A590:
    add r2, sp, #0x60
    movs r3, #0xa
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xa0
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A630 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    movs r0, #0x20
    adds r0, r0, r5
    mov ip, r0
    ldr r6, _0801A634 @ =0x00006A32
    str r6, [sp, #0x64]
    mov r1, sp
    add r4, sp, #0x20
    mov r7, ip
    add r3, sp, #0x68
    mov sl, r3
    mov r0, sp
    adds r0, #0x6c
    str r0, [sp, #0xb4]
    adds r3, r5, #0
    adds r3, #0x82
    str r3, [sp, #0xc0]
    movs r0, #1
    add r0, r8
    mov sb, r0
    cmp sp, r4
    beq _0801A5E2
    adds r0, r6, #0
_0801A5DA:
    strh r0, [r1]
    adds r1, #2
    cmp r1, r4
    bne _0801A5DA
_0801A5E2:
    ldr r3, [r2]
    mov r0, ip
    mov r1, sp
    adds r2, r5, #0
    ldr r4, _0801A638 @ =func_03000C2C
    bl _call_via_r4
    movs r3, #0xa
    add r2, sp, #0x68
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xa0
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A630 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    adds r4, r7, #0
    adds r4, #0x20
    mov r3, sl
    ldr r0, _0801A634 @ =0x00006A32
    str r0, [sp, #0x6c]
    mov r0, sp
    add r2, sp, #0x20
    cmp sp, r2
    beq _0801A6D8
    ldr r6, [sp, #0xb4]
    ldr r1, [r6]
_0801A624:
    strh r1, [r0]
    adds r0, #2
    cmp r0, r2
    bne _0801A624
    b _0801A6D8
    .align 2, 0
_0801A630: .4byte 0xFFFFFC1F
_0801A634: .4byte 0x00006A32
_0801A638: .4byte func_03000C2C
_0801A63C:
    add r2, sp, #0x70
    movs r3, #0xa
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xa0
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A6E8 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    movs r0, #0x20
    adds r0, r0, r5
    mov ip, r0
    ldr r6, _0801A6EC @ =0x00006A32
    str r6, [sp, #0x74]
    mov r1, sp
    add r4, sp, #0x20
    mov r7, ip
    add r3, sp, #0x78
    mov sl, r3
    mov r0, sp
    adds r0, #0x7c
    str r0, [sp, #0xb8]
    adds r3, r5, #0
    adds r3, #0x82
    str r3, [sp, #0xc0]
    movs r0, #1
    add r0, r8
    mov sb, r0
    cmp sp, r4
    beq _0801A68E
    adds r0, r6, #0
_0801A686:
    strh r0, [r1]
    adds r1, #2
    cmp r1, r4
    bne _0801A686
_0801A68E:
    ldr r3, [r2]
    mov r0, ip
    mov r1, sp
    adds r2, r5, #0
    ldr r4, _0801A6F0 @ =func_03000C2C
    bl _call_via_r4
    movs r3, #0xa
    add r2, sp, #0x78
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xa0
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A6E8 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    adds r4, r7, #0
    adds r4, #0x20
    mov r3, sl
    ldr r0, _0801A6EC @ =0x00006A32
    str r0, [sp, #0x7c]
    mov r0, sp
    add r2, sp, #0x20
    cmp sp, r2
    beq _0801A6D8
    ldr r6, [sp, #0xb8]
    ldr r1, [r6]
_0801A6D0:
    strh r1, [r0]
    adds r0, #2
    cmp r0, r2
    bne _0801A6D0
_0801A6D8:
    ldr r3, [r3]
    adds r0, r4, #0
    mov r1, sp
    adds r2, r5, #0
    ldr r4, _0801A6F0 @ =func_03000C2C
    bl _call_via_r4
    b _0801A79E
    .align 2, 0
_0801A6E8: .4byte 0xFFFFFC1F
_0801A6EC: .4byte 0x00006A32
_0801A6F0: .4byte func_03000C2C
_0801A6F4:
    add r2, sp, #0x80
    movs r3, #0xa
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xa0
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A898 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    adds r6, r5, #0
    adds r6, #0x20
    ldr r4, _0801A89C @ =0x00006A32
    add r0, sp, #0x84
    str r4, [r0]
    mov r0, sp
    add r1, sp, #0x20
    adds r7, r6, #0
    add r3, sp, #0x88
    mov sl, r3
    mov r3, sp
    adds r3, #0x8c
    str r3, [sp, #0xbc]
    adds r3, r5, #0
    adds r3, #0x82
    str r3, [sp, #0xc0]
    movs r3, #1
    add r3, r8
    mov sb, r3
    cmp sp, r1
    beq _0801A744
_0801A73C:
    strh r4, [r0]
    adds r0, #2
    cmp r0, r1
    bne _0801A73C
_0801A744:
    ldr r3, [r2]
    adds r0, r6, #0
    mov r1, sp
    adds r2, r5, #0
    ldr r4, _0801A8A0 @ =func_03000C2C
    bl _call_via_r4
    movs r3, #0xa
    add r2, sp, #0x88
    ldrb r1, [r2]
    movs r0, #0x20
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    movs r3, #0xa0
    lsls r3, r3, #2
    ldrh r1, [r2]
    ldr r0, _0801A898 @ =0xFFFFFC1F
    ands r0, r1
    orrs r0, r3
    strh r0, [r2]
    adds r4, r7, #0
    adds r4, #0x20
    mov r3, sl
    ldr r0, _0801A8A4 @ =0x00002529
    ldr r6, [sp, #0xbc]
    str r0, [r6]
    mov r0, sp
    add r2, sp, #0x20
    add r1, sp, #0x8c
    cmp sp, r2
    beq _0801A790
    ldr r1, [r1]
_0801A788:
    strh r1, [r0]
    adds r0, #2
    cmp r0, r2
    bne _0801A788
_0801A790:
    ldr r3, [r3]
    adds r0, r4, #0
    mov r1, sp
    adds r2, r5, #0
    ldr r4, _0801A8A0 @ =func_03000C2C
    bl _call_via_r4
_0801A79E:
    movs r0, #1
    ldr r1, [sp, #0xc0]
    strb r0, [r1]
_0801A7A4:
    mov r8, sb
    mov r2, r8
    cmp r2, #0x16
    bhs _0801A7AE
    b _0801A1D2
_0801A7AE:
    movs r6, #1
_0801A7B0:
    ldr r3, [sp, #0xa8]
    lsrs r4, r3, #0x18
    ldr r0, [sp, #0xac]
    lsrs r5, r0, #0x18
    ldr r1, [sp, #0x90]
    ldr r2, _0801A8A8 @ =0x00001038
    adds r0, r1, r2
    ldr r0, [r0]
    adds r0, #0x10
    bl func_0800E324
    adds r2, r0, #0
    ldr r3, [sp, #0x90]
    ldr r1, _0801A8AC @ =0x00001048
    adds r0, r3, r1
    ldr r3, [r0]
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080A4650
    lsls r0, r0, #0x18
    lsrs r1, r0, #0x18
    ldr r2, [sp, #0x90]
    ldr r3, _0801A8B0 @ =0x0000104C
    adds r5, r2, r3
    ldrb r0, [r5]
    cmp r0, r1
    bne _0801A7EC
    cmp r6, #0
    beq _0801A886
_0801A7EC:
    strb r1, [r5]
    ldr r4, [sp, #0x90]
    ldr r0, [r4, #4]
    ldrb r1, [r5]
    movs r4, #0x1e
    subs r2, r4, r1
    bl func_080A5DFC
    ldrb r1, [r5]
    subs r4, r4, r1
    movs r6, #0
    mov sb, r6
    movs r0, #0x1f
    ands r1, r0
    str r1, [sp, #0xa4]
    ldr r0, [sp, #0x90]
    ldr r1, _0801A8B4 @ =0x0000023E
    adds r0, r0, r1
    mov r8, r0
    ldr r2, [sp, #0x90]
    movs r3, #0xfe
    lsls r3, r3, #1
    adds r7, r2, r3
    movs r0, #0xee
    lsls r0, r0, #1
    adds r6, r2, r0
    subs r1, #0x22
    adds r5, r2, r1
    movs r0, #0x1f
    ands r4, r0
    lsls r4, r4, #5
    mov sl, r4
_0801A82C:
    movs r2, #0x20
    rsbs r2, r2, #0
    adds r1, r2, #0
    ldr r0, [sp, #0xa0]
    ands r0, r1
    ldr r3, [sp, #0xa4]
    orrs r0, r3
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r1, _0801A8B8 @ =0xFFFFFF00
    ldr r4, [sp, #0xa0]
    ands r4, r1
    orrs r4, r0
    str r4, [sp, #0xa0]
    ldr r0, _0801A898 @ =0xFFFFFC1F
    adds r1, r0, #0
    adds r0, r4, #0
    ands r0, r1
    mov r1, sl
    orrs r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r1, _0801A8BC @ =0xFFFF0000
    ands r4, r1
    orrs r4, r0
    str r4, [sp, #0xa0]
    adds r0, r5, #0
    adds r1, r6, #0
    adds r2, r7, #0
    adds r3, r4, #0
    ldr r4, _0801A8A0 @ =func_03000C2C
    bl _call_via_r4
    movs r0, #1
    mov r2, r8
    strb r0, [r2]
    movs r3, #0x84
    add r8, r3
    adds r7, #0x84
    adds r6, #0x84
    adds r5, #0x84
    add sb, r0
    mov r4, sb
    cmp r4, #0x16
    blo _0801A82C
_0801A886:
    add sp, #0xc4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801A898: .4byte 0xFFFFFC1F
_0801A89C: .4byte 0x00006A32
_0801A8A0: .4byte func_03000C2C
_0801A8A4: .4byte 0x00002529
_0801A8A8: .4byte 0x00001038
_0801A8AC: .4byte 0x00001048
_0801A8B0: .4byte 0x0000104C
_0801A8B4: .4byte 0x0000023E
_0801A8B8: .4byte 0xFFFFFF00
_0801A8BC: .4byte 0xFFFF0000

    thumb_func_start func_0801A8C0
func_0801A8C0: @ 0x0801A8C0
    push {lr}
    cmp r1, #5
    bhi _0801A8CA
    movs r0, #3
    b _0801A8DC
_0801A8CA:
    cmp r1, #0xb
    bhi _0801A8D2
    movs r0, #0
    b _0801A8DC
_0801A8D2:
    cmp r1, #0x11
    bhi _0801A8DA
    movs r0, #1
    b _0801A8DC
_0801A8DA:
    movs r0, #2
_0801A8DC:
    pop {r1}
    bx r1

    thumb_func_start func_0801A8E0
func_0801A8E0: @ 0x0801A8E0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r6, r0, #0
    mov sl, r1
    adds r0, #8
    lsls r7, r1, #2
    adds r4, r0, r7
    ldr r1, [r4]
    cmp r1, #0
    beq _0801A90C
    ldr r0, [r1, #0x14]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
    movs r0, #0
    str r0, [r4]
_0801A90C:
    movs r5, #0
    mov r0, sl
    cmp r0, #0x5d
    bls _0801A918
    bl sub_0801B464
_0801A918:
    ldr r0, _0801A920 @ =0x0801A924
    adds r0, r7, r0
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0801A920: .4byte 0x0801A924
_0801A924:
    .byte 0x9C, 0xAA, 0x01, 0x08, 0xE4, 0xAE, 0x01, 0x08, 0x04, 0xAF, 0x01, 0x08
    .byte 0x24, 0xAF, 0x01, 0x08, 0x44, 0xAF, 0x01, 0x08, 0x64, 0xAF, 0x01, 0x08, 0x84, 0xAF, 0x01, 0x08
    .byte 0xA4, 0xAF, 0x01, 0x08, 0xC4, 0xAF, 0x01, 0x08, 0xE4, 0xAF, 0x01, 0x08, 0x04, 0xB0, 0x01, 0x08
    .byte 0x24, 0xB0, 0x01, 0x08, 0x44, 0xB0, 0x01, 0x08, 0x64, 0xB0, 0x01, 0x08, 0x84, 0xB0, 0x01, 0x08
    .byte 0xA4, 0xB0, 0x01, 0x08, 0xC4, 0xB0, 0x01, 0x08, 0xE4, 0xB0, 0x01, 0x08, 0x04, 0xB1, 0x01, 0x08
    .byte 0x24, 0xB1, 0x01, 0x08, 0x44, 0xB1, 0x01, 0x08, 0x64, 0xB1, 0x01, 0x08, 0x84, 0xB1, 0x01, 0x08
    .byte 0xA4, 0xB1, 0x01, 0x08, 0xC4, 0xB1, 0x01, 0x08, 0xE4, 0xB1, 0x01, 0x08, 0x04, 0xB2, 0x01, 0x08
    .byte 0x24, 0xB2, 0x01, 0x08, 0x44, 0xB2, 0x01, 0x08, 0x64, 0xB2, 0x01, 0x08, 0x84, 0xB2, 0x01, 0x08
    .byte 0xA4, 0xB2, 0x01, 0x08, 0xC4, 0xB2, 0x01, 0x08, 0xE4, 0xB2, 0x01, 0x08, 0x04, 0xB3, 0x01, 0x08
    .byte 0x24, 0xB3, 0x01, 0x08, 0xCC, 0xAD, 0x01, 0x08, 0xF4, 0xAD, 0x01, 0x08, 0x1C, 0xAE, 0x01, 0x08
    .byte 0x44, 0xAE, 0x01, 0x08, 0x6C, 0xAE, 0x01, 0x08, 0x94, 0xAE, 0x01, 0x08, 0xBC, 0xAE, 0x01, 0x08
    .byte 0xB0, 0xAA, 0x01, 0x08, 0x10, 0xAB, 0x01, 0x08, 0x70, 0xB3, 0x01, 0x08, 0x6C, 0xAB, 0x01, 0x08
    .byte 0x6C, 0xAB, 0x01, 0x08, 0x6C, 0xAB, 0x01, 0x08, 0x6C, 0xAB, 0x01, 0x08, 0x6C, 0xAB, 0x01, 0x08
    .byte 0x6C, 0xAB, 0x01, 0x08, 0x6C, 0xAB, 0x01, 0x08, 0x6C, 0xAB, 0x01, 0x08, 0xFC, 0xAB, 0x01, 0x08
    .byte 0xFC, 0xAB, 0x01, 0x08, 0xFC, 0xAB, 0x01, 0x08, 0xFC, 0xAB, 0x01, 0x08, 0xFC, 0xAB, 0x01, 0x08
    .byte 0xFC, 0xAB, 0x01, 0x08, 0xFC, 0xAB, 0x01, 0x08, 0xFC, 0xAB, 0x01, 0x08, 0xFC, 0xAB, 0x01, 0x08
    .byte 0xFC, 0xAB, 0x01, 0x08, 0xFC, 0xAB, 0x01, 0x08, 0xFC, 0xAB, 0x01, 0x08, 0xFC, 0xAB, 0x01, 0x08
    .byte 0xFC, 0xAB, 0x01, 0x08, 0xFC, 0xAB, 0x01, 0x08, 0xFC, 0xAB, 0x01, 0x08, 0x90, 0xB3, 0x01, 0x08
    .byte 0x90, 0xB3, 0x01, 0x08, 0x90, 0xB3, 0x01, 0x08, 0x90, 0xB3, 0x01, 0x08, 0x74, 0xAD, 0x01, 0x08
    .byte 0xC8, 0xAC, 0x01, 0x08, 0x7E, 0xAC, 0x01, 0x08, 0x7E, 0xAC, 0x01, 0x08, 0x7E, 0xAC, 0x01, 0x08
    .byte 0x7E, 0xAC, 0x01, 0x08, 0x7E, 0xAC, 0x01, 0x08, 0x7E, 0xAC, 0x01, 0x08, 0x7E, 0xAC, 0x01, 0x08
    .byte 0x7E, 0xAC, 0x01, 0x08, 0x54, 0xB3, 0x01, 0x08, 0xBC, 0xB3, 0x01, 0x08, 0xBC, 0xB3, 0x01, 0x08
    .byte 0xBC, 0xB3, 0x01, 0x08, 0xE4, 0xB3, 0x01, 0x08, 0xE4, 0xB3, 0x01, 0x08, 0xE4, 0xB3, 0x01, 0x08
    .byte 0x0C, 0xB4, 0x01, 0x08, 0x2C, 0xB4, 0x01, 0x08, 0x4C, 0xB4, 0x01, 0x08, 0x03, 0x49, 0x70, 0x18
    .byte 0x01, 0x68, 0x30, 0x1C, 0x10, 0xF0, 0x22, 0xFF, 0x00, 0xF0, 0xDB, 0xFC, 0x38, 0x10, 0x00, 0x00
    .byte 0x13, 0x4A, 0xB7, 0x18, 0x3A, 0x68, 0x13, 0x49, 0x50, 0x18, 0x01, 0x78, 0x10, 0x20, 0x08, 0x40
    .byte 0x00, 0x28, 0x01, 0xD0, 0x00, 0xF0, 0xCE, 0xFC, 0x0F, 0x48, 0x14, 0x18, 0x20, 0x1C, 0xF4, 0xF7
    .byte 0x5F, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x06, 0xD1, 0x20, 0x1C, 0xF4, 0xF7, 0x93, 0xFB, 0x02, 0x28
    .byte 0x01, 0xD1, 0x00, 0xF0, 0xBF, 0xFC, 0x44, 0x20, 0xE5, 0xF7, 0x74, 0xFD, 0x3B, 0x68, 0x07, 0x49
    .byte 0x5A, 0x18, 0x5C, 0x31, 0x5B, 0x18, 0x31, 0x1C, 0x05, 0xF0, 0x0A, 0xFC, 0x00, 0xF0, 0xB1, 0xFC
    .byte 0x38, 0x10, 0x00, 0x00, 0x9C, 0x21, 0x00, 0x00, 0x2C, 0x1C, 0x00, 0x00, 0x70, 0x1C, 0x00, 0x00
    .byte 0x13, 0x4A, 0xB0, 0x18, 0x02, 0x68, 0x13, 0x49, 0x50, 0x18, 0x01, 0x78, 0x02, 0x20, 0x08, 0x40
    .byte 0x00, 0x28, 0x01, 0xD0, 0x00, 0xF0, 0x9E, 0xFC, 0x0F, 0x49, 0x50, 0x18, 0x01, 0x78, 0x04, 0x20
    .byte 0x08, 0x40, 0x00, 0x28, 0x01, 0xD0, 0x00, 0xF0, 0x95, 0xFC, 0x10, 0x1C, 0x14, 0x30, 0xEF, 0xF7
    .byte 0x7D, 0xF8, 0x04, 0x1C, 0x00, 0x2C, 0x01, 0xD1, 0x00, 0xF0, 0x8C, 0xFC, 0x40, 0x20, 0xE5, 0xF7
    .byte 0x41, 0xFD, 0x31, 0x1C, 0x22, 0x1C, 0x06, 0xF0, 0xB1, 0xFD, 0x00, 0xF0, 0x82, 0xFC, 0x00, 0x00
    .byte 0x38, 0x10, 0x00, 0x00, 0x9A, 0x21, 0x00, 0x00, 0xA1, 0x21, 0x00, 0x00, 0x57, 0x46, 0x2E, 0x3F
    .byte 0x20, 0x4A, 0xB0, 0x18, 0x00, 0x68, 0x20, 0x49, 0x44, 0x18, 0x20, 0x1C, 0xF4, 0xF7, 0x08, 0xFB
    .byte 0x00, 0x06, 0x00, 0x28, 0x0B, 0xD1, 0x20, 0x1C, 0xF4, 0xF7, 0x3C, 0xFB, 0x03, 0x28, 0x06, 0xD1
    .byte 0x20, 0x1C, 0xF4, 0xF7, 0xD7, 0xFB, 0xB8, 0x42, 0x01, 0xD1, 0x00, 0xF0, 0x63, 0xFC, 0x15, 0x4A
    .byte 0xB4, 0x18, 0x20, 0x68, 0x82, 0x21, 0xC9, 0x00, 0x88, 0x46, 0x40, 0x44, 0xF1, 0xF7, 0x94, 0xFD
    .byte 0x87, 0x42, 0x01, 0xD1, 0x00, 0xF0, 0x56, 0xFC, 0x20, 0x68, 0x82, 0x22, 0xD2, 0x00, 0x80, 0x18
    .byte 0xF1, 0xF7, 0xD6, 0xFC, 0x87, 0x42, 0x01, 0xD3, 0x00, 0xF0, 0x4C, 0xFC, 0x20, 0x68, 0x40, 0x44
    .byte 0x39, 0x1C, 0xF1, 0xF7, 0x5F, 0xFE, 0x04, 0x1C, 0x00, 0x2C, 0x01, 0xD1, 0x00, 0xF0, 0x42, 0xFC
    .byte 0x3C, 0x20, 0xE5, 0xF7, 0xF7, 0xFC, 0x31, 0x1C, 0x22, 0x1C, 0x07, 0xF0, 0xDD, 0xFB, 0x00, 0xF0
    .byte 0x38, 0xFC, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00, 0x2C, 0x1C, 0x00, 0x00, 0x54, 0x46, 0x36, 0x3C
    .byte 0xA1, 0x46, 0x14, 0x48, 0x37, 0x18, 0x38, 0x68, 0xBE, 0x21, 0xC9, 0x00, 0x88, 0x46, 0x40, 0x44
    .byte 0xF2, 0xF7, 0x22, 0xFA, 0x84, 0x42, 0x01, 0xD1, 0x00, 0xF0, 0x24, 0xFC, 0x38, 0x68, 0xBE, 0x22
    .byte 0xD2, 0x00, 0x80, 0x18, 0xF2, 0xF7, 0x26, 0xF9, 0x84, 0x42, 0x01, 0xD3, 0x00, 0xF0, 0x1A, 0xFC
    .byte 0x38, 0x68, 0x40, 0x44, 0x21, 0x1C, 0xF2, 0xF7, 0xCB, 0xFB, 0x04, 0x1C, 0x00, 0x2C, 0x0B, 0xD0
    .byte 0x3C, 0x20, 0xE5, 0xF7, 0xC7, 0xFC, 0x31, 0x1C, 0x22, 0x1C, 0x07, 0xF0, 0xE5, 0xFF, 0x00, 0xF0
    .byte 0x08, 0xFC, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00, 0x38, 0x68, 0x40, 0x44, 0x49, 0x46, 0xF2, 0xF7
    .byte 0xCB, 0xFB, 0x04, 0x1C, 0x00, 0x2C, 0x01, 0xD1, 0x00, 0xF0, 0xFC, 0xFB, 0x3C, 0x20, 0xE5, 0xF7
    .byte 0xB1, 0xFC, 0x31, 0x1C, 0x22, 0x1C, 0x08, 0xF0, 0x17, 0xFE, 0x00, 0xF0, 0xF2, 0xFB, 0x57, 0x46
    .byte 0x4C, 0x3F, 0x10, 0x48, 0x34, 0x18, 0x20, 0x68, 0x82, 0x21, 0xC9, 0x00, 0x40, 0x18, 0xF1, 0xF7
    .byte 0x6F, 0xFC, 0x87, 0x42, 0x01, 0xD3, 0x00, 0xF0, 0xE5, 0xFB, 0x20, 0x68, 0x82, 0x22, 0xD2, 0x00
    .byte 0x80, 0x18, 0x39, 0x1C, 0xF1, 0xF7, 0xFC, 0xFC, 0x04, 0x1C, 0x00, 0x2C, 0x01, 0xD1, 0x00, 0xF0
    .byte 0xD9, 0xFB, 0x18, 0x20, 0xE5, 0xF7, 0x8E, 0xFC, 0x31, 0x1C, 0x22, 0x1C, 0x1D, 0xF0, 0x02, 0xF8
    .byte 0x00, 0xF0, 0xCF, 0xFB, 0x38, 0x10, 0x00, 0x00, 0x25, 0x48, 0x34, 0x18, 0x20, 0x68, 0x25, 0x49
    .byte 0x40, 0x18, 0xF3, 0xF7, 0x35, 0xFE, 0x00, 0x06, 0x00, 0x28, 0x01, 0xD1, 0x00, 0xF0, 0xC2, 0xFB
    .byte 0x20, 0x68, 0x21, 0x4A, 0x84, 0x18, 0x20, 0x1C, 0xF4, 0xF7, 0x52, 0xFA, 0x00, 0x06, 0x00, 0x28
    .byte 0x10, 0xD1, 0x20, 0x1C, 0xF4, 0xF7, 0x86, 0xFA, 0x01, 0x28, 0x0B, 0xD1, 0x20, 0x1C, 0xF4, 0xF7
    .byte 0xAB, 0xFA, 0x01, 0xA9, 0x08, 0x70, 0x08, 0x1C, 0xF3, 0xF7, 0x24, 0xF9, 0x35, 0x28, 0x01, 0xD1
    .byte 0x00, 0xF0, 0xA8, 0xFB, 0x12, 0x48, 0x34, 0x18, 0x20, 0x68, 0x14, 0x49, 0x40, 0x18, 0x35, 0x21
    .byte 0xF4, 0xF7, 0xF8, 0xFC, 0x07, 0x1C, 0x01, 0x20, 0x40, 0x42, 0x87, 0x42, 0x00, 0xD0, 0x99, 0xE3
    .byte 0x20, 0x68, 0xFA, 0x22, 0x52, 0x00, 0x80, 0x18, 0xF1, 0xF7, 0x92, 0xF9, 0x00, 0x28, 0x05, 0xD0
    .byte 0x35, 0x21, 0xF0, 0xF7, 0x7F, 0xFE, 0xB8, 0x42, 0x00, 0xD0, 0x8B, 0xE3, 0x2C, 0x20, 0xE5, 0xF7
    .byte 0x41, 0xFC, 0x22, 0x68, 0x06, 0x49, 0x52, 0x18, 0x31, 0x1C, 0x1D, 0xF0, 0x65, 0xF9, 0x80, 0xE3
    .byte 0x38, 0x10, 0x00, 0x00, 0xD8, 0x1B, 0x00, 0x00, 0x2C, 0x1C, 0x00, 0x00, 0x38, 0x1C, 0x00, 0x00
    .byte 0xCC, 0x1C, 0x00, 0x00, 0x12, 0x4A, 0xB7, 0x18, 0x38, 0x68, 0x12, 0x49, 0x40, 0x18, 0xF3, 0xF7
    .byte 0xD9, 0xFD, 0x00, 0x06, 0x00, 0x28, 0x00, 0xD1, 0x6C, 0xE3, 0x38, 0x68, 0x0E, 0x4A, 0x84, 0x18
    .byte 0x20, 0x1C, 0xF4, 0xF7, 0xFD, 0xF9, 0x00, 0x06, 0x00, 0x28, 0x05, 0xD1, 0x20, 0x1C, 0xF4, 0xF7
    .byte 0x31, 0xFA, 0x04, 0x28, 0x00, 0xD1, 0x5D, 0xE3, 0x1C, 0x20, 0xE5, 0xF7, 0x13, 0xFC, 0x3A, 0x68
    .byte 0xE5, 0x21, 0x49, 0x01, 0x52, 0x18, 0x31, 0x1C, 0x1D, 0xF0, 0x2E, 0xF8, 0x51, 0xE3, 0x00, 0x00
    .byte 0x38, 0x10, 0x00, 0x00, 0xD8, 0x1B, 0x00, 0x00, 0x2C, 0x1C, 0x00, 0x00, 0x44, 0x20, 0xE5, 0xF7
    .byte 0x01, 0xFC, 0x06, 0x4A, 0xB1, 0x18, 0x09, 0x68, 0x05, 0x4A, 0x8B, 0x18, 0x14, 0x31, 0x00, 0x91
    .byte 0x31, 0x1C, 0x00, 0x22, 0x18, 0xF0, 0xA0, 0xFD, 0x3B, 0xE3, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00
    .byte 0xD4, 0x1C, 0x00, 0x00, 0x44, 0x20, 0xE5, 0xF7, 0xED, 0xFB, 0x06, 0x4A, 0xB1, 0x18, 0x09, 0x68
    .byte 0x05, 0x4A, 0x8B, 0x18, 0x14, 0x31, 0x00, 0x91, 0x31, 0x1C, 0x01, 0x22, 0x18, 0xF0, 0x8C, 0xFD
    .byte 0x27, 0xE3, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00, 0xD4, 0x1C, 0x00, 0x00, 0x44, 0x20, 0xE5, 0xF7
    .byte 0xD9, 0xFB, 0x06, 0x4A, 0xB1, 0x18, 0x09, 0x68, 0x05, 0x4A, 0x8B, 0x18, 0x14, 0x31, 0x00, 0x91
    .byte 0x31, 0x1C, 0x02, 0x22, 0x18, 0xF0, 0x78, 0xFD, 0x13, 0xE3, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00
    .byte 0xD4, 0x1C, 0x00, 0x00, 0x44, 0x20, 0xE5, 0xF7, 0xC5, 0xFB, 0x06, 0x4A, 0xB1, 0x18, 0x09, 0x68
    .byte 0x05, 0x4A, 0x8B, 0x18, 0x14, 0x31, 0x00, 0x91, 0x31, 0x1C, 0x03, 0x22, 0x18, 0xF0, 0x64, 0xFD
    .byte 0xFF, 0xE2, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00, 0xD4, 0x1C, 0x00, 0x00, 0x44, 0x20, 0xE5, 0xF7
    .byte 0xB1, 0xFB, 0x06, 0x4A, 0xB1, 0x18, 0x09, 0x68, 0x05, 0x4A, 0x8B, 0x18, 0x14, 0x31, 0x00, 0x91
    .byte 0x31, 0x1C, 0x04, 0x22, 0x18, 0xF0, 0x50, 0xFD, 0xEB, 0xE2, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00
    .byte 0xD4, 0x1C, 0x00, 0x00, 0x44, 0x20, 0xE5, 0xF7, 0x9D, 0xFB, 0x06, 0x4A, 0xB1, 0x18, 0x09, 0x68
    .byte 0x05, 0x4A, 0x8B, 0x18, 0x14, 0x31, 0x00, 0x91, 0x31, 0x1C, 0x05, 0x22, 0x18, 0xF0, 0x3C, 0xFD
    .byte 0xD7, 0xE2, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00, 0xD4, 0x1C, 0x00, 0x00, 0x44, 0x20, 0xE5, 0xF7
    .byte 0x89, 0xFB, 0x06, 0x4A, 0xB1, 0x18, 0x09, 0x68, 0x05, 0x4A, 0x8B, 0x18, 0x14, 0x31, 0x00, 0x91
    .byte 0x31, 0x1C, 0x06, 0x22, 0x18, 0xF0, 0x28, 0xFD, 0xC3, 0xE2, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00
    .byte 0xD4, 0x1C, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x75, 0xFB, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1A, 0xF0, 0x01, 0xFE, 0xB2, 0xE2, 0x38, 0x10, 0x00, 0x00
    .byte 0x44, 0x1D, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x65, 0xFB, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1A, 0xF0, 0x25, 0xFE, 0xA2, 0xE2, 0x38, 0x10, 0x00, 0x00
    .byte 0x58, 0x1D, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x55, 0xFB, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1A, 0xF0, 0x47, 0xFE, 0x92, 0xE2, 0x38, 0x10, 0x00, 0x00
    .byte 0x6C, 0x1D, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x45, 0xFB, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1A, 0xF0, 0xD5, 0xFE, 0x82, 0xE2, 0x38, 0x10, 0x00, 0x00
    .byte 0x84, 0x1D, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x35, 0xFB, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1A, 0xF0, 0xFB, 0xFE, 0x72, 0xE2, 0x38, 0x10, 0x00, 0x00
    .byte 0x98, 0x1D, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x25, 0xFB, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1A, 0xF0, 0x1F, 0xFF, 0x62, 0xE2, 0x38, 0x10, 0x00, 0x00
    .byte 0xAC, 0x1D, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x15, 0xFB, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1A, 0xF0, 0x43, 0xFF, 0x52, 0xE2, 0x38, 0x10, 0x00, 0x00
    .byte 0xC4, 0x1D, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x05, 0xFB, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1A, 0xF0, 0x69, 0xFF, 0x42, 0xE2, 0x38, 0x10, 0x00, 0x00
    .byte 0xD8, 0x1D, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0xF5, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1A, 0xF0, 0x8B, 0xFF, 0x32, 0xE2, 0x38, 0x10, 0x00, 0x00
    .byte 0xEC, 0x1D, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0xE5, 0xFA, 0x05, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0xF0, 0x21, 0x49, 0x01, 0x5A, 0x18, 0x31, 0x1C, 0x1A, 0xF0, 0xAC, 0xFF, 0x21, 0xE2, 0x00, 0x00
    .byte 0x38, 0x10, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0xD5, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1A, 0xF0, 0xD3, 0xFF, 0x12, 0xE2, 0x38, 0x10, 0x00, 0x00
    .byte 0x14, 0x1E, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0xC5, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1A, 0xF0, 0xF7, 0xFF, 0x02, 0xE2, 0x38, 0x10, 0x00, 0x00
    .byte 0x28, 0x1E, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0xB5, 0xFA, 0x05, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0xF2, 0x21, 0x49, 0x01, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x84, 0xF8, 0xF1, 0xE1, 0x00, 0x00
    .byte 0x38, 0x10, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0xA5, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0xA9, 0xF8, 0xE2, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0x54, 0x1E, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x95, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0xCF, 0xF8, 0xD2, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0x68, 0x1E, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x85, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0xF3, 0xF8, 0xC2, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0x7C, 0x1E, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x75, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x17, 0xF9, 0xB2, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0x90, 0x1E, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x65, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x3B, 0xF9, 0xA2, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0xA4, 0x1E, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x55, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x5F, 0xF9, 0x92, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0xB8, 0x1E, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x45, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0xEB, 0xF9, 0x82, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0xD0, 0x1E, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x35, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x0B, 0xFA, 0x72, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0xE4, 0x1E, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x25, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x99, 0xFA, 0x62, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0xFC, 0x1E, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x15, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0xBB, 0xFA, 0x52, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0x10, 0x1F, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x05, 0xFA, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x0F, 0xFB, 0x42, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0x24, 0x1F, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0xF5, 0xF9, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x65, 0xFB, 0x32, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0x38, 0x1F, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0xE5, 0xF9, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0xFB, 0xFB, 0x22, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0x50, 0x1F, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0xD5, 0xF9, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x1F, 0xFC, 0x12, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0x64, 0x1F, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0xC5, 0xF9, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x79, 0xFC, 0x02, 0xE1, 0x38, 0x10, 0x00, 0x00
    .byte 0x7C, 0x1F, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0xB5, 0xF9, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0xE7, 0xFC, 0xF2, 0xE0, 0x38, 0x10, 0x00, 0x00
    .byte 0x90, 0x1F, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0xA5, 0xF9, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x09, 0xFD, 0xE2, 0xE0, 0x38, 0x10, 0x00, 0x00
    .byte 0xA4, 0x1F, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x95, 0xF9, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x29, 0xFD, 0xD2, 0xE0, 0x38, 0x10, 0x00, 0x00
    .byte 0xB8, 0x1F, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x85, 0xF9, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x47, 0xFD, 0xC2, 0xE0, 0x38, 0x10, 0x00, 0x00
    .byte 0xD0, 0x1F, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x75, 0xF9, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0x65, 0xFD, 0xB2, 0xE0, 0x38, 0x10, 0x00, 0x00
    .byte 0xE4, 0x1F, 0x00, 0x00, 0x48, 0x20, 0xE5, 0xF7, 0x65, 0xF9, 0x04, 0x4A, 0xB1, 0x18, 0x0B, 0x68
    .byte 0x03, 0x49, 0x5A, 0x18, 0x31, 0x1C, 0x1B, 0xF0, 0xA3, 0xFA, 0xA2, 0xE0, 0x38, 0x10, 0x00, 0x00
    .byte 0xFC, 0x1F, 0x00, 0x00, 0x09, 0x4A, 0xB7, 0x18, 0x38, 0x68, 0x09, 0x49, 0x40, 0x18, 0x85, 0xF0
    .byte 0x69, 0xFB, 0x04, 0x1C, 0x00, 0x2C, 0x00, 0xD1, 0x94, 0xE0, 0x4C, 0x20, 0xE5, 0xF7, 0x4A, 0xF9
    .byte 0x3B, 0x68, 0x31, 0x1C, 0x22, 0x1C, 0x1B, 0xF0, 0x71, 0xFD, 0x8A, 0xE0, 0x38, 0x10, 0x00, 0x00
    .byte 0xD4, 0x1C, 0x00, 0x00, 0x04, 0x4A, 0xB0, 0x18, 0x01, 0x68, 0x04, 0x48, 0x09, 0x18, 0x30, 0x1C
    .byte 0x1F, 0xF0, 0x1A, 0xFA, 0x7D, 0xE0, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00, 0x94, 0x34, 0x00, 0x00
    .byte 0x54, 0x20, 0xE5, 0xF7, 0x2F, 0xF9, 0x04, 0x4A, 0xB1, 0x18, 0x0A, 0x68, 0x03, 0x49, 0x52, 0x18
    .byte 0x31, 0x1C, 0x1E, 0xF0, 0x8F, 0xFA, 0x6C, 0xE0, 0x38, 0x10, 0x00, 0x00, 0xDC, 0x34, 0x00, 0x00
    .byte 0x55, 0x46, 0x46, 0x3D, 0x07, 0x48, 0x04, 0x68, 0x07, 0x4A, 0xA4, 0x18, 0x34, 0x20, 0xE5, 0xF7
    .byte 0x19, 0xF9, 0x69, 0x00, 0x49, 0x19, 0x89, 0x00, 0x64, 0x18, 0x31, 0x1C, 0x22, 0x1C, 0x17, 0xF0
    .byte 0xC1, 0xFA, 0x56, 0xE0, 0x0C, 0x04, 0x00, 0x03, 0x24, 0x05, 0x00, 0x00, 0x54, 0x46, 0x55, 0x3C
    .byte 0x06, 0x49, 0x70, 0x18, 0x00, 0x68, 0x06, 0x4A, 0x80, 0x18, 0x21, 0x1C, 0x85, 0xF0, 0x84, 0xFB
    .byte 0x01, 0x1C, 0x30, 0x1C, 0x22, 0x1C, 0x1C, 0xF0, 0x41, 0xFB, 0x42, 0xE0, 0x38, 0x10, 0x00, 0x00
    .byte 0xD4, 0x1C, 0x00, 0x00, 0x54, 0x46, 0x58, 0x3C, 0x06, 0x49, 0x70, 0x18, 0x00, 0x68, 0x06, 0x4A
    .byte 0x80, 0x18, 0x21, 0x1C, 0x85, 0xF0, 0x7E, 0xFB, 0x01, 0x1C, 0x30, 0x1C, 0x22, 0x1C, 0x1C, 0xF0
    .byte 0x67, 0xFB, 0x2E, 0xE0, 0x38, 0x10, 0x00, 0x00, 0xD4, 0x1C, 0x00, 0x00, 0x05, 0x49, 0x70, 0x18
    .byte 0x00, 0x68, 0x05, 0x4A, 0x80, 0x18, 0x85, 0xF0, 0x7B, 0xFB, 0x01, 0x1C, 0x30, 0x1C, 0x1C, 0xF0
    .byte 0x93, 0xFB, 0x1E, 0xE0, 0x38, 0x10, 0x00, 0x00, 0xD4, 0x1C, 0x00, 0x00, 0x05, 0x49, 0x70, 0x18
    .byte 0x00, 0x68, 0x05, 0x4A, 0x80, 0x18, 0x85, 0xF0, 0x6D, 0xFB, 0x01, 0x1C, 0x30, 0x1C, 0x1C, 0xF0
    .byte 0x9F, 0xFB, 0x0E, 0xE0, 0x38, 0x10, 0x00, 0x00, 0xD4, 0x1C, 0x00, 0x00, 0x1C, 0x20, 0xE5, 0xF7
    .byte 0xC1, 0xF8, 0x0F, 0x4A, 0xB1, 0x18, 0x0A, 0x68, 0x0E, 0x49, 0x52, 0x18, 0x31, 0x1C, 0x1D, 0xF0
    .byte 0x6F, 0xF9, 0x05, 0x1C

    thumb_func_start sub_0801B464
sub_0801B464: @ 0x0801B464
    cmp r5, #0
    beq _0801B47E
    adds r0, r6, #0
    adds r0, #8
    mov r2, sl
    lsls r1, r2, #2
    adds r0, r0, r1
    str r5, [r0]
    ldr r0, [r5, #0x14]
    ldr r1, [r0, #0x10]
    adds r0, r5, #0
    bl _call_via_r1
_0801B47E:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801B490:
    .byte 0x38, 0x10, 0x00, 0x00, 0x4C, 0x21, 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
    .byte 0xE0, 0xB4, 0x85, 0xB0, 0x0F, 0x1C, 0x91, 0x46, 0x64, 0x21, 0x02, 0x91, 0x01, 0x22, 0x03, 0x92
    .byte 0x03, 0x1C, 0x08, 0x33, 0x04, 0x93, 0xE8, 0x46, 0x0C, 0x30, 0x82, 0x46, 0x54, 0x46, 0x25, 0x68
    .byte 0x00, 0x2D, 0x6B, 0xD0, 0x38, 0x88, 0x80, 0x05, 0x80, 0x0D, 0xA9, 0x88, 0x88, 0x42, 0x65, 0xD1
    .byte 0x69, 0x69, 0x68, 0x46, 0xCA, 0x68, 0x29, 0x1C, 0xB8, 0xF0, 0x1C, 0xFA, 0x4B, 0x46, 0x00, 0x24
    .byte 0x1A, 0x5F, 0x41, 0x46, 0x04, 0x23, 0xC8, 0x5E, 0x12, 0x1A, 0x00, 0x24, 0x08, 0x5F, 0x4B, 0x46
    .byte 0x04, 0x24, 0x19, 0x5F, 0x40, 0x1A, 0x02, 0x40, 0x02, 0x21, 0x58, 0x5E, 0x43, 0x46, 0x06, 0x24
    .byte 0x19, 0x5F, 0x40, 0x1A, 0x02, 0x40, 0x02, 0x21, 0x58, 0x5E, 0x4B, 0x46, 0x06, 0x24, 0x19, 0x5F
    .byte 0x40, 0x1A, 0x02, 0x40, 0x00, 0x2A, 0x41, 0xDA, 0x02, 0x98, 0x64, 0x28, 0x3C, 0xD0, 0x80, 0x00
    .byte 0x04, 0x99, 0x08, 0x18, 0x04, 0x68, 0x0A, 0x23, 0xE2, 0x5E, 0x79, 0x78, 0x89, 0x08, 0x78, 0x88
    .byte 0x22, 0x4B, 0x9C, 0x46, 0x18, 0x40, 0x80, 0x01, 0x08, 0x43, 0x00, 0x04, 0x06, 0x14, 0x93, 0x1B
    .byte 0x00, 0x2B, 0x00, 0xDA, 0x5B, 0x42, 0x0E, 0x20, 0x22, 0x5E, 0xF9, 0x78, 0x89, 0x08, 0xB8, 0x88
    .byte 0x64, 0x46, 0x20, 0x40, 0x80, 0x01, 0x08, 0x43, 0x00, 0x04, 0x04, 0x14, 0x11, 0x1B, 0x00, 0x29
    .byte 0x00, 0xDA, 0x49, 0x42, 0x18, 0x1C, 0x58, 0x43, 0x0A, 0x1C, 0x4A, 0x43, 0x11, 0x1C, 0x42, 0x18
    .byte 0x0A, 0x23, 0xE8, 0x5E, 0x83, 0x1B, 0x00, 0x2B, 0x00, 0xDA, 0x5B, 0x42, 0x0E, 0x21, 0x68, 0x5E
    .byte 0x01, 0x1B, 0x00, 0x29, 0x00, 0xDA, 0x49, 0x42, 0x18, 0x1C, 0x58, 0x43, 0x0B, 0x1C, 0x4B, 0x43
    .byte 0x19, 0x1C, 0x40, 0x18, 0x82, 0x42, 0x01, 0xDB, 0x03, 0x9C, 0x02, 0x94, 0x04, 0x20, 0x82, 0x44
    .byte 0x03, 0x99, 0x01, 0x31, 0x03, 0x91, 0x63, 0x29, 0x88, 0xD9, 0x02, 0x98, 0x05, 0xB0, 0x38, 0xBC
    .byte 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xFF, 0x03, 0x00, 0x00
    .byte 0x70, 0xB5, 0x06, 0x1C, 0x0C, 0x1C, 0x1A, 0x2C, 0x48, 0xD8, 0xA0, 0x00, 0x01, 0x49, 0x40, 0x18
    .byte 0x00, 0x68, 0x87, 0x46, 0xD8, 0xB5, 0x01, 0x08, 0x44, 0xB6, 0x01, 0x08, 0x48, 0xB6, 0x01, 0x08
    .byte 0x48, 0xB6, 0x01, 0x08, 0x4C, 0xB6, 0x01, 0x08, 0x48, 0xB6, 0x01, 0x08, 0x4C, 0xB6, 0x01, 0x08
    .byte 0x58, 0xB6, 0x01, 0x08, 0x58, 0xB6, 0x01, 0x08, 0x58, 0xB6, 0x01, 0x08, 0x5C, 0xB6, 0x01, 0x08
    .byte 0x5C, 0xB6, 0x01, 0x08, 0x5C, 0xB6, 0x01, 0x08, 0x5C, 0xB6, 0x01, 0x08, 0x5C, 0xB6, 0x01, 0x08
    .byte 0x50, 0xB6, 0x01, 0x08, 0x54, 0xB6, 0x01, 0x08, 0x54, 0xB6, 0x01, 0x08, 0x54, 0xB6, 0x01, 0x08
    .byte 0x54, 0xB6, 0x01, 0x08, 0x5C, 0xB6, 0x01, 0x08, 0x5C, 0xB6, 0x01, 0x08, 0x5C, 0xB6, 0x01, 0x08
    .byte 0x5C, 0xB6, 0x01, 0x08, 0x5C, 0xB6, 0x01, 0x08, 0x5C, 0xB6, 0x01, 0x08, 0x5C, 0xB6, 0x01, 0x08
    .byte 0x58, 0xB6, 0x01, 0x08, 0x00, 0x20, 0xCC, 0xE1, 0x01, 0x20, 0xCA, 0xE1, 0x02, 0x20, 0xC8, 0xE1
    .byte 0x03, 0x20, 0xC6, 0xE1, 0x04, 0x20, 0xC4, 0xE1, 0x05, 0x20, 0xC2, 0xE1, 0x06, 0x25, 0x30, 0x68
    .byte 0x41, 0x69, 0x30, 0x1C, 0xB8, 0xF0, 0x54, 0xF9, 0x2F, 0x28, 0x00, 0xD9, 0xA6, 0xE1, 0x80, 0x00
    .byte 0x01, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x7C, 0xB6, 0x01, 0x08, 0x50, 0xB9, 0x01, 0x08
    .byte 0xBC, 0xB9, 0x01, 0x08, 0x3C, 0xB7, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08
    .byte 0xBC, 0xB9, 0x01, 0x08, 0xAC, 0xB9, 0x01, 0x08, 0xB6, 0xB8, 0x01, 0x08, 0xCC, 0xB8, 0x01, 0x08
    .byte 0x9C, 0xB8, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xFC, 0xB8, 0x01, 0x08
    .byte 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08
    .byte 0x38, 0xB8, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08
    .byte 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08
    .byte 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xA0, 0xB7, 0x01, 0x08
    .byte 0xAA, 0xB8, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08
    .byte 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0x56, 0xB9, 0x01, 0x08
    .byte 0xD4, 0xB7, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08
    .byte 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08
    .byte 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0xBC, 0xB9, 0x01, 0x08, 0x20, 0x1C, 0x09, 0x38
    .byte 0x10, 0x28, 0x2B, 0xD8, 0x80, 0x00, 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00
    .byte 0x54, 0xB7, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08
    .byte 0x30, 0xB8, 0x01, 0x08, 0x98, 0xB7, 0x01, 0x08, 0x9C, 0xB7, 0x01, 0x08, 0x9C, 0xB7, 0x01, 0x08
    .byte 0x9C, 0xB7, 0x01, 0x08, 0x9C, 0xB7, 0x01, 0x08, 0x9C, 0xB7, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08
    .byte 0xA4, 0xB9, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08, 0xA4, 0xB9, 0x01, 0x08
    .byte 0x94, 0xB8, 0x01, 0x08, 0xA4, 0xB9, 0x01, 0x08, 0x0B, 0x20, 0x22, 0xE1, 0x0C, 0x25, 0x0D, 0xE1
    .byte 0x20, 0x1C, 0x13, 0x38, 0x06, 0x28, 0x00, 0xD9, 0xFE, 0xE0, 0x80, 0x00, 0x01, 0x49, 0x40, 0x18
    .byte 0x00, 0x68, 0x87, 0x46, 0xB8, 0xB7, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08
    .byte 0xC8, 0xB8, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08, 0xA4, 0xB9, 0x01, 0x08
    .byte 0xEA, 0xB8, 0x01, 0x08, 0x20, 0x1C, 0x09, 0x38, 0x10, 0x28, 0x2B, 0xD8, 0x80, 0x00, 0x02, 0x49
    .byte 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00, 0xEC, 0xB7, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08
    .byte 0xC8, 0xB8, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08, 0x30, 0xB8, 0x01, 0x08, 0x34, 0xB8, 0x01, 0x08
    .byte 0x34, 0xB8, 0x01, 0x08, 0x34, 0xB8, 0x01, 0x08, 0x34, 0xB8, 0x01, 0x08, 0x34, 0xB8, 0x01, 0x08
    .byte 0x34, 0xB8, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08, 0xA4, 0xB9, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08
    .byte 0xEA, 0xB8, 0x01, 0x08, 0xA4, 0xB9, 0x01, 0x08, 0x94, 0xB8, 0x01, 0x08, 0xA4, 0xB9, 0x01, 0x08
    .byte 0x0A, 0x20, 0xD6, 0xE0, 0x0B, 0x25, 0xC1, 0xE0, 0x20, 0x1C, 0x09, 0x38, 0x10, 0x28, 0x2B, 0xD8
    .byte 0x80, 0x00, 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00, 0x50, 0xB8, 0x01, 0x08
    .byte 0xC8, 0xB8, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08, 0x98, 0xB8, 0x01, 0x08
    .byte 0x98, 0xB8, 0x01, 0x08, 0x98, 0xB8, 0x01, 0x08, 0x98, 0xB8, 0x01, 0x08, 0x98, 0xB8, 0x01, 0x08
    .byte 0x98, 0xB8, 0x01, 0x08, 0x98, 0xB8, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08, 0xA4, 0xB9, 0x01, 0x08
    .byte 0xEA, 0xB8, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08, 0xA4, 0xB9, 0x01, 0x08, 0x94, 0xB8, 0x01, 0x08
    .byte 0xA4, 0xB9, 0x01, 0x08, 0x09, 0x20, 0xA4, 0xE0, 0x0A, 0x25, 0x8F, 0xE0, 0x09, 0x2C, 0x2B, 0xDB
    .byte 0x0B, 0x2C, 0x11, 0xDD, 0x0D, 0x2C, 0x20, 0xD0, 0x26, 0xE0, 0x0B, 0x2C, 0x00, 0xDD, 0x84, 0xE0
    .byte 0x09, 0x2C, 0x09, 0xDA, 0x81, 0xE0, 0x0C, 0x2C, 0x17, 0xD0, 0x0C, 0x2C, 0x02, 0xDD, 0x1F, 0x2C
    .byte 0x70, 0xD0, 0x71, 0xE0, 0x09, 0x2C, 0x6F, 0xDB, 0x06, 0x20, 0x8A, 0xE0, 0x1D, 0x2C, 0xFB, 0xD0
    .byte 0x07, 0x25, 0x07, 0x49, 0x70, 0x18, 0x00, 0x68, 0x06, 0x49, 0x40, 0x18, 0x00, 0x78, 0xC0, 0x06
    .byte 0x80, 0x0F, 0x01, 0x28, 0x6A, 0xD1, 0x1C, 0x2C, 0x06, 0xD1, 0x07, 0x20, 0x79, 0xE0, 0x00, 0x00
    .byte 0x38, 0x10, 0x00, 0x00, 0x8E, 0x21, 0x00, 0x00, 0x08, 0x25, 0x5F, 0xE0, 0x09, 0x49, 0x70, 0x18
    .byte 0x00, 0x68, 0x09, 0x49, 0x40, 0x18, 0x09, 0x49, 0x80, 0xF0, 0xC4, 0xFE, 0x00, 0x06, 0x00, 0x28
    .byte 0x54, 0xD0, 0x20, 0x1C, 0x13, 0x38, 0x06, 0x28, 0x46, 0xD8, 0x80, 0x00, 0x04, 0x49, 0x40, 0x18
    .byte 0x00, 0x68, 0x87, 0x46, 0x38, 0x10, 0x00, 0x00, 0x4C, 0x21, 0x00, 0x00, 0x73, 0x01, 0x00, 0x00
    .byte 0x34, 0xB9, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08
    .byte 0xC8, 0xB8, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08, 0xA4, 0xB9, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08
    .byte 0x1E, 0x2C, 0xB9, 0xD0, 0x31, 0xE0, 0x09, 0x49, 0x70, 0x18, 0x00, 0x68, 0x08, 0x49, 0x40, 0x18
    .byte 0xC0, 0x8E, 0xC0, 0x05, 0x80, 0x0F, 0x01, 0x28, 0x28, 0xD1, 0x20, 0x1C, 0x13, 0x38, 0x06, 0x28
    .byte 0x1A, 0xD8, 0x80, 0x00, 0x03, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x38, 0x10, 0x00, 0x00
    .byte 0x4C, 0x21, 0x00, 0x00, 0x88, 0xB9, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08
    .byte 0xC8, 0xB8, 0x01, 0x08, 0xC8, 0xB8, 0x01, 0x08, 0xEA, 0xB8, 0x01, 0x08, 0xA4, 0xB9, 0x01, 0x08
    .byte 0xEA, 0xB8, 0x01, 0x08, 0x08, 0x20, 0x1C, 0xE0, 0x09, 0x25, 0x07, 0xE0, 0x20, 0x2C, 0x04, 0xD1
    .byte 0x8A, 0xE7, 0x01, 0x20, 0x08, 0x70, 0x10, 0x1C, 0x13, 0xE0, 0x07, 0x25, 0xCE, 0x20, 0x40, 0x00
    .byte 0x31, 0x18, 0x2A, 0x1C, 0x16, 0x2A, 0x0B, 0xD2, 0x50, 0x01, 0x80, 0x18, 0x80, 0x00, 0xA1, 0x30
    .byte 0x41, 0x18, 0x08, 0x78, 0x00, 0x28, 0xEC, 0xD0, 0x84, 0x31, 0x01, 0x32, 0x16, 0x2A, 0xF8, 0xD3
    .byte 0x15, 0x20, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
    .byte 0xE0, 0xB4, 0xB0, 0xB0, 0x07, 0x1C, 0x88, 0x46, 0x24, 0x92, 0x1B, 0x06, 0x1B, 0x0E, 0x9A, 0x46
    .byte 0x78, 0x68, 0x40, 0x68, 0x88, 0xF0, 0x48, 0xFE, 0x24, 0x30, 0x00, 0x78, 0x00, 0x28, 0x14, 0xD0
    .byte 0xDE, 0x20, 0x40, 0x00, 0x3C, 0x18, 0x24, 0x99, 0x48, 0x01, 0x40, 0x18, 0x80, 0x00, 0x24, 0x18
    .byte 0x20, 0x1C, 0x41, 0x46, 0x20, 0x22, 0xB7, 0xF0, 0xB5, 0xFF, 0x21, 0x1C, 0x82, 0x31, 0x01, 0x20
    .byte 0x08, 0x70, 0x83, 0x34, 0x52, 0x46, 0x22, 0x70, 0x3D, 0xE3, 0x78, 0x68, 0x01, 0x68, 0x05, 0x4B
    .byte 0xF8, 0x18, 0x00, 0x68, 0x08, 0x30, 0x2E, 0x29, 0x0A, 0xD0, 0x2E, 0x29, 0x04, 0xDD, 0x2F, 0x29
    .byte 0x08, 0xD0, 0x09, 0xE0, 0x38, 0x10, 0x00, 0x00, 0x2C, 0x29, 0x05, 0xDB, 0x00, 0x23, 0x04, 0xE0
    .byte 0x01, 0x23, 0x02, 0xE0, 0x02, 0x23, 0x00, 0xE0, 0x03, 0x68, 0x22, 0x4C, 0x38, 0x19, 0x01, 0x78
    .byte 0x1E, 0x22, 0xCE, 0x25, 0x6D, 0x00, 0xED, 0x19, 0xA9, 0x46, 0x1F, 0x4E, 0xB8, 0x19, 0x06, 0x68
    .byte 0x25, 0x91, 0x52, 0x1A, 0x26, 0x92, 0xDE, 0x20, 0x40, 0x00, 0x3C, 0x18, 0x24, 0x99, 0x4D, 0x01
    .byte 0x68, 0x18, 0x80, 0x00, 0x24, 0x18, 0x20, 0x1C, 0x41, 0x46, 0x20, 0x22, 0x2F, 0x93, 0xB7, 0xF0
    .byte 0x79, 0xFF, 0x22, 0x1C, 0x82, 0x32, 0x01, 0x20, 0x84, 0x46, 0x61, 0x46, 0x11, 0x70, 0x20, 0x1C
    .byte 0x83, 0x30, 0x51, 0x46, 0x01, 0x70, 0xA0, 0x46, 0x28, 0x95, 0x2F, 0x9B, 0x54, 0x46, 0x00, 0x2C
    .byte 0x1C, 0xD1, 0x41, 0x46, 0x20, 0x31, 0x40, 0x46, 0x68, 0xC8, 0x68, 0xC1, 0x70, 0xC8, 0x70, 0xC1
    .byte 0x18, 0xC8, 0x18, 0xC1, 0x41, 0x46, 0x40, 0x31, 0x40, 0x46, 0x68, 0xC8, 0x68, 0xC1, 0x70, 0xC8
    .byte 0x70, 0xC1, 0x18, 0xC8, 0x18, 0xC1, 0x65, 0x46, 0x15, 0x70, 0xDE, 0x26, 0x76, 0x00, 0xF6, 0x19
    .byte 0xB2, 0x46, 0xB2, 0xE2, 0x4C, 0x10, 0x00, 0x00, 0x48, 0x10, 0x00, 0x00, 0x2E, 0x92, 0xDE, 0x20
    .byte 0x40, 0x00, 0xC0, 0x19, 0x82, 0x46, 0x04, 0x2B, 0x00, 0xD9, 0xA3, 0xE2, 0x98, 0x00, 0x02, 0x49
    .byte 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00, 0x1C, 0xBB, 0x01, 0x08, 0x30, 0xBB, 0x01, 0x08
    .byte 0x88, 0xBD, 0x01, 0x08, 0x88, 0xBD, 0x01, 0x08, 0x30, 0xBB, 0x01, 0x08, 0x30, 0xBB, 0x01, 0x08
    .byte 0x01, 0x2E, 0x00, 0xD1, 0x9C, 0xE0, 0x01, 0x2E, 0x08, 0xDC, 0x00, 0x2E, 0x62, 0xD0, 0x41, 0x46
    .byte 0x82, 0x31, 0x2E, 0x91, 0x20, 0x22, 0x4A, 0x44, 0x92, 0x46, 0x83, 0xE2, 0x02, 0x2E, 0x00, 0xD1
    .byte 0xBE, 0xE0, 0x43, 0x46, 0x82, 0x33, 0x2E, 0x93, 0x20, 0x24, 0x4C, 0x44, 0xA2, 0x46, 0x03, 0x2E
    .byte 0x00, 0xD0, 0x77, 0xE2, 0x08, 0xAA, 0x0A, 0x23, 0x11, 0x78, 0x20, 0x20, 0x40, 0x42, 0x08, 0x40
    .byte 0x18, 0x43, 0x10, 0x70, 0xA0, 0x23, 0x9B, 0x00, 0x11, 0x88, 0x1E, 0x48, 0x08, 0x40, 0x18, 0x43
    .byte 0x10, 0x80, 0x40, 0x46, 0x20, 0x30, 0x1C, 0x4B, 0x09, 0x93, 0x69, 0x46, 0x16, 0x1C, 0x05, 0x1C
    .byte 0x0A, 0xAF, 0x0B, 0xAC, 0xA1, 0x46, 0x14, 0x1C, 0xA5, 0x45, 0x04, 0xD0, 0x1C, 0x1C, 0x0C, 0x80
    .byte 0x02, 0x31, 0xB1, 0x42, 0xFB, 0xD1, 0x13, 0x68, 0x69, 0x46, 0x42, 0x46, 0x13, 0x4C, 0xB7, 0xF0
    .byte 0xB5, 0xFE, 0x09, 0x23, 0x0A, 0xAA, 0x11, 0x78, 0x20, 0x20, 0x40, 0x42, 0x08, 0x40, 0x18, 0x43
    .byte 0x10, 0x70, 0xA8, 0x23, 0x9B, 0x00, 0x11, 0x88, 0x0A, 0x48, 0x08, 0x40, 0x18, 0x43, 0x10, 0x80
    .byte 0x2C, 0x1C, 0x20, 0x34, 0x3B, 0x1C, 0x0A, 0x48, 0x0B, 0x90, 0x68, 0x46, 0x08, 0xA9, 0x8D, 0x45
    .byte 0x00, 0xD1, 0xD5, 0xE1, 0x4D, 0x46, 0x2A, 0x68, 0x02, 0x80, 0x02, 0x30, 0x88, 0x42, 0xFB, 0xD1
    .byte 0xCE, 0xE1, 0x00, 0x00, 0x1F, 0xFC, 0xFF, 0xFF, 0x29, 0x25, 0x00, 0x00, 0x2C, 0x0C, 0x00, 0x03
    .byte 0xAA, 0x1B, 0x00, 0x00, 0x0C, 0xAA, 0x09, 0x23, 0x11, 0x78, 0x20, 0x20, 0x40, 0x42, 0x08, 0x40
    .byte 0x18, 0x43, 0x10, 0x70, 0xA8, 0x23, 0x9B, 0x00, 0x11, 0x88, 0x12, 0x48, 0x08, 0x40, 0x18, 0x43
    .byte 0x10, 0x80, 0x40, 0x46, 0x20, 0x30, 0x10, 0x4E, 0x0D, 0x96, 0x69, 0x46, 0x08, 0xAC, 0x05, 0x1C
    .byte 0x43, 0x46, 0x82, 0x33, 0x2E, 0x93, 0x20, 0x23, 0x4B, 0x44, 0x9A, 0x46, 0xA5, 0x45, 0x03, 0xD0
    .byte 0x0E, 0x80, 0x02, 0x31, 0xA1, 0x42, 0xFB, 0xD1, 0x13, 0x68, 0x69, 0x46, 0x42, 0x46, 0x07, 0x4C
    .byte 0xB7, 0xF0, 0x64, 0xFE, 0x28, 0x1C, 0x20, 0x30, 0x41, 0x46, 0x20, 0x22, 0xB7, 0xF0, 0x9A, 0xFE
    .byte 0xF8, 0xE1, 0x00, 0x00, 0x1F, 0xFC, 0xFF, 0xFF, 0xAA, 0x1B, 0x00, 0x00, 0x2C, 0x0C, 0x00, 0x03
    .byte 0x44, 0x46, 0x20, 0x34, 0x20, 0x1C, 0x41, 0x46, 0x20, 0x22, 0xB7, 0xF0, 0x8B, 0xFE, 0x0E, 0xAA
    .byte 0x03, 0x23, 0x11, 0x78, 0x20, 0x20, 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0xD8, 0x23
    .byte 0x9B, 0x00, 0x11, 0x88, 0x0D, 0x48, 0x08, 0x40, 0x18, 0x43, 0x10, 0x80, 0x20, 0x34, 0x08, 0x20
    .byte 0x46, 0x01, 0x20, 0x21, 0x0E, 0x43, 0x80, 0x02, 0x06, 0x43, 0x0F, 0x96, 0x68, 0x46, 0x08, 0xA9
    .byte 0x45, 0x46, 0x82, 0x35, 0x2E, 0x95, 0x20, 0x23, 0x4B, 0x44, 0x9A, 0x46, 0x8D, 0x45, 0x03, 0xD0
    .byte 0x06, 0x80, 0x02, 0x30, 0x88, 0x42, 0xFB, 0xD1, 0x13, 0x68, 0x62, 0xE1, 0x1F, 0xFC, 0xFF, 0xFF
    .byte 0x10, 0xAA, 0x03, 0x23, 0x11, 0x78, 0x20, 0x20, 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70
    .byte 0xD8, 0x23, 0x9B, 0x00, 0x11, 0x88, 0x25, 0x48, 0x08, 0x40, 0x18, 0x43, 0x10, 0x80, 0x47, 0x46
    .byte 0x20, 0x37, 0x13, 0x1C, 0x08, 0x20, 0x42, 0x01, 0x20, 0x21, 0x0A, 0x43, 0x80, 0x02, 0x02, 0x43
    .byte 0x11, 0x92, 0x6C, 0x46, 0x08, 0xAE, 0x3D, 0x1C, 0x68, 0x46, 0x48, 0x30, 0x29, 0x90, 0x69, 0x46
    .byte 0x4C, 0x31, 0x2A, 0x91, 0x40, 0x46, 0x82, 0x30, 0x2E, 0x90, 0x20, 0x21, 0x49, 0x44, 0x8A, 0x46
    .byte 0xB5, 0x45, 0x04, 0xD0, 0x10, 0x1C, 0x20, 0x80, 0x02, 0x34, 0xB4, 0x42, 0xFB, 0xD1, 0x1B, 0x68
    .byte 0x38, 0x1C, 0x69, 0x46, 0x42, 0x46, 0x12, 0x4C, 0xB7, 0xF0, 0xF0, 0xFD, 0x0A, 0x23, 0x12, 0xAA
    .byte 0x11, 0x78, 0x20, 0x20, 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0xA0, 0x23, 0x9B, 0x00
    .byte 0x11, 0x88, 0x0A, 0x48, 0x08, 0x40, 0x18, 0x43, 0x10, 0x80, 0x2C, 0x1C, 0x20, 0x34, 0x29, 0x9B
    .byte 0x08, 0x48, 0x13, 0x90, 0x68, 0x46, 0x08, 0xA9, 0x8D, 0x45, 0x00, 0xD1, 0x10, 0xE1, 0x2A, 0x9D
    .byte 0x2A, 0x68, 0x02, 0x80, 0x02, 0x30, 0x88, 0x42, 0xFB, 0xD1, 0x09, 0xE1, 0x1F, 0xFC, 0xFF, 0xFF
    .byte 0x2C, 0x0C, 0x00, 0x03, 0x29, 0x25, 0x00, 0x00, 0x01, 0x2E, 0x00, 0xD1, 0xB6, 0xE0, 0x01, 0x2E
    .byte 0x08, 0xDC, 0x00, 0x2E, 0x60, 0xD0, 0x46, 0x46, 0x82, 0x36, 0x2E, 0x96, 0x20, 0x20, 0x48, 0x44
    .byte 0x82, 0x46, 0x57, 0xE1, 0x02, 0x2E, 0x00, 0xD1, 0x00, 0xE1, 0x41, 0x46, 0x82, 0x31, 0x2E, 0x91
    .byte 0x20, 0x22, 0x4A, 0x44, 0x92, 0x46, 0x03, 0x2E, 0x00, 0xD0, 0x4B, 0xE1, 0x14, 0xAA, 0x0A, 0x23
    .byte 0x11, 0x78, 0x20, 0x20, 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0xA0, 0x23, 0x9B, 0x00
    .byte 0x11, 0x88, 0x1D, 0x48, 0x08, 0x40, 0x18, 0x43, 0x10, 0x80, 0x40, 0x46, 0x20, 0x30, 0x1B, 0x4E
    .byte 0x15, 0x96, 0x69, 0x46, 0x08, 0xAC, 0x05, 0x1C, 0x16, 0xAF, 0x17, 0xAB, 0x99, 0x46, 0xA5, 0x45
    .byte 0x03, 0xD0, 0x0E, 0x80, 0x02, 0x31, 0xA1, 0x42, 0xFB, 0xD1, 0x13, 0x68, 0x69, 0x46, 0x42, 0x46
    .byte 0x13, 0x4C, 0xB7, 0xF0, 0x8B, 0xFD, 0x0A, 0x23, 0x16, 0xAA, 0x11, 0x78, 0x20, 0x20, 0x40, 0x42
    .byte 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0xA0, 0x23, 0x9B, 0x00, 0x11, 0x88, 0x0A, 0x48, 0x08, 0x40
    .byte 0x18, 0x43, 0x10, 0x80, 0x2C, 0x1C, 0x20, 0x34, 0x3B, 0x1C, 0x0A, 0x48, 0x17, 0x90, 0x68, 0x46
    .byte 0x08, 0xA9, 0x8D, 0x45, 0x00, 0xD1, 0xAB, 0xE0, 0x4D, 0x46, 0x2A, 0x68, 0x02, 0x80, 0x02, 0x30
    .byte 0x88, 0x42, 0xFB, 0xD1, 0xA4, 0xE0, 0x00, 0x00, 0x1F, 0xFC, 0xFF, 0xFF, 0x29, 0x25, 0x00, 0x00
    .byte 0x2C, 0x0C, 0x00, 0x03, 0x32, 0x6A, 0x00, 0x00, 0x18, 0xAA, 0x0A, 0x23, 0x11, 0x78, 0x20, 0x20
    .byte 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0xA0, 0x23, 0x9B, 0x00, 0x11, 0x88, 0x20, 0x48
    .byte 0x08, 0x40, 0x18, 0x43, 0x10, 0x80, 0x40, 0x46, 0x20, 0x30, 0x1E, 0x4E, 0x19, 0x96, 0x69, 0x46
    .byte 0x08, 0xAC, 0x05, 0x1C, 0x1A, 0xAF, 0x6B, 0x46, 0x6C, 0x33, 0x2B, 0x93, 0x43, 0x46, 0x82, 0x33
    .byte 0x2E, 0x93, 0x20, 0x23, 0x4B, 0x44, 0x9A, 0x46, 0xA5, 0x45, 0x03, 0xD0, 0x0E, 0x80, 0x02, 0x31
    .byte 0xA1, 0x42, 0xFB, 0xD1, 0x13, 0x68, 0x69, 0x46, 0x42, 0x46, 0x13, 0x4C, 0xB7, 0xF0, 0x36, 0xFD
    .byte 0x0A, 0x23, 0x1A, 0xAA, 0x11, 0x78, 0x20, 0x20, 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70
    .byte 0xA0, 0x23, 0x9B, 0x00, 0x11, 0x88, 0x0A, 0x48, 0x08, 0x40, 0x18, 0x43, 0x10, 0x80, 0x2C, 0x1C
    .byte 0x20, 0x34, 0x3B, 0x1C, 0x07, 0x48, 0x1B, 0x90, 0x68, 0x46, 0x08, 0xA9, 0x8D, 0x45, 0x57, 0xD0
    .byte 0x2B, 0x9D, 0x2A, 0x68, 0x02, 0x80, 0x02, 0x30, 0x88, 0x42, 0xFB, 0xD1, 0x50, 0xE0, 0x00, 0x00
    .byte 0x1F, 0xFC, 0xFF, 0xFF, 0x32, 0x6A, 0x00, 0x00, 0x2C, 0x0C, 0x00, 0x03, 0x1C, 0xAA, 0x0A, 0x23
    .byte 0x11, 0x78, 0x20, 0x20, 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0xA0, 0x23, 0x9B, 0x00
    .byte 0x11, 0x88, 0x23, 0x48, 0x08, 0x40, 0x18, 0x43, 0x10, 0x80, 0x40, 0x46, 0x20, 0x30, 0x21, 0x4E
    .byte 0x1D, 0x96, 0x69, 0x46, 0x08, 0xAC, 0x05, 0x1C, 0x1E, 0xAF, 0x6B, 0x46, 0x7C, 0x33, 0x2C, 0x93
    .byte 0x43, 0x46, 0x82, 0x33, 0x2E, 0x93, 0x20, 0x23, 0x4B, 0x44, 0x9A, 0x46, 0xA5, 0x45, 0x03, 0xD0
    .byte 0x0E, 0x80, 0x02, 0x31, 0xA1, 0x42, 0xFB, 0xD1, 0x13, 0x68, 0x69, 0x46, 0x42, 0x46, 0x16, 0x4C
    .byte 0xB7, 0xF0, 0xE4, 0xFC, 0x0A, 0x23, 0x1E, 0xAA, 0x11, 0x78, 0x20, 0x20, 0x40, 0x42, 0x08, 0x40
    .byte 0x18, 0x43, 0x10, 0x70, 0xA0, 0x23, 0x9B, 0x00, 0x11, 0x88, 0x0D, 0x48, 0x08, 0x40, 0x18, 0x43
    .byte 0x10, 0x80, 0x2C, 0x1C, 0x20, 0x34, 0x3B, 0x1C, 0x0A, 0x48, 0x1F, 0x90, 0x68, 0x46, 0x08, 0xA9
    .byte 0x8D, 0x45, 0x05, 0xD0, 0x2C, 0x9D, 0x2A, 0x68, 0x02, 0x80, 0x02, 0x30, 0x88, 0x42, 0xFB, 0xD1
    .byte 0x1B, 0x68, 0x20, 0x1C, 0x69, 0x46, 0x42, 0x46, 0x03, 0x4C, 0xB7, 0xF0, 0xBF, 0xFC, 0x59, 0xE0
    .byte 0x1F, 0xFC, 0xFF, 0xFF, 0x32, 0x6A, 0x00, 0x00, 0x2C, 0x0C, 0x00, 0x03, 0x20, 0xAA, 0x0A, 0x23
    .byte 0x11, 0x78, 0x20, 0x20, 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0xA0, 0x23, 0x9B, 0x00
    .byte 0x11, 0x88, 0x41, 0x48, 0x08, 0x40, 0x18, 0x43, 0x10, 0x80, 0x46, 0x46, 0x20, 0x36, 0x3F, 0x4C
    .byte 0x21, 0xA8, 0x04, 0x60, 0x68, 0x46, 0x08, 0xA9, 0x35, 0x1C, 0x22, 0xAF, 0x6B, 0x46, 0x8C, 0x33
    .byte 0x2D, 0x93, 0x43, 0x46, 0x82, 0x33, 0x2E, 0x93, 0x20, 0x23, 0x4B, 0x44, 0x9A, 0x46, 0x8D, 0x45
    .byte 0x03, 0xD0, 0x04, 0x80, 0x02, 0x30, 0x88, 0x42, 0xFB, 0xD1, 0x13, 0x68, 0x30, 0x1C, 0x69, 0x46
    .byte 0x42, 0x46, 0x33, 0x4C, 0xB7, 0xF0, 0x8A, 0xFC, 0x0A, 0x23, 0x22, 0xAA, 0x11, 0x78, 0x20, 0x20
    .byte 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0xA0, 0x23, 0x9B, 0x00, 0x11, 0x88, 0x2A, 0x48
    .byte 0x08, 0x40, 0x18, 0x43, 0x10, 0x80, 0x2C, 0x1C, 0x20, 0x34, 0x3B, 0x1C, 0x29, 0x48, 0x2D, 0x9D
    .byte 0x28, 0x60, 0x68, 0x46, 0x08, 0xA9, 0x23, 0xAA, 0x8D, 0x45, 0x04, 0xD0, 0x12, 0x68, 0x02, 0x80
    .byte 0x02, 0x30, 0x88, 0x42, 0xFB, 0xD1, 0x1B, 0x68, 0x20, 0x1C, 0x69, 0x46, 0x42, 0x46, 0x20, 0x4C
    .byte 0xB7, 0xF0, 0x64, 0xFC, 0x01, 0x20, 0x2E, 0x9E, 0x30, 0x70, 0x28, 0x99, 0x24, 0x9A, 0x88, 0x18
    .byte 0x80, 0x00, 0x53, 0x46, 0x1D, 0x18, 0x28, 0x1C, 0x60, 0x30, 0x29, 0x1C, 0x20, 0x31, 0x2A, 0x1C
    .byte 0x40, 0x32, 0x1F, 0x23, 0x25, 0x9C, 0x1C, 0x40, 0x20, 0x23, 0x5B, 0x42, 0x27, 0x9E, 0x33, 0x40
    .byte 0x23, 0x43, 0x1B, 0x06, 0x1B, 0x0E, 0x14, 0x4C, 0x26, 0x40, 0x1E, 0x43, 0x1F, 0x23, 0x26, 0x9C
    .byte 0x1C, 0x40, 0x64, 0x01, 0x0C, 0x4B, 0x33, 0x40, 0x23, 0x43, 0x1B, 0x04, 0x1B, 0x0C, 0x0F, 0x4C
    .byte 0x26, 0x40, 0x1E, 0x43, 0x27, 0x96, 0x33, 0x1C, 0x09, 0x4C, 0xB7, 0xF0, 0x37, 0xFC, 0x29, 0x1C
    .byte 0x82, 0x31, 0x01, 0x20, 0x08, 0x70, 0x30, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46
    .byte 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x1F, 0xFC, 0xFF, 0xFF, 0x32, 0x6A, 0x00, 0x00
    .byte 0x2C, 0x0C, 0x00, 0x03, 0x29, 0x25, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF
    .byte 0x03, 0x4A, 0x83, 0x18, 0x01, 0x22, 0x1A, 0x70, 0x02, 0x4A, 0x80, 0x18, 0x01, 0x70, 0x70, 0x47
    .byte 0xC8, 0x10, 0x00, 0x00, 0xC9, 0x10, 0x00, 0x00

    thumb_func_start func_0801C0F8
func_0801C0F8: @ 0x0801C0F8
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    adds r3, r1, #0
    adds r4, r2, #0
    movs r7, #0
    ldrh r0, [r3]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    cmp r0, #2
    bne _0801C182
    ldrb r1, [r3, #1]
    lsrs r1, r1, #2
    ldrh r0, [r3, #2]
    ldr r5, _0801C18C @ =0x000003FF
    ands r0, r5
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0
    bge _0801C124
    adds r0, #7
_0801C124:
    asrs r2, r0, #3
    ldrb r1, [r3, #3]
    lsrs r1, r1, #2
    ldrh r0, [r3, #4]
    ands r0, r5
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0
    bge _0801C13C
    adds r0, #7
_0801C13C:
    asrs r0, r0, #3
    cmp r2, #0x22
    blo _0801C182
    cmp r0, #0x16
    blo _0801C182
    cmp r2, #0x77
    bhi _0801C182
    cmp r0, #0x47
    bhi _0801C182
    adds r3, r2, #0
    subs r3, #0x22
    lsrs r3, r3, #1
    adds r2, r0, #0
    subs r2, #0x16
    lsrs r2, r2, #1
    ldr r1, _0801C190 @ =0x00001038
    adds r0, r6, r1
    ldr r1, [r0]
    ldr r0, _0801C194 @ =0x000009DC
    adds r1, r1, r0
    movs r0, #0x2b
    muls r0, r2, r0
    adds r0, r3, r0
    lsls r0, r0, #2
    adds r1, r1, r0
    str r1, [r4]
    lsls r0, r3, #1
    adds r0, #0x22
    strh r0, [r4, #4]
    lsls r0, r2, #1
    adds r0, #0x16
    strh r0, [r4, #6]
    strh r3, [r4, #8]
    strh r2, [r4, #0xa]
    movs r7, #1
_0801C182:
    adds r0, r7, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0801C18C: .4byte 0x000003FF
_0801C190: .4byte 0x00001038
_0801C194: .4byte 0x000009DC

    thumb_func_start func_0801C198
func_0801C198: @ 0x0801C198
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    adds r4, r0, #0
    adds r3, r1, #0
    adds r7, r2, #0
    movs r0, #0
    mov sb, r0
    ldrh r0, [r3]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    subs r0, #0x34
    ldr r1, _0801C20C @ =0x000001FF
    cmp r0, r1
    bhi _0801C28C
    ldr r1, _0801C210 @ =0x00001038
    adds r0, r4, r1
    ldr r0, [r0]
    ldr r1, _0801C214 @ =0x00002E58
    adds r6, r0, r1
    ldrb r1, [r3, #1]
    lsrs r1, r1, #2
    ldrh r0, [r3, #2]
    ldr r2, _0801C218 @ =0x000003FF
    ands r0, r2
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0
    bge _0801C1DC
    adds r0, #7
_0801C1DC:
    asrs r5, r0, #3
    ldrb r1, [r3, #3]
    lsrs r1, r1, #2
    ldrh r0, [r3, #4]
    ands r0, r2
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0
    bge _0801C1F4
    adds r0, #7
_0801C1F4:
    asrs r4, r0, #3
    adds r0, r6, #0
    bl func_0809D8A0
    cmp r0, #4
    bhi _0801C240
    lsls r0, r0, #2
    ldr r1, _0801C21C @ =_0801C220
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0801C20C: .4byte 0x000001FF
_0801C210: .4byte 0x00001038
_0801C214: .4byte 0x00002E58
_0801C218: .4byte 0x000003FF
_0801C21C: .4byte _0801C220
_0801C220: @ jump table
    .4byte _0801C240 @ case 0
    .4byte _0801C234 @ case 1
    .4byte _0801C240 @ case 2
    .4byte _0801C23A @ case 3
    .4byte _0801C240 @ case 4
_0801C234:
    movs r1, #2
    mov r8, r1
    b _0801C244
_0801C23A:
    movs r1, #2
    mov r8, r1
    b _0801C244
_0801C240:
    movs r0, #2
    mov r8, r0
_0801C244:
    movs r3, #7
    cmp r5, #2
    blo _0801C28C
    cmp r4, r3
    blo _0801C28C
    adds r0, r6, #0
    str r3, [sp]
    bl func_0809D8A4
    lsls r0, r0, #1
    add r0, r8
    cmp r0, r5
    bls _0801C28C
    adds r0, r6, #0
    bl func_0809D8B8
    lsls r0, r0, #1
    ldr r3, [sp]
    adds r0, r3, r0
    cmp r0, r4
    bls _0801C28C
    mov r1, r8
    subs r2, r5, r1
    lsrs r2, r2, #1
    subs r1, r4, r3
    lsrs r1, r1, #1
    lsls r0, r2, #1
    add r0, r8
    strh r0, [r7]
    lsls r0, r1, #1
    adds r0, r3, r0
    strh r0, [r7, #2]
    strh r2, [r7, #4]
    strh r1, [r7, #6]
    movs r0, #1
    mov sb, r0
_0801C28C:
    mov r0, sb
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_0801C29C
func_0801C29C: @ 0x0801C29C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x10
    adds r5, r0, #0
    adds r7, r1, #0
    movs r6, #0
    add r0, sp, #4
    str r6, [sp, #4]
    strh r6, [r0, #4]
    strh r6, [r0, #6]
    strh r6, [r0, #8]
    strh r6, [r0, #0xa]
    adds r0, r5, #0
    add r2, sp, #4
    bl func_0801C0F8
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0801C2C6
    b _0801C3C8
_0801C2C6:
    ldr r2, [sp, #4]
    movs r1, #0
    ldr r0, _0801C338 @ =0x00001038
    adds r4, r5, r0
    ldr r0, [r4]
    ldr r0, [r0, #8]
    cmp r0, #0
    bne _0801C2D8
    movs r1, #1
_0801C2D8:
    adds r0, r2, #0
    bl func_0800A190
    adds r6, r0, #0
    ldr r0, [r5]
    ldr r1, [r0, #0x14]
    adds r0, r5, #0
    bl _call_via_r1
    ldrh r1, [r7]
    lsls r1, r1, #0x16
    lsrs r1, r1, #0x16
    cmp r0, r1
    bne _0801C3AA
    ldr r2, [r5, #4]
    mov r8, r2
    add r1, sp, #4
    adds r2, r1, #0
    ldr r0, [r4]
    ldr r3, _0801C33C @ =0x000009DC
    adds r4, r0, r3
    ldrh r3, [r1, #8]
    ldrh r2, [r2, #0xa]
    movs r0, #0x2b
    muls r0, r2, r0
    adds r0, r3, r0
    lsls r0, r0, #2
    adds r7, r4, r0
    adds r1, r2, #1
    movs r0, #0
    cmp r3, #0
    blt _0801C326
    cmp r1, #0
    blt _0801C326
    cmp r3, #0x2a
    bgt _0801C326
    cmp r1, #0x18
    bgt _0801C326
    movs r0, #1
_0801C326:
    cmp r0, #0
    beq _0801C340
    movs r0, #0x2b
    muls r0, r1, r0
    adds r0, r3, r0
    lsls r0, r0, #2
    adds r1, r4, r0
    b _0801C342
    .align 2, 0
_0801C338: .4byte 0x00001038
_0801C33C: .4byte 0x000009DC
_0801C340:
    movs r1, #0
_0801C342:
    subs r2, #1
    movs r0, #0
    cmp r3, #0
    blt _0801C358
    cmp r2, #0
    blt _0801C358
    cmp r3, #0x2a
    bgt _0801C358
    cmp r2, #0x18
    bgt _0801C358
    movs r0, #1
_0801C358:
    cmp r0, #0
    beq _0801C390
    movs r0, #0x2b
    muls r0, r2, r0
    adds r0, r3, r0
    lsls r0, r0, #2
    adds r2, r4, r0
    b _0801C392
_0801C368:
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #2
    orrs r0, r1
    strb r0, [r2]
    add r0, sp, #4
    ldrh r1, [r0, #4]
    ldr r2, _0801C38C @ =0x00001084
    adds r0, r3, r2
    strh r1, [r0]
    add r0, sp, #4
    ldrh r1, [r0, #6]
    adds r2, #2
    adds r0, r3, r2
    strh r1, [r0]
    b _0801C3C8
    .align 2, 0
_0801C38C: .4byte 0x00001084
_0801C390:
    movs r2, #0
_0801C392:
    adds r0, r7, #0
    bl func_0800AF5C
    add r1, sp, #4
    ldrh r1, [r1, #4]
    add r2, sp, #4
    ldrh r2, [r2, #6]
    ldr r3, [sp, #4]
    str r0, [sp]
    mov r0, r8
    bl func_080AA6D0
_0801C3AA:
    cmp r6, #3
    bne _0801C3C8
    movs r4, #0
    ldr r3, _0801C3D8 @ =0x00001081
    adds r2, r5, r3
    adds r3, r5, #0
_0801C3B6:
    ldrb r1, [r2]
    lsls r0, r1, #0x1e
    cmp r0, #0
    beq _0801C368
    adds r2, #0xc
    adds r3, #0xc
    adds r4, #1
    cmp r4, #3
    bls _0801C3B6
_0801C3C8:
    adds r0, r6, #0
    add sp, #0x10
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0801C3D8: .4byte 0x00001081
_0801C3DC:
    .byte 0x70, 0x47, 0x00, 0x00
    .byte 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x83, 0xB0, 0x07, 0x1C, 0x00, 0x22, 0x91, 0x46
    .byte 0x27, 0x48, 0xC0, 0x19, 0x80, 0x46, 0x27, 0x48, 0x3E, 0x18, 0x31, 0x78, 0x88, 0x07, 0x80, 0x0F
    .byte 0x02, 0x28, 0x2E, 0xD1, 0x04, 0x22, 0x52, 0x42, 0x10, 0x1C, 0x01, 0x40, 0x01, 0x20, 0x01, 0x43
    .byte 0x09, 0x3A, 0x10, 0x1C, 0x01, 0x40, 0x31, 0x70, 0x40, 0x20, 0xE4, 0xF7, 0xDB, 0xF8, 0x04, 0x1C
    .byte 0x38, 0x68, 0x81, 0x6E, 0x38, 0x1C, 0xB7, 0xF0, 0x73, 0xFA, 0x01, 0x1C, 0x03, 0x20, 0x00, 0x90
    .byte 0x1A, 0x20, 0x01, 0x90, 0x02, 0xAA, 0x00, 0x20, 0x10, 0x70, 0x20, 0x1C, 0x16, 0x4A, 0x3B, 0x1C
    .byte 0x88, 0xF0, 0xDE, 0xFA, 0x45, 0x46, 0x04, 0x1C, 0x29, 0x68, 0x8C, 0x42, 0x07, 0xD0, 0x00, 0x29
    .byte 0x05, 0xD0, 0x48, 0x6A, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0xB7, 0xF0, 0x5B, 0xFA, 0x2C, 0x60
    .byte 0x01, 0x22, 0x0C, 0x20, 0x80, 0x44, 0x0C, 0x36, 0x01, 0x20, 0x81, 0x44, 0x48, 0x46, 0x03, 0x28
    .byte 0xC3, 0xD9, 0x00, 0x2A, 0x04, 0xD0, 0xB8, 0x68, 0x02, 0x21, 0x00, 0x22, 0x15, 0xF0, 0x82, 0xFF
    .byte 0x03, 0xB0, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
    .byte 0x88, 0x10, 0x00, 0x00, 0x81, 0x10, 0x00, 0x00, 0x6F, 0x08, 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46
    .byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x83, 0xB0, 0x04, 0x1C, 0x89, 0x46, 0x90, 0x46, 0x00, 0x20
    .byte 0x10, 0x60, 0x01, 0xAE, 0x20, 0x1C, 0x32, 0x1C, 0xFF, 0xF7, 0x6E, 0xFE, 0x00, 0x06, 0x00, 0x28
    .byte 0x3C, 0xD0, 0x1C, 0x48, 0x25, 0x18, 0x28, 0x68, 0x1B, 0x49, 0x40, 0x18, 0x07, 0x1C, 0xB1, 0x88
    .byte 0xF2, 0x88, 0x81, 0xF0, 0xFF, 0xF9, 0x00, 0x22, 0x92, 0x46, 0x00, 0x28, 0x01, 0xD1, 0x01, 0x20
    .byte 0x82, 0x46, 0xB1, 0x88, 0xF2, 0x88, 0x2B, 0x68, 0x38, 0x1C, 0x81, 0xF0, 0xFD, 0xF9, 0x41, 0x46
    .byte 0x08, 0x60, 0x20, 0x68, 0x41, 0x69, 0x20, 0x1C, 0xB7, 0xF0, 0x0A, 0xFA, 0x4A, 0x46, 0x11, 0x88
    .byte 0x89, 0x05, 0x89, 0x0D, 0x88, 0x42, 0x13, 0xD1, 0x65, 0x68, 0xB1, 0x88, 0xF2, 0x88, 0x38, 0x1C
    .byte 0x81, 0xF0, 0xE0, 0xF9, 0x04, 0x1C, 0xB1, 0x88, 0xF2, 0x88, 0x38, 0x1C, 0x81, 0xF0, 0xC6, 0xFD
    .byte 0x01, 0xA9, 0x09, 0x88, 0x72, 0x88, 0x00, 0x90, 0x28, 0x1C, 0x23, 0x1C, 0x8E, 0xF0, 0x08, 0xF8
    .byte 0x50, 0x46, 0x04, 0xE0, 0x38, 0x10, 0x00, 0x00, 0x58, 0x2E, 0x00, 0x00, 0x00, 0x20, 0x03, 0xB0
    .byte 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
    .byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x83, 0xB0, 0x81, 0x46, 0x8A, 0x46
    .byte 0x15, 0x1C, 0x1E, 0x1C, 0x0B, 0x9F, 0x0C, 0x98, 0x02, 0x04, 0x12, 0x0C, 0x02, 0x92, 0x44, 0x48
    .byte 0x04, 0x68, 0x44, 0x48, 0x24, 0x18, 0x48, 0x00, 0x50, 0x44, 0x80, 0x00, 0x24, 0x18, 0x21, 0x78
    .byte 0x04, 0x20, 0x40, 0x42, 0x08, 0x40, 0x01, 0x21, 0x08, 0x43, 0x20, 0x70, 0x49, 0x46, 0x08, 0x68
    .byte 0x41, 0x69, 0x48, 0x46, 0xB7, 0xF0, 0xBC, 0xF9, 0x3B, 0x49, 0x88, 0x46, 0x41, 0x46, 0x08, 0x40
    .byte 0x63, 0x88, 0x3A, 0x4A, 0x11, 0x1C, 0x19, 0x40, 0x01, 0x43, 0x61, 0x80, 0x2D, 0x04, 0x29, 0x0C
    .byte 0x3F, 0x20, 0x01, 0x40, 0x89, 0x00, 0xE3, 0x78, 0x03, 0x20, 0x84, 0x46, 0x03, 0x20, 0x18, 0x40
    .byte 0x08, 0x43, 0xE0, 0x70, 0xAD, 0x0D, 0x41, 0x46, 0x0D, 0x40, 0xA0, 0x88, 0x02, 0x40, 0x2A, 0x43
    .byte 0xA2, 0x80, 0x36, 0x04, 0xB6, 0x09, 0x60, 0x68, 0x2D, 0x49, 0x08, 0x40, 0x30, 0x43, 0x60, 0x60
    .byte 0x60, 0x46, 0x07, 0x40, 0xBA, 0x00, 0x21, 0x78, 0x0D, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x43
    .byte 0x20, 0x70, 0x69, 0x46, 0x09, 0x89, 0x21, 0x81, 0x26, 0x48, 0x48, 0x44, 0x80, 0x46, 0x51, 0x46
    .byte 0x89, 0x00, 0x8A, 0x46, 0xD0, 0x44, 0x4C, 0x20, 0xE3, 0xF7, 0xE4, 0xFF, 0x05, 0x1C, 0x49, 0x46
    .byte 0x08, 0x68, 0x41, 0x6E, 0x48, 0x46, 0xB7, 0xF0, 0x7B, 0xF9, 0x04, 0x1C, 0x28, 0x1C, 0x49, 0x46
    .byte 0x02, 0x22, 0x1B, 0x23, 0x88, 0xF0, 0x8C, 0xF8, 0x1B, 0x48, 0x68, 0x62, 0x28, 0x20, 0x40, 0x19
    .byte 0x81, 0x46, 0x26, 0x68, 0x68, 0x46, 0xF3, 0x68, 0x21, 0x1C, 0x02, 0x9A, 0xB7, 0xF0, 0x6C, 0xF9
    .byte 0x00, 0x98, 0x02, 0x88, 0x48, 0x46, 0x33, 0x69, 0x21, 0x1C, 0xB7, 0xF0, 0x65, 0xF9, 0x29, 0x1C
    .byte 0x48, 0x31, 0x01, 0x20, 0x08, 0x70, 0x44, 0x46, 0x21, 0x68, 0x8D, 0x42, 0x07, 0xD0, 0x00, 0x29
    .byte 0x05, 0xD0, 0x48, 0x6A, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0xB7, 0xF0, 0x53, 0xF9, 0x25, 0x60
    .byte 0x03, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
    .byte 0x0C, 0x04, 0x00, 0x03, 0xDC, 0x04, 0x00, 0x00, 0xFF, 0x03, 0x00, 0x00, 0x00, 0xFC, 0xFF, 0xFF
    .byte 0xFF, 0x03, 0x00, 0xFC, 0xB0, 0x10, 0x00, 0x00, 0x2C, 0x60, 0x0E, 0x08, 0x30, 0xB5, 0x10, 0x4A
    .byte 0x13, 0x68, 0x10, 0x4A, 0x9B, 0x18, 0x4A, 0x00, 0x52, 0x18, 0x92, 0x00, 0x9B, 0x18, 0x1C, 0x78
    .byte 0x04, 0x22, 0x52, 0x42, 0x22, 0x40, 0x1A, 0x70, 0x0B, 0x4A, 0x80, 0x18, 0x89, 0x00, 0x44, 0x18
    .byte 0x00, 0x25, 0x21, 0x68, 0x8D, 0x42, 0x07, 0xD0, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x6A, 0x82, 0x68
    .byte 0x08, 0x1C, 0x03, 0x21, 0xB7, 0xF0, 0x1E, 0xF9, 0x25, 0x60, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47
    .byte 0x0C, 0x04, 0x00, 0x03, 0xDC, 0x04, 0x00, 0x00, 0xB0, 0x10, 0x00, 0x00

    thumb_func_start func_0801C6EC
func_0801C6EC: @ 0x0801C6EC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    adds r7, r0, #0
    mov r8, r1
    mov sb, r2
    str r3, [sp, #4]
    movs r0, #0
    str r0, [sp, #8]
    ldr r0, [r7]
    ldr r1, [r0, #0x14]
    adds r0, r7, #0
    bl _call_via_r1
    cmp r0, #2
    beq _0801C714
    b _0801C862
_0801C714:
    mov r1, r8
    lsls r0, r1, #1
    adds r0, #0x22
    str r0, [sp, #0xc]
    mov r2, sb
    lsls r0, r2, #1
    adds r0, #0x16
    mov sl, r0
    movs r2, #0
    ldr r3, _0801C79C @ =0x00001081
    adds r5, r7, r3
    ldr r0, _0801C7A0 @ =0x00001084
    adds r4, r7, r0
_0801C72E:
    ldrb r1, [r5]
    lsls r0, r1, #0x1e
    lsrs r6, r0, #0x1e
    cmp r6, #1
    bne _0801C7B4
    ldr r3, [sp, #0xc]
    ldrh r0, [r4]
    cmp r3, r0
    bne _0801C7B4
    ldrh r3, [r4, #2]
    cmp sl, r3
    bne _0801C7B4
    lsls r0, r1, #0x1c
    lsrs r0, r0, #0x1e
    cmp r0, #2
    bne _0801C750
    b _0801C862
_0801C750:
    ldr r1, _0801C7A4 @ =0x00001054
    adds r0, r7, r1
    ldr r0, [r0]
    movs r1, #0
    movs r2, #0xc0
    bl func_08012464
    ldrb r1, [r5]
    movs r2, #0xd
    rsbs r2, r2, #0
    adds r0, r2, #0
    ands r1, r0
    movs r0, #8
    orrs r1, r0
    strb r1, [r5]
    ldr r4, [r4, #4]
    adds r0, r4, #0
    adds r0, #0x28
    ldr r1, _0801C7A8 @ =0x00000873
    bl func_0805E860
    adds r0, r4, #0
    adds r0, #0x3c
    movs r1, #0
    strb r6, [r0]
    adds r0, #2
    strb r1, [r0]
    adds r0, #1
    strb r6, [r0]
    ldr r3, _0801C7AC @ =0x00001038
    adds r0, r7, r3
    ldr r0, [r0]
    ldr r5, _0801C7B0 @ =0x00001BD8
    adds r0, r0, r5
    bl func_0800EEF8
    b _0801C862
    .align 2, 0
_0801C79C: .4byte 0x00001081
_0801C7A0: .4byte 0x00001084
_0801C7A4: .4byte 0x00001054
_0801C7A8: .4byte 0x00000873
_0801C7AC: .4byte 0x00001038
_0801C7B0: .4byte 0x00001BD8
_0801C7B4:
    adds r5, #0xc
    adds r4, #0xc
    adds r2, #1
    cmp r2, #3
    bls _0801C72E
    movs r0, #0
    cmp r0, #0
    bne _0801C862
    ldr r0, _0801C818 @ =0x00001038
    adds r6, r7, r0
    ldr r1, [r6]
    ldr r5, _0801C81C @ =0x000009DC
    adds r1, r1, r5
    movs r0, #0x2b
    mov r4, sb
    muls r4, r0, r4
    add r4, r8
    lsls r4, r4, #2
    adds r1, r1, r4
    str r1, [sp, #0x10]
    adds r0, r1, #0
    ldr r1, [sp, #4]
    bl func_0800A238
    str r0, [sp, #8]
    ldr r7, [r7, #4]
    ldr r0, [r6]
    adds r3, r0, r5
    adds r4, r3, r4
    mov r1, sb
    adds r1, #1
    movs r0, #0
    mov r2, r8
    cmp r2, #0
    blt _0801C808
    cmp r1, #0
    blt _0801C808
    cmp r2, #0x2a
    bgt _0801C808
    cmp r1, #0x18
    bgt _0801C808
    movs r0, #1
_0801C808:
    cmp r0, #0
    beq _0801C820
    movs r0, #0x2b
    muls r0, r1, r0
    add r0, r8
    lsls r0, r0, #2
    adds r1, r3, r0
    b _0801C822
    .align 2, 0
_0801C818: .4byte 0x00001038
_0801C81C: .4byte 0x000009DC
_0801C820:
    movs r1, #0
_0801C822:
    mov r2, sb
    subs r2, #1
    movs r0, #0
    mov r5, r8
    cmp r5, #0
    blt _0801C83C
    cmp r2, #0
    blt _0801C83C
    cmp r5, #0x2a
    bgt _0801C83C
    cmp r2, #0x18
    bgt _0801C83C
    movs r0, #1
_0801C83C:
    cmp r0, #0
    beq _0801C84C
    movs r0, #0x2b
    muls r0, r2, r0
    add r0, r8
    lsls r0, r0, #2
    adds r2, r3, r0
    b _0801C84E
_0801C84C:
    movs r2, #0
_0801C84E:
    adds r0, r4, #0
    bl func_0800AF5C
    str r0, [sp]
    adds r0, r7, #0
    ldr r1, [sp, #0xc]
    mov r2, sl
    ldr r3, [sp, #0x10]
    bl func_080AA6D0
_0801C862:
    ldr r0, [sp, #8]
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_0801C874
func_0801C874: @ 0x0801C874
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r7, r0, #0
    mov sl, r3
    ldr r3, _0801C8C0 @ =0x00001038
    adds r0, r7, r3
    ldr r3, [r0]
    ldr r0, _0801C8C4 @ =0x000009DC
    adds r3, r3, r0
    movs r0, #0x2b
    muls r0, r2, r0
    adds r0, r1, r0
    lsls r0, r0, #2
    adds r4, r3, r0
    adds r6, r1, #0
    mov r8, r2
    adds r0, r4, #0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0801C916
    adds r0, r4, #0
    bl func_0801740C
    cmp r0, #1
    beq _0801C8C8
    cmp r0, #1
    ble _0801C8DC
    cmp r0, #2
    beq _0801C8CC
    cmp r0, #3
    beq _0801C8D4
    b _0801C8DC
    .align 2, 0
_0801C8C0: .4byte 0x00001038
_0801C8C4: .4byte 0x000009DC
_0801C8C8:
    subs r6, #1
    b _0801C8DC
_0801C8CC:
    movs r1, #1
    rsbs r1, r1, #0
    add r8, r1
    b _0801C8DC
_0801C8D4:
    subs r6, #1
    movs r2, #1
    rsbs r2, r2, #0
    add r8, r2
_0801C8DC:
    adds r0, r7, #0
    adds r1, r6, #0
    mov r2, r8
    mov r3, sl
    bl func_0801C6EC
    mov sb, r0
    adds r5, r6, #1
    adds r0, r7, #0
    adds r1, r5, #0
    mov r2, r8
    mov r3, sl
    bl func_0801C6EC
    mov r4, r8
    adds r4, #1
    adds r0, r7, #0
    adds r1, r6, #0
    adds r2, r4, #0
    mov r3, sl
    bl func_0801C6EC
    adds r0, r7, #0
    adds r1, r5, #0
    adds r2, r4, #0
    mov r3, sl
    bl func_0801C6EC
    b _0801C924
_0801C916:
    adds r0, r7, #0
    adds r1, r6, #0
    mov r2, r8
    mov r3, sl
    bl func_0801C6EC
    mov sb, r0
_0801C924:
    ldr r0, [r7]
    ldr r1, [r0, #0x14]
    adds r0, r7, #0
    bl _call_via_r1
    cmp r0, #2
    bne _0801CA06
    mov r3, sb
    cmp r3, #8
    bhi _0801CA06
    lsls r0, r3, #2
    ldr r1, _0801C944 @ =_0801C948
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0801C944: .4byte _0801C948
_0801C948: @ jump table
    .4byte _0801CA06 @ case 0
    .4byte _0801CA06 @ case 1
    .4byte _0801CA06 @ case 2
    .4byte _0801C96C @ case 3
    .4byte _0801C98C @ case 4
    .4byte _0801C9AC @ case 5
    .4byte _0801CA06 @ case 6
    .4byte _0801C9CC @ case 7
    .4byte _0801C9EC @ case 8
_0801C96C:
    ldr r1, _0801C988 @ =0x00001028
    adds r0, r7, r1
    ldr r0, [r0]
    lsls r1, r6, #4
    movs r2, #0x8c
    lsls r2, r2, #1
    adds r1, r1, r2
    mov r3, r8
    lsls r2, r3, #4
    adds r2, #0xc0
    movs r3, #3
    bl func_080AB68C
    b _0801CA06
    .align 2, 0
_0801C988: .4byte 0x00001028
_0801C98C:
    ldr r1, _0801C9A8 @ =0x00001028
    adds r0, r7, r1
    ldr r0, [r0]
    lsls r1, r6, #4
    movs r2, #0x8c
    lsls r2, r2, #1
    adds r1, r1, r2
    mov r3, r8
    lsls r2, r3, #4
    adds r2, #0xc0
    movs r3, #1
    bl func_080AB68C
    b _0801CA06
    .align 2, 0
_0801C9A8: .4byte 0x00001028
_0801C9AC:
    ldr r1, _0801C9C8 @ =0x00001028
    adds r0, r7, r1
    ldr r0, [r0]
    lsls r1, r6, #4
    movs r2, #0x8c
    lsls r2, r2, #1
    adds r1, r1, r2
    mov r3, r8
    lsls r2, r3, #4
    adds r2, #0xc0
    movs r3, #2
    bl func_080AB68C
    b _0801CA06
    .align 2, 0
_0801C9C8: .4byte 0x00001028
_0801C9CC:
    ldr r1, _0801C9E8 @ =0x00001028
    adds r0, r7, r1
    ldr r0, [r0]
    lsls r1, r6, #4
    movs r2, #0x90
    lsls r2, r2, #1
    adds r1, r1, r2
    mov r3, r8
    lsls r2, r3, #4
    adds r2, #0xd0
    movs r3, #8
    bl func_080AB68C
    b _0801CA06
    .align 2, 0
_0801C9E8: .4byte 0x00001028
_0801C9EC:
    ldr r1, _0801CA18 @ =0x00001028
    adds r0, r7, r1
    ldr r0, [r0]
    lsls r1, r6, #4
    movs r2, #0x90
    lsls r2, r2, #1
    adds r1, r1, r2
    mov r3, r8
    lsls r2, r3, #4
    adds r2, #0xd0
    movs r3, #6
    bl func_080AB68C
_0801CA06:
    movs r0, #0
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0801CA18: .4byte 0x00001028
_0801CA1C:
    .byte 0xF0, 0xB5, 0x89, 0xB0
    .byte 0x05, 0x1C, 0x0E, 0x1C, 0x17, 0x1C, 0x01, 0xA9, 0x00, 0x20, 0x01, 0x90, 0x88, 0x80, 0xC8, 0x80
    .byte 0x08, 0x81, 0x48, 0x81, 0x28, 0x1C, 0x31, 0x1C, 0x01, 0xAA, 0xFF, 0xF7, 0x5D, 0xFB, 0x00, 0x06
    .byte 0x00, 0x28, 0x0D, 0xD0, 0x01, 0xA8, 0x01, 0x89, 0x42, 0x89, 0x04, 0x48, 0x38, 0x18, 0x03, 0x78
    .byte 0x28, 0x1C, 0xFF, 0xF7, 0x0F, 0xFF, 0x00, 0x06, 0x00, 0x0E, 0x36, 0xE0, 0x00, 0x08, 0x0F, 0x08
    .byte 0x04, 0xAC, 0x00, 0x20, 0x20, 0x70, 0x01, 0x20, 0x20, 0x74, 0x09, 0x48, 0x38, 0x18, 0x02, 0x78
    .byte 0x00, 0x94, 0x28, 0x1C, 0x31, 0x1C, 0x01, 0x23, 0x00, 0xF0, 0x44, 0xFB, 0x20, 0x78, 0x00, 0x28
    .byte 0x20, 0xD0, 0x60, 0x68, 0x06, 0x28, 0x05, 0xD0, 0x09, 0x28, 0x11, 0xD0, 0x00, 0x20, 0x1C, 0xE0
    .byte 0x00, 0x08, 0x0F, 0x08, 0x05, 0x49, 0x68, 0x18, 0x00, 0x68, 0xA1, 0x68, 0x10, 0x31, 0xE2, 0x68
    .byte 0x20, 0x32, 0x06, 0x23, 0x8E, 0xF0, 0xF2, 0xFD, 0x0C, 0xE0, 0x00, 0x00, 0x28, 0x10, 0x00, 0x00
    .byte 0x08, 0x49, 0x68, 0x18, 0x00, 0x68, 0xA1, 0x68, 0x18, 0x31, 0xE2, 0x68, 0x20, 0x32, 0x09, 0x23
    .byte 0x8E, 0xF0, 0xE4, 0xFD, 0x20, 0x7C, 0x01, 0x21, 0x48, 0x40, 0x09, 0xB0, 0xF0, 0xBC, 0x02, 0xBC
    .byte 0x08, 0x47, 0x00, 0x00, 0x28, 0x10, 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
    .byte 0xE0, 0xB4, 0x83, 0xB0, 0x80, 0x46, 0x89, 0x46, 0x15, 0x1C, 0x00, 0x20, 0x28, 0x60, 0x01, 0xAE
    .byte 0x40, 0x46, 0x32, 0x1C, 0xFF, 0xF7, 0x50, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x4E, 0xD0, 0x24, 0x4C
    .byte 0x44, 0x44, 0x20, 0x68, 0x23, 0x49, 0x40, 0x18, 0x07, 0x1C, 0xB1, 0x88, 0xF2, 0x88, 0x80, 0xF0
    .byte 0xE1, 0xFE, 0x00, 0x21, 0x04, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x8A, 0x46, 0xB1, 0x88, 0xF2, 0x88
    .byte 0x23, 0x68, 0x38, 0x1C, 0x80, 0xF0, 0x46, 0xFF, 0x28, 0x60, 0x42, 0x46, 0x10, 0x68, 0x41, 0x69
    .byte 0x40, 0x46, 0xB6, 0xF0, 0xED, 0xFE, 0x4A, 0x46, 0x11, 0x88, 0x89, 0x05, 0x89, 0x0D, 0x88, 0x42
    .byte 0x24, 0xD1, 0x40, 0x46, 0x45, 0x68, 0xB1, 0x88, 0xF2, 0x88, 0x38, 0x1C, 0x80, 0xF0, 0xC2, 0xFE
    .byte 0x04, 0x1C, 0xB1, 0x88, 0xF2, 0x88, 0x38, 0x1C, 0x81, 0xF0, 0xA8, 0xFA, 0x01, 0xA9, 0x09, 0x88
    .byte 0x72, 0x88, 0x00, 0x90, 0x28, 0x1C, 0x23, 0x1C, 0x8D, 0xF0, 0xEA, 0xFC, 0x51, 0x46, 0x00, 0x29
    .byte 0x0C, 0xD0, 0x09, 0x48, 0x40, 0x44, 0x00, 0x68, 0x01, 0xA9, 0x09, 0x88, 0xC9, 0x00, 0x08, 0x31
    .byte 0x72, 0x88, 0xD2, 0x00, 0x10, 0x32, 0x05, 0x23, 0x8E, 0xF0, 0x80, 0xFD, 0x50, 0x46, 0x06, 0xE0
    .byte 0x38, 0x10, 0x00, 0x00, 0x58, 0x2E, 0x00, 0x00, 0x28, 0x10, 0x00, 0x00, 0x00, 0x20, 0x03, 0xB0
    .byte 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
    .byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x8F, 0xB0, 0x81, 0x46, 0x0E, 0x91
    .byte 0x92, 0x46, 0x00, 0x26, 0x02, 0x29, 0x2B, 0xD1, 0x00, 0x21, 0x12, 0x48, 0x50, 0x44, 0x80, 0x46
    .byte 0x00, 0x25, 0x4F, 0x1C, 0xAC, 0x20, 0x0C, 0x1C, 0x44, 0x43, 0x0F, 0x48, 0x48, 0x44, 0x00, 0x68
    .byte 0x0E, 0x49, 0x40, 0x18, 0x00, 0x19, 0x42, 0x46, 0x11, 0x78, 0xED, 0xF7, 0x25, 0xFB, 0x00, 0x22
    .byte 0x31, 0x1C, 0x00, 0x28, 0x01, 0xD0, 0x01, 0x21, 0x31, 0x43, 0x00, 0x29, 0x00, 0xD0, 0x01, 0x22
    .byte 0x16, 0x1C, 0x04, 0x34, 0x01, 0x35, 0x2A, 0x2D, 0xE7, 0xD9, 0x39, 0x1C, 0x18, 0x29, 0xDF, 0xD9
    .byte 0x45, 0xE0, 0x00, 0x00, 0x00, 0x08, 0x0F, 0x08, 0x38, 0x10, 0x00, 0x00, 0xDC, 0x09, 0x00, 0x00
    .byte 0x2C, 0x4C, 0x4C, 0x44, 0x20, 0x68, 0x10, 0x30, 0xF1, 0xF7, 0x7C, 0xFB, 0x80, 0x46, 0x20, 0x68
    .byte 0x29, 0x4B, 0xC7, 0x18, 0x60, 0x25, 0x07, 0xAC, 0x28, 0x48, 0x82, 0x44, 0x38, 0x1C, 0x29, 0x1C
    .byte 0x42, 0x46, 0x85, 0xF0, 0x47, 0xF9, 0x00, 0x06, 0x00, 0x28, 0x25, 0xD0, 0x03, 0xA8, 0x39, 0x1C
    .byte 0x2A, 0x1C, 0x85, 0xF0, 0x33, 0xF8, 0x04, 0x98, 0x0E, 0x99, 0x88, 0x42, 0x1C, 0xD1, 0x00, 0x20
    .byte 0x20, 0x70, 0x01, 0x22, 0x22, 0x74, 0x1B, 0x48, 0x48, 0x44, 0x01, 0x68, 0x08, 0x1C, 0x14, 0x30
    .byte 0x19, 0x4B, 0xC9, 0x18, 0x53, 0x46, 0x1A, 0x78, 0x00, 0x92, 0x01, 0xAA, 0x01, 0x23, 0x13, 0x70
    .byte 0x02, 0x94, 0x2A, 0x1C, 0x43, 0x46, 0xFA, 0xF7, 0x1F, 0xFC, 0x70, 0x42, 0x30, 0x43, 0xC6, 0x0F
    .byte 0x20, 0x7C, 0x01, 0x21, 0x48, 0x40, 0x06, 0x43, 0x01, 0x35, 0x73, 0x2D, 0xCE, 0xD9, 0x00, 0x2E
    .byte 0x0E, 0xD0, 0x4A, 0x46, 0x10, 0x68, 0xA0, 0x23, 0x5B, 0x00, 0xC0, 0x18, 0x0C, 0xA9, 0x0C, 0x4A
    .byte 0x00, 0x23, 0x0C, 0x92, 0x4B, 0x60, 0x03, 0x68, 0x48, 0x46, 0x00, 0x22, 0xB6, 0xF0, 0x2C, 0xFE
    .byte 0x30, 0x1C, 0x0F, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC
    .byte 0x08, 0x47, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00, 0xC8, 0x34, 0x00, 0x00, 0x00, 0x08, 0x0F, 0x08
    .byte 0xDD, 0x03, 0x00, 0x00

    thumb_func_start func_0801CCE4
func_0801CCE4: @ 0x0801CCE4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    mov r8, r2
    adds r1, r3, #0
    ldr r0, _0801CD5C @ =0x00001038
    adds r7, r4, r0
    ldr r2, [r7]
    ldr r3, _0801CD60 @ =0x000009DC
    adds r2, r2, r3
    movs r0, #0x2b
    mov r3, r8
    muls r3, r0, r3
    adds r0, r3, #0
    adds r0, r5, r0
    lsls r6, r0, #2
    adds r2, r2, r6
    mov sb, r2
    mov r0, sb
    bl func_0800A33C
    str r0, [sp, #4]
    ldr r0, [r4]
    ldr r1, [r0, #0x14]
    adds r0, r4, #0
    bl _call_via_r1
    cmp r0, #2
    bne _0801CDAA
    ldr r4, [r4, #4]
    mov sl, r4
    ldr r0, [r7]
    ldr r1, _0801CD60 @ =0x000009DC
    adds r2, r0, r1
    adds r4, r2, r6
    mov r1, r8
    adds r1, #1
    movs r0, #0
    cmp r5, #0
    blt _0801CD4C
    cmp r1, #0
    blt _0801CD4C
    cmp r5, #0x2a
    bgt _0801CD4C
    cmp r1, #0x18
    bgt _0801CD4C
    movs r0, #1
_0801CD4C:
    cmp r0, #0
    beq _0801CD64
    movs r0, #0x2b
    muls r0, r1, r0
    adds r0, r5, r0
    lsls r0, r0, #2
    adds r1, r2, r0
    b _0801CD66
    .align 2, 0
_0801CD5C: .4byte 0x00001038
_0801CD60: .4byte 0x000009DC
_0801CD64:
    movs r1, #0
_0801CD66:
    mov r3, r8
    subs r3, #1
    movs r0, #0
    cmp r5, #0
    blt _0801CD7E
    cmp r3, #0
    blt _0801CD7E
    cmp r5, #0x2a
    bgt _0801CD7E
    cmp r3, #0x18
    bgt _0801CD7E
    movs r0, #1
_0801CD7E:
    cmp r0, #0
    beq _0801CD8E
    movs r0, #0x2b
    muls r0, r3, r0
    adds r0, r5, r0
    lsls r0, r0, #2
    adds r2, r2, r0
    b _0801CD90
_0801CD8E:
    movs r2, #0
_0801CD90:
    adds r0, r4, #0
    bl func_0800AF5C
    lsls r1, r5, #1
    adds r1, #0x22
    mov r3, r8
    lsls r2, r3, #1
    adds r2, #0x16
    str r0, [sp]
    mov r0, sl
    mov r3, sb
    bl func_080AA6D0
_0801CDAA:
    ldr r0, [sp, #4]
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_0801CDBC
func_0801CDBC: @ 0x0801CDBC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    adds r6, r0, #0
    mov sl, r3
    ldr r3, _0801CE08 @ =0x00001038
    adds r0, r6, r3
    ldr r3, [r0]
    ldr r0, _0801CE0C @ =0x000009DC
    adds r3, r3, r0
    movs r0, #0x2b
    muls r0, r2, r0
    adds r0, r1, r0
    lsls r0, r0, #2
    adds r4, r3, r0
    adds r7, r1, #0
    mov r8, r2
    adds r0, r4, #0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0801CE5E
    adds r0, r4, #0
    bl func_0801740C
    cmp r0, #1
    beq _0801CE10
    cmp r0, #1
    ble _0801CE24
    cmp r0, #2
    beq _0801CE14
    cmp r0, #3
    beq _0801CE1C
    b _0801CE24
    .align 2, 0
_0801CE08: .4byte 0x00001038
_0801CE0C: .4byte 0x000009DC
_0801CE10:
    subs r7, #1
    b _0801CE24
_0801CE14:
    movs r1, #1
    rsbs r1, r1, #0
    add r8, r1
    b _0801CE24
_0801CE1C:
    subs r7, #1
    movs r2, #1
    rsbs r2, r2, #0
    add r8, r2
_0801CE24:
    adds r0, r6, #0
    adds r1, r7, #0
    mov r2, r8
    mov r3, sl
    bl func_0801CCE4
    mov sb, r0
    adds r5, r7, #1
    adds r0, r6, #0
    adds r1, r5, #0
    mov r2, r8
    mov r3, sl
    bl func_0801CCE4
    mov r4, r8
    adds r4, #1
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    mov r3, sl
    bl func_0801CCE4
    adds r0, r6, #0
    adds r1, r5, #0
    adds r2, r4, #0
    mov r3, sl
    bl func_0801CCE4
    b _0801CE6C
_0801CE5E:
    adds r0, r6, #0
    adds r1, r7, #0
    mov r2, r8
    mov r3, sl
    bl func_0801CCE4
    mov sb, r0
_0801CE6C:
    ldr r0, [r6]
    ldr r1, [r0, #0x14]
    adds r0, r6, #0
    bl _call_via_r1
    cmp r0, #2
    bne _0801CEE4
    mov r3, sb
    cmp r3, #1
    beq _0801CE8A
    cmp r3, #1
    ble _0801CEE4
    cmp r3, #2
    beq _0801CEBC
    b _0801CEE4
_0801CE8A:
    ldr r1, _0801CEB4 @ =0x00001038
    adds r0, r6, r1
    ldr r0, [r0]
    adds r0, #0x14
    movs r1, #1
    bl method_08009B68__4FarmUi
    ldr r2, _0801CEB8 @ =0x00001028
    adds r0, r6, r2
    ldr r0, [r0]
    lsls r1, r7, #4
    movs r3, #0x8c
    lsls r3, r3, #1
    adds r1, r1, r3
    mov r3, r8
    lsls r2, r3, #4
    adds r2, #0xbb
    movs r3, #4
    bl func_080AB68C
    b _0801CEE4
    .align 2, 0
_0801CEB4: .4byte 0x00001038
_0801CEB8: .4byte 0x00001028
_0801CEBC:
    ldr r1, _0801CEF4 @ =0x00001038
    adds r0, r6, r1
    ldr r0, [r0]
    adds r0, #0x14
    movs r1, #6
    bl method_08009B68__4FarmUi
    ldr r2, _0801CEF8 @ =0x00001028
    adds r0, r6, r2
    ldr r0, [r0]
    lsls r1, r7, #4
    movs r3, #0x90
    lsls r3, r3, #1
    adds r1, r1, r3
    mov r3, r8
    lsls r2, r3, #4
    adds r2, #0xd0
    movs r3, #7
    bl func_080AB68C
_0801CEE4:
    movs r0, #0
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0801CEF4: .4byte 0x00001038
_0801CEF8: .4byte 0x00001028
_0801CEFC:
    .byte 0xF0, 0xB5, 0x89, 0xB0
    .byte 0x05, 0x1C, 0x0E, 0x1C, 0x17, 0x1C, 0x01, 0xA9, 0x00, 0x20, 0x01, 0x90, 0x88, 0x80, 0xC8, 0x80
    .byte 0x08, 0x81, 0x48, 0x81, 0x28, 0x1C, 0x31, 0x1C, 0x01, 0xAA, 0xFF, 0xF7, 0xED, 0xF8, 0x00, 0x06
    .byte 0x00, 0x28, 0x0D, 0xD0, 0x01, 0xA8, 0x01, 0x89, 0x42, 0x89, 0x04, 0x48, 0x38, 0x18, 0x03, 0x78
    .byte 0x28, 0x1C, 0xFF, 0xF7, 0x43, 0xFF, 0x00, 0x06, 0x00, 0x0E, 0x36, 0xE0, 0x07, 0x08, 0x0F, 0x08
    .byte 0x04, 0xAC, 0x00, 0x20, 0x20, 0x70, 0x01, 0x20, 0x20, 0x74, 0x09, 0x48, 0x38, 0x18, 0x02, 0x78
    .byte 0x00, 0x94, 0x28, 0x1C, 0x31, 0x1C, 0x00, 0x23, 0x00, 0xF0, 0xD4, 0xF8, 0x20, 0x78, 0x00, 0x28
    .byte 0x20, 0xD0, 0x60, 0x68, 0x04, 0x28, 0x13, 0xD0, 0x07, 0x28, 0x03, 0xD0, 0x00, 0x20, 0x1C, 0xE0
    .byte 0x07, 0x08, 0x0F, 0x08, 0x05, 0x49, 0x68, 0x18, 0x00, 0x68, 0xA1, 0x68, 0x10, 0x31, 0xE2, 0x68
    .byte 0x20, 0x32, 0x07, 0x23, 0x8E, 0xF0, 0x82, 0xFB, 0x0C, 0xE0, 0x00, 0x00, 0x28, 0x10, 0x00, 0x00
    .byte 0x08, 0x49, 0x68, 0x18, 0x00, 0x68, 0xA1, 0x68, 0x08, 0x31, 0xE2, 0x68, 0x0B, 0x32, 0x04, 0x23
    .byte 0x8E, 0xF0, 0x74, 0xFB, 0x20, 0x7C, 0x01, 0x21, 0x48, 0x40, 0x09, 0xB0, 0xF0, 0xBC, 0x02, 0xBC
    .byte 0x08, 0x47, 0x00, 0x00, 0x28, 0x10, 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
    .byte 0xE0, 0xB4, 0x8F, 0xB0, 0x0E, 0x90, 0x89, 0x46, 0x92, 0x46, 0x00, 0x26, 0x02, 0x29, 0x37, 0xD1
    .byte 0x00, 0x21, 0x18, 0x4A, 0x87, 0x18, 0x18, 0x48, 0x82, 0x44, 0x00, 0x25, 0x4B, 0x1C, 0x99, 0x46
    .byte 0x2B, 0x22, 0x08, 0x1C, 0x50, 0x43, 0x80, 0x46, 0x38, 0x68, 0x14, 0x4B, 0xC0, 0x18, 0x42, 0x46
    .byte 0xA9, 0x18, 0x89, 0x00, 0x40, 0x18, 0x53, 0x46, 0x19, 0x78, 0xED, 0xF7, 0x9F, 0xF9, 0x04, 0x1C
    .byte 0x60, 0x1E, 0x01, 0x28, 0x04, 0xD8, 0x38, 0x68, 0x14, 0x30, 0x01, 0x21, 0xEC, 0xF7, 0xAC, 0xFD
    .byte 0x00, 0x21, 0x30, 0x1C, 0x00, 0x2C, 0x01, 0xD0, 0x01, 0x20, 0x30, 0x43, 0x00, 0x28, 0x00, 0xD0
    .byte 0x01, 0x21, 0x0E, 0x1C, 0x01, 0x35, 0x2A, 0x2D, 0xDE, 0xD9, 0x49, 0x46, 0x18, 0x29, 0xD4, 0xD9
    .byte 0x46, 0xE0, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00, 0x07, 0x08, 0x0F, 0x08, 0xDC, 0x09, 0x00, 0x00
    .byte 0x0E, 0x98, 0x2C, 0x49, 0x44, 0x18, 0x20, 0x68, 0x10, 0x30, 0xF1, 0xF7, 0x6B, 0xF9, 0x80, 0x46
    .byte 0x20, 0x68, 0x29, 0x4A, 0x87, 0x18, 0x60, 0x25, 0x07, 0xAC, 0x28, 0x48, 0x82, 0x44, 0x38, 0x1C
    .byte 0x29, 0x1C, 0x42, 0x46, 0x84, 0xF0, 0x36, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x25, 0xD0, 0x03, 0xA8
    .byte 0x39, 0x1C, 0x2A, 0x1C, 0x84, 0xF0, 0x22, 0xFE, 0x04, 0x98, 0x48, 0x45, 0x1D, 0xD1, 0x00, 0x23
    .byte 0x23, 0x70, 0x01, 0x20, 0x20, 0x74, 0x0E, 0x99, 0x1A, 0x4A, 0x88, 0x18, 0x01, 0x68, 0x08, 0x1C
    .byte 0x14, 0x30, 0x19, 0x4B, 0xC9, 0x18, 0x53, 0x46, 0x1A, 0x78, 0x00, 0x92, 0x01, 0xAA, 0x00, 0x23
    .byte 0x13, 0x70, 0x02, 0x94, 0x2A, 0x1C, 0x43, 0x46, 0xFA, 0xF7, 0x0E, 0xFA, 0x70, 0x42, 0x30, 0x43
    .byte 0xC6, 0x0F, 0x20, 0x7C, 0x01, 0x21, 0x48, 0x40, 0x06, 0x43, 0x01, 0x35, 0x73, 0x2D, 0xCE, 0xD9
    .byte 0x00, 0x2E, 0x0E, 0xD0, 0x0E, 0x9A, 0x10, 0x68, 0xA0, 0x23, 0x5B, 0x00, 0xC0, 0x18, 0x0C, 0xA9
    .byte 0x0B, 0x4A, 0x00, 0x23, 0x0C, 0x92, 0x4B, 0x60, 0x03, 0x68, 0x0E, 0x98, 0x00, 0x22, 0xB6, 0xF0
    .byte 0x1B, 0xFC, 0x30, 0x1C, 0x0F, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
    .byte 0x02, 0xBC, 0x08, 0x47, 0x38, 0x10, 0x00, 0x00, 0xC8, 0x34, 0x00, 0x00, 0x07, 0x08, 0x0F, 0x08
    .byte 0xCF, 0x03, 0x00, 0x00

    thumb_func_start func_0801D104
func_0801D104: @ 0x0801D104
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x30
    mov sl, r0
    adds r5, r1, #0
    str r2, [sp, #0x28]
    ldr r0, [sp, #0x50]
    mov sb, r0
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    str r3, [sp, #0x2c]
    ldr r7, _0801D1D4 @ =0x00001038
    add r7, sl
    ldr r0, [r7]
    ldr r1, _0801D1D8 @ =0x000034C8
    adds r6, r0, r1
    adds r0, #0x10
    bl func_0800E324
    mov r8, r0
    ldrb r0, [r5, #1]
    lsrs r0, r0, #2
    ldrh r1, [r5, #2]
    ldr r3, _0801D1DC @ =0x000003FF
    ands r1, r3
    lsls r1, r1, #6
    orrs r1, r0
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    ldrb r2, [r5, #3]
    lsrs r2, r2, #2
    ldrh r0, [r5, #4]
    ands r0, r3
    lsls r0, r0, #6
    orrs r0, r2
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    add r2, sp, #0x1c
    strh r1, [r2]
    strh r0, [r2, #2]
    adds r1, #1
    strh r1, [r2, #4]
    adds r0, #1
    strh r0, [r2, #6]
    ldrh r1, [r5]
    lsls r1, r1, #0x16
    lsrs r1, r1, #0x16
    adds r0, r6, #0
    mov r3, r8
    bl func_080A1D20
    adds r4, r0, #0
    movs r0, #1
    rsbs r0, r0, #0
    cmp r4, r0
    beq _0801D228
    add r0, sp, #0xc
    adds r1, r6, #0
    adds r2, r4, #0
    bl func_080A1CBC
    add r6, sp, #0xc
    ldr r1, [r7]
    adds r0, r1, #0
    adds r0, #0x14
    ldr r2, _0801D1D8 @ =0x000034C8
    adds r1, r1, r2
    ldr r3, [sp, #0x28]
    str r3, [sp]
    add r2, sp, #4
    add r7, sp, #0x2c
    ldrb r7, [r7]
    strb r7, [r2]
    mov r2, sb
    str r2, [sp, #8]
    adds r2, r4, #0
    mov r3, r8
    bl func_080174C8
    mov r3, sb
    ldrb r0, [r3]
    cmp r0, #0
    beq _0801D224
    ldrh r0, [r5]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    mov r7, sl
    ldr r1, [r7, #4]
    ldr r2, [r1]
    adds r5, r1, #0
    cmp r0, r2
    bne _0801D224
    ldr r0, [r3, #4]
    cmp r0, #6
    beq _0801D1F4
    cmp r0, #6
    bgt _0801D1E0
    cmp r0, #4
    beq _0801D1EA
    b _0801D228
    .align 2, 0
_0801D1D4: .4byte 0x00001038
_0801D1D8: .4byte 0x000034C8
_0801D1DC: .4byte 0x000003FF
_0801D1E0:
    cmp r0, #7
    beq _0801D1F0
    cmp r0, #9
    beq _0801D1F8
    b _0801D228
_0801D1EA:
    movs r3, #2
    movs r4, #2
    b _0801D1FC
_0801D1F0:
    movs r3, #4
    b _0801D1FA
_0801D1F4:
    movs r3, #4
    b _0801D1FA
_0801D1F8:
    movs r3, #6
_0801D1FA:
    movs r4, #4
_0801D1FC:
    movs r1, #8
    ldrsh r0, [r6, r1]
    cmp r0, #0
    bge _0801D206
    adds r0, #7
_0801D206:
    asrs r1, r0, #3
    movs r2, #0xa
    ldrsh r0, [r6, r2]
    cmp r0, #0
    bge _0801D212
    adds r0, #7
_0801D212:
    asrs r0, r0, #3
    add r2, sp, #0x24
    strh r1, [r2]
    strh r0, [r2, #2]
    str r4, [sp]
    adds r0, r5, #0
    movs r1, #1
    bl func_080A5F78
_0801D224:
    movs r0, #1
    b _0801D22A
_0801D228:
    movs r0, #0
_0801D22A:
    add sp, #0x30
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0801D23C:
    .byte 0xF0, 0xB5, 0x57, 0x46
    .byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x8A, 0xB0, 0x80, 0x46, 0x0C, 0x1C, 0x01, 0xA9, 0x00, 0x20
    .byte 0x01, 0x90, 0x88, 0x80, 0xC8, 0x80, 0x08, 0x81, 0x48, 0x81, 0x40, 0x46, 0x21, 0x1C, 0x01, 0xAA
    .byte 0xFE, 0xF7, 0x4A, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x00, 0xD1, 0xBE, 0xE0, 0x01, 0x98, 0xED, 0xF7
    .byte 0xAB, 0xF8, 0x04, 0x90, 0x01, 0x28, 0x08, 0xD0, 0x40, 0x42, 0x09, 0x90, 0x04, 0x99, 0x01, 0x29
    .byte 0x00, 0xDC, 0xAD, 0xE0, 0x02, 0x29, 0x09, 0xD0, 0xAA, 0xE0, 0x2C, 0x48, 0x40, 0x44, 0x00, 0x68
    .byte 0xBE, 0x22, 0xD2, 0x00, 0x80, 0x18, 0x01, 0x21, 0xEF, 0xF7, 0xD0, 0xFF, 0x43, 0x46, 0x18, 0x68
    .byte 0x41, 0x69, 0x40, 0x46, 0xB6, 0xF0, 0x34, 0xFB, 0x02, 0x28, 0x0D, 0xD1, 0x24, 0x48, 0x40, 0x44
    .byte 0x00, 0x68, 0x01, 0xA9, 0x89, 0x88, 0xC9, 0x00, 0x08, 0x31, 0x01, 0xAA, 0xD2, 0x88, 0xD2, 0x00
    .byte 0x10, 0x32, 0x00, 0x23, 0x8E, 0xF0, 0xE2, 0xF9, 0x41, 0x46, 0x08, 0x68, 0x41, 0x69, 0x40, 0x46
    .byte 0xB6, 0xF0, 0x1E, 0xFB, 0x21, 0x88, 0x89, 0x05, 0x89, 0x0D, 0x04, 0x9A, 0x52, 0x42, 0x09, 0x92
    .byte 0x88, 0x42, 0x00, 0xD0, 0x7C, 0xE0, 0x15, 0x48, 0x40, 0x44, 0x01, 0x68, 0x0B, 0x1C, 0x14, 0x33
    .byte 0x05, 0x93, 0x01, 0xA8, 0x04, 0x89, 0x42, 0x89, 0x80, 0x88, 0x06, 0x90, 0x01, 0xA8, 0xC0, 0x88
    .byte 0x10, 0x4B, 0xCB, 0x18, 0x08, 0x93, 0x02, 0x38, 0x81, 0x46, 0x2B, 0x21, 0x10, 0x1C, 0x48, 0x43
    .byte 0x00, 0x19, 0x06, 0x1C, 0x2B, 0x3E, 0x55, 0x1E, 0x02, 0x22, 0x07, 0x92, 0x00, 0x20, 0x00, 0x2C
    .byte 0x06, 0xDB, 0x00, 0x2D, 0x04, 0xDB, 0x2A, 0x2C, 0x02, 0xDC, 0x18, 0x2D, 0x00, 0xDC, 0x01, 0x20
    .byte 0x00, 0x28, 0x09, 0xD0, 0xB0, 0x00, 0x08, 0x99, 0x0B, 0x18, 0x06, 0xE0, 0x38, 0x10, 0x00, 0x00
    .byte 0x28, 0x10, 0x00, 0x00, 0xDC, 0x09, 0x00, 0x00, 0x00, 0x23, 0x1F, 0x1C, 0x00, 0x2F, 0x3E, 0xD0
    .byte 0x42, 0x46, 0x52, 0x68, 0x92, 0x46, 0x05, 0x9B, 0x0C, 0x48, 0x1A, 0x18, 0x2B, 0x1C, 0xB0, 0x00
    .byte 0x80, 0x18, 0x84, 0x46, 0x68, 0x1C, 0x00, 0x21, 0x00, 0x2C, 0x06, 0xDB, 0x00, 0x28, 0x04, 0xDB
    .byte 0x2A, 0x2C, 0x02, 0xDC, 0x18, 0x28, 0x00, 0xDC, 0x01, 0x21, 0x00, 0x29, 0x08, 0xD0, 0x2B, 0x21
    .byte 0x48, 0x43, 0x20, 0x18, 0x80, 0x00, 0x11, 0x18, 0x03, 0xE0, 0x00, 0x00, 0xC8, 0x09, 0x00, 0x00
    .byte 0x00, 0x21, 0x58, 0x1E, 0x00, 0x23, 0x00, 0x2C, 0x06, 0xDB, 0x00, 0x28, 0x04, 0xDB, 0x2A, 0x2C
    .byte 0x02, 0xDC, 0x18, 0x28, 0x00, 0xDC, 0x01, 0x23, 0x00, 0x2B, 0x05, 0xD0, 0x2B, 0x23, 0x58, 0x43
    .byte 0x20, 0x18, 0x80, 0x00, 0x12, 0x18, 0x00, 0xE0, 0x00, 0x22, 0x60, 0x46, 0xED, 0xF7, 0xCE, 0xFD
    .byte 0x00, 0x90, 0x50, 0x46, 0x06, 0x99, 0x4A, 0x46, 0x3B, 0x1C, 0x8D, 0xF0, 0x81, 0xF9, 0x02, 0x20
    .byte 0x81, 0x44, 0x2B, 0x36, 0x01, 0x35, 0x07, 0x99, 0x01, 0x39, 0x07, 0x91, 0x00, 0x29, 0x9D, 0xDA
    .byte 0x09, 0x9A, 0x04, 0x9B, 0x1A, 0x43, 0xD0, 0x0F, 0x00, 0xE0, 0x00, 0x20, 0x0A, 0xB0, 0x38, 0xBC
    .byte 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xF0, 0xB5, 0x84, 0xB0
    .byte 0x04, 0x1C, 0x0D, 0x1C, 0x01, 0xA9, 0x00, 0x20, 0x01, 0x90, 0x88, 0x80, 0xC8, 0x80, 0x08, 0x81
    .byte 0x48, 0x81, 0x20, 0x1C, 0x29, 0x1C, 0x01, 0xAA, 0xFE, 0xF7, 0x6E, 0xFE, 0x00, 0x06, 0x00, 0x28
    .byte 0x59, 0xD0, 0x01, 0x98, 0xED, 0xF7, 0x08, 0xF8, 0x07, 0x1C, 0x20, 0x68, 0x41, 0x69, 0x20, 0x1C
    .byte 0xB6, 0xF0, 0x6E, 0xFA, 0x29, 0x88, 0x89, 0x05, 0x89, 0x0D, 0x88, 0x42, 0x47, 0xD1, 0x66, 0x68
    .byte 0x01, 0xA9, 0x0A, 0x1C, 0x0F, 0x4B, 0xE0, 0x18, 0x00, 0x68, 0x0F, 0x4B, 0xC4, 0x18, 0x0B, 0x89
    .byte 0x52, 0x89, 0x2B, 0x20, 0x50, 0x43, 0x18, 0x18, 0x80, 0x00, 0x25, 0x18, 0x51, 0x1C, 0x00, 0x20
    .byte 0x00, 0x2B, 0x06, 0xDB, 0x00, 0x29, 0x04, 0xDB, 0x2A, 0x2B, 0x02, 0xDC, 0x18, 0x29, 0x00, 0xDC
    .byte 0x01, 0x20, 0x00, 0x28, 0x0A, 0xD0, 0x2B, 0x20, 0x48, 0x43, 0x18, 0x18, 0x80, 0x00, 0x21, 0x18
    .byte 0x05, 0xE0, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00, 0xDC, 0x09, 0x00, 0x00, 0x00, 0x21, 0x01, 0x3A
    .byte 0x00, 0x20, 0x00, 0x2B, 0x06, 0xDB, 0x00, 0x2A, 0x04, 0xDB, 0x2A, 0x2B, 0x02, 0xDC, 0x18, 0x2A
    .byte 0x00, 0xDC, 0x01, 0x20, 0x00, 0x28, 0x05, 0xD0, 0x2B, 0x20, 0x50, 0x43, 0x18, 0x18, 0x80, 0x00
    .byte 0x22, 0x18, 0x00, 0xE0, 0x00, 0x22, 0x28, 0x1C, 0xED, 0xF7, 0x50, 0xFD, 0x01, 0xA9, 0x89, 0x88
    .byte 0x01, 0xAA, 0xD2, 0x88, 0x01, 0x9B, 0x00, 0x90, 0x30, 0x1C, 0x8D, 0xF0, 0x01, 0xF9, 0x01, 0x2F
    .byte 0x01, 0xD1, 0x01, 0x20, 0x00, 0xE0, 0x00, 0x20, 0x04, 0xB0, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47
    .byte 0x70, 0xB5, 0x84, 0xB0, 0x04, 0x1C, 0x0D, 0x1C, 0x16, 0x1C, 0x01, 0xA9, 0x00, 0x20, 0x01, 0x90
    .byte 0x88, 0x80, 0xC8, 0x80, 0x08, 0x81, 0x48, 0x81, 0x20, 0x1C, 0x29, 0x1C, 0x01, 0xAA, 0xFE, 0xF7
    .byte 0xFB, 0xFD, 0x00, 0x06, 0x00, 0x28, 0x54, 0xD0, 0x01, 0x98, 0x31, 0x1C, 0xEC, 0xF7, 0xA8, 0xFF
    .byte 0x20, 0x68, 0x41, 0x69, 0x20, 0x1C, 0xB6, 0xF0, 0xFB, 0xF9, 0x29, 0x88, 0x89, 0x05, 0x89, 0x0D
    .byte 0x88, 0x42, 0x46, 0xD1, 0x66, 0x68, 0x01, 0xA9, 0x0A, 0x1C, 0x0F, 0x4B, 0xE0, 0x18, 0x00, 0x68
    .byte 0x0E, 0x4B, 0xC4, 0x18, 0x0B, 0x89, 0x52, 0x89, 0x2B, 0x20, 0x50, 0x43, 0x18, 0x18, 0x80, 0x00
    .byte 0x25, 0x18, 0x51, 0x1C, 0x00, 0x20, 0x00, 0x2B, 0x06, 0xDB, 0x00, 0x29, 0x04, 0xDB, 0x2A, 0x2B
    .byte 0x02, 0xDC, 0x18, 0x29, 0x00, 0xDC, 0x01, 0x20, 0x00, 0x28, 0x09, 0xD0, 0x2B, 0x20, 0x48, 0x43
    .byte 0x18, 0x18, 0x80, 0x00, 0x21, 0x18, 0x04, 0xE0, 0x38, 0x10, 0x00, 0x00, 0xDC, 0x09, 0x00, 0x00
    .byte 0x00, 0x21, 0x01, 0x3A, 0x00, 0x20, 0x00, 0x2B, 0x06, 0xDB, 0x00, 0x2A, 0x04, 0xDB, 0x2A, 0x2B
    .byte 0x02, 0xDC, 0x18, 0x2A, 0x00, 0xDC, 0x01, 0x20, 0x00, 0x28, 0x05, 0xD0, 0x2B, 0x20, 0x50, 0x43
    .byte 0x18, 0x18, 0x80, 0x00, 0x22, 0x18, 0x00, 0xE0, 0x00, 0x22, 0x28, 0x1C, 0xED, 0xF7, 0xDE, 0xFC
    .byte 0x01, 0xA9, 0x89, 0x88, 0x01, 0xAA, 0xD2, 0x88, 0x01, 0x9B, 0x00, 0x90, 0x30, 0x1C, 0x8D, 0xF0
    .byte 0x8F, 0xF8, 0x04, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x70, 0xB5, 0x85, 0xB0
    .byte 0x04, 0x1C, 0x0D, 0x1C, 0x16, 0x1C, 0x01, 0xA9, 0x00, 0x20, 0x01, 0x90, 0x88, 0x80, 0xC8, 0x80
    .byte 0x08, 0x81, 0x48, 0x81, 0x20, 0x1C, 0x29, 0x1C, 0x01, 0xAA, 0xFE, 0xF7, 0x8D, 0xFD, 0x00, 0x06
    .byte 0x00, 0x28, 0x57, 0xD0, 0x01, 0x99, 0x04, 0xA8, 0xEC, 0xF7, 0x5C, 0xFF, 0x04, 0x98, 0x30, 0x60
    .byte 0x20, 0x68, 0x41, 0x69, 0x20, 0x1C, 0xB6, 0xF0, 0x8B, 0xF9, 0x29, 0x88, 0x89, 0x05, 0x89, 0x0D
    .byte 0x88, 0x42, 0x4E, 0xD1, 0x66, 0x68, 0x01, 0xA9, 0x0A, 0x1C, 0x0F, 0x4B, 0xE0, 0x18, 0x00, 0x68
    .byte 0x0E, 0x4B, 0xC4, 0x18, 0x0B, 0x89, 0x52, 0x89, 0x2B, 0x20, 0x50, 0x43, 0x18, 0x18, 0x80, 0x00
    .byte 0x25, 0x18, 0x51, 0x1C, 0x00, 0x20, 0x00, 0x2B, 0x06, 0xDB, 0x00, 0x29, 0x04, 0xDB, 0x2A, 0x2B
    .byte 0x02, 0xDC, 0x18, 0x29, 0x00, 0xDC, 0x01, 0x20, 0x00, 0x28, 0x09, 0xD0, 0x2B, 0x20, 0x48, 0x43
    .byte 0x18, 0x18, 0x80, 0x00, 0x21, 0x18, 0x04, 0xE0, 0x38, 0x10, 0x00, 0x00, 0xDC, 0x09, 0x00, 0x00
    .byte 0x00, 0x21, 0x01, 0x3A, 0x00, 0x20, 0x00, 0x2B, 0x06, 0xDB, 0x00, 0x2A, 0x04, 0xDB, 0x2A, 0x2B
    .byte 0x02, 0xDC, 0x18, 0x2A, 0x00, 0xDC, 0x01, 0x20, 0x00, 0x28, 0x05, 0xD0, 0x2B, 0x20, 0x50, 0x43
    .byte 0x18, 0x18, 0x80, 0x00, 0x22, 0x18, 0x00, 0xE0, 0x00, 0x22, 0x28, 0x1C, 0xED, 0xF7, 0x6E, 0xFC
    .byte 0x01, 0xA9, 0x89, 0x88, 0x01, 0xAA, 0xD2, 0x88, 0x01, 0x9B, 0x00, 0x90, 0x30, 0x1C, 0x8D, 0xF0
    .byte 0x1F, 0xF8, 0x06, 0xE0, 0x04, 0xA8, 0x21, 0x1C, 0x2A, 0x1C, 0x00, 0xF0, 0x07, 0xF8, 0x04, 0x98
    .byte 0x30, 0x60, 0x05, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

    thumb_func_start func_0801D6AC
func_0801D6AC: @ 0x0801D6AC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x28
    mov sl, r0
    adds r7, r1, #0
    adds r5, r2, #0
    ldr r1, _0801D7A4 @ =0x00001038
    adds r0, r7, r1
    ldr r0, [r0]
    ldr r2, _0801D7A8 @ =0x000034C8
    adds r6, r0, r2
    adds r0, #0x10
    bl func_0800E324
    mov sb, r0
    ldrb r0, [r5, #1]
    lsrs r0, r0, #2
    ldrh r1, [r5, #2]
    ldr r3, _0801D7AC @ =0x000003FF
    ands r1, r3
    lsls r1, r1, #6
    orrs r1, r0
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    ldrb r2, [r5, #3]
    lsrs r2, r2, #2
    ldrh r0, [r5, #4]
    ands r0, r3
    lsls r0, r0, #6
    orrs r0, r2
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    add r4, sp, #0x1c
    strh r1, [r4]
    strh r0, [r4, #2]
    adds r1, #1
    strh r1, [r4, #4]
    adds r0, #1
    strh r0, [r4, #6]
    ldrh r1, [r5]
    lsls r1, r1, #0x16
    lsrs r1, r1, #0x16
    adds r0, r6, #0
    adds r2, r4, #0
    mov r3, sb
    bl func_080A1D20
    mov r8, r0
    add r0, sp, #4
    bl __12RucksackItem
    movs r0, #1
    rsbs r0, r0, #0
    cmp r8, r0
    beq _0801D78C
    ldrh r2, [r5]
    lsls r2, r2, #0x16
    lsrs r2, r2, #0x16
    mov r0, sb
    str r0, [sp]
    add r0, sp, #8
    adds r1, r6, #0
    adds r3, r4, #0
    bl func_080A1B38
    ldr r0, [sp, #8]
    str r0, [sp, #4]
    add r0, sp, #4
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0801D78C
    ldrh r0, [r5]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    ldr r1, [r7, #4]
    ldr r1, [r1]
    cmp r0, r1
    bne _0801D78C
    add r4, sp, #0xc
    adds r0, r4, #0
    adds r1, r6, #0
    mov r2, r8
    bl func_080A1CBC
    ldr r1, [r7, #4]
    movs r2, #8
    ldrsh r0, [r4, r2]
    cmp r0, #0
    bge _0801D76A
    adds r0, #7
_0801D76A:
    asrs r3, r0, #3
    movs r2, #0xa
    ldrsh r0, [r4, r2]
    cmp r0, #0
    bge _0801D776
    adds r0, #7
_0801D776:
    asrs r0, r0, #3
    add r2, sp, #0x24
    strh r3, [r2]
    strh r0, [r2, #2]
    movs r0, #2
    str r0, [sp]
    adds r0, r1, #0
    movs r1, #1
    movs r3, #2
    bl func_080A5F78
_0801D78C:
    ldr r0, [sp, #4]
    mov r1, sl
    str r0, [r1]
    mov r0, sl
    add sp, #0x28
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0801D7A4: .4byte 0x00001038
_0801D7A8: .4byte 0x000034C8
_0801D7AC: .4byte 0x000003FF
_0801D7B0:
    .byte 0x70, 0xB5, 0x84, 0xB0, 0x04, 0x1C, 0x0D, 0x1C, 0x16, 0x1C, 0x01, 0xA9, 0x00, 0x20, 0x01, 0x90
    .byte 0x88, 0x80, 0xC8, 0x80, 0x08, 0x81, 0x48, 0x81, 0x20, 0x1C, 0x29, 0x1C, 0x01, 0xAA, 0xFE, 0xF7
    .byte 0x93, 0xFC, 0x00, 0x06, 0x00, 0x28, 0x54, 0xD0, 0x01, 0x98, 0x31, 0x1C, 0xEC, 0xF7, 0x8A, 0xFF
    .byte 0x20, 0x68, 0x41, 0x69, 0x20, 0x1C, 0xB6, 0xF0, 0x93, 0xF8, 0x29, 0x88, 0x89, 0x05, 0x89, 0x0D
    .byte 0x88, 0x42, 0x46, 0xD1, 0x66, 0x68, 0x01, 0xA9, 0x0A, 0x1C, 0x0F, 0x4B, 0xE0, 0x18, 0x00, 0x68
    .byte 0x0E, 0x4B, 0xC4, 0x18, 0x0B, 0x89, 0x52, 0x89, 0x2B, 0x20, 0x50, 0x43, 0x18, 0x18, 0x80, 0x00
    .byte 0x25, 0x18, 0x51, 0x1C, 0x00, 0x20, 0x00, 0x2B, 0x06, 0xDB, 0x00, 0x29, 0x04, 0xDB, 0x2A, 0x2B
    .byte 0x02, 0xDC, 0x18, 0x29, 0x00, 0xDC, 0x01, 0x20, 0x00, 0x28, 0x09, 0xD0, 0x2B, 0x20, 0x48, 0x43
    .byte 0x18, 0x18, 0x80, 0x00, 0x21, 0x18, 0x04, 0xE0, 0x38, 0x10, 0x00, 0x00, 0xDC, 0x09, 0x00, 0x00
    .byte 0x00, 0x21, 0x01, 0x3A, 0x00, 0x20, 0x00, 0x2B, 0x06, 0xDB, 0x00, 0x2A, 0x04, 0xDB, 0x2A, 0x2B
    .byte 0x02, 0xDC, 0x18, 0x2A, 0x00, 0xDC, 0x01, 0x20, 0x00, 0x28, 0x05, 0xD0, 0x2B, 0x20, 0x50, 0x43
    .byte 0x18, 0x18, 0x80, 0x00, 0x22, 0x18, 0x00, 0xE0, 0x00, 0x22, 0x28, 0x1C, 0xED, 0xF7, 0x76, 0xFB
    .byte 0x01, 0xA9, 0x89, 0x88, 0x01, 0xAA, 0xD2, 0x88, 0x01, 0x9B, 0x00, 0x90, 0x30, 0x1C, 0x8C, 0xF0
    .byte 0x27, 0xFF, 0x04, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x83, 0xB0
    .byte 0x14, 0x1C, 0x6B, 0x46, 0x00, 0x22, 0x00, 0x92, 0x9A, 0x80, 0xDA, 0x80, 0x1A, 0x81, 0x5A, 0x81
    .byte 0x6A, 0x46, 0xFE, 0xF7, 0x29, 0xFC, 0x00, 0x06, 0x00, 0x28, 0x0A, 0xD0, 0x00, 0x98, 0x21, 0x1C
    .byte 0xEC, 0xF7, 0x0A, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x01, 0xD0, 0x00, 0x20, 0x02, 0xE0, 0x01, 0x20
    .byte 0x00, 0xE0, 0x02, 0x20, 0x03, 0xB0, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

    thumb_func_start func_0801D8CC
func_0801D8CC: @ 0x0801D8CC
    push {r4, r5, lr}
    adds r2, r0, #0
    ldr r0, _0801D910 @ =0x0000103C
    adds r1, r2, r0
    movs r0, #1
    strb r0, [r1]
    ldr r1, _0801D914 @ =0x00001038
    adds r0, r2, r1
    ldr r0, [r0]
    ldr r1, _0801D918 @ =0x000034C4
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq _0801D91C
    adds r4, r2, #0
    adds r4, #8
    movs r0, #0xcc
    lsls r0, r0, #1
    adds r5, r2, r0
    cmp r4, r5
    beq _0801D940
_0801D8F6:
    ldr r2, [r4]
    cmp r2, #0
    beq _0801D906
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x20]
    adds r0, r2, #0
    bl _call_via_r1
_0801D906:
    adds r4, #4
    cmp r4, r5
    bne _0801D8F6
    b _0801D940
    .align 2, 0
_0801D910: .4byte 0x0000103C
_0801D914: .4byte 0x00001038
_0801D918: .4byte 0x000034C4
_0801D91C:
    adds r4, r2, #0
    adds r4, #8
    movs r1, #0xcc
    lsls r1, r1, #1
    adds r5, r2, r1
    cmp r4, r5
    beq _0801D940
_0801D92A:
    ldr r2, [r4]
    cmp r2, #0
    beq _0801D93A
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x20]
    adds r0, r2, #0
    bl _call_via_r1
_0801D93A:
    adds r4, #4
    cmp r4, r5
    bne _0801D92A
_0801D940:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0801D948
func_0801D948: @ 0x0801D948
    push {r4, r5, lr}
    adds r2, r0, #0
    ldr r0, _0801D970 @ =0x0000103C
    adds r1, r2, r0
    movs r0, #0
    strb r0, [r1]
    ldr r1, _0801D974 @ =0x00001038
    adds r0, r2, r1
    ldr r0, [r0]
    ldr r1, _0801D978 @ =0x000034C4
    adds r0, r0, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq _0801D97C
    ldr r0, [r2, #8]
    ldr r1, [r0, #0x14]
    ldr r1, [r1, #0x24]
    bl _call_via_r1
    b _0801D9A0
    .align 2, 0
_0801D970: .4byte 0x0000103C
_0801D974: .4byte 0x00001038
_0801D978: .4byte 0x000034C4
_0801D97C:
    adds r4, r2, #0
    adds r4, #8
    movs r0, #0xcc
    lsls r0, r0, #1
    adds r5, r2, r0
    cmp r4, r5
    beq _0801D9A0
_0801D98A:
    ldr r2, [r4]
    cmp r2, #0
    beq _0801D99A
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x24]
    adds r0, r2, #0
    bl _call_via_r1
_0801D99A:
    adds r4, #4
    cmp r4, r5
    bne _0801D98A
_0801D9A0:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0801D9A8
func_0801D9A8: @ 0x0801D9A8
    push {lr}
    ldr r3, _0801D9B8 @ =0x00001054
    adds r0, r0, r3
    ldr r0, [r0]
    bl func_08012B24
    pop {r0}
    bx r0
    .align 2, 0
_0801D9B8: .4byte 0x00001054
_0801D9BC:
    .byte 0x70, 0xB5, 0x04, 0x1C
    .byte 0x04, 0x49, 0x60, 0x18, 0x01, 0x68, 0x0E, 0x1C, 0x08, 0x36, 0x88, 0x68, 0x01, 0x28, 0x03, 0xD1
    .byte 0x0A, 0x20, 0xB4, 0xE0, 0x38, 0x10, 0x00, 0x00, 0x03, 0x38, 0x01, 0x28, 0x01, 0xD8, 0x0B, 0x20
    .byte 0xAD, 0xE0, 0xFA, 0x22, 0x52, 0x00, 0x88, 0x18, 0xEE, 0xF7, 0x48, 0xFB, 0x05, 0x1C, 0x20, 0x68
    .byte 0x41, 0x69, 0x20, 0x1C, 0xB5, 0xF0, 0x8C, 0xFF, 0x02, 0x1C, 0x11, 0x1C, 0x34, 0x39, 0x06, 0x48
    .byte 0x81, 0x42, 0x00, 0xD8, 0x02, 0x22, 0x2B, 0x2A, 0x00, 0xD9, 0x8C, 0xE0, 0x90, 0x00, 0x03, 0x49
    .byte 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x20, 0xDA, 0x01, 0x08
    .byte 0xD0, 0xDA, 0x01, 0x08, 0x22, 0xDB, 0x01, 0x08, 0xD0, 0xDA, 0x01, 0x08, 0xD0, 0xDA, 0x01, 0x08
    .byte 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08
    .byte 0xD0, 0xDA, 0x01, 0x08, 0xD0, 0xDA, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08
    .byte 0x26, 0xDB, 0x01, 0x08, 0x22, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08
    .byte 0x26, 0xDB, 0x01, 0x08, 0xD0, 0xDA, 0x01, 0x08, 0xD0, 0xDA, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08
    .byte 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08
    .byte 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08
    .byte 0x26, 0xDB, 0x01, 0x08, 0xD0, 0xDA, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08
    .byte 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x22, 0xDB, 0x01, 0x08
    .byte 0x22, 0xDB, 0x01, 0x08, 0xD0, 0xDA, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08
    .byte 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0x26, 0xDB, 0x01, 0x08, 0xD0, 0xDA, 0x01, 0x08
    .byte 0xB0, 0x7A, 0xC0, 0x06, 0xC0, 0x08, 0xFA, 0x21, 0x09, 0x06, 0x40, 0x18, 0x00, 0x0E, 0x0D, 0x28
    .byte 0x2C, 0xD8, 0x00, 0x2D, 0x09, 0xD0, 0x28, 0x1C, 0xEE, 0xF7, 0x44, 0xF8, 0x00, 0x06, 0x00, 0x28
    .byte 0x03, 0xD0, 0x28, 0x1C, 0xEE, 0xF7, 0x42, 0xF8, 0x21, 0xE0, 0x30, 0x1C, 0x08, 0x30, 0xF0, 0xF7
    .byte 0x11, 0xFC, 0x01, 0x28, 0x07, 0xD0, 0x01, 0x28, 0x03, 0xDD, 0x02, 0x28, 0x05, 0xD0, 0x03, 0x28
    .byte 0x05, 0xD0, 0x01, 0x20, 0x13, 0xE0, 0x02, 0x20, 0x11, 0xE0, 0x03, 0x20, 0x0F, 0xE0, 0x04, 0x20
    .byte 0x0D, 0xE0, 0x0C, 0x20, 0x0B, 0xE0, 0xB0, 0x7A, 0xC0, 0x06, 0xC0, 0x08, 0xFA, 0x22, 0x12, 0x06
    .byte 0x80, 0x18, 0x00, 0x0E, 0x0D, 0x28, 0x01, 0xD8, 0x0D, 0x20, 0x00, 0xE0, 0x0E, 0x20, 0x70, 0xBC
    .byte 0x02, 0xBC, 0x08, 0x47

    thumb_func_start func_0801DB44
func_0801DB44: @ 0x0801DB44
    push {lr}
    ldr r1, _0801DB54 @ =0x00001054
    adds r0, r0, r1
    ldr r0, [r0]
    bl func_0801468C
    pop {r1}
    bx r1
    .align 2, 0
_0801DB54: .4byte 0x00001054

    thumb_func_start func_0801DB58
func_0801DB58: @ 0x0801DB58
    push {r4, r5, lr}
    sub sp, #0xc
    adds r5, r0, #0
    mov r0, sp
    movs r2, #0
    movs r3, #0
    movs r1, #0x80
    lsls r1, r1, #1
    strh r1, [r0]
    strh r1, [r0, #2]
    strh r3, [r0, #4]
    strb r2, [r0, #6]
    strb r2, [r0, #7]
    strb r2, [r0, #8]
    ldr r0, [r5]
    ldr r1, [r0, #0x14]
    adds r0, r5, #0
    bl _call_via_r1
    adds r1, r0, #0
    adds r2, r1, #0
    subs r2, #0x34
    ldr r0, _0801DBA0 @ =0x000001FF
    cmp r2, r0
    bls _0801DB8E
    cmp r1, #0x2b
    bne _0801DBCE
_0801DB8E:
    cmp r1, #0x2b
    beq _0801DBB0
    ldr r0, _0801DBA4 @ =0x00000133
    cmp r1, r0
    ble _0801DBAC
    ldr r0, _0801DBA8 @ =0xFFFFFECC
    adds r1, r1, r0
    b _0801DBB2
    .align 2, 0
_0801DBA0: .4byte 0x000001FF
_0801DBA4: .4byte 0x00000133
_0801DBA8: .4byte 0xFFFFFECC
_0801DBAC:
    adds r1, r2, #0
    b _0801DBB2
_0801DBB0:
    movs r1, #9
_0801DBB2:
    mov r0, sp
    movs r3, #4
    ldrsh r2, [r0, r3]
    mov r3, sp
    ldr r0, _0801DC14 @ =0xFFFFF600
    subs r0, r0, r2
    adds r1, #1
    muls r0, r1, r0
    cmp r0, #0
    bge _0801DBC8
    adds r0, #0xff
_0801DBC8:
    asrs r0, r0, #8
    adds r0, r2, r0
    strh r0, [r3, #4]
_0801DBCE:
    ldr r1, _0801DC18 @ =0x00001038
    adds r0, r5, r1
    ldr r0, [r0]
    ldr r3, _0801DC1C @ =0x00001BD8
    adds r0, r0, r3
    bl func_0800E4FC
    cmp r0, #0x4f
    ble _0801DBEA
    mov r1, sp
    subs r0, #0x4f
    strb r0, [r1, #7]
    movs r0, #3
    strb r0, [r1, #8]
_0801DBEA:
    ldr r1, _0801DC20 @ =0x00001054
    adds r0, r5, r1
    ldr r4, [r0]
    ldr r0, [r5]
    movs r3, #0xa4
    lsls r3, r3, #1
    adds r0, r0, r3
    ldr r1, [r0]
    adds r0, r5, #0
    bl _call_via_r1
    adds r2, r0, #0
    adds r0, r4, #0
    movs r1, #1
    mov r3, sp
    bl func_080123CC
    add sp, #0xc
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_0801DC14: .4byte 0xFFFFF600
_0801DC18: .4byte 0x00001038
_0801DC1C: .4byte 0x00001BD8
_0801DC20: .4byte 0x00001054

    thumb_func_start func_0801DC24
func_0801DC24: @ 0x0801DC24
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    adds r5, r0, #0
    adds r7, r1, #0
    ldr r0, _0801DC54 @ =0x00001058
    adds r6, r5, r0
    ldr r4, [r6]
    cmp r4, #0
    beq _0801DC58
    adds r0, r4, #0
    adds r0, #0x28
    bl func_0805E860
    adds r0, r4, #0
    adds r0, #0x3c
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
    b _0801DCA0
    .align 2, 0
_0801DC54: .4byte 0x00001058
_0801DC58:
    movs r0, #0x40
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, [r5]
    ldr r1, [r0, #0x5c]
    adds r0, r5, #0
    bl _call_via_r1
    adds r1, r0, #0
    movs r0, #3
    str r0, [sp]
    movs r0, #0x1b
    str r0, [sp, #4]
    add r2, sp, #8
    movs r0, #1
    strb r0, [r2]
    adds r0, r4, #0
    adds r2, r7, #0
    adds r3, r5, #0
    bl func_080A4A00
    adds r5, r6, #0
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _0801DC9E
    cmp r1, #0
    beq _0801DC9E
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801DC9E:
    str r4, [r5]
_0801DCA0:
    add sp, #0xc
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0801DCA8
func_0801DCA8: @ 0x0801DCA8
    push {r4, r5, lr}
    ldr r1, _0801DCD0 @ =0x00001058
    adds r4, r0, r1
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq _0801DCC6
    cmp r1, #0
    beq _0801DCC6
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801DCC6:
    str r5, [r4]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_0801DCD0: .4byte 0x00001058

    thumb_func_start func_0801DCD4
func_0801DCD4: @ 0x0801DCD4
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, _0801DD10 @ =0x00001038
    adds r5, r4, r0
    ldr r0, [r5]
    adds r0, #0x54
    bl GetValueShipped__C11ShippingBin
    adds r6, r0, #0
    ldr r0, [r5]
    bl func_0801140C
    ldr r1, [r4]
    movs r0, #0xa0
    lsls r0, r0, #1
    adds r1, r1, r0
    ldr r0, _0801DD14 @ =0x000003DB
    str r0, [sp]
    str r6, [sp, #4]
    ldr r3, [r1]
    adds r0, r4, #0
    mov r1, sp
    movs r2, #1
    bl _call_via_r3
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
_0801DD10: .4byte 0x00001038
_0801DD14: .4byte 0x000003DB

    thumb_func_start func_0801DD18
func_0801DD18: @ 0x0801DD18
    push {lr}
    ldr r0, [r0, #4]
    bl func_080A6138
    pop {r0}
    bx r0

    thumb_func_start func_0801DD24
func_0801DD24: @ 0x0801DD24
    push {lr}
    ldr r0, [r0, #4]
    bl func_080A6194
    pop {r0}
    bx r0

    thumb_func_start func_0801DD30
func_0801DD30: @ 0x0801DD30
    push {lr}
    ldr r0, [r0, #4]
    bl func_080A61F0
    pop {r0}
    bx r0
_0801DD3C:
    .byte 0x00, 0xB5, 0x40, 0x68
    .byte 0x88, 0xF0, 0x78, 0xFA, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x40, 0x68, 0x88, 0xF0, 0x94, 0xFA
    .byte 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x40, 0x68, 0x88, 0xF0, 0xB0, 0xFA, 0x01, 0xBC, 0x00, 0x47
    .byte 0x00, 0xB5, 0x40, 0x68, 0x88, 0xF0, 0x8A, 0xF9, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x40, 0x68
    .byte 0x88, 0xF0, 0x58, 0xF9, 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_0801DD78
func_0801DD78: @ 0x0801DD78
    push {lr}
    ldr r0, [r0, #4]
    bl func_080A601C
    pop {r0}
    bx r0
_0801DD84:
    .byte 0x30, 0xB5, 0x82, 0xB0, 0x04, 0x1C, 0x0F, 0x49, 0x60, 0x18, 0x00, 0x68
    .byte 0xFA, 0x21, 0x49, 0x00, 0x40, 0x18, 0xEE, 0xF7, 0x71, 0xF9, 0x05, 0x1C, 0x60, 0x68, 0x88, 0xF0
    .byte 0xAF, 0xFA, 0x68, 0x46, 0x29, 0x1C, 0xED, 0xF7, 0xFD, 0xFE, 0x20, 0x1C, 0xFF, 0xF7, 0xD4, 0xFE
    .byte 0x68, 0x46, 0xF0, 0xF7, 0x51, 0xF9, 0x01, 0x1C, 0x01, 0xA8, 0x01, 0x70, 0xF0, 0xF7, 0xCA, 0xF8
    .byte 0x02, 0xB0, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x38, 0x10, 0x00, 0x00

    thumb_func_start func_0801DDCC
func_0801DDCC: @ 0x0801DDCC
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, _0801DDF0 @ =0x00001038
    adds r0, r4, r1
    ldr r0, [r0]
    ldr r1, _0801DDF4 @ =0x000034D8
    adds r0, r0, r1
    adds r1, r5, #0
    bl func_0809C5B4
    ldr r0, [r4, #4]
    adds r1, r5, #0
    bl func_080AA850
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_0801DDF0: .4byte 0x00001038
_0801DDF4: .4byte 0x000034D8

    thumb_func_start func_0801DDF8
func_0801DDF8: @ 0x0801DDF8
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, _0801DE1C @ =0x00001038
    adds r0, r4, r1
    ldr r0, [r0]
    ldr r1, _0801DE20 @ =0x000034D8
    adds r0, r0, r1
    adds r1, r5, #0
    bl func_0809C5D0
    ldr r0, [r4, #4]
    adds r1, r5, #0
    bl func_080AA850
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_0801DE1C: .4byte 0x00001038
_0801DE20: .4byte 0x000034D8

    thumb_func_start func_0801DE24
func_0801DE24: @ 0x0801DE24
    push {lr}
    ldr r0, [r0, #4]
    bl func_080A63B8
    pop {r0}
    bx r0
_0801DE30:
    .byte 0x00, 0xB5, 0x40, 0x68, 0x8C, 0xF0, 0x32, 0xFD, 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_0801DE3C
func_0801DE3C: @ 0x0801DE3C
    push {lr}
    ldr r0, [r0, #4]
    bl func_080AA8BC
    pop {r0}
    bx r0

    thumb_func_start func_0801DE48
func_0801DE48: @ 0x0801DE48
    push {lr}
    ldr r0, [r0, #4]
    bl func_080AA8DC
    pop {r0}
    bx r0
_0801DE54:
    .byte 0x70, 0xB5, 0x46, 0x46, 0x40, 0xB4, 0x82, 0xB0, 0x05, 0x1C, 0x88, 0x46
    .byte 0x13, 0x49, 0x68, 0x18, 0x00, 0x68, 0xFA, 0x21, 0x49, 0x00, 0x40, 0x18, 0xEE, 0xF7, 0x06, 0xF9
    .byte 0x06, 0x1C, 0x68, 0x68, 0x88, 0xF0, 0x72, 0xFA, 0x01, 0xAC, 0x20, 0x1C, 0x41, 0x46, 0xF0, 0xF7
    .byte 0x67, 0xF8, 0x68, 0x46, 0x31, 0x1C, 0x22, 0x1C, 0xED, 0xF7, 0xB2, 0xFE, 0x28, 0x1C, 0xFF, 0xF7
    .byte 0x63, 0xFE, 0x68, 0x46, 0xF0, 0xF7, 0xE0, 0xF8, 0x01, 0x1C, 0x68, 0x46, 0x05, 0x30, 0x01, 0x70
    .byte 0xF0, 0xF7, 0x58, 0xF8, 0x02, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47
    .byte 0x38, 0x10, 0x00, 0x00

    thumb_func_start func_0801DEB4
func_0801DEB4: @ 0x0801DEB4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x20
    mov sl, r0
    adds r7, r1, #0
    movs r0, #0
    str r0, [sp, #4]
    mov r8, r0
    movs r1, #0
    str r1, [sp, #8]
    mov ip, r1
    movs r4, #0
    ldr r0, _0801DFC8 @ =0x00001038
    add r0, sl
    ldr r0, [r0]
    ldr r2, _0801DFCC @ =0x000009DC
    adds r2, r0, r2
    str r2, [sp, #0x18]
_0801DEDE:
    movs r3, #0
    adds r6, r4, #1
    mov sb, r6
    movs r5, #0x8c
    lsls r5, r5, #1
    movs r0, #0xac
    muls r0, r4, r0
    ldr r1, [sp, #0x18]
    adds r2, r0, r1
    lsls r0, r4, #4
    adds r0, #0xb8
    str r0, [sp, #0x1c]
_0801DEF6:
    ldr r1, [r2]
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x14
    bne _0801DF3C
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #5
    bne _0801DF3C
    movs r6, #0
    ldrsh r1, [r7, r6]
    subs r1, r5, r1
    movs r6, #2
    ldrsh r0, [r7, r6]
    ldr r6, [sp, #0x1c]
    subs r0, r6, r0
    adds r6, r1, #0
    muls r6, r1, r6
    adds r1, r6, #0
    adds r6, r0, #0
    muls r6, r0, r6
    adds r0, r6, #0
    adds r1, r1, r0
    adds r0, r1, #0
    mov r6, ip
    cmp r6, #0
    beq _0801DF32
    ldr r6, [sp, #4]
    cmp r1, r6
    bge _0801DF3C
_0801DF32:
    movs r1, #1
    mov ip, r1
    mov r8, r3
    str r4, [sp, #8]
    str r0, [sp, #4]
_0801DF3C:
    adds r5, #0x10
    adds r2, #4
    adds r3, #1
    cmp r3, #0x2a
    bls _0801DEF6
    movs r1, #0x2b
    mov r4, sb
    cmp r4, #0x18
    bls _0801DEDE
    mov r2, ip
    cmp r2, #0
    bne _0801DF56
    b _0801E072
_0801DF56:
    ldr r0, _0801DFC8 @ =0x00001038
    add r0, sl
    ldr r0, [r0]
    ldr r3, _0801DFCC @ =0x000009DC
    adds r0, r0, r3
    ldr r6, [sp, #8]
    muls r1, r6, r1
    mov r7, r8
    adds r4, r7, r1
    lsls r1, r4, #2
    adds r0, r0, r1
    bl func_0800A3C8
    mov r1, sl
    ldr r0, [r1]
    ldr r1, [r0, #0x14]
    mov r0, sl
    bl _call_via_r1
    cmp r0, #2
    bne _0801E06E
    lsls r0, r7, #1
    adds r0, #0x22
    str r0, [sp, #0xc]
    lsls r0, r6, #1
    mov r2, sl
    ldr r2, [r2, #4]
    str r2, [sp, #0x10]
    adds r0, #0x14
    mov sb, r0
    adds r5, r4, #0
    subs r5, #0x2b
    adds r4, r6, #0
    subs r4, #1
    movs r3, #2
    str r3, [sp, #0x14]
_0801DF9E:
    ldr r0, _0801DFC8 @ =0x00001038
    add r0, sl
    ldr r0, [r0]
    ldr r6, _0801DFCC @ =0x000009DC
    adds r1, r0, r6
    movs r0, #0
    mov r7, r8
    cmp r7, #0
    blt _0801DFBE
    cmp r4, #0
    blt _0801DFBE
    cmp r7, #0x2a
    bgt _0801DFBE
    cmp r4, #0x18
    bgt _0801DFBE
    movs r0, #1
_0801DFBE:
    cmp r0, #0
    beq _0801DFD0
    lsls r0, r5, #2
    adds r3, r1, r0
    b _0801DFD2
    .align 2, 0
_0801DFC8: .4byte 0x00001038
_0801DFCC: .4byte 0x000009DC
_0801DFD0:
    movs r3, #0
_0801DFD2:
    adds r6, r3, #0
    cmp r6, #0
    beq _0801E05C
    ldr r0, _0801E014 @ =0x00001038
    add r0, sl
    ldr r0, [r0]
    ldr r1, _0801E018 @ =0x000009DC
    adds r2, r0, r1
    adds r3, r4, #0
    lsls r0, r5, #2
    adds r0, r0, r2
    mov ip, r0
    adds r0, r4, #1
    movs r1, #0
    mov r7, r8
    cmp r7, #0
    blt _0801E002
    cmp r0, #0
    blt _0801E002
    cmp r7, #0x2a
    bgt _0801E002
    cmp r0, #0x18
    bgt _0801E002
    movs r1, #1
_0801E002:
    cmp r1, #0
    beq _0801E01C
    movs r1, #0x2b
    muls r0, r1, r0
    add r0, r8
    lsls r0, r0, #2
    adds r1, r2, r0
    b _0801E01E
    .align 2, 0
_0801E014: .4byte 0x00001038
_0801E018: .4byte 0x000009DC
_0801E01C:
    movs r1, #0
_0801E01E:
    subs r0, r3, #1
    movs r3, #0
    mov r7, r8
    cmp r7, #0
    blt _0801E036
    cmp r0, #0
    blt _0801E036
    cmp r7, #0x2a
    bgt _0801E036
    cmp r0, #0x18
    bgt _0801E036
    movs r3, #1
_0801E036:
    cmp r3, #0
    beq _0801E046
    movs r3, #0x2b
    muls r0, r3, r0
    add r0, r8
    lsls r0, r0, #2
    adds r2, r2, r0
    b _0801E048
_0801E046:
    movs r2, #0
_0801E048:
    mov r0, ip
    bl func_0800AF5C
    str r0, [sp]
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0xc]
    mov r2, sb
    adds r3, r6, #0
    bl func_080AA6D0
_0801E05C:
    movs r6, #2
    add sb, r6
    adds r5, #0x2b
    adds r4, #1
    ldr r7, [sp, #0x14]
    subs r7, #1
    str r7, [sp, #0x14]
    cmp r7, #0
    bge _0801DF9E
_0801E06E:
    movs r0, #1
    b _0801E074
_0801E072:
    movs r0, #0
_0801E074:
    add sp, #0x20
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
_0801E084:
    .byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x93, 0xB0
    .byte 0x10, 0x90, 0x00, 0xF0, 0x3B, 0xFC, 0x00, 0x20, 0x11, 0x90, 0x00, 0x21, 0x12, 0x91, 0x12, 0x9A
    .byte 0x91, 0x46, 0x10, 0x9B, 0x18, 0x68, 0x02, 0x6C, 0x18, 0x1C, 0x12, 0x99, 0xB5, 0xF0, 0x32, 0xFC
    .byte 0x07, 0x1C, 0x00, 0x2F, 0x00, 0xD1, 0xBB, 0xE2, 0x00, 0x20, 0x82, 0x46, 0x12, 0x98, 0x2B, 0x38
    .byte 0x28, 0x28, 0x00, 0xD9, 0xEA, 0xE0, 0x80, 0x00, 0x01, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46
    .byte 0xD4, 0xE0, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x9C, 0xE2, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x9C, 0xE2, 0x01, 0x08, 0x9C, 0xE2, 0x01, 0x08, 0x9C, 0xE2, 0x01, 0x08, 0x9C, 0xE2, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x78, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x10, 0x99, 0x13, 0x4A, 0x88, 0x18, 0x00, 0x68
    .byte 0x80, 0x68, 0x03, 0x38, 0x01, 0x28, 0x00, 0xD8, 0x8C, 0xE0, 0xBA, 0x88, 0x8D, 0x20, 0x80, 0x00
    .byte 0x82, 0x42, 0x00, 0xD1, 0x86, 0xE0, 0x10, 0x9B, 0x5D, 0x68, 0x28, 0x68, 0x82, 0x42, 0x15, 0xD1
    .byte 0x68, 0x68, 0x86, 0xF0, 0x79, 0xFA, 0x05, 0x8C, 0x46, 0x8C, 0x10, 0x98, 0x44, 0x68, 0x60, 0x68
    .byte 0x86, 0xF0, 0x72, 0xFA, 0x00, 0x22, 0xE0, 0x6A, 0x01, 0xA9, 0x01, 0x90, 0x02, 0x92, 0x0D, 0x81
    .byte 0x4E, 0x81, 0x79, 0x69, 0x06, 0xAC, 0x11, 0xE0, 0x38, 0x10, 0x00, 0x00, 0x02, 0x2A, 0x1D, 0xD1
    .byte 0x01, 0xAB, 0x10, 0x99, 0x0C, 0x4A, 0x88, 0x18, 0x00, 0x68, 0x80, 0x21, 0x58, 0x22, 0x01, 0x90
    .byte 0x00, 0x20, 0x02, 0x90, 0x19, 0x81, 0x5A, 0x81, 0x79, 0x69, 0x08, 0xAC, 0x20, 0x1C, 0xCA, 0x68
    .byte 0x39, 0x1C, 0xB5, 0xF0, 0x8F, 0xFB, 0x01, 0xA8, 0x21, 0x1C, 0x8D, 0xF0, 0x39, 0xFF, 0x00, 0x06
    .byte 0x00, 0x28, 0x4B, 0xD0, 0x4E, 0xE0, 0x00, 0x00, 0x50, 0x10, 0x00, 0x00, 0x01, 0xAB, 0x00, 0x20
    .byte 0x80, 0x46, 0x29, 0x49, 0x08, 0x1C, 0x02, 0x40, 0x19, 0x88, 0x28, 0x4C, 0x20, 0x1C, 0x08, 0x40
    .byte 0x10, 0x43, 0x18, 0x80, 0x59, 0x78, 0x03, 0x22, 0x10, 0x1C, 0x08, 0x40, 0x58, 0x70, 0x59, 0x88
    .byte 0x20, 0x1C, 0x08, 0x40, 0x58, 0x80, 0xD8, 0x78, 0x02, 0x40, 0xDA, 0x70, 0x98, 0x88, 0x04, 0x40
    .byte 0x9C, 0x80, 0x1E, 0x20, 0x00, 0x90, 0x28, 0x1C, 0x19, 0x1C, 0x03, 0x22, 0x00, 0x23, 0x87, 0xF0
    .byte 0x45, 0xFA, 0x01, 0x22, 0x11, 0x92, 0x10, 0x9B, 0x58, 0x68, 0x40, 0x68, 0x86, 0xF0, 0x1C, 0xFA
    .byte 0x05, 0x8C, 0x46, 0x8C, 0x10, 0x98, 0x44, 0x68, 0x60, 0x68, 0x86, 0xF0, 0x15, 0xFA, 0xE0, 0x6A
    .byte 0x01, 0xA9, 0x01, 0x90, 0x42, 0x46, 0x02, 0x92, 0x0D, 0x81, 0x4E, 0x81, 0x79, 0x69, 0x0A, 0xAC
    .byte 0x20, 0x1C, 0xCA, 0x68, 0x39, 0x1C, 0xB5, 0xF0, 0x45, 0xFB, 0x01, 0xA8, 0x21, 0x1C, 0x8D, 0xF0
    .byte 0xEF, 0xFE, 0x00, 0x06, 0x00, 0x28, 0x01, 0xD0, 0x01, 0x23, 0x9A, 0x46, 0x50, 0x46, 0x00, 0x28
    .byte 0x00, 0xD1, 0xC5, 0xE1, 0x48, 0x46, 0x2B, 0x38, 0x28, 0x28, 0x00, 0xD9, 0xC0, 0xE1, 0x80, 0x00
    .byte 0x03, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0xFF, 0x03, 0x00, 0x00, 0x00, 0xFC, 0xFF, 0xFF
    .byte 0xC4, 0xE2, 0x01, 0x08, 0x68, 0xE3, 0x01, 0x08, 0xB0, 0xE3, 0x01, 0x08, 0x30, 0xE6, 0x01, 0x08
    .byte 0xDC, 0xE3, 0x01, 0x08, 0xDC, 0xE3, 0x01, 0x08, 0xDC, 0xE3, 0x01, 0x08, 0xDC, 0xE3, 0x01, 0x08
    .byte 0xDC, 0xE3, 0x01, 0x08, 0xDC, 0xE3, 0x01, 0x08, 0xDC, 0xE3, 0x01, 0x08, 0xDC, 0xE3, 0x01, 0x08
    .byte 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08
    .byte 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08
    .byte 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08
    .byte 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08
    .byte 0x30, 0xE6, 0x01, 0x08, 0x30, 0xE6, 0x01, 0x08, 0x30, 0xE6, 0x01, 0x08, 0x30, 0xE6, 0x01, 0x08
    .byte 0x04, 0xE6, 0x01, 0x08, 0x12, 0xE6, 0x01, 0x08, 0xBC, 0xE4, 0x01, 0x08, 0xBC, 0xE4, 0x01, 0x08
    .byte 0xBC, 0xE4, 0x01, 0x08, 0xBC, 0xE4, 0x01, 0x08, 0xBC, 0xE4, 0x01, 0x08, 0xBC, 0xE4, 0x01, 0x08
    .byte 0xBC, 0xE4, 0x01, 0x08, 0xBC, 0xE4, 0x01, 0x08, 0x00, 0x2F, 0x00, 0xD1, 0x60, 0xE1, 0x04, 0xA9
    .byte 0x02, 0x23, 0x0A, 0x88, 0x0D, 0x4C, 0x20, 0x1C, 0x10, 0x40, 0x18, 0x43, 0x08, 0x80, 0xF8, 0x25
    .byte 0x4B, 0x78, 0x03, 0x22, 0x10, 0x1C, 0x18, 0x40, 0x28, 0x43, 0x48, 0x70, 0x05, 0x25, 0x4B, 0x88
    .byte 0x20, 0x1C, 0x18, 0x40, 0x28, 0x43, 0x48, 0x80, 0xC8, 0x78, 0x02, 0x40, 0x48, 0x20, 0x02, 0x43
    .byte 0xCA, 0x70, 0x01, 0x22, 0x88, 0x88, 0x04, 0x40, 0x14, 0x43, 0x1C, 0xE1, 0x00, 0xFC, 0xFF, 0xFF
    .byte 0x00, 0x2F, 0x00, 0xD1, 0x3C, 0xE1, 0x03, 0xA9, 0x02, 0x26, 0x0A, 0x88, 0x06, 0x4C, 0x20, 0x1C
    .byte 0x10, 0x40, 0x30, 0x43, 0x08, 0x80, 0xC0, 0x25, 0x4B, 0x78, 0x03, 0x22, 0x10, 0x1C, 0x18, 0x40
    .byte 0x28, 0x43, 0x48, 0x70, 0x0B, 0x25, 0xF9, 0xE0, 0x00, 0xFC, 0xFF, 0xFF, 0x00, 0x2F, 0x00, 0xD1
    .byte 0x26, 0xE1, 0xB9, 0x88, 0x11, 0x29, 0x03, 0xD0, 0x8D, 0x20, 0x80, 0x00, 0x81, 0x42, 0x45, 0xD1
    .byte 0x4A, 0x46, 0x2E, 0x3A, 0x10, 0x99, 0x1F, 0x4B, 0xC8, 0x18, 0x01, 0x68, 0x82, 0x20, 0xC0, 0x00
    .byte 0x09, 0x18, 0x0C, 0xA8, 0xEE, 0xF7, 0x74, 0xF9, 0x0C, 0x98, 0x0D, 0x90, 0x0D, 0xA8, 0x00, 0x21
    .byte 0x46, 0x5E, 0x02, 0x23, 0xC2, 0x5E, 0x90, 0x46, 0x03, 0xA9, 0x11, 0x23, 0x0A, 0x88, 0x16, 0x4D
    .byte 0x28, 0x1C, 0x10, 0x40, 0x18, 0x43, 0x08, 0x80, 0x36, 0x04, 0x32, 0x0C, 0x3F, 0x20, 0x81, 0x46
    .byte 0x02, 0x40, 0x92, 0x00, 0x4C, 0x78, 0x03, 0x23, 0x18, 0x1C, 0x20, 0x40, 0x10, 0x43, 0x48, 0x70
    .byte 0xB6, 0x0D, 0x4A, 0x88, 0x28, 0x1C, 0x10, 0x40, 0x30, 0x43, 0x48, 0x80, 0x42, 0x46, 0x12, 0x04
    .byte 0x90, 0x46, 0x10, 0x0C, 0x4A, 0x46, 0x10, 0x40, 0x80, 0x00, 0xCA, 0x78, 0x13, 0x40, 0x03, 0x43
    .byte 0xCB, 0x70, 0x43, 0x46, 0x9B, 0x0D, 0x88, 0x88, 0x05, 0x40, 0x1D, 0x43, 0x8D, 0x80, 0x01, 0xAD
    .byte 0x01, 0x24, 0xBB, 0xE0, 0x38, 0x10, 0x00, 0x00, 0x00, 0xFC, 0xFF, 0xFF, 0x03, 0xA9, 0x02, 0x25
    .byte 0x0A, 0x88, 0x0D, 0x4C, 0x20, 0x1C, 0x10, 0x40, 0x28, 0x43, 0x08, 0x80, 0x4A, 0x78, 0x03, 0x23
    .byte 0x18, 0x1C, 0x10, 0x40, 0x3C, 0x22, 0x10, 0x43, 0x48, 0x70, 0x4A, 0x88, 0x20, 0x1C, 0x10, 0x40
    .byte 0x28, 0x43, 0x48, 0x80, 0xC8, 0x78, 0x03, 0x40, 0x30, 0x20, 0x03, 0x43, 0xCB, 0x70, 0x08, 0x22
    .byte 0x88, 0x88, 0x04, 0x40, 0x14, 0x43, 0x96, 0xE0, 0x00, 0xFC, 0xFF, 0xFF, 0x00, 0x2F, 0x00, 0xD1
    .byte 0xB6, 0xE0, 0x10, 0x99, 0x08, 0x68, 0xC2, 0x6B, 0x08, 0x1C, 0x49, 0x46, 0xB5, 0xF0, 0x22, 0xFA
    .byte 0x10, 0x9A, 0x05, 0x4B, 0xD0, 0x18, 0x00, 0x68, 0x82, 0x21, 0xC9, 0x00, 0x40, 0x18, 0x49, 0x46
    .byte 0x4C, 0x39, 0xEE, 0xF7, 0x69, 0xFA, 0xA3, 0xE0, 0x38, 0x10, 0x00, 0x00, 0x00, 0x2F, 0x00, 0xD1
    .byte 0x9E, 0xE0, 0xB9, 0x88, 0x25, 0x29, 0x03, 0xD0, 0x8D, 0x20, 0x80, 0x00, 0x81, 0x42, 0x55, 0xD1
    .byte 0x36, 0x22, 0x52, 0x42, 0x4A, 0x44, 0x92, 0x46, 0x10, 0x9B, 0x26, 0x49, 0x58, 0x18, 0x01, 0x68
    .byte 0xBE, 0x22, 0xD2, 0x00, 0x89, 0x18, 0x0E, 0xA8, 0x52, 0x46, 0xEE, 0xF7, 0xAB, 0xFD, 0x0E, 0x98
    .byte 0x0F, 0x90, 0x0F, 0xA8, 0x00, 0x23, 0xC6, 0x5E, 0x02, 0x22, 0x81, 0x5E, 0x88, 0x46, 0x03, 0xA9
    .byte 0x25, 0x23, 0x0A, 0x88, 0x1C, 0x4D, 0x28, 0x1C, 0x10, 0x40, 0x18, 0x43, 0x08, 0x80, 0x36, 0x04
    .byte 0x32, 0x0C, 0x3F, 0x23, 0x99, 0x46, 0x1A, 0x40, 0x92, 0x00, 0x4C, 0x78, 0x03, 0x23, 0x18, 0x1C
    .byte 0x20, 0x40, 0x10, 0x43, 0x48, 0x70, 0xB6, 0x0D, 0x4A, 0x88, 0x28, 0x1C, 0x10, 0x40, 0x30, 0x43
    .byte 0x48, 0x80, 0x40, 0x46, 0x00, 0x04, 0x80, 0x46, 0x00, 0x0C, 0x4A, 0x46, 0x10, 0x40, 0x80, 0x00
    .byte 0xCA, 0x78, 0x13, 0x40, 0x03, 0x43, 0xCB, 0x70, 0x43, 0x46, 0x9B, 0x0D, 0x88, 0x88, 0x05, 0x40
    .byte 0x1D, 0x43, 0x8D, 0x80, 0x50, 0x46, 0x80, 0x08, 0x82, 0x46, 0x01, 0x20, 0x52, 0x46, 0x02, 0x40
    .byte 0x92, 0x46, 0x01, 0xAC, 0x20, 0x1C, 0x06, 0x22, 0xB5, 0xF0, 0xFC, 0xF9, 0x53, 0x46, 0xA3, 0x71
    .byte 0x29, 0xE0, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00, 0x00, 0xFC, 0xFF, 0xFF, 0x03, 0xA9, 0x02, 0x26
    .byte 0x0A, 0x88, 0x13, 0x4C, 0x20, 0x1C, 0x10, 0x40, 0x30, 0x43, 0x08, 0x80, 0xE0, 0x25, 0x4B, 0x78
    .byte 0x03, 0x22, 0x10, 0x1C, 0x18, 0x40, 0x28, 0x43, 0x48, 0x70, 0x07, 0x25, 0x4B, 0x88, 0x20, 0x1C
    .byte 0x18, 0x40, 0x28, 0x43, 0x48, 0x80, 0xC8, 0x78, 0x02, 0x40, 0x10, 0x20, 0x02, 0x43, 0xCA, 0x70
    .byte 0x88, 0x88, 0x04, 0x40, 0x34, 0x43, 0x8C, 0x80, 0x01, 0xAD, 0x00, 0x24, 0x28, 0x1C, 0x06, 0x22
    .byte 0xB5, 0xF0, 0xD0, 0xF9, 0xAC, 0x71, 0x38, 0x1C, 0x01, 0xA9, 0x13, 0xF0, 0x8F, 0xFD, 0x17, 0xE0
    .byte 0x00, 0xFC, 0xFF, 0xFF, 0x38, 0x1C, 0x02, 0x21, 0xE0, 0x22, 0xA8, 0x23, 0x01, 0xF0, 0x34, 0xFC
    .byte 0x0E, 0xE0, 0x10, 0x99, 0x08, 0x68, 0xC2, 0x6B, 0x08, 0x1C, 0x49, 0x46, 0xB5, 0xF0, 0x7A, 0xF9
    .byte 0x10, 0x9A, 0x14, 0x4B, 0xD0, 0x18, 0x00, 0x68, 0x13, 0x49, 0x40, 0x18, 0xF0, 0xF7, 0x7E, 0xFB
    .byte 0x12, 0x9A, 0x01, 0x32, 0x12, 0x92, 0x63, 0x2A, 0x00, 0xDC, 0x30, 0xE5, 0x11, 0x9B, 0x00, 0x2B
    .byte 0x10, 0xD0, 0x10, 0x98, 0x04, 0x68, 0xB4, 0x34, 0x0A, 0x49, 0x40, 0x18, 0x01, 0x68, 0x0A, 0x4A
    .byte 0x89, 0x18, 0x01, 0xA8, 0xF0, 0xF7, 0x66, 0xF9, 0x23, 0x68, 0x10, 0x98, 0x01, 0xA9, 0x00, 0x22
    .byte 0xB5, 0xF0, 0x5A, 0xF9, 0x13, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
    .byte 0x01, 0xBC, 0x00, 0x47, 0x38, 0x10, 0x00, 0x00, 0xD8, 0x1B, 0x00, 0x00

    thumb_func_start func_0801E67C
func_0801E67C: @ 0x0801E67C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    adds r7, r0, #0
    ldr r0, [r7, #4]
    ldr r0, [r0, #4]
    cmp r0, #0x2a
    beq _0801E6B0
    cmp r0, #0x2a
    bgt _0801E69C
    cmp r0, #0x29
    beq _0801E6A2
    b _0801E8F6
_0801E69C:
    cmp r0, #0x2b
    beq _0801E6B8
    b _0801E8F6
_0801E6A2:
    ldr r1, _0801E6AC @ =0x080F0704
    str r1, [sp, #0x14]
    movs r1, #5
    b _0801E6BE
    .align 2, 0
_0801E6AC: .4byte 0x080F0704
_0801E6B0:
    ldr r1, _0801E6B4 @ =0x080F0718
    b _0801E6BA
    .align 2, 0
_0801E6B4: .4byte 0x080F0718
_0801E6B8:
    ldr r1, _0801E70C @ =0x080F0730
_0801E6BA:
    str r1, [sp, #0x14]
    movs r1, #6
_0801E6BE:
    mov sl, r1
    bl func_080A4698
    ldrh r5, [r0, #0x20]
    ldrh r6, [r0, #0x22]
    ldr r4, [r7, #4]
    ldr r0, [r4, #4]
    bl func_080A4698
    movs r2, #0
    ldr r0, [r4, #0x2c]
    mov r1, sp
    str r0, [sp]
    str r2, [sp, #4]
    strh r5, [r1, #8]
    strh r6, [r1, #0xa]
    mov r8, r2
_0801E6E0:
    mov r6, r8
    ldr r0, [r7]
    ldr r2, [r0, #0x40]
    adds r0, r7, #0
    mov r1, r8
    bl _call_via_r2
    adds r5, r0, #0
    cmp r5, #0
    bne _0801E6F6
    b _0801E8EA
_0801E6F6:
    movs r0, #0
    mov sb, r0
    mov r0, r8
    subs r0, #0x2b
    cmp r0, #0x28
    bhi _0801E7DE
    lsls r0, r0, #2
    ldr r1, _0801E710 @ =_0801E714
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0801E70C: .4byte 0x080F0730
_0801E710: .4byte _0801E714
_0801E714: @ jump table
    .4byte _0801E7B8 @ case 0
    .4byte _0801E7DE @ case 1
    .4byte _0801E7DE @ case 2
    .4byte _0801E7B8 @ case 3
    .4byte _0801E7B8 @ case 4
    .4byte _0801E7B8 @ case 5
    .4byte _0801E7B8 @ case 6
    .4byte _0801E7B8 @ case 7
    .4byte _0801E7B8 @ case 8
    .4byte _0801E7B8 @ case 9
    .4byte _0801E7B8 @ case 10
    .4byte _0801E7DE @ case 11
    .4byte _0801E7DE @ case 12
    .4byte _0801E7DE @ case 13
    .4byte _0801E7DE @ case 14
    .4byte _0801E7DE @ case 15
    .4byte _0801E7DE @ case 16
    .4byte _0801E7DE @ case 17
    .4byte _0801E7DE @ case 18
    .4byte _0801E7DE @ case 19
    .4byte _0801E7DE @ case 20
    .4byte _0801E7DE @ case 21
    .4byte _0801E7DE @ case 22
    .4byte _0801E7DE @ case 23
    .4byte _0801E7DE @ case 24
    .4byte _0801E7DE @ case 25
    .4byte _0801E7DE @ case 26
    .4byte _0801E7DE @ case 27
    .4byte _0801E7DE @ case 28
    .4byte _0801E7DE @ case 29
    .4byte _0801E7DE @ case 30
    .4byte _0801E7B8 @ case 31
    .4byte _0801E7B8 @ case 32
    .4byte _0801E7B8 @ case 33
    .4byte _0801E7B8 @ case 34
    .4byte _0801E7B8 @ case 35
    .4byte _0801E7B8 @ case 36
    .4byte _0801E7B8 @ case 37
    .4byte _0801E7B8 @ case 38
    .4byte _0801E7B8 @ case 39
    .4byte _0801E7B8 @ case 40
_0801E7B8:
    ldrh r0, [r5, #4]
    cmp r0, #0x1d
    bne _0801E7DE
    ldr r1, [r5, #0x14]
    add r4, sp, #0xc
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r5, #0
    bl _call_via_r2
    mov r0, sp
    adds r1, r4, #0
    bl func_080AC070
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0801E7DE
    movs r1, #1
    mov sb, r1
_0801E7DE:
    mov r0, sb
    cmp r0, #0
    bne _0801E7E6
    b _0801E8EA
_0801E7E6:
    adds r0, r6, #0
    subs r0, #0x2b
    cmp r0, #0x28
    bhi _0801E8A0
    lsls r0, r0, #2
    ldr r1, _0801E7F8 @ =_0801E7FC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0801E7F8: .4byte _0801E7FC
_0801E7FC: @ jump table
    .4byte _0801E8A0 @ case 0
    .4byte _0801E8A0 @ case 1
    .4byte _0801E8A0 @ case 2
    .4byte _0801E8A0 @ case 3
    .4byte _0801E8A0 @ case 4
    .4byte _0801E8A0 @ case 5
    .4byte _0801E8A0 @ case 6
    .4byte _0801E8A0 @ case 7
    .4byte _0801E8A0 @ case 8
    .4byte _0801E8A0 @ case 9
    .4byte _0801E8A0 @ case 10
    .4byte _0801E8A0 @ case 11
    .4byte _0801E8A0 @ case 12
    .4byte _0801E8A0 @ case 13
    .4byte _0801E8A0 @ case 14
    .4byte _0801E8A0 @ case 15
    .4byte _0801E8A0 @ case 16
    .4byte _0801E8A0 @ case 17
    .4byte _0801E8A0 @ case 18
    .4byte _0801E8A0 @ case 19
    .4byte _0801E8A0 @ case 20
    .4byte _0801E8A0 @ case 21
    .4byte _0801E8A0 @ case 22
    .4byte _0801E8A0 @ case 23
    .4byte _0801E8A0 @ case 24
    .4byte _0801E8A0 @ case 25
    .4byte _0801E8A0 @ case 26
    .4byte _0801E8A0 @ case 27
    .4byte _0801E8A0 @ case 28
    .4byte _0801E8A0 @ case 29
    .4byte _0801E8A0 @ case 30
    .4byte _0801E8A0 @ case 31
    .4byte _0801E8A0 @ case 32
    .4byte _0801E8C6 @ case 33
    .4byte _0801E8C6 @ case 34
    .4byte _0801E8C6 @ case 35
    .4byte _0801E8C6 @ case 36
    .4byte _0801E8C6 @ case 37
    .4byte _0801E8C6 @ case 38
    .4byte _0801E8C6 @ case 39
    .4byte _0801E8C6 @ case 40
_0801E8A0:
    cmp r5, #0
    beq _0801E8EA
    bl rand
    mov r1, sl
    bl __umodsi3
    lsls r0, r0, #2
    ldr r1, [sp, #0x14]
    adds r0, r1, r0
    movs r1, #0
    ldrsh r2, [r0, r1]
    movs r1, #2
    ldrsh r3, [r0, r1]
    adds r0, r5, #0
    movs r1, #0x1d
    bl func_0801FE78
    b _0801E8EA
_0801E8C6:
    cmp r5, #0
    beq _0801E8EA
    ldr r0, [r7]
    ldr r2, [r0, #0x3c]
    adds r0, r7, #0
    adds r1, r6, #0
    bl _call_via_r2
    ldr r1, _0801E908 @ =0x00001038
    adds r0, r7, r1
    ldr r0, [r0]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r6, #0
    subs r1, #0x4c
    bl method_0800C9B8__4CoopUi
_0801E8EA:
    movs r0, #1
    add r8, r0
    mov r1, r8
    cmp r1, #0x63
    bgt _0801E8F6
    b _0801E6E0
_0801E8F6:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801E908: .4byte 0x00001038

    thumb_func_start func_0801E90C
func_0801E90C: @ 0x0801E90C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x40
    mov r8, r0
    movs r0, #0
    str r0, [sp, #0x34]
    movs r4, #0
_0801E920:
    mov r1, r8
    ldr r0, [r1]
    ldr r2, [r0, #0x40]
    mov r0, r8
    adds r1, r4, #0
    bl _call_via_r2
    adds r3, r0, #0
    adds r4, #1
    mov sl, r4
    cmp r3, #0
    beq _0801EA18
    ldrh r0, [r3, #4]
    cmp r0, #2
    bne _0801EA18
    ldr r1, [r3, #0x14]
    add r0, sp, #4
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    ldr r0, [sp, #4]
    ldr r1, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    add r4, sp, #0xc
    adds r6, r4, #0
    movs r5, #0
    str r5, [sp, #0x14]
    ldrh r0, [r4]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x13
    subs r0, #0x22
    asrs r0, r0, #1
    str r0, [sp, #0x18]
    add r1, sp, #0x18
    add r2, sp, #0x14
    cmp r5, r0
    bge _0801E970
    adds r2, r1, #0
_0801E970:
    ldr r2, [r2]
    mov sb, r2
    movs r1, #0x2a
    str r1, [sp, #0x1c]
    movs r2, #4
    ldrsh r0, [r4, r2]
    subs r0, #1
    asrs r0, r0, #3
    subs r0, #0x22
    asrs r0, r0, #1
    str r0, [sp, #0x20]
    add r2, sp, #0x20
    add r3, sp, #0x1c
    cmp r1, r0
    ble _0801E990
    adds r3, r2, #0
_0801E990:
    ldr r7, [r3]
    str r5, [sp, #0x24]
    ldrh r0, [r4, #2]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x13
    subs r0, #0x16
    asrs r0, r0, #1
    str r0, [sp, #0x28]
    add r1, sp, #0x28
    add r2, sp, #0x24
    cmp r5, r0
    bge _0801E9AA
    adds r2, r1, #0
_0801E9AA:
    ldr r4, [r2]
    movs r1, #0x18
    str r1, [sp, #0x2c]
    movs r2, #6
    ldrsh r0, [r6, r2]
    subs r0, #1
    asrs r0, r0, #3
    subs r0, #0x16
    asrs r0, r0, #1
    str r0, [sp, #0x30]
    add r2, sp, #0x30
    add r3, sp, #0x2c
    cmp r1, r0
    ble _0801E9C8
    adds r3, r2, #0
_0801E9C8:
    ldr r2, [r3]
    adds r1, r4, #0
    cmp r1, r2
    bgt _0801EA18
    mov r0, sb
    lsls r3, r0, #2
_0801E9D4:
    mov r4, sb
    adds r6, r1, #1
    cmp r4, r7
    bgt _0801EA12
    movs r0, #0xac
    muls r0, r1, r0
    adds r5, r3, r0
_0801E9E2:
    ldr r0, _0801EA50 @ =0x00001038
    add r0, r8
    ldr r0, [r0]
    ldr r1, _0801EA54 @ =0x000009DC
    adds r0, r0, r1
    adds r1, r0, r5
    ldr r0, [r1]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x15
    bne _0801EA0A
    mov r0, sp
    str r2, [sp, #0x38]
    str r3, [sp, #0x3c]
    bl func_0800A4A4
    movs r0, #1
    str r0, [sp, #0x34]
    ldr r3, [sp, #0x3c]
    ldr r2, [sp, #0x38]
_0801EA0A:
    adds r5, #4
    adds r4, #1
    cmp r4, r7
    ble _0801E9E2
_0801EA12:
    adds r1, r6, #0
    cmp r1, r2
    ble _0801E9D4
_0801EA18:
    mov r4, sl
    cmp r4, #0x63
    bgt _0801EA20
    b _0801E920
_0801EA20:
    ldr r1, [sp, #0x34]
    cmp r1, #0
    beq _0801EA86
    mov r2, r8
    ldr r5, [r2, #4]
    ldr r0, [r5]
    cmp r0, #2
    bne _0801EA60
    adds r0, r5, #0
    adds r0, #0x90
    ldr r4, [r0]
    ldr r0, _0801EA58 @ =0x00001048
    add r0, r8
    ldr r1, [r0]
    ldr r0, _0801EA5C @ =0x0000104C
    add r0, r8
    ldrb r2, [r0]
    movs r3, #0x1e
    subs r3, r3, r2
    ldr r4, [r4, #0x14]
    adds r0, r5, #0
    bl _call_via_r4
    b _0801EA86
    .align 2, 0
_0801EA50: .4byte 0x00001038
_0801EA54: .4byte 0x000009DC
_0801EA58: .4byte 0x00001048
_0801EA5C: .4byte 0x0000104C
_0801EA60:
    ldr r0, _0801EA98 @ =0x00001050
    add r0, r8
    ldr r5, [r0]
    ldr r0, _0801EA9C @ =0x00001038
    add r0, r8
    ldr r0, [r0]
    adds r4, r0, #0
    adds r4, #0x14
    adds r0, #0x10
    bl func_0800E324
    movs r2, #0
    cmp r0, #3
    bne _0801EA7E
    movs r2, #1
_0801EA7E:
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_080171F8
_0801EA86:
    add sp, #0x40
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801EA98: .4byte 0x00001050
_0801EA9C: .4byte 0x00001038

    thumb_func_start func_0801EAA0
func_0801EAA0: @ 0x0801EAA0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    ldr r4, _0801EBB0 @ =0xFFFFFCB0
    add sp, r4
    adds r7, r0, #0
    str r1, [sp, #0x330]
    ldr r1, _0801EBB4 @ =0x00001038
    adds r0, r7, r1
    ldr r0, [r0]
    adds r0, #0x12
    str r0, [sp, #0x334]
    ldr r3, _0801EBB8 @ =0x0000103C
    adds r0, r7, r3
    ldrb r0, [r0]
    str r0, [sp, #0x338]
    cmp r0, #0
    beq _0801EAD8
    ldr r0, [r7]
    movs r4, #0x94
    lsls r4, r4, #1
    adds r0, r0, r4
    ldr r1, [r0]
    adds r0, r7, #0
    bl _call_via_r1
_0801EAD8:
    adds r5, r7, #0
    adds r5, #8
    str r5, [sp, #0x33c]
    movs r0, #0xcc
    lsls r0, r0, #1
    adds r0, r7, r0
    str r0, [sp, #0x340]
    adds r4, r5, #0
    adds r6, r4, #0
    movs r3, #0xca
    lsls r3, r3, #2
    add r3, sp
    mov r8, r3
    cmp r6, r0
    beq _0801EB0E
_0801EAF6:
    ldr r2, [r4]
    cmp r2, #0
    beq _0801EB06
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x14]
    adds r0, r2, #0
    bl _call_via_r1
_0801EB06:
    adds r4, #4
    ldr r0, [sp, #0x340]
    cmp r4, r0
    bne _0801EAF6
_0801EB0E:
    movs r0, #0
    str r0, [sp]
    movs r3, #0
    adds r4, r6, #0
    ldr r2, _0801EBBC @ =0x080F0748
_0801EB18:
    ldr r0, [r2]
    lsls r0, r0, #2
    adds r0, r4, r0
    ldr r1, [r0]
    cmp r1, #0
    beq _0801EB3C
    ldr r0, [sp]
    cmp r0, #0x63
    bhi _0801EB3C
    lsls r0, r0, #2
    adds r0, #4
    add r0, sp
    cmp r0, #0
    beq _0801EB36
    str r1, [r0]
_0801EB36:
    ldr r0, [sp]
    adds r0, #1
    str r0, [sp]
_0801EB3C:
    adds r2, #4
    adds r3, #1
    cmp r3, #9
    bls _0801EB18
    ldr r0, [sp]
    lsls r0, r0, #2
    adds r0, #4
    add r0, sp
    mov sb, r0
    movs r2, #0xca
    lsls r2, r2, #1
    mov r3, sp
    adds r1, r3, r2
    movs r0, #0
    str r0, [r1]
    movs r5, #0
    ldr r4, _0801EBC0 @ =0x080F0770
_0801EB5E:
    ldr r0, [r4]
    lsls r0, r0, #2
    adds r0, r6, r0
    ldr r3, [r0]
    cmp r3, #0
    beq _0801EB86
    mov r0, sp
    adds r1, r0, r2
    ldr r0, [r1]
    cmp r0, #0x63
    bhi _0801EB86
    lsls r0, r0, #2
    adds r0, #4
    adds r0, r1, r0
    cmp r0, #0
    beq _0801EB80
    str r3, [r0]
_0801EB80:
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
_0801EB86:
    adds r4, #4
    adds r5, #1
    cmp r5, #0x23
    bls _0801EB5E
    add r1, sp, #0x194
    ldr r0, [r1]
    lsls r0, r0, #2
    adds r0, #4
    adds r1, r1, r0
    str r1, [sp, #0x344]
    movs r1, #0
    add r0, sp, #0x328
    str r1, [r0]
    mov r3, r8
    strb r1, [r3, #4]
    movs r4, #0x82
    lsls r4, r4, #5
    adds r6, r7, r4
    movs r5, #3
    mov sl, r5
    b _0801EBE2
    .align 2, 0
_0801EBB0: .4byte 0xFFFFFCB0
_0801EBB4: .4byte 0x00001038
_0801EBB8: .4byte 0x0000103C
_0801EBBC: .4byte 0x080F0748
_0801EBC0: .4byte 0x080F0770
_0801EBC4:
    movs r0, #0
    mov r1, r8
    strb r0, [r1, #4]
    b _0801EBE2
_0801EBCC:
    add r4, sp, #4
    cmp r4, sb
    beq _0801EBE2
_0801EBD2:
    ldm r4!, {r0}
    ldr r1, [r0, #0x14]
    ldr r2, [r1, #0x18]
    mov r1, r8
    bl _call_via_r2
    cmp r4, sb
    bne _0801EBD2
_0801EBE2:
    ldrb r0, [r6, #4]
    adds r0, #1
    cmp r0, #0x19
    bhs _0801EBF0
    strb r0, [r6, #4]
    movs r0, #0
    b _0801ED06
_0801EBF0:
    movs r0, #0
    strb r0, [r6, #4]
    ldr r4, [r6]
    ldr r1, [r4]
    lsls r1, r1, #5
    lsrs r1, r1, #0x1a
    adds r1, #1
    movs r2, #0x3f
    ands r2, r1
    lsls r2, r2, #5
    ldrh r3, [r4, #2]
    ldr r5, _0801EDEC @ =0xFFFFF81F
    adds r0, r5, #0
    ands r0, r3
    orrs r0, r2
    strh r0, [r4, #2]
    movs r0, #0x3f
    ands r1, r0
    cmp r1, #0x3b
    bls _0801ED04
    ldr r1, [r6]
    ldrh r2, [r1, #2]
    adds r0, r5, #0
    ands r0, r2
    strh r0, [r1, #2]
    ldr r3, [r6]
    ldr r1, [r3]
    lsls r1, r1, #0xb
    lsrs r1, r1, #0x1b
    adds r1, #1
    movs r4, #0x1f
    mov ip, r4
    mov r5, ip
    ands r1, r5
    ldrb r2, [r3, #2]
    movs r4, #0x20
    rsbs r4, r4, #0
    adds r0, r4, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r3, #2]
    cmp r1, #0x17
    bls _0801ED04
    ldr r1, [r6]
    ldrb r2, [r1, #2]
    adds r0, r4, #0
    ands r0, r2
    strb r0, [r1, #2]
    ldr r3, [r6]
    ldrb r2, [r3, #1]
    lsls r0, r2, #0x19
    lsrs r0, r0, #0x1b
    adds r0, #1
    cmp r0, #0x1e
    bne _0801EC96
    lsls r0, r2, #0x1e
    lsrs r0, r0, #0x1e
    mov r1, sl
    ands r0, r1
    movs r1, #4
    rsbs r1, r1, #0
    add r4, sp, #0x348
    ldrb r4, [r4]
    ands r1, r4
    orrs r1, r0
    adds r0, #1
    mov r5, sl
    ands r0, r5
    movs r4, #4
    rsbs r4, r4, #0
    ands r1, r4
    orrs r1, r0
    add r5, sp, #0x348
    strb r1, [r5]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
    mov r0, sl
    ands r1, r0
    adds r0, r4, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r3, #1]
    movs r0, #0
_0801EC96:
    mov r1, ip
    ands r0, r1
    lsls r2, r0, #2
    ldrb r1, [r3, #1]
    movs r0, #0x7d
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r2
    strb r0, [r3, #1]
    add r3, sp, #0x34c
    ldrb r0, [r3]
    movs r3, #4
    rsbs r3, r3, #0
    ands r0, r3
    movs r4, #0x7d
    rsbs r4, r4, #0
    ands r0, r4
    add r5, sp, #0x34c
    strb r0, [r5]
    ldr r2, [r6]
    movs r3, #0
    ldrb r1, [r2, #1]
    movs r0, #0x7f
    ands r0, r1
    cmp r0, #0
    bne _0801ECCC
    movs r3, #1
_0801ECCC:
    cmp r3, #0
    beq _0801ED04
    adds r4, r2, #0
    ldrb r3, [r4]
    lsls r0, r3, #0x1d
    lsrs r0, r0, #0x1d
    adds r2, r0, #1
    cmp r2, #6
    bls _0801ECF2
    movs r2, #0
    lsrs r1, r3, #3
    cmp r1, #0x1c
    bhi _0801ECF2
    adds r1, #1
    lsls r1, r1, #3
    movs r0, #7
    ands r0, r3
    orrs r0, r1
    strb r0, [r4]
_0801ECF2:
    movs r0, #7
    ands r2, r0
    ldrb r0, [r4]
    movs r3, #8
    rsbs r3, r3, #0
    adds r1, r3, #0
    ands r0, r1
    orrs r0, r2
    strb r0, [r4]
_0801ED04:
    movs r0, #1
_0801ED06:
    cmp r0, #0
    bne _0801ED0C
    b _0801EBCC
_0801ED0C:
    movs r0, #1
    mov r4, r8
    strb r0, [r4, #4]
    add r4, sp, #0x198
    ldr r5, [sp, #0x344]
    cmp r4, r5
    beq _0801ED2C
_0801ED1A:
    ldm r4!, {r0}
    ldr r1, [r0, #0x14]
    ldr r2, [r1, #0x18]
    mov r1, r8
    bl _call_via_r2
    ldr r0, [sp, #0x344]
    cmp r4, r0
    bne _0801ED1A
_0801ED2C:
    ldr r1, [sp, #0x330]
    ldrh r2, [r1]
    ldr r0, _0801EDF0 @ =0x000007FF
    ldr r4, [sp, #0x334]
    ldrh r3, [r4]
    adds r1, r0, #0
    ands r1, r2
    ands r0, r3
    cmp r1, r0
    beq _0801ED42
    b _0801EBC4
_0801ED42:
    ldr r4, [sp, #0x33c]
    ldr r5, [sp, #0x340]
    cmp r4, r5
    beq _0801ED62
_0801ED4A:
    ldr r2, [r4]
    cmp r2, #0
    beq _0801ED5A
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x10]
    adds r0, r2, #0
    bl _call_via_r1
_0801ED5A:
    adds r4, #4
    ldr r0, [sp, #0x340]
    cmp r4, r0
    bne _0801ED4A
_0801ED62:
    ldr r1, [sp, #0x338]
    cmp r1, #0
    beq _0801ED78
    ldr r0, [r7]
    movs r3, #0x92
    lsls r3, r3, #1
    adds r0, r0, r3
    ldr r1, [r0]
    adds r0, r7, #0
    bl _call_via_r1
_0801ED78:
    ldr r0, [r7, #4]
    ldr r0, [r0, #4]
    bl func_080A4698
    adds r0, #0x24
    ldrb r0, [r0]
    cmp r0, #0
    bne _0801EDA2
    movs r4, #0x82
    lsls r4, r4, #5
    adds r0, r7, r4
    ldr r0, [r0]
    ldr r2, [r0]
    lsls r1, r2, #0xb
    lsrs r1, r1, #0x1b
    lsls r2, r2, #5
    lsrs r2, r2, #0x1a
    adds r0, r7, #0
    movs r3, #0
    bl func_0801A13C
_0801EDA2:
    ldr r0, [r7, #8]
    ldr r1, [r0, #0x14]
    adds r1, #0xa4
    ldr r1, [r1]
    bl _call_via_r1
    ldr r5, _0801EDF4 @ =0x00001054
    adds r0, r7, r5
    ldr r0, [r0]
    bl func_080167CC
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0801EDD8
    ldr r1, _0801EDF8 @ =0x00001038
    adds r0, r7, r1
    ldr r0, [r0]
    ldr r3, _0801EDFC @ =0x0000214C
    adds r0, r0, r3
    bl func_0809C5F4
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0801EDD8
    adds r0, r7, #0
    bl func_0801DB58
_0801EDD8:
    movs r3, #0xd4
    lsls r3, r3, #2
    add sp, r3
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801EDEC: .4byte 0xFFFFF81F
_0801EDF0: .4byte 0x000007FF
_0801EDF4: .4byte 0x00001054
_0801EDF8: .4byte 0x00001038
_0801EDFC: .4byte 0x0000214C

    thumb_func_start func_0801EE00
func_0801EE00: @ 0x0801EE00
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x3c
    mov sl, r0
    mov sb, r1
    adds r7, r2, #0
    ldr r1, [r0]
    mov r0, sb
    ldrh r2, [r0]
    lsls r2, r2, #0x16
    lsrs r2, r2, #0x16
    add r0, sp, #0xc
    ldr r3, [r1, #0x34]
    mov r1, sl
    bl _call_via_r3
    mov r1, sb
    ldrb r0, [r1, #1]
    lsrs r0, r0, #2
    ldrh r1, [r1, #2]
    ldr r3, _0801EEC0 @ =0x000003FF
    ands r1, r3
    lsls r1, r1, #6
    orrs r1, r0
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    mov r2, sb
    ldrb r0, [r2, #3]
    lsrs r0, r0, #2
    ldrh r2, [r2, #4]
    ands r2, r3
    lsls r2, r2, #6
    orrs r2, r0
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    add r0, sp, #0xc
    bl func_080AC5D0
    movs r1, #1
    eors r0, r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    str r0, [sp, #0x2c]
    movs r3, #0
    str r3, [sp, #0x30]
    movs r6, #1
    mov r4, sp
    adds r4, #0x28
    str r4, [sp, #0x38]
    mov r0, sp
    adds r0, #8
    str r0, [sp, #0x34]
    ldr r1, [sp, #0x2c]
    cmp r1, #0
    beq _0801EE76
    b _0801EFA8
_0801EE76:
    mov r2, sl
    ldr r0, [r2]
    movs r3, #0xa6
    lsls r3, r3, #1
    adds r0, r0, r3
    ldr r1, [r0]
    mov r0, sl
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq _0801EEA2
_0801EE90:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0801EEC4
    adds r4, #4
    cmp r4, r5
    bne _0801EE90
_0801EEA2:
    subs r0, r5, #4
    ldr r0, [r0]
_0801EEA6:
    movs r1, #0x6d
    bl func_08008B6C
    mov r0, sb
    bl func_080A45A8
    cmp r0, #2
    beq _0801EF78
    cmp r0, #2
    bgt _0801EEC8
    cmp r0, #0
    beq _0801EF84
    b _0801EFA8
    .align 2, 0
_0801EEC0: .4byte 0x000003FF
_0801EEC4:
    ldr r0, [r4]
    b _0801EEA6
_0801EEC8:
    cmp r0, #4
    beq _0801EED2
    cmp r0, #6
    beq _0801EF00
    b _0801EFA8
_0801EED2:
    adds r0, r7, #0
    bl GetKind__C12RucksackItem
    cmp r0, #0
    bne _0801EFA8
    add r0, sp, #0xc
    adds r1, r7, #0
    bl GetFood__C12RucksackItem
    add r0, sp, #0xc
    bl GetId__C4Food
    cmp r0, #0xa0
    bne _0801EFA8
    ldr r0, _0801EEFC @ =0x00001038
    add r0, sl
    ldr r0, [r0]
    bl func_08011458
    b _0801EFA8
    .align 2, 0
_0801EEFC: .4byte 0x00001038
_0801EF00:
    movs r5, #0
    adds r0, r7, #0
    bl GetKind__C12RucksackItem
    cmp r0, #0
    bne _0801EF34
    add r0, sp, #0xc
    adds r1, r7, #0
    bl GetFood__C12RucksackItem
    add r0, sp, #0xc
    bl GetId__C4Food
    cmp r0, #0xe
    ble _0801EF34
    add r4, sp, #0x10
    adds r0, r4, #0
    adds r1, r7, #0
    bl GetFood__C12RucksackItem
    adds r0, r4, #0
    bl GetId__C4Food
    cmp r0, #0x14
    bgt _0801EF34
    movs r5, #1
_0801EF34:
    cmp r5, #0
    beq _0801EFA8
    mov r4, sl
    ldr r6, [r4, #8]
    ldr r0, [r6, #0x14]
    mov r8, r0
    add r5, sp, #0x14
    add r4, sp, #0x18
    adds r0, r4, #0
    movs r1, #0x15
    bl __4FoodUi
    ldrb r1, [r4]
    mov r0, sp
    adds r0, #0x19
    ldrb r0, [r0]
    lsls r0, r0, #8
    orrs r0, r1
    mov r1, sp
    adds r1, #0x1a
    ldrb r1, [r1]
    lsls r1, r1, #0x10
    orrs r1, r0
    adds r0, r5, #0
    bl __12RucksackItemG4Food
    mov r1, r8
    ldr r3, [r1, #0x5c]
    adds r0, r6, #0
    adds r1, r5, #0
    movs r2, #0
    bl _call_via_r3
    b _0801EFA6
_0801EF78:
    ldr r2, _0801EF80 @ =0x0000023B
    str r2, [sp, #0x30]
    b _0801EFA6
    .align 2, 0
_0801EF80: .4byte 0x0000023B
_0801EF84:
    adds r0, r7, #0
    bl GetKind__C12RucksackItem
    cmp r0, #0
    bne _0801EFA8
    add r0, sp, #0xc
    adds r1, r7, #0
    bl GetFood__C12RucksackItem
    add r0, sp, #0xc
    bl GetId__C4Food
    cmp r0, #2
    bne _0801EFA8
    movs r3, #0x8f
    lsls r3, r3, #2
    str r3, [sp, #0x30]
_0801EFA6:
    movs r6, #0
_0801EFA8:
    ldr r4, [sp, #0x30]
    cmp r4, #0
    beq _0801EFC8
    mov r1, sl
    ldr r0, [r1]
    movs r2, #0xa0
    lsls r2, r2, #1
    adds r0, r0, r2
    add r1, sp, #0x1c
    movs r2, #0
    str r4, [sp, #0x1c]
    str r2, [r1, #4]
    ldr r3, [r0]
    mov r0, sl
    bl _call_via_r3
_0801EFC8:
    cmp r6, #0
    beq _0801EFE0
    ldr r0, _0801F00C @ =0x00001038
    add r0, sl
    ldr r2, [r0]
    ldr r3, _0801F010 @ =0x00001CD4
    adds r0, r2, r3
    ldr r4, _0801F014 @ =0x0000214C
    adds r2, r2, r4
    mov r1, sb
    bl func_080A1484
_0801EFE0:
    adds r0, r7, #0
    bl IsWrapped__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0801F04A
    adds r0, r7, #0
    bl GetKind__C12RucksackItem
    cmp r0, #0
    beq _0801EFFA
    cmp r0, #1
    beq _0801F018
_0801EFFA:
    add r0, sp, #0xc
    adds r1, r7, #0
    bl GetFood__C12RucksackItem
    add r0, sp, #0xc
    bl GetIconId__C4Food
    b _0801F032
    .align 2, 0
_0801F00C: .4byte 0x00001038
_0801F010: .4byte 0x00001CD4
_0801F014: .4byte 0x0000214C
_0801F018:
    adds r0, r7, #0
    bl GetArticle__C12RucksackItem
    add r4, sp, #0x24
    strb r0, [r4]
    adds r0, r4, #0
    bl GetId__C7Article
    cmp r0, #0x1b
    beq _0801F038
    adds r0, r4, #0
    bl GetIconId__C7Article
_0801F032:
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    b _0801F04E
_0801F038:
    mov r1, sb
    ldrh r0, [r1]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    movs r5, #3
    cmp r0, #8
    bgt _0801F04E
    movs r5, #4
    b _0801F04E
_0801F04A:
    movs r5, #0xb0
    lsls r5, r5, #1
_0801F04E:
    mov r2, sb
    ldrb r0, [r2, #1]
    lsrs r0, r0, #2
    ldrh r2, [r2, #2]
    ldr r3, _0801F0F8 @ =0x000003FF
    ands r2, r3
    lsls r2, r2, #6
    orrs r2, r0
    mov r4, sb
    ldrb r1, [r4, #3]
    lsrs r1, r1, #2
    ldrh r0, [r4, #4]
    ands r0, r3
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    add r1, sp, #0x28
    strh r2, [r1]
    ldr r1, [sp, #0x38]
    strh r0, [r1, #2]
    mov r2, sl
    ldr r0, [r2]
    ldr r1, [r0, #0x64]
    mov r0, sl
    bl _call_via_r1
    ldr r4, _0801F0FC @ =0x0000102C
    add r4, sl
    adds r6, r0, #0
    adds r7, r5, #0
    ldr r0, [sp, #0x28]
    str r0, [r4, #4]
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq _0801F0A8
    cmp r1, #0
    beq _0801F0A8
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F0A8:
    str r5, [r4]
    add r3, sp, #0x2c
    ldrb r3, [r3]
    strb r3, [r4, #8]
    ldr r5, [sp, #0x2c]
    cmp r5, #0
    beq _0801F100
    movs r0, #0x40
    bl __builtin_new
    movs r1, #2
    str r1, [sp]
    movs r1, #3
    str r1, [sp, #4]
    movs r1, #0
    ldr r2, [sp, #0x34]
    strb r1, [r2]
    adds r1, r6, #0
    adds r2, r7, #0
    mov r3, sl
    bl func_080A4A00
    adds r5, r0, #0
    ldr r1, [r4]
    cmp r5, r1
    beq _0801F0EC
    cmp r1, #0
    beq _0801F0EC
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F0EC:
    str r5, [r4]
    movs r1, #0
    movs r0, #0x10
    strb r0, [r4, #9]
    strb r1, [r4, #0xa]
    b _0801F138
    .align 2, 0
_0801F0F8: .4byte 0x000003FF
_0801F0FC: .4byte 0x0000102C
_0801F100:
    movs r0, #0x40
    bl __builtin_new
    movs r1, #2
    str r1, [sp]
    movs r1, #3
    str r1, [sp, #4]
    ldr r3, [sp, #0x34]
    strb r5, [r3]
    adds r1, r6, #0
    ldr r2, _0801F148 @ =0x000001A9
    mov r3, sl
    bl func_080A4A00
    adds r5, r0, #0
    ldr r1, [r4]
    cmp r5, r1
    beq _0801F134
    cmp r1, #0
    beq _0801F134
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F134:
    str r5, [r4]
    movs r0, #0
_0801F138:
    add sp, #0x3c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0801F148: .4byte 0x000001A9

    thumb_func_start func_0801F14C
func_0801F14C: @ 0x0801F14C
    push {r4, r5, r6, lr}
    sub sp, #0xc
    adds r6, r0, #0
    movs r0, #0x83
    lsls r0, r0, #5
    adds r1, r6, r0
    movs r0, #0
    strb r0, [r1]
    ldr r1, _0801F198 @ =0x0000105C
    adds r4, r6, r1
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq _0801F178
    cmp r1, #0
    beq _0801F178
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F178:
    str r5, [r4]
    ldr r0, [r6]
    ldr r1, [r0, #0x14]
    adds r0, r6, #0
    bl _call_via_r1
    subs r0, #0xa
    cmp r0, #0x1d
    bls _0801F18C
    b _0801F2CA
_0801F18C:
    lsls r0, r0, #2
    ldr r1, _0801F19C @ =_0801F1A0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0801F198: .4byte 0x0000105C
_0801F19C: .4byte _0801F1A0
_0801F1A0: @ jump table
    .4byte _0801F26C @ case 0
    .4byte _0801F2CA @ case 1
    .4byte _0801F2CA @ case 2
    .4byte _0801F2CA @ case 3
    .4byte _0801F2CA @ case 4
    .4byte _0801F2CA @ case 5
    .4byte _0801F2CA @ case 6
    .4byte _0801F2CA @ case 7
    .4byte _0801F248 @ case 8
    .4byte _0801F2CA @ case 9
    .4byte _0801F2CA @ case 10
    .4byte _0801F2CA @ case 11
    .4byte _0801F2CA @ case 12
    .4byte _0801F2CA @ case 13
    .4byte _0801F2CA @ case 14
    .4byte _0801F2CA @ case 15
    .4byte _0801F2CA @ case 16
    .4byte _0801F26C @ case 17
    .4byte _0801F2CA @ case 18
    .4byte _0801F218 @ case 19
    .4byte _0801F2CA @ case 20
    .4byte _0801F2CA @ case 21
    .4byte _0801F2CA @ case 22
    .4byte _0801F2CA @ case 23
    .4byte _0801F2CA @ case 24
    .4byte _0801F2CA @ case 25
    .4byte _0801F2CA @ case 26
    .4byte _0801F2CA @ case 27
    .4byte _0801F2CA @ case 28
    .4byte _0801F258 @ case 29
_0801F218:
    ldr r0, _0801F244 @ =0x00001038
    adds r4, r6, r0
    ldr r0, [r4]
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r0, r1
    bl GetUpgradeLevel__C9FarmHouse
    cmp r0, #2
    bne _0801F2CA
    ldr r0, [r4]
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r0, r1
    bl IsFireplaceLighted__C9FarmHouse
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    rsbs r1, r0, #0
    orrs r1, r0
    lsrs r5, r1, #0x1f
    b _0801F280
    .align 2, 0
_0801F244: .4byte 0x00001038
_0801F248:
    ldr r1, _0801F254 @ =0x00001038
    adds r0, r6, r1
    ldr r0, [r0]
    ldrb r0, [r0, #3]
    lsrs r5, r0, #7
    b _0801F280
    .align 2, 0
_0801F254: .4byte 0x00001038
_0801F258:
    ldr r1, _0801F268 @ =0x00001038
    adds r0, r6, r1
    ldr r0, [r0]
    ldrb r0, [r0, #4]
    lsls r0, r0, #0x1f
    lsrs r5, r0, #0x1f
    b _0801F280
    .align 2, 0
_0801F268: .4byte 0x00001038
_0801F26C:
    ldr r1, _0801F2D4 @ =0x00001038
    adds r0, r6, r1
    ldr r0, [r0]
    adds r0, #0x10
    bl func_0800E324
    movs r5, #0
    cmp r0, #3
    bne _0801F280
    movs r5, #1
_0801F280:
    movs r0, #0x40
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, [r6]
    ldr r1, [r0, #0x60]
    adds r0, r6, #0
    bl _call_via_r1
    adds r1, r0, #0
    movs r0, #2
    str r0, [sp]
    movs r0, #0x1b
    str r0, [sp, #4]
    add r2, sp, #8
    movs r0, #0
    strb r0, [r2]
    adds r0, r4, #0
    adds r2, r5, #0
    adds r3, r6, #0
    bl func_080A4A00
    ldr r1, _0801F2D8 @ =0x0000105C
    adds r5, r6, r1
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _0801F2C8
    cmp r1, #0
    beq _0801F2C8
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F2C8:
    str r4, [r5]
_0801F2CA:
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
_0801F2D4: .4byte 0x00001038
_0801F2D8: .4byte 0x0000105C

    thumb_func_start func_0801F2DC
func_0801F2DC: @ 0x0801F2DC
    push {r4, r5, lr}
    sub sp, #0xc
    adds r4, r0, #0
    ldr r0, [r4]
    ldr r1, [r0, #0x14]
    adds r0, r4, #0
    bl _call_via_r1
    cmp r0, #0x23
    bne _0801F3B8
    ldr r1, _0801F320 @ =0x00001038
    adds r0, r4, r1
    ldr r0, [r0]
    ldrb r0, [r0, #0x12]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    cmp r0, #3
    bls _0801F370
    cmp r0, #8
    bhi _0801F328
    movs r0, #0x40
    bl __builtin_new
    ldr r2, _0801F324 @ =0x00000FF4
    adds r1, r4, r2
    movs r2, #5
    str r2, [sp]
    movs r2, #0x1b
    str r2, [sp, #4]
    add r3, sp, #8
    movs r2, #0
    strb r2, [r3]
    movs r2, #0
    b _0801F38A
    .align 2, 0
_0801F320: .4byte 0x00001038
_0801F324: .4byte 0x00000FF4
_0801F328:
    cmp r0, #0xf
    bhi _0801F34C
    movs r0, #0x40
    bl __builtin_new
    ldr r2, _0801F348 @ =0x00000FF4
    adds r1, r4, r2
    movs r2, #5
    str r2, [sp]
    movs r2, #0x1b
    str r2, [sp, #4]
    add r3, sp, #8
    movs r2, #0
    strb r2, [r3]
    movs r2, #1
    b _0801F38A
    .align 2, 0
_0801F348: .4byte 0x00000FF4
_0801F34C:
    cmp r0, #0x12
    bhi _0801F370
    movs r0, #0x40
    bl __builtin_new
    ldr r2, _0801F36C @ =0x00000FF4
    adds r1, r4, r2
    movs r2, #5
    str r2, [sp]
    movs r2, #0x1b
    str r2, [sp, #4]
    add r3, sp, #8
    movs r2, #0
    strb r2, [r3]
    movs r2, #2
    b _0801F38A
    .align 2, 0
_0801F36C: .4byte 0x00000FF4
_0801F370:
    movs r0, #0x40
    bl __builtin_new
    ldr r2, _0801F3B0 @ =0x00000FF4
    adds r1, r4, r2
    movs r2, #5
    str r2, [sp]
    movs r2, #0x1b
    str r2, [sp, #4]
    add r3, sp, #8
    movs r2, #0
    strb r2, [r3]
    movs r2, #3
_0801F38A:
    adds r3, r4, #0
    bl func_080A4A00
    ldr r1, _0801F3B4 @ =0x00001064
    adds r5, r4, r1
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _0801F3AC
    cmp r1, #0
    beq _0801F3AC
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F3AC:
    str r4, [r5]
    b _0801F3D6
    .align 2, 0
_0801F3B0: .4byte 0x00000FF4
_0801F3B4: .4byte 0x00001064
_0801F3B8:
    ldr r2, _0801F3E0 @ =0x00001064
    adds r4, r4, r2
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq _0801F3D4
    cmp r1, #0
    beq _0801F3D4
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F3D4:
    str r5, [r4]
_0801F3D6:
    add sp, #0xc
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_0801F3E0: .4byte 0x00001064

    thumb_func_start func_0801F3E4
func_0801F3E4: @ 0x0801F3E4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x40
    adds r6, r0, #0
    ldr r0, [r6]
    ldr r1, [r0, #0x14]
    adds r0, r6, #0
    bl _call_via_r1
    cmp r0, #0x1d
    bne _0801F4E8
    ldr r1, _0801F488 @ =0x00001038
    adds r0, r6, r1
    ldr r0, [r0]
    movs r2, #0xfa
    lsls r2, r2, #1
    adds r0, r0, r2
    bl GetVaseArticleId__C9FarmHouse
    adds r1, r0, #0
    cmp r1, #0x5f
    beq _0801F506
    add r4, sp, #0x34
    adds r0, r4, #0
    bl __7ArticleUi
    adds r0, r4, #0
    bl GetIconId__C7Article
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    ldr r3, _0801F48C @ =0x00001068
    adds r3, r3, r6
    mov sb, r3
    ldr r4, [r3]
    cmp r4, #0
    beq _0801F490
    ldr r0, [r6]
    ldr r1, [r0, #0x64]
    adds r0, r6, #0
    bl _call_via_r1
    adds r1, r0, #0
    add r0, sp, #0x20
    adds r2, r7, #0
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    add r0, sp, #0x20
    ldr r1, [sp, #0x20]
    ldr r3, [r1]
    ldrh r2, [r0, #0xc]
    lsls r2, r2, #2
    ldr r0, [sp, #0x24]
    adds r0, r0, r2
    ldrh r2, [r0]
    mov r0, sp
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r0, sp
    mov r1, sp
    movs r2, #0x20
    bl memcpy
    adds r1, r4, #0
    adds r1, #0x28
    mov r0, sp
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r5}
    stm r1!, {r2, r5}
    adds r1, r4, #0
    adds r1, #0x48
    movs r0, #1
    strb r0, [r1]
    b _0801F506
    .align 2, 0
_0801F488: .4byte 0x00001038
_0801F48C: .4byte 0x00001068
_0801F490:
    movs r0, #0x4c
    bl __builtin_new
    adds r5, r0, #0
    ldr r0, [r6]
    ldr r1, [r0, #0x64]
    adds r0, r6, #0
    bl _call_via_r1
    adds r4, r0, #0
    adds r0, r5, #0
    adds r1, r6, #0
    movs r2, #2
    movs r3, #0x1b
    bl func_080A4740
    ldr r0, _0801F4E4 @ =vtable_unk_080E602C
    str r0, [r5, #0x24]
    movs r3, #0x28
    adds r3, r3, r5
    mov r8, r3
    ldr r6, [r4]
    add r0, sp, #0x38
    ldr r3, [r6, #0xc]
    adds r1, r4, #0
    adds r2, r7, #0
    bl _call_via_r3
    ldr r0, [sp, #0x38]
    ldrh r2, [r0]
    mov r0, r8
    ldr r3, [r6, #0x10]
    adds r1, r4, #0
    bl _call_via_r3
    adds r1, r5, #0
    adds r1, #0x48
    movs r0, #1
    strb r0, [r1]
    mov r4, sb
    b _0801F4EE
    .align 2, 0
_0801F4E4: .4byte vtable_unk_080E602C
_0801F4E8:
    ldr r5, _0801F514 @ =0x00001068
    adds r4, r6, r5
    movs r5, #0
_0801F4EE:
    ldr r1, [r4]
    cmp r5, r1
    beq _0801F504
    cmp r1, #0
    beq _0801F504
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F504:
    str r5, [r4]
_0801F506:
    add sp, #0x40
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801F514: .4byte 0x00001068
_0801F518:
    .byte 0x70, 0xB5, 0x83, 0xB0, 0x06, 0x1C, 0x0C, 0x1C
    .byte 0x1D, 0x2C, 0x07, 0xD0, 0x1D, 0x2C, 0x02, 0xDC, 0x12, 0x2C, 0x17, 0xD0, 0x58, 0xE0, 0x27, 0x2C
    .byte 0x1E, 0xD0, 0x55, 0xE0, 0x08, 0x48, 0x35, 0x18, 0x28, 0x68, 0xFA, 0x21, 0x49, 0x00, 0x40, 0x18
    .byte 0xEC, 0xF7, 0x40, 0xFD, 0x00, 0x06, 0x00, 0x28, 0x19, 0xD1, 0x28, 0x68, 0xFA, 0x21, 0x49, 0x00
    .byte 0x40, 0x18, 0xEC, 0xF7, 0x83, 0xFE, 0x12, 0xE0, 0x38, 0x10, 0x00, 0x00, 0x03, 0x49, 0x70, 0x18
    .byte 0x02, 0x68, 0xD0, 0x78, 0x80, 0x21, 0x08, 0x43, 0xD0, 0x70, 0x08, 0xE0, 0x38, 0x10, 0x00, 0x00
    .byte 0x1D, 0x49, 0x70, 0x18, 0x02, 0x68, 0x10, 0x79, 0x01, 0x21, 0x08, 0x43, 0x10, 0x71, 0x30, 0x68
    .byte 0x41, 0x69, 0x30, 0x1C, 0xB4, 0xF0, 0xC4, 0xF9, 0xA0, 0x42, 0x29, 0xD1, 0x83, 0x20, 0x40, 0x01
    .byte 0x31, 0x18, 0x00, 0x25, 0x01, 0x20, 0x08, 0x70, 0x40, 0x20, 0xE1, 0xF7, 0x1B, 0xF8, 0x04, 0x1C
    .byte 0x30, 0x68, 0x01, 0x6E, 0x30, 0x1C, 0xB4, 0xF0, 0xB3, 0xF9, 0x01, 0x1C, 0x02, 0x20, 0x00, 0x90
    .byte 0x1B, 0x20, 0x01, 0x90, 0x02, 0xA8, 0x05, 0x70, 0x20, 0x1C, 0x02, 0x22, 0x33, 0x1C, 0x85, 0xF0
    .byte 0x1F, 0xFA, 0x0A, 0x49, 0x75, 0x18, 0x04, 0x1C, 0x29, 0x68, 0x8C, 0x42, 0x07, 0xD0, 0x00, 0x29
    .byte 0x05, 0xD0, 0x48, 0x6A, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0xB4, 0xF0, 0x9B, 0xF9, 0x2C, 0x60
    .byte 0x03, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x38, 0x10, 0x00, 0x00, 0x5C, 0x10, 0x00, 0x00

    thumb_func_start func_0801F5F0
func_0801F5F0: @ 0x0801F5F0
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, _0801F610 @ =0x00001038
    adds r0, r4, r2
    ldr r0, [r0]
    movs r2, #0xfa
    lsls r2, r2, #1
    adds r0, r0, r2
    bl SetVaseArticleId__9FarmHouseUi
    adds r0, r4, #0
    bl func_0801F3E4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
_0801F610: .4byte 0x00001038

    thumb_func_start func_0801F614
func_0801F614: @ 0x0801F614
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0xc
    adds r6, r0, #0
    ldr r0, _0801F6D8 @ =0x0000106C
    adds r4, r6, r0
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq _0801F63A
    cmp r1, #0
    beq _0801F63A
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F63A:
    str r5, [r4]
    ldr r1, _0801F6DC @ =0x00001070
    adds r4, r6, r1
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq _0801F658
    cmp r1, #0
    beq _0801F658
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F658:
    str r5, [r4]
    ldr r0, [r6]
    ldr r1, [r0, #0x14]
    adds r0, r6, #0
    bl _call_via_r1
    adds r7, r0, #0
    cmp r7, #0
    bne _0801F762
    ldr r1, _0801F6E0 @ =0x00001038
    adds r0, r6, r1
    ldr r0, [r0]
    adds r0, #0x10
    bl func_0800E324
    adds r4, r0, #0
    cmp r4, #3
    beq _0801F6E8
    movs r0, #0x40
    bl __builtin_new
    ldr r1, _0801F6E4 @ =0x00000F04
    adds r5, r6, r1
    movs r1, #3
    str r1, [sp]
    movs r1, #0x1e
    str r1, [sp, #4]
    add r4, sp, #8
    strb r7, [r4]
    adds r1, r5, #0
    movs r2, #0
    adds r3, r6, #0
    bl func_080A4A00
    ldr r1, _0801F6D8 @ =0x0000106C
    adds r1, r1, r6
    mov r8, r1
    adds r7, r0, #0
    ldr r1, [r1]
    cmp r7, r1
    beq _0801F6BA
    cmp r1, #0
    beq _0801F6BA
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F6BA:
    mov r0, r8
    str r7, [r0]
    movs r0, #0x40
    bl __builtin_new
    movs r1, #3
    str r1, [sp]
    movs r1, #0x1e
    str r1, [sp, #4]
    movs r1, #0
    strb r1, [r4]
    adds r1, r5, #0
    movs r2, #0
    b _0801F73E
    .align 2, 0
_0801F6D8: .4byte 0x0000106C
_0801F6DC: .4byte 0x00001070
_0801F6E0: .4byte 0x00001038
_0801F6E4: .4byte 0x00000F04
_0801F6E8:
    movs r0, #0x40
    bl __builtin_new
    ldr r1, _0801F770 @ =0x00000F04
    adds r5, r6, r1
    str r4, [sp]
    movs r1, #0x1e
    str r1, [sp, #4]
    add r4, sp, #8
    strb r7, [r4]
    adds r1, r5, #0
    movs r2, #1
    adds r3, r6, #0
    bl func_080A4A00
    ldr r1, _0801F774 @ =0x0000106C
    adds r1, r1, r6
    mov r8, r1
    adds r7, r0, #0
    ldr r1, [r1]
    cmp r7, r1
    beq _0801F724
    cmp r1, #0
    beq _0801F724
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F724:
    mov r0, r8
    str r7, [r0]
    movs r0, #0x40
    bl __builtin_new
    movs r1, #3
    str r1, [sp]
    movs r1, #0x1e
    str r1, [sp, #4]
    movs r1, #0
    strb r1, [r4]
    adds r1, r5, #0
    movs r2, #1
_0801F73E:
    adds r3, r6, #0
    bl func_080A4A00
    ldr r1, _0801F778 @ =0x00001070
    adds r5, r6, r1
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _0801F760
    cmp r1, #0
    beq _0801F760
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F760:
    str r4, [r5]
_0801F762:
    add sp, #0xc
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801F770: .4byte 0x00000F04
_0801F774: .4byte 0x0000106C
_0801F778: .4byte 0x00001070

    thumb_func_start func_0801F77C
func_0801F77C: @ 0x0801F77C
    push {r4, r5, r6, lr}
    sub sp, #0xc
    adds r5, r0, #0
    ldr r0, _0801F7D8 @ =0x00001074
    adds r4, r5, r0
    movs r6, #0
    ldr r1, [r4]
    cmp r6, r1
    beq _0801F79E
    cmp r1, #0
    beq _0801F79E
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F79E:
    str r6, [r4]
    ldr r1, _0801F7DC @ =0x00001078
    adds r4, r5, r1
    movs r6, #0
    ldr r1, [r4]
    cmp r6, r1
    beq _0801F7BC
    cmp r1, #0
    beq _0801F7BC
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F7BC:
    str r6, [r4]
    ldr r0, [r5]
    ldr r1, [r0, #0x14]
    adds r0, r5, #0
    bl _call_via_r1
    adds r4, r0, #0
    cmp r4, #2
    beq _0801F8BC
    cmp r4, #2
    bgt _0801F7E0
    cmp r4, #0
    beq _0801F88C
    b _0801F90E
    .align 2, 0
_0801F7D8: .4byte 0x00001074
_0801F7DC: .4byte 0x00001078
_0801F7E0:
    cmp r4, #3
    beq _0801F864
    cmp r4, #7
    beq _0801F7EA
    b _0801F90E
_0801F7EA:
    ldr r2, _0801F858 @ =0x00001038
    adds r0, r5, r2
    ldr r0, [r0]
    ldrb r0, [r0, #4]
    lsls r0, r0, #0x1f
    cmp r0, #0
    beq _0801F836
    movs r0, #0x40
    bl __builtin_new
    ldr r2, _0801F85C @ =0x00000F04
    adds r1, r5, r2
    movs r2, #2
    str r2, [sp]
    movs r2, #0x1f
    str r2, [sp, #4]
    add r3, sp, #8
    movs r2, #0
    strb r2, [r3]
    movs r2, #2
    adds r3, r5, #0
    bl func_080A4A00
    ldr r1, _0801F860 @ =0x00001078
    adds r6, r5, r1
    adds r4, r0, #0
    ldr r1, [r6]
    cmp r4, r1
    beq _0801F834
    cmp r1, #0
    beq _0801F834
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F834:
    str r4, [r6]
_0801F836:
    ldr r2, _0801F858 @ =0x00001038
    adds r0, r5, r2
    ldr r0, [r0]
    adds r0, #0x10
    bl func_0800E324
    cmp r0, #3
    bne _0801F90E
    movs r0, #0x40
    bl __builtin_new
    ldr r2, _0801F85C @ =0x00000F04
    adds r1, r5, r2
    movs r2, #2
    str r2, [sp]
    b _0801F8DE
    .align 2, 0
_0801F858: .4byte 0x00001038
_0801F85C: .4byte 0x00000F04
_0801F860: .4byte 0x00001078
_0801F864:
    ldr r2, _0801F884 @ =0x00001038
    adds r0, r5, r2
    ldr r0, [r0]
    adds r0, #0x10
    bl func_0800E324
    cmp r0, #3
    bne _0801F90E
    movs r0, #0x40
    bl __builtin_new
    ldr r2, _0801F888 @ =0x00000F04
    adds r1, r5, r2
    movs r2, #2
    str r2, [sp]
    b _0801F8DE
    .align 2, 0
_0801F884: .4byte 0x00001038
_0801F888: .4byte 0x00000F04
_0801F88C:
    ldr r2, _0801F8B4 @ =0x00001038
    adds r0, r5, r2
    ldr r0, [r0]
    ldrb r0, [r0, #3]
    lsrs r0, r0, #7
    cmp r0, #0
    beq _0801F90E
    movs r0, #0x40
    bl __builtin_new
    ldr r2, _0801F8B8 @ =0x00000F04
    adds r1, r5, r2
    movs r2, #2
    str r2, [sp]
    movs r2, #0x1f
    str r2, [sp, #4]
    add r2, sp, #8
    strb r4, [r2]
    b _0801F8E8
    .align 2, 0
_0801F8B4: .4byte 0x00001038
_0801F8B8: .4byte 0x00000F04
_0801F8BC:
    ldr r2, _0801F918 @ =0x00001038
    adds r0, r5, r2
    ldr r0, [r0]
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r0, r1
    bl IsFireplaceLighted__C9FarmHouse
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0801F90E
    movs r0, #0x40
    bl __builtin_new
    ldr r2, _0801F91C @ =0x00000F04
    adds r1, r5, r2
    str r4, [sp]
_0801F8DE:
    movs r2, #0x1f
    str r2, [sp, #4]
    add r3, sp, #8
    movs r2, #0
    strb r2, [r3]
_0801F8E8:
    movs r2, #2
    adds r3, r5, #0
    bl func_080A4A00
    ldr r1, _0801F920 @ =0x00001074
    adds r5, r5, r1
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq _0801F90C
    cmp r1, #0
    beq _0801F90C
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801F90C:
    str r4, [r5]
_0801F90E:
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
_0801F918: .4byte 0x00001038
_0801F91C: .4byte 0x00000F04
_0801F920: .4byte 0x00001074

    thumb_func_start func_0801F924
func_0801F924: @ 0x0801F924
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x38
    adds r4, r0, #0
    adds r7, r1, #0
    ldr r1, _0801F95C @ =0x00001038
    adds r0, r4, r1
    ldr r0, [r0]
    adds r0, #0x54
    mov r8, r0
    adds r0, r7, #0
    bl GetId__C7Product
    adds r5, r0, #0
    mov r0, r8
    adds r1, r5, #0
    bl IsDisplayEnabled__C11ShippingBini
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0801F960
    mov r0, r8
    adds r1, r5, #0
    bl GetAmountShipped__C11ShippingBini
    adds r6, r0, #0
    b _0801F962
    .align 2, 0
_0801F95C: .4byte 0x00001038
_0801F960:
    movs r6, #0
_0801F962:
    mov r0, r8
    adds r1, r7, #0
    bl Ship__11ShippingBinRC7Product
    mov r0, r8
    adds r1, r5, #0
    bl GetAmountShipped__C11ShippingBini
    adds r1, r0, #0
    cmp r6, r1
    bhs _0801FA50
    ldr r0, _0801F990 @ =0x000F4240
    cmp r1, r0
    beq _0801F9F0
    cmp r1, r0
    bhi _0801F99C
    ldr r0, _0801F994 @ =0x00002710
    cmp r1, r0
    beq _0801F9C4
    ldr r0, _0801F998 @ =0x000186A0
    cmp r1, r0
    beq _0801F9DC
    b _0801FA50
    .align 2, 0
_0801F990: .4byte 0x000F4240
_0801F994: .4byte 0x00002710
_0801F998: .4byte 0x000186A0
_0801F99C:
    ldr r0, _0801F9B0 @ =0x05F5E100
    cmp r1, r0
    beq _0801FA18
    cmp r1, r0
    bhi _0801F9B8
    ldr r0, _0801F9B4 @ =0x00989680
    cmp r1, r0
    beq _0801FA04
    b _0801FA50
    .align 2, 0
_0801F9B0: .4byte 0x05F5E100
_0801F9B4: .4byte 0x00989680
_0801F9B8:
    ldr r0, _0801F9C0 @ =0x3B9ACA00
    cmp r1, r0
    beq _0801FA36
    b _0801FA50
    .align 2, 0
_0801F9C0: .4byte 0x3B9ACA00
_0801F9C4:
    ldr r0, [r4]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r0, r0, r1
    movs r1, #0xcf
    lsls r1, r1, #2
    str r1, [sp]
    str r5, [sp, #4]
    ldr r3, [r0]
    adds r0, r4, #0
    mov r1, sp
    b _0801FA2E
_0801F9DC:
    ldr r2, [r4]
    movs r0, #0xa0
    lsls r0, r0, #1
    adds r2, r2, r0
    add r1, sp, #8
    ldr r0, _0801F9EC @ =0x0000033D
    str r0, [sp, #8]
    b _0801FA28
    .align 2, 0
_0801F9EC: .4byte 0x0000033D
_0801F9F0:
    ldr r2, [r4]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    add r1, sp, #0x10
    ldr r0, _0801FA00 @ =0x0000033E
    str r0, [sp, #0x10]
    b _0801FA28
    .align 2, 0
_0801FA00: .4byte 0x0000033E
_0801FA04:
    ldr r2, [r4]
    movs r0, #0xa0
    lsls r0, r0, #1
    adds r2, r2, r0
    add r1, sp, #0x18
    ldr r0, _0801FA14 @ =0x0000033F
    str r0, [sp, #0x18]
    b _0801FA28
    .align 2, 0
_0801FA14: .4byte 0x0000033F
_0801FA18:
    ldr r2, [r4]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    add r1, sp, #0x20
    movs r0, #0xd0
    lsls r0, r0, #2
    str r0, [sp, #0x20]
_0801FA28:
    str r5, [r1, #4]
    ldr r3, [r2]
    adds r0, r4, #0
_0801FA2E:
    movs r2, #1
    bl _call_via_r3
    b _0801FA50
_0801FA36:
    ldr r2, [r4]
    movs r0, #0xa0
    lsls r0, r0, #1
    adds r2, r2, r0
    add r1, sp, #0x28
    ldr r0, _0801FA98 @ =0x00000341
    str r0, [sp, #0x28]
    str r5, [r1, #4]
    ldr r3, [r2]
    adds r0, r4, #0
    movs r2, #1
    bl _call_via_r3
_0801FA50:
    ldr r1, _0801FA9C @ =0x00001038
    adds r0, r4, r1
    ldr r0, [r0]
    ldr r1, _0801FAA0 @ =0x00002192
    adds r0, r0, r1
    ldrb r0, [r0]
    movs r5, #3
    ands r5, r0
    cmp r5, #0
    bne _0801FA8A
    mov r0, r8
    bl HasShippedOneOfEachProduct__C11ShippingBin
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0801FA8A
    ldr r2, [r4]
    movs r0, #0xa0
    lsls r0, r0, #1
    adds r2, r2, r0
    add r1, sp, #0x30
    ldr r0, _0801FAA4 @ =0x00000342
    str r0, [sp, #0x30]
    str r5, [r1, #4]
    ldr r3, [r2]
    adds r0, r4, #0
    movs r2, #1
    bl _call_via_r3
_0801FA8A:
    add sp, #0x38
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801FA98: .4byte 0x00000341
_0801FA9C: .4byte 0x00001038
_0801FAA0: .4byte 0x00002192
_0801FAA4: .4byte 0x00000342

    thumb_func_start func_0801FAA8
func_0801FAA8: @ 0x0801FAA8
    push {lr}
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0801FAB8
func_0801FAB8: @ 0x0801FAB8
    push {lr}
    ldr r2, [r0]
    ldr r2, [r2, #0x44]
    bl _call_via_r2
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0801FAC8
func_0801FAC8: @ 0x0801FAC8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r4, r0, #0
    adds r6, r1, #0
    movs r0, #0
    mov r8, r0
    cmp r6, #0
    beq _0801FAEC
    cmp r6, #1
    bne _0801FAF2
    ldr r1, _0801FAE8 @ =0x00000ED4
    adds r1, r1, r4
    mov r8, r1
    b _0801FAF2
    .align 2, 0
_0801FAE8: .4byte 0x00000ED4
_0801FAEC:
    ldr r0, _0801FB38 @ =0x00000EA4
    adds r0, r0, r4
    mov r8, r0
_0801FAF2:
    mov r1, r8
    cmp r1, #0
    beq _0801FB68
    movs r7, #0x20
    ldr r0, [r4, #4]
    ldr r5, [r0]
    cmp r5, #2
    bne _0801FB3E
    movs r3, #0
    adds r1, r4, #0
    adds r1, #8
    movs r0, #0xcc
    lsls r0, r0, #1
    adds r2, r4, r0
    cmp r1, r2
    beq _0801FB26
_0801FB12:
    ldr r0, [r1]
    cmp r0, #0
    beq _0801FB20
    ldrh r0, [r0, #4]
    cmp r0, r5
    bne _0801FB20
    adds r3, #1
_0801FB20:
    adds r1, #4
    cmp r1, r2
    bne _0801FB12
_0801FB26:
    adds r0, r3, #0
    adds r0, #0xa
    cmp r0, #0xa
    bls _0801FB3E
    cmp r3, #0x15
    bhi _0801FB3C
    movs r0, #0x20
    subs r7, r0, r3
    b _0801FB3E
    .align 2, 0
_0801FB38: .4byte 0x00000EA4
_0801FB3C:
    movs r7, #0xa
_0801FB3E:
    ldr r0, _0801FB74 @ =0x0000046C
    bl __builtin_new
    str r7, [sp]
    adds r1, r4, #0
    mov r2, r8
    adds r3, r6, #0
    bl func_0803AEA0
    ldr r1, _0801FB78 @ =0x0000107C
    adds r5, r4, r1
    adds r4, r0, #0
    ldr r0, [r5]
    cmp r4, r0
    beq _0801FB66
    cmp r0, #0
    beq _0801FB66
    movs r1, #3
    bl func_0803B0A8
_0801FB66:
    str r4, [r5]
_0801FB68:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0801FB74: .4byte 0x0000046C
_0801FB78: .4byte 0x0000107C

    thumb_func_start func_0801FB7C
func_0801FB7C: @ 0x0801FB7C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    adds r7, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    lsls r4, r3, #0x18
    lsrs r4, r4, #0x18
    movs r0, #0xbc
    bl __builtin_new
    adds r1, r5, #0
    bl func_080A6474
    str r0, [sp, #8]
    ldr r0, _0801FBD8 @ =0x000010CC
    bl __builtin_new
    add r3, sp, #8
    mov r1, sp
    strb r4, [r1]
    adds r1, r5, #0
    adds r2, r6, #0
    bl func_080175B4
    str r0, [sp, #4]
    add r1, sp, #4
    str r1, [sp, #0xc]
    str r0, [sp, #0x10]
    adds r2, r1, #0
    movs r1, #0
    str r1, [r2]
    str r0, [r7]
    ldr r1, [sp, #4]
    cmp r1, #0
    beq _0801FBCE
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0801FBCE:
    adds r0, r7, #0
    add sp, #0x14
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_0801FBD8: .4byte 0x000010CC
_0801FBDC:
    .byte 0x01, 0x49, 0x40, 0x18
    .byte 0x70, 0x47, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00
    .byte 0xC4, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0x94, 0x0F, 0x00, 0x00
    .byte 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0x64, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18
    .byte 0x70, 0x47, 0x00, 0x00, 0x34, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00
    .byte 0x04, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0xD4, 0x0E, 0x00, 0x00
    .byte 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0xA4, 0x0E, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18
    .byte 0x70, 0x47, 0x00, 0x00, 0x74, 0x0E, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00
    .byte 0x44, 0x0E, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0x14, 0x0E, 0x00, 0x00
    .byte 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0xE4, 0x0D, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18
    .byte 0x70, 0x47, 0x00, 0x00, 0xB4, 0x0D, 0x00, 0x00, 0x30, 0xB5, 0x07, 0x49, 0x44, 0x18, 0x00, 0x25
    .byte 0x20, 0x68, 0x85, 0x42, 0x04, 0xD0, 0x00, 0x28, 0x02, 0xD0, 0x03, 0x21, 0x1B, 0xF0, 0x0C, 0xFA
    .byte 0x25, 0x60, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x7C, 0x10, 0x00, 0x00, 0x40, 0x68, 0x70, 0x47
    .byte 0x40, 0x68, 0x70, 0x47, 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x08, 0x30, 0x70, 0x47, 0x00, 0x00
    .byte 0x38, 0x10, 0x00, 0x00, 0x10, 0xB5, 0xCE, 0x22, 0x52, 0x00, 0x83, 0x18, 0x5C, 0x18, 0x20, 0x78
    .byte 0x02, 0x1C, 0x10, 0x3A, 0x00, 0x2A, 0x05, 0xDA, 0x18, 0x1C, 0x8C, 0xF0, 0x4F, 0xFE, 0x02, 0x1C
    .byte 0x10, 0x30, 0x20, 0x70, 0x10, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x4A, 0x01, 0x52, 0x18
    .byte 0x92, 0x00, 0x80, 0x18, 0x02, 0x49, 0x40, 0x18, 0x00, 0x21, 0x01, 0x70, 0x70, 0x47, 0x00, 0x00
    .byte 0x3D, 0x02, 0x00, 0x00, 0x08, 0x30, 0x89, 0x00, 0x40, 0x18, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00
    .byte 0x08, 0x30, 0x89, 0x00, 0x40, 0x18, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00

    thumb_func_start func_0801FD0C
func_0801FD0C: @ 0x0801FD0C
    push {r4, lr}
    adds r0, #8
    lsls r1, r1, #2
    adds r4, r0, r1
    ldr r1, [r4]
    cmp r1, #0
    beq _0801FD2A
    ldr r0, [r1, #0x14]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
    movs r0, #0
    str r0, [r4]
_0801FD2A:
    pop {r4}
    pop {r0}
    bx r0
_0801FD30:
    .byte 0x01, 0x49, 0x40, 0x18, 0x00, 0x68, 0x70, 0x47, 0x24, 0x10, 0x00, 0x00

    thumb_func_start func_0801FD3C
func_0801FD3C: @ 0x0801FD3C
    push {lr}
    ldr r0, [r0, #4]
    bl func_080A5A9C
    pop {r1}
    bx r1
_0801FD48:
    .byte 0x40, 0x68, 0x0E, 0x21, 0x40, 0x5E, 0x70, 0x47
    .byte 0x40, 0x68, 0x0A, 0x21, 0x40, 0x5E, 0x70, 0x47, 0x40, 0x68, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00

    thumb_func_start func_0801FD60
func_0801FD60: @ 0x0801FD60
    push {lr}
    ldr r0, [r0, #4]
    bl func_080A59BC
    pop {r0}
    bx r0

    thumb_func_start func_0801FD6C
func_0801FD6C: @ 0x0801FD6C
    push {lr}
    ldr r0, [r0, #4]
    bl func_080A5960
    pop {r0}
    bx r0
