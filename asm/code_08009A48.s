    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start DayUpdate__9FieldPlotiRC4Date
DayUpdate__9FieldPlotiRC4Date: @ 0x0800A7B0
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
    bl method_0800A120__9FieldPloti
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
    bl method_0800A134__9FieldPlotii
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
    bl method_0800A134__9FieldPlotii
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
    bl method_0800A120__9FieldPloti
    b _0800AAFE
_0800AAEC:
    ldr r0, [r5]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne _0800AAFE
    adds r0, r5, #0
    movs r1, #2
    bl method_0800A120__9FieldPloti
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
    bl method_0800A120__9FieldPloti
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
    bl method_0800A134__9FieldPlotii
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
