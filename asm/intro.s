    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08000914
func_08000914: @ 0x08000914
    push {r4, r5, r6, lr}
    mov r6, sl
    mov r5, sb
    mov r4, r8
    push {r4, r5, r6}
    adds r5, r0, #0
    bl func_08008444
    ldr r0, _08000CB0 @ =0x080E5A0C
    str r0, [r5, #4]
    adds r0, r5, #0
    adds r0, #8
    movs r1, #0
    bl func_08008B54
    adds r0, r5, #0
    adds r0, #0xc
    movs r1, #1
    bl func_08008B54
    adds r4, r5, #0
    adds r4, #0x10
    ldr r0, _08000CB4 @ =0x08747A74
    adds r1, r4, #0
    bl func_080D102C
    ldr r0, _08000CB8 @ =0x00006A10
    adds r0, r0, r5
    mov sb, r0
    adds r1, r4, #0
    bl func_0805E6CC
    ldr r1, _08000CBC @ =0x00006A40
    adds r1, r1, r5
    mov sl, r1
    ldr r1, _08000CC0 @ =0x0874E530
    mov r0, sl
    bl func_0805E6CC
    ldr r0, _08000CC4 @ =0x00006A70
    adds r0, r0, r5
    mov r8, r0
    ldr r1, _08000CC8 @ =0x0858BA28
    bl func_0805E6CC
    ldr r1, _08000CCC @ =0x00006AA0
    adds r4, r5, r1
    adds r0, r4, #0
    mov r1, r8
    movs r2, #0xb0
    lsls r2, r2, #1
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    movs r6, #0
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    ldr r0, _08000CD0 @ =0x00006AC0
    adds r4, r5, r0
    adds r0, r4, #0
    mov r1, r8
    ldr r2, _08000CD4 @ =0x00000342
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    ldr r1, _08000CD8 @ =0x00006AE0
    adds r4, r5, r1
    adds r0, r4, #0
    mov r1, r8
    movs r2, #0xf1
    lsls r2, r2, #3
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    movs r0, #0xd6
    lsls r0, r0, #7
    adds r4, r5, r0
    adds r0, r4, #0
    mov r1, r8
    ldr r2, _08000CDC @ =0x000002B2
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    ldr r1, _08000CE0 @ =0x00006B20
    adds r4, r5, r1
    adds r0, r4, #0
    mov r1, r8
    ldr r2, _08000CE4 @ =0x00000924
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    ldr r0, _08000CE8 @ =0x00006B40
    adds r4, r5, r0
    adds r0, r4, #0
    mov r1, r8
    movs r2, #0xe6
    lsls r2, r2, #3
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    ldr r1, _08000CEC @ =0x00006B60
    adds r4, r5, r1
    adds r0, r4, #0
    mov r1, r8
    movs r2, #0xe6
    lsls r2, r2, #3
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    movs r0, #0xd7
    lsls r0, r0, #7
    adds r4, r5, r0
    adds r0, r4, #0
    mov r1, r8
    ldr r2, _08000CF0 @ =0x0000091A
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    ldr r1, _08000CF4 @ =0x00006BA0
    adds r4, r5, r1
    adds r0, r4, #0
    mov r1, sb
    movs r2, #0
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    ldr r0, _08000CF8 @ =0x00006BC0
    adds r4, r5, r0
    adds r0, r4, #0
    mov r1, sb
    movs r2, #0
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    ldr r1, _08000CFC @ =0x00006BE0
    adds r4, r5, r1
    adds r0, r4, #0
    mov r1, sb
    movs r2, #1
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    movs r0, #0xd8
    lsls r0, r0, #7
    adds r4, r5, r0
    adds r0, r4, #0
    mov r1, sb
    movs r2, #4
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    ldr r1, _08000D00 @ =0x00006C20
    adds r4, r5, r1
    adds r0, r4, #0
    mov r1, sb
    movs r2, #7
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    ldr r0, _08000D04 @ =0x00006C40
    adds r4, r5, r0
    adds r0, r4, #0
    mov r1, sl
    movs r2, #0
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    str r6, [r4, #0x18]
    str r6, [r4, #0x1c]
    ldr r1, _08000D08 @ =0x00006C70
    adds r4, r5, r1
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0xc0
    lsls r2, r2, #2
    bl func_08007A28
    ldr r0, _08000D0C @ =0x00006C74
    adds r4, r5, r0
    adds r0, r4, #0
    bl func_08007128
    adds r0, r4, #0
    movs r1, #9
    movs r2, #7
    bl func_080071BC
    ldr r1, _08000D10 @ =0x00006C78
    adds r4, r5, r1
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #4
    bl func_08007B54
    str r0, [r4, #4]
    movs r0, #0xd9
    lsls r0, r0, #7
    adds r4, r5, r0
    adds r0, r4, #0
    bl func_08007128
    adds r0, r4, #0
    bl func_0800736C
    str r0, [r4, #4]
    ldr r1, _08000D14 @ =0x00006C88
    adds r4, r5, r1
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #4
    bl func_08007B54
    str r0, [r4, #4]
    ldr r0, _08000D18 @ =0x00006C90
    adds r4, r5, r0
    adds r0, r4, #0
    bl func_08007128
    adds r0, r4, #0
    bl func_0800736C
    str r0, [r4, #4]
    ldr r1, _08000D1C @ =0x00006C98
    adds r4, r5, r1
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #4
    bl func_08007B54
    str r0, [r4, #4]
    ldr r0, _08000D20 @ =0x00006CA0
    adds r4, r5, r0
    adds r0, r4, #0
    bl func_08007128
    adds r0, r4, #0
    bl func_0800736C
    str r0, [r4, #4]
    ldr r1, _08000D24 @ =0x00006CA8
    adds r4, r5, r1
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #4
    bl func_08007B54
    str r0, [r4, #4]
    ldr r0, _08000D28 @ =0x00006CB0
    adds r4, r5, r0
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #2
    bl func_08007B54
    str r0, [r4, #4]
    ldr r1, _08000D2C @ =0x00006CB8
    adds r4, r5, r1
    adds r0, r4, #0
    bl func_08007128
    adds r0, r4, #0
    bl func_0800736C
    str r0, [r4, #4]
    ldr r0, _08000D30 @ =0x00006CC0
    adds r4, r5, r0
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #2
    bl func_08007B54
    str r0, [r4, #4]
    ldr r1, _08000D34 @ =0x00006CC8
    adds r4, r5, r1
    adds r0, r4, #0
    bl func_08007128
    adds r0, r4, #0
    bl func_0800736C
    str r0, [r4, #4]
    ldr r0, _08000D38 @ =0x00006CD0
    adds r4, r5, r0
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #1
    bl func_08007B54
    str r0, [r4, #4]
    ldr r1, _08000D3C @ =0x00006CD8
    adds r4, r5, r1
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #1
    bl func_08007B54
    str r0, [r4, #4]
    ldr r0, _08000D40 @ =0x00006CE0
    adds r4, r5, r0
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #3
    bl func_08007B54
    str r0, [r4, #4]
    ldr r1, _08000D44 @ =0x00006CE8
    adds r4, r5, r1
    adds r0, r4, #0
    bl func_08007128
    adds r0, r4, #0
    bl func_0800736C
    str r0, [r4, #4]
    ldr r0, _08000D48 @ =0x00006CF0
    adds r4, r5, r0
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #5
    bl func_08007B54
    str r0, [r4, #4]
    ldr r1, _08000D4C @ =0x00006CF8
    adds r4, r5, r1
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #5
    bl func_08007B54
    str r0, [r4, #4]
    movs r0, #0xda
    lsls r0, r0, #7
    adds r4, r5, r0
    adds r0, r4, #0
    bl func_08007128
    adds r0, r4, #0
    bl func_0800736C
    str r0, [r4, #4]
    ldr r1, _08000D50 @ =0x00006D08
    adds r4, r5, r1
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #6
    bl func_08007B54
    str r0, [r4, #4]
    ldr r0, _08000D54 @ =0x00006D10
    adds r4, r5, r0
    adds r0, r4, #0
    bl func_08007128
    adds r0, r4, #0
    bl func_0800736C
    str r0, [r4, #4]
    ldr r1, _08000D58 @ =0x00006D18
    adds r4, r5, r1
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #2
    bl func_08007B54
    str r0, [r4, #4]
    ldr r0, _08000D5C @ =0x00006D20
    adds r4, r5, r0
    adds r0, r4, #0
    bl func_08007128
    adds r0, r4, #0
    bl func_0800736C
    str r0, [r4, #4]
    ldr r1, _08000D60 @ =0x00006D28
    adds r0, r5, r1
    str r6, [r0]
    adds r1, #4
    adds r0, r5, r1
    str r6, [r0]
    subs r1, #0xbf
    adds r0, r5, r1
    strb r6, [r0]
    adds r1, #1
    adds r0, r5, r1
    strb r6, [r0]
    adds r0, r5, #0
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
_08000CB0: .4byte 0x080E5A0C
_08000CB4: .4byte 0x08747A74
_08000CB8: .4byte 0x00006A10
_08000CBC: .4byte 0x00006A40
_08000CC0: .4byte 0x0874E530
_08000CC4: .4byte 0x00006A70
_08000CC8: .4byte 0x0858BA28
_08000CCC: .4byte 0x00006AA0
_08000CD0: .4byte 0x00006AC0
_08000CD4: .4byte 0x00000342
_08000CD8: .4byte 0x00006AE0
_08000CDC: .4byte 0x000002B2
_08000CE0: .4byte 0x00006B20
_08000CE4: .4byte 0x00000924
_08000CE8: .4byte 0x00006B40
_08000CEC: .4byte 0x00006B60
_08000CF0: .4byte 0x0000091A
_08000CF4: .4byte 0x00006BA0
_08000CF8: .4byte 0x00006BC0
_08000CFC: .4byte 0x00006BE0
_08000D00: .4byte 0x00006C20
_08000D04: .4byte 0x00006C40
_08000D08: .4byte 0x00006C70
_08000D0C: .4byte 0x00006C74
_08000D10: .4byte 0x00006C78
_08000D14: .4byte 0x00006C88
_08000D18: .4byte 0x00006C90
_08000D1C: .4byte 0x00006C98
_08000D20: .4byte 0x00006CA0
_08000D24: .4byte 0x00006CA8
_08000D28: .4byte 0x00006CB0
_08000D2C: .4byte 0x00006CB8
_08000D30: .4byte 0x00006CC0
_08000D34: .4byte 0x00006CC8
_08000D38: .4byte 0x00006CD0
_08000D3C: .4byte 0x00006CD8
_08000D40: .4byte 0x00006CE0
_08000D44: .4byte 0x00006CE8
_08000D48: .4byte 0x00006CF0
_08000D4C: .4byte 0x00006CF8
_08000D50: .4byte 0x00006D08
_08000D54: .4byte 0x00006D10
_08000D58: .4byte 0x00006D18
_08000D5C: .4byte 0x00006D20
_08000D60: .4byte 0x00006D28

    thumb_func_start func_08000D64
func_08000D64: @ 0x08000D64
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    adds r6, r0, #0
    adds r5, r1, #0
    movs r7, #0
    ldr r0, _08000D80 @ =0x00006D28
    adds r4, r5, r0
_08000D72:
    ldr r0, [r4]
    cmp r0, #0
    beq _08000D84
    cmp r0, #1
    beq _08000D8E
    b _08000D9C
    .align 2, 0
_08000D80: .4byte 0x00006D28
_08000D84:
    adds r0, r5, #0
    bl func_08000E1C
    movs r0, #1
    b _08000D9A
_08000D8E:
    adds r0, r5, #0
    bl func_08000FF8
    cmp r0, #1
    beq _08000DA0
    movs r0, #0
_08000D9A:
    str r0, [r4]
_08000D9C:
    cmp r7, #0
    beq _08000D72
_08000DA0:
    ldr r1, _08000DD8 @ =0x00006C6E
    adds r0, r5, r1
    movs r4, #0
    ldrsb r4, [r0, r4]
    cmp r4, #0
    bne _08000DE0
    movs r0, #4
    bl __builtin_new
    ldr r1, _08000DDC @ =0x080E59FC
    str r1, [r0]
    str r0, [sp]
    mov r1, sp
    str r1, [sp, #4]
    str r0, [sp, #8]
    str r4, [r1]
    str r0, [r6]
    ldr r1, [sp]
    cmp r1, #0
    beq _08000E0C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
    b _08000E0C
    .align 2, 0
_08000DD8: .4byte 0x00006C6E
_08000DDC: .4byte 0x080E59FC
_08000DE0:
    movs r0, #4
    bl __builtin_new
    ldr r1, _08000E18 @ =0x080E59EC
    str r1, [r0]
    str r0, [sp]
    mov r1, sp
    str r1, [sp, #0xc]
    str r0, [sp, #0x10]
    adds r2, r1, #0
    movs r1, #0
    str r1, [r2]
    str r0, [r6]
    ldr r1, [sp]
    cmp r1, #0
    beq _08000E0C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08000E0C:
    adds r0, r6, #0
    add sp, #0x14
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_08000E18: .4byte 0x080E59EC

    thumb_func_start func_08000E1C
func_08000E1C: @ 0x08000E1C
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r7, r0, #0
    bl func_08008724
    adds r0, r7, #0
    bl func_08000F5C
    adds r0, r7, #0
    bl func_08008918
    mov r1, sp
    movs r2, #0x3f
    strh r2, [r1]
    adds r0, #0x50
    strh r2, [r0]
    movs r0, #0x10
    bl __builtin_new
    adds r4, r0, #0
    adds r0, r7, #0
    bl func_08008918
    adds r1, r0, #0
    movs r6, #0
    str r6, [r4]
    str r6, [r4, #4]
    ldr r0, _08000EB0 @ =0x080E5B80
    str r0, [r4, #8]
    adds r5, r4, #0
    adds r5, #0xc
    adds r0, r5, #0
    bl func_08009300
    str r4, [sp, #4]
    ldr r1, _08000EB4 @ =0x00000889
    adds r0, r5, #0
    movs r2, #1
    movs r3, #0
    bl func_0800934C
    adds r0, r7, #0
    bl func_08008940
    ldr r2, [r0, #8]
    ldr r1, [sp, #4]
    ldr r2, [r2, #0x10]
    bl _call_via_r2
    ldr r1, _08000EB8 @ =0x00006D32
    adds r0, r7, r1
    strh r6, [r0]
    adds r0, r7, #0
    adds r0, #8
    movs r1, #0
    bl func_08008B6C
    ldr r0, _08000EB8 @ =0x00006D32
    adds r5, r7, r0
_08000E92:
    adds r0, r7, #0
    bl func_080087C8
    adds r0, r7, #0
    bl func_080088B8
    movs r1, #0
    ldrsh r0, [r5, r1]
    cmp r0, #1
    beq _08000EE0
    cmp r0, #1
    bgt _08000EBC
    cmp r0, #0
    beq _08000EC2
    b _08000F3E
    .align 2, 0
_08000EB0: .4byte 0x080E5B80
_08000EB4: .4byte 0x00000889
_08000EB8: .4byte 0x00006D32
_08000EBC:
    cmp r0, #2
    beq _08000F30
    b _08000F3E
_08000EC2:
    ldr r0, [sp, #4]
    ldr r1, [r0]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    blt _08000F3E
    ldr r1, _08000EDC @ =0x00006D2C
    adds r0, r7, r1
    movs r1, #0x78
    str r1, [r0]
    movs r0, #1
    strh r0, [r5]
    b _08000F3E
    .align 2, 0
_08000EDC: .4byte 0x00006D2C
_08000EE0:
    ldr r0, _08000F28 @ =0x00006D2C
    adds r4, r7, r0
    ldr r0, [r4]
    subs r0, #1
    str r0, [r4]
    adds r0, r7, #0
    bl func_080088CC
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    beq _08000EFC
    movs r0, #0
    str r0, [r4]
_08000EFC:
    ldr r0, [r4]
    cmp r0, #0
    bgt _08000F3E
    ldr r0, [sp, #4]
    adds r0, #0xc
    ldr r1, _08000F2C @ =0x00000889
    movs r2, #1
    movs r3, #0
    bl func_08009378
    adds r0, r7, #0
    bl func_08008940
    ldr r2, [r0, #8]
    ldr r1, [sp, #4]
    ldr r2, [r2, #0x10]
    bl _call_via_r2
    movs r0, #2
    strh r0, [r5]
    b _08000F3E
    .align 2, 0
_08000F28: .4byte 0x00006D2C
_08000F2C: .4byte 0x00000889
_08000F30:
    ldr r0, [sp, #4]
    ldr r1, [r0]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    blt _08000F3E
    movs r6, #1
_08000F3E:
    cmp r6, #0
    beq _08000E92
    ldr r1, [sp, #4]
    cmp r1, #0
    beq _08000F54
    ldr r0, [r1, #8]
    ldr r2, [r0, #0xc]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08000F54:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08000F5C
func_08000F5C: @ 0x08000F5C
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    ldr r1, _08000FE0 @ =0x06007FE0
    movs r0, #0
    movs r2, #0x20
    bl func_08008EB8
    movs r0, #1
    rsbs r0, r0, #0
    ldr r4, _08000FE4 @ =0x0600F800
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r4, #0
    bl func_08008EB8
    ldr r0, _08000FE8 @ =0x0874E648
    movs r1, #0xc0
    lsls r1, r1, #0x13
    bl func_080D102C
    ldr r0, _08000FEC @ =0x0874EB40
    movs r1, #0xa0
    lsls r1, r1, #0x13
    movs r2, #0x20
    bl func_08008E64
    ldr r0, _08000FF0 @ =0x0874EB60
    adds r1, r4, #0
    bl func_080D102C
    adds r0, r5, #0
    bl func_08008918
    mov r1, sp
    movs r3, #0x84
    lsls r3, r3, #4
    adds r2, r3, #0
    strh r2, [r1]
    movs r4, #0
    strh r2, [r0]
    adds r0, r5, #0
    bl func_08008918
    mov r2, sp
    ldr r3, _08000FF4 @ =0x00001F43
    adds r1, r3, #0
    strh r1, [r2]
    strh r1, [r0, #0xe]
    adds r0, r5, #0
    bl func_08008918
    mov r1, sp
    strh r4, [r1]
    strh r4, [r0, #0x1c]
    adds r0, r5, #0
    bl func_08008918
    mov r1, sp
    strh r4, [r1]
    strh r4, [r0, #0x1e]
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08000FE0: .4byte 0x06007FE0
_08000FE4: .4byte 0x0600F800
_08000FE8: .4byte 0x0874E648
_08000FEC: .4byte 0x0874EB40
_08000FF0: .4byte 0x0874EB60
_08000FF4: .4byte 0x00001F43

    thumb_func_start func_08000FF8
func_08000FF8: @ 0x08000FF8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x20
    adds r7, r0, #0
    bl func_08008724
    adds r0, r7, #0
    bl func_080019D8
    adds r0, r7, #0
    bl func_08008918
    mov r1, sp
    movs r2, #0x3f
    strh r2, [r1]
    adds r0, #0x50
    strh r2, [r0]
    movs r0, #0x10
    bl __builtin_new
    adds r4, r0, #0
    adds r0, r7, #0
    bl func_08008918
    adds r1, r0, #0
    movs r6, #0
    str r6, [r4]
    str r6, [r4, #4]
    ldr r0, _0800112C @ =0x080E5B80
    str r0, [r4, #8]
    adds r5, r4, #0
    adds r5, #0xc
    adds r0, r5, #0
    bl func_08009300
    str r4, [sp, #4]
    ldr r1, _08001130 @ =0x00000889
    adds r0, r5, #0
    movs r2, #1
    movs r3, #0
    bl func_0800934C
    adds r0, r7, #0
    bl func_08008940
    ldr r2, [r0, #8]
    ldr r1, [sp, #4]
    ldr r2, [r2, #0x10]
    bl _call_via_r2
    adds r0, r7, #0
    adds r0, #8
    movs r1, #0x23
    bl func_08008B6C
    ldr r1, _08001134 @ =0x00006C64
    adds r0, r7, r1
    movs r2, #0
    movs r1, #0x80
    lsls r1, r1, #3
    strh r1, [r0]
    ldr r3, _08001138 @ =0x00006C66
    adds r0, r7, r3
    strh r6, [r0]
    ldr r4, _0800113C @ =0x00006C68
    adds r0, r7, r4
    strh r6, [r0]
    adds r3, #4
    adds r0, r7, r3
    strh r1, [r0]
    adds r4, #0xca
    adds r1, r7, r4
    movs r0, #3
    strh r0, [r1]
    ldr r0, _08001140 @ =0x00006D30
    adds r1, r7, r0
    movs r0, #0xe0
    strh r0, [r1]
    ldr r1, _08001144 @ =0x00006C6D
    adds r0, r7, r1
    strb r2, [r0]
    adds r3, #2
    adds r0, r7, r3
    strb r2, [r0]
    movs r4, #0
    mov sb, r4
    mov sl, r4
    mov r8, r4
    movs r0, #0
    str r0, [sp, #0x10]
    movs r1, #0
    str r1, [sp, #0x14]
    movs r2, #0
    str r2, [sp, #0x18]
    movs r3, #0
    str r3, [sp, #0x1c]

    non_word_aligned_thumb_func_start sub_080010BE
sub_080010BE: @ 0x080010BE
    bl rand
    adds r0, r7, #0
    bl func_080087C8
    adds r0, r7, #0
    bl func_080088B8
    ldr r4, [sp, #0x10]
    cmp r4, #0
    bne _0800110E
    movs r4, #0
    adds r0, r7, #0
    bl func_080088CC
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne _08001100
    adds r0, r7, #0
    bl func_080088CC
    movs r1, #2
    ands r0, r1
    cmp r0, #0
    bne _08001100
    adds r0, r7, #0
    bl func_080088CC
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    beq _08001102
_08001100:
    movs r4, #1
_08001102:
    cmp r4, #0
    beq _0800110E
    ldr r0, _08001148 @ =0x00006D32
    adds r1, r7, r0
    movs r0, #0xb
    strh r0, [r1]
_0800110E:
    ldr r1, _08001148 @ =0x00006D32
    adds r0, r7, r1
    ldrh r0, [r0]
    subs r0, #3
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0xd
    bls _08001120
    b _08001694
_08001120:
    lsls r0, r0, #2
    ldr r1, _0800114C @ =_08001150
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800112C: .4byte 0x080E5B80
_08001130: .4byte 0x00000889
_08001134: .4byte 0x00006C64
_08001138: .4byte 0x00006C66
_0800113C: .4byte 0x00006C68
_08001140: .4byte 0x00006D30
_08001144: .4byte 0x00006C6D
_08001148: .4byte 0x00006D32
_0800114C: .4byte _08001150
_08001150: @ jump table
    .4byte _08001188 @ case 0
    .4byte _080011A4 @ case 1
    .4byte _08001220 @ case 2
    .4byte _08001290 @ case 3
    .4byte _080012C8 @ case 4
    .4byte _08001314 @ case 5
    .4byte _08001338 @ case 6
    .4byte _08001374 @ case 7
    .4byte _080013AC @ case 8
    .4byte _08001434 @ case 9
    .4byte _080014EC @ case 10
    .4byte _08001630 @ case 11
    .4byte _08001654 @ case 12
    .4byte _08001684 @ case 13
_08001188:
    ldr r0, [sp, #4]
    ldr r1, [r0]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge _08001196
    b _08001694
_08001196:
    ldr r2, _080011A0 @ =0x00006D32
    adds r1, r7, r2
    movs r0, #4
    strh r0, [r1]
    b _08001694
    .align 2, 0
_080011A0: .4byte 0x00006D32
_080011A4:
    ldr r4, _08001204 @ =0x00006D30
    adds r3, r7, r4
    ldrh r0, [r3]
    subs r0, #1
    movs r1, #0
    strh r0, [r3]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge _080011B8
    strh r1, [r3]
_080011B8:
    ldr r0, _08001208 @ =0x00006AB8
    adds r2, r7, r0
    ldr r1, [r2]
    ldr r4, _0800120C @ =0xFFFF5000
    adds r1, r1, r4
    str r1, [r2]
    ldr r0, _08001210 @ =0x006FFFFF
    cmp r1, r0
    bgt _080011CE
    adds r0, #1
    str r0, [r2]
_080011CE:
    movs r1, #0
    ldrsh r0, [r3, r1]
    cmp r0, #0
    beq _080011D8
    b _08001694
_080011D8:
    ldr r1, [r2]
    movs r0, #0xe0
    lsls r0, r0, #0xf
    cmp r1, r0
    beq _080011E4
    b _08001694
_080011E4:
    ldr r2, _08001214 @ =0x00006AA0
    adds r0, r7, r2
    movs r1, #0xca
    lsls r1, r1, #1
    bl func_0805E860
    ldr r3, _08001218 @ =0x00006D2C
    adds r1, r7, r3
    movs r0, #0x5a
    str r0, [r1]
    ldr r4, _0800121C @ =0x00006D32
    adds r1, r7, r4
    movs r0, #5
    strh r0, [r1]
    b _08001694
    .align 2, 0
_08001204: .4byte 0x00006D30
_08001208: .4byte 0x00006AB8
_0800120C: .4byte 0xFFFF5000
_08001210: .4byte 0x006FFFFF
_08001214: .4byte 0x00006AA0
_08001218: .4byte 0x00006D2C
_0800121C: .4byte 0x00006D32
_08001220:
    ldr r0, _08001240 @ =0x00006D2C
    adds r1, r7, r0
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    cmp r0, #0x1e
    beq _08001248
    cmp r0, #0x3c
    bne _08001252
    ldr r1, _08001244 @ =0x00006AA0
    adds r0, r7, r1
    movs r1, #0xc9
    lsls r1, r1, #1
    bl func_0805E860
    b _08001252
    .align 2, 0
_08001240: .4byte 0x00006D2C
_08001244: .4byte 0x00006AA0
_08001248:
    ldr r2, _0800127C @ =0x00006AA0
    adds r0, r7, r2
    ldr r1, _08001280 @ =0x00000195
    bl func_0805E860
_08001252:
    ldr r3, _08001284 @ =0x00006D2C
    adds r0, r7, r3
    ldr r0, [r0]
    cmp r0, #0
    ble _0800125E
    b _08001694
_0800125E:
    ldr r4, _0800127C @ =0x00006AA0
    adds r0, r7, r4
    ldr r1, _08001288 @ =0x000001FD
    bl func_0805E860
    adds r0, r7, #0
    adds r0, #0xc
    movs r1, #0x67
    bl func_08008B6C
    ldr r0, _0800128C @ =0x00006D32
    adds r1, r7, r0
    movs r0, #6
    strh r0, [r1]
    b _08001694
    .align 2, 0
_0800127C: .4byte 0x00006AA0
_08001280: .4byte 0x00000195
_08001284: .4byte 0x00006D2C
_08001288: .4byte 0x000001FD
_0800128C: .4byte 0x00006D32
_08001290:
    ldr r1, _080012B8 @ =0x00006AB4
    adds r0, r7, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    cmp r0, #0
    blt _0800129E
    b _08001694
_0800129E:
    ldr r2, _080012BC @ =0x00006AA0
    adds r0, r7, r2
    ldr r1, _080012C0 @ =0x00000195
    bl func_0805E860
    movs r3, #1
    mov sl, r3
    mov r8, r3
    ldr r4, _080012C4 @ =0x00006D32
    adds r1, r7, r4
    movs r0, #7
    strh r0, [r1]
    b _08001694
    .align 2, 0
_080012B8: .4byte 0x00006AB4
_080012BC: .4byte 0x00006AA0
_080012C0: .4byte 0x00000195
_080012C4: .4byte 0x00006D32
_080012C8:
    ldr r0, _08001300 @ =0x00006AD8
    adds r4, r7, r0
    ldr r0, [r4]
    ldr r1, _08001304 @ =0xFFFEC000
    adds r0, r0, r1
    str r0, [r4]
    movs r5, #0x80
    lsls r5, r5, #0x10
    cmp r0, r5
    ble _080012DE
    b _08001694
_080012DE:
    ldr r2, _08001308 @ =0x00006D2C
    adds r1, r7, r2
    movs r0, #0x3c
    str r0, [r1]
    ldr r3, _0800130C @ =0x00006AA0
    adds r0, r7, r3
    movs r1, #0xe1
    lsls r1, r1, #1
    bl func_0805E860
    movs r6, #1
    str r5, [r4]
    ldr r4, _08001310 @ =0x00006D32
    adds r1, r7, r4
    movs r0, #8
    strh r0, [r1]
    b _08001694
    .align 2, 0
_08001300: .4byte 0x00006AD8
_08001304: .4byte 0xFFFEC000
_08001308: .4byte 0x00006D2C
_0800130C: .4byte 0x00006AA0
_08001310: .4byte 0x00006D32
_08001314:
    ldr r0, _08001330 @ =0x00006D2C
    adds r1, r7, r0
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    cmp r0, #0
    ble _08001324
    b _08001694
_08001324:
    ldr r2, _08001334 @ =0x00006D32
    adds r1, r7, r2
    movs r0, #9
    strh r0, [r1]
    b _08001694
    .align 2, 0
_08001330: .4byte 0x00006D2C
_08001334: .4byte 0x00006D32
_08001338:
    ldr r3, _08001368 @ =0x00006BBC
    adds r1, r7, r3
    ldr r0, [r1]
    movs r4, #0xc0
    lsls r4, r4, #9
    adds r0, r0, r4
    str r0, [r1]
    cmp r0, #0
    bge _0800134C
    b _08001694
_0800134C:
    movs r0, #0
    str r0, [r1]
    ldr r0, _0800136C @ =0x00006C6C
    adds r1, r7, r0
    movs r0, #1
    strb r0, [r1]
    movs r1, #1
    str r1, [sp, #0x14]
    movs r6, #3
    ldr r2, _08001370 @ =0x00006D32
    adds r1, r7, r2
    movs r0, #0xa
    strh r0, [r1]
    b _08001694
    .align 2, 0
_08001368: .4byte 0x00006BBC
_0800136C: .4byte 0x00006C6C
_08001370: .4byte 0x00006D32
_08001374:
    ldr r3, _080013A0 @ =0x00006C64
    adds r2, r7, r3
    ldrh r0, [r2]
    subs r0, #0x10
    strh r0, [r2]
    ldr r4, _080013A4 @ =0x00006C6A
    adds r1, r7, r4
    ldrh r0, [r1]
    subs r0, #0x10
    strh r0, [r1]
    movs r0, #0
    ldrsh r1, [r2, r0]
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    beq _08001396
    b _08001694
_08001396:
    movs r1, #1
    str r1, [sp, #0x10]
    ldr r2, _080013A8 @ =0x00006D32
    adds r1, r7, r2
    b _08001412
    .align 2, 0
_080013A0: .4byte 0x00006C64
_080013A4: .4byte 0x00006C6A
_080013A8: .4byte 0x00006D32
_080013AC:
    ldr r3, _08001418 @ =0x00006D30
    adds r1, r7, r3
    movs r0, #0
    strh r0, [r1]
    ldr r4, _0800141C @ =0x00006AB8
    adds r1, r7, r4
    movs r0, #0xe0
    lsls r0, r0, #0xf
    str r0, [r1]
    ldr r1, _08001420 @ =0x00006AA0
    adds r0, r7, r1
    movs r1, #0xc9
    lsls r1, r1, #1
    bl func_0805E860
    ldr r2, _08001424 @ =0x00006AC0
    adds r0, r7, r2
    movs r1, #0xce
    lsls r1, r1, #2
    bl func_0805E860
    ldr r3, _08001428 @ =0x00006AD8
    adds r1, r7, r3
    movs r0, #0x80
    lsls r0, r0, #0x10
    str r0, [r1]
    movs r4, #0
    str r4, [sp, #0x14]
    movs r6, #0
    movs r0, #2
    mov sl, r0
    mov r8, r0
    ldr r2, _0800142C @ =0x00006C6C
    adds r1, r7, r2
    movs r0, #9
    strb r0, [r1]
    adds r3, #0xe4
    adds r0, r7, r3
    str r6, [r0]
    ldr r4, _08001430 @ =0x00006C64
    adds r0, r7, r4
    movs r1, #0x80
    lsls r1, r1, #1
    strh r1, [r0]
    subs r2, #2
    adds r0, r7, r2
    strh r1, [r0]
    movs r3, #1
    str r3, [sp, #0x10]
    adds r4, #0xce
    adds r1, r7, r4
_08001412:
    movs r0, #0xc
    strh r0, [r1]
    b _08001694
    .align 2, 0
_08001418: .4byte 0x00006D30
_0800141C: .4byte 0x00006AB8
_08001420: .4byte 0x00006AA0
_08001424: .4byte 0x00006AC0
_08001428: .4byte 0x00006AD8
_0800142C: .4byte 0x00006C6C
_08001430: .4byte 0x00006C64
_08001434:
    add r4, sp, #8
    adds r0, r4, #0
    bl func_08000640
    adds r0, r4, #0
    bl func_080003A0
    adds r2, r0, #0
    cmp r2, #0
    bne _08001484
    ldr r0, _08001470 @ =0x00006C6D
    adds r1, r7, r0
    movs r0, #1
    strb r0, [r1]
    ldr r1, _08001474 @ =0x00006C6E
    adds r0, r7, r1
    strb r2, [r0]
    ldr r2, _08001478 @ =0x00006BF8
    adds r0, r7, r2
    movs r4, #0xa0
    lsls r4, r4, #0xf
    str r4, [r0]
    ldr r3, _0800147C @ =0x00006BE0
    adds r0, r7, r3
    movs r1, #2
    bl func_0805E860
    ldr r1, _08001480 @ =0x00006C58
    adds r0, r7, r1
    b _080014B6
    .align 2, 0
_08001470: .4byte 0x00006C6D
_08001474: .4byte 0x00006C6E
_08001478: .4byte 0x00006BF8
_0800147C: .4byte 0x00006BE0
_08001480: .4byte 0x00006C58
_08001484:
    ldr r2, _080014CC @ =0x00006C6D
    adds r1, r7, r2
    movs r0, #2
    strb r0, [r1]
    ldr r3, _080014D0 @ =0x00006C6E
    adds r1, r7, r3
    movs r0, #1
    strb r0, [r1]
    ldr r4, _080014D4 @ =0x00006BF8
    adds r1, r7, r4
    movs r0, #0xc0
    lsls r0, r0, #0xd
    str r0, [r1]
    ldr r1, _080014D8 @ =0x00006C18
    adds r0, r7, r1
    movs r4, #0x88
    lsls r4, r4, #0x10
    str r4, [r0]
    subs r2, #0x6d
    adds r0, r7, r2
    movs r1, #5
    bl func_0805E860
    ldr r3, _080014DC @ =0x00006C58
    adds r0, r7, r3
_080014B6:
    str r4, [r0]
    ldr r4, _080014E0 @ =0x00006D2C
    adds r1, r7, r4
    ldr r0, _080014E4 @ =0x00000924
    str r0, [r1]
    ldr r0, _080014E8 @ =0x00006D32
    adds r1, r7, r0
    movs r0, #0xd
    strh r0, [r1]
    b _08001694
    .align 2, 0
_080014CC: .4byte 0x00006C6D
_080014D0: .4byte 0x00006C6E
_080014D4: .4byte 0x00006BF8
_080014D8: .4byte 0x00006C18
_080014DC: .4byte 0x00006C58
_080014E0: .4byte 0x00006D2C
_080014E4: .4byte 0x00000924
_080014E8: .4byte 0x00006D32
_080014EC:
    ldr r1, _08001550 @ =0x00006C6D
    adds r0, r7, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #2
    bne _08001594
    movs r4, #0
    adds r0, r7, #0
    bl func_080088CC
    movs r1, #0x20
    ands r0, r1
    cmp r0, #0
    bne _08001518
    adds r0, r7, #0
    bl func_080088CC
    movs r1, #0x10
    ands r0, r1
    cmp r0, #0
    beq _0800151A
_08001518:
    movs r4, #1
_0800151A:
    cmp r4, #0
    beq _08001594
    ldr r3, _08001554 @ =0x00006C6E
    adds r2, r7, r3
    ldrb r1, [r2]
    movs r0, #1
    eors r1, r0
    strb r1, [r2]
    cmp r1, #0
    bne _08001560
    ldr r4, _08001558 @ =0x00006BE0
    adds r0, r7, r4
    movs r1, #2
    bl func_0805E860
    movs r1, #0xd8
    lsls r1, r1, #7
    adds r0, r7, r1
    movs r1, #4
    bl func_0805E860
    ldr r2, _0800155C @ =0x00006C58
    adds r1, r7, r2
    movs r0, #0xc0
    lsls r0, r0, #0xd
    b _0800157E
    .align 2, 0
_08001550: .4byte 0x00006C6D
_08001554: .4byte 0x00006C6E
_08001558: .4byte 0x00006BE0
_0800155C: .4byte 0x00006C58
_08001560:
    ldr r3, _080015D4 @ =0x00006BE0
    adds r0, r7, r3
    movs r1, #1
    bl func_0805E860
    movs r4, #0xd8
    lsls r4, r4, #7
    adds r0, r7, r4
    movs r1, #5
    bl func_0805E860
    ldr r0, _080015D8 @ =0x00006C58
    adds r1, r7, r0
    movs r0, #0x88
    lsls r0, r0, #0x10
_0800157E:
    str r0, [r1]
    ldr r1, _080015DC @ =0x00006D2C
    adds r0, r7, r1
    movs r1, #0xe1
    lsls r1, r1, #3
    str r1, [r0]
    adds r0, r7, #0
    adds r0, #0xc
    movs r1, #0xcb
    bl func_08008B6C
_08001594:
    movs r4, #0
    adds r0, r7, #0
    bl func_080088CC
    movs r1, #1
    ands r0, r1
    cmp r0, #0
    bne _080015B2
    adds r0, r7, #0
    bl func_080088CC
    movs r1, #8
    ands r0, r1
    cmp r0, #0
    beq _080015B4
_080015B2:
    movs r4, #1
_080015B4:
    cmp r4, #0
    beq _08001614
    ldr r2, _080015E0 @ =0x00006C6E
    adds r0, r7, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne _080015E4
    ldr r3, _080015D4 @ =0x00006BE0
    adds r0, r7, r3
    movs r1, #3
    bl func_0805E860
    b _080015F0
    .align 2, 0
_080015D4: .4byte 0x00006BE0
_080015D8: .4byte 0x00006C58
_080015DC: .4byte 0x00006D2C
_080015E0: .4byte 0x00006C6E
_080015E4:
    movs r4, #0xd8
    lsls r4, r4, #7
    adds r0, r7, r4
    movs r1, #6
    bl func_0805E860
_080015F0:
    ldr r0, _0800160C @ =0x00006D2C
    adds r1, r7, r0
    movs r0, #0x3c
    str r0, [r1]
    adds r0, r7, #0
    adds r0, #0xc
    movs r1, #0xc5
    bl func_08008B6C
    ldr r2, _08001610 @ =0x00006D32
    adds r1, r7, r2
    movs r0, #0xe
    strh r0, [r1]
    b _08001694
    .align 2, 0
_0800160C: .4byte 0x00006D2C
_08001610: .4byte 0x00006D32
_08001614:
    ldr r3, _08001628 @ =0x00006D2C
    adds r1, r7, r3
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    cmp r0, #0
    bgt _08001694
    ldr r4, _0800162C @ =0x00006D32
    adds r1, r7, r4
    b _08001646
    .align 2, 0
_08001628: .4byte 0x00006D2C
_0800162C: .4byte 0x00006D32
_08001630:
    ldr r0, _0800164C @ =0x00006D2C
    adds r1, r7, r0
    ldr r0, [r1]
    subs r0, #1
    str r0, [r1]
    cmp r0, #0
    bgt _08001694
    movs r1, #1
    str r1, [sp, #0x18]
    ldr r2, _08001650 @ =0x00006D32
    adds r1, r7, r2
_08001646:
    movs r0, #0xf
    strh r0, [r1]
    b _08001694
    .align 2, 0
_0800164C: .4byte 0x00006D2C
_08001650: .4byte 0x00006D32
_08001654:
    ldr r0, [sp, #4]
    ldr r1, _0800167C @ =0x00000889
    adds r0, #0xc
    movs r2, #1
    movs r3, #0
    bl func_08009378
    adds r0, r7, #0
    bl func_08008940
    ldr r2, [r0, #8]
    ldr r1, [sp, #4]
    ldr r2, [r2, #0x10]
    bl _call_via_r2
    ldr r3, _08001680 @ =0x00006D32
    adds r1, r7, r3
    movs r0, #0x10
    strh r0, [r1]
    b _08001694
    .align 2, 0
_0800167C: .4byte 0x00000889
_08001680: .4byte 0x00006D32
_08001684:
    ldr r0, [sp, #4]
    ldr r1, [r0]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    blt _08001694
    movs r4, #1
    str r4, [sp, #0x1c]
_08001694:
    ldr r0, [sp, #0x14]
    cmp r0, #0
    beq _080016B6
    ldr r1, _080016C8 @ =0x00006AB4
    adds r0, r7, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge _080016B6
    ldr r2, _080016CC @ =0x00006AA0
    adds r0, r7, r2
    movs r1, #0xc9
    lsls r1, r1, #1
    bl func_0805E860
    movs r3, #0
    str r3, [sp, #0x14]
_080016B6:
    adds r0, r6, #0
    cmp r0, #2
    beq _080016F4
    cmp r0, #2
    bgt _080016D0
    cmp r0, #1
    beq _080016D6
    b _0800172A
    .align 2, 0
_080016C8: .4byte 0x00006AB4
_080016CC: .4byte 0x00006AA0
_080016D0:
    cmp r0, #3
    beq _08001710
    b _0800172A
_080016D6:
    ldr r4, _080016F0 @ =0x00006AC0
    adds r0, r7, r4
    movs r1, #0xdc
    lsls r1, r1, #2
    bl func_0805E860
    adds r0, r7, #0
    adds r0, #0xc
    movs r1, #0xa9
    bl func_08008B6C
    movs r6, #2
    b _0800172A
    .align 2, 0
_080016F0: .4byte 0x00006AC0
_080016F4:
    ldr r1, _0800170C @ =0x00006AD4
    adds r0, r7, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge _0800172A
    adds r0, r7, #0
    adds r0, #0xc
    movs r1, #0xa9
    bl func_08008B88
    b _0800172A
    .align 2, 0
_0800170C: .4byte 0x00006AD4
_08001710:
    ldr r2, _08001738 @ =0x00006AD4
    adds r0, r7, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge _0800172A
    ldr r3, _0800173C @ =0x00006AC0
    adds r0, r7, r3
    movs r1, #0xce
    lsls r1, r1, #2
    bl func_0805E860
    movs r6, #0
_0800172A:
    mov r0, sl
    cmp r0, #1
    beq _08001740
    cmp r0, #2
    beq _08001760
    b _0800177A
    .align 2, 0
_08001738: .4byte 0x00006AD4
_0800173C: .4byte 0x00006AC0
_08001740:
    ldr r4, _08001758 @ =0x00006B18
    adds r2, r7, r4
    ldr r1, [r2]
    movs r0, #0xbc
    lsls r0, r0, #0x10
    cmp r1, r0
    ble _08001760
    ldr r3, _0800175C @ =0xFFFFA000
    adds r0, r1, r3
    str r0, [r2]
    b _0800177A
    .align 2, 0
_08001758: .4byte 0x00006B18
_0800175C: .4byte 0xFFFFA000
_08001760:
    movs r4, #0xd6
    lsls r4, r4, #7
    adds r0, r7, r4
    ldr r1, _08001788 @ =0x000002B6
    bl func_0805E860
    ldr r0, _0800178C @ =0x00006B18
    adds r1, r7, r0
    movs r0, #0xbc
    lsls r0, r0, #0x10
    str r0, [r1]
    movs r1, #0
    mov sl, r1
_0800177A:
    mov r0, r8
    cmp r0, #1
    beq _08001790
    cmp r0, #2
    beq _080017B0
    b _080017C8
    .align 2, 0
_08001788: .4byte 0x000002B6
_0800178C: .4byte 0x00006B18
_08001790:
    ldr r3, _080017A8 @ =0x00006B38
    adds r2, r7, r3
    ldr r1, [r2]
    ldr r0, _080017AC @ =0x003FFFFF
    cmp r1, r0
    bgt _080017B0
    movs r4, #0x80
    lsls r4, r4, #8
    adds r0, r1, r4
    str r0, [r2]
    b _080017C8
    .align 2, 0
_080017A8: .4byte 0x00006B38
_080017AC: .4byte 0x003FFFFF
_080017B0:
    ldr r1, _080017E4 @ =0x00006B20
    adds r0, r7, r1
    ldr r1, _080017E8 @ =0x00000928
    bl func_0805E860
    ldr r2, _080017EC @ =0x00006B38
    adds r1, r7, r2
    movs r0, #0x80
    lsls r0, r0, #0xf
    str r0, [r1]
    movs r3, #0
    mov r8, r3
_080017C8:
    ldr r4, _080017F0 @ =0x00006C6C
    adds r0, r7, r4
    ldrb r0, [r0]
    subs r0, #1
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #8
    bls _080017DA
    b _08001952
_080017DA:
    lsls r0, r0, #2
    ldr r1, _080017F4 @ =_080017F8
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_080017E4: .4byte 0x00006B20
_080017E8: .4byte 0x00000928
_080017EC: .4byte 0x00006B38
_080017F0: .4byte 0x00006C6C
_080017F4: .4byte _080017F8
_080017F8: @ jump table
    .4byte _0800181C @ case 0
    .4byte _08001874 @ case 1
    .4byte _080018AE @ case 2
    .4byte _08001922 @ case 3
    .4byte _08001952 @ case 4
    .4byte _08001952 @ case 5
    .4byte _08001952 @ case 6
    .4byte _08001952 @ case 7
    .4byte _080018AE @ case 8
_0800181C:
    ldr r0, _08001858 @ =0x00006B5C
    adds r2, r7, r0
    ldr r1, [r2]
    movs r3, #0x80
    lsls r3, r3, #9
    adds r1, r1, r3
    str r1, [r2]
    ldr r4, _0800185C @ =0x00006B7C
    adds r0, r7, r4
    str r1, [r0]
    ldr r0, _08001860 @ =0x00006B58
    adds r1, r7, r0
    ldr r0, [r1]
    ldr r4, _08001864 @ =0xFFFF0000
    adds r0, r0, r4
    str r0, [r1]
    ldr r0, _08001868 @ =0x00006B78
    adds r1, r7, r0
    ldr r0, [r1]
    adds r0, r0, r3
    str r0, [r1]
    ldr r1, [r2]
    ldr r0, _0800186C @ =0x005FFFFF
    cmp r1, r0
    bgt _08001850
    b _08001952
_08001850:
    ldr r2, _08001870 @ =0x00006C6C
    adds r1, r7, r2
    movs r0, #2
    b _08001950
    .align 2, 0
_08001858: .4byte 0x00006B5C
_0800185C: .4byte 0x00006B7C
_08001860: .4byte 0x00006B58
_08001864: .4byte 0xFFFF0000
_08001868: .4byte 0x00006B78
_0800186C: .4byte 0x005FFFFF
_08001870: .4byte 0x00006C6C
_08001874:
    ldr r4, _080018E4 @ =0x00006B5C
    adds r3, r7, r4
    ldr r1, [r3]
    movs r2, #0x80
    lsls r2, r2, #9
    adds r1, r1, r2
    str r1, [r3]
    adds r4, #0x20
    adds r0, r7, r4
    str r1, [r0]
    ldr r0, _080018E8 @ =0x00006B58
    adds r1, r7, r0
    ldr r0, [r1]
    adds r0, r0, r2
    str r0, [r1]
    ldr r2, _080018EC @ =0x00006B78
    adds r1, r7, r2
    ldr r0, [r1]
    ldr r4, _080018F0 @ =0xFFFF0000
    adds r0, r0, r4
    str r0, [r1]
    ldr r1, [r3]
    ldr r0, _080018F4 @ =0x0093FFFF
    cmp r1, r0
    ble _08001952
    ldr r0, _080018F8 @ =0x00006C6C
    adds r1, r7, r0
    movs r0, #3
    strb r0, [r1]
_080018AE:
    ldr r2, _080018E8 @ =0x00006B58
    adds r1, r7, r2
    movs r0, #0xe0
    lsls r0, r0, #0xd
    str r0, [r1]
    ldr r3, _080018EC @ =0x00006B78
    adds r1, r7, r3
    movs r0, #0xd4
    lsls r0, r0, #0x10
    str r0, [r1]
    ldr r4, _080018FC @ =0x00006B7C
    adds r2, r7, r4
    ldr r0, _080018E4 @ =0x00006B5C
    adds r1, r7, r0
    movs r0, #0x94
    lsls r0, r0, #0x10
    str r0, [r1]
    str r0, [r2]
    ldr r1, _080018F8 @ =0x00006C6C
    adds r0, r7, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #3
    bne _08001900
    movs r2, #0x1e
    b _08001918
    .align 2, 0
_080018E4: .4byte 0x00006B5C
_080018E8: .4byte 0x00006B58
_080018EC: .4byte 0x00006B78
_080018F0: .4byte 0xFFFF0000
_080018F4: .4byte 0x0093FFFF
_080018F8: .4byte 0x00006C6C
_080018FC: .4byte 0x00006B7C
_08001900:
    ldr r3, _080019C4 @ =0x00006B40
    adds r0, r7, r3
    ldr r4, _080019C8 @ =0x0000071C
    adds r1, r4, #0
    bl func_0805E860
    ldr r1, _080019CC @ =0x00006B60
    adds r0, r7, r1
    adds r1, r4, #0
    bl func_0805E860
    movs r2, #0
_08001918:
    mov sb, r2
    ldr r3, _080019D0 @ =0x00006C6C
    adds r1, r7, r3
    movs r0, #4
    strb r0, [r1]
_08001922:
    mov r4, sb
    lsls r0, r4, #0x18
    movs r1, #0xff
    lsls r1, r1, #0x18
    adds r0, r0, r1
    lsrs r2, r0, #0x18
    mov sb, r2
    cmp r0, #0
    bge _08001952
    ldr r3, _080019C4 @ =0x00006B40
    adds r0, r7, r3
    ldr r4, _080019C8 @ =0x0000071C
    adds r1, r4, #0
    bl func_0805E860
    ldr r1, _080019CC @ =0x00006B60
    adds r0, r7, r1
    adds r1, r4, #0
    bl func_0805E860
    ldr r2, _080019D0 @ =0x00006C6C
    adds r1, r7, r2
    movs r0, #5
_08001950:
    strb r0, [r1]
_08001952:
    adds r0, r7, #0
    bl func_08008918
    mov r2, sp
    ldr r3, _080019D4 @ =0x00006D30
    adds r4, r7, r3
    ldrh r1, [r4]
    strh r1, [r2]
    strh r1, [r0, #0x10]
    adds r0, r7, #0
    bl func_08008918
    mov r2, sp
    ldrh r1, [r4]
    strh r1, [r2]
    strh r1, [r0, #0x14]
    adds r0, r7, #0
    bl func_08008918
    mov r2, sp
    ldrh r1, [r4]
    strh r1, [r2]
    strh r1, [r0, #0x18]
    adds r0, r7, #0
    bl func_08008918
    mov r2, sp
    ldrh r1, [r4]
    strh r1, [r2]
    strh r1, [r0, #0x1c]
    adds r0, r7, #0
    bl func_080024E0
    ldr r4, [sp, #0x1c]
    cmp r4, #0
    bne _0800199E
    bl sub_080010BE
_0800199E:
    ldr r1, [sp, #4]
    cmp r1, #0
    beq _080019B0
    ldr r0, [r1, #8]
    ldr r2, [r0, #0xc]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_080019B0:
    ldr r0, [sp, #0x18]
    add sp, #0x20
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
_080019C4: .4byte 0x00006B40
_080019C8: .4byte 0x0000071C
_080019CC: .4byte 0x00006B60
_080019D0: .4byte 0x00006C6C
_080019D4: .4byte 0x00006D30

    thumb_func_start func_080019D8
func_080019D8: @ 0x080019D8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    ldr r4, _08001DAC @ =0xFFFFEFC8
    add sp, r4
    adds r7, r0, #0
    ldr r1, _08001DB0 @ =0x06007FE0
    movs r0, #0
    movs r2, #0x20
    bl func_08008EB8
    movs r4, #1
    rsbs r4, r4, #0
    ldr r1, _08001DB4 @ =0x0600C000
    movs r5, #0x80
    lsls r5, r5, #5
    adds r0, r4, #0
    adds r2, r5, #0
    bl func_08008EB8
    ldr r1, _08001DB8 @ =0x0600D000
    adds r0, r4, #0
    adds r2, r5, #0
    bl func_08008EB8
    ldr r1, _08001DBC @ =0x0600E000
    adds r0, r4, #0
    adds r2, r5, #0
    bl func_08008EB8
    ldr r1, _08001DC0 @ =0x0600F000
    adds r0, r4, #0
    adds r2, r5, #0
    bl func_08008EB8
    ldr r0, _08001DC4 @ =0x0874A9C0
    movs r1, #0xc0
    lsls r1, r1, #0x13
    bl func_080D102C
    ldr r0, _08001DC8 @ =0x0874E330
    movs r1, #0xa0
    lsls r1, r1, #0x13
    movs r2, #0x80
    lsls r2, r2, #2
    bl func_08008E64
    movs r4, #0
    add r0, sp, #8
    mov sb, r0
    add r1, sp, #0x10
    mov sl, r1
    mov r2, sp
    adds r2, #0x18
    ldr r3, _08001DCC @ =0x00001030
    add r3, sp
    str r2, [r3]
    mov r5, sp
    adds r5, #0x20
    ldr r0, _08001DD0 @ =0x00001034
    add r0, sp
    str r5, [r0]
    ldr r1, _08001DD4 @ =0x00006BA4
    adds r1, r7, r1
    ldr r2, _08001DD8 @ =0x0000101C
    add r2, sp
    str r1, [r2]
    ldr r3, _08001DDC @ =0x00006BC4
    adds r3, r7, r3
    movs r5, #0x81
    lsls r5, r5, #5
    add r5, sp
    str r3, [r5]
    ldr r0, _08001DE0 @ =0x00006AA4
    adds r0, r7, r0
    movs r1, #0x80
    lsls r1, r1, #5
    add r1, sp
    str r0, [r1]
    ldr r2, _08001DE4 @ =0x00006AC4
    adds r2, r7, r2
    ldr r3, _08001DE8 @ =0x00001004
    add r3, sp
    str r2, [r3]
    ldr r5, _08001DEC @ =0x00006AE4
    adds r5, r7, r5
    ldr r0, _08001DF0 @ =0x00001008
    add r0, sp
    str r5, [r0]
    ldr r1, _08001DF4 @ =0x00006B04
    adds r1, r7, r1
    ldr r2, _08001DF8 @ =0x0000100C
    add r2, sp
    str r1, [r2]
    ldr r3, _08001DFC @ =0x00006B24
    adds r3, r7, r3
    ldr r5, _08001E00 @ =0x00001010
    add r5, sp
    str r3, [r5]
    ldr r0, _08001E04 @ =0x00006B44
    adds r0, r7, r0
    ldr r1, _08001E08 @ =0x00001014
    add r1, sp
    str r0, [r1]
    ldr r2, _08001E0C @ =0x00006B84
    adds r2, r7, r2
    ldr r3, _08001E10 @ =0x00001018
    add r3, sp
    str r2, [r3]
    ldr r5, _08001E14 @ =0x00006BE4
    adds r5, r7, r5
    ldr r0, _08001E18 @ =0x00001024
    add r0, sp
    str r5, [r0]
_08001AC0:
    ldr r1, _08001E1C @ =0x080E8684
    lsls r0, r4, #2
    adds r0, r0, r1
    ldr r0, [r0]
    mov r1, sp
    bl func_080D102C
    lsls r0, r4, #0xc
    movs r3, #0
    adds r4, #1
    mov r8, r4
    ldr r1, _08001E20 @ =0x00006C04
    adds r1, r7, r1
    ldr r2, _08001E24 @ =0x00001028
    add r2, sp
    str r1, [r2]
    ldr r4, _08001E28 @ =0x00006C24
    adds r4, r7, r4
    ldr r5, _08001E2C @ =0x0000102C
    add r5, sp
    str r4, [r5]
    movs r1, #0xc0
    lsls r1, r1, #8
    adds r1, r1, r0
    mov ip, r1
_08001AF2:
    lsls r2, r3, #6
    lsls r1, r3, #7
    adds r6, r3, #1
    add r0, sp, #0x40
    adds r4, r1, r0
    mov r5, sp
    adds r3, r1, r5
    add r2, ip
    movs r5, #0x1f
_08001B04:
    movs r0, #0xc0
    lsls r0, r0, #0x13
    adds r1, r2, r0
    ldrh r0, [r3]
    strh r0, [r1]
    ldr r0, _08001E30 @ =0x06000800
    adds r1, r2, r0
    ldrh r0, [r4]
    strh r0, [r1]
    adds r4, #2
    adds r3, #2
    adds r2, #2
    subs r5, #1
    cmp r5, #0
    bge _08001B04
    adds r3, r6, #0
    cmp r3, #0x1f
    ble _08001AF2
    mov r4, r8
    cmp r4, #3
    ble _08001AC0
    adds r0, r7, #0
    bl func_08008918
    mov r1, sp
    movs r3, #0xfa
    lsls r3, r3, #5
    adds r2, r3, #0
    strh r2, [r1]
    movs r4, #0
    strh r2, [r0]
    adds r0, r7, #0
    bl func_08008918
    mov r2, sp
    ldr r5, _08001E34 @ =0x00005843
    adds r1, r5, #0
    strh r1, [r2]
    strh r1, [r0, #8]
    adds r0, r7, #0
    bl func_08008918
    mov r2, sp
    ldr r3, _08001E38 @ =0x00005A42
    adds r1, r3, #0
    strh r1, [r2]
    strh r1, [r0, #0xa]
    adds r0, r7, #0
    bl func_08008918
    mov r2, sp
    ldr r5, _08001E3C @ =0x00005C41
    adds r1, r5, #0
    strh r1, [r2]
    strh r1, [r0, #0xc]
    adds r0, r7, #0
    bl func_08008918
    mov r2, sp
    ldr r3, _08001E40 @ =0x00005E40
    adds r1, r3, #0
    strh r1, [r2]
    strh r1, [r0, #0xe]
    adds r0, r7, #0
    bl func_08008918
    mov r1, sp
    strh r4, [r1]
    strh r4, [r0, #0x10]
    adds r0, r7, #0
    bl func_08008918
    mov r1, sp
    strh r4, [r1]
    strh r4, [r0, #0x12]
    adds r0, r7, #0
    bl func_08008918
    mov r1, sp
    strh r4, [r1]
    strh r4, [r0, #0x14]
    adds r0, r7, #0
    bl func_08008918
    mov r1, sp
    strh r4, [r1]
    strh r4, [r0, #0x16]
    adds r0, r7, #0
    bl func_08008918
    mov r1, sp
    strh r4, [r1]
    strh r4, [r0, #0x18]
    adds r0, r7, #0
    bl func_08008918
    mov r1, sp
    strh r4, [r1]
    strh r4, [r0, #0x1a]
    adds r0, r7, #0
    bl func_08008918
    mov r1, sp
    strh r4, [r1]
    strh r4, [r0, #0x1c]
    adds r0, r7, #0
    bl func_08008918
    mov r1, sp
    strh r4, [r1]
    strh r4, [r0, #0x1e]
    mov r0, sp
    str r4, [sp]
    strh r4, [r0, #4]
    str r4, [sp, #8]
    mov r5, sb
    strh r4, [r5, #4]
    str r4, [sp, #0x10]
    mov r0, sl
    strh r4, [r0, #4]
    str r4, [sp, #0x18]
    ldr r1, _08001DCC @ =0x00001030
    add r1, sp
    ldr r1, [r1]
    strh r4, [r1, #4]
    ldr r2, _08001E44 @ =0x00006BA0
    adds r0, r7, r2
    ldr r1, [r0]
    ldr r3, [r1]
    ldrh r2, [r0, #0xc]
    lsls r2, r2, #2
    ldr r4, _08001DD8 @ =0x0000101C
    add r4, sp
    ldr r4, [r4]
    ldr r0, [r4]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x20
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    ldr r5, _08001DD0 @ =0x00001034
    add r5, sp
    ldr r6, [r5]
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r4, r5}
    stm r1!, {r4, r5}
    ldr r0, [sp, #0x10]
    movs r1, #0x90
    lsls r1, r1, #1
    adds r0, r0, r1
    ldr r1, _08001E48 @ =0x05000320
    movs r2, #0xe0
    bl func_08008E64
    ldr r0, [sp, #8]
    movs r2, #0
    cmp r0, #0
    beq _08001C5A
    mov r3, sb
    ldrh r2, [r3, #4]
_08001C5A:
    ldr r1, _08001E4C @ =0x06010000
    bl func_08008E64
    ldr r0, [sp, #8]
    movs r1, #0
    cmp r0, #0
    beq _08001C6C
    mov r4, sb
    ldrh r1, [r4, #4]
_08001C6C:
    lsrs r0, r1, #5
    ldr r5, _08001E50 @ =0x00006C60
    adds r4, r7, r5
    strh r0, [r4]
    ldr r1, _08001E54 @ =0x00006BB8
    adds r0, r7, r1
    movs r2, #0xf0
    lsls r2, r2, #0xf
    mov r8, r2
    str r2, [r0]
    ldr r3, _08001E58 @ =0x00006BBC
    adds r1, r7, r3
    ldr r0, _08001E5C @ =0xFFA00000
    str r0, [r1]
    subs r5, #0xa0
    adds r0, r7, r5
    ldr r1, [r0]
    ldr r2, [r1]
    mov ip, r2
    ldrh r2, [r0, #0xc]
    lsls r2, r2, #2
    movs r3, #0x81
    lsls r3, r3, #5
    add r3, sp
    ldr r3, [r3]
    ldr r0, [r3]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    mov r5, ip
    ldr r3, [r5, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    ldr r3, [sp, #8]
    movs r5, #0
    ldrsh r0, [r4, r5]
    lsls r0, r0, #5
    ldr r2, _08001E4C @ =0x06010000
    adds r1, r0, r2
    movs r2, #0
    cmp r3, #0
    beq _08001CDE
    mov r4, sb
    ldrh r2, [r4, #4]
_08001CDE:
    adds r0, r3, #0
    bl func_08008E64
    ldr r5, _08001E60 @ =0x00006BD8
    adds r0, r7, r5
    mov r1, r8
    str r1, [r0]
    ldr r2, _08001E64 @ =0x00006BDC
    adds r1, r7, r2
    movs r0, #0xb0
    lsls r0, r0, #0xf
    str r0, [r1]
    ldr r3, _08001E68 @ =0x00006AA0
    adds r4, r7, r3
    movs r1, #0xb0
    lsls r1, r1, #1
    adds r0, r4, #0
    bl func_0805E860
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    movs r4, #0x80
    lsls r4, r4, #5
    add r4, sp
    ldr r4, [r4]
    ldr r0, [r4]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r4, r5}
    stm r1!, {r2, r4, r5}
    ldm r0!, {r3, r4}
    stm r1!, {r3, r4}
    ldr r4, [sp, #0x10]
    movs r5, #0xd9
    lsls r5, r5, #7
    adds r0, r7, r5
    ldr r1, [r0, #4]
    bl func_080074C0
    lsls r0, r0, #5
    ldr r2, _08001E6C @ =0x05000200
    adds r1, r0, r2
    ldr r0, [sp, #0x10]
    movs r2, #0
    cmp r0, #0
    beq _08001D5C
    mov r3, sl
    ldrh r2, [r3, #4]
_08001D5C:
    adds r0, r4, #0
    bl func_08008E64
    ldr r4, _08001E70 @ =0x00006AB8
    adds r0, r7, r4
    movs r5, #0x84
    lsls r5, r5, #0x11
    str r5, [r0]
    ldr r1, _08001E74 @ =0x00006ABC
    adds r0, r7, r1
    movs r2, #0x94
    lsls r2, r2, #0x10
    mov r8, r2
    str r2, [r0]
    ldr r3, _08001E78 @ =0x00006AC0
    adds r4, r7, r3
    ldr r1, _08001E7C @ =0x00000342
    adds r0, r4, #0
    bl func_0805E860
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    ldr r4, _08001DE8 @ =0x00001004
    add r4, sp
    ldr r4, [r4]
    ldr r0, [r4]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    b _08001E80
    .align 2, 0
_08001DAC: .4byte 0xFFFFEFC8
_08001DB0: .4byte 0x06007FE0
_08001DB4: .4byte 0x0600C000
_08001DB8: .4byte 0x0600D000
_08001DBC: .4byte 0x0600E000
_08001DC0: .4byte 0x0600F000
_08001DC4: .4byte 0x0874A9C0
_08001DC8: .4byte 0x0874E330
_08001DCC: .4byte 0x00001030
_08001DD0: .4byte 0x00001034
_08001DD4: .4byte 0x00006BA4
_08001DD8: .4byte 0x0000101C
_08001DDC: .4byte 0x00006BC4
_08001DE0: .4byte 0x00006AA4
_08001DE4: .4byte 0x00006AC4
_08001DE8: .4byte 0x00001004
_08001DEC: .4byte 0x00006AE4
_08001DF0: .4byte 0x00001008
_08001DF4: .4byte 0x00006B04
_08001DF8: .4byte 0x0000100C
_08001DFC: .4byte 0x00006B24
_08001E00: .4byte 0x00001010
_08001E04: .4byte 0x00006B44
_08001E08: .4byte 0x00001014
_08001E0C: .4byte 0x00006B84
_08001E10: .4byte 0x00001018
_08001E14: .4byte 0x00006BE4
_08001E18: .4byte 0x00001024
_08001E1C: .4byte 0x080E8684
_08001E20: .4byte 0x00006C04
_08001E24: .4byte 0x00001028
_08001E28: .4byte 0x00006C24
_08001E2C: .4byte 0x0000102C
_08001E30: .4byte 0x06000800
_08001E34: .4byte 0x00005843
_08001E38: .4byte 0x00005A42
_08001E3C: .4byte 0x00005C41
_08001E40: .4byte 0x00005E40
_08001E44: .4byte 0x00006BA0
_08001E48: .4byte 0x05000320
_08001E4C: .4byte 0x06010000
_08001E50: .4byte 0x00006C60
_08001E54: .4byte 0x00006BB8
_08001E58: .4byte 0x00006BBC
_08001E5C: .4byte 0xFFA00000
_08001E60: .4byte 0x00006BD8
_08001E64: .4byte 0x00006BDC
_08001E68: .4byte 0x00006AA0
_08001E6C: .4byte 0x05000200
_08001E70: .4byte 0x00006AB8
_08001E74: .4byte 0x00006ABC
_08001E78: .4byte 0x00006AC0
_08001E7C: .4byte 0x00000342
_08001E80:
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    ldr r4, [sp, #0x10]
    ldr r1, _08002258 @ =0x00006CB8
    adds r0, r7, r1
    ldr r1, [r0, #4]
    bl func_080074C0
    lsls r0, r0, #5
    ldr r2, _0800225C @ =0x05000200
    adds r1, r0, r2
    ldr r0, [sp, #0x10]
    movs r2, #0
    cmp r0, #0
    beq _08001EAE
    mov r3, sl
    ldrh r2, [r3, #4]
_08001EAE:
    adds r0, r4, #0
    bl func_08008E64
    ldr r4, _08002260 @ =0x00006AD8
    adds r0, r7, r4
    str r5, [r0]
    ldr r5, _08002264 @ =0x00006ADC
    adds r0, r7, r5
    mov r1, r8
    str r1, [r0]
    ldr r2, _08002268 @ =0x00006AE0
    adds r0, r7, r2
    ldr r1, [r0]
    ldr r3, [r1]
    ldrh r2, [r0, #0xc]
    lsls r2, r2, #2
    ldr r4, _0800226C @ =0x00001008
    add r4, sp
    ldr r4, [r4]
    ldr r0, [r4]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r4, r5}
    stm r1!, {r2, r4, r5}
    ldm r0!, {r3, r4}
    stm r1!, {r3, r4}
    ldr r4, [sp, #0x10]
    ldr r5, _08002270 @ =0x00006C90
    adds r0, r7, r5
    ldr r1, [r0, #4]
    bl func_080074C0
    lsls r0, r0, #5
    ldr r2, _0800225C @ =0x05000200
    adds r1, r0, r2
    ldr r0, [sp, #0x10]
    movs r2, #0
    cmp r0, #0
    beq _08001F1A
    mov r3, sl
    ldrh r2, [r3, #4]
_08001F1A:
    adds r0, r4, #0
    bl func_08008E64
    ldr r4, _08002274 @ =0x00006AF8
    adds r0, r7, r4
    movs r5, #0xa0
    lsls r5, r5, #0xe
    str r5, [r0]
    ldr r0, _08002278 @ =0x00006AFC
    adds r1, r7, r0
    movs r0, #0xa8
    lsls r0, r0, #0xf
    str r0, [r1]
    movs r1, #0xd6
    lsls r1, r1, #7
    adds r4, r7, r1
    ldr r1, _0800227C @ =0x000002B2
    adds r0, r4, #0
    bl func_0805E860
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    ldr r4, _08002280 @ =0x0000100C
    add r4, sp
    ldr r4, [r4]
    ldr r0, [r4]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r4, r5}
    stm r1!, {r2, r4, r5}
    ldm r0!, {r3, r4}
    stm r1!, {r3, r4}
    ldr r4, [sp, #0x10]
    ldr r5, _08002284 @ =0x00006CA0
    adds r0, r7, r5
    ldr r1, [r0, #4]
    bl func_080074C0
    lsls r0, r0, #5
    ldr r2, _0800225C @ =0x05000200
    adds r1, r0, r2
    ldr r0, [sp, #0x10]
    movs r2, #0
    cmp r0, #0
    beq _08001F96
    mov r3, sl
    ldrh r2, [r3, #4]
_08001F96:
    adds r0, r4, #0
    bl func_08008E64
    ldr r4, _08002288 @ =0x00006B18
    adds r1, r7, r4
    movs r0, #0x88
    lsls r0, r0, #0x11
    str r0, [r1]
    ldr r5, _0800228C @ =0x00006B1C
    adds r0, r7, r5
    mov r1, r8
    str r1, [r0]
    ldr r2, _08002290 @ =0x00006B20
    adds r4, r7, r2
    ldr r1, _08002294 @ =0x00000924
    adds r0, r4, #0
    bl func_0805E860
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    ldr r4, _08002298 @ =0x00001010
    add r4, sp
    ldr r4, [r4]
    ldr r0, [r4]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r4, r5}
    stm r1!, {r2, r4, r5}
    ldm r0!, {r3, r4}
    stm r1!, {r3, r4}
    ldr r5, _0800229C @ =0x00006B38
    adds r1, r7, r5
    ldr r0, _080022A0 @ =0xFFF00000
    str r0, [r1]
    ldr r1, _080022A4 @ =0x00006B3C
    adds r0, r7, r1
    mov r2, r8
    str r2, [r0]
    ldr r3, _080022A8 @ =0x00006B40
    adds r4, r7, r3
    movs r5, #0xe6
    lsls r5, r5, #3
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0805E860
    ldr r1, _080022AC @ =0x00006B60
    adds r0, r7, r1
    adds r1, r5, #0
    bl func_0805E860
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    ldr r4, _080022B0 @ =0x00001014
    add r4, sp
    ldr r4, [r4]
    ldr r0, [r4]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r4, r5}
    stm r1!, {r2, r4, r5}
    ldm r0!, {r3, r4}
    stm r1!, {r3, r4}
    ldr r4, [sp, #0x10]
    ldr r5, _080022B4 @ =0x00006CC8
    adds r0, r7, r5
    ldr r1, [r0, #4]
    bl func_080074C0
    lsls r0, r0, #5
    ldr r2, _0800225C @ =0x05000200
    adds r1, r0, r2
    ldr r0, [sp, #0x10]
    movs r2, #0
    cmp r0, #0
    beq _0800206E
    mov r3, sl
    ldrh r2, [r3, #4]
_0800206E:
    adds r0, r4, #0
    bl func_08008E64
    ldr r4, _080022B8 @ =0x00006B58
    adds r0, r7, r4
    movs r5, #0xa0
    lsls r5, r5, #0xe
    str r5, [r0]
    ldr r1, _080022BC @ =0x00006B5C
    adds r0, r7, r1
    movs r2, #0x80
    lsls r2, r2, #0xe
    str r2, [r0]
    ldr r3, _080022C0 @ =0x00006B78
    adds r1, r7, r3
    movs r0, #0xc8
    lsls r0, r0, #0x10
    str r0, [r1]
    adds r4, #0x24
    adds r0, r7, r4
    str r2, [r0]
    movs r5, #0xd7
    lsls r5, r5, #7
    adds r4, r7, r5
    ldr r1, _080022C4 @ =0x0000091A
    adds r0, r4, #0
    bl func_0805E860
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    ldr r0, _080022C8 @ =0x00001018
    add r0, sp
    ldr r0, [r0]
    mov r8, r0
    lsls r2, r2, #2
    ldr r0, [r0]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    ldr r5, [sp, #0x10]
    ldr r1, _080022CC @ =0x00006CE8
    adds r0, r7, r1
    ldr r1, [r0, #4]
    bl func_080074C0
    lsls r0, r0, #5
    ldr r2, _0800225C @ =0x05000200
    adds r1, r0, r2
    ldr r0, [sp, #0x10]
    movs r2, #0
    cmp r0, #0
    beq _080020FC
    mov r3, sl
    ldrh r2, [r3, #4]
_080020FC:
    adds r0, r5, #0
    bl func_08008E64
    ldr r5, [sp, #8]
    ldr r1, _080022D0 @ =0x00006CD0
    adds r0, r7, r1
    ldr r1, [r0, #4]
    bl func_08007D4C
    lsls r0, r0, #5
    ldr r2, _080022D4 @ =0x06010000
    adds r1, r0, r2
    ldr r0, [sp, #8]
    movs r2, #0
    cmp r0, #0
    beq _08002120
    mov r3, sb
    ldrh r2, [r3, #4]
_08002120:
    adds r0, r5, #0
    bl func_08008E64
    ldr r1, _080022D8 @ =0x0000091B
    adds r0, r4, #0
    bl func_0805E860
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    mov r5, r8
    ldr r0, [r5]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    ldr r5, [sp, #8]
    ldr r1, _080022DC @ =0x00006CD8
    adds r0, r7, r1
    ldr r1, [r0, #4]
    bl func_08007D4C
    lsls r0, r0, #5
    ldr r2, _080022D4 @ =0x06010000
    adds r1, r0, r2
    ldr r0, [sp, #8]
    movs r2, #0
    cmp r0, #0
    beq _0800217E
    mov r3, sb
    ldrh r2, [r3, #4]
_0800217E:
    adds r0, r5, #0
    bl func_08008E64
    ldr r1, _080022E0 @ =0x0000091C
    adds r0, r4, #0
    bl func_0805E860
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    ldr r4, _080022C8 @ =0x00001018
    add r4, sp
    ldr r4, [r4]
    ldr r0, [r4]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r4, r5}
    stm r1!, {r2, r4, r5}
    ldm r0!, {r3, r4}
    stm r1!, {r3, r4}
    ldr r4, [sp, #8]
    ldr r5, _080022E4 @ =0x00006CE0
    adds r0, r7, r5
    ldr r1, [r0, #4]
    bl func_08007D4C
    lsls r0, r0, #5
    ldr r2, _080022D4 @ =0x06010000
    adds r1, r0, r2
    ldr r0, [sp, #8]
    movs r2, #0
    cmp r0, #0
    beq _080021E0
    mov r3, sb
    ldrh r2, [r3, #4]
_080021E0:
    adds r0, r4, #0
    bl func_08008E64
    ldr r5, _080022E8 @ =0x00006BE0
    adds r4, r7, r5
    adds r0, r4, #0
    movs r1, #1
    bl func_0805E860
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    ldr r4, _080022EC @ =0x00001024
    add r4, sp
    ldr r4, [r4]
    ldr r0, [r4]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r4, r5}
    stm r1!, {r2, r4, r5}
    ldm r0!, {r3, r4}
    stm r1!, {r3, r4}
    ldr r4, [sp, #0x10]
    movs r5, #0xda
    lsls r5, r5, #7
    adds r0, r7, r5
    ldr r1, [r0, #4]
    bl func_080074C0
    lsls r0, r0, #5
    ldr r2, _0800225C @ =0x05000200
    adds r1, r0, r2
    ldr r0, [sp, #0x10]
    movs r2, #0
    cmp r0, #0
    beq _08002248
    mov r3, sl
    ldrh r2, [r3, #4]
_08002248:
    adds r0, r4, #0
    bl func_08008E64
    ldr r4, [sp, #8]
    ldr r5, _080022F0 @ =0x00006CF0
    adds r0, r7, r5
    ldr r1, [r0, #4]
    b _080022F4
    .align 2, 0
_08002258: .4byte 0x00006CB8
_0800225C: .4byte 0x05000200
_08002260: .4byte 0x00006AD8
_08002264: .4byte 0x00006ADC
_08002268: .4byte 0x00006AE0
_0800226C: .4byte 0x00001008
_08002270: .4byte 0x00006C90
_08002274: .4byte 0x00006AF8
_08002278: .4byte 0x00006AFC
_0800227C: .4byte 0x000002B2
_08002280: .4byte 0x0000100C
_08002284: .4byte 0x00006CA0
_08002288: .4byte 0x00006B18
_0800228C: .4byte 0x00006B1C
_08002290: .4byte 0x00006B20
_08002294: .4byte 0x00000924
_08002298: .4byte 0x00001010
_0800229C: .4byte 0x00006B38
_080022A0: .4byte 0xFFF00000
_080022A4: .4byte 0x00006B3C
_080022A8: .4byte 0x00006B40
_080022AC: .4byte 0x00006B60
_080022B0: .4byte 0x00001014
_080022B4: .4byte 0x00006CC8
_080022B8: .4byte 0x00006B58
_080022BC: .4byte 0x00006B5C
_080022C0: .4byte 0x00006B78
_080022C4: .4byte 0x0000091A
_080022C8: .4byte 0x00001018
_080022CC: .4byte 0x00006CE8
_080022D0: .4byte 0x00006CD0
_080022D4: .4byte 0x06010000
_080022D8: .4byte 0x0000091B
_080022DC: .4byte 0x00006CD8
_080022E0: .4byte 0x0000091C
_080022E4: .4byte 0x00006CE0
_080022E8: .4byte 0x00006BE0
_080022EC: .4byte 0x00001024
_080022F0: .4byte 0x00006CF0
_080022F4:
    bl func_08007D4C
    lsls r0, r0, #5
    ldr r2, _0800249C @ =0x06010000
    adds r1, r0, r2
    ldr r0, [sp, #8]
    movs r2, #0
    cmp r0, #0
    beq _0800230A
    mov r3, sb
    ldrh r2, [r3, #4]
_0800230A:
    adds r0, r4, #0
    bl func_08008E64
    ldr r4, _080024A0 @ =0x00006BFC
    adds r0, r7, r4
    movs r5, #0xe0
    lsls r5, r5, #0xf
    str r5, [r0]
    movs r0, #0xd8
    lsls r0, r0, #7
    adds r4, r7, r0
    adds r0, r4, #0
    movs r1, #4
    bl func_0805E860
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    ldr r4, _080024A4 @ =0x00001028
    add r4, sp
    ldr r4, [r4]
    ldr r0, [r4]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    ldr r4, [sp, #8]
    ldr r1, _080024A8 @ =0x00006CF8
    adds r0, r7, r1
    ldr r1, [r0, #4]
    bl func_08007D4C
    lsls r0, r0, #5
    ldr r2, _0800249C @ =0x06010000
    adds r1, r0, r2
    ldr r0, [sp, #8]
    movs r2, #0
    cmp r0, #0
    beq _0800237C
    mov r3, sb
    ldrh r2, [r3, #4]
_0800237C:
    adds r0, r4, #0
    bl func_08008E64
    ldr r4, _080024AC @ =0x00006C1C
    adds r0, r7, r4
    str r5, [r0]
    ldr r5, _080024B0 @ =0x00006C20
    adds r0, r7, r5
    ldr r1, [r0]
    ldr r3, [r1]
    ldrh r2, [r0, #0xc]
    lsls r2, r2, #2
    ldr r4, _080024B4 @ =0x0000102C
    add r4, sp
    ldr r4, [r4]
    ldr r0, [r4]
    adds r0, r0, r2
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    adds r0, r6, #0
    adds r1, r6, #0
    movs r2, #0x20
    bl memcpy
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r4, r5}
    stm r1!, {r2, r4, r5}
    ldm r0!, {r3, r4}
    stm r1!, {r3, r4}
    ldr r4, [sp, #0x10]
    ldr r5, _080024B8 @ =0x00006D10
    adds r0, r7, r5
    ldr r1, [r0, #4]
    bl func_080074C0
    lsls r0, r0, #5
    ldr r2, _080024BC @ =0x05000200
    adds r1, r0, r2
    ldr r0, [sp, #0x10]
    movs r2, #0
    cmp r0, #0
    beq _080023E0
    mov r3, sl
    ldrh r2, [r3, #4]
_080023E0:
    adds r0, r4, #0
    bl func_08008E64
    ldr r4, [sp, #8]
    ldr r5, _080024C0 @ =0x00006D08
    adds r0, r7, r5
    ldr r1, [r0, #4]
    bl func_08007D4C
    lsls r0, r0, #5
    ldr r2, _0800249C @ =0x06010000
    adds r1, r0, r2
    ldr r0, [sp, #8]
    movs r2, #0
    cmp r0, #0
    beq _08002404
    mov r3, sb
    ldrh r2, [r3, #4]
_08002404:
    adds r0, r4, #0
    bl func_08008E64
    ldr r4, _080024C4 @ =0x00006C38
    adds r0, r7, r4
    movs r5, #0xf0
    lsls r5, r5, #0xf
    str r5, [r0]
    ldr r0, _080024C8 @ =0x00006C3C
    adds r1, r7, r0
    movs r0, #0x90
    lsls r0, r0, #0x10
    str r0, [r1]
    ldr r2, _080024CC @ =0x00006A40
    adds r1, r7, r2
    adds r0, r6, #0
    movs r2, #0
    bl func_0805E790
    mov r1, sp
    adds r0, r6, #0
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r3, r4}
    stm r1!, {r3, r4}
    ldr r4, [sp, #0x10]
    ldr r1, _080024D0 @ =0x00006D20
    adds r0, r7, r1
    ldr r1, [r0, #4]
    bl func_080074C0
    lsls r0, r0, #5
    ldr r2, _080024BC @ =0x05000200
    adds r1, r0, r2
    ldr r0, [sp, #0x10]
    movs r2, #0
    cmp r0, #0
    beq _08002458
    mov r3, sl
    ldrh r2, [r3, #4]
_08002458:
    adds r0, r4, #0
    bl func_08008E64
    ldr r4, [sp, #8]
    ldr r1, _080024D4 @ =0x00006D18
    adds r0, r7, r1
    ldr r1, [r0, #4]
    bl func_08007D4C
    lsls r0, r0, #5
    ldr r2, _0800249C @ =0x06010000
    adds r1, r0, r2
    ldr r0, [sp, #8]
    movs r2, #0
    cmp r0, #0
    beq _0800247C
    mov r3, sb
    ldrh r2, [r3, #4]
_0800247C:
    adds r0, r4, #0
    bl func_08008E64
    ldr r4, _080024D8 @ =0x00006C5C
    adds r0, r7, r4
    str r5, [r0]
    ldr r3, _080024DC @ =0x00001038
    add sp, r3
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_0800249C: .4byte 0x06010000
_080024A0: .4byte 0x00006BFC
_080024A4: .4byte 0x00001028
_080024A8: .4byte 0x00006CF8
_080024AC: .4byte 0x00006C1C
_080024B0: .4byte 0x00006C20
_080024B4: .4byte 0x0000102C
_080024B8: .4byte 0x00006D10
_080024BC: .4byte 0x05000200
_080024C0: .4byte 0x00006D08
_080024C4: .4byte 0x00006C38
_080024C8: .4byte 0x00006C3C
_080024CC: .4byte 0x00006A40
_080024D0: .4byte 0x00006D20
_080024D4: .4byte 0x00006D18
_080024D8: .4byte 0x00006C5C
_080024DC: .4byte 0x00001038

    thumb_func_start func_080024E0
func_080024E0: @ 0x080024E0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xa4
    adds r7, r0, #0
    mov r0, sp
    movs r1, #0
    movs r2, #0
    mov r8, r2
    mov r3, r8
    strh r3, [r0]
    strh r3, [r0, #2]
    strh r3, [r0, #4]
    strh r3, [r0, #6]
    strh r3, [r0, #8]
    mov r4, r8
    str r4, [sp, #0xc]
    strb r1, [r0, #0x10]
    strb r1, [r0, #0x11]
    str r4, [sp, #0x14]
    strb r1, [r0, #0x18]
    add r6, sp, #0x1c
    str r4, [sp, #0x1c]
    strh r4, [r6, #4]
    add r5, sp, #0x24
    str r4, [sp, #0x24]
    mov r0, r8
    strh r0, [r5, #4]
    add r0, sp, #0x2c
    mov r1, r8
    str r1, [sp, #0x2c]
    strh r1, [r0, #4]
    add r0, sp, #0x34
    str r1, [sp, #0x34]
    mov r2, r8
    strh r2, [r0, #4]
    ldr r3, _080028E0 @ =0x00006AB4
    adds r4, r7, r3
    ldr r1, _080028E4 @ =0x00006AA0
    adds r0, r7, r1
    bl func_0805E8F0
    str r0, [r4]
    ldr r2, _080028E8 @ =0x00006AD4
    adds r4, r7, r2
    ldr r3, _080028EC @ =0x00006AC0
    adds r0, r7, r3
    bl func_0805E8F0
    str r0, [r4]
    ldr r0, _080028F0 @ =0x00006AF4
    adds r4, r7, r0
    ldr r1, _080028F4 @ =0x00006AE0
    adds r0, r7, r1
    bl func_0805E8F0
    str r0, [r4]
    ldr r2, _080028F8 @ =0x00006B14
    adds r4, r7, r2
    movs r3, #0xd6
    lsls r3, r3, #7
    adds r0, r7, r3
    bl func_0805E8F0
    str r0, [r4]
    ldr r0, _080028FC @ =0x00006B34
    adds r4, r7, r0
    ldr r1, _08002900 @ =0x00006B20
    adds r0, r7, r1
    bl func_0805E8F0
    str r0, [r4]
    ldr r2, _08002904 @ =0x00006B54
    adds r4, r7, r2
    ldr r3, _08002908 @ =0x00006B40
    adds r0, r7, r3
    bl func_0805E8F0
    str r0, [r4]
    ldr r4, _0800290C @ =0x00006C6D
    adds r4, r4, r7
    mov sl, r4
    movs r0, #0
    ldrsb r0, [r4, r0]
    add r5, sp, #0x3c
    mov sb, r5
    cmp r0, #0
    bne _08002596
    b _080027C4
_08002596:
    ldr r6, _08002910 @ =0x00006C20
    adds r4, r7, r6
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    ldr r5, _08002914 @ =0x00006C24
    adds r0, r7, r5
    lsls r2, r2, #2
    ldr r0, [r0]
    adds r0, r0, r2
    ldrh r2, [r0]
    mov r0, sb
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r0, sb
    mov r1, sb
    movs r2, #0x20
    bl memcpy
    add r1, sp, #0x1c
    mov r0, sb
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldm r0!, {r2, r5, r6}
    stm r1!, {r2, r5, r6}
    ldm r0!, {r3, r5}
    stm r1!, {r3, r5}
    movs r6, #0x1a
    ldrsh r1, [r4, r6]
    mov r0, sp
    strh r1, [r0]
    movs r0, #0x1e
    ldrsh r1, [r4, r0]
    mov r0, sp
    strh r1, [r0, #2]
    mov r1, r8
    strh r1, [r0, #8]
    ldr r2, _08002918 @ =0x00006D08
    adds r0, r7, r2
    ldr r1, [r0, #4]
    bl func_08007D4C
    mov r1, sp
    strh r0, [r1, #6]
    ldr r3, _0800291C @ =0x00006D10
    adds r0, r7, r3
    ldr r1, [r0, #4]
    bl func_080074C0
    mov r1, sp
    strh r0, [r1, #4]
    movs r0, #1
    strb r0, [r1, #0x18]
    adds r0, r7, #0
    bl func_08008920
    adds r3, r0, #0
    ldr r0, [sp, #0x1c]
    adds r1, r0, #0
    movs r2, #0
    cmp r1, #0
    beq _08002618
    mov r4, sp
    ldrh r2, [r4, #0x20]
_08002618:
    adds r0, r3, #0
    mov r3, sp
    bl func_0805E99C
    ldr r5, _08002920 @ =0x00006BF4
    adds r4, r7, r5
    ldr r6, _08002924 @ =0x00006BE0
    adds r5, r7, r6
    adds r0, r5, #0
    bl func_0805E8F0
    str r0, [r4]
    ldr r1, [r5]
    ldr r3, [r1]
    ldrh r2, [r5, #0xc]
    ldr r4, _08002928 @ =0x00006BE4
    adds r0, r7, r4
    lsls r2, r2, #2
    ldr r0, [r0]
    adds r0, r0, r2
    ldrh r2, [r0]
    mov r0, sb
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r0, sb
    mov r1, sb
    movs r2, #0x20
    bl memcpy
    add r1, sp, #0x1c
    mov r0, sb
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldm r0!, {r2, r4, r6}
    stm r1!, {r2, r4, r6}
    ldm r0!, {r3, r4}
    stm r1!, {r3, r4}
    movs r6, #0x1a
    ldrsh r1, [r5, r6]
    mov r0, sp
    strh r1, [r0]
    movs r0, #0x1e
    ldrsh r1, [r5, r0]
    mov r0, sp
    strh r1, [r0, #2]
    ldr r1, _0800292C @ =0x00006CF0
    adds r0, r7, r1
    ldr r1, [r0, #4]
    bl func_08007D4C
    mov r1, sp
    strh r0, [r1, #6]
    movs r2, #0xda
    lsls r2, r2, #7
    adds r6, r7, r2
    ldr r1, [r6, #4]
    adds r0, r6, #0
    bl func_080074C0
    mov r1, sp
    strh r0, [r1, #4]
    adds r0, r7, #0
    bl func_08008920
    ldr r1, [sp, #0x1c]
    movs r2, #0
    cmp r1, #0
    beq _080026A6
    mov r3, sp
    ldrh r2, [r3, #0x20]
_080026A6:
    mov r3, sp
    bl func_0805E99C
    mov r4, sl
    movs r0, #0
    ldrsb r0, [r4, r0]
    cmp r0, #2
    bne _0800273E
    ldr r5, _08002930 @ =0x00006C14
    adds r4, r7, r5
    movs r0, #0xd8
    lsls r0, r0, #7
    adds r5, r7, r0
    adds r0, r5, #0
    bl func_0805E8F0
    str r0, [r4]
    ldr r1, [r5]
    ldr r3, [r1]
    ldrh r2, [r5, #0xc]
    ldr r4, _08002934 @ =0x00006C04
    adds r0, r7, r4
    lsls r2, r2, #2
    ldr r0, [r0]
    adds r0, r0, r2
    ldrh r2, [r0]
    mov r0, sb
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r0, sb
    mov r1, sb
    movs r2, #0x20
    bl memcpy
    add r1, sp, #0x1c
    mov r0, sb
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3}
    stm r1!, {r2, r3}
    movs r4, #0x1a
    ldrsh r1, [r5, r4]
    mov r0, sp
    strh r1, [r0]
    movs r0, #0x1e
    ldrsh r1, [r5, r0]
    mov r0, sp
    strh r1, [r0, #2]
    ldr r1, _08002938 @ =0x00006CF8
    adds r0, r7, r1
    ldr r1, [r0, #4]
    bl func_08007D4C
    mov r1, sp
    strh r0, [r1, #6]
    ldr r1, [r6, #4]
    adds r0, r6, #0
    bl func_080074C0
    mov r1, sp
    strh r0, [r1, #4]
    adds r0, r7, #0
    bl func_08008920
    ldr r1, [sp, #0x1c]
    movs r2, #0
    cmp r1, #0
    beq _08002738
    mov r3, sp
    ldrh r2, [r3, #0x20]
_08002738:
    mov r3, sp
    bl func_0805E99C
_0800273E:
    ldr r5, _0800293C @ =0x00006C40
    adds r4, r7, r5
    adds r0, r4, #0
    bl func_0805E8F0
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    ldr r6, _08002940 @ =0x00006C44
    adds r0, r7, r6
    lsls r2, r2, #2
    ldr r0, [r0]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x3c
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r0, sb
    mov r1, sb
    movs r2, #0x20
    bl memcpy
    add r1, sp, #0x1c
    mov r0, sb
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldm r0!, {r5, r6}
    stm r1!, {r5, r6}
    movs r0, #0x1a
    ldrsh r1, [r4, r0]
    mov r0, sp
    strh r1, [r0]
    movs r2, #0x1e
    ldrsh r1, [r4, r2]
    strh r1, [r0, #2]
    ldr r3, _08002944 @ =0x00006D18
    adds r0, r7, r3
    ldr r1, [r0, #4]
    bl func_08007D4C
    mov r1, sp
    strh r0, [r1, #6]
    ldr r4, _08002948 @ =0x00006D20
    adds r0, r7, r4
    ldr r1, [r0, #4]
    bl func_080074C0
    mov r1, sp
    strh r0, [r1, #4]
    adds r0, r7, #0
    bl func_08008920
    adds r3, r0, #0
    ldr r0, [sp, #0x1c]
    adds r1, r0, #0
    movs r2, #0
    cmp r1, #0
    beq _080027BC
    mov r5, sp
    ldrh r2, [r5, #0x20]
_080027BC:
    adds r0, r3, #0
    mov r3, sp
    bl func_0805E99C
_080027C4:
    ldr r6, _0800294C @ =0x00006BA0
    adds r4, r7, r6
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    ldr r5, _08002950 @ =0x00006BA4
    adds r0, r7, r5
    lsls r2, r2, #2
    ldr r0, [r0]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x3c
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r0, sb
    mov r1, sb
    movs r2, #0x20
    bl memcpy
    add r1, sp, #0x1c
    mov r0, sb
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldm r0!, {r2, r5, r6}
    stm r1!, {r2, r5, r6}
    ldm r0!, {r3, r5}
    stm r1!, {r3, r5}
    movs r6, #0x1a
    ldrsh r1, [r4, r6]
    mov r0, sp
    movs r6, #0
    strh r1, [r0]
    movs r0, #0x1e
    ldrsh r1, [r4, r0]
    mov r0, sp
    strh r1, [r0, #2]
    strh r6, [r0, #8]
    strh r6, [r0, #6]
    strh r6, [r0, #4]
    mov r1, sp
    movs r0, #1
    strb r0, [r1, #0x18]
    adds r0, r7, #0
    bl func_08008920
    adds r3, r0, #0
    ldr r0, [sp, #0x1c]
    adds r1, r0, #0
    movs r2, #0
    cmp r1, #0
    beq _08002830
    mov r4, sp
    ldrh r2, [r4, #0x20]
_08002830:
    adds r0, r3, #0
    mov r3, sp
    bl func_0805E99C
    ldr r5, _08002954 @ =0x00006D32
    adds r0, r7, r5
    movs r1, #0
    ldrsh r0, [r0, r1]
    cmp r0, #9
    bgt _08002846
    b _08002976
_08002846:
    adds r0, r7, #0
    bl func_08008920
    ldr r2, _08002958 @ =0x00006C64
    adds r5, r7, r2
    adds r0, #4
    ldrh r1, [r5]
    strh r1, [r0, #6]
    ldrh r1, [r5, #2]
    strh r1, [r0, #0xe]
    ldrh r1, [r5, #4]
    strh r1, [r0, #0x16]
    ldrh r1, [r5, #6]
    strh r1, [r0, #0x1e]
    ldr r3, _0800295C @ =0x00006BC0
    adds r3, r3, r7
    mov r8, r3
    ldr r1, [r3]
    ldr r4, [r1]
    ldrh r2, [r3, #0xc]
    ldr r3, _08002960 @ =0x00006BC4
    adds r0, r7, r3
    lsls r2, r2, #2
    ldr r0, [r0]
    adds r0, r0, r2
    ldrh r2, [r0]
    mov r0, sb
    ldr r3, [r4, #0x10]
    bl _call_via_r3
    mov r0, sb
    mov r1, sb
    movs r2, #0x20
    bl memcpy
    add r1, sp, #0x1c
    mov r0, sb
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldm r0!, {r2, r4}
    stm r1!, {r2, r4}
    mov r3, r8
    movs r4, #0x1a
    ldrsh r1, [r3, r4]
    mov r0, sp
    strh r1, [r0]
    movs r0, #0x1e
    ldrsh r1, [r3, r0]
    mov r0, sp
    strh r1, [r0, #2]
    strh r6, [r0, #8]
    mov r1, sp
    ldr r2, _08002964 @ =0x00006C60
    adds r0, r7, r2
    ldrh r0, [r0]
    strh r0, [r1, #6]
    mov r0, sp
    strh r6, [r0, #4]
    movs r0, #0
    strb r0, [r1, #0x11]
    movs r3, #0
    ldrsh r1, [r5, r3]
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r1, r0
    bne _0800296C
    ldr r4, _08002968 @ =0x00006C6A
    adds r0, r7, r4
    movs r5, #0
    ldrsh r0, [r0, r5]
    cmp r0, r1
    bne _0800296C
    str r6, [sp, #0x14]
    b _08002970
    .align 2, 0
_080028E0: .4byte 0x00006AB4
_080028E4: .4byte 0x00006AA0
_080028E8: .4byte 0x00006AD4
_080028EC: .4byte 0x00006AC0
_080028F0: .4byte 0x00006AF4
_080028F4: .4byte 0x00006AE0
_080028F8: .4byte 0x00006B14
_080028FC: .4byte 0x00006B34
_08002900: .4byte 0x00006B20
_08002904: .4byte 0x00006B54
_08002908: .4byte 0x00006B40
_0800290C: .4byte 0x00006C6D
_08002910: .4byte 0x00006C20
_08002914: .4byte 0x00006C24
_08002918: .4byte 0x00006D08
_0800291C: .4byte 0x00006D10
_08002920: .4byte 0x00006BF4
_08002924: .4byte 0x00006BE0
_08002928: .4byte 0x00006BE4
_0800292C: .4byte 0x00006CF0
_08002930: .4byte 0x00006C14
_08002934: .4byte 0x00006C04
_08002938: .4byte 0x00006CF8
_0800293C: .4byte 0x00006C40
_08002940: .4byte 0x00006C44
_08002944: .4byte 0x00006D18
_08002948: .4byte 0x00006D20
_0800294C: .4byte 0x00006BA0
_08002950: .4byte 0x00006BA4
_08002954: .4byte 0x00006D32
_08002958: .4byte 0x00006C64
_0800295C: .4byte 0x00006BC0
_08002960: .4byte 0x00006BC4
_08002964: .4byte 0x00006C60
_08002968: .4byte 0x00006C6A
_0800296C:
    movs r0, #1
    str r0, [sp, #0x14]
_08002970:
    mov r1, sp
    movs r0, #1
    strb r0, [r1, #0x18]
_08002976:
    ldr r6, _08002A68 @ =0x00006AA0
    adds r4, r7, r6
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    ldr r5, _08002A6C @ =0x00006AA4
    adds r0, r7, r5
    lsls r2, r2, #2
    ldr r0, [r0]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x3c
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r0, sb
    mov r1, sb
    movs r2, #0x20
    bl memcpy
    add r1, sp, #0x1c
    mov r0, sb
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldm r0!, {r2, r5, r6}
    stm r1!, {r2, r5, r6}
    ldm r0!, {r3, r5}
    stm r1!, {r3, r5}
    movs r6, #0x1a
    ldrsh r1, [r4, r6]
    mov r0, sp
    movs r5, #0
    strh r1, [r0]
    movs r0, #0x1e
    ldrsh r1, [r4, r0]
    mov r0, sp
    strh r1, [r0, #2]
    strh r5, [r0, #8]
    ldr r1, _08002A70 @ =0x00006C78
    adds r4, r7, r1
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007D4C
    mov r1, sp
    strh r0, [r1, #6]
    movs r2, #0xd9
    lsls r2, r2, #7
    adds r0, r7, r2
    ldr r1, [r0, #4]
    bl func_080074C0
    mov r1, sp
    strh r0, [r1, #4]
    str r5, [sp, #0x14]
    mov r0, sp
    movs r3, #1
    mov sl, r3
    mov r5, sl
    strb r5, [r0, #0x18]
    ldr r6, _08002A74 @ =0x00006AB4
    adds r0, r7, r6
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    ldr r1, _08002A78 @ =0x00006AC4
    adds r1, r7, r1
    str r1, [sp, #0x8c]
    ldr r2, _08002A7C @ =0x00006AE4
    adds r2, r7, r2
    str r2, [sp, #0x90]
    ldr r3, _08002A80 @ =0x00006B04
    adds r3, r7, r3
    str r3, [sp, #0x94]
    ldr r5, _08002A84 @ =0x00006B24
    adds r5, r7, r5
    str r5, [sp, #0x98]
    cmp r0, #0
    blt _08002A14
    b _08002B84
_08002A14:
    adds r0, r7, #0
    bl func_08008910
    adds r5, r0, #0
    ldr r6, [sp, #0x24]
    mov r8, r6
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007D4C
    adds r2, r0, #0
    ldr r0, [sp, #0x24]
    movs r3, #0
    cmp r0, #0
    beq _08002A36
    mov r0, sp
    ldrh r3, [r0, #0x28]
_08002A36:
    str r5, [sp, #0x9c]
    lsls r2, r2, #5
    ldr r1, _08002A88 @ =0x06010000
    adds r2, r2, r1
    mov r0, sb
    mov r1, r8
    bl func_08008F0C
    ldr r1, [r5, #4]
    ldr r0, [r5, #0xc]
    cmp r1, r0
    beq _08002A8C
    cmp r1, #0
    beq _08002A5E
    adds r0, r1, #0
    mov r1, sb
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
_08002A5E:
    ldr r5, [sp, #0x9c]
    ldr r0, [r5, #4]
    adds r0, #0x10
    str r0, [r5, #4]
    b _08002B84
    .align 2, 0
_08002A68: .4byte 0x00006AA0
_08002A6C: .4byte 0x00006AA4
_08002A70: .4byte 0x00006C78
_08002A74: .4byte 0x00006AB4
_08002A78: .4byte 0x00006AC4
_08002A7C: .4byte 0x00006AE4
_08002A80: .4byte 0x00006B04
_08002A84: .4byte 0x00006B24
_08002A88: .4byte 0x06010000
_08002A8C:
    mov r8, r1
    mov r6, sl
    str r6, [sp, #0x60]
    ldr r1, [sp, #0x9c]
    ldr r0, [r1]
    mov r2, r8
    subs r0, r2, r0
    asrs r4, r0, #4
    str r4, [sp, #0x5c]
    add r1, sp, #0x60
    add r0, sp, #0x5c
    cmp r4, #1
    bhs _08002AA8
    adds r0, r1, #0
_08002AA8:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq _08002AC6
    lsls r4, r0, #4
    adds r0, r4, #0
    bl func_080D01F8
    mov sl, r4
    cmp r0, #0
    bne _08002ACA
    mov r0, sl
    bl func_080D3BC0
    b _08002ACA
_08002AC6:
    movs r0, #0
    mov sl, r0
_08002ACA:
    adds r5, r0, #0
    str r5, [sp, #0xa0]
    ldr r3, [sp, #0x9c]
    ldr r2, [r3]
    adds r3, r5, #0
    ldr r4, _08002B24 @ =0x00006AC4
    adds r4, r7, r4
    str r4, [sp, #0x8c]
    ldr r5, _08002B28 @ =0x00006AE4
    adds r5, r7, r5
    str r5, [sp, #0x90]
    ldr r6, _08002B2C @ =0x00006B04
    adds r6, r7, r6
    str r6, [sp, #0x94]
    ldr r0, _08002B30 @ =0x00006B24
    adds r0, r7, r0
    str r0, [sp, #0x98]
    cmp r2, r8
    beq _08002B08
_08002AF0:
    cmp r3, #0
    beq _08002B00
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r5, r6}
    stm r0!, {r4, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08002B00:
    adds r2, #0x10
    adds r3, #0x10
    cmp r2, r8
    bne _08002AF0
_08002B08:
    adds r5, r3, #0
    ldr r0, [sp, #0x60]
    cmp r0, #1
    bne _08002B34
    cmp r5, #0
    beq _08002B20
    adds r0, r5, #0
    add r1, sp, #0x3c
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
_08002B20:
    adds r5, #0x10
    b _08002B5C
    .align 2, 0
_08002B24: .4byte 0x00006AC4
_08002B28: .4byte 0x00006AE4
_08002B2C: .4byte 0x00006B04
_08002B30: .4byte 0x00006B24
_08002B34:
    mov r8, r0
    adds r2, r5, #0
    cmp r0, #0
    beq _08002B5A
_08002B3C:
    cmp r2, #0
    beq _08002B4C
    adds r0, r2, #0
    add r1, sp, #0x3c
    ldm r1!, {r3, r5, r6}
    stm r0!, {r3, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08002B4C:
    movs r4, #1
    rsbs r4, r4, #0
    add r8, r4
    adds r2, #0x10
    mov r5, r8
    cmp r5, #0
    bne _08002B3C
_08002B5A:
    adds r5, r2, #0
_08002B5C:
    ldr r6, [sp, #0x9c]
    ldr r2, [r6, #4]
    ldr r0, [r6]
    adds r1, r0, #0
    cmp r0, r2
    beq _08002B6E
_08002B68:
    adds r1, #0x10
    cmp r1, r2
    bne _08002B68
_08002B6E:
    cmp r0, #0
    beq _08002B76
    bl func_080D0260
_08002B76:
    ldr r0, [sp, #0xa0]
    add r0, sl
    ldr r1, [sp, #0xa0]
    ldr r2, [sp, #0x9c]
    str r1, [r2]
    str r5, [r2, #4]
    str r0, [r2, #0xc]
_08002B84:
    adds r0, r7, #0
    bl func_08008920
    adds r3, r0, #0
    ldr r0, [sp, #0x1c]
    adds r1, r0, #0
    movs r2, #0
    cmp r1, #0
    beq _08002B9A
    mov r4, sp
    ldrh r2, [r4, #0x20]
_08002B9A:
    adds r0, r3, #0
    mov r3, sp
    bl func_0805E99C
    mov r0, sp
    movs r5, #0
    ldrsh r1, [r0, r5]
    movs r6, #2
    ldrsh r2, [r0, r6]
    adds r0, r7, #0
    movs r3, #1
    bl func_080035C0
    ldr r0, _08002C88 @ =0x00006AC0
    adds r4, r7, r0
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    ldr r5, [sp, #0x8c]
    ldr r0, [r5]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x3c
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r0, sb
    mov r1, sb
    movs r2, #0x20
    bl memcpy
    add r1, sp, #0x1c
    mov r0, sb
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldm r0!, {r2, r5, r6}
    stm r1!, {r2, r5, r6}
    ldm r0!, {r3, r5}
    stm r1!, {r3, r5}
    movs r6, #0x1a
    ldrsh r1, [r4, r6]
    mov r0, sp
    movs r2, #0
    strh r1, [r0]
    movs r0, #0x1e
    ldrsh r1, [r4, r0]
    mov r0, sp
    strh r1, [r0, #2]
    strh r2, [r0, #8]
    ldr r1, _08002C8C @ =0x00006CB0
    adds r4, r7, r1
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007D4C
    mov r1, sp
    strh r0, [r1, #6]
    ldr r2, _08002C90 @ =0x00006CB8
    adds r0, r7, r2
    ldr r1, [r0, #4]
    bl func_080074C0
    mov r1, sp
    strh r0, [r1, #4]
    mov r0, sp
    movs r3, #1
    mov sl, r3
    mov r5, sl
    strb r5, [r0, #0x18]
    ldr r6, _08002C94 @ =0x00006AD4
    adds r0, r7, r6
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt _08002C34
    b _08002D6A
_08002C34:
    adds r0, r7, #0
    bl func_08008910
    adds r5, r0, #0
    ldr r0, [sp, #0x24]
    mov r8, r0
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007D4C
    adds r2, r0, #0
    ldr r0, [sp, #0x24]
    movs r3, #0
    cmp r0, #0
    beq _08002C56
    mov r1, sp
    ldrh r3, [r1, #0x28]
_08002C56:
    str r5, [sp, #0x9c]
    lsls r2, r2, #5
    ldr r4, _08002C98 @ =0x06010000
    adds r2, r2, r4
    mov r0, sb
    mov r1, r8
    bl func_08008F0C
    ldr r1, [r5, #4]
    ldr r0, [r5, #0xc]
    cmp r1, r0
    beq _08002C9C
    cmp r1, #0
    beq _08002C7E
    adds r0, r1, #0
    mov r1, sb
    ldm r1!, {r2, r5, r6}
    stm r0!, {r2, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08002C7E:
    ldr r3, [sp, #0x9c]
    ldr r0, [r3, #4]
    adds r0, #0x10
    str r0, [r3, #4]
    b _08002D6A
    .align 2, 0
_08002C88: .4byte 0x00006AC0
_08002C8C: .4byte 0x00006CB0
_08002C90: .4byte 0x00006CB8
_08002C94: .4byte 0x00006AD4
_08002C98: .4byte 0x06010000
_08002C9C:
    mov r8, r1
    mov r4, sl
    str r4, [sp, #0x68]
    ldr r5, [sp, #0x9c]
    ldr r0, [r5]
    subs r0, r1, r0
    asrs r4, r0, #4
    str r4, [sp, #0x64]
    add r1, sp, #0x68
    add r0, sp, #0x64
    cmp r4, #1
    bhs _08002CB6
    adds r0, r1, #0
_08002CB6:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq _08002CD4
    lsls r4, r0, #4
    adds r0, r4, #0
    bl func_080D01F8
    mov sl, r4
    cmp r0, #0
    bne _08002CD8
    mov r0, sl
    bl func_080D3BC0
    b _08002CD8
_08002CD4:
    movs r0, #0
    mov sl, r0
_08002CD8:
    adds r5, r0, #0
    str r5, [sp, #0xa0]
    ldr r6, [sp, #0x9c]
    ldr r2, [r6]
    adds r3, r5, #0
    cmp r2, r8
    beq _08002CFE
_08002CE6:
    cmp r3, #0
    beq _08002CF6
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r5, r6}
    stm r0!, {r4, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08002CF6:
    adds r2, #0x10
    adds r3, #0x10
    cmp r2, r8
    bne _08002CE6
_08002CFE:
    adds r5, r3, #0
    ldr r0, [sp, #0x68]
    cmp r0, #1
    bne _08002D1A
    cmp r5, #0
    beq _08002D16
    adds r0, r5, #0
    add r1, sp, #0x3c
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
_08002D16:
    adds r5, #0x10
    b _08002D42
_08002D1A:
    mov r8, r0
    adds r2, r5, #0
    cmp r0, #0
    beq _08002D40
_08002D22:
    cmp r2, #0
    beq _08002D32
    adds r0, r2, #0
    add r1, sp, #0x3c
    ldm r1!, {r3, r5, r6}
    stm r0!, {r3, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08002D32:
    movs r4, #1
    rsbs r4, r4, #0
    add r8, r4
    adds r2, #0x10
    mov r5, r8
    cmp r5, #0
    bne _08002D22
_08002D40:
    adds r5, r2, #0
_08002D42:
    ldr r6, [sp, #0x9c]
    ldr r2, [r6, #4]
    ldr r0, [r6]
    adds r1, r0, #0
    cmp r0, r2
    beq _08002D54
_08002D4E:
    adds r1, #0x10
    cmp r1, r2
    bne _08002D4E
_08002D54:
    cmp r0, #0
    beq _08002D5C
    bl func_080D0260
_08002D5C:
    ldr r0, [sp, #0xa0]
    add r0, sl
    ldr r1, [sp, #0xa0]
    ldr r2, [sp, #0x9c]
    str r1, [r2]
    str r5, [r2, #4]
    str r0, [r2, #0xc]
_08002D6A:
    adds r0, r7, #0
    bl func_08008920
    adds r3, r0, #0
    ldr r0, [sp, #0x1c]
    adds r1, r0, #0
    movs r2, #0
    cmp r1, #0
    beq _08002D80
    mov r4, sp
    ldrh r2, [r4, #0x20]
_08002D80:
    adds r0, r3, #0
    mov r3, sp
    bl func_0805E99C
    mov r0, sp
    movs r5, #0
    ldrsh r1, [r0, r5]
    movs r6, #2
    ldrsh r2, [r0, r6]
    adds r0, r7, #0
    movs r3, #0
    bl func_080035C0
    ldr r1, _08002E80 @ =0x00006C6C
    adds r0, r7, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0
    bne _08002DAA
    b _08002FE2
_08002DAA:
    ldr r2, _08002E84 @ =0x00006B40
    adds r4, r7, r2
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    ldr r5, _08002E88 @ =0x00006B44
    adds r0, r7, r5
    lsls r2, r2, #2
    ldr r0, [r0]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x3c
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r0, sb
    mov r1, sb
    movs r2, #0x20
    bl memcpy
    add r1, sp, #0x1c
    mov r0, sb
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldm r0!, {r2, r5, r6}
    stm r1!, {r2, r5, r6}
    ldm r0!, {r3, r5}
    stm r1!, {r3, r5}
    movs r6, #0x1a
    ldrsh r1, [r4, r6]
    mov r0, sp
    movs r2, #0
    strh r1, [r0]
    movs r0, #0x1e
    ldrsh r1, [r4, r0]
    mov r0, sp
    strh r1, [r0, #2]
    strh r2, [r0, #8]
    ldr r1, _08002E8C @ =0x00006CC0
    adds r4, r7, r1
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007D4C
    mov r1, sp
    strh r0, [r1, #6]
    ldr r2, _08002E90 @ =0x00006CC8
    adds r0, r7, r2
    ldr r1, [r0, #4]
    bl func_080074C0
    mov r1, sp
    strh r0, [r1, #4]
    mov r0, sp
    movs r3, #1
    mov sl, r3
    mov r5, sl
    strb r5, [r0, #0x18]
    ldr r6, _08002E94 @ =0x00006B54
    adds r0, r7, r6
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt _08002E2C
    b _08002F6A
_08002E2C:
    adds r0, r7, #0
    bl func_08008910
    adds r5, r0, #0
    ldr r0, [sp, #0x24]
    mov r8, r0
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007D4C
    adds r2, r0, #0
    ldr r0, [sp, #0x24]
    movs r3, #0
    cmp r0, #0
    beq _08002E4E
    mov r1, sp
    ldrh r3, [r1, #0x28]
_08002E4E:
    str r5, [sp, #0x9c]
    lsls r2, r2, #5
    ldr r4, _08002E98 @ =0x06010000
    adds r2, r2, r4
    mov r0, sb
    mov r1, r8
    bl func_08008F0C
    ldr r1, [r5, #4]
    ldr r0, [r5, #0xc]
    cmp r1, r0
    beq _08002E9C
    cmp r1, #0
    beq _08002E76
    adds r0, r1, #0
    mov r1, sb
    ldm r1!, {r2, r5, r6}
    stm r0!, {r2, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08002E76:
    ldr r3, [sp, #0x9c]
    ldr r0, [r3, #4]
    adds r0, #0x10
    str r0, [r3, #4]
    b _08002F6A
    .align 2, 0
_08002E80: .4byte 0x00006C6C
_08002E84: .4byte 0x00006B40
_08002E88: .4byte 0x00006B44
_08002E8C: .4byte 0x00006CC0
_08002E90: .4byte 0x00006CC8
_08002E94: .4byte 0x00006B54
_08002E98: .4byte 0x06010000
_08002E9C:
    mov r8, r1
    mov r4, sl
    str r4, [sp, #0x70]
    ldr r5, [sp, #0x9c]
    ldr r0, [r5]
    subs r0, r1, r0
    asrs r4, r0, #4
    str r4, [sp, #0x6c]
    add r1, sp, #0x70
    add r0, sp, #0x6c
    cmp r4, #1
    bhs _08002EB6
    adds r0, r1, #0
_08002EB6:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq _08002ED4
    lsls r4, r0, #4
    adds r0, r4, #0
    bl func_080D01F8
    mov sl, r4
    cmp r0, #0
    bne _08002ED8
    mov r0, sl
    bl func_080D3BC0
    b _08002ED8
_08002ED4:
    movs r0, #0
    mov sl, r0
_08002ED8:
    adds r5, r0, #0
    str r5, [sp, #0xa0]
    ldr r6, [sp, #0x9c]
    ldr r2, [r6]
    adds r3, r5, #0
    cmp r2, r8
    beq _08002EFE
_08002EE6:
    cmp r3, #0
    beq _08002EF6
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r5, r6}
    stm r0!, {r4, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08002EF6:
    adds r2, #0x10
    adds r3, #0x10
    cmp r2, r8
    bne _08002EE6
_08002EFE:
    adds r5, r3, #0
    ldr r0, [sp, #0x70]
    cmp r0, #1
    bne _08002F1A
    cmp r5, #0
    beq _08002F16
    adds r0, r5, #0
    add r1, sp, #0x3c
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
_08002F16:
    adds r5, #0x10
    b _08002F42
_08002F1A:
    mov r8, r0
    adds r2, r5, #0
    cmp r0, #0
    beq _08002F40
_08002F22:
    cmp r2, #0
    beq _08002F32
    adds r0, r2, #0
    add r1, sp, #0x3c
    ldm r1!, {r3, r5, r6}
    stm r0!, {r3, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08002F32:
    movs r4, #1
    rsbs r4, r4, #0
    add r8, r4
    adds r2, #0x10
    mov r5, r8
    cmp r5, #0
    bne _08002F22
_08002F40:
    adds r5, r2, #0
_08002F42:
    ldr r6, [sp, #0x9c]
    ldr r2, [r6, #4]
    ldr r0, [r6]
    adds r1, r0, #0
    cmp r0, r2
    beq _08002F54
_08002F4E:
    adds r1, #0x10
    cmp r1, r2
    bne _08002F4E
_08002F54:
    cmp r0, #0
    beq _08002F5C
    bl func_080D0260
_08002F5C:
    ldr r0, [sp, #0xa0]
    add r0, sl
    ldr r1, [sp, #0xa0]
    ldr r2, [sp, #0x9c]
    str r1, [r2]
    str r5, [r2, #4]
    str r0, [r2, #0xc]
_08002F6A:
    adds r0, r7, #0
    bl func_08008920
    adds r3, r0, #0
    ldr r0, [sp, #0x1c]
    adds r1, r0, #0
    movs r2, #0
    cmp r1, #0
    beq _08002F80
    mov r4, sp
    ldrh r2, [r4, #0x20]
_08002F80:
    adds r0, r3, #0
    mov r3, sp
    bl func_0805E99C
    mov r0, sp
    ldrh r0, [r0, #2]
    cmp r0, #0x94
    bne _08002FA0
    mov r0, sp
    movs r5, #0
    ldrsh r1, [r0, r5]
    adds r0, r7, #0
    movs r2, #0x94
    movs r3, #0
    bl func_080035C0
_08002FA0:
    ldr r6, _080030C0 @ =0x00006B60
    adds r2, r7, r6
    movs r0, #0x1a
    ldrsh r1, [r2, r0]
    mov r0, sp
    strh r1, [r0]
    movs r3, #0x1e
    ldrsh r1, [r2, r3]
    strh r1, [r0, #2]
    adds r0, r7, #0
    bl func_08008920
    ldr r1, [sp, #0x1c]
    movs r2, #0
    cmp r1, #0
    beq _08002FC4
    mov r4, sp
    ldrh r2, [r4, #0x20]
_08002FC4:
    mov r3, sp
    bl func_0805E99C
    mov r0, sp
    ldrh r0, [r0, #2]
    cmp r0, #0x94
    bne _08002FE2
    mov r0, sp
    movs r5, #0
    ldrsh r1, [r0, r5]
    adds r0, r7, #0
    movs r2, #0x94
    movs r3, #0
    bl func_080035C0
_08002FE2:
    ldr r6, _080030C4 @ =0x00006AE0
    adds r4, r7, r6
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    ldr r5, [sp, #0x90]
    ldr r0, [r5]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x3c
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r0, sb
    mov r1, sb
    movs r2, #0x20
    bl memcpy
    add r1, sp, #0x1c
    mov r0, sb
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldm r0!, {r2, r5, r6}
    stm r1!, {r2, r5, r6}
    ldm r0!, {r3, r5}
    stm r1!, {r3, r5}
    movs r6, #0x1a
    ldrsh r1, [r4, r6]
    mov r2, sp
    ldr r3, _080030C8 @ =0x00006D30
    adds r0, r7, r3
    ldrh r0, [r0]
    subs r1, r1, r0
    movs r3, #0
    strh r1, [r2]
    movs r5, #0x1e
    ldrsh r1, [r4, r5]
    mov r0, sp
    strh r1, [r0, #2]
    strh r3, [r0, #8]
    ldr r6, _080030CC @ =0x00006C88
    adds r4, r7, r6
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007D4C
    mov r1, sp
    strh r0, [r1, #6]
    ldr r1, _080030D0 @ =0x00006C90
    adds r0, r7, r1
    ldr r1, [r0, #4]
    bl func_080074C0
    mov r1, sp
    strh r0, [r1, #4]
    mov r0, sp
    movs r2, #1
    mov sl, r2
    mov r3, sl
    strb r3, [r0, #0x18]
    ldr r5, _080030D4 @ =0x00006AF4
    adds r0, r7, r5
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt _0800306A
    b _080031AC
_0800306A:
    adds r0, r7, #0
    bl func_08008910
    adds r5, r0, #0
    ldr r6, [sp, #0x24]
    mov r8, r6
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007D4C
    adds r2, r0, #0
    ldr r0, [sp, #0x24]
    movs r3, #0
    cmp r0, #0
    beq _0800308C
    mov r0, sp
    ldrh r3, [r0, #0x28]
_0800308C:
    str r5, [sp, #0x9c]
    lsls r2, r2, #5
    ldr r1, _080030D8 @ =0x06010000
    adds r2, r2, r1
    mov r0, sb
    mov r1, r8
    bl func_08008F0C
    ldr r1, [r5, #4]
    ldr r0, [r5, #0xc]
    cmp r1, r0
    beq _080030DC
    cmp r1, #0
    beq _080030B4
    adds r0, r1, #0
    mov r1, sb
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
_080030B4:
    ldr r5, [sp, #0x9c]
    ldr r0, [r5, #4]
    adds r0, #0x10
    str r0, [r5, #4]
    b _080031AC
    .align 2, 0
_080030C0: .4byte 0x00006B60
_080030C4: .4byte 0x00006AE0
_080030C8: .4byte 0x00006D30
_080030CC: .4byte 0x00006C88
_080030D0: .4byte 0x00006C90
_080030D4: .4byte 0x00006AF4
_080030D8: .4byte 0x06010000
_080030DC:
    mov r8, r1
    mov r6, sl
    str r6, [sp, #0x78]
    ldr r1, [sp, #0x9c]
    ldr r0, [r1]
    mov r2, r8
    subs r0, r2, r0
    asrs r4, r0, #4
    str r4, [sp, #0x74]
    add r1, sp, #0x78
    add r0, sp, #0x74
    cmp r4, #1
    bhs _080030F8
    adds r0, r1, #0
_080030F8:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq _08003116
    lsls r4, r0, #4
    adds r0, r4, #0
    bl func_080D01F8
    mov sl, r4
    cmp r0, #0
    bne _0800311A
    mov r0, sl
    bl func_080D3BC0
    b _0800311A
_08003116:
    movs r0, #0
    mov sl, r0
_0800311A:
    adds r5, r0, #0
    str r5, [sp, #0xa0]
    ldr r3, [sp, #0x9c]
    ldr r2, [r3]
    adds r3, r5, #0
    cmp r2, r8
    beq _08003140
_08003128:
    cmp r3, #0
    beq _08003138
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r5, r6}
    stm r0!, {r4, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08003138:
    adds r2, #0x10
    adds r3, #0x10
    cmp r2, r8
    bne _08003128
_08003140:
    adds r5, r3, #0
    ldr r0, [sp, #0x78]
    cmp r0, #1
    bne _0800315C
    cmp r5, #0
    beq _08003158
    adds r0, r5, #0
    add r1, sp, #0x3c
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
_08003158:
    adds r5, #0x10
    b _08003184
_0800315C:
    mov r8, r0
    adds r2, r5, #0
    cmp r0, #0
    beq _08003182
_08003164:
    cmp r2, #0
    beq _08003174
    adds r0, r2, #0
    add r1, sp, #0x3c
    ldm r1!, {r3, r5, r6}
    stm r0!, {r3, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08003174:
    movs r4, #1
    rsbs r4, r4, #0
    add r8, r4
    adds r2, #0x10
    mov r5, r8
    cmp r5, #0
    bne _08003164
_08003182:
    adds r5, r2, #0
_08003184:
    ldr r6, [sp, #0x9c]
    ldr r2, [r6, #4]
    ldr r0, [r6]
    adds r1, r0, #0
    cmp r0, r2
    beq _08003196
_08003190:
    adds r1, #0x10
    cmp r1, r2
    bne _08003190
_08003196:
    cmp r0, #0
    beq _0800319E
    bl func_080D0260
_0800319E:
    ldr r0, [sp, #0xa0]
    add r0, sl
    ldr r1, [sp, #0xa0]
    ldr r2, [sp, #0x9c]
    str r1, [r2]
    str r5, [r2, #4]
    str r0, [r2, #0xc]
_080031AC:
    adds r0, r7, #0
    bl func_08008920
    adds r3, r0, #0
    ldr r0, [sp, #0x1c]
    adds r1, r0, #0
    movs r2, #0
    cmp r1, #0
    beq _080031C2
    mov r4, sp
    ldrh r2, [r4, #0x20]
_080031C2:
    adds r0, r3, #0
    mov r3, sp
    bl func_0805E99C
    mov r0, sp
    movs r5, #0
    ldrsh r1, [r0, r5]
    movs r6, #2
    ldrsh r2, [r0, r6]
    adds r0, r7, #0
    movs r3, #2
    bl func_080035C0
    movs r0, #0xd6
    lsls r0, r0, #7
    adds r4, r7, r0
    ldr r1, [r4]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    ldr r5, [sp, #0x94]
    ldr r0, [r5]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x3c
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r0, sb
    mov r1, sb
    movs r2, #0x20
    bl memcpy
    add r1, sp, #0x1c
    mov r0, sb
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldm r0!, {r2, r5, r6}
    stm r1!, {r2, r5, r6}
    ldm r0!, {r3, r5}
    stm r1!, {r3, r5}
    movs r6, #0x1a
    ldrsh r1, [r4, r6]
    mov r0, sp
    movs r2, #0
    strh r1, [r0]
    movs r0, #0x1e
    ldrsh r1, [r4, r0]
    mov r0, sp
    strh r1, [r0, #2]
    strh r2, [r0, #8]
    ldr r1, _080032B4 @ =0x00006C98
    adds r4, r7, r1
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007D4C
    mov r1, sp
    strh r0, [r1, #6]
    ldr r2, _080032B8 @ =0x00006CA0
    adds r0, r7, r2
    ldr r1, [r0, #4]
    bl func_080074C0
    mov r1, sp
    strh r0, [r1, #4]
    mov r0, sp
    movs r3, #1
    mov sl, r3
    mov r5, sl
    strb r5, [r0, #0x18]
    ldr r6, _080032BC @ =0x00006B14
    adds r0, r7, r6
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt _0800325E
    b _08003396
_0800325E:
    adds r0, r7, #0
    bl func_08008910
    adds r5, r0, #0
    ldr r0, [sp, #0x24]
    mov r8, r0
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007D4C
    adds r2, r0, #0
    ldr r0, [sp, #0x24]
    movs r3, #0
    cmp r0, #0
    beq _08003280
    mov r1, sp
    ldrh r3, [r1, #0x28]
_08003280:
    str r5, [sp, #0x9c]
    lsls r2, r2, #5
    ldr r4, _080032C0 @ =0x06010000
    adds r2, r2, r4
    mov r0, sb
    mov r1, r8
    bl func_08008F0C
    ldr r1, [r5, #4]
    ldr r0, [r5, #0xc]
    cmp r1, r0
    beq _080032C4
    cmp r1, #0
    beq _080032A8
    adds r0, r1, #0
    mov r1, sb
    ldm r1!, {r2, r5, r6}
    stm r0!, {r2, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_080032A8:
    ldr r3, [sp, #0x9c]
    ldr r0, [r3, #4]
    adds r0, #0x10
    str r0, [r3, #4]
    b _08003396
    .align 2, 0
_080032B4: .4byte 0x00006C98
_080032B8: .4byte 0x00006CA0
_080032BC: .4byte 0x00006B14
_080032C0: .4byte 0x06010000
_080032C4:
    mov r8, r1
    add r0, sp, #0x80
    mov r4, sl
    str r4, [r0]
    ldr r5, [sp, #0x9c]
    ldr r1, [r5]
    mov r6, r8
    subs r1, r6, r1
    asrs r4, r1, #4
    str r4, [sp, #0x7c]
    ldr r1, [r0]
    add r2, sp, #0x7c
    cmp r4, r1
    bhs _080032E2
    adds r2, r0, #0
_080032E2:
    ldr r0, [r2]
    adds r0, r4, r0
    cmp r0, #0
    beq _08003300
    lsls r4, r0, #4
    adds r0, r4, #0
    bl func_080D01F8
    mov sl, r4
    cmp r0, #0
    bne _08003304
    mov r0, sl
    bl func_080D3BC0
    b _08003304
_08003300:
    movs r0, #0
    mov sl, r0
_08003304:
    adds r5, r0, #0
    str r5, [sp, #0xa0]
    ldr r0, [sp, #0x9c]
    ldr r2, [r0]
    adds r3, r5, #0
    cmp r2, r8
    beq _0800332A
_08003312:
    cmp r3, #0
    beq _08003322
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r5, r6}
    stm r0!, {r4, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08003322:
    adds r2, #0x10
    adds r3, #0x10
    cmp r2, r8
    bne _08003312
_0800332A:
    adds r5, r3, #0
    ldr r0, [sp, #0x80]
    cmp r0, #1
    bne _08003346
    cmp r5, #0
    beq _08003342
    adds r0, r5, #0
    add r1, sp, #0x3c
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
_08003342:
    adds r5, #0x10
    b _0800336E
_08003346:
    mov r8, r0
    adds r2, r5, #0
    cmp r0, #0
    beq _0800336C
_0800334E:
    cmp r2, #0
    beq _0800335E
    adds r0, r2, #0
    add r1, sp, #0x3c
    ldm r1!, {r3, r5, r6}
    stm r0!, {r3, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_0800335E:
    movs r4, #1
    rsbs r4, r4, #0
    add r8, r4
    adds r2, #0x10
    mov r5, r8
    cmp r5, #0
    bne _0800334E
_0800336C:
    adds r5, r2, #0
_0800336E:
    ldr r6, [sp, #0x9c]
    ldr r2, [r6, #4]
    ldr r0, [r6]
    adds r1, r0, #0
    cmp r0, r2
    beq _08003380
_0800337A:
    adds r1, #0x10
    cmp r1, r2
    bne _0800337A
_08003380:
    cmp r0, #0
    beq _08003388
    bl func_080D0260
_08003388:
    ldr r0, [sp, #0xa0]
    add r0, sl
    ldr r1, [sp, #0xa0]
    ldr r2, [sp, #0x9c]
    str r1, [r2]
    str r5, [r2, #4]
    str r0, [r2, #0xc]
_08003396:
    adds r0, r7, #0
    bl func_08008920
    adds r3, r0, #0
    ldr r0, [sp, #0x1c]
    adds r1, r0, #0
    movs r2, #0
    cmp r1, #0
    beq _080033AC
    mov r4, sp
    ldrh r2, [r4, #0x20]
_080033AC:
    adds r0, r3, #0
    mov r3, sp
    bl func_0805E99C
    mov r0, sp
    movs r5, #0
    ldrsh r1, [r0, r5]
    movs r6, #2
    ldrsh r2, [r0, r6]
    adds r0, r7, #0
    movs r3, #2
    bl func_080035C0
    ldr r0, _08003498 @ =0x00006B20
    adds r5, r7, r0
    ldr r1, [r5]
    ldr r3, [r1]
    ldrh r2, [r5, #0xc]
    lsls r2, r2, #2
    ldr r4, [sp, #0x98]
    ldr r0, [r4]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x3c
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r4, sb
    adds r0, r4, #0
    adds r1, r4, #0
    movs r2, #0x20
    bl memcpy
    add r0, sp, #0x1c
    ldm r4!, {r1, r2, r6}
    stm r0!, {r1, r2, r6}
    ldm r4!, {r1, r3, r6}
    stm r0!, {r1, r3, r6}
    ldm r4!, {r2, r3}
    stm r0!, {r2, r3}
    movs r4, #0x1a
    ldrsh r1, [r5, r4]
    mov r0, sp
    movs r2, #0
    strh r1, [r0]
    movs r6, #0x1e
    ldrsh r1, [r5, r6]
    strh r1, [r0, #2]
    strh r2, [r0, #8]
    ldr r0, _0800349C @ =0x00006CA8
    adds r4, r7, r0
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007D4C
    mov r1, sp
    strh r0, [r1, #6]
    ldr r1, _080034A0 @ =0x00006CC8
    adds r0, r7, r1
    ldr r1, [r0, #4]
    bl func_080074C0
    mov r1, sp
    strh r0, [r1, #4]
    mov r0, sp
    movs r2, #1
    strb r2, [r0, #0x18]
    ldr r3, _080034A4 @ =0x00006B34
    adds r0, r7, r3
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    blt _08003440
    b _0800357E
_08003440:
    adds r0, r7, #0
    bl func_08008910
    adds r5, r0, #0
    ldr r6, [sp, #0x24]
    mov r8, r6
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007D4C
    adds r2, r0, #0
    ldr r0, [sp, #0x24]
    movs r3, #0
    cmp r0, #0
    beq _08003462
    mov r0, sp
    ldrh r3, [r0, #0x28]
_08003462:
    str r5, [sp, #0x9c]
    lsls r2, r2, #5
    ldr r1, _080034A8 @ =0x06010000
    adds r2, r2, r1
    mov r0, sb
    mov r1, r8
    bl func_08008F0C
    mov sl, sb
    ldr r1, [r5, #4]
    ldr r0, [r5, #0xc]
    cmp r1, r0
    beq _080034AC
    cmp r1, #0
    beq _0800348C
    adds r0, r1, #0
    mov r1, sl
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
_0800348C:
    ldr r5, [sp, #0x9c]
    ldr r0, [r5, #4]
    adds r0, #0x10
    str r0, [r5, #4]
    b _0800357E
    .align 2, 0
_08003498: .4byte 0x00006B20
_0800349C: .4byte 0x00006CA8
_080034A0: .4byte 0x00006CC8
_080034A4: .4byte 0x00006B34
_080034A8: .4byte 0x06010000
_080034AC:
    mov r8, r1
    add r1, sp, #0x88
    movs r6, #1
    str r6, [r1]
    ldr r2, [sp, #0x9c]
    ldr r0, [r2]
    mov r3, r8
    subs r0, r3, r0
    asrs r4, r0, #4
    add r0, sp, #0x84
    str r4, [r0]
    ldr r2, [r1]
    cmp r4, r2
    bhs _080034CA
    adds r0, r1, #0
_080034CA:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq _080034E8
    lsls r4, r0, #4
    adds r0, r4, #0
    bl func_080D01F8
    mov sb, r4
    cmp r0, #0
    bne _080034EC
    mov r0, sb
    bl func_080D3BC0
    b _080034EC
_080034E8:
    movs r0, #0
    mov sb, r0
_080034EC:
    adds r5, r0, #0
    str r5, [sp, #0xa0]
    ldr r4, [sp, #0x9c]
    ldr r2, [r4]
    adds r3, r5, #0
    cmp r2, r8
    beq _08003512
_080034FA:
    cmp r3, #0
    beq _0800350A
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r5, r6}
    stm r0!, {r4, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_0800350A:
    adds r2, #0x10
    adds r3, #0x10
    cmp r2, r8
    bne _080034FA
_08003512:
    adds r5, r3, #0
    ldr r1, [sp, #0x88]
    cmp r1, #1
    bne _0800352E
    cmp r5, #0
    beq _0800352A
    adds r0, r5, #0
    mov r1, sl
    ldm r1!, {r2, r3, r6}
    stm r0!, {r2, r3, r6}
    ldr r1, [r1]
    str r1, [r0]
_0800352A:
    adds r5, #0x10
    b _08003556
_0800352E:
    mov r8, r1
    adds r2, r5, #0
    cmp r1, #0
    beq _08003554
_08003536:
    cmp r2, #0
    beq _08003546
    adds r0, r2, #0
    mov r1, sl
    ldm r1!, {r4, r5, r6}
    stm r0!, {r4, r5, r6}
    ldr r1, [r1]
    str r1, [r0]
_08003546:
    movs r0, #1
    rsbs r0, r0, #0
    add r8, r0
    adds r2, #0x10
    mov r1, r8
    cmp r1, #0
    bne _08003536
_08003554:
    adds r5, r2, #0
_08003556:
    ldr r3, [sp, #0x9c]
    ldr r2, [r3, #4]
    ldr r0, [r3]
    adds r1, r0, #0
    cmp r0, r2
    beq _08003568
_08003562:
    adds r1, #0x10
    cmp r1, r2
    bne _08003562
_08003568:
    cmp r0, #0
    beq _08003570
    bl func_080D0260
_08003570:
    ldr r0, [sp, #0xa0]
    add r0, sb
    ldr r4, [sp, #0xa0]
    ldr r6, [sp, #0x9c]
    str r4, [r6]
    str r5, [r6, #4]
    str r0, [r6, #0xc]
_0800357E:
    adds r0, r7, #0
    bl func_08008920
    adds r3, r0, #0
    ldr r0, [sp, #0x1c]
    adds r1, r0, #0
    movs r2, #0
    cmp r1, #0
    beq _08003594
    mov r0, sp
    ldrh r2, [r0, #0x20]
_08003594:
    adds r0, r3, #0
    mov r3, sp
    bl func_0805E99C
    mov r0, sp
    movs r2, #0
    ldrsh r1, [r0, r2]
    movs r3, #2
    ldrsh r2, [r0, r3]
    adds r0, r7, #0
    movs r3, #2
    bl func_080035C0
    add sp, #0xa4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080035C0
func_080035C0: @ 0x080035C0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x5c
    adds r5, r0, #0
    adds r6, r1, #0
    adds r7, r2, #0
    mov r1, sp
    movs r2, #0
    movs r0, #0
    strh r0, [r1]
    strh r0, [r1, #2]
    strh r0, [r1, #4]
    strh r0, [r1, #6]
    strh r0, [r1, #8]
    str r0, [sp, #0xc]
    strb r2, [r1, #0x10]
    strb r2, [r1, #0x11]
    str r0, [sp, #0x14]
    strb r2, [r1, #0x18]
    add r2, sp, #0x1c
    str r0, [sp, #0x1c]
    strh r0, [r2, #4]
    add r1, sp, #0x24
    str r0, [sp, #0x24]
    strh r0, [r1, #4]
    add r1, sp, #0x2c
    str r0, [sp, #0x2c]
    strh r0, [r1, #4]
    add r1, sp, #0x34
    str r0, [sp, #0x34]
    strh r0, [r1, #4]
    mov r8, r2
    cmp r3, #1
    beq _08003630
    cmp r3, #1
    bgt _08003610
    cmp r3, #0
    beq _08003616
    b _08003666
_08003610:
    cmp r3, #2
    beq _0800364C
    b _08003666
_08003616:
    movs r1, #0xd7
    lsls r1, r1, #7
    adds r0, r5, r1
    ldr r1, _08003628 @ =0x0000091A
    bl func_0805E860
    ldr r2, _0800362C @ =0x00006CD0
    b _0800365A
    .align 2, 0
_08003628: .4byte 0x0000091A
_0800362C: .4byte 0x00006CD0
_08003630:
    movs r3, #0xd7
    lsls r3, r3, #7
    adds r0, r5, r3
    ldr r1, _08003644 @ =0x0000091B
    bl func_0805E860
    ldr r4, _08003648 @ =0x00006CD8
    adds r0, r5, r4
    b _0800365C
    .align 2, 0
_08003644: .4byte 0x0000091B
_08003648: .4byte 0x00006CD8
_0800364C:
    movs r1, #0xd7
    lsls r1, r1, #7
    adds r0, r5, r1
    ldr r1, _080036E8 @ =0x0000091C
    bl func_0805E860
    ldr r2, _080036EC @ =0x00006CE0
_0800365A:
    adds r0, r5, r2
_0800365C:
    ldr r1, [r0, #4]
    bl func_08007D4C
    mov r1, sp
    strh r0, [r1, #6]
_08003666:
    movs r3, #0xd7
    lsls r3, r3, #7
    adds r0, r5, r3
    ldr r1, [r0]
    ldr r3, [r1]
    ldrh r2, [r0, #0xc]
    ldr r4, _080036F0 @ =0x00006B84
    adds r0, r5, r4
    lsls r2, r2, #2
    ldr r0, [r0]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x3c
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r4, sp, #0x3c
    adds r0, r4, #0
    adds r1, r4, #0
    movs r2, #0x20
    bl memcpy
    mov r0, r8
    ldm r4!, {r1, r2, r3}
    stm r0!, {r1, r2, r3}
    ldm r4!, {r1, r2, r3}
    stm r0!, {r1, r2, r3}
    ldm r4!, {r1, r2}
    stm r0!, {r1, r2}
    mov r0, sp
    movs r1, #0
    strh r6, [r0]
    strh r7, [r0, #2]
    strh r1, [r0, #8]
    ldr r3, _080036F4 @ =0x00006CE8
    adds r0, r5, r3
    ldr r1, [r0, #4]
    bl func_080074C0
    mov r1, sp
    strh r0, [r1, #4]
    movs r0, #1
    strb r0, [r1, #0x18]
    adds r0, r5, #0
    bl func_08008920
    adds r3, r0, #0
    ldr r0, [sp, #0x1c]
    adds r1, r0, #0
    movs r2, #0
    cmp r1, #0
    beq _080036D2
    mov r4, r8
    ldrh r2, [r4, #4]
_080036D2:
    adds r0, r3, #0
    mov r3, sp
    bl func_0805E99C
    add sp, #0x5c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
_080036E8: .4byte 0x0000091C
_080036EC: .4byte 0x00006CE0
_080036F0: .4byte 0x00006B84
_080036F4: .4byte 0x00006CE8

    thumb_func_start func_080036F8
func_080036F8: @ 0x080036F8
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, _08003714 @ =0x080E5A18
    str r0, [r4]
    ldr r0, _08003718 @ =0x00006D34
    bl __builtin_new
    bl func_08000914
    str r0, [r4, #4]
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
_08003714: .4byte 0x080E5A18
_08003718: .4byte 0x00006D34

    thumb_func_start func_0800371C
func_0800371C: @ 0x0800371C
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, _08003748 @ =0x080E5A18
    str r0, [r4]
    ldr r1, [r4, #4]
    cmp r1, #0
    beq _08003738
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_08003738:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080007EC
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
_08003748: .4byte 0x080E5A18

    thumb_func_start func_0800374C
func_0800374C: @ 0x0800374C
    push {r4, lr}
    sub sp, #0xc
    adds r4, r0, #0
    ldr r1, [r1, #4]
    mov r0, sp
    bl func_08000D64
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
    beq _0800377C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
_0800377C:
    adds r0, r4, #0
    add sp, #0xc
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
