	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start memcmp
memcmp: @ 0x080D3948
	push {r4, lr}
	adds r4, r2, #0
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r4, #3
	bls _080D3984
	orrs r0, r2
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D3984
	b _080D396A
_080D3960:
	adds r3, #4
	adds r2, #4
	subs r4, #4
	cmp r4, #3
	bls _080D3984
_080D396A:
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	beq _080D3960
	b _080D3984
_080D3974:
	ldrb r0, [r3]
	ldrb r1, [r2]
	cmp r0, r1
	beq _080D3980
	subs r0, r0, r1
	b _080D398E
_080D3980:
	adds r3, #1
	adds r2, #1
_080D3984:
	adds r0, r4, #0
	subs r4, #1
	cmp r0, #0
	bne _080D3974
	movs r0, #0
_080D398E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start memcpy
memcpy: @ 0x080D3994
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _080D39D4
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D39D4
	adds r1, r5, #0
_080D39AE:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080D39AE
	cmp r2, #3
	bls _080D39D2
_080D39C8:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _080D39C8
_080D39D2:
	adds r4, r1, #0
_080D39D4:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080D39EE
	adds r1, r0, #0
_080D39E0:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _080D39E0
_080D39EE:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start memmove
memmove: @ 0x080D39F8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r3, r5
	bhs _080D3A2A
	adds r0, r3, r2
	cmp r5, r0
	bhs _080D3A2A
	adds r3, r0, #0
	adds r4, r5, r2
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080D3A7C
	adds r1, r0, #0
_080D3A1A:
	subs r4, #1
	subs r3, #1
	ldrb r0, [r3]
	strb r0, [r4]
	subs r2, #1
	cmp r2, r1
	bne _080D3A1A
	b _080D3A7C
_080D3A2A:
	cmp r2, #0xf
	bls _080D3A62
	adds r0, r3, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D3A62
	adds r1, r3, #0
_080D3A3C:
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080D3A3C
	cmp r2, #3
	bls _080D3A60
_080D3A56:
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _080D3A56
_080D3A60:
	adds r3, r1, #0
_080D3A62:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080D3A7C
	adds r1, r0, #0
_080D3A6E:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _080D3A6E
_080D3A7C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start memset
memset: @ 0x080D3A84
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _080D3ACA
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _080D3ACA
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _080D3ABE
_080D3AAA:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080D3AAA
	b _080D3ABE
_080D3ABA:
	stm r1!, {r3}
	subs r2, #4
_080D3ABE:
	cmp r2, #3
	bhi _080D3ABA
	adds r3, r1, #0
	b _080D3ACA
_080D3AC6:
	strb r4, [r3]
	adds r3, #1
_080D3ACA:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _080D3AC6
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start strcat
strcat: @ 0x080D3ADC
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	bne _080D3B12
	ldr r1, [r4]
	ldr r5, _080D3AF8 @ =0xFEFEFEFF
	adds r0, r1, r5
	bics r0, r1
	ldr r3, _080D3AFC @ =0x80808080
	b _080D3B08
	.align 2, 0
_080D3AF8: .4byte 0xFEFEFEFF
_080D3AFC: .4byte 0x80808080
_080D3B00:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
_080D3B08:
	ands r0, r3
	cmp r0, #0
	beq _080D3B00
	b _080D3B12
_080D3B10:
	adds r2, #1
_080D3B12:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080D3B10
	adds r0, r2, #0
	adds r1, r6, #0
	bl strcpy
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start strcpy
strcpy: @ 0x080D3B28
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r3, r6, #0
	adds r2, r1, #0
	adds r0, r2, #0
	orrs r0, r6
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D3B60
	ldr r1, [r2]
	ldr r5, _080D3B48 @ =0xFEFEFEFF
	adds r0, r1, r5
	bics r0, r1
	ldr r4, _080D3B4C @ =0x80808080
	b _080D3B5A
	.align 2, 0
_080D3B48: .4byte 0xFEFEFEFF
_080D3B4C: .4byte 0x80808080
_080D3B50:
	ldm r2!, {r0}
	stm r3!, {r0}
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
_080D3B5A:
	ands r0, r4
	cmp r0, #0
	beq _080D3B50
_080D3B60:
	ldrb r0, [r2]
	strb r0, [r3]
	lsls r0, r0, #0x18
	adds r2, #1
	adds r3, #1
	cmp r0, #0
	bne _080D3B60
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start strlen
strlen: @ 0x080D3B78
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080D3BB0
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _080D3B94 @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _080D3B98 @ =0x80808080
	b _080D3BA4
	.align 2, 0
_080D3B94: .4byte 0xFEFEFEFF
_080D3B98: .4byte 0x80808080
_080D3B9C:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_080D3BA4:
	ands r0, r3
	cmp r0, #0
	beq _080D3B9C
	adds r1, r2, #0
	b _080D3BB0
_080D3BAE:
	adds r1, #1
_080D3BB0:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080D3BAE
	subs r0, r1, r5
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
