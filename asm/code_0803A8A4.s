    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_0803A8A4
func_0803A8A4: @ 0x0803A8A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, [sp, #0x10]
	adds r1, r5, #0
	subs r1, #0x34
	ldr r0, _0803A8C4 @ =0x000001FF
	cmp r1, r0
	bhi _0803A908
	subs r0, #0xcc
	cmp r5, r0
	ble _0803A8CC
	ldr r0, _0803A8C8 @ =0xFFFFFECC
	adds r4, r5, r0
	movs r0, #1
	b _0803A8D0
	.align 2, 0
_0803A8C4: .4byte 0x000001FF
_0803A8C8: .4byte 0xFFFFFECC
_0803A8CC:
	adds r4, r1, #0
	movs r0, #0
_0803A8D0:
	cmp r4, #0
	bne _0803A8D8
	movs r0, #0x38
	b _0803AB28
_0803A8D8:
	cmp r4, #9
	bne _0803A8E4
	cmp r0, #1
	bne _0803A8E4
	movs r0, #0x3d
	b _0803AB28
_0803A8E4:
	adds r0, r4, #0
	movs r1, #5
	bl __umodsi3
	cmp r0, #0
	bne _0803A8F4
	movs r0, #0x39
	b _0803AB28
_0803A8F4:
	adds r0, r4, #0
	movs r1, #3
	bl __umodsi3
	cmp r0, #0
	bne _0803A904
	movs r0, #0x3a
	b _0803AB28
_0803A904:
	movs r0, #0x3b
	b _0803AB28
_0803A908:
	cmp r5, #0x33
	bls _0803A90E
	b _0803AB26
_0803A90E:
	lsls r0, r5, #2
	ldr r1, _0803A918 @ =_0803A91C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803A918: .4byte _0803A91C
_0803A91C: @ jump table
	.4byte _0803AA3C @ case 0
	.4byte _0803AA1C @ case 1
	.4byte _0803A9EC @ case 2
	.4byte _0803AA28 @ case 3
	.4byte _0803AA32 @ case 4
	.4byte _0803AA04 @ case 5
	.4byte _0803A9F8 @ case 6
	.4byte _0803AA10 @ case 7
	.4byte _0803AA46 @ case 8
	.4byte _0803AAD6 @ case 9
	.4byte _0803AADA @ case 10
	.4byte _0803AADE @ case 11
	.4byte _0803AAC2 @ case 12
	.4byte _0803AAB6 @ case 13
	.4byte _0803AAF6 @ case 14
	.4byte _0803AAAA @ case 15
	.4byte _0803AAAE @ case 16
	.4byte _0803AA50 @ case 17
	.4byte _0803AAFE @ case 18
	.4byte _0803AABA @ case 19
	.4byte _0803AABE @ case 20
	.4byte _0803AA9E @ case 21
	.4byte _0803AAA2 @ case 22
	.4byte _0803AAA6 @ case 23
	.4byte _0803AAC6 @ case 24
	.4byte _0803AACA @ case 25
	.4byte _0803AACE @ case 26
	.4byte _0803AAD2 @ case 27
	.4byte _0803AAFA @ case 28
	.4byte _0803AA74 @ case 29
	.4byte _0803AAF2 @ case 30
	.4byte _0803AA8E @ case 31
	.4byte _0803AA92 @ case 32
	.4byte _0803AA96 @ case 33
	.4byte _0803AA9A @ case 34
	.4byte _0803AB02 @ case 35
	.4byte _0803AAB2 @ case 36
	.4byte _0803AA62 @ case 37
	.4byte _0803AAEA @ case 38
	.4byte _0803AB06 @ case 39
	.4byte _0803AAEE @ case 40
	.4byte _0803AAE2 @ case 41
	.4byte _0803AAE6 @ case 42
	.4byte _0803AB0A @ case 43
	.4byte _0803AB1E @ case 44
	.4byte _0803AB1E @ case 45
	.4byte _0803AB1E @ case 46
	.4byte _0803AB22 @ case 47
	.4byte _0803AB0E @ case 48
	.4byte _0803AB12 @ case 49
	.4byte _0803AB16 @ case 50
	.4byte _0803AB1A @ case 51
_0803A9EC:
	movs r0, #0
	cmp r4, #3
	beq _0803A9F4
	b _0803AB28
_0803A9F4:
	movs r0, #1
	b _0803AB28
_0803A9F8:
	movs r0, #3
	cmp r4, #3
	bne _0803AA00
	b _0803AB28
_0803AA00:
	movs r0, #2
	b _0803AB28
_0803AA04:
	movs r0, #5
	cmp r4, #3
	bne _0803AA0C
	b _0803AB28
_0803AA0C:
	movs r0, #4
	b _0803AB28
_0803AA10:
	movs r0, #7
	cmp r4, #3
	bne _0803AA18
	b _0803AB28
_0803AA18:
	movs r0, #6
	b _0803AB28
_0803AA1C:
	movs r0, #9
	cmp r4, #3
	bne _0803AA24
	b _0803AB28
_0803AA24:
	movs r0, #8
	b _0803AB28
_0803AA28:
	movs r0, #0xd
	cmp r4, #3
	beq _0803AB28
	movs r0, #0xc
	b _0803AB28
_0803AA32:
	movs r0, #0xb
	cmp r4, #3
	beq _0803AB28
	movs r0, #0xa
	b _0803AB28
_0803AA3C:
	movs r0, #0xf
	cmp r4, #3
	beq _0803AB28
	movs r0, #0xe
	b _0803AB28
_0803AA46:
	movs r0, #0x11
	cmp r4, #3
	beq _0803AB28
	movs r0, #0x10
	b _0803AB28
_0803AA50:
	cmp r3, #0
	beq _0803AA5A
	cmp r3, #1
	beq _0803AA5E
	b _0803AB26
_0803AA5A:
	movs r0, #0x24
	b _0803AB28
_0803AA5E:
	movs r0, #0x25
	b _0803AB28
_0803AA62:
	cmp r6, #0
	beq _0803AA6C
	cmp r6, #1
	beq _0803AA70
	b _0803AB26
_0803AA6C:
	movs r0, #0x26
	b _0803AB28
_0803AA70:
	movs r0, #0x27
	b _0803AB28
_0803AA74:
	cmp r2, #1
	beq _0803AA86
	cmp r2, #1
	blo _0803AA82
	cmp r2, #2
	beq _0803AA8A
	b _0803AB26
_0803AA82:
	movs r0, #0x29
	b _0803AB28
_0803AA86:
	movs r0, #0x2a
	b _0803AB28
_0803AA8A:
	movs r0, #0x2b
	b _0803AB28
_0803AA8E:
	movs r0, #0x12
	b _0803AB28
_0803AA92:
	movs r0, #0x13
	b _0803AB28
_0803AA96:
	movs r0, #0x14
	b _0803AB28
_0803AA9A:
	movs r0, #0x15
	b _0803AB28
_0803AA9E:
	movs r0, #0x16
	b _0803AB28
_0803AAA2:
	movs r0, #0x17
	b _0803AB28
_0803AAA6:
	movs r0, #0x18
	b _0803AB28
_0803AAAA:
	movs r0, #0x19
	b _0803AB28
_0803AAAE:
	movs r0, #0x1a
	b _0803AB28
_0803AAB2:
	movs r0, #0x1b
	b _0803AB28
_0803AAB6:
	movs r0, #0x1c
	b _0803AB28
_0803AABA:
	movs r0, #0x1d
	b _0803AB28
_0803AABE:
	movs r0, #0x1e
	b _0803AB28
_0803AAC2:
	movs r0, #0x1f
	b _0803AB28
_0803AAC6:
	movs r0, #0x20
	b _0803AB28
_0803AACA:
	movs r0, #0x21
	b _0803AB28
_0803AACE:
	movs r0, #0x22
	b _0803AB28
_0803AAD2:
	movs r0, #0x23
	b _0803AB28
_0803AAD6:
	movs r0, #0x28
	b _0803AB28
_0803AADA:
	movs r0, #0x2c
	b _0803AB28
_0803AADE:
	movs r0, #0x2d
	b _0803AB28
_0803AAE2:
	movs r0, #0x2e
	b _0803AB28
_0803AAE6:
	movs r0, #0x2f
	b _0803AB28
_0803AAEA:
	movs r0, #0x30
	b _0803AB28
_0803AAEE:
	movs r0, #0x31
	b _0803AB28
_0803AAF2:
	movs r0, #0x32
	b _0803AB28
_0803AAF6:
	movs r0, #0x33
	b _0803AB28
_0803AAFA:
	movs r0, #0x34
	b _0803AB28
_0803AAFE:
	movs r0, #0x35
	b _0803AB28
_0803AB02:
	movs r0, #0x36
	b _0803AB28
_0803AB06:
	movs r0, #0x37
	b _0803AB28
_0803AB0A:
	movs r0, #0x3c
	b _0803AB28
_0803AB0E:
	movs r0, #0x3e
	b _0803AB28
_0803AB12:
	movs r0, #0x3f
	b _0803AB28
_0803AB16:
	movs r0, #0x40
	b _0803AB28
_0803AB1A:
	movs r0, #0x41
	b _0803AB28
_0803AB1E:
	movs r0, #0x10
	b _0803AB28
_0803AB22:
	movs r0, #0x11
	b _0803AB28
_0803AB26:
	movs r0, #0
_0803AB28:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803AB30
func_0803AB30: @ 0x0803AB30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sb, r0
	mov sl, r1
	mov r6, sb
	stm r6!, {r1}
	movs r7, #2
	add r0, sp, #0x20
	mov r8, r0
	mov r1, sp
	adds r1, #0x24
	str r1, [sp, #0x2c]
	movs r5, #0
	adds r4, r6, #0
_0803AB54:
	str r5, [r4]
	strh r5, [r4, #4]
	str r5, [r4, #8]
	strh r5, [r4, #0xc]
	str r5, [r4, #0x10]
	strh r5, [r4, #0x14]
	str r5, [r4, #0x18]
	strh r5, [r4, #0x1c]
	adds r0, r6, #0
	adds r0, #0x20
	bl func_08007874
	str r5, [r4, #0x24]
	adds r4, #0x2c
	adds r6, #0x2c
	subs r7, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	bne _0803AB54
	mov r6, sb
	adds r6, #0x88
	movs r0, #0
	str r0, [r6]
	mov r0, sb
	adds r0, #0x9c
	movs r4, #1
	strb r4, [r0]
	mov r2, sl
	ldr r0, [r2]
	ldr r2, [r0, #0x48]
	mov r0, sl
	movs r1, #0xf
	bl _call_via_r2
	mov r3, r8
	strb r0, [r3]
	adds r5, r6, #0
	ldr r2, [r5]
	cmp r4, r2
	bls _0803ABCA
	mov r0, sb
	adds r0, #0x8c
	adds r2, #4
	adds r2, r5, r2
	ldrb r1, [r3]
	subs r2, r2, r0
	bl memset
	ldr r2, [r5]
	adds r0, r2, #4
	adds r0, r5, r0
	add r1, sp, #0x20
	ldrb r1, [r1]
	subs r2, r4, r2
	bl memset
	str r4, [r5]
	b _0803ABEA
_0803ABCA:
	mov r0, sb
	adds r0, #0x8c
	mov r4, sb
	adds r4, #0x8d
	mov r2, r8
	ldrb r1, [r2]
	subs r2, r4, r0
	bl memset
	ldr r0, [r5]
	adds r0, #4
	adds r0, r5, r0
	subs r0, r0, r4
	ldr r1, [r6]
	subs r1, r1, r0
	str r1, [r6]
_0803ABEA:
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [r0, #0x68]
	mov r0, sl
	bl _call_via_r1
	mov r8, r0
	movs r7, #0
_0803ABFA:
	movs r0, #0x2c
	adds r6, r7, #0
	muls r6, r0, r6
	add r6, sb
	adds r4, r6, #4
	ldr r0, _0803AC74 @ =0x0000091A
	adds r2, r7, r0
	mov r1, r8
	ldr r5, [r1]
	ldr r0, [sp, #0x2c]
	ldr r3, [r5, #0xc]
	bl _call_via_r3
	ldr r0, [sp, #0x24]
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r5, #0x10]
	mov r1, r8
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r0, sp
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	adds r4, r6, #0
	adds r4, #0x24
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	adds r1, r0, #0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	strh r0, [r6, #0x2c]
	adds r7, #1
	cmp r7, #2
	bls _0803ABFA
	mov r0, sb
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803AC74: .4byte 0x0000091A

	thumb_func_start func_0803AC78
func_0803AC78: @ 0x0803AC78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	ldr r0, [r6]
	ldr r2, [r0]
	adds r4, r6, #0
	adds r4, #0x88
	adds r1, r6, #0
	adds r1, #0x8c
	ldrb r1, [r1]
	ldr r2, [r2, #0x4c]
	bl _call_via_r2
	adds r0, r6, #4
	cmp r0, #0
	beq _0803ACBE
	adds r5, r4, #0
	cmp r0, r5
	beq _0803ACBE
	adds r7, r0, #0
_0803ACA4:
	subs r5, #0x2c
	adds r4, r5, #0
	adds r4, #0x20
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	cmp r7, r5
	bne _0803ACA4
_0803ACBE:
	movs r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0803ACCE
	adds r0, r6, #0
	bl __builtin_delete
_0803ACCE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0803ACD8
func_0803ACD8: @ 0x0803ACD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sb, r0
	adds r5, r1, #0
	movs r0, #0
	mov sl, r0
_0803ACEC:
	movs r0, #0x2c
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r4, r0, #4
	add r4, sb
	adds r6, r4, #0
	adds r6, #8
	ldr r7, [r4, #8]
	add r0, sb
	adds r0, #0x24
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4, #8]
	movs r3, #0
	cmp r0, #0
	beq _0803AD14
	ldrh r3, [r6, #4]
_0803AD14:
	lsls r2, r2, #5
	ldr r4, _0803AD50 @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r7, #0
	bl func_08008F0C
	mov r6, sp
	str r6, [sp, #0x18]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq _0803AD54
	cmp r1, #0
	beq _0803AD3E
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
_0803AD3E:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	movs r4, #1
	add sl, r4
	mov r6, sb
	adds r6, #0x8c
	str r6, [sp, #0x1c]
	b _0803AE28
	.align 2, 0
_0803AD50: .4byte 0x06010000
_0803AD54:
	str r1, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r1, [r5]
	ldr r7, [sp, #0x20]
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x10]
	add r2, sp, #0x14
	add r0, sp, #0x10
	cmp r4, #1
	bhs _0803AD6E
	adds r0, r2, #0
_0803AD6E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _0803AD8E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne _0803AD8A
	mov r0, r8
	bl func_080D3BC0
_0803AD8A:
	ldr r1, [r5]
	b _0803AD92
_0803AD8E:
	movs r0, #0
	mov r8, r0
_0803AD92:
	adds r4, r0, #0
	str r4, [sp, #0x24]
	adds r2, r1, #0
	adds r3, r4, #0
	movs r0, #1
	add sl, r0
	mov r1, sb
	adds r1, #0x8c
	str r1, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	cmp r2, r4
	beq _0803ADC4
_0803ADAA:
	cmp r3, #0
	beq _0803ADBA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
_0803ADBA:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x20]
	cmp r2, r6
	bne _0803ADAA
_0803ADC4:
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0803ADE0
	cmp r4, #0
	beq _0803ADDC
	adds r0, r4, #0
	ldr r1, [sp, #0x18]
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
_0803ADDC:
	adds r4, #0x10
	b _0803AE02
_0803ADE0:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq _0803AE00
_0803ADE8:
	cmp r2, #0
	beq _0803ADF8
	adds r0, r2, #0
	ldr r1, [sp, #0x18]
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
_0803ADF8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne _0803ADE8
_0803AE00:
	adds r4, r2, #0
_0803AE02:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq _0803AE12
_0803AE0C:
	adds r0, #0x10
	cmp r0, r2
	bne _0803AE0C
_0803AE12:
	cmp r1, #0
	beq _0803AE1C
	adds r0, r1, #0
	bl free
_0803AE1C:
	ldr r0, [sp, #0x24]
	add r0, r8
	ldr r1, [sp, #0x24]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
_0803AE28:
	mov r2, sl
	cmp r2, #2
	bhi _0803AE30
	b _0803ACEC
_0803AE30:
	mov r3, sb
	ldr r0, [r3]
	ldr r3, [r0]
	mov r4, sb
	ldr r1, [r4, #0x14]
	ldr r6, [sp, #0x1c]
	ldrb r2, [r6]
	ldr r4, [r3, #0x54]
	movs r3, #1
	bl _call_via_r4
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803AE58
func_0803AE58: @ 0x0803AE58
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x14
	ldr r5, [sp, #0x28]
	movs r4, #0x2c
	muls r4, r5, r4
	adds r4, #4
	adds r4, r0, r4
	ldrh r5, [r4, #0x28]
	mov r8, r5
	movs r5, #0x80
	lsls r5, r5, #8
	ldr r6, [r0]
	adds r0, #0x88
	str r5, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r4, r8
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	movs r3, #0xaa
	ldr r4, _0803AE9C @ =func_030004DC
	bl _call_via_r4
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803AE9C: .4byte func_030004DC

	thumb_func_start func_0803AEA0
func_0803AEA0: @ 0x0803AEA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	adds r6, r0, #0
	mov sb, r1
	mov sl, r2
	str r3, [sp, #0x50]
	str r1, [r6]
	movs r1, #0
	str r1, [r6, #4]
	adds r5, r6, #0
	adds r5, #0xd0
	str r1, [r5]
	adds r0, #0xe4
	add r2, sp, #0x50
	ldrb r2, [r2]
	strb r2, [r0]
	adds r2, r6, #0
	adds r2, #0xe5
	movs r0, #1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0xe6
	strb r1, [r0]
	adds r0, #2
	str r1, [r0]
	mov r3, sl
	ldr r1, [r3]
	add r4, sp, #0x48
	adds r0, r4, #0
	ldr r3, [r1, #0xc]
	mov r1, sl
	movs r2, #0
	bl _call_via_r3
	ldr r0, [sp, #0x48]
	movs r1, #0
	cmp r0, #0
	beq _0803AEF6
	ldrh r1, [r4, #4]
_0803AEF6:
	str r1, [sp, #0x54]
	movs r4, #0
	str r4, [sp, #0x64]
	str r5, [sp, #0x60]
	cmp r4, r1
	bhs _0803AF9E
	add r7, sp, #0x28
	mov r8, r7
	add r5, sp, #0x20
	adds r0, r6, #4
	str r0, [sp, #0x58]
_0803AF0C:
	mov r1, sl
	ldr r3, [r1]
	ldr r2, [sp, #0x64]
	lsls r1, r2, #2
	ldr r0, [sp, #0x48]
	adds r0, r0, r1
	ldrh r2, [r0]
	mov r0, r8
	ldr r3, [r3, #0x10]
	mov r1, sl
	bl _call_via_r3
	mov r1, sp
	mov r0, r8
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #0
	bl func_08007B54
	str r0, [r5, #4]
	ldr r1, [r6, #4]
	cmp r1, #4
	bhi _0803AF82
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	ldr r3, [sp, #0x58]
	adds r4, r3, r0
	cmp r4, #0
	beq _0803AF7C
	adds r1, r4, #0
	mov r0, sp
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	adds r4, #0x20
	adds r0, r4, #0
	bl func_08007874
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl func_08007CD8
	str r0, [r4, #4]
_0803AF7C:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
_0803AF82:
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #2
	bl func_080079E8
	ldr r3, [sp, #0x64]
	adds r3, #1
	str r3, [sp, #0x64]
	ldr r4, [sp, #0x54]
	cmp r3, r4
	blo _0803AF0C
_0803AF9E:
	ldr r7, [sp, #0x50]
	cmp r7, #0
	beq _0803AFA8
	cmp r7, #1
	beq _0803AFAC
_0803AFA8:
	movs r1, #0x10
	b _0803AFAE
_0803AFAC:
	movs r1, #0x11
_0803AFAE:
	mov r2, sb
	ldr r0, [r2]
	ldr r2, [r0, #0x48]
	mov r0, sb
	bl _call_via_r2
	adds r2, r0, #0
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	cmp r0, #0xf
	bhi _0803AFD6
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq _0803AFCE
	strb r2, [r0]
_0803AFCE:
	ldr r3, [sp, #0x60]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
_0803AFD6:
	movs r4, #0
	mov r8, r4
	movs r2, #0
	mov r7, sb
	ldr r3, [r7]
	ldr r0, [sp, #0x54]
	cmp r8, r0
	bhs _0803AFF6
	ldr r1, [sp, #0x48]
_0803AFE8:
	ldrh r0, [r1, #2]
	add r8, r0
	adds r1, #4
	adds r2, #1
	ldr r4, [sp, #0x54]
	cmp r2, r4
	blo _0803AFE8
_0803AFF6:
	ldr r1, [r3, #0x18]
	mov r0, sb
	bl _call_via_r1
	str r0, [sp, #0x5c]
	mov r7, sb
	ldr r0, [r7]
	ldr r1, [r0, #0x1c]
	mov r0, sb
	bl _call_via_r1
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x64]
	ldr r1, [sp, #0x88]
	cmp r0, r1
	bhs _0803B096
	mov r5, sp
_0803B01A:
	mov r0, sp
	mov r1, sl
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	mov r2, r8
	cmp r2, #0
	beq _0803B03A
	bl rand
	mov r1, r8
	bl __umodsi3
	b _0803B03C
_0803B03A:
	movs r0, #0
_0803B03C:
	cmp r0, #0
	beq _0803B050
	movs r3, #0x10
	ldrsh r4, [r5, r3]
	lsls r0, r0, #8
	strh r0, [r5, #0x10]
	mov r0, sp
	bl func_0805E8F0
	strh r4, [r5, #0x10]
_0803B050:
	add r4, sp, #0x14
	adds r0, r4, #0
	mov r1, sp
	ldr r2, [sp, #0x5c]
	mov r3, sb
	bl func_0803B454
	adds r2, r6, #0
	adds r2, #0xe8
	ldr r1, [r2]
	cmp r1, #0x1f
	bhi _0803B08A
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r2, r0
	cmp r0, #0
	beq _0803B084
	adds r1, r4, #0
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [sp, #0x2c]
	str r1, [r0]
_0803B084:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_0803B08A:
	ldr r4, [sp, #0x64]
	adds r4, #1
	str r4, [sp, #0x64]
	ldr r7, [sp, #0x88]
	cmp r4, r7
	blo _0803B01A
_0803B096:
	adds r0, r6, #0
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0803B0A8
func_0803B0A8: @ 0x0803B0A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r0, [r7]
	ldr r2, [r0]
	adds r1, r7, #0
	adds r1, #0xd4
	ldrb r1, [r1]
	ldr r2, [r2, #0x4c]
	bl _call_via_r2
	adds r2, r7, #0
	adds r2, #0xe8
	ldr r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r2, r0
	adds r0, r7, #0
	adds r0, #0xec
	cmp r0, r2
	beq _0803B0E0
_0803B0DA:
	adds r0, #0x1c
	cmp r0, r2
	bne _0803B0DA
_0803B0E0:
	adds r2, r7, #4
	ldr r1, [r7, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	adds r6, r2, r0
	adds r5, r2, #4
	cmp r5, r6
	beq _0803B10E
_0803B0F4:
	adds r4, r5, #0
	adds r4, #0x20
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	adds r5, #0x28
	cmp r5, r6
	bne _0803B0F4
_0803B10E:
	movs r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0803B11E
	adds r0, r7, #0
	bl __builtin_delete
_0803B11E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0803B128
func_0803B128: @ 0x0803B128
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	str r0, [sp, #0x18]
	adds r7, r1, #0
	adds r2, r0, #0
	adds r2, #4
	adds r5, r2, #4
	ldr r1, [r0, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r2, r0
	str r2, [sp, #0x1c]
	cmp r5, r2
	bne _0803B152
	b _0803B280
_0803B152:
	adds r0, r5, #0
	adds r0, #8
	ldr r4, [r5, #8]
	movs r6, #0
	cmp r4, #0
	beq _0803B160
	ldrh r6, [r0, #4]
_0803B160:
	adds r0, r5, #0
	adds r0, #0x28
	str r0, [sp, #0x20]
	cmp r6, #0
	bne _0803B16C
	b _0803B276
_0803B16C:
	subs r0, #8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	lsls r2, r2, #5
	ldr r1, _0803B1A8 @ =0x06010000
	adds r2, r2, r1
	mov r0, sp
	adds r1, r4, #0
	adds r3, r6, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq _0803B1AC
	cmp r1, #0
	beq _0803B1A0
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_0803B1A0:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b _0803B276
	.align 2, 0
_0803B1A8: .4byte 0x06010000
_0803B1AC:
	str r1, [sp, #0x24]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r1, [r7]
	ldr r6, [sp, #0x24]
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x10]
	add r2, sp, #0x14
	add r0, sp, #0x10
	cmp r4, #1
	bhs _0803B1C6
	adds r0, r2, #0
_0803B1C6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _0803B1E6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne _0803B1E2
	mov r0, sb
	bl func_080D3BC0
_0803B1E2:
	ldr r1, [r7]
	b _0803B1EA
_0803B1E6:
	movs r0, #0
	mov sb, r0
_0803B1EA:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov r3, r8
	adds r5, #0x28
	str r5, [sp, #0x20]
	b _0803B20C
_0803B1F8:
	cmp r3, #0
	beq _0803B208
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_0803B208:
	adds r2, #0x10
	adds r3, #0x10
_0803B20C:
	ldr r0, [sp, #0x24]
	cmp r2, r0
	bne _0803B1F8
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0803B22E
	cmp r4, #0
	beq _0803B22A
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
_0803B22A:
	adds r4, #0x10
	b _0803B250
_0803B22E:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq _0803B24E
_0803B236:
	cmp r2, #0
	beq _0803B246
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_0803B246:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne _0803B236
_0803B24E:
	adds r4, r2, #0
_0803B250:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq _0803B260
_0803B25A:
	adds r0, #0x10
	cmp r0, r2
	bne _0803B25A
_0803B260:
	cmp r1, #0
	beq _0803B26A
	adds r0, r1, #0
	bl free
_0803B26A:
	mov r0, sb
	add r0, r8
	mov r6, r8
	str r6, [r7]
	str r4, [r7, #4]
	str r0, [r7, #0xc]
_0803B276:
	ldr r5, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	beq _0803B280
	b _0803B152
_0803B280:
	ldr r1, [sp, #0x18]
	ldm r1!, {r0}
	ldr r3, [r0]
	ldr r1, [r1, #0x14]
	ldr r2, [sp, #0x18]
	adds r2, #0xd4
	ldrb r2, [r2]
	ldr r4, [r3, #0x54]
	movs r3, #1
	bl _call_via_r4
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803B2A8
func_0803B2A8: @ 0x0803B2A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, #0xe4
	ldrb r2, [r0]
	lsls r1, r2, #4
	ldr r0, _0803B2D8 @ =0x080F1948
	adds r1, r1, r0
	mov sl, r1
	movs r7, #0
	movs r0, #0
	mov r8, r0
	cmp r2, #0
	beq _0803B2D0
	cmp r2, #1
	beq _0803B2DC
_0803B2D0:
	movs r1, #2
	str r1, [sp]
	b _0803B2E0
	.align 2, 0
_0803B2D8: .4byte 0x080F1948
_0803B2DC:
	movs r0, #3
	str r0, [sp]
_0803B2E0:
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	bl _call_via_r1
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	bl _call_via_r1
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	mov sb, r0
	movs r6, #0
	cmp r6, sb
	bhs _0803B356
	adds r4, #0xec
	lsls r0, r7, #3
	mov r1, sl
	adds r5, r0, r1
_0803B30E:
	adds r0, r4, #0
	bl func_0805E8F0
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0803B324
	adds r0, r4, #0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl func_0803B474
_0803B324:
	movs r0, #1
	add r8, r0
	ldr r1, [sp]
	cmp r8, r1
	blo _0803B33E
	adds r5, #8
	adds r7, #1
	cmp r7, #1
	bls _0803B33A
	mov r5, sl
	movs r7, #0
_0803B33A:
	movs r0, #0
	mov r8, r0
_0803B33E:
	ldr r0, [r4, #0x14]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #4]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r4, #0x1c
	adds r6, #1
	cmp r6, sb
	blo _0803B30E
_0803B356:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803B368
func_0803B368: @ 0x0803B368
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sb, r0
	str r1, [sp, #0x14]
	adds r0, #0xe8
	ldr r0, [r0]
	lsrs r3, r0, #1
	mov r2, sb
	adds r2, #0xe6
	ldrb r1, [r2]
	cmp r1, #0
	beq _0803B38C
	cmp r1, #1
	beq _0803B394
_0803B38C:
	movs r4, #0
	mov sl, r3
	movs r0, #1
	b _0803B39A
_0803B394:
	adds r4, r3, #0
	mov sl, r0
	movs r0, #0
_0803B39A:
	strb r0, [r2]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r1, [r1, #0x18]
	bl _call_via_r1
	str r0, [sp, #0x18]
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [r0]
	ldr r1, [r1, #0x1c]
	bl _call_via_r1
	str r0, [sp, #0x1c]
	mov r8, r4
	cmp r8, sl
	bhs _0803B43E
	mov r0, sb
	adds r0, #4
	str r0, [sp, #0x20]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0xf0
	mov r1, sb
	adds r7, r0, r1
	adds r1, #0xd0
	str r1, [sp, #0x24]
_0803B3D4:
	ldrh r1, [r7, #8]
	lsls r1, r1, #2
	ldr r0, [r7]
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #0x12
	ldrsh r6, [r7, r2]
	ldr r1, [sp, #0x18]
	subs r6, r6, r1
	adds r6, #8
	movs r2, #0xff
	ands r6, r2
	subs r6, #8
	movs r1, #0x16
	ldrsh r5, [r7, r1]
	ldr r2, [sp, #0x1c]
	subs r5, r5, r2
	adds r5, #8
	movs r1, #0xff
	ands r5, r1
	subs r5, #8
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #3
	adds r4, #4
	ldr r2, [sp, #0x20]
	adds r4, r2, r4
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r2, sb
	ldr r1, [r2]
	movs r2, #0
	str r2, [sp]
	str r4, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0x55
	ldr r4, _0803B450 @ =func_030004DC
	bl _call_via_r4
	adds r7, #0x1c
	movs r1, #1
	add r8, r1
	cmp r8, sl
	blo _0803B3D4
_0803B43E:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B450: .4byte func_030004DC

	thumb_func_start func_0803B454
func_0803B454: @ 0x0803B454
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldm r1!, {r5, r6}
	stm r0!, {r5, r6}
	adds r0, r4, #0
	adds r1, r2, #0
	adds r2, r3, #0
	bl func_0803B474
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803B474
func_0803B474: @ 0x0803B474
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	bl rand
	movs r1, #0xf0
	bl __modsi3
	adds r4, r4, r0
	lsls r4, r4, #0x10
	str r4, [r6, #0x14]
	bl rand
	movs r1, #0xa0
	bl __modsi3
	adds r5, r5, r0
	lsls r5, r5, #0x10
	str r5, [r6, #0x18]
	bl rand
	movs r1, #0x90
	ands r1, r0
	adds r1, #0x60
	strh r1, [r6, #0x10]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803B4B0
func_0803B4B0: @ 0x0803B4B0
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _0803B4D8 @ =vtable_unk_080E76E8
	str r0, [r2]
	str r1, [r2, #4]
	adds r0, r2, #0
	adds r0, #8
	movs r1, #3
	movs r4, #0
	movs r3, #1
	rsbs r3, r3, #0
_0803B4C6:
	strb r4, [r0]
	adds r0, #0x18
	subs r1, #1
	cmp r1, r3
	bne _0803B4C6
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803B4D8: .4byte vtable_unk_080E76E8
_0803B4DC:
	.byte 0xF0, 0xB5, 0x88, 0xB0
	.byte 0x06, 0x1C, 0x0D, 0x1C, 0x04, 0x49, 0x50, 0x18, 0x0C, 0x28, 0x00, 0xD9, 0xD7, 0xE0, 0x80, 0x00
	.byte 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0xDF, 0x00, 0xFF, 0xFF, 0x00, 0xB5, 0x03, 0x08
	.byte 0x34, 0xB5, 0x03, 0x08, 0x70, 0xB5, 0x03, 0x08, 0xA8, 0xB5, 0x03, 0x08, 0x28, 0xB6, 0x03, 0x08
	.byte 0x34, 0xB6, 0x03, 0x08, 0x34, 0xB6, 0x03, 0x08, 0x34, 0xB6, 0x03, 0x08, 0x34, 0xB6, 0x03, 0x08
	.byte 0xBC, 0xB5, 0x03, 0x08, 0xD0, 0xB5, 0x03, 0x08, 0x50, 0xB6, 0x03, 0x08, 0x5C, 0xB6, 0x03, 0x08
	.byte 0x68, 0xB6, 0x03, 0x08, 0x68, 0x68, 0x14, 0x30, 0xCE, 0xF7, 0xF2, 0xFA, 0x00, 0x06, 0x00, 0x28
	.byte 0x0C, 0xD0, 0x68, 0x68, 0x03, 0x49, 0x40, 0x18, 0x00, 0x78, 0x40, 0x07, 0x00, 0x28, 0x05, 0xDA
	.byte 0x01, 0x4D, 0x8D, 0xE0, 0xC8, 0x21, 0x00, 0x00, 0x74, 0x19, 0x0F, 0x08, 0x68, 0x68, 0x03, 0x49
	.byte 0x40, 0x18, 0xD2, 0xF7, 0xBD, 0xFF, 0x05, 0x1C, 0x83, 0xE0, 0x00, 0x00, 0xD8, 0x1B, 0x00, 0x00
	.byte 0x68, 0x68, 0x14, 0x30, 0xCE, 0xF7, 0xC4, 0xFA, 0x6F, 0x46, 0x00, 0x28, 0x03, 0xD0, 0x5F, 0xF0
	.byte 0x39, 0xFE, 0x05, 0x1C, 0x00, 0xE0, 0x07, 0x4D, 0x28, 0x1C, 0x98, 0xF0, 0xF5, 0xFA, 0x04, 0x1C
	.byte 0x1F, 0x2C, 0x00, 0xD9, 0x1F, 0x24, 0x38, 0x1C, 0x29, 0x1C, 0x22, 0x1C, 0x98, 0xF0, 0xFA, 0xF9
	.byte 0x39, 0x19, 0x73, 0xE0, 0x80, 0x19, 0x0F, 0x08, 0x68, 0x68, 0x03, 0x49, 0x40, 0x18, 0x5F, 0xF0
	.byte 0x21, 0xFE, 0x05, 0x1C, 0x5D, 0xE0, 0x00, 0x00, 0x70, 0x1C, 0x00, 0x00, 0x68, 0x68, 0x03, 0x49
	.byte 0x40, 0x18, 0xD2, 0xF7, 0x8F, 0xFF, 0x05, 0x1C, 0x53, 0xE0, 0x00, 0x00, 0xD8, 0x1B, 0x00, 0x00
	.byte 0x68, 0x68, 0x08, 0x49, 0x40, 0x18, 0x64, 0xF0, 0xD5, 0xFE, 0x07, 0x1C, 0x00, 0x2F, 0x0B, 0xD0
	.byte 0x68, 0x68, 0x04, 0x49, 0x40, 0x18, 0x64, 0xF0, 0xCD, 0xFE, 0x63, 0xF0, 0x6F, 0xFA, 0x05, 0x1C
	.byte 0x3F, 0xE0, 0x00, 0x00, 0xD4, 0x1C, 0x00, 0x00, 0x0A, 0x4D, 0x28, 0x1C, 0x98, 0xF0, 0xBC, 0xFA
	.byte 0x04, 0x1C, 0x1F, 0x2C, 0x00, 0xD9, 0x1F, 0x24, 0x68, 0x46, 0x29, 0x1C, 0x22, 0x1C, 0x98, 0xF0
	.byte 0xC1, 0xF9, 0x69, 0x46, 0x08, 0x19, 0x07, 0x70, 0x01, 0x20, 0x30, 0x70, 0x30, 0x1D, 0x98, 0xF0
	.byte 0x83, 0xFA, 0x43, 0xE0, 0x84, 0x19, 0x0F, 0x08, 0x68, 0x68, 0x14, 0x30, 0xCE, 0xF7, 0x62, 0xFA
	.byte 0x05, 0x1C, 0x1E, 0xE0, 0x01, 0x24, 0x51, 0x00, 0x89, 0x18, 0xC9, 0x00, 0x49, 0x19, 0x03, 0x48
	.byte 0x09, 0x18, 0x68, 0x46, 0x98, 0xF0, 0x70, 0xFA, 0x34, 0x70, 0x23, 0xE0, 0x90, 0x14, 0xE8, 0xFF
	.byte 0x68, 0x68, 0x01, 0x49, 0x0B, 0xE0, 0x00, 0x00, 0xE0, 0x21, 0x00, 0x00, 0x68, 0x68, 0x01, 0x49
	.byte 0x05, 0xE0, 0x00, 0x00, 0xF0, 0x21, 0x00, 0x00, 0x68, 0x68, 0x88, 0x21, 0x89, 0x01, 0x45, 0x18
	.byte 0x28, 0x1C, 0x98, 0xF0, 0x81, 0xFA, 0x04, 0x1C, 0x1F, 0x2C, 0x00, 0xD9, 0x1F, 0x24, 0x68, 0x46
	.byte 0x29, 0x1C, 0x22, 0x1C, 0x98, 0xF0, 0x86, 0xF9, 0x68, 0x46, 0x01, 0x19, 0x00, 0x20, 0x08, 0x70
	.byte 0x01, 0x20, 0x30, 0x70, 0x30, 0x1D, 0x69, 0x46, 0x98, 0xF0, 0x46, 0xFA, 0x06, 0xE0, 0x69, 0x46
	.byte 0x00, 0x20, 0x08, 0x70, 0x30, 0x70, 0x30, 0x1D, 0x98, 0xF0, 0x3E, 0xFA, 0x30, 0x1C, 0x08, 0xB0
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start func_0803B6B8
func_0803B6B8: @ 0x0803B6B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x16
	bls _0803B6D0
	movs r4, #0x16
_0803B6D0:
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	mov r0, sp
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r7
	adds r0, #8
	mov r1, sp
	bl strcpy
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803B6FC
func_0803B6FC: @ 0x0803B6FC
	push {r4, lr}
	ldr r3, _0803B714 @ =vtable_unk_080E7748
	str r3, [r0]
	ldr r4, [r1]
	movs r3, #0
	str r3, [r1]
	str r4, [r0, #4]
	str r2, [r0, #8]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803B714: .4byte vtable_unk_080E7748

	thumb_func_start func_0803B718
func_0803B718: @ 0x0803B718
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r4, r1, #0
	movs r0, #0xe9
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	ldr r0, [r4, #4]
	movs r6, #0
	str r6, [r4, #4]
	str r0, [sp, #4]
	ldr r4, [r4, #8]
	ldr r0, _0803B828 @ =0x080E59CC
	str r0, [r5]
	ldr r0, _0803B82C @ =vtable_unk_080E7738
	adds r1, r5, #0
	stm r1!, {r0}
	adds r0, r1, #0
	bl func_08008444
	adds r0, r5, #0
	adds r0, #0xc
	bl __13AScriptEngine
	ldr r0, _0803B830 @ =vtable_unk_080E7708
	str r0, [r5, #8]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _0803B834 @ =vtable_unk_080E7714
	str r0, [r1]
	ldr r0, _0803B838 @ =vtable_unk_080E7728
	str r0, [r5]
	movs r0, #0xd7
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [sp, #4]
	str r6, [sp, #4]
	str r0, [r1]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #8
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	movs r1, #0
	bl func_08008B54
	movs r1, #0xde
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl func_08008B54
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #2
	bl func_08008B54
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #3
	bl func_08008B54
	movs r1, #0xe1
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #4
	bl func_08008B54
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r5, r1
	str r6, [r0]
	str r6, [r0, #4]
	adds r1, #8
	adds r0, r5, r1
	str r6, [r0, #4]
	adds r1, #8
	adds r0, r5, r1
	movs r2, #0
	strh r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	movs r0, #0xe8
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0803B83C @ =0x000003A1
	adds r0, r5, r1
	strb r2, [r0]
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0803B7FE
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
_0803B7FE:
	str r5, [sp]
	mov r0, sp
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	str r6, [r0]
	str r5, [r7]
	ldr r1, [sp]
	cmp r1, #0
	beq _0803B81C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
_0803B81C:
	adds r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803B828: .4byte 0x080E59CC
_0803B82C: .4byte vtable_unk_080E7738
_0803B830: .4byte vtable_unk_080E7708
_0803B834: .4byte vtable_unk_080E7714
_0803B838: .4byte vtable_unk_080E7728
_0803B83C: .4byte 0x000003A1

	thumb_func_start func_0803B840
func_0803B840: @ 0x0803B840
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrh r2, [r4, #0x1c]
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x16
	adds r2, #3
	ldr r1, _0803B8C0 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	ldr r0, [r4, #0x1c]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	lsls r0, r0, #0xc
	orrs r2, r0
	lsls r0, r2, #0x10
	orrs r2, r0
	ldrb r1, [r4, #0x1c]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x10
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	str r2, [sp, #0xc]
	add r0, sp, #0xc
	ldr r2, _0803B8C4 @ =0x010000A0
	bl CpuFastSet
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x10
	adds r0, r0, r5
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r2, [sp]
	ldrh r2, [r4, #0x1c]
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x16
	str r2, [sp, #4]
	ldr r2, [r4, #0x1c]
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1c
	str r2, [sp, #8]
	movs r2, #0
	bl func_08051320
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1c
	ldr r0, _0803B8C8 @ =0x080F9F78
	ldr r0, [r0]
	lsls r1, r1, #5
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #8
	bl CpuFastSet
	movs r0, #0
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803B8C0: .4byte 0x000003FF
_0803B8C4: .4byte 0x010000A0
_0803B8C8: .4byte 0x080F9F78

	thumb_func_start func_0803B8CC
func_0803B8CC: @ 0x0803B8CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	ldr r0, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	ldr r4, [sp, #0x34]
	ldr r6, [sp, #0x38]
	movs r7, #0
	mov sb, r7
	mov r7, ip
	strh r1, [r7]
	strh r2, [r7, #2]
	strh r3, [r7, #4]
	strh r0, [r7, #6]
	movs r0, #3
	ands r5, r0
	ldrb r0, [r7, #8]
	movs r1, #4
	rsbs r1, r1, #0
	mov r8, r1
	mov r2, r8
	ands r2, r0
	orrs r2, r5
	adds r0, r4, #0
	movs r7, #0x1f
	ands r0, r7
	lsls r0, r0, #2
	subs r1, #0x79
	ands r2, r1
	orrs r2, r0
	mov r8, r2
	mov r0, ip
	strb r2, [r0, #8]
	lsrs r1, r4, #3
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #7
	mov r2, ip
	ldrh r0, [r2, #8]
	ldr r3, _0803BA7C @ =0xFFFFFE7F
	ands r3, r0
	orrs r3, r1
	strh r3, [r2, #8]
	movs r0, #7
	ands r4, r0
	lsls r4, r4, #6
	adds r4, #0x14
	ldr r7, _0803BA80 @ =0x000003FF
	str r7, [sp]
	lsls r4, r4, #9
	ldr r5, [r2, #8]
	ldr r0, _0803BA84 @ =0xFFF801FF
	ands r5, r0
	orrs r5, r4
	str r5, [r2, #8]
	movs r0, #0xf
	ands r6, r0
	lsls r6, r6, #3
	ldrb r0, [r2, #0xa]
	movs r1, #0x79
	rsbs r1, r1, #0
	mov sl, r1
	mov r2, sl
	ands r2, r0
	orrs r2, r6
	mov sl, r2
	mov r6, ip
	strb r2, [r6, #0xa]
	movs r0, #0xff
	ldr r1, [sp, #0x3c]
	ands r1, r0
	lsls r1, r1, #7
	ldrh r2, [r6, #0xa]
	ldr r0, _0803BA88 @ =0xFFFF807F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #0xa]
	ldrb r1, [r6, #0xb]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6, #0xb]
	ldrb r1, [r6, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6, #0xc]
	movs r7, #0
	strb r7, [r6, #0xd]
	mov r2, ip
	adds r2, #0x10
	mov r0, sb
	str r0, [r6, #0x10]
	str r0, [r2, #4]
	ldr r0, _0803BA8C @ =vtable_unk_080E5BB4
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x10
	str r1, [r2, #0xc]
	mov r6, sb
	str r6, [r1, #4]
	ldr r0, _0803BA90 @ =vtable_unk_080E5BD8
	str r0, [r1, #8]
	mov r0, ip
	adds r0, #0x1c
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	lsls r3, r3, #0x17
	lsrs r3, r3, #0x1e
	lsls r5, r5, #0xd
	lsrs r7, r5, #0x16
	lsls r3, r3, #9
	adds r2, r3, r7
	ldr r0, _0803BA94 @ =0x080F9F74
	ldr r0, [r0]
	lsrs r5, r0, #5
	movs r4, #0
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne _0803B9C4
	movs r4, #1
_0803B9C4:
	mov r1, ip
	adds r1, #0x2c
	ldr r0, _0803BA98 @ =0x080F9F70
	ldr r3, [r0]
	lsls r2, r2, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	mov r6, sb
	mov r0, ip
	str r6, [r0, #0x2c]
	str r6, [r1, #4]
	ldr r0, _0803BA9C @ =vtable_unk_080E7768
	str r0, [r1, #8]
	str r3, [r1, #0xc]
	str r2, [r1, #0x10]
	strb r5, [r1, #0x14]
	strb r4, [r1, #0x15]
	movs r2, #0
	strb r2, [r1, #0x16]
	mov r6, ip
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _0803B9F8
	adds r0, #7
_0803B9F8:
	asrs r0, r0, #3
	str r0, [sp, #4]
	mov r2, ip
	movs r0, #2
	ldrsh r6, [r2, r0]
	cmp r6, #0
	bge _0803BA08
	adds r6, #7
_0803BA08:
	asrs r6, r6, #3
	str r6, [sp, #8]
	mov r1, ip
	ldrh r4, [r1, #4]
	lsrs r4, r4, #3
	ldrh r1, [r1, #6]
	lsrs r1, r1, #3
	mov r2, r8
	lsls r3, r2, #0x19
	lsrs r3, r3, #0x1b
	mov r6, sl
	lsls r5, r6, #0x19
	mov r2, ip
	adds r2, #0x44
	mov r0, sb
	mov r6, ip
	str r0, [r6, #0x44]
	str r0, [r2, #4]
	ldr r0, _0803BAA0 @ =vtable_unk_080E7758
	str r0, [r2, #8]
	ldr r0, [sp, #4]
	str r0, [r2, #0xc]
	ldr r6, [sp, #8]
	str r6, [r2, #0x10]
	str r4, [r2, #0x14]
	str r1, [r2, #0x18]
	movs r0, #0x1f
	ands r3, r0
	ldrb r1, [r2, #0x1c]
	subs r0, #0x3f
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x1c]
	ldr r1, [sp]
	ands r7, r1
	lsls r3, r7, #5
	ldrh r1, [r2, #0x1c]
	ldr r0, _0803BAA4 @ =0xFFFF801F
	ands r0, r1
	orrs r0, r3
	strh r0, [r2, #0x1c]
	lsrs r5, r5, #0x1c
	lsls r5, r5, #0xf
	ldr r0, [r2, #0x1c]
	ldr r1, _0803BAA8 @ =0xFFF87FFF
	ands r0, r1
	orrs r0, r5
	str r0, [r2, #0x1c]
	mov r0, ip
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803BA7C: .4byte 0xFFFFFE7F
_0803BA80: .4byte 0x000003FF
_0803BA84: .4byte 0xFFF801FF
_0803BA88: .4byte 0xFFFF807F
_0803BA8C: .4byte vtable_unk_080E5BB4
_0803BA90: .4byte vtable_unk_080E5BD8
_0803BA94: .4byte 0x080F9F74
_0803BA98: .4byte 0x080F9F70
_0803BA9C: .4byte vtable_unk_080E7768
_0803BAA0: .4byte vtable_unk_080E7758
_0803BAA4: .4byte 0xFFFF801F
_0803BAA8: .4byte 0xFFF87FFF

	thumb_func_start func_0803BAAC
func_0803BAAC: @ 0x0803BAAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov sb, r1
	adds r4, r2, #0
	mov sl, r3
	ldrb r2, [r7, #0xb]
	lsrs r1, r2, #7
	ldrb r0, [r7, #0xc]
	movs r3, #0x7f
	ands r0, r3
	lsls r0, r0, #1
	orrs r0, r1
	cmp r0, #1
	beq _0803BADC
	cmp r0, #1
	ble _0803BB18
	cmp r0, #2
	beq _0803BAFC
	b _0803BB18
_0803BADC:
	ldrb r0, [r7, #0xd]
	cmp r0, #8
	bls _0803BAF8
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r7, #0xb]
	ldrb r1, [r7, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r7, #0xc]
	b _0803BB18
_0803BAF8:
	adds r0, #1
	b _0803BB16
_0803BAFC:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _0803BB14
	adds r0, r3, #0
	ands r0, r2
	strb r0, [r7, #0xb]
	ldrb r1, [r7, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0xc]
	b _0803BB18
_0803BB14:
	subs r0, #1
_0803BB16:
	strb r0, [r7, #0xd]
_0803BB18:
	adds r3, r7, #0
	adds r3, #0x10
	movs r2, #0
	adds r1, r3, #0
	adds r1, #0x10
	ldr r0, [r3, #0xc]
	cmp r0, r1
	bne _0803BB2A
	movs r2, #1
_0803BB2A:
	cmp r2, #0
	bne _0803BB3A
	ldr r0, [r4, #8]
	ldr r2, [r0, #0x1c]
	adds r0, r4, #0
	adds r1, r3, #0
	bl _call_via_r2
_0803BB3A:
	ldrb r0, [r7, #0xb]
	lsrs r0, r0, #7
	ldrb r1, [r7, #0xc]
	movs r2, #0x7f
	ands r1, r2
	lsls r1, r1, #1
	orrs r1, r0
	cmp r1, #0
	bne _0803BB4E
	b _0803BCA8
_0803BB4E:
	movs r0, #0
	mov r8, r0
	ldrb r4, [r7, #8]
	lsls r2, r4, #0x1e
	lsrs r2, r2, #0x1e
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r2
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	mov r5, sb
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	lsls r3, r2, #1
	lsls r2, r2, #2
	mov r5, sp
	ldrh r1, [r7, #8]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1b
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x40
	orrs r1, r0
	strh r1, [r5]
	adds r3, #8
	add r3, sb
	strh r1, [r3]
	mov r0, sp
	mov r1, r8
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x10
	add r0, sb
	strh r1, [r0]
	mov r1, sp
	ldrh r5, [r7, #2]
	rsbs r0, r5, #0
	strh r0, [r1]
	adds r2, #0x12
	add r2, sb
	strh r0, [r2]
	ldrb r6, [r7, #0xd]
	strb r4, [r1, #4]
	cmp r6, #8
	bls _0803BBDC
	mov r3, sp
	ldrh r0, [r7]
	lsls r2, r0, #8
	ldrh r1, [r7, #4]
	adds r0, r0, r1
	orrs r2, r0
	strh r2, [r3]
	mov r0, sb
	adds r0, #0x40
	strh r2, [r0]
	mov r2, sp
	lsls r1, r5, #8
	ldrh r0, [r7, #6]
	adds r0, r5, r0
	orrs r1, r0
	strh r1, [r2]
	mov r0, sb
	adds r0, #0x44
	strh r1, [r0]
	b _0803BC44
_0803BBDC:
	ldrh r4, [r7, #6]
	adds r0, r4, #0
	muls r0, r6, r0
	movs r1, #9
	bl __udivsi3
	mov r8, r0
	movs r2, #2
	ldrsh r5, [r7, r2]
	adds r4, r5, r4
	adds r5, r5, r4
	lsrs r0, r5, #0x1f
	adds r5, r5, r0
	asrs r5, r5, #1
	mov r3, r8
	lsrs r0, r3, #0x1f
	add r0, r8
	asrs r0, r0, #1
	subs r5, r5, r0
	ldrh r4, [r7, #4]
	adds r0, r4, #0
	muls r0, r6, r0
	movs r1, #9
	bl __udivsi3
	movs r1, #0
	ldrsh r2, [r7, r1]
	adds r4, r2, r4
	adds r2, r2, r4
	lsrs r1, r2, #0x1f
	adds r2, r2, r1
	asrs r2, r2, #1
	lsrs r1, r0, #0x1f
	adds r1, r0, r1
	asrs r1, r1, #1
	subs r2, r2, r1
	mov r3, sp
	lsls r1, r2, #8
	adds r2, r2, r0
	orrs r1, r2
	strh r1, [r3]
	mov r0, sb
	adds r0, #0x40
	strh r1, [r0]
	mov r1, sp
	lsls r0, r5, #8
	add r5, r8
	orrs r0, r5
	strh r0, [r1]
	mov r1, sb
	adds r1, #0x44
	strh r0, [r1]
_0803BC44:
	mov r0, sp
	movs r1, #0x3f
	strh r1, [r0]
	mov r3, sb
	adds r3, #0x48
	strh r1, [r3]
	mov r2, sp
	ldrb r4, [r2, #4]
	lsls r0, r4, #0x1e
	lsrs r0, r0, #0x1e
	movs r4, #1
	lsls r4, r0
	bics r1, r4
	strh r1, [r2]
	mov r0, sb
	adds r0, #0x4a
	strh r1, [r0]
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #0x11
	lsrs r2, r0, #0x18
	cmp r2, #2
	bne _0803BC80
	ldrh r0, [r3]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _0803BCA4 @ =0x08083F40
	orrs r4, r0
	mov r5, sb
	str r4, [r5, #0x50]
_0803BC80:
	cmp r2, #1
	bne _0803BCD8
	adds r3, r7, #0
	adds r3, #0x2c
	ldr r1, [r7, #0x2c]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _0803BCD8
	mov r1, sl
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x10]
	mov r0, sl
	adds r1, r3, #0
	bl _call_via_r2
	b _0803BCD8
	.align 2, 0
_0803BCA4: .4byte 0x08083F40
_0803BCA8:
	ldrb r0, [r7, #8]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #0x80
	lsls r1, r1, #1
	lsls r1, r0
	mov r2, sb
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	adds r3, r7, #0
	adds r3, #0x2c
	ldr r1, [r7, #0x2c]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _0803BCD8
	mov r4, sl
	ldr r0, [r4, #8]
	ldr r2, [r0, #0x14]
	mov r0, sl
	adds r1, r3, #0
	bl _call_via_r2
_0803BCD8:
	ldrb r1, [r7, #0xb]
	lsrs r1, r1, #7
	ldrb r0, [r7, #0xc]
	movs r2, #0x7f
	ands r0, r2
	lsls r0, r0, #1
	orrs r0, r1
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803BCF8
func_0803BCF8: @ 0x0803BCF8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	lsrs r0, r0, #7
	ldrb r1, [r4, #0xc]
	movs r2, #0x7f
	ands r1, r2
	lsls r5, r1, #1
	orrs r5, r0
	cmp r5, #0
	bne _0803BD32
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x18
	adds r6, r4, #0
	adds r6, #0x10
	cmp r0, #1
	beq _0803BD26
	adds r1, r4, #0
	adds r1, #0x2c
	adds r0, r6, #0
	bl func_08009940
_0803BD26:
	adds r1, r4, #0
	adds r1, #0x44
	adds r0, r6, #0
	bl func_08009940
	strb r5, [r4, #0xd]
_0803BD32:
	ldrb r3, [r4, #0xb]
	lsrs r0, r3, #7
	ldrb r1, [r4, #0xc]
	movs r2, #0x7f
	ands r1, r2
	lsls r1, r1, #1
	orrs r1, r0
	cmp r1, #0
	blt _0803BD58
	cmp r1, #2
	bgt _0803BD58
	movs r0, #0x80
	orrs r0, r3
	strb r0, [r4, #0xb]
	ldrb r1, [r4, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0xc]
_0803BD58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803BD60
func_0803BD60: @ 0x0803BD60
	push {r4, lr}
	adds r4, r0, #0
	bl func_0803BCF8
	ldrb r0, [r4, #0xb]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0xb]
	ldrb r1, [r4, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0xc]
	movs r0, #9
	strb r0, [r4, #0xd]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_0803BD88
func_0803BD88: @ 0x0803BD88
	push {r4, lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0xb]
	lsrs r1, r3, #7
	ldrb r0, [r2, #0xc]
	movs r4, #0x7f
	ands r0, r4
	lsls r0, r0, #1
	orrs r0, r1
	cmp r0, #0
	beq _0803BDB2
	adds r0, r4, #0
	ands r0, r3
	strb r0, [r2, #0xb]
	ldrb r1, [r2, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0xc]
_0803BDB2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_0803BDB8
func_0803BDB8: @ 0x0803BDB8
	push {r4, lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0xb]
	lsrs r1, r3, #7
	ldrb r0, [r2, #0xc]
	movs r4, #0x7f
	ands r0, r4
	lsls r0, r0, #1
	orrs r0, r1
	cmp r0, #0
	beq _0803BDDE
	adds r0, r4, #0
	ands r0, r3
	strb r0, [r2, #0xb]
	ldrb r1, [r2, #0xc]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0xc]
_0803BDDE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_0803BDE4
func_0803BDE4: @ 0x0803BDE4
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start func_0803BDEC
func_0803BDEC: @ 0x0803BDEC
	ldrh r3, [r0]
	adds r3, r3, r1
	strh r3, [r0]
	ldrh r1, [r0, #2]
	adds r1, r1, r2
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start func_0803BDFC
func_0803BDFC: @ 0x0803BDFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	ldr r0, _0803BE4C @ =vtable_unk_080E7778
	str r0, [r4, #4]
	movs r0, #0x64
	bl __builtin_new
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r1, [sp, #0x40]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x44]
	str r1, [sp, #0x10]
	mov r1, r8
	mov r2, sb
	mov r3, sl
	bl func_0803B8CC
	str r0, [r4]
	adds r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803BE4C: .4byte vtable_unk_080E7778

	thumb_func_start func_0803BE50
func_0803BE50: @ 0x0803BE50
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0803BE98 @ =vtable_unk_080E7778
	str r0, [r5, #4]
	ldr r4, [r5]
	cmp r4, #0
	beq _0803BE84
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #2
	bl func_080098AC
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #2
	bl func_080098AC
	adds r0, r4, #0
	adds r0, #0x10
	movs r1, #2
	bl func_080098DC
	adds r0, r4, #0
	bl __builtin_delete
_0803BE84:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0803BE92
	adds r0, r5, #0
	bl __builtin_delete
_0803BE92:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE98: .4byte vtable_unk_080E7778

	thumb_func_start func_0803BE9C
func_0803BE9C: @ 0x0803BE9C
	ldr r0, [r0]
	ldrb r2, [r0, #0xb]
	lsrs r2, r2, #7
	ldrb r0, [r0, #0xc]
	movs r1, #0x7f
	ands r0, r1
	lsls r0, r0, #1
	orrs r0, r2
	bx lr
	.align 2, 0

	thumb_func_start func_0803BEB0
func_0803BEB0: @ 0x0803BEB0
	push {lr}
	ldr r0, [r0]
	bl func_0803BAAC
	pop {r1}
	bx r1

	thumb_func_start func_0803BEBC
func_0803BEBC: @ 0x0803BEBC
	push {lr}
	ldr r0, [r0]
	bl func_0803BCF8
	pop {r0}
	bx r0

	thumb_func_start func_0803BEC8
func_0803BEC8: @ 0x0803BEC8
	push {lr}
	ldr r0, [r0]
	bl func_0803BD60
	pop {r0}
	bx r0

	thumb_func_start func_0803BED4
func_0803BED4: @ 0x0803BED4
	push {lr}
	ldr r0, [r0]
	bl func_0803BD88
	pop {r0}
	bx r0

	thumb_func_start func_0803BEE0
func_0803BEE0: @ 0x0803BEE0
	push {lr}
	ldr r0, [r0]
	bl func_0803BDB8
	pop {r0}
	bx r0

	thumb_func_start func_0803BEEC
func_0803BEEC: @ 0x0803BEEC
	ldr r0, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start func_0803BEF4
func_0803BEF4: @ 0x0803BEF4
	ldr r0, [r0]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start func_0803BEFC
func_0803BEFC: @ 0x0803BEFC
	push {lr}
	ldr r0, [r0]
	bl func_0803BDE4
	pop {r0}
	bx r0

	thumb_func_start func_0803BF08
func_0803BF08: @ 0x0803BF08
	push {lr}
	ldr r0, [r0]
	bl func_0803BDEC
	pop {r0}
	bx r0
_0803BF14:
	.byte 0xF0, 0xB5, 0x05, 0x9C, 0x84, 0x61, 0x06, 0x9E, 0x07, 0x9D, 0x08, 0x9F
	.byte 0x00, 0x24, 0x04, 0x60, 0x44, 0x60, 0x10, 0x4C, 0x84, 0x60, 0xC1, 0x60, 0x02, 0x61, 0x43, 0x61
	.byte 0x1F, 0x21, 0x0E, 0x40, 0x02, 0x7F, 0x20, 0x21, 0x49, 0x42, 0x11, 0x40, 0x31, 0x43, 0x01, 0x77
	.byte 0x0A, 0x4A, 0x11, 0x1C, 0x0D, 0x40, 0x6D, 0x01, 0x82, 0x8B, 0x09, 0x49, 0x11, 0x40, 0x29, 0x43
	.byte 0x81, 0x83, 0x0F, 0x21, 0x0F, 0x40, 0xFB, 0x03, 0xC1, 0x69, 0x06, 0x4A, 0x11, 0x40, 0x19, 0x43
	.byte 0xC1, 0x61, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x58, 0x77, 0x0E, 0x08, 0xFF, 0x03, 0x00, 0x00
	.byte 0x1F, 0x80, 0xFF, 0xFF, 0xFF, 0x7F, 0xF8, 0xFF

	thumb_func_start func_0803BF78
func_0803BF78: @ 0x0803BF78
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r5, [sp, #0x24]
	ldr r6, [sp, #0x28]
	movs r0, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x88
	movs r3, #0xf0
	bl func_0803BDFC
	ldr r0, _0803BFC0 @ =vtable_unk_080E77A4
	str r0, [r4, #4]
	ldr r0, _0803BFC4 @ =0x0000041C
	bl __builtin_new
	bl func_080E0A94
	str r0, [r4, #8]
	movs r0, #0
	strb r6, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803BFC0: .4byte vtable_unk_080E77A4
_0803BFC4: .4byte 0x0000041C

	thumb_func_start func_0803BFC8
func_0803BFC8: @ 0x0803BFC8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0803BFEC @ =vtable_unk_080E77A4
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0803BFDE
	movs r1, #3
	bl func_080E0C38
_0803BFDE:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_0803BE50
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BFEC: .4byte vtable_unk_080E77A4
_0803BFF0:
	.byte 0x30, 0xB5, 0x83, 0xB0, 0x06, 0x9C, 0x07, 0x9D, 0x00, 0x94, 0x01, 0x95, 0x00, 0x24, 0x02, 0x94
	.byte 0x00, 0xF0, 0x12, 0xF8, 0x03, 0xB0, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start func_0803C00C
func_0803C00C: @ 0x0803C00C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x1c]
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	bl func_0803C028
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start func_0803C028
func_0803C028: @ 0x0803C028
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	adds r7, r0, #0
	adds r4, r1, #0
	str r2, [sp, #0x44]
	adds r1, r3, #0
	ldr r3, [sp, #0x98]
	ldr r5, [sp, #0x9c]
	ldr r2, [sp, #0x94]
	bl func_0803BEB0
	str r0, [sp, #0x48]
	cmp r0, #0
	bge _0803C04E
	b _0803C506
_0803C04E:
	cmp r0, #2
	bgt _0803C054
	b _0803C506
_0803C054:
	cmp r0, #3
	beq _0803C05A
	b _0803C506
_0803C05A:
	movs r0, #0
	str r0, [sp, #0x4c]
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq _0803C0DC
	ldrh r3, [r4, #8]
	adds r2, r3, #0
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1f
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1f
	orrs r1, r0
	cmp r1, #0
	beq _0803C0C8
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0803C08C
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _0803C088
	movs r0, #6
	b _0803C0A4
_0803C088:
	subs r0, #1
	b _0803C0A4
_0803C08C:
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _0803C0A6
	ldrb r0, [r7, #0xc]
	cmp r0, #6
	bne _0803C0A2
	add r1, sp, #0x4c
	ldrb r1, [r1]
	strb r1, [r7, #0xc]
	b _0803C0A6
_0803C0A2:
	adds r0, #1
_0803C0A4:
	strb r0, [r7, #0xc]
_0803C0A6:
	cmp r5, #0
	beq _0803C0B2
	adds r0, r5, #0
	movs r1, #0xcb
	bl func_08008B6C
_0803C0B2:
	ldr r0, _0803C0C4 @ =0x080F1A34
	ldrb r1, [r7, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	str r1, [sp, #0x4c]
	movs r0, #0x14
	strb r0, [r7, #0xe]
	b _0803C0DC
	.align 2, 0
_0803C0C4: .4byte 0x080F1A34
_0803C0C8:
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0803C0DC
	cmp r5, #0
	beq _0803C0DC
	adds r0, r5, #0
	movs r1, #0xc5
	bl func_08008B6C
_0803C0DC:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq _0803C142
	ldr r4, [r7, #8]
	ldr r0, [r4, #0x50]
	ldr r1, [r0, #0x20]
	ldr r3, [r1]
	ldrh r2, [r0, #0x2c]
	lsls r2, r2, #2
	ldr r0, [r0, #0x24]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r5, [sp, #0x14]
	adds r0, r4, #0
	adds r0, #0x30
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	add r1, sp, #0x14
	ldr r0, [sp, #0x14]
	movs r3, #0
	cmp r0, #0
	beq _0803C116
	ldrh r3, [r1, #4]
_0803C116:
	adds r1, r4, #0
	adds r1, #0x38
	lsls r0, r2, #5
	ldr r2, _0803C4D0 @ =0x05000200
	adds r0, r0, r2
	str r5, [r1, #0xc]
	str r0, [r1, #0x10]
	str r3, [r1, #0x14]
	ldr r3, [sp, #0x94]
	ldr r0, [r3, #8]
	ldr r2, [r0, #0x10]
	adds r0, r3, #0
	bl _call_via_r2
	ldr r1, _0803C4D4 @ =0x080F1A34
	ldrb r0, [r7, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x4c]
	movs r0, #0
	strb r0, [r7, #0xd]
_0803C142:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803C152
	movs r0, #0x28
	strb r0, [r7, #0xe]
_0803C152:
	ldrb r0, [r7, #0xe]
	cmp r0, #0x13
	bhi _0803C24E
	ldr r0, [r7, #8]
	ldrb r1, [r7, #0xc]
	lsls r1, r1, #4
	adds r1, #0x10
	mov r8, r1
	ldr r4, [r0, #0x50]
	adds r0, #0x30
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r6, r4, #0
	mov sb, r0
	adds r5, r6, #0
	adds r5, #0x20
	adds r0, r5, #0
	bl func_0805E8F0
	adds r4, r0, #0
	lsls r4, r4, #0x1e
	lsrs r4, r4, #0x1f
	ldr r1, [r6, #0x20]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r0, [r6, #0x24]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	cmp r4, #0
	beq _0803C1CE
	ldr r4, [sp, #0xc]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0xc
	ldr r0, [sp, #0xc]
	movs r3, #0
	cmp r0, #0
	beq _0803C1B2
	ldrh r3, [r1, #4]
_0803C1B2:
	adds r1, r6, #0
	adds r1, #8
	lsls r0, r2, #5
	ldr r5, _0803C4D8 @ =0x06010000
	adds r0, r0, r5
	str r4, [r1, #0xc]
	str r0, [r1, #0x10]
	str r3, [r1, #0x14]
	ldr r2, [sp, #0x94]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x94]
	bl _call_via_r2
_0803C1CE:
	ldr r0, [sp, #4]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r3, [sp, #0x24]
	lsls r0, r3, #7
	lsrs r0, r0, #0x17
	add r0, r8
	ldr r1, _0803C4DC @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #0x10
	ldr r2, _0803C4E0 @ =0xFE00FFFF
	ands r2, r3
	orrs r2, r0
	str r2, [sp, #0x24]
	add r4, sp, #0x24
	ldrb r0, [r4]
	adds r0, #0x96
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0803C4E4 @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x24]
	mov r3, sb
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #0xc
	ldr r2, _0803C4E8 @ =0xFFFF0FFF
	ldr r0, [r4, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #4]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, _0803C4EC @ =0xFFFFFC00
	ldr r1, [r4, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	ldr r1, [sp, #0x24]
	orrs r1, r0
	str r1, [sp, #0x24]
	ldr r5, [sp, #0x44]
	ldrb r2, [r5]
	cmp r2, #0x7f
	bhi _0803C24E
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r5, r0
	str r1, [r0]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r5]
_0803C24E:
	ldr r0, [r7, #8]
	mov sl, r0
	movs r1, #0
	mov sb, r1
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0x60]
	ldr r3, [sp, #0x4c]
	rsbs r3, r3, #0
	str r3, [sp, #0x68]
	mov r4, sp
	adds r4, #0x3c
	str r4, [sp, #0x64]
	movs r5, #0x10
	str r5, [sp, #0x6c]
_0803C26C:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r4, [r0, #0x54]
	mov r0, sl
	adds r0, #0x30
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r6, r4, #0
	mov r8, r0
	adds r5, r6, #0
	adds r5, #0x20
	adds r0, r5, #0
	bl func_0805E8F0
	adds r4, r0, #0
	lsls r4, r4, #0x1e
	lsrs r4, r4, #0x1f
	ldr r1, [r6, #0x20]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r0, [r6, #0x24]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	cmp r4, #0
	beq _0803C2E0
	ldr r4, [sp, #0xc]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0xc
	ldr r0, [sp, #0xc]
	movs r3, #0
	cmp r0, #0
	beq _0803C2C4
	ldrh r3, [r1, #4]
_0803C2C4:
	adds r1, r6, #0
	adds r1, #8
	lsls r0, r2, #5
	ldr r2, _0803C4D8 @ =0x06010000
	adds r0, r0, r2
	str r4, [r1, #0xc]
	str r0, [r1, #0x10]
	str r3, [r1, #0x14]
	ldr r3, [sp, #0x94]
	ldr r0, [r3, #8]
	ldr r2, [r0, #0x10]
	adds r0, r3, #0
	bl _call_via_r2
_0803C2E0:
	ldr r0, [sp, #4]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	ldr r3, [sp, #0x2c]
	lsls r0, r3, #7
	lsrs r0, r0, #0x17
	ldr r4, [sp, #0x6c]
	adds r0, r0, r4
	ldr r1, _0803C4DC @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #0x10
	ldr r2, _0803C4E0 @ =0xFE00FFFF
	ands r2, r3
	orrs r2, r0
	str r2, [sp, #0x2c]
	ldr r5, [sp, #0x60]
	ldrb r1, [r5]
	adds r1, #0x96
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0803C4E4 @ =0xFFFFFF00
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x2c]
	mov r0, r8
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #0xc
	add r4, sp, #0x2c
	ldr r0, [r4, #4]
	ldr r3, _0803C4E8 @ =0xFFFF0FFF
	ands r0, r3
	orrs r0, r1
	str r0, [r4, #4]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, _0803C4EC @ =0xFFFFFC00
	ldr r1, [r4, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #4]
	ldr r1, [sp, #0x2c]
	movs r5, #0x80
	lsls r5, r5, #5
	orrs r1, r5
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x44]
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi _0803C366
	lsls r0, r2, #3
	adds r0, #4
	ldr r3, [sp, #0x44]
	adds r0, r3, r0
	str r1, [r0]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
_0803C366:
	ldr r4, [sp, #0x6c]
	adds r4, #0x10
	str r4, [sp, #0x6c]
	movs r5, #1
	add sb, r5
	mov r0, sb
	cmp r0, #6
	bhi _0803C378
	b _0803C26C
_0803C378:
	ldr r7, [r7, #8]
	mov r8, r7
	ldr r1, [sp, #0x4c]
	cmp r1, #0
	beq _0803C3B0
	add r0, sp, #0x34
	movs r4, #0xc
	movs r5, #2
	strh r4, [r0]
	strh r5, [r0, #2]
	ldr r0, [sp, #0x34]
	mov r6, r8
	adds r6, #0x74
	adds r1, r6, #0
	movs r2, #0
	bl func_0804E7A0
	add r0, sp, #0x38
	strh r4, [r0]
	strh r5, [r0, #2]
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x4c]
	str r2, [sp]
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
_0803C3B0:
	mov r0, r8
	adds r0, #0x30
	ldr r1, [r0, #4]
	bl func_080074C0
	ldr r3, [sp, #0x68]
	ldr r4, [sp, #0x4c]
	orrs r3, r4
	mov r5, r8
	adds r5, #0x70
	str r5, [sp, #0x50]
	lsrs r1, r3, #0x1f
	str r1, [sp, #0x54]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x3c]
	str r2, [sp, #0x40]
	ldr r2, _0803C4F0 @ =0x3FFFFFFF
	ldr r1, [sp, #0x3c]
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	ldr r2, _0803C4F4 @ =0xFFFF3FFF
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r1, r2
	str r1, [sp, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	ldr r3, [sp, #0x64]
	ldr r1, [r3, #4]
	ldr r4, _0803C4E8 @ =0xFFFF0FFF
	ands r1, r4
	orrs r1, r0
	str r1, [r3, #4]
	ldr r0, [sp, #0x3c]
	ldr r5, _0803C4E4 @ =0xFFFFFF00
	ands r0, r5
	movs r1, #0x8e
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #0x3c]
	movs r4, #0
	mov r2, r8
	adds r2, #0x74
	str r2, [sp, #0x58]
_0803C41A:
	lsls r0, r4, #3
	ldr r3, [sp, #0x50]
	adds r0, r0, r3
	movs r5, #0xc1
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r8, r0
	lsls r0, r4, #5
	mov sl, r0
	adds r1, r4, #1
	str r1, [sp, #0x5c]
	ldr r2, [sp, #0x54]
	cmp r2, #0
	beq _0803C498
	movs r3, #0
	lsls r2, r4, #1
	lsls r1, r4, #2
	movs r4, #0x80
	mov sb, r4
	adds r1, r1, r2
	lsls r1, r1, #3
	ldr r5, [sp, #0x50]
	movs r4, #0xca
	lsls r4, r4, #2
	adds r0, r5, r4
	adds r4, r1, r0
	mov r5, r8
	lsls r0, r5, #5
	ldr r5, _0803C4D8 @ =0x06010000
	adds r7, r0, r5
	lsls r2, r2, #6
	ldr r0, [sp, #0x58]
	adds r6, r2, r0
	ldr r2, [sp, #0x50]
	movs r5, #0xc7
	lsls r5, r5, #2
	adds r0, r2, r5
	adds r5, r1, r0
_0803C46C:
	str r6, [r4]
	str r7, [r4, #4]
	mov r0, sb
	str r0, [r4, #8]
	ldr r1, [sp, #0x94]
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x10]
	adds r0, r1, #0
	adds r1, r5, #0
	str r3, [sp, #0x70]
	bl _call_via_r2
	adds r4, #0x18
	adds r7, #0x80
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r6, r6, r2
	adds r5, #0x18
	ldr r3, [sp, #0x70]
	adds r3, #1
	cmp r3, #1
	bls _0803C46C
_0803C498:
	mov r3, r8
	lsls r1, r3, #0x16
	lsrs r1, r1, #0x16
	ldr r2, _0803C4EC @ =0xFFFFFC00
	ldr r4, [sp, #0x64]
	ldr r0, [r4, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #4]
	mov r1, sl
	adds r1, #0x88
	ldr r0, _0803C4DC @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0803C4E0 @ =0xFE00FFFF
	ldr r2, [sp, #0x3c]
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x3c]
	ldr r5, [sp, #0x44]
	ldrb r3, [r5]
	cmp r3, #0x7f
	bhi _0803C500
	lsls r0, r3, #3
	adds r0, #4
	adds r0, r5, r0
	str r2, [r0]
	b _0803C4F8
	.align 2, 0
_0803C4D0: .4byte 0x05000200
_0803C4D4: .4byte 0x080F1A34
_0803C4D8: .4byte 0x06010000
_0803C4DC: .4byte 0x000001FF
_0803C4E0: .4byte 0xFE00FFFF
_0803C4E4: .4byte 0xFFFFFF00
_0803C4E8: .4byte 0xFFFF0FFF
_0803C4EC: .4byte 0xFFFFFC00
_0803C4F0: .4byte 0x3FFFFFFF
_0803C4F4: .4byte 0xFFFF3FFF
_0803C4F8:
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	adds r0, r3, #1
	strb r0, [r5]
_0803C500:
	ldr r4, [sp, #0x5c]
	cmp r4, #2
	bls _0803C41A
_0803C506:
	ldr r0, [sp, #0x48]
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0803C518
func_0803C518: @ 0x0803C518
	push {r4, lr}
	adds r4, r0, #0
	bl func_0803BEBC
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xf]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_0803C52C
func_0803C52C: @ 0x0803C52C
	push {r4, lr}
	adds r4, r0, #0
	bl func_0803BEC8
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xf]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_0803C540
func_0803C540: @ 0x0803C540
	ldrb r0, [r0, #0xc]
	bx lr

	thumb_func_start func_0803C544
func_0803C544: @ 0x0803C544
	movs r1, #0
	strb r1, [r0, #0xf]
	bx lr
	.align 2, 0

	thumb_func_start func_0803C54C
func_0803C54C: @ 0x0803C54C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r5, [sp, #0x20]
	movs r0, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x88
	movs r3, #0x70
	bl func_0803BDFC
	ldr r0, _0803C584 @ =vtable_unk_080E77E0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #8
	bl func_0803C5B0
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803C584: .4byte vtable_unk_080E77E0

	thumb_func_start func_0803C588
func_0803C588: @ 0x0803C588
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0803C5AC @ =vtable_unk_080E77E0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #8
	movs r1, #2
	bl func_0803C7A0
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_0803BE50
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C5AC: .4byte vtable_unk_080E77E0

	thumb_func_start func_0803C5B0
func_0803C5B0: @ 0x0803C5B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #0x20]
	movs r0, #0xd7
	lsls r0, r0, #2
	bl __builtin_new
	adds r7, r0, #0
	ldr r1, _0803C78C @ =0x0875B444
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x30
	ldr r1, _0803C790 @ =0x086678A0
	bl func_0805E6CC
	adds r4, r7, #0
	adds r4, #0x60
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	adds r0, r7, #0
	adds r0, #0x68
	movs r4, #0
	str r4, [r7, #0x68]
	str r4, [r0, #4]
	ldr r1, _0803C794 @ =vtable_unk_080E77D0
	mov r8, r1
	str r1, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	adds r0, #0x18
	movs r6, #1
	strb r6, [r0]
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r5, r7, r2
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r5, #4]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	strb r6, [r0]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r7, r1
	str r4, [r0]
	str r4, [r0, #4]
	mov r2, r8
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r5, #4]
	movs r1, #0xac
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sb, r1
	strb r6, [r1]
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r7, r2
	str r4, [r0]
	str r4, [r0, #4]
	mov r1, r8
	str r1, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	adds r2, #0x18
	adds r0, r7, r2
	strb r4, [r0]
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r5, #4]
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r7, r1
	str r4, [r0]
	str r4, [r0, #4]
	mov r2, r8
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	adds r1, #0x18
	adds r0, r7, r1
	strb r6, [r0]
	ldr r2, _0803C798 @ =0x000002F1
	adds r0, r7, r2
	strb r4, [r0]
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007128
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r5, #4]
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r0, r7, r1
	str r4, [r0]
	str r4, [r0, #4]
	mov r2, r8
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	movs r0, #0xc5
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r5, #4]
	movs r1, #0xc7
	lsls r1, r1, #2
	adds r0, r7, r1
	str r4, [r0]
	str r4, [r0, #4]
	mov r2, r8
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	adds r1, #0x18
	adds r0, r7, r1
	strb r6, [r0]
	movs r2, #0xce
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r5, #4]
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r7, r1
	str r4, [r0]
	str r4, [r0, #4]
	mov r2, r8
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	adds r1, #0x18
	adds r0, r7, r1
	strb r6, [r0]
	ldr r1, _0803C79C @ =0x0875A440
	movs r2, #0xe8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	mov r0, sl
	strb r6, [r0]
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	movs r1, #0xa2
	lsls r1, r1, #2
	adds r0, r7, r1
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r2, sb
	strb r6, [r2]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r7, r1
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r2, sb
	strb r6, [r2]
	ldr r0, [sp, #0x20]
	str r7, [r0]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803C78C: .4byte 0x0875B444
_0803C790: .4byte 0x086678A0
_0803C794: .4byte vtable_unk_080E77D0
_0803C798: .4byte 0x000002F1
_0803C79C: .4byte 0x0875A440

	thumb_func_start func_0803C7A0
func_0803C7A0: @ 0x0803C7A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0803C7B2
	movs r1, #3
	bl func_080E0D70
_0803C7B2:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0803C7C0
	adds r0, r4, #0
	bl __builtin_delete
_0803C7C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803C7C8
func_0803C7C8: @ 0x0803C7C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	mov sb, r1
	mov sl, r2
	mov r8, r3
	ldr r6, [r0]
	adds r2, r6, #0
	adds r2, #0x60
	ldr r1, [r2, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _0803C7EC
	b _0803CD28
_0803C7EC:
	adds r0, r2, #0
	bl func_080074C0
	str r0, [sp, #0x58]
	adds r7, r6, #0
	adds r7, #0x80
	ldrb r0, [r7]
	cmp r0, #0
	beq _0803C83A
	adds r4, r6, #0
	adds r4, #0x68
	ldr r1, [r6, #0x68]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	cmp r5, #0
	bne _0803C83A
	mov r0, sp
	adds r1, r6, #0
	movs r2, #0
	bl func_0805E790
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x58]
	lsls r0, r1, #5
	ldr r1, _0803CBC8 @ =0x05000200
	adds r0, r0, r1
	movs r1, #0x20
	str r2, [r4, #0xc]
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x8c]
	adds r1, r4, #0
	bl _call_via_r2
	strb r5, [r7]
_0803C83A:
	mov r0, sb
	adds r0, #4
	str r0, [sp, #0x5c]
	mov r1, sl
	adds r1, #4
	str r1, [sp, #0x60]
	adds r7, r6, #0
	adds r7, #0x84
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r2, r6, r0
	ldr r1, [r2, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _0803C922
	adds r0, r2, #0
	bl func_08007D4C
	mov sb, r0
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r5, r6, r1
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803C8A2
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r3, r6, r2
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	cmp r4, #0
	bne _0803C8A2
	mov r1, sb
	lsls r0, r1, #5
	ldr r2, _0803CBCC @ =0x06010000
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	str r7, [r3, #0xc]
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	ldr r1, [sp, #0x8c]
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x10]
	adds r0, r1, #0
	adds r1, r3, #0
	bl _call_via_r2
	strb r4, [r5]
_0803C8A2:
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	movs r1, #0x80
	lsls r1, r1, #5
	ldr r0, [sp, #0x20]
	orrs r0, r1
	ldr r1, _0803CBD0 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, _0803CBD4 @ =0x3FFFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r2, [sp, #0x60]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0803CBD8 @ =0xFFFFFF00
	ands r0, r2
	orrs r0, r1
	ldr r1, _0803CBDC @ =0x000001FF
	ldr r2, [sp, #0x5c]
	ands r1, r2
	lsls r1, r1, #0x10
	ldr r2, _0803CBE0 @ =0xFE00FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x20]
	mov r1, sb
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	ldr r2, _0803CBE4 @ =0xFFFFFC00
	add r3, sp, #0x20
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r2, [sp, #0x58]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	ldr r2, _0803CBE8 @ =0xFFFF0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	mov r0, r8
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi _0803C922
	lsls r0, r2, #3
	adds r0, #4
	add r0, r8
	ldr r1, [sp, #0x20]
	str r1, [r0]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	mov r1, r8
	strb r0, [r1]
_0803C922:
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r2, r2, r6
	mov sb, r2
	ldr r5, [sp, #0x5c]
	adds r5, #0x20
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r1, [r2, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _0803CA06
	adds r0, r2, #0
	bl func_08007D4C
	mov sl, r0
	movs r1, #0xac
	lsls r1, r1, #2
	adds r7, r6, r1
	ldrb r0, [r7]
	cmp r0, #0
	beq _0803C988
	movs r2, #0xad
	lsls r2, r2, #2
	adds r3, r6, r2
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	cmp r4, #0
	bne _0803C988
	mov r1, sl
	lsls r0, r1, #5
	ldr r2, _0803CBCC @ =0x06010000
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sb
	str r2, [r3, #0xc]
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	ldr r1, [sp, #0x8c]
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x10]
	adds r0, r1, #0
	adds r1, r3, #0
	bl _call_via_r2
	strb r4, [r7]
_0803C988:
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #5
	ldr r0, [sp, #0x28]
	orrs r0, r1
	ldr r1, _0803CBD0 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, _0803CBD4 @ =0x3FFFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r2, [sp, #0x60]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0803CBD8 @ =0xFFFFFF00
	ands r0, r2
	orrs r0, r1
	ldr r1, _0803CBDC @ =0x000001FF
	ands r5, r1
	lsls r2, r5, #0x10
	ldr r1, _0803CBE0 @ =0xFE00FFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x28]
	mov r1, sl
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	ldr r2, _0803CBE4 @ =0xFFFFFC00
	add r3, sp, #0x28
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r2, [sp, #0x58]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	ldr r2, _0803CBE8 @ =0xFFFF0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	mov r0, r8
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi _0803CA06
	lsls r0, r2, #3
	adds r0, #4
	add r0, r8
	ldr r1, [sp, #0x28]
	str r1, [r0]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	mov r1, r8
	strb r0, [r1]
_0803CA06:
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp, #0x64]
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [sp, #0x64]
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r2, r6, r1
	ldr r1, [r2, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _0803CB02
	adds r0, r2, #0
	bl func_08007D4C
	mov sl, r0
	movs r2, #0xbc
	lsls r2, r2, #2
	adds r2, r2, r6
	mov sb, r2
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803CA9A
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r5, r6, r0
	ldr r1, [r5]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r7, r0, #0x1f
	cmp r7, #0
	bne _0803CA9A
	movs r1, #0xb3
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r2, [r0]
	ldr r4, [r6]
	add r0, sp, #0x30
	ldr r3, [r4, #0xc]
	adds r1, r6, #0
	bl _call_via_r3
	ldr r0, [sp, #0x30]
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r4, #0x10]
	adds r1, r6, #0
	bl _call_via_r3
	ldr r2, [sp, #8]
	mov r1, sl
	lsls r0, r1, #5
	ldr r1, _0803CBCC @ =0x06010000
	adds r0, r0, r1
	movs r1, #0x80
	str r2, [r5, #0xc]
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x8c]
	adds r1, r5, #0
	bl _call_via_r2
	mov r0, sb
	strb r7, [r0]
_0803CA9A:
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x68]
	str r1, [sp, #0x38]
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x60]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0803CBD8 @ =0xFFFFFF00
	ldr r0, [sp, #0x38]
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x5c]
	adds r1, #0x40
	ldr r2, _0803CBDC @ =0x000001FF
	ands r1, r2
	lsls r1, r1, #0x10
	ldr r2, _0803CBE0 @ =0xFE00FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x38]
	mov r1, sl
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	ldr r2, _0803CBE4 @ =0xFFFFFC00
	add r3, sp, #0x38
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r2, [sp, #0x58]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	ldr r2, _0803CBE8 @ =0xFFFF0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	mov r0, r8
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi _0803CB02
	lsls r0, r2, #3
	adds r0, #4
	add r0, r8
	ldr r1, [sp, #0x38]
	str r1, [r0]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	mov r1, r8
	strb r0, [r1]
_0803CB02:
	movs r2, #0xc5
	lsls r2, r2, #2
	adds r3, r6, r2
	ldr r1, [r3, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _0803CB14
	b _0803CD28
_0803CB14:
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _0803CB26
	b _0803CD28
_0803CB26:
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x68]
	str r1, [sp, #0x48]
	str r2, [sp, #0x4c]
	ldr r2, [sp, #0x60]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0803CBD8 @ =0xFFFFFF00
	ldr r0, [sp, #0x48]
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x5c]
	adds r1, #0x58
	ldr r2, _0803CBDC @ =0x000001FF
	ands r1, r2
	lsls r1, r1, #0x10
	ldr r2, _0803CBE0 @ =0xFE00FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x48]
	ldr r1, _0803CBEC @ =0x000002F1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803CB5A
	b _0803CC72
_0803CB5A:
	ldr r1, [r3, #4]
	adds r0, r3, #0
	bl func_08007D4C
	mov sb, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	mov sl, r0
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r7, r6, r2
	ldrb r0, [r7]
	cmp r0, #0
	beq _0803CC32
	ldr r1, _0803CBF0 @ =0x000002F2
	adds r0, r6, r1
	ldrh r2, [r0]
	adds r5, r6, #0
	adds r5, #0x30
	ldr r4, [r6, #0x30]
	add r0, sp, #0x40
	ldr r3, [r4, #0xc]
	adds r1, r5, #0
	bl _call_via_r3
	ldr r0, [sp, #0x40]
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r4, #0x10]
	adds r1, r5, #0
	bl _call_via_r3
	movs r2, #0xc7
	lsls r2, r2, #2
	adds r3, r6, r2
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _0803CBFE
	ldr r2, [sp, #8]
	mov r1, sb
	lsls r0, r1, #5
	ldr r1, _0803CBCC @ =0x06010000
	adds r0, r0, r1
	movs r1, #0x80
	str r2, [r3, #0xc]
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #8]
	b _0803CBF4
	.align 2, 0
_0803CBC8: .4byte 0x05000200
_0803CBCC: .4byte 0x06010000
_0803CBD0: .4byte 0xFFFF3FFF
_0803CBD4: .4byte 0x3FFFFFFF
_0803CBD8: .4byte 0xFFFFFF00
_0803CBDC: .4byte 0x000001FF
_0803CBE0: .4byte 0xFE00FFFF
_0803CBE4: .4byte 0xFFFFFC00
_0803CBE8: .4byte 0xFFFF0FFF
_0803CBEC: .4byte 0x000002F1
_0803CBF0: .4byte 0x000002F2
_0803CBF4:
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x8c]
	adds r1, r3, #0
	bl _call_via_r2
_0803CBFE:
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r3, r6, r0
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _0803CC2E
	ldr r2, [sp, #0x10]
	mov r1, sl
	lsls r0, r1, #5
	ldr r1, _0803CD38 @ =0x05000200
	adds r0, r0, r1
	movs r1, #0x20
	str r2, [r3, #0xc]
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x8c]
	adds r1, r3, #0
	bl _call_via_r2
_0803CC2E:
	movs r0, #0
	strb r0, [r7]
_0803CC32:
	mov r1, sb
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	ldr r2, _0803CD3C @ =0xFFFFFC00
	add r3, sp, #0x48
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	mov r2, sl
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	ldr r2, _0803CD40 @ =0xFFFF0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	mov r0, r8
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi _0803CC72
	lsls r0, r2, #3
	adds r0, #4
	add r0, r8
	ldr r1, [sp, #0x48]
	str r1, [r0]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	mov r1, r8
	strb r0, [r1]
_0803CC72:
	movs r0, #0xce
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r1, [r2, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _0803CD28
	adds r0, r2, #0
	bl func_08007D4C
	adds r7, r0, #0
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r1, r1, r6
	mov sl, r1
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803CCEC
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r5, r6, r2
	ldr r1, [r5]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov sb, r0
	cmp r0, #0
	bne _0803CCEC
	ldr r4, [r6]
	add r0, sp, #0x50
	ldr r3, [r4, #0xc]
	adds r1, r6, #0
	movs r2, #5
	bl _call_via_r3
	ldr r0, [sp, #0x50]
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r4, #0x10]
	adds r1, r6, #0
	bl _call_via_r3
	ldr r2, [sp, #8]
	lsls r0, r7, #5
	ldr r1, _0803CD44 @ =0x06010000
	adds r0, r0, r1
	movs r1, #0x80
	str r2, [r5, #0xc]
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x8c]
	adds r1, r5, #0
	bl _call_via_r2
	mov r1, sb
	mov r0, sl
	strb r1, [r0]
_0803CCEC:
	add r3, sp, #0x48
	ldr r2, _0803CD48 @ =0x000003FF
	adds r0, r2, #0
	ands r7, r0
	ldrh r1, [r3, #4]
	ldr r0, _0803CD3C @ =0xFFFFFC00
	ands r0, r1
	orrs r0, r7
	strh r0, [r3, #4]
	ldr r0, [sp, #0x58]
	lsls r2, r0, #4
	ldrb r1, [r3, #5]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #5]
	mov r1, r8
	ldrb r2, [r1]
	cmp r2, #0x7f
	bhi _0803CD28
	lsls r0, r2, #3
	adds r0, #4
	add r0, r8
	ldr r1, [sp, #0x48]
	str r1, [r0]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	mov r2, r8
	strb r0, [r2]
_0803CD28:
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CD38: .4byte 0x05000200
_0803CD3C: .4byte 0xFFFFFC00
_0803CD40: .4byte 0xFFFF0FFF
_0803CD44: .4byte 0x06010000
_0803CD48: .4byte 0x000003FF

	thumb_func_start func_0803CD4C
func_0803CD4C: @ 0x0803CD4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r1, [sp, #0x20]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x24]
	ldr r7, [r0]
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0803CD7E
	cmp r0, #1
	ble _0803CD78
	cmp r0, #2
	beq _0803CD84
	cmp r0, #3
	beq _0803CD8A
_0803CD78:
	movs r5, #0xb
	movs r6, #0xc
	b _0803CD8E
_0803CD7E:
	movs r5, #0xd
	movs r6, #0xe
	b _0803CD8E
_0803CD84:
	movs r5, #0xf
	movs r6, #0x10
	b _0803CD8E
_0803CD8A:
	movs r5, #0x11
	movs r6, #0x12
_0803CD8E:
	adds r0, r7, #0
	adds r0, #0x84
	lsls r1, r5, #5
	ldr r2, _0803CE30 @ =0x0875A440
	mov sl, r2
	add r1, sl
	movs r2, #0x20
	bl memcpy
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r4]
	lsls r1, r6, #5
	add r1, sl
	adds r0, r7, #0
	adds r0, #0xa4
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	strb r0, [r4]
	ldr r1, [sp, #0x20]
	ldrb r3, [r1, #1]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	adds r5, r0, #0
	ldrb r2, [r1]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1e
	adds r2, #6
	lsls r1, r3, #4
	subs r1, r1, r3
	lsls r1, r1, #1
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r5
	subs r1, #1
	mov sb, r4
	cmp r1, #6
	bls _0803CDFA
	adds r0, r1, #0
	movs r1, #7
	bl __umodsi3
	adds r1, r0, #0
_0803CDFA:
	movs r0, #7
	adds r6, r0, #0
	ands r6, r1
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r5, r0, #0
	cmp r4, #0
	ble _0803CE34
	lsls r1, r4, #5
	add r1, sl
	adds r0, r7, #0
	adds r0, #0xc4
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	mov r2, sb
	strb r0, [r2]
	b _0803CE50
	.align 2, 0
_0803CE30: .4byte 0x0875A440
_0803CE34:
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	adds r0, r7, #0
	adds r0, #0xc4
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r2, r8
	mov r1, sb
	strb r2, [r1]
_0803CE50:
	lsls r1, r5, #5
	ldr r0, _0803CE74 @ =0x0875A440
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0xe4
	movs r2, #0x20
	bl memcpy
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	cmp r6, #6
	bhi _0803CE98
	lsls r0, r6, #2
	ldr r1, _0803CE78 @ =_0803CE7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803CE74: .4byte 0x0875A440
_0803CE78: .4byte _0803CE7C
_0803CE7C: @ jump table
	.4byte _0803CE98 @ case 0
	.4byte _0803CEA4 @ case 1
	.4byte _0803CEB0 @ case 2
	.4byte _0803CEBC @ case 3
	.4byte _0803CEC8 @ case 4
	.4byte _0803CED4 @ case 5
	.4byte _0803CEE0 @ case 6
_0803CE98:
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0x61
	str r0, [sp, #4]
	movs r0, #0x62
	b _0803CEEA
_0803CEA4:
	movs r0, #0x63
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	movs r0, #0x65
	b _0803CEEA
_0803CEB0:
	movs r0, #0x66
	str r0, [sp]
	movs r0, #0x67
	str r0, [sp, #4]
	movs r0, #0x68
	b _0803CEEA
_0803CEBC:
	movs r0, #0x69
	str r0, [sp]
	movs r0, #0x6a
	str r0, [sp, #4]
	movs r0, #0x6b
	b _0803CEEA
_0803CEC8:
	movs r0, #0x6c
	str r0, [sp]
	movs r0, #0x6d
	str r0, [sp, #4]
	movs r0, #0x6e
	b _0803CEEA
_0803CED4:
	movs r0, #0x6f
	str r0, [sp]
	movs r0, #0x70
	str r0, [sp, #4]
	movs r0, #0x71
	b _0803CEEA
_0803CEE0:
	movs r0, #0x72
	str r0, [sp]
	movs r0, #0x73
	str r0, [sp, #4]
	movs r0, #0x74
_0803CEEA:
	str r0, [sp, #8]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r1, [sp]
	lsls r1, r1, #5
	ldr r2, _0803CF90 @ =0x0875A440
	mov r8, r2
	add r1, r8
	movs r2, #0x20
	bl memcpy
	movs r0, #0xac
	lsls r0, r0, #2
	adds r4, r7, r0
	movs r6, #1
	strb r6, [r4]
	ldr r1, [sp, #4]
	lsls r1, r1, #5
	add r1, r8
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	strb r6, [r4]
	ldr r1, [sp, #8]
	lsls r1, r1, #5
	add r1, r8
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	strb r6, [r4]
	ldr r1, [sp, #0x20]
	ldr r0, [r1]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x1b
	adds r5, r0, #0
	movs r1, #0x1e
	str r4, [sp, #0x2c]
	cmp r5, #0xb
	bhi _0803CF48
	movs r1, #0x1c
_0803CF48:
	lsls r1, r1, #5
	add r1, r8
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	mov r0, sb
	strb r6, [r0]
	movs r4, #0xc
	cmp r5, #0xc
	beq _0803CF6A
	adds r4, r5, #0
	cmp r4, #0xb
	bls _0803CF6A
	subs r4, #0xc
_0803CF6A:
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r4, r0, #0
	cmp r5, #0
	ble _0803CF94
	lsls r1, r5, #5
	ldr r0, _0803CF90 @ =0x0875A440
	adds r1, r1, r0
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r7, r2
	b _0803CFA6
	.align 2, 0
_0803CF90: .4byte 0x0875A440
_0803CF94:
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r1, sp
_0803CFA6:
	movs r2, #0x20
	bl memcpy
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	lsls r1, r4, #5
	ldr r2, _0803D050 @ =0x0875A440
	mov sl, r2
	add r1, sl
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	movs r0, #1
	mov r8, r0
	mov r2, r8
	mov r1, sb
	strb r2, [r1]
	ldr r1, [sp, #0x20]
	ldr r0, [r1]
	lsls r0, r0, #5
	lsrs r0, r0, #0x1a
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r4, r0, #0
	lsls r5, r5, #5
	add r5, sl
	movs r2, #0x8a
	lsls r2, r2, #2
	adds r6, r7, r2
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldr r2, [sp, #0x2c]
	strb r0, [r2]
	lsls r4, r4, #5
	add r4, sl
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldr r2, [sp, #0x2c]
	strb r0, [r2]
	ldr r1, [sp, #0x24]
	cmp r1, #0
	beq _0803D054
	movs r1, #0xa0
	lsls r1, r1, #1
	add r1, sl
	adds r0, r6, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldr r2, [sp, #0x2c]
	strb r0, [r2]
	b _0803D06E
	.align 2, 0
_0803D050: .4byte 0x0875A440
_0803D054:
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	adds r0, r6, #0
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r2, r8
	ldr r1, [sp, #0x2c]
	strb r2, [r1]
_0803D06E:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803D080
func_0803D080: @ 0x0803D080
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, [r0]
	cmp r1, #1
	beq _0803D09E
	cmp r1, #1
	ble _0803D096
	cmp r1, #2
	beq _0803D0A6
	cmp r1, #3
	beq _0803D0AE
_0803D096:
	movs r0, #0xb
	str r0, [sp]
	movs r2, #0xc
	b _0803D0B4
_0803D09E:
	movs r0, #0xd
	str r0, [sp]
	movs r2, #0xe
	b _0803D0B4
_0803D0A6:
	movs r0, #0xf
	str r0, [sp]
	movs r2, #0x10
	b _0803D0B4
_0803D0AE:
	movs r0, #0x11
	str r0, [sp]
	movs r2, #0x12
_0803D0B4:
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x84
	ldr r2, [sp]
	lsls r1, r2, #5
	ldr r5, _0803D0EC @ =0x0875A440
	adds r1, r1, r5
	movs r2, #0x20
	bl memcpy
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r6, r7, r0
	movs r4, #1
	strb r4, [r6]
	ldr r2, [sp, #4]
	lsls r1, r2, #5
	adds r1, r1, r5
	adds r0, r7, #0
	adds r0, #0xa4
	movs r2, #0x20
	bl memcpy
	strb r4, [r6]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D0EC: .4byte 0x0875A440

	thumb_func_start func_0803D0F0
func_0803D0F0: @ 0x0803D0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r7, [r0]
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r4, r0, #0
	cmp r5, #0
	ble _0803D130
	lsls r1, r5, #5
	ldr r0, _0803D12C @ =0x0875A440
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0xc4
	movs r2, #0x20
	bl memcpy
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r7, r0
	b _0803D14C
	.align 2, 0
_0803D12C: .4byte 0x0875A440
_0803D130:
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	adds r0, r7, #0
	adds r0, #0xc4
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r1, r7, r2
_0803D14C:
	movs r0, #1
	strb r0, [r1]
	lsls r1, r4, #5
	ldr r0, _0803D178 @ =0x0875A440
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0xe4
	movs r2, #0x20
	bl memcpy
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	cmp r6, #6
	bhi _0803D19C
	lsls r0, r6, #2
	ldr r1, _0803D17C @ =_0803D180
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803D178: .4byte 0x0875A440
_0803D17C: .4byte _0803D180
_0803D180: @ jump table
	.4byte _0803D19C @ case 0
	.4byte _0803D1A8 @ case 1
	.4byte _0803D1B4 @ case 2
	.4byte _0803D1C0 @ case 3
	.4byte _0803D1CC @ case 4
	.4byte _0803D1D8 @ case 5
	.4byte _0803D1E4 @ case 6
_0803D19C:
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0x61
	str r0, [sp, #4]
	movs r0, #0x62
	b _0803D1EE
_0803D1A8:
	movs r0, #0x63
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	movs r0, #0x65
	b _0803D1EE
_0803D1B4:
	movs r0, #0x66
	str r0, [sp]
	movs r0, #0x67
	str r0, [sp, #4]
	movs r0, #0x68
	b _0803D1EE
_0803D1C0:
	movs r0, #0x69
	str r0, [sp]
	movs r0, #0x6a
	str r0, [sp, #4]
	movs r0, #0x6b
	b _0803D1EE
_0803D1CC:
	movs r0, #0x6c
	str r0, [sp]
	movs r0, #0x6d
	str r0, [sp, #4]
	movs r0, #0x6e
	b _0803D1EE
_0803D1D8:
	movs r0, #0x6f
	str r0, [sp]
	movs r0, #0x70
	str r0, [sp, #4]
	movs r0, #0x71
	b _0803D1EE
_0803D1E4:
	movs r0, #0x72
	str r0, [sp]
	movs r0, #0x73
	str r0, [sp, #4]
	movs r0, #0x74
_0803D1EE:
	str r0, [sp, #8]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [sp]
	lsls r1, r1, #5
	ldr r5, _0803D23C @ =0x0875A440
	adds r1, r1, r5
	movs r2, #0x20
	bl memcpy
	movs r2, #0xac
	lsls r2, r2, #2
	adds r6, r7, r2
	movs r4, #1
	strb r4, [r6]
	ldr r1, [sp, #4]
	lsls r1, r1, #5
	adds r1, r1, r5
	subs r2, #0xe8
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	strb r4, [r6]
	ldr r1, [sp, #8]
	lsls r1, r1, #5
	adds r1, r1, r5
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	strb r4, [r6]
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D23C: .4byte 0x0875A440

	thumb_func_start func_0803D240
func_0803D240: @ 0x0803D240
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r1, #0
	ldr r6, [r0]
	movs r1, #0x1e
	cmp r5, #0xb
	bhi _0803D250
	movs r1, #0x1c
_0803D250:
	lsls r1, r1, #5
	ldr r0, _0803D2A4 @ =0x0875A440
	adds r1, r1, r0
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r6, r2
	movs r2, #0x20
	bl memcpy
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	movs r4, #0xc
	adds r7, r1, #0
	cmp r5, #0xc
	beq _0803D27C
	adds r4, r5, #0
	cmp r4, #0xb
	bls _0803D27C
	subs r4, #0xc
_0803D27C:
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r4, r0, #0
	cmp r5, #0
	ble _0803D2A8
	lsls r1, r5, #5
	ldr r0, _0803D2A4 @ =0x0875A440
	adds r1, r1, r0
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r6, r2
	b _0803D2BA
	.align 2, 0
_0803D2A4: .4byte 0x0875A440
_0803D2A8:
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r6, r1
	mov r1, sp
_0803D2BA:
	movs r2, #0x20
	bl memcpy
	movs r0, #1
	strb r0, [r7]
	lsls r1, r4, #5
	ldr r0, _0803D2E4 @ =0x0875A440
	adds r1, r1, r0
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r6, r2
	movs r2, #0x20
	bl memcpy
	movs r0, #1
	strb r0, [r7]
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D2E4: .4byte 0x0875A440

	thumb_func_start func_0803D2E8
func_0803D2E8: @ 0x0803D2E8
	push {r4, lr}
	sub sp, #0x20
	lsls r1, r1, #0x18
	ldr r4, [r0]
	cmp r1, #0
	beq _0803D314
	ldr r1, _0803D310 @ =0x0875A440
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0x8a
	lsls r2, r2, #2
	adds r0, r4, r2
	movs r2, #0x20
	bl memcpy
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r4, r0
	b _0803D332
	.align 2, 0
_0803D310: .4byte 0x0875A440
_0803D314:
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r0, r4, r1
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	movs r2, #0xac
	lsls r2, r2, #2
	adds r1, r4, r2
_0803D332:
	movs r0, #1
	strb r0, [r1]
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803D340
func_0803D340: @ 0x0803D340
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	ldr r7, [r0]
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r5, r0, #0
	lsls r4, r4, #5
	ldr r0, _0803D39C @ =0x0875A440
	mov r8, r0
	add r4, r8
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	movs r0, #0xac
	lsls r0, r0, #2
	adds r6, r7, r0
	movs r4, #1
	strb r4, [r6]
	lsls r5, r5, #5
	add r5, r8
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl memcpy
	strb r4, [r6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D39C: .4byte 0x0875A440

	thumb_func_start func_0803D3A0
func_0803D3A0: @ 0x0803D3A0
	push {lr}
	ldr r2, [r0]
	movs r3, #0xb3
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r1, #4
	bhi _0803D3E6
	lsls r0, r1, #2
	ldr r1, _0803D3BC @ =_0803D3C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803D3BC: .4byte _0803D3C0
_0803D3C0: @ jump table
	.4byte _0803D3D4 @ case 0
	.4byte _0803D3D8 @ case 1
	.4byte _0803D3DC @ case 2
	.4byte _0803D3E0 @ case 3
	.4byte _0803D3E4 @ case 4
_0803D3D4:
	movs r0, #0
	b _0803D3E6
_0803D3D8:
	movs r0, #1
	b _0803D3E6
_0803D3DC:
	movs r0, #2
	b _0803D3E6
_0803D3E0:
	movs r0, #3
	b _0803D3E6
_0803D3E4:
	movs r0, #4
_0803D3E6:
	movs r3, #0xb3
	lsls r3, r3, #2
	adds r1, r2, r3
	ldrb r3, [r1]
	cmp r0, r3
	beq _0803D3FE
	strb r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_0803D3FE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803D404
func_0803D404: @ 0x0803D404
	push {r4, lr}
	adds r3, r1, #0
	ldr r2, [r0]
	ldr r0, _0803D438 @ =0x000002F1
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803D41E
	ldr r4, _0803D43C @ =0x000002F2
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r3, r0
	beq _0803D430
_0803D41E:
	movs r0, #1
	strb r0, [r1]
	ldr r4, _0803D43C @ =0x000002F2
	adds r1, r2, r4
	strh r3, [r1]
	movs r3, #0xcd
	lsls r3, r3, #2
	adds r1, r2, r3
	strb r0, [r1]
_0803D430:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D438: .4byte 0x000002F1
_0803D43C: .4byte 0x000002F2

	thumb_func_start func_0803D440
func_0803D440: @ 0x0803D440
	push {lr}
	ldr r1, [r0]
	ldr r0, _0803D460 @ =0x000002F1
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803D45C
	movs r0, #0
	strb r0, [r2]
	movs r0, #0xcd
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
_0803D45C:
	pop {r0}
	bx r0
	.align 2, 0
_0803D460: .4byte 0x000002F1
_0803D464:
	.byte 0x00, 0xB5, 0x08, 0x30, 0xFF, 0xF7, 0xEA, 0xFF, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x08, 0x30, 0xFF, 0xF7, 0xC6, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x08, 0x30
	.byte 0xFF, 0xF7, 0x8E, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x08, 0x30, 0xFF, 0xF7, 0x58, 0xFF
	.byte 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x09, 0x06, 0x09, 0x0E, 0x08, 0x30, 0xFF, 0xF7, 0x24, 0xFF
	.byte 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x08, 0x30, 0xFF, 0xF7, 0xCA, 0xFE, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x08, 0x30, 0xFF, 0xF7, 0x1C, 0xFE, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x08, 0x30
	.byte 0xFF, 0xF7, 0xDE, 0xFD, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x12, 0x06, 0x12, 0x0E, 0x08, 0x30
	.byte 0xFF, 0xF7, 0x3C, 0xFC, 0x01, 0xBC, 0x00, 0x47

	thumb_func_start func_0803D4D8
func_0803D4D8: @ 0x0803D4D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	adds r1, r2, #0
	adds r7, r3, #0
	ldr r3, [sp, #0x1c]
	adds r2, r7, #0
	bl func_0803BEB0
	adds r6, r0, #0
	cmp r6, #3
	bne _0803D51C
	ldr r0, [r5, #4]
	ldr r1, [r0, #0x1c]
	adds r0, r5, #0
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r0, #0x20]
	adds r0, r5, #0
	bl _call_via_r1
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #8
	str r7, [sp]
	adds r1, r4, #0
	mov r3, r8
	bl func_0803C7C8
_0803D51C:
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803D52C
func_0803D52C: @ 0x0803D52C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r5, r1, #0
	ldrb r3, [r5, #1]
	add r4, sp, #8
	strb r3, [r4]
	ldrb r2, [r5]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
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
	mov r8, r4
	cmp r3, #6
	bls _0803D572
	adds r0, r3, #0
	movs r1, #7
	bl __umodsi3
	adds r3, r0, #0
_0803D572:
	movs r1, #8
	rsbs r1, r1, #0
	movs r0, #7
	ands r0, r3
	ands r1, r6
	adds r6, r1, #0
	orrs r6, r0
	movs r3, #0xc8
	str r3, [sp]
	ldrb r0, [r5]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #4]
	add r0, sp, #4
	mov r2, sp
	cmp r3, r1
	bls _0803D59E
	adds r2, r0, #0
_0803D59E:
	ldr r4, [r2]
	ldr r0, [r5]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x1b
	cmp r0, #5
	bhi _0803D612
	mov r5, r8
	ldrb r3, [r5]
	lsls r0, r3, #0x19
	lsrs r2, r0, #0x1b
	cmp r2, #0
	bne _0803D5CE
	lsls r0, r3, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	rsbs r1, r1, #0
	subs r0, #1
	movs r2, #3
	ands r0, r2
	ands r1, r3
	orrs r1, r0
	strb r1, [r5]
	movs r2, #0x1d
	b _0803D5D0
_0803D5CE:
	subs r2, #1
_0803D5D0:
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #2
	ldrb r1, [r5]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _0803D5F8
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0x1d
	bne _0803D5F8
	subs r4, #1
_0803D5F8:
	lsls r0, r6, #0x1d
	lsrs r0, r0, #0x1d
	movs r1, #6
	cmp r0, #1
	ble _0803D604
	subs r1, r0, #1
_0803D604:
	movs r0, #7
	ands r1, r0
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r6
	adds r6, r0, #0
	orrs r6, r1
_0803D612:
	strb r4, [r7]
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	strb r0, [r7, #1]
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	strb r0, [r7, #2]
	lsls r0, r6, #0x1d
	lsrs r0, r0, #0x1d
	strb r0, [r7, #3]
	adds r0, r7, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803D644
func_0803D644: @ 0x0803D644
	push {r4, lr}
	sub sp, #8
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r2, r2, #1
	subs r2, #1
	adds r2, r2, r1
	str r2, [sp, #4]
	ldr r0, _0803D684 @ =0x080F1A66
	adds r4, r0, #0
	adds r4, #0xe
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	add r2, sp, #4
	movs r3, #0
	bl func_080E0E80
	adds r1, r0, #0
	movs r2, #0
	cmp r1, r4
	beq _0803D67A
	ldr r0, [sp, #4]
	ldrb r1, [r1]
	cmp r0, r1
	blo _0803D67A
	movs r2, #1
_0803D67A:
	adds r0, r2, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803D684: .4byte 0x080F1A66

	thumb_func_start func_0803D688
func_0803D688: @ 0x0803D688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r4, r1, #0
	adds r0, r2, #0
	ldr r1, [r4]
	bl _call_via_r1
	mov sl, r0
	movs r0, #0
	mov ip, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0803D6C8
	mov r2, sl
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0803D6C8
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803D6C8
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0803D6C8
	ldr r0, [r0, #4]
	mov ip, r0
_0803D6C8:
	mov r0, ip
	cmp r0, #0
	beq _0803D750
	ldrh r2, [r0, #0xa]
	lsls r2, r2, #0x16
	movs r1, #6
	ldrsh r6, [r0, r1]
	movs r1, #8
	ldrsh r0, [r0, r1]
	mov r8, r0
	add r1, sp, #8
	lsrs r2, r2, #0x16
	ldrh r3, [r1]
	ldr r4, _0803D74C @ =0xFFFFFC00
	adds r0, r4, #0
	ands r0, r3
	orrs r0, r2
	strh r0, [r1]
	lsls r6, r6, #0x10
	lsrs r2, r6, #0x10
	movs r0, #0x3f
	mov sb, r0
	ands r2, r0
	lsls r2, r2, #2
	ldrb r5, [r1, #1]
	movs r3, #3
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r2
	strb r0, [r1, #1]
	lsrs r6, r6, #0x16
	ldrh r2, [r1, #2]
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r6
	strh r0, [r1, #2]
	mov r2, r8
	lsls r2, r2, #0x10
	mov r8, r2
	lsrs r0, r2, #0x10
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #2
	ldrb r2, [r1, #3]
	ands r3, r2
	orrs r3, r0
	strb r3, [r1, #3]
	mov r0, r8
	lsrs r0, r0, #0x16
	mov r8, r0
	ldrh r0, [r1, #4]
	ands r4, r0
	mov r2, r8
	orrs r4, r2
	strh r4, [r1, #4]
	mov r0, ip
	ldrb r4, [r0, #0xb]
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0x1e
	mov r5, sp
	mov r0, sp
	movs r2, #6
	bl memcpy
	strb r4, [r5, #6]
	b _0803D78E
	.align 2, 0
_0803D74C: .4byte 0xFFFFFC00
_0803D750:
	add r1, sp, #0x10
	movs r4, #0x8d
	lsls r4, r4, #2
	ldrh r2, [r1]
	ldr r3, _0803D7D8 @ =0xFFFFFC00
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
	mov r4, sp
	mov r0, sp
	movs r2, #6
	bl memcpy
	strb r5, [r4, #6]
_0803D78E:
	adds r0, r7, #0
	mov r1, sp
	bl SetLocation__3NpcRC13ActorLocation
	movs r0, #0x1f
	mov r1, sl
	ands r1, r0
	mov sl, r1
	ldrb r1, [r7, #0xc]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	mov r2, sl
	orrs r0, r2
	strb r0, [r7, #0xc]
	ldrh r1, [r7, #0xc]
	ldr r0, _0803D7DC @ =0xFFFFFC1F
	ands r0, r1
	strh r0, [r7, #0xc]
	ldrb r1, [r7, #0xd]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0xd]
	ldr r0, [r7, #0xc]
	ldr r1, _0803D7E0 @ =0xFE007FFF
	ands r0, r1
	str r0, [r7, #0xc]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7D8: .4byte 0xFFFFFC00
_0803D7DC: .4byte 0xFFFFFC1F
_0803D7E0: .4byte 0xFE007FFF

	thumb_func_start func_0803D7E4
func_0803D7E4: @ 0x0803D7E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x70
	ldr r1, _0803D9A4 @ =0x080F280C
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, _0803D9A8 @ =0x080F1A80
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	adds r0, #0x98
	ldr r1, _0803D9AC @ =0x080F1FC0
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, _0803D9B0 @ =0x080F8678
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r1, _0803D9B4 @ =0x080F81BC
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	adds r0, #0xd8
	ldr r1, _0803D9B8 @ =0x080F77FC
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r1, _0803D9BC @ =0x080F7294
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9C0 @ =0x080F6370
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9C4 @ =0x080F66C4
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9C8 @ =0x080F49C0
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9CC @ =0x080F5540
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9D0 @ =0x080F4D74
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9D4 @ =0x080F59CC
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9D8 @ =0x080F6B4C
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xca
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9DC @ =0x080F33B8
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9E0 @ =0x080F61FC
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9E4 @ =0x080F3408
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9E8 @ =0x080F3FD8
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9EC @ =0x080F35E4
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, _0803D9F0 @ =0x080F3010
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _0803D9F4 @ =0x080F5D94
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _0803D9F8 @ =0x080F6DE8
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _0803D9FC @ =0x080F2AF8
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _0803DA00 @ =0x080F42F0
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _0803DA04 @ =0x080F43DC
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _0803DA08 @ =0x080F6FF8
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xa4
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _0803DA0C @ =0x080F7B40
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _0803DA10 @ =0x080F2DC0
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _0803DA14 @ =0x080F597C
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xc4
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _0803DA18 @ =0x080F6B10
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xca
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _0803DA1C @ =0x080F4974
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	bl func_080A0A04
	cmp r0, #0
	beq _0803D99E
	ldr r1, _0803DA20 @ =0x080F29C0
	adds r2, r5, #0
	bl func_0803D688
_0803D99E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D9A4: .4byte 0x080F280C
_0803D9A8: .4byte 0x080F1A80
_0803D9AC: .4byte 0x080F1FC0
_0803D9B0: .4byte 0x080F8678
_0803D9B4: .4byte 0x080F81BC
_0803D9B8: .4byte 0x080F77FC
_0803D9BC: .4byte 0x080F7294
_0803D9C0: .4byte 0x080F6370
_0803D9C4: .4byte 0x080F66C4
_0803D9C8: .4byte 0x080F49C0
_0803D9CC: .4byte 0x080F5540
_0803D9D0: .4byte 0x080F4D74
_0803D9D4: .4byte 0x080F59CC
_0803D9D8: .4byte 0x080F6B4C
_0803D9DC: .4byte 0x080F33B8
_0803D9E0: .4byte 0x080F61FC
_0803D9E4: .4byte 0x080F3408
_0803D9E8: .4byte 0x080F3FD8
_0803D9EC: .4byte 0x080F35E4
_0803D9F0: .4byte 0x080F3010
_0803D9F4: .4byte 0x080F5D94
_0803D9F8: .4byte 0x080F6DE8
_0803D9FC: .4byte 0x080F2AF8
_0803DA00: .4byte 0x080F42F0
_0803DA04: .4byte 0x080F43DC
_0803DA08: .4byte 0x080F6FF8
_0803DA0C: .4byte 0x080F7B40
_0803DA10: .4byte 0x080F2DC0
_0803DA14: .4byte 0x080F597C
_0803DA18: .4byte 0x080F6B10
_0803DA1C: .4byte 0x080F4974
_0803DA20: .4byte 0x080F29C0

	thumb_func_start func_0803DA24
func_0803DA24: @ 0x0803DA24
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803DA3C @ =0x000021CA
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0803DA40
	movs r0, #0
	b _0803DA74
	.align 2, 0
_0803DA3C: .4byte 0x000021CA
_0803DA40:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803DA60
	movs r0, #4
	b _0803DA74
_0803DA60:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803DA72
	cmp r4, #2
	bne _0803DA6E
	movs r0, #3
	b _0803DA74
_0803DA6E:
	movs r0, #1
	b _0803DA74
_0803DA72:
	movs r0, #2
_0803DA74:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803DA7C
func_0803DA7C: @ 0x0803DA7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803DAC8 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0803DA96
	b _0803DC22
_0803DA96:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r7, [r4, #1]
	ldrb r0, [r4, #2]
	mov r8, r0
	ldrb r4, [r4, #3]
	mov sb, r4
	ldr r1, _0803DACC @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0490
	adds r4, r0, #0
	cmp r4, #3
	bne _0803DB6A
	cmp r7, #2
	bne _0803DAD0
	mov r0, r8
	cmp r0, #0xd
	bne _0803DAD0
	movs r0, #0x16
	b _0803DC54
	.align 2, 0
_0803DAC8: .4byte 0x000021CA
_0803DACC: .4byte 0x00001CD4
_0803DAD0:
	ldr r1, _0803DAE4 @ =0x0000216B
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0803DAE8
	movs r0, #0x17
	b _0803DC54
	.align 2, 0
_0803DAE4: .4byte 0x0000216B
_0803DAE8:
	ldr r1, _0803DB20 @ =0x00002148
	adds r0, r5, r1
	ldrb r6, [r0]
	ldr r1, _0803DB24 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0384
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	adds r0, r7, #0
	mov r1, r8
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803DB14
	ldr r0, [r5, #8]
	cmp r0, #3
	beq _0803DB14
	cmp r0, #4
	bne _0803DB38
_0803DB14:
	cmp r4, #0
	beq _0803DB2C
	cmp r6, #0
	beq _0803DB28
	movs r0, #0xd
	b _0803DC54
	.align 2, 0
_0803DB20: .4byte 0x00002148
_0803DB24: .4byte 0x00001CD4
_0803DB28:
	movs r0, #0xc
	b _0803DC54
_0803DB2C:
	cmp r6, #0
	beq _0803DB34
	movs r0, #0xf
	b _0803DC54
_0803DB34:
	movs r0, #0xe
	b _0803DC54
_0803DB38:
	cmp r6, #0
	beq _0803DB4E
	mov r0, sb
	cmp r0, #0
	bne _0803DB4E
	cmp r4, #0
	beq _0803DB4A
	movs r0, #8
	b _0803DC54
_0803DB4A:
	movs r0, #0xb
	b _0803DC54
_0803DB4E:
	cmp r4, #0
	beq _0803DB5E
	cmp r6, #0
	beq _0803DB5A
	movs r0, #7
	b _0803DC54
_0803DB5A:
	movs r0, #6
	b _0803DC54
_0803DB5E:
	cmp r6, #0
	beq _0803DB66
	movs r0, #0xa
	b _0803DC54
_0803DB66:
	movs r0, #9
	b _0803DC54
_0803DB6A:
	ldr r1, _0803DB8C @ =0x00001D6C
	adds r0, r5, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bls _0803DB9E
	cmp r7, #1
	bne _0803DC22
	movs r0, #1
	mov r1, r8
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803DB90
	movs r0, #0x13
	b _0803DC54
	.align 2, 0
_0803DB8C: .4byte 0x00001D6C
_0803DB90:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803DB9A
	movs r0, #0x14
	b _0803DC54
_0803DB9A:
	movs r0, #0x15
	b _0803DC54
_0803DB9E:
	cmp r7, #2
	bne _0803DBC0
	mov r0, r8
	cmp r0, #0x1e
	bne _0803DBC0
	ldr r1, _0803DBBC @ =0x000021A3
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0803DBC0
	movs r0, #0x11
	b _0803DC54
	.align 2, 0
_0803DBBC: .4byte 0x000021A3
_0803DBC0:
	ldr r1, _0803DBF8 @ =0x00001CD4
	adds r0, r5, r1
	movs r1, #3
	bl func_080A01F8
	cmp r7, #3
	bne _0803DC04
	mov r1, r8
	cmp r1, #0xe
	bne _0803DC04
	cmp r4, #0
	bne _0803DC04
	cmp r0, #0
	beq _0803DC04
	bl GetLove__C12Bachelorette
	ldr r1, _0803DBFC @ =0x0000270F
	cmp r0, r1
	bls _0803DC04
	ldr r1, _0803DC00 @ =0x000021A3
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0803DC04
	movs r0, #0x12
	b _0803DC54
	.align 2, 0
_0803DBF8: .4byte 0x00001CD4
_0803DBFC: .4byte 0x0000270F
_0803DC00: .4byte 0x000021A3
_0803DC04:
	adds r0, r7, #0
	mov r1, r8
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803DC16
	movs r0, #0x10
	b _0803DC54
_0803DC16:
	ldr r1, _0803DC28 @ =0x0000215A
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0803DC2C
_0803DC22:
	movs r0, #0
	b _0803DC54
	.align 2, 0
_0803DC28: .4byte 0x0000215A
_0803DC2C:
	mov r0, sb
	cmp r0, #0
	bne _0803DC48
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803DC44
	cmp r7, #1
	bne _0803DC40
	movs r0, #5
	b _0803DC54
_0803DC40:
	movs r0, #3
	b _0803DC54
_0803DC44:
	movs r0, #4
	b _0803DC54
_0803DC48:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0803DC52
	movs r0, #2
	b _0803DC54
_0803DC52:
	movs r0, #1
_0803DC54:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803DC64
func_0803DC64: @ 0x0803DC64
	push {r4, lr}
	sub sp, #4
	adds r2, r0, #0
	ldr r1, _0803DC7C @ =0x000021CA
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0803DC80
	movs r0, #0
	b _0803DCAA
	.align 2, 0
_0803DC7C: .4byte 0x000021CA
_0803DC80:
	mov r4, sp
	adds r1, r2, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803DCA0
	movs r0, #3
	b _0803DCAA
_0803DCA0:
	cmp r4, #0
	beq _0803DCA8
	movs r0, #1
	b _0803DCAA
_0803DCA8:
	movs r0, #2
_0803DCAA:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803DCB4:
	.byte 0x70, 0xB5, 0x81, 0xB0, 0x05, 0x1C, 0x0A, 0x48, 0x2C, 0x18, 0x20, 0x1C
	.byte 0x62, 0xF0, 0x60, 0xFB, 0x00, 0x28, 0x00, 0xD1, 0x89, 0xE0, 0x60, 0xF0, 0x05, 0xFF, 0x3B, 0x28
	.byte 0x00, 0xD9, 0x82, 0xE0, 0x20, 0x1C, 0x62, 0xF0, 0xDB, 0xFB, 0x06, 0x1C, 0x1F, 0x2E, 0x03, 0xD1
	.byte 0x03, 0x20, 0x7D, 0xE0, 0xD4, 0x1C, 0x00, 0x00, 0x6C, 0x46, 0x29, 0x1C, 0x10, 0x31, 0x68, 0x46
	.byte 0xFF, 0xF7, 0x1C, 0xFC, 0x60, 0x78, 0xA1, 0x78, 0xE4, 0x78, 0x02, 0x28, 0x03, 0xD1, 0x0D, 0x29
	.byte 0x01, 0xD1, 0x05, 0x20, 0x6C, 0xE0, 0xFF, 0xF7, 0x9D, 0xFC, 0x00, 0x06, 0x00, 0x28, 0x4F, 0xD1
	.byte 0xA8, 0x68, 0x03, 0x28, 0x4C, 0xD0, 0x04, 0x28, 0x4A, 0xD0, 0x05, 0x49, 0x68, 0x18, 0x02, 0x78
	.byte 0xF0, 0x1E, 0x1C, 0x28, 0x57, 0xD8, 0x80, 0x00, 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46
	.byte 0x48, 0x21, 0x00, 0x00, 0x38, 0xDD, 0x03, 0x08, 0xB4, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08
	.byte 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08
	.byte 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xAC, 0xDD, 0x03, 0x08
	.byte 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08
	.byte 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xBE, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08
	.byte 0xCC, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08
	.byte 0xD2, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08
	.byte 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0x01, 0x2C, 0x12, 0xD1
	.byte 0x02, 0x20, 0x15, 0xE0, 0x00, 0x2A, 0xFB, 0xD0, 0x00, 0x2C, 0x0C, 0xD1, 0xF8, 0xE7, 0x00, 0x2A
	.byte 0xF6, 0xD0, 0x02, 0x2C, 0xF4, 0xD0, 0x00, 0x2C, 0x05, 0xD1, 0xF1, 0xE7, 0x03, 0x2C, 0x02, 0xD1
	.byte 0xEE, 0xE7, 0x00, 0x2A, 0xEC, 0xD0, 0x01, 0x20, 0x02, 0xE0, 0x04, 0x20, 0x00, 0xE0, 0x00, 0x20
	.byte 0x01, 0xB0, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start func_0803DDE8
func_0803DDE8: @ 0x0803DDE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803DE48 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0803DE42
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	mov r0, sp
	ldrb r6, [r0]
	ldrb r7, [r4, #1]
	ldrb r0, [r4, #2]
	mov r8, r0
	ldrb r4, [r4, #3]
	ldr r1, _0803DE4C @ =0x00002181
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0803DE42
	subs r1, #0xc
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _0803DE50
	cmp r6, #1
	bhi _0803DE42
	cmp r6, #1
	bne _0803DE50
	cmp r7, #3
	bne _0803DE50
	mov r0, r8
	cmp r0, #0x1c
	bls _0803DE50
_0803DE42:
	movs r0, #0
	b _0803DEBE
	.align 2, 0
_0803DE48: .4byte 0x000021CA
_0803DE4C: .4byte 0x00002181
_0803DE50:
	ldr r1, _0803DE64 @ =0x00002181
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0803DE68
	movs r0, #5
	b _0803DEBE
	.align 2, 0
_0803DE64: .4byte 0x00002181
_0803DE68:
	adds r0, r7, #0
	mov r1, r8
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803DE7A
	movs r0, #4
	b _0803DEBE
_0803DE7A:
	cmp r6, #1
	bne _0803DE9C
	cmp r7, #2
	bne _0803DE9C
	mov r0, r8
	cmp r0, #0xf
	bne _0803DE9C
	ldr r1, _0803DE98 @ =0x00002175
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803DE9C
_0803DE94:
	movs r0, #2
	b _0803DEBE
	.align 2, 0
_0803DE98: .4byte 0x00002175
_0803DE9C:
	ldr r1, _0803DEB8 @ =0x00002174
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #0xc2
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x82
	lsls r1, r1, #0xb
	cmp r0, r1
	bne _0803DEBC
	cmp r4, #6
	bne _0803DE94
	movs r0, #3
	b _0803DEBE
	.align 2, 0
_0803DEB8: .4byte 0x00002174
_0803DEBC:
	movs r0, #1
_0803DEBE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803DECC
func_0803DECC: @ 0x0803DECC
	push {r4, lr}
	sub sp, #4
	adds r1, r0, #0
	mov r4, sp
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803DEEE
	movs r0, #1
	b _0803DEF0
_0803DEEE:
	movs r0, #2
_0803DEF0:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0803DEF8
func_0803DEF8: @ 0x0803DEF8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803DF10 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0803DF14
	movs r0, #0
	b _0803DF48
	.align 2, 0
_0803DF10: .4byte 0x000021CA
_0803DF14:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803DF34
	movs r0, #4
	b _0803DF48
_0803DF34:
	cmp r4, #3
	bne _0803DF46
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803DF42
	movs r0, #2
	b _0803DF48
_0803DF42:
	movs r0, #3
	b _0803DF48
_0803DF46:
	movs r0, #1
_0803DF48:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803DF50
func_0803DF50: @ 0x0803DF50
	push {r4, lr}
	sub sp, #4
	adds r1, r0, #0
	ldr r2, _0803DF68 @ =0x000021CA
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0803DF6C
	movs r0, #0
	b _0803DF8A
	.align 2, 0
_0803DF68: .4byte 0x000021CA
_0803DF6C:
	mov r4, sp
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803DF88
	movs r0, #1
	b _0803DF8A
_0803DF88:
	movs r0, #2
_0803DF8A:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803DF94
func_0803DF94: @ 0x0803DF94
	push {r4, lr}
	sub sp, #4
	adds r1, r0, #0
	ldr r2, _0803DFAC @ =0x000021CA
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0803DFB0
	movs r0, #0
	b _0803DFE0
	.align 2, 0
_0803DFAC: .4byte 0x000021CA
_0803DFB0:
	mov r4, sp
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803DFCE
	movs r0, #4
	b _0803DFE0
_0803DFCE:
	cmp r4, #2
	bne _0803DFD6
	movs r0, #2
	b _0803DFE0
_0803DFD6:
	cmp r4, #0
	beq _0803DFDE
	movs r0, #1
	b _0803DFE0
_0803DFDE:
	movs r0, #3
_0803DFE0:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0803DFE8
func_0803DFE8: @ 0x0803DFE8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803E008 @ =0x000021CA
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0803E00C
	movs r0, #0
	b _0803E194
	.align 2, 0
_0803E008: .4byte 0x000021CA
_0803E00C:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	mov r8, r0
	ldrb r7, [r4, #2]
	ldrb r4, [r4, #3]
	mov sb, r4
	ldr r1, _0803E040 @ =0x00001CD4
	adds r4, r5, r1
	adds r0, r4, #0
	bl func_080A0490
	adds r6, r0, #0
	cmp r6, #0x13
	bne _0803E0EA
	mov r0, r8
	cmp r0, #2
	bne _0803E04C
	cmp r7, #9
	bne _0803E044
	movs r0, #0x15
	b _0803E194
	.align 2, 0
_0803E040: .4byte 0x00001CD4
_0803E044:
	cmp r7, #0xd
	bne _0803E04C
	movs r0, #0x16
	b _0803E194
_0803E04C:
	ldr r1, _0803E060 @ =0x0000216C
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0803E064
	movs r0, #0x17
	b _0803E194
	.align 2, 0
_0803E060: .4byte 0x0000216C
_0803E064:
	ldr r1, _0803E09C @ =0x00002148
	adds r0, r5, r1
	ldrb r6, [r0]
	ldr r1, _0803E0A0 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0384
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	mov r0, r8
	adds r1, r7, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E090
	ldr r0, [r5, #8]
	cmp r0, #3
	beq _0803E090
	cmp r0, #4
	bne _0803E0B4
_0803E090:
	cmp r4, #0
	beq _0803E0A8
	cmp r6, #0
	beq _0803E0A4
	movs r0, #0x12
	b _0803E194
	.align 2, 0
_0803E09C: .4byte 0x00002148
_0803E0A0: .4byte 0x00001CD4
_0803E0A4:
	movs r0, #0x11
	b _0803E194
_0803E0A8:
	cmp r6, #0
	beq _0803E0B0
	movs r0, #0x14
	b _0803E194
_0803E0B0:
	movs r0, #0x13
	b _0803E194
_0803E0B4:
	cmp r6, #0
	beq _0803E0CE
	mov r0, sb
	cmp r0, #0
	beq _0803E0C2
	cmp r0, #2
	bne _0803E0CE
_0803E0C2:
	cmp r4, #0
	beq _0803E0CA
	movs r0, #0xd
	b _0803E194
_0803E0CA:
	movs r0, #0x10
	b _0803E194
_0803E0CE:
	cmp r4, #0
	beq _0803E0DE
	cmp r6, #0
	beq _0803E0DA
	movs r0, #0xc
	b _0803E194
_0803E0DA:
	movs r0, #0xb
	b _0803E194
_0803E0DE:
	cmp r6, #0
	beq _0803E0E6
	movs r0, #0xf
	b _0803E194
_0803E0E6:
	movs r0, #0xe
	b _0803E194
_0803E0EA:
	ldr r1, _0803E108 @ =0x00001EB8
	adds r0, r5, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bls _0803E11A
	mov r0, r8
	adds r1, r7, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E10C
	movs r0, #0xa
	b _0803E194
	.align 2, 0
_0803E108: .4byte 0x00001EB8
_0803E10C:
	mov r0, sb
	cmp r0, #0
	bne _0803E116
	movs r0, #7
	b _0803E194
_0803E116:
	movs r0, #6
	b _0803E194
_0803E11A:
	adds r0, r4, #0
	movs r1, #0x13
	bl func_080A01F8
	mov r1, r8
	cmp r1, #3
	bne _0803E158
	cmp r7, #0xe
	bne _0803E158
	cmp r6, #0
	bne _0803E158
	cmp r0, #0
	beq _0803E158
	bl GetLove__C12Bachelorette
	ldr r1, _0803E150 @ =0x0000270F
	cmp r0, r1
	bls _0803E158
	ldr r1, _0803E154 @ =0x000021A4
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0803E158
	movs r0, #9
	b _0803E194
	.align 2, 0
_0803E150: .4byte 0x0000270F
_0803E154: .4byte 0x000021A4
_0803E158:
	mov r0, r8
	adds r1, r7, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E16A
	movs r0, #8
	b _0803E194
_0803E16A:
	mov r0, sb
	cmp r0, #0
	bne _0803E174
	movs r0, #3
	b _0803E194
_0803E174:
	mov r1, sb
	cmp r1, #2
	bne _0803E188
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803E184
	movs r0, #4
	b _0803E194
_0803E184:
	movs r0, #5
	b _0803E194
_0803E188:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0803E192
	movs r0, #2
	b _0803E194
_0803E192:
	movs r0, #1
_0803E194:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E1A4
func_0803E1A4: @ 0x0803E1A4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803E1BC @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0803E1C0
	movs r0, #0
	b _0803E1F4
	.align 2, 0
_0803E1BC: .4byte 0x000021CA
_0803E1C0:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E1E0
	movs r0, #4
	b _0803E1F4
_0803E1E0:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803E1F2
	cmp r4, #2
	bne _0803E1EE
	movs r0, #3
	b _0803E1F4
_0803E1EE:
	movs r0, #1
	b _0803E1F4
_0803E1F2:
	movs r0, #2
_0803E1F4:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803E1FC
func_0803E1FC: @ 0x0803E1FC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803E214 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0803E218
	movs r0, #0
	b _0803E25A
	.align 2, 0
_0803E214: .4byte 0x000021CA
_0803E218:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r6, [r4, #1]
	ldrb r4, [r4, #2]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E23A
	movs r0, #2
	b _0803E25A
_0803E23A:
	ldr r1, _0803E254 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0490
	cmp r6, #2
	bne _0803E258
	cmp r4, #5
	bne _0803E258
	cmp r0, #0x19
	beq _0803E258
	movs r0, #3
	b _0803E25A
	.align 2, 0
_0803E254: .4byte 0x00001CD4
_0803E258:
	movs r0, #1
_0803E25A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E264
func_0803E264: @ 0x0803E264
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803E280 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0803E284
	movs r0, #0
	b _0803E3FE
	.align 2, 0
_0803E280: .4byte 0x000021CA
_0803E284:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	mov r8, r0
	ldrb r6, [r4, #2]
	ldr r1, _0803E2B4 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0490
	adds r4, r0, #0
	mov r0, r8
	cmp r0, #2
	bne _0803E2B8
	cmp r6, #5
	bne _0803E2B8
	cmp r4, #0x19
	beq _0803E2BC
	movs r0, #5
	b _0803E3FE
	.align 2, 0
_0803E2B4: .4byte 0x00001CD4
_0803E2B8:
	cmp r4, #0x19
	bne _0803E364
_0803E2BC:
	mov r1, r8
	cmp r1, #2
	bne _0803E2D2
	cmp r6, #9
	bne _0803E2CA
	movs r0, #0x10
	b _0803E3FE
_0803E2CA:
	cmp r6, #0xd
	bne _0803E2D2
	movs r0, #0x11
	b _0803E3FE
_0803E2D2:
	ldr r1, _0803E2F0 @ =0x0000216B
	adds r0, r5, r1
	ldrb r2, [r0]
	lsrs r2, r2, #7
	adds r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	orrs r0, r2
	cmp r0, #1
	bne _0803E2F4
	movs r0, #0x12
	b _0803E3FE
	.align 2, 0
_0803E2F0: .4byte 0x0000216B
_0803E2F4:
	ldr r1, _0803E330 @ =0x00002148
	adds r0, r5, r1
	ldrb r4, [r0]
	ldr r1, _0803E334 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0384
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r7, r1, #0x1f
	mov sb, r7
	mov r0, r8
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E322
	ldr r0, [r5, #8]
	cmp r0, #3
	beq _0803E322
	cmp r0, #4
	bne _0803E348
_0803E322:
	mov r0, sb
	cmp r0, #0
	beq _0803E33C
	cmp r4, #0
	beq _0803E338
	movs r0, #0xd
	b _0803E3FE
	.align 2, 0
_0803E330: .4byte 0x00002148
_0803E334: .4byte 0x00001CD4
_0803E338:
	movs r0, #0xc
	b _0803E3FE
_0803E33C:
	cmp r4, #0
	beq _0803E344
	movs r0, #0xf
	b _0803E3FE
_0803E344:
	movs r0, #0xe
	b _0803E3FE
_0803E348:
	cmp r7, #0
	beq _0803E358
	cmp r4, #0
	beq _0803E354
	movs r0, #9
	b _0803E3FE
_0803E354:
	movs r0, #8
	b _0803E3FE
_0803E358:
	cmp r4, #0
	beq _0803E360
	movs r0, #0xb
	b _0803E3FE
_0803E360:
	movs r0, #0xa
	b _0803E3FE
_0803E364:
	ldr r1, _0803E388 @ =0x00001F38
	adds r0, r5, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bls _0803E390
	mov r0, r8
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E3EE
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803E38C
	movs r0, #3
	b _0803E3FE
	.align 2, 0
_0803E388: .4byte 0x00001F38
_0803E38C:
	movs r0, #4
	b _0803E3FE
_0803E390:
	ldr r1, _0803E3D4 @ =0x00001CD4
	adds r0, r5, r1
	movs r1, #0x19
	bl func_080A01F8
	mov r1, r8
	cmp r1, #3
	bne _0803E3E0
	cmp r6, #0xe
	bne _0803E3E0
	cmp r4, #0
	bne _0803E3E0
	cmp r0, #0
	beq _0803E3E0
	bl GetLove__C12Bachelorette
	ldr r1, _0803E3D8 @ =0x0000270F
	cmp r0, r1
	bls _0803E3E0
	ldr r1, _0803E3DC @ =0x000021A3
	adds r0, r5, r1
	ldrb r2, [r0]
	lsrs r2, r2, #7
	adds r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	orrs r0, r2
	cmp r0, #2
	beq _0803E3E0
	movs r0, #7
	b _0803E3FE
	.align 2, 0
_0803E3D4: .4byte 0x00001CD4
_0803E3D8: .4byte 0x0000270F
_0803E3DC: .4byte 0x000021A3
_0803E3E0:
	mov r0, r8
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E3F2
_0803E3EE:
	movs r0, #6
	b _0803E3FE
_0803E3F2:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0803E3FC
	movs r0, #2
	b _0803E3FE
_0803E3FC:
	movs r0, #1
_0803E3FE:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0803E40C
func_0803E40C: @ 0x0803E40C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r5, sp
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r1, [r5, #3]
	ldr r0, _0803E438 @ =0x00002187
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _0803E43C
	cmp r1, #0
	bne _0803E43C
	movs r0, #1
	b _0803E43E
	.align 2, 0
_0803E438: .4byte 0x00002187
_0803E43C:
	movs r0, #0
_0803E43E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E448
func_0803E448: @ 0x0803E448
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803E460 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803E464
	movs r0, #0
	b _0803E498
	.align 2, 0
_0803E460: .4byte 0x000021CA
_0803E464:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E484
	movs r0, #4
	b _0803E498
_0803E484:
	cmp r4, #1
	bne _0803E496
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803E492
	movs r0, #2
	b _0803E498
_0803E492:
	movs r0, #3
	b _0803E498
_0803E496:
	movs r0, #1
_0803E498:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803E4A0
func_0803E4A0: @ 0x0803E4A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803E4BC @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803E4C0
	movs r0, #0
	b _0803E610
	.align 2, 0
_0803E4BC: .4byte 0x000021CA
_0803E4C0:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r7, [r4, #1]
	ldrb r6, [r4, #2]
	ldrb r4, [r4, #3]
	mov sb, r4
	ldr r0, _0803E4F0 @ =0x00001CD4
	adds r4, r5, r0
	adds r0, r4, #0
	bl func_080A0490
	mov r8, r0
	cmp r0, #0xc
	bne _0803E56E
	cmp r7, #2
	bne _0803E4FC
	cmp r6, #9
	bne _0803E4F4
	movs r0, #0x10
	b _0803E610
	.align 2, 0
_0803E4F0: .4byte 0x00001CD4
_0803E4F4:
	cmp r6, #0xd
	bne _0803E4FC
	movs r0, #0x11
	b _0803E610
_0803E4FC:
	ldr r1, _0803E510 @ =0x0000216C
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0803E514
	movs r0, #0x12
	b _0803E610
	.align 2, 0
_0803E510: .4byte 0x0000216C
_0803E514:
	ldr r1, _0803E548 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0384
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	mov r8, r4
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E53C
	ldr r0, [r5, #8]
	cmp r0, #3
	beq _0803E53C
	cmp r0, #4
	bne _0803E550
_0803E53C:
	mov r0, r8
	cmp r0, #0
	beq _0803E54C
	movs r0, #0xe
	b _0803E610
	.align 2, 0
_0803E548: .4byte 0x00001CD4
_0803E54C:
	movs r0, #0xf
	b _0803E610
_0803E550:
	mov r1, sb
	cmp r1, #1
	bne _0803E562
	cmp r4, #0
	beq _0803E55E
	movs r0, #0xb
	b _0803E610
_0803E55E:
	movs r0, #0xd
	b _0803E610
_0803E562:
	cmp r4, #0
	beq _0803E56A
	movs r0, #0xa
	b _0803E610
_0803E56A:
	movs r0, #0xc
	b _0803E610
_0803E56E:
	ldr r1, _0803E58C @ =0x00001E28
	adds r0, r5, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bls _0803E5A8
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E590
	movs r0, #9
	b _0803E610
	.align 2, 0
_0803E58C: .4byte 0x00001E28
_0803E590:
	mov r0, sb
	cmp r0, #4
	bne _0803E5A4
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803E5A0
	movs r0, #5
	b _0803E610
_0803E5A0:
	movs r0, #6
	b _0803E610
_0803E5A4:
	movs r0, #4
	b _0803E610
_0803E5A8:
	adds r0, r4, #0
	movs r1, #0xc
	bl func_080A01F8
	cmp r7, #3
	bne _0803E5E8
	cmp r6, #0xe
	bne _0803E5E8
	mov r1, r8
	cmp r1, #0
	bne _0803E5E8
	cmp r0, #0
	beq _0803E5E8
	bl GetLove__C12Bachelorette
	ldr r1, _0803E5E0 @ =0x0000270F
	cmp r0, r1
	bls _0803E5E8
	ldr r1, _0803E5E4 @ =0x000021A5
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0803E5E8
	movs r0, #7
	b _0803E610
	.align 2, 0
_0803E5E0: .4byte 0x0000270F
_0803E5E4: .4byte 0x000021A5
_0803E5E8:
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E5FA
	movs r0, #8
	b _0803E610
_0803E5FA:
	mov r0, sb
	cmp r0, #1
	bne _0803E60E
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803E60A
	movs r0, #2
	b _0803E610
_0803E60A:
	movs r0, #3
	b _0803E610
_0803E60E:
	movs r0, #1
_0803E610:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E620
func_0803E620: @ 0x0803E620
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803E638 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803E63C
	movs r0, #0
	b _0803E67A
	.align 2, 0
_0803E638: .4byte 0x000021CA
_0803E63C:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E65C
	movs r0, #5
	b _0803E67A
_0803E65C:
	cmp r4, #1
	bne _0803E66E
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803E66A
	movs r0, #3
	b _0803E67A
_0803E66A:
	movs r0, #4
	b _0803E67A
_0803E66E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0803E678
	movs r0, #2
	b _0803E67A
_0803E678:
	movs r0, #1
_0803E67A:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E684
func_0803E684: @ 0x0803E684
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	adds r6, r0, #0
	ldrb r0, [r4, #2]
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E6B0
	movs r0, #2
	b _0803E6E2
_0803E6B0:
	movs r3, #0xc8
	str r3, [sp, #4]
	ldrb r0, [r5, #0x10]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #8]
	add r2, sp, #8
	add r0, sp, #4
	cmp r3, r1
	bls _0803E6CE
	adds r0, r2, #0
_0803E6CE:
	ldr r0, [r0]
	cmp r0, #1
	bhi _0803E6E0
	cmp r6, #0
	bne _0803E6E0
	cmp r4, #2
	bhi _0803E6E0
	movs r0, #0
	b _0803E6E2
_0803E6E0:
	movs r0, #1
_0803E6E2:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E6EC
func_0803E6EC: @ 0x0803E6EC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r2, [r4, #1]
	ldrb r3, [r4, #2]
	ldrb r4, [r4, #3]
	cmp r2, #3
	bne _0803E740
	cmp r3, #2
	bne _0803E740
	ldr r1, _0803E734 @ =0x00002178
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #0x86
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _0803E740
	ldr r1, _0803E738 @ =0x0000217A
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0803E73C
	movs r0, #7
	b _0803E778
	.align 2, 0
_0803E734: .4byte 0x00002178
_0803E738: .4byte 0x0000217A
_0803E73C:
	movs r0, #0
	b _0803E778
_0803E740:
	adds r0, r2, #0
	adds r1, r3, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E752
	movs r0, #6
	b _0803E778
_0803E752:
	cmp r4, #6
	bne _0803E764
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803E760
	movs r0, #2
	b _0803E778
_0803E760:
	movs r0, #3
	b _0803E778
_0803E764:
	cmp r4, #0
	bne _0803E776
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803E772
	movs r0, #4
	b _0803E778
_0803E772:
	movs r0, #5
	b _0803E778
_0803E776:
	movs r0, #1
_0803E778:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803E780
func_0803E780: @ 0x0803E780
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803E79C @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0803E7A0
	movs r0, #0
	b _0803E8DA
	.align 2, 0
_0803E79C: .4byte 0x000021CA
_0803E7A0:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r7, [r4, #1]
	ldrb r6, [r4, #2]
	ldrb r4, [r4, #3]
	mov sb, r4
	ldr r0, _0803E7D0 @ =0x00001CD4
	adds r4, r5, r0
	adds r0, r4, #0
	bl func_080A0490
	mov r8, r0
	cmp r0, #0x15
	bne _0803E84E
	cmp r7, #2
	bne _0803E7DC
	cmp r6, #9
	bne _0803E7D4
	movs r0, #0xe
	b _0803E8DA
	.align 2, 0
_0803E7D0: .4byte 0x00001CD4
_0803E7D4:
	cmp r6, #0xd
	bne _0803E7DC
	movs r0, #0xf
	b _0803E8DA
_0803E7DC:
	ldr r1, _0803E7F0 @ =0x0000216C
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0803E7F4
	movs r0, #0x10
	b _0803E8DA
	.align 2, 0
_0803E7F0: .4byte 0x0000216C
_0803E7F4:
	ldr r1, _0803E828 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0384
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	mov r8, r4
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E81C
	ldr r0, [r5, #8]
	cmp r0, #3
	beq _0803E81C
	cmp r0, #4
	bne _0803E830
_0803E81C:
	mov r0, r8
	cmp r0, #0
	beq _0803E82C
	movs r0, #0xc
	b _0803E8DA
	.align 2, 0
_0803E828: .4byte 0x00001CD4
_0803E82C:
	movs r0, #0xd
	b _0803E8DA
_0803E830:
	mov r1, sb
	cmp r1, #3
	bne _0803E842
	cmp r4, #0
	beq _0803E83E
	movs r0, #9
	b _0803E8DA
_0803E83E:
	movs r0, #0xb
	b _0803E8DA
_0803E842:
	cmp r4, #0
	beq _0803E84A
	movs r0, #8
	b _0803E8DA
_0803E84A:
	movs r0, #0xa
	b _0803E8DA
_0803E84E:
	ldr r1, _0803E86C @ =0x00001EE4
	adds r0, r5, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bls _0803E87E
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E870
	movs r0, #7
	b _0803E8DA
	.align 2, 0
_0803E86C: .4byte 0x00001EE4
_0803E870:
	mov r0, sb
	cmp r0, #3
	bne _0803E87A
	movs r0, #4
	b _0803E8DA
_0803E87A:
	movs r0, #3
	b _0803E8DA
_0803E87E:
	adds r0, r4, #0
	movs r1, #0x15
	bl func_080A01F8
	cmp r7, #3
	bne _0803E8BC
	cmp r6, #0xe
	bne _0803E8BC
	mov r1, r8
	cmp r1, #0
	bne _0803E8BC
	cmp r0, #0
	beq _0803E8BC
	bl GetLove__C12Bachelorette
	ldr r1, _0803E8B4 @ =0x0000270F
	cmp r0, r1
	bls _0803E8BC
	ldr r1, _0803E8B8 @ =0x000021A4
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0803E8BC
	movs r0, #6
	b _0803E8DA
	.align 2, 0
_0803E8B4: .4byte 0x0000270F
_0803E8B8: .4byte 0x000021A4
_0803E8BC:
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E8CE
	movs r0, #5
	b _0803E8DA
_0803E8CE:
	mov r0, sb
	cmp r0, #3
	beq _0803E8D8
	movs r0, #1
	b _0803E8DA
_0803E8D8:
	movs r0, #2
_0803E8DA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0803E8E8
func_0803E8E8: @ 0x0803E8E8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803E924 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0803E948
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r2, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	cmp r2, #2
	bne _0803E92C
	cmp r1, #0x1e
	bne _0803E92C
	ldr r3, _0803E928 @ =0x000021A2
	adds r0, r5, r3
	ldrb r0, [r0]
	lsrs r0, r0, #6
	cmp r0, #2
	beq _0803E92C
	movs r0, #5
	b _0803E968
	.align 2, 0
_0803E924: .4byte 0x000021CA
_0803E928: .4byte 0x000021A2
_0803E92C:
	adds r0, r2, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E93C
	movs r0, #4
	b _0803E968
_0803E93C:
	ldr r1, _0803E94C @ =0x0000215A
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0803E950
_0803E948:
	movs r0, #0
	b _0803E968
	.align 2, 0
_0803E94C: .4byte 0x0000215A
_0803E950:
	cmp r4, #1
	beq _0803E958
	cmp r4, #3
	bne _0803E95C
_0803E958:
	movs r0, #3
	b _0803E968
_0803E95C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0803E966
	movs r0, #2
	b _0803E968
_0803E966:
	movs r0, #1
_0803E968:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803E970
func_0803E970: @ 0x0803E970
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	adds r6, r4, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E998
	movs r0, #5
	b _0803E9DA
_0803E998:
	ldr r1, _0803E9A8 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0803E9AC
	movs r0, #0
	b _0803E9DA
	.align 2, 0
_0803E9A8: .4byte 0x000021CA
_0803E9AC:
	ldr r1, _0803E9C8 @ =0x00002174
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #0xc2
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x82
	lsls r1, r1, #0xb
	cmp r0, r1
	bne _0803E9D0
	cmp r4, #6
	bne _0803E9CC
	movs r0, #4
	b _0803E9DA
	.align 2, 0
_0803E9C8: .4byte 0x00002174
_0803E9CC:
	movs r0, #3
	b _0803E9DA
_0803E9D0:
	cmp r6, #6
	beq _0803E9D8
	movs r0, #1
	b _0803E9DA
_0803E9D8:
	movs r0, #2
_0803E9DA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E9E4
func_0803E9E4: @ 0x0803E9E4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	adds r4, r2, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803EA0C
	movs r0, #5
	b _0803EA52
_0803EA0C:
	ldr r1, _0803EA1C @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0803EA20
	movs r0, #0
	b _0803EA52
	.align 2, 0
_0803EA1C: .4byte 0x000021CA
_0803EA20:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803EA50
	cmp r4, #6
	bne _0803EA4C
	ldr r1, _0803EA44 @ =0x00002174
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #0xc2
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x82
	lsls r1, r1, #0xb
	cmp r0, r1
	bne _0803EA48
	movs r0, #4
	b _0803EA52
	.align 2, 0
_0803EA44: .4byte 0x00002174
_0803EA48:
	movs r0, #3
	b _0803EA52
_0803EA4C:
	movs r0, #1
	b _0803EA52
_0803EA50:
	movs r0, #2
_0803EA52:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803EA5C
func_0803EA5C: @ 0x0803EA5C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r5, sp
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r1, [r5, #3]
	ldr r0, _0803EA88 @ =0x00002186
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _0803EA8C
	cmp r1, #3
	bne _0803EA8C
	movs r0, #1
	b _0803EA8E
	.align 2, 0
_0803EA88: .4byte 0x00002186
_0803EA8C:
	movs r0, #0
_0803EA8E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803EA98
func_0803EA98: @ 0x0803EA98
	push {r4, lr}
	sub sp, #4
	adds r1, r0, #0
	ldr r2, _0803EAB0 @ =0x000021CA
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0803EAB4
	movs r0, #0
	b _0803EAD2
	.align 2, 0
_0803EAB0: .4byte 0x000021CA
_0803EAB4:
	mov r4, sp
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EAD0
	movs r0, #1
	b _0803EAD2
_0803EAD0:
	movs r0, #2
_0803EAD2:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803EADC
func_0803EADC: @ 0x0803EADC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803EAF4 @ =0x000021CA
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0x7c
	ands r0, r1
	cmp r0, #0
	beq _0803EAF8
	movs r0, #0
	b _0803EB38
	.align 2, 0
_0803EAF4: .4byte 0x000021CA
_0803EAF8:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	cmp r0, #2
	bne _0803EB16
	cmp r1, #3
	bne _0803EB16
	movs r0, #9
	b _0803EB38
_0803EB16:
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803EB24
	movs r0, #8
	b _0803EB38
_0803EB24:
	cmp r4, #1
	beq _0803EB32
	cmp r4, #3
	beq _0803EB32
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0803EB36
_0803EB32:
	movs r0, #1
	b _0803EB38
_0803EB36:
	movs r0, #2
_0803EB38:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803EB40
func_0803EB40: @ 0x0803EB40
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803EB78 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _0803EB92
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	cmp r0, #1
	bne _0803EB92
	movs r0, #1
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803EB7C
	movs r0, #4
	b _0803EB94
	.align 2, 0
_0803EB78: .4byte 0x000021CA
_0803EB7C:
	cmp r4, #0
	bne _0803EB8E
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803EB8A
	movs r0, #2
	b _0803EB94
_0803EB8A:
	movs r0, #3
	b _0803EB94
_0803EB8E:
	movs r0, #1
	b _0803EB94
_0803EB92:
	movs r0, #0
_0803EB94:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803EB9C
func_0803EB9C: @ 0x0803EB9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803EBB8 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803EBBC
	movs r0, #0
	b _0803EC36
	.align 2, 0
_0803EBB8: .4byte 0x000021CA
_0803EBBC:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r6, [r4, #1]
	ldrb r0, [r4, #2]
	mov r8, r0
	ldrb r4, [r4, #3]
	ldr r1, _0803EBF0 @ =0x00001E28
	adds r0, r5, r1
	bl GetRivalEventCount__C12Bachelorette
	adds r7, r0, #0
	cmp r7, #4
	bls _0803EC0A
	adds r0, r6, #0
	mov r1, r8
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803EBF4
	movs r0, #9
	b _0803EC36
	.align 2, 0
_0803EBF0: .4byte 0x00001E28
_0803EBF4:
	cmp r4, #4
	bne _0803EC06
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803EC02
	movs r0, #6
	b _0803EC36
_0803EC02:
	movs r0, #7
	b _0803EC36
_0803EC06:
	movs r0, #5
	b _0803EC36
_0803EC0A:
	adds r0, r6, #0
	mov r1, r8
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803EC1C
	movs r0, #8
	b _0803EC36
_0803EC1C:
	cmp r7, #0
	beq _0803EC34
	cmp r4, #1
	bne _0803EC28
	movs r0, #3
	b _0803EC36
_0803EC28:
	cmp r4, #4
	bne _0803EC30
	movs r0, #4
	b _0803EC36
_0803EC30:
	movs r0, #2
	b _0803EC36
_0803EC34:
	movs r0, #1
_0803EC36:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803EC44
func_0803EC44: @ 0x0803EC44
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0803EC5C @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803EC60
	movs r0, #0
	b _0803ECB8
	.align 2, 0
_0803EC5C: .4byte 0x000021CA
_0803EC60:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r6, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803EC80
	movs r0, #4
	b _0803ECB8
_0803EC80:
	ldr r0, _0803ECA0 @ =0x00001DAC
	adds r4, r5, r0
	adds r0, r4, #0
	bl func_0809ECD8
	cmp r0, #0
	beq _0803ECA4
	adds r0, r4, #0
	bl func_0809ECE0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803ECA4
	movs r0, #5
	b _0803ECB8
	.align 2, 0
_0803ECA0: .4byte 0x00001DAC
_0803ECA4:
	cmp r6, #4
	bne _0803ECB6
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803ECB2
	movs r0, #2
	b _0803ECB8
_0803ECB2:
	movs r0, #3
	b _0803ECB8
_0803ECB6:
	movs r0, #1
_0803ECB8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start func_0803ECC0
func_0803ECC0: @ 0x0803ECC0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r6, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803ECE6
	movs r0, #5
	b _0803EDC4
_0803ECE6:
	ldr r7, [r5, #8]
	ldr r0, _0803ED28 @ =0x00001F64
	adds r4, r5, r0
	adds r0, r4, #0
	bl func_0809EB68
	cmp r0, #0
	beq _0803EDA4
	adds r0, r4, #0
	bl func_0809EB70
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EDA4
	adds r0, r4, #0
	bl func_0809EB8C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EDA4
	subs r0, r7, #3
	cmp r0, #1
	bls _0803EDA4
	adds r0, r4, #0
	bl func_0809EB68
	cmp r0, #0xd
	bhi _0803EDA4
	lsls r0, r0, #2
	ldr r1, _0803ED2C @ =_0803ED30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803ED28: .4byte 0x00001F64
_0803ED2C: .4byte _0803ED30
_0803ED30: @ jump table
	.4byte _0803EDA4 @ case 0
	.4byte _0803ED68 @ case 1
	.4byte _0803ED8C @ case 2
	.4byte _0803ED90 @ case 3
	.4byte _0803ED94 @ case 4
	.4byte _0803ED98 @ case 5
	.4byte _0803ED98 @ case 6
	.4byte _0803ED98 @ case 7
	.4byte _0803ED9C @ case 8
	.4byte _0803ED9C @ case 9
	.4byte _0803ED9C @ case 10
	.4byte _0803EDA0 @ case 11
	.4byte _0803EDA0 @ case 12
	.4byte _0803EDA0 @ case 13
_0803ED68:
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, r1
	bl GetUpgradeLevel__C9FarmHouse
	cmp r0, #1
	beq _0803ED84
	cmp r0, #1
	blo _0803ED80
	cmp r0, #2
	beq _0803ED88
	b _0803EDA4
_0803ED80:
	movs r0, #6
	b _0803EDC4
_0803ED84:
	movs r0, #7
	b _0803EDC4
_0803ED88:
	movs r0, #0xd
	b _0803EDC4
_0803ED8C:
	movs r0, #8
	b _0803EDC4
_0803ED90:
	movs r0, #9
	b _0803EDC4
_0803ED94:
	movs r0, #0xe
	b _0803EDC4
_0803ED98:
	movs r0, #0xa
	b _0803EDC4
_0803ED9C:
	movs r0, #0xb
	b _0803EDC4
_0803EDA0:
	movs r0, #0xc
	b _0803EDC4
_0803EDA4:
	cmp r6, #5
	bgt _0803EDB2
	cmp r6, #4
	bge _0803EDBA
	cmp r6, #0
	beq _0803EDC2
	b _0803EDB6
_0803EDB2:
	cmp r6, #6
	beq _0803EDBE
_0803EDB6:
	movs r0, #1
	b _0803EDC4
_0803EDBA:
	movs r0, #2
	b _0803EDC4
_0803EDBE:
	movs r0, #3
	b _0803EDC4
_0803EDC2:
	movs r0, #4
_0803EDC4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0803EDCC
func_0803EDCC: @ 0x0803EDCC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r6, [r4, #1]
	ldrb r0, [r4, #2]
	adds r7, r0, #0
	ldrb r4, [r4, #3]
	adds r0, r6, #0
	adds r1, r7, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803EDF8
	movs r0, #5
	b _0803EE48
_0803EDF8:
	cmp r6, #2
	bne _0803EE18
	cmp r7, #0x1e
	bne _0803EE18
	ldr r1, _0803EE14 @ =0x000021A2
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0803EE18
	movs r0, #6
	b _0803EE48
	.align 2, 0
_0803EE14: .4byte 0x000021A2
_0803EE18:
	ldr r1, _0803EE28 @ =0x0000215A
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0803EE2C
	movs r0, #0
	b _0803EE48
	.align 2, 0
_0803EE28: .4byte 0x0000215A
_0803EE2C:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803EE46
	cmp r4, #1
	bne _0803EE3A
	movs r0, #1
	b _0803EE48
_0803EE3A:
	cmp r4, #3
	bne _0803EE42
	movs r0, #2
	b _0803EE48
_0803EE42:
	movs r0, #3
	b _0803EE48
_0803EE46:
	movs r0, #4
_0803EE48:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0803EE50
func_0803EE50: @ 0x0803EE50
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803EE76
	movs r0, #4
	b _0803EE8A
_0803EE76:
	cmp r4, #1
	bne _0803EE88
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0803EE84
	movs r0, #2
	b _0803EE8A
_0803EE84:
	movs r0, #3
	b _0803EE8A
_0803EE88:
	movs r0, #1
_0803EE8A:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
