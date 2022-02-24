	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start sub_80D15A4
sub_80D15A4: @ 0x080D15A4
	ldr r0, _080D1610 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _080D1614 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq sub_080D15B2
	bx lr

	non_word_aligned_thumb_func_start sub_080D15B2
sub_080D15B2: @ 0x080D15B2
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _080D15D6
	ldr r2, _080D161C @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _080D15D4
	adds r2, #0xe4
_080D15D4:
	adds r1, r1, r2
_080D15D6:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _080D15E6
	ldr r0, [r0, #0x24]
	bl sub_80D19C6
	ldr r0, [sp, #0x18]
_080D15E6:
	ldr r3, [r0, #0x28]
	bl sub_80D19C6
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _080D1620 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _080D1606
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_080D1606:
	str r5, [sp, #8]
	ldr r6, _080D1624 @ =0x00000630
	ldr r3, _080D1618 @ =0x03000001
	bx r3
	.align 2, 0
_080D1610: .4byte 0x03007FF0
_080D1614: .4byte 0x68736D53
_080D1618: .4byte 0x03000001
_080D161C: .4byte 0x04000006
_080D1620: .4byte 0x00000350
_080D1624: .4byte 0x00000630
_080D1628:
	.byte 0x43, 0x79, 0x00, 0x2B, 0x2C, 0xD0, 0x01, 0xA1
	.byte 0x08, 0x47, 0x00, 0x00, 0x02, 0x00, 0x54, 0xE3, 0x35, 0x7E, 0x80, 0x02, 0x08, 0x70, 0x85, 0x10
	.byte 0x08, 0x40, 0xA0, 0xE1, 0xD6, 0x00, 0x95, 0xE1, 0xD0, 0x10, 0xD5, 0xE1, 0x01, 0x00, 0x80, 0xE0
	.byte 0xD6, 0x10, 0x97, 0xE1, 0x01, 0x00, 0x80, 0xE0, 0xD1, 0x10, 0xD7, 0xE0, 0x01, 0x00, 0x80, 0xE0
	.byte 0x90, 0x03, 0x01, 0xE0, 0xC1, 0x04, 0xA0, 0xE1, 0x80, 0x00, 0x10, 0xE3, 0x01, 0x00, 0x80, 0x12
	.byte 0x06, 0x00, 0xC5, 0xE7, 0x01, 0x00, 0xC5, 0xE4, 0x01, 0x40, 0x54, 0xE2, 0xF0, 0xFF, 0xFF, 0xCA
	.byte 0x2F, 0x00, 0x8F, 0xE2, 0x10, 0xFF, 0x2F, 0xE1, 0x00, 0x20, 0x41, 0x46, 0x76, 0x19, 0xC9, 0x08
	.byte 0x01, 0xD3, 0x01, 0xC5, 0x01, 0xC6, 0x49, 0x08, 0x03, 0xD3, 0x01, 0xC5, 0x01, 0xC6, 0x01, 0xC5
	.byte 0x01, 0xC6, 0x01, 0xC5, 0x01, 0xC6, 0x01, 0xC5, 0x01, 0xC6, 0x01, 0xC5, 0x01, 0xC6, 0x01, 0xC5
	.byte 0x01, 0xC6, 0x01, 0x39, 0xF5, 0xDC, 0x06, 0x9C, 0xA0, 0x69, 0x84, 0x46, 0xA0, 0x79, 0x50, 0x34
	.byte 0x01, 0x90, 0x63, 0x6A, 0x05, 0x98, 0x00, 0x28, 0x0A, 0xD0, 0x04, 0x49, 0x09, 0x78, 0xA0, 0x29
	.byte 0x00, 0xD2, 0xE4, 0x31, 0x81, 0x42, 0x03, 0xD3, 0x6B, 0xE1, 0x00, 0x00, 0x06, 0x00, 0x00, 0x04
	.byte 0x26, 0x78, 0xC7, 0x20, 0x30, 0x42, 0x00, 0xD1, 0x5E, 0xE1, 0x80, 0x20, 0x30, 0x42, 0x14, 0xD0
	.byte 0x40, 0x20, 0x30, 0x42, 0x19, 0xD1, 0x03, 0x26, 0x26, 0x70, 0x18, 0x1C, 0x10, 0x30, 0xA0, 0x62
	.byte 0xD8, 0x68, 0xA0, 0x61, 0x00, 0x25, 0x65, 0x72, 0xE5, 0x61, 0xDA, 0x78, 0xC0, 0x20, 0x10, 0x42
	.byte 0x2F, 0xD0, 0x10, 0x20, 0x06, 0x43, 0x26, 0x70, 0x2B, 0xE0, 0x65, 0x7A, 0x04, 0x20, 0x30, 0x42
	.byte 0x06, 0xD0, 0x60, 0x7B, 0x01, 0x38, 0x60, 0x73, 0x2A, 0xD8, 0x00, 0x20, 0x20, 0x70, 0x3B, 0xE1
	.byte 0x40, 0x20, 0x30, 0x42, 0x0C, 0xD0, 0xE0, 0x79, 0x45, 0x43, 0x2D, 0x0A, 0x20, 0x7B, 0x85, 0x42
	.byte 0x1E, 0xD8, 0x25, 0x7B, 0x00, 0x2D, 0xF0, 0xD0, 0x04, 0x20, 0x06, 0x43, 0x26, 0x70, 0x17, 0xE0
	.byte 0x03, 0x22, 0x32, 0x40, 0x02, 0x2A, 0x0A, 0xD1, 0x60, 0x79, 0x45, 0x43, 0x2D, 0x0A, 0xA0, 0x79
	.byte 0x85, 0x42, 0x0D, 0xD8, 0x05, 0x1C, 0xEC, 0xD0, 0x01, 0x3E, 0x26, 0x70, 0x08, 0xE0, 0x03, 0x2A
	.byte 0x06, 0xD1, 0x20, 0x79, 0x2D, 0x18, 0xFF, 0x2D, 0x02, 0xD3, 0xFF, 0x25, 0x01, 0x3E, 0x26, 0x70
	.byte 0x65, 0x72, 0x06, 0x98, 0xC0, 0x79, 0x01, 0x30, 0x68, 0x43, 0x05, 0x09, 0xA0, 0x78, 0x68, 0x43
	.byte 0x00, 0x0A, 0xA0, 0x72, 0xE0, 0x78, 0x68, 0x43, 0x00, 0x0A, 0xE0, 0x72, 0x10, 0x20, 0x30, 0x40
	.byte 0x04, 0x90, 0x07, 0xD0, 0x18, 0x1C, 0x10, 0x30, 0x99, 0x68, 0x40, 0x18, 0x03, 0x90, 0xD8, 0x68
	.byte 0x40, 0x1A, 0x04, 0x90, 0x02, 0x9D, 0xA2, 0x69, 0xA3, 0x6A, 0x01, 0xA0, 0x00, 0x47, 0x00, 0x00
	.byte 0x00, 0x80, 0x8D, 0xE5, 0x0A, 0xA0, 0xD4, 0xE5, 0x0B, 0xB0, 0xD4, 0xE5, 0x0A, 0xA8, 0xA0, 0xE1
	.byte 0x0B, 0xB8, 0xA0, 0xE1, 0x01, 0x00, 0xD4, 0xE5, 0x08, 0x00, 0x10, 0xE3, 0x47, 0x00, 0x00, 0x0A
	.byte 0x04, 0x00, 0x52, 0xE3, 0x19, 0x00, 0x00, 0xDA, 0x08, 0x20, 0x52, 0xE0, 0x00, 0xE0, 0xA0, 0xC3
	.byte 0x05, 0x00, 0x00, 0xCA, 0x08, 0xE0, 0xA0, 0xE1, 0x08, 0x20, 0x82, 0xE0, 0x04, 0x80, 0x42, 0xE2
	.byte 0x08, 0xE0, 0x4E, 0xE0, 0x03, 0x20, 0x12, 0xE2, 0x04, 0x20, 0xA0, 0x03, 0x00, 0x60, 0x95, 0xE5
	.byte 0x30, 0x76, 0x95, 0xE5, 0xD1, 0x00, 0xD3, 0xE0, 0x9A, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3
	.byte 0x66, 0x64, 0x81, 0xE0, 0x9B, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3, 0x67, 0x74, 0x81, 0xE0
	.byte 0x01, 0x51, 0x95, 0xE2, 0xF6, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4
	.byte 0x04, 0x80, 0x58, 0xE2, 0xF0, 0xFF, 0xFF, 0xCA, 0x0E, 0x80, 0x98, 0xE0, 0x50, 0x00, 0x00, 0x0A
	.byte 0x00, 0x60, 0x95, 0xE5, 0x30, 0x76, 0x95, 0xE5, 0xD1, 0x00, 0xD3, 0xE0, 0x9A, 0x00, 0x01, 0xE0
	.byte 0xFF, 0x18, 0xC1, 0xE3, 0x66, 0x64, 0x81, 0xE0, 0x9B, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3
	.byte 0x67, 0x74, 0x81, 0xE0, 0x01, 0x20, 0x52, 0xE2, 0x12, 0x00, 0x00, 0x0A, 0x01, 0x51, 0x95, 0xE2
	.byte 0xF4, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x04, 0x80, 0x58, 0xE2
	.byte 0xD2, 0xFF, 0xFF, 0xCA, 0x3E, 0x00, 0x00, 0xEA, 0x18, 0x00, 0x9D, 0xE5, 0x00, 0x00, 0x50, 0xE3
	.byte 0x05, 0x00, 0x00, 0x0A, 0x14, 0x30, 0x9D, 0xE5, 0x00, 0x90, 0x62, 0xE2, 0x02, 0x20, 0x90, 0xE0
	.byte 0x2B, 0x00, 0x00, 0xCA, 0x00, 0x90, 0x49, 0xE0, 0xFB, 0xFF, 0xFF, 0xEA, 0x10, 0x10, 0xBD, 0xE8
	.byte 0x00, 0x20, 0xA0, 0xE3, 0x03, 0x00, 0x00, 0xEA, 0x10, 0x20, 0x9D, 0xE5, 0x00, 0x00, 0x52, 0xE3
	.byte 0x0C, 0x30, 0x9D, 0x15, 0xE8, 0xFF, 0xFF, 0x1A, 0x00, 0x20, 0xC4, 0xE5, 0x25, 0x0F, 0xA0, 0xE1
	.byte 0x03, 0x51, 0xC5, 0xE3, 0x03, 0x00, 0x60, 0xE2, 0x80, 0x01, 0xA0, 0xE1, 0x76, 0x60, 0xA0, 0xE1
	.byte 0x77, 0x70, 0xA0, 0xE1, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x26, 0x00, 0x00, 0xEA
	.byte 0x10, 0x10, 0x2D, 0xE9, 0x1C, 0xE0, 0x94, 0xE5, 0x20, 0x10, 0x94, 0xE5, 0x9C, 0x01, 0x04, 0xE0
	.byte 0xD0, 0x00, 0xD3, 0xE1, 0xD1, 0x10, 0xF3, 0xE1, 0x00, 0x10, 0x41, 0xE0, 0x00, 0x60, 0x95, 0xE5
	.byte 0x30, 0x76, 0x95, 0xE5, 0x9E, 0x01, 0x09, 0xE0, 0xC9, 0x9B, 0x80, 0xE0, 0x9A, 0x09, 0x0C, 0xE0
	.byte 0xFF, 0xC8, 0xCC, 0xE3, 0x66, 0x64, 0x8C, 0xE0, 0x9B, 0x09, 0x0C, 0xE0, 0xFF, 0xC8, 0xCC, 0xE3
	.byte 0x67, 0x74, 0x8C, 0xE0, 0x04, 0xE0, 0x8E, 0xE0, 0xAE, 0x9B, 0xB0, 0xE1, 0x07, 0x00, 0x00, 0x0A
	.byte 0xFE, 0xE5, 0xCE, 0xE3, 0x09, 0x20, 0x52, 0xE0, 0xCE, 0xFF, 0xFF, 0xDA, 0x01, 0x90, 0x59, 0xE2
	.byte 0x01, 0x00, 0x80, 0x00, 0xD9, 0x00, 0xB3, 0x11, 0xD1, 0x10, 0xF3, 0xE1, 0x00, 0x10, 0x41, 0xE0
	.byte 0x01, 0x51, 0x95, 0xE2, 0xEA, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4
	.byte 0x04, 0x80, 0x58, 0xE2, 0xE4, 0xFF, 0xFF, 0xCA, 0x01, 0x30, 0x43, 0xE2, 0x10, 0x10, 0xBD, 0xE8
	.byte 0x1C, 0xE0, 0x84, 0xE5, 0x18, 0x20, 0x84, 0xE5, 0x28, 0x30, 0x84, 0xE5, 0x00, 0x80, 0x9D, 0xE5
	.byte 0x01, 0x00, 0x8F, 0xE2, 0x10, 0xFF, 0x2F, 0xE1, 0x01, 0x98, 0x01, 0x38, 0x01, 0xDD, 0x40, 0x34
	.byte 0x86, 0xE6, 0x06, 0x98, 0x04, 0x4B, 0x03, 0x60, 0x07, 0xB0, 0xFF, 0xBC, 0x80, 0x46, 0x89, 0x46
	.byte 0x92, 0x46, 0x9B, 0x46, 0x08, 0xBC

	non_word_aligned_thumb_func_start sub_80D19C6
sub_80D19C6: @ 0x080D19C6
	bx r3
_080D19C8:
	.byte 0x53, 0x6D, 0x73, 0x68, 0xA4, 0x46, 0x00, 0x21
	.byte 0x00, 0x22, 0x00, 0x23, 0x00, 0x24, 0x1E, 0xC0, 0x1E, 0xC0, 0x1E, 0xC0, 0x1E, 0xC0, 0x64, 0x46
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_80D19E4
sub_80D19E4: @ 0x080D19E4
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _080D1A02
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _080D19F6
	str r1, [r2, #0x34]
	b _080D19F8
_080D19F6:
	str r1, [r3, #0x20]
_080D19F8:
	cmp r1, #0
	beq _080D19FE
	str r2, [r1, #0x30]
_080D19FE:
	movs r1, #0
	str r1, [r0, #0x2c]
_080D1A02:
	bx lr

	thumb_func_start sub_80D1A04
sub_80D1A04: @ 0x080D1A04
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080D1A28
_080D1A0E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080D1A1C
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_080D1A1C:
	adds r0, r4, #0
	bl sub_80D19E4
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080D1A0E
_080D1A28:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80D1A34
sub_80D1A34: @ 0x080D1A34
	mov ip, lr
	movs r1, #0x24
	ldr r2, _080D1A64 @ =0x08139A88
_080D1A3A:
	ldr r3, [r2]
	bl sub_80D1A4E
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _080D1A3A
	bx ip
	.align 2, 0

	thumb_func_start sub_80D1A4C
sub_80D1A4C: @ 0x080D1A4C
	ldrb r3, [r2]
sub_80D1A4E:
	push {r0}
	lsrs r0, r2, #0x19
	bne _080D1A60
	ldr r0, _080D1A64 @ =0x08139A88
	cmp r2, r0
	blo _080D1A5E
	lsrs r0, r2, #0xe
	beq _080D1A60
_080D1A5E:
	movs r3, #0
_080D1A60:
	pop {r0}
	bx lr
	.align 2, 0
_080D1A64: .4byte 0x08139A88

	thumb_func_start sub_80D1A68
sub_80D1A68: @ 0x080D1A68
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_080D1A6A
sub_080D1A6A: @ 0x080D1A6A
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b sub_80D1A4E
	.align 2, 0
sub_80D1A74:
	push {lr}
_080D1A76:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_80D1A4C
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start sub_80D1A94
sub_80D1A94: @ 0x080D1A94
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _080D1AAC
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b sub_80D1A74
_080D1AAC:
	b sub_80D1A04
	.align 2, 0

	thumb_func_start sub_80D1AB0
sub_80D1AB0: @ 0x080D1AB0
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _080D1AC2
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_080D1AC2:
	bx lr

	thumb_func_start sub_80D1AC4
sub_80D1AC4: @ 0x080D1AC4
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _080D1AD4
	adds r2, #1
	str r2, [r1, #0x40]
	b _080D1A76
_080D1AD4:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_80D1A68
	cmp ip, r3
	bhs _080D1AE6
	b _080D1A76
_080D1AE6:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80D1AF4
sub_80D1AF4: @ 0x080D1AF4
	mov ip, lr
	bl sub_80D1A68
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start sub_80D1B00
sub_80D1B00: @ 0x080D1B00
	mov ip, lr
	bl sub_80D1A68
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start sub_80D1B14
sub_80D1B14: @ 0x080D1B14
	mov ip, lr
	bl sub_80D1A68
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_80D1B28
sub_80D1B28: @ 0x080D1B28
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl sub_80D1A4E
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl sub_80D1A4E
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl sub_80D1A4E
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start sub_80D1B58
sub_80D1B58: @ 0x080D1B58
	mov ip, lr
	bl sub_80D1A68
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_80D1B6C
sub_80D1B6C: @ 0x080D1B6C
	mov ip, lr
	bl sub_80D1A68
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_80D1B80
sub_80D1B80: @ 0x080D1B80
	mov ip, lr
	bl sub_80D1A68
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_80D1B94
sub_80D1B94: @ 0x080D1B94
	mov ip, lr
	bl sub_80D1A68
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_80D1BA8
sub_80D1BA8: @ 0x080D1BA8
	mov ip, lr
	bl sub_80D1A68
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start sub_80D1BB4
sub_80D1BB4: @ 0x080D1BB4
	mov ip, lr
	bl sub_80D1A68
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _080D1BCA
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_080D1BCA:
	bx ip

	thumb_func_start sub_80D1BCC
sub_80D1BCC: @ 0x080D1BCC
	mov ip, lr
	bl sub_80D1A68
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_80D1BE0
sub_80D1BE0: @ 0x080D1BE0
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _080D1BF4 @ =0x04000060
	adds r0, r0, r3
	bl sub_080D1A6A
	strb r3, [r0]
	bx ip
	.align 2, 0
_080D1BF4: .4byte 0x04000060

	thumb_func_start sub_80D1BF8
sub_80D1BF8: @ 0x080D1BF8
	ldr r0, _080D1EA4 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _080D1EA8 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _080D1C38
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _080D1C38
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _080D1C3C @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _080D1C1E
	ldr r1, _080D1C40 @ =0x84400004
	str r1, [r2, #8]
_080D1C1E:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _080D1C28
	ldr r1, _080D1C40 @ =0x84400004
	str r1, [r2, #0x14]
_080D1C28:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_080D1C38:
	bx lr
	.align 2, 0
_080D1C3C: .4byte 0x040000BC
_080D1C40: .4byte 0x84400004
_080D1C44:
	.byte 0x98, 0x4A, 0x43, 0x6B, 0x9A, 0x42, 0x00, 0xD0, 0x70, 0x47, 0x01, 0x33
	.byte 0x43, 0x63, 0x01, 0xB5, 0x83, 0x6B, 0x00, 0x2B, 0x02, 0xD0, 0xC0, 0x6B, 0x00, 0xF0, 0x1E, 0xF9
	.byte 0x01, 0xBC, 0xF0, 0xB4, 0x44, 0x46, 0x4D, 0x46, 0x56, 0x46, 0x5F, 0x46, 0xF0, 0xB4, 0x07, 0x1C
	.byte 0x78, 0x68, 0x00, 0x28, 0x00, 0xDA, 0x09, 0xE1, 0x8A, 0x48, 0x00, 0x68, 0x80, 0x46, 0x38, 0x1C
	.byte 0x00, 0xF0, 0x56, 0xFF, 0x78, 0x68, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0xE0, 0x78, 0x8C, 0x39, 0x8C
	.byte 0x40, 0x18, 0xA3, 0xE0, 0x3E, 0x7A, 0xFD, 0x6A, 0x01, 0x23, 0x00, 0x24, 0x28, 0x78, 0x80, 0x21
	.byte 0x01, 0x42, 0x00, 0xD1, 0x88, 0xE0, 0x9A, 0x46, 0x1C, 0x43, 0xA3, 0x46, 0x2C, 0x6A, 0x00, 0x2C
	.byte 0x13, 0xD0, 0x21, 0x78, 0xC7, 0x20, 0x08, 0x42, 0x09, 0xD0, 0x20, 0x7C, 0x00, 0x28, 0x09, 0xD0
	.byte 0x01, 0x38, 0x20, 0x74, 0x06, 0xD1, 0x40, 0x20, 0x01, 0x43, 0x21, 0x70, 0x02, 0xE0, 0x20, 0x1C
	.byte 0x00, 0xF0, 0xAC, 0xFC, 0x64, 0x6B, 0x00, 0x2C, 0xEB, 0xD1, 0x2B, 0x78, 0x40, 0x20, 0x18, 0x42
	.byte 0x3A, 0xD0, 0x28, 0x1C, 0x00, 0xF0, 0xAC, 0xFC, 0x80, 0x20, 0x28, 0x70, 0x02, 0x20, 0xE8, 0x73
	.byte 0x40, 0x20, 0xE8, 0x74, 0x16, 0x20, 0x68, 0x76, 0x01, 0x20, 0xA9, 0x1D, 0x88, 0x77, 0x2B, 0xE0
	.byte 0x2A, 0x6C, 0x11, 0x78, 0x80, 0x29, 0x01, 0xD2, 0xE9, 0x79, 0x04, 0xE0, 0x01, 0x32, 0x2A, 0x64
	.byte 0xBD, 0x29, 0x00, 0xD3, 0xE9, 0x71, 0xCF, 0x29, 0x08, 0xD3, 0x40, 0x46, 0x83, 0x6B, 0x08, 0x1C
	.byte 0xCF, 0x38, 0x39, 0x1C, 0x2A, 0x1C, 0x00, 0xF0, 0xB9, 0xF8, 0x15, 0xE0, 0xB0, 0x29, 0x0E, 0xD9
	.byte 0x08, 0x1C, 0xB1, 0x38, 0xB8, 0x72, 0x43, 0x46, 0x5B, 0x6B, 0x80, 0x00, 0x1B, 0x58, 0x38, 0x1C
	.byte 0x29, 0x1C, 0x00, 0xF0, 0xAB, 0xF8, 0x28, 0x78, 0x00, 0x28, 0x33, 0xD0, 0x04, 0xE0, 0x54, 0x48
	.byte 0x80, 0x39, 0x09, 0x18, 0x08, 0x78, 0x68, 0x70, 0x68, 0x78, 0x00, 0x28, 0xD0, 0xD0, 0x01, 0x38
	.byte 0x68, 0x70, 0x69, 0x7E, 0x00, 0x29, 0x25, 0xD0, 0xE8, 0x7D, 0x00, 0x28, 0x22, 0xD0, 0x28, 0x7F
	.byte 0x00, 0x28, 0x02, 0xD0, 0x01, 0x38, 0x28, 0x77, 0x1C, 0xE0, 0xA8, 0x7E, 0x40, 0x18, 0xA8, 0x76
	.byte 0x01, 0x1C, 0x40, 0x38, 0x00, 0x06, 0x02, 0xD5, 0x0A, 0x06, 0x12, 0x16, 0x01, 0xE0, 0x80, 0x20
	.byte 0x42, 0x1A, 0xE8, 0x7D, 0x50, 0x43, 0x82, 0x11, 0xA8, 0x7D, 0x50, 0x40, 0x00, 0x06, 0x09, 0xD0
	.byte 0xAA, 0x75, 0x28, 0x78, 0x29, 0x7E, 0x00, 0x29, 0x01, 0xD1, 0x0C, 0x21, 0x00, 0xE0, 0x03, 0x21
	.byte 0x08, 0x43, 0x28, 0x70, 0x53, 0x46, 0x5C, 0x46, 0x01, 0x3E, 0x03, 0xDD, 0x50, 0x20, 0x2D, 0x18
	.byte 0x5B, 0x00, 0x6B, 0xE7, 0xF8, 0x68, 0x01, 0x30, 0xF8, 0x60, 0x00, 0x2C, 0x03, 0xD1, 0x80, 0x20
	.byte 0x00, 0x06, 0x78, 0x60, 0x5A, 0xE0, 0x7C, 0x60, 0x78, 0x8C, 0x96, 0x38, 0x78, 0x84, 0x96, 0x28
	.byte 0x00, 0xD3, 0x57, 0xE7, 0x3A, 0x7A, 0xFD, 0x6A, 0x28, 0x78, 0x80, 0x21, 0x01, 0x42, 0x48, 0xD0
	.byte 0x0F, 0x21, 0x01, 0x42, 0x45, 0xD0, 0x91, 0x46, 0x38, 0x1C, 0x29, 0x1C, 0x00, 0xF0, 0xFC, 0xFE
	.byte 0x2C, 0x6A, 0x00, 0x2C, 0x38, 0xD0, 0x21, 0x78, 0xC7, 0x20, 0x08, 0x42, 0x03, 0xD1, 0x20, 0x1C
	.byte 0x00, 0xF0, 0x0C, 0xFC, 0x2D, 0xE0, 0x60, 0x78, 0x07, 0x26, 0x06, 0x40, 0x2B, 0x78, 0x03, 0x20
	.byte 0x18, 0x42, 0x07, 0xD0, 0x00, 0xF0, 0x64, 0xF8, 0x00, 0x2E, 0x03, 0xD0, 0x60, 0x7F, 0x01, 0x21
	.byte 0x08, 0x43, 0x60, 0x77, 0x2B, 0x78, 0x0C, 0x20, 0x18, 0x42, 0x1A, 0xD0, 0x21, 0x7A, 0x08, 0x20
	.byte 0x28, 0x56, 0x0A, 0x18, 0x00, 0xD5, 0x00, 0x22, 0x00, 0x2E, 0x0C, 0xD0, 0x40, 0x46, 0x03, 0x6B
	.byte 0x11, 0x1C, 0x6A, 0x7A, 0x30, 0x1C, 0x00, 0xF0, 0x21, 0xF8, 0x20, 0x62, 0x60, 0x7F, 0x02, 0x21
	.byte 0x08, 0x43, 0x60, 0x77, 0x05, 0xE0, 0x11, 0x1C, 0x6A, 0x7A, 0x60, 0x6A, 0x00, 0xF0, 0xA0, 0xF9
	.byte 0x20, 0x62, 0x64, 0x6B, 0x00, 0x2C, 0xC6, 0xD1, 0x28, 0x78, 0xF0, 0x21, 0x08, 0x40, 0x28, 0x70
	.byte 0x4A, 0x46, 0x01, 0x3A, 0x02, 0xDD, 0x50, 0x20, 0x2D, 0x18, 0xAD, 0xDC, 0x06, 0x48, 0x78, 0x63
	.byte 0xFF, 0xBC, 0x80, 0x46, 0x89, 0x46, 0x92, 0x46, 0x9B, 0x46, 0x08, 0xBC

	thumb_func_start sub_80D1E9C
sub_80D1E9C: @ 0x080D1E9C
	bx r3
	.align 2, 0
_080D1EA0:
	.byte 0xFC, 0x9C, 0x13, 0x08
_080D1EA4: .4byte 0x03007FF0
_080D1EA8: .4byte 0x68736D53

	thumb_func_start sub_80D1EAC
sub_80D1EAC: @ 0x080D1EAC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _080D1EE4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080D1EE2
	movs r6, #0
_080D1EC0:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080D1EDA
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _080D1ED8
	ldr r3, _080D1EEC @ =0x03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_80D1E9C
_080D1ED8:
	strb r6, [r4]
_080D1EDA:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080D1EC0
_080D1EE2:
	str r4, [r5, #0x20]
_080D1EE4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D1EEC: .4byte 0x03007FF0

	thumb_func_start sub_80D1EF0
sub_80D1EF0: @ 0x080D1EF0
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080D1F08
	movs r0, #0xff
_080D1F08:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080D1F1C
	movs r0, #0xff
_080D1F1C:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start sub_80D1F20
sub_80D1F20: @ 0x080D1F20
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _080D2118 @ =0x03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _080D211C @ =0x08139CFC
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080D1F66
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080D1F64
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080D1F64
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_080D1F64:
	str r3, [r5, #0x40]
_080D1F66:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _080D1FB8
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _080D1F86
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _080D1F88
_080D1F86:
	adds r0, r3, #0
_080D1F88:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _080D1FA0
	b _080D2106
_080D1FA0:
	movs r0, #0x80
	tst r0, r2
	beq _080D1FBC
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _080D1FB4
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_080D1FB4:
	ldrb r3, [r6, #1]
	b _080D1FBC
_080D1FB8:
	mov sb, r4
	ldrb r3, [r5, #5]
_080D1FBC:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _080D1FCC
	movs r0, #0xff
_080D1FCC:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _080D200C
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _080D1FE4
	b _080D2106
_080D1FE4:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080D2060
	movs r0, #0x40
	tst r0, r1
	bne _080D2060
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _080D2060
	beq _080D2004
	b _080D2106
_080D2004:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _080D2060
	b _080D2106
_080D200C:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_080D201A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080D2060
	movs r0, #0x40
	tst r0, r1
	beq _080D2034
	cmp r2, #0
	bne _080D2038
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _080D2052
_080D2034:
	cmp r2, #0
	bne _080D2054
_080D2038:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _080D2044
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _080D2052
_080D2044:
	bhi _080D2054
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _080D2050
	adds r7, r0, #0
	b _080D2052
_080D2050:
	blo _080D2054
_080D2052:
	mov r8, r4
_080D2054:
	adds r4, #0x40
	subs r3, #1
	bgt _080D201A
	mov r4, r8
	cmp r4, #0
	beq _080D2106
_080D2060:
	adds r0, r4, #0
	bl sub_80D262C
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _080D2074
	str r4, [r3, #0x30]
_080D2074:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _080D2086
	adds r1, r5, #0
	bl sub_80D2160
_080D2086:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_80D2BF8
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl sub_80D1EF0
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _080D20C0
	movs r3, #0
_080D20C0:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _080D20EE
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _080D20DA
	movs r0, #0x70
	tst r0, r1
	bne _080D20DC
_080D20DA:
	movs r1, #8
_080D20DC:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_80D1E9C
	b _080D20F8
_080D20EE:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl sub_80D21B0
_080D20F8:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_080D2106:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_080D2118: .4byte 0x03007FF0
_080D211C: .4byte 0x08139CFC

	thumb_func_start sub_80D2120
sub_80D2120: @ 0x080D2120
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _080D2132
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _080D2134
_080D2132:
	ldrb r3, [r1, #5]
_080D2134:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _080D215C
	movs r4, #0x83
	movs r5, #0x40
_080D213E:
	ldrb r2, [r1]
	tst r2, r4
	beq _080D2156
	tst r2, r5
	bne _080D2156
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _080D2156
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _080D215C
_080D2156:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _080D213E
_080D215C:
	pop {r4, r5}
	bx lr

	thumb_func_start sub_80D2160
sub_80D2160: @ 0x080D2160
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _080D2170
	movs r2, #0xc
	b _080D2172
_080D2170:
	movs r2, #3
_080D2172:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_80D217C
sub_80D217C: @ 0x080D217C
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_80D2188
sub_80D2188: @ 0x080D2188
	mov ip, lr
	bl sub_80D217C
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _080D2198
	bl sub_80D2160
_080D2198:
	bx ip
	.align 2, 0

	thumb_func_start sub_80D219C
sub_80D219C: @ 0x080D219C
	mov ip, lr
	bl sub_80D217C
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _080D21AC
	bl sub_80D2160
_080D21AC:
	bx ip
	.align 2, 0

	thumb_func_start sub_80D21B0
sub_80D21B0: @ 0x080D21B0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _080D21C4
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_080D21C4:
	ldr r3, _080D220C @ =0x08139B18
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _080D2210 @ =0x08139BCC
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D220C: .4byte 0x08139B18
_080D2210: .4byte 0x08139BCC
_080D2214:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_80D2218
sub_80D2218: @ 0x080D2218
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _080D222C @ =0x68736D53
	cmp r3, r0
	bne _080D222A
	ldr r0, [r2, #4]
	ldr r1, _080D2230 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_080D222A:
	bx lr
	.align 2, 0
_080D222C: .4byte 0x68736D53
_080D2230: .4byte 0x7FFFFFFF

	thumb_func_start sub_80D2234
sub_80D2234: @ 0x080D2234
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080D2250 @ =0x68736D53
	cmp r3, r0
	bne _080D224C
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_080D224C:
	bx lr
	.align 2, 0
_080D2250: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x080D2254
	push {r4, r5, r6, lr}
	ldr r0, _080D22A8 @ =0x080D1629
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080D22AC @ =0x03000000
	ldr r2, _080D22B0 @ =0x04000100
	bl sub_80D3750
	ldr r0, _080D22B4 @ =0x02000C80
	bl sub_80D2654
	ldr r0, _080D22B8 @ =0x02001CC0
	bl sub_80D2510
	ldr r0, _080D22BC @ =0x0094BA00
	bl sub_80D27F0
	ldr r0, _080D22C0 @ =0x00000005
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080D22A2
	ldr r5, _080D22C4 @ =0x0813ABB4
	adds r6, r0, #0
_080D2286:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_80D2994
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _080D22C8 @ =0x02001EC0
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _080D2286
_080D22A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D22A8: .4byte 0x080D1629
_080D22AC: .4byte 0x03000000
_080D22B0: .4byte 0x04000100
_080D22B4: .4byte 0x02000C80
_080D22B8: .4byte 0x02001CC0
_080D22BC: .4byte 0x0094BA00
_080D22C0: .4byte 0x00000005
_080D22C4: .4byte 0x0813ABB4
_080D22C8: .4byte 0x02001EC0

	thumb_func_start sub_80D22CC
sub_80D22CC: @ 0x080D22CC
	push {lr}
	bl sub_80D15A4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80D22D8
sub_80D22D8: @ 0x080D22D8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080D22FC @ =0x0813ABB4
	ldr r1, _080D2300 @ =0x0813ABF0
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_80D2A0C
	pop {r0}
	bx r0
	.align 2, 0
_080D22FC: .4byte 0x0813ABB4
_080D2300: .4byte 0x0813ABF0

	thumb_func_start sub_80D2304
sub_80D2304: @ 0x080D2304
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080D2330 @ =0x0813ABB4
	ldr r1, _080D2334 @ =0x0813ABF0
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080D2338
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_80D2A0C
	b _080D234C
	.align 2, 0
_080D2330: .4byte 0x0813ABB4
_080D2334: .4byte 0x0813ABF0
_080D2338:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080D2344
	cmp r2, #0
	bge _080D234C
_080D2344:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_80D2A0C
_080D234C:
	pop {r0}
	bx r0

	thumb_func_start sub_80D2350
sub_80D2350: @ 0x080D2350
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080D237C @ =0x0813ABB4
	ldr r1, _080D2380 @ =0x0813ABF0
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080D2384
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_80D2A0C
	b _080D23A0
	.align 2, 0
_080D237C: .4byte 0x0813ABB4
_080D2380: .4byte 0x0813ABF0
_080D2384:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _080D2396
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_80D2A0C
	b _080D23A0
_080D2396:
	cmp r2, #0
	bge _080D23A0
	adds r0, r1, #0
	bl sub_80D2218
_080D23A0:
	pop {r0}
	bx r0

	thumb_func_start sub_80D23A4
sub_80D23A4: @ 0x080D23A4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080D23D0 @ =0x0813ABB4
	ldr r1, _080D23D4 @ =0x0813ABF0
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080D23CA
	adds r0, r2, #0
	bl sub_80D2AF0
_080D23CA:
	pop {r0}
	bx r0
	.align 2, 0
_080D23D0: .4byte 0x0813ABB4
_080D23D4: .4byte 0x0813ABF0

	thumb_func_start sub_80D23D8
sub_80D23D8: @ 0x080D23D8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080D2404 @ =0x0813ABB4
	ldr r1, _080D2408 @ =0x0813ABF0
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080D23FE
	adds r0, r2, #0
	bl sub_80D2218
_080D23FE:
	pop {r0}
	bx r0
	.align 2, 0
_080D2404: .4byte 0x0813ABB4
_080D2408: .4byte 0x0813ABF0

	thumb_func_start sub_80D240C
sub_80D240C: @ 0x080D240C
	push {r4, r5, lr}
	ldr r0, _080D2430 @ =0x00000005
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080D242A
	ldr r5, _080D2434 @ =0x0813ABB4
	adds r4, r0, #0
_080D241C:
	ldr r0, [r5]
	bl sub_80D2AF0
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080D241C
_080D242A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D2430: .4byte 0x00000005
_080D2434: .4byte 0x0813ABB4

	thumb_func_start sub_80D2438
sub_80D2438: @ 0x080D2438
	push {lr}
	bl sub_80D2218
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80D2444
sub_80D2444: @ 0x080D2444
	push {r4, r5, lr}
	ldr r0, _080D2468 @ =0x00000005
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080D2462
	ldr r5, _080D246C @ =0x0813ABB4
	adds r4, r0, #0
_080D2454:
	ldr r0, [r5]
	bl sub_80D2218
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080D2454
_080D2462:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D2468: .4byte 0x00000005
_080D246C: .4byte 0x0813ABB4

	thumb_func_start sub_80D2470
sub_80D2470: @ 0x080D2470
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_80D2234
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80D2480
sub_80D2480: @ 0x080D2480
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080D2498 @ =0x68736D53
	cmp r3, r0
	bne _080D2496
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _080D249C @ =0x00000101
	strh r0, [r2, #0x28]
_080D2496:
	bx lr
	.align 2, 0
_080D2498: .4byte 0x68736D53
_080D249C: .4byte 0x00000101

	thumb_func_start sub_80D24A0
sub_80D24A0: @ 0x080D24A0
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080D24C0 @ =0x68736D53
	cmp r3, r0
	bne _080D24BE
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _080D24C4 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_080D24BE:
	bx lr
	.align 2, 0
_080D24C0: .4byte 0x68736D53
_080D24C4: .4byte 0x7FFFFFFF

	thumb_func_start sub_80D24C8
sub_80D24C8: @ 0x080D24C8
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _080D250A
	movs r7, #0x80
_080D24D4:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080D2502
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080D2502
	adds r0, r4, #0
	bl sub_80D2640
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_080D2502:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080D24D4
_080D250A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80D2510
sub_80D2510: @ 0x080D2510
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080D25D8 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _080D25DC @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _080D25E0 @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _080D25E4 @ =0x03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _080D25E8 @ =0x68736D53
	cmp r6, r0
	bne _080D25D0
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _080D25EC @ =0x02001C30
	ldr r0, _080D25F0 @ =sub_80D34CC
	str r0, [r1, #0x20]
	ldr r0, _080D25F4 @ =sub_80D2188
	str r0, [r1, #0x44]
	ldr r0, _080D25F8 @ =sub_80D219C
	str r0, [r1, #0x4c]
	ldr r0, _080D25FC @ =sub_80D3624
	str r0, [r1, #0x70]
	ldr r0, _080D2600 @ =sub_80D2120
	str r0, [r1, #0x74]
	ldr r0, _080D2604 @ =sub_80D274C
	str r0, [r1, #0x78]
	ldr r0, _080D2608 @ =sub_80D1EAC
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _080D260C @ =sub_80D2B30
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _080D2610 @ =sub_80D2BF8
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _080D2614 @ =sub_80D2E0C
	str r0, [r4, #0x28]
	ldr r0, _080D2618 @ =sub_80D2D54
	str r0, [r4, #0x2c]
	ldr r0, _080D261C @ =sub_80D2CAC
	str r0, [r4, #0x30]
	ldr r0, _080D2620 @ =0x00000050
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _080D2624 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl sub_80D3750
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_080D25D0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D25D8: .4byte 0x04000084
_080D25DC: .4byte 0x04000080
_080D25E0: .4byte 0x04000063
_080D25E4: .4byte 0x03007FF0
_080D25E8: .4byte 0x68736D53
_080D25EC: .4byte 0x02001C30
_080D25F0: .4byte sub_80D34CC
_080D25F4: .4byte sub_80D2188
_080D25F8: .4byte sub_80D219C
_080D25FC: .4byte sub_80D3624
_080D2600: .4byte sub_80D2120
_080D2604: .4byte sub_80D274C
_080D2608: .4byte sub_80D1EAC
_080D260C: .4byte sub_80D2B30
_080D2610: .4byte sub_80D2BF8
_080D2614: .4byte sub_80D2E0C
_080D2618: .4byte sub_80D2D54
_080D261C: .4byte sub_80D2CAC
_080D2620: .4byte 0x00000050
_080D2624: .4byte 0x05000040
_080D2628:
	.byte 0x2A, 0xDF, 0x70, 0x47

	thumb_func_start sub_80D262C
sub_80D262C: @ 0x080D262C
	push {lr}
	ldr r1, _080D263C @ =0x02001CB8
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080D263C: .4byte 0x02001CB8

	thumb_func_start sub_80D2640
sub_80D2640: @ 0x080D2640
	push {lr}
	ldr r1, _080D2650 @ =0x02001CBC
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080D2650: .4byte 0x02001CBC

	thumb_func_start sub_80D2654
sub_80D2654: @ 0x080D2654
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _080D270C @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _080D2670
	ldr r0, _080D2710 @ =0x84400004
	str r0, [r1]
_080D2670:
	ldr r1, _080D2714 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _080D267E
	ldr r0, _080D2710 @ =0x84400004
	str r0, [r1]
_080D267E:
	ldr r0, _080D2718 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _080D271C @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _080D2720 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080D2724 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080D2728 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _080D272C @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _080D2730 @ =0x040000A4
	str r0, [r1]
	ldr r0, _080D2734 @ =0x03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _080D2738 @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl sub_80D3750
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _080D273C @ =sub_80D1F20
	str r0, [r5, #0x38]
	ldr r0, _080D2740 @ =0x080D3745
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _080D2744 @ =0x02001C30
	adds r0, r4, #0
	bl sub_80D1A34
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_80D274C
	ldr r0, _080D2748 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D270C: .4byte 0x040000C4
_080D2710: .4byte 0x84400004
_080D2714: .4byte 0x040000D0
_080D2718: .4byte 0x040000C6
_080D271C: .4byte 0x04000084
_080D2720: .4byte 0x0000A90E
_080D2724: .4byte 0x04000089
_080D2728: .4byte 0x040000BC
_080D272C: .4byte 0x040000A0
_080D2730: .4byte 0x040000A4
_080D2734: .4byte 0x03007FF0
_080D2738: .4byte 0x050003EC
_080D273C: .4byte sub_80D1F20
_080D2740: .4byte 0x080D3745
_080D2744: .4byte 0x02001C30
_080D2748: .4byte 0x68736D53

	thumb_func_start sub_80D274C
sub_80D274C: @ 0x080D274C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _080D27CC @ =0x03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _080D27D0 @ =0x08139BFC
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_80D0EC8
	strb r0, [r4, #0xb]
	ldr r0, _080D27D4 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _080D27D8 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _080D27DC @ =0x00002710
	bl sub_80D0EC8
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_80D0EC8
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _080D27E0 @ =0x04000102
	strh r6, [r0]
	ldr r4, _080D27E4 @ =0x04000100
	ldr r0, _080D27E8 @ =0x00044940
	adds r1, r5, #0
	bl sub_80D0EC8
	rsbs r0, r0, #0
	strh r0, [r4]
	bl sub_80D2958
	ldr r1, _080D27EC @ =0x04000006
_080D27B0:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _080D27B0
	ldr r1, _080D27EC @ =0x04000006
_080D27B8:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _080D27B8
	ldr r1, _080D27E0 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D27CC: .4byte 0x03007FF0
_080D27D0: .4byte 0x08139BFC
_080D27D4: .4byte 0x00091D1B
_080D27D8: .4byte 0x00001388
_080D27DC: .4byte 0x00002710
_080D27E0: .4byte 0x04000102
_080D27E4: .4byte 0x04000100
_080D27E8: .4byte 0x00044940
_080D27EC: .4byte 0x04000006

	thumb_func_start sub_80D27F0
sub_80D27F0: @ 0x080D27F0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080D287C @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080D2880 @ =0x68736D53
	cmp r1, r0
	bne _080D2876
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _080D2812
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_080D2812:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _080D2832
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_080D2828:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _080D2828
_080D2832:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _080D2840
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_080D2840:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _080D285E
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _080D2884 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_080D285E:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _080D2872
	bl sub_80D28DC
	adds r0, r4, #0
	bl sub_80D274C
_080D2872:
	ldr r0, _080D2880 @ =0x68736D53
	str r0, [r5]
_080D2876:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D287C: .4byte 0x03007FF0
_080D2880: .4byte 0x68736D53
_080D2884: .4byte 0x04000089
_080D2888:
	.byte 0xF0, 0xB5, 0x12, 0x48, 0x06, 0x68, 0x31, 0x68
	.byte 0x11, 0x48, 0x81, 0x42, 0x1B, 0xD1, 0x48, 0x1C, 0x30, 0x60, 0x0C, 0x25, 0x34, 0x1C, 0x50, 0x34
	.byte 0x00, 0x20, 0x20, 0x70, 0x01, 0x3D, 0x40, 0x34, 0x00, 0x2D, 0xFA, 0xDC, 0xF4, 0x69, 0x00, 0x2C
	.byte 0x0B, 0xD0, 0x01, 0x25, 0x00, 0x27, 0x28, 0x06, 0x00, 0x0E, 0xF1, 0x6A, 0x01, 0xF0, 0x28, 0xF8
	.byte 0x27, 0x70, 0x01, 0x35, 0x40, 0x34, 0x04, 0x2D, 0xF5, 0xDD, 0x03, 0x48, 0x30, 0x60, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0xF0, 0x7F, 0x00, 0x03, 0x53, 0x6D, 0x73, 0x68

	thumb_func_start sub_80D28DC
sub_80D28DC: @ 0x080D28DC
	push {lr}
	sub sp, #4
	ldr r0, _080D293C @ =0x03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _080D2940 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _080D2934
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _080D2944 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _080D2906
	ldr r0, _080D2948 @ =0x84400004
	str r0, [r1]
_080D2906:
	ldr r1, _080D294C @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _080D2914
	ldr r0, _080D2948 @ =0x84400004
	str r0, [r1]
_080D2914:
	ldr r0, _080D2950 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _080D2954 @ =0x05000318
	mov r0, sp
	bl sub_80D3750
_080D2934:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080D293C: .4byte 0x03007FF0
_080D2940: .4byte 0x978C92AD
_080D2944: .4byte 0x040000C4
_080D2948: .4byte 0x84400004
_080D294C: .4byte 0x040000D0
_080D2950: .4byte 0x040000C6
_080D2954: .4byte 0x05000318

	thumb_func_start sub_80D2958
sub_80D2958: @ 0x080D2958
	push {r4, lr}
	ldr r0, _080D2988 @ =0x03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _080D298C @ =0x68736D53
	cmp r3, r0
	beq _080D2980
	ldr r0, _080D2990 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_080D2980:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D2988: .4byte 0x03007FF0
_080D298C: .4byte 0x68736D53
_080D2990: .4byte 0x040000C6

	thumb_func_start sub_80D2994
sub_80D2994: @ 0x080D2994
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _080D29F8
	cmp r4, #0x10
	bls _080D29A8
	movs r4, #0x10
_080D29A8:
	ldr r0, _080D2A00 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080D2A04 @ =0x68736D53
	cmp r1, r0
	bne _080D29F8
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_80D2640
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _080D29DC
	movs r1, #0
_080D29CE:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _080D29CE
_080D29DC:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _080D29EC
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_080D29EC:
	str r7, [r5, #0x24]
	ldr r0, _080D2A08 @ =0x080D1C45
	str r0, [r5, #0x20]
	ldr r0, _080D2A04 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_080D29F8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D2A00: .4byte 0x03007FF0
_080D2A04: .4byte 0x68736D53
_080D2A08: .4byte 0x080D1C45

	thumb_func_start sub_80D2A0C
sub_80D2A0C: @ 0x080D2A0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _080D2AEC @ =0x68736D53
	cmp r1, r0
	bne _080D2AE2
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _080D2A4E
	ldr r0, [r5]
	cmp r0, #0
	beq _080D2A38
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _080D2A44
_080D2A38:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080D2A4E
	cmp r1, #0
	blt _080D2A4E
_080D2A44:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _080D2AE2
_080D2A4E:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _080D2AAE
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080D2ACE
	mov r8, r6
_080D2A82:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80D1EAC
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _080D2AAE
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080D2A82
_080D2AAE:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080D2ACE
	movs r1, #0
	mov r8, r1
_080D2AB8:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80D1EAC
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080D2AB8
_080D2ACE:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _080D2ADE
	ldrb r0, [r7, #3]
	bl sub_80D27F0
_080D2ADE:
	ldr r0, _080D2AEC @ =0x68736D53
	str r0, [r5, #0x34]
_080D2AE2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D2AEC: .4byte 0x68736D53

	thumb_func_start sub_80D2AF0
sub_80D2AF0: @ 0x080D2AF0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _080D2B2C @ =0x68736D53
	cmp r1, r0
	bne _080D2B26
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _080D2B22
_080D2B12:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80D1EAC
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _080D2B12
_080D2B22:
	ldr r0, _080D2B2C @ =0x68736D53
	str r0, [r6, #0x34]
_080D2B26:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D2B2C: .4byte 0x68736D53

	thumb_func_start sub_80D2B30
sub_80D2B30: @ 0x080D2B30
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _080D2BF2
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _080D2B70 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080D2BF2
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080D2B74
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _080D2BC6
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _080D2BC6
	.align 2, 0
_080D2B70: .4byte 0x0000FFFF
_080D2B74:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080D2BC6
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080D2BA6
_080D2B8A:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80D1EAC
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _080D2B9E
	strb r0, [r4]
_080D2B9E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080D2B8A
_080D2BA6:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _080D2BBA
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _080D2BBE
_080D2BBA:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080D2BBE:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _080D2BF2
_080D2BC6:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080D2BF2
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_080D2BD4:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080D2BEA
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_080D2BEA:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080D2BD4
_080D2BF2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80D2BF8
sub_80D2BF8: @ 0x080D2BF8
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080D2C5C
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _080D2C20
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_080D2C20:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _080D2C36
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_080D2C36:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080D2C42
	adds r1, r0, #0
	b _080D2C48
_080D2C42:
	cmp r1, #0x7f
	ble _080D2C48
	movs r1, #0x7f
_080D2C48:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_080D2C5C:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080D2CA0
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _080D2C9A
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_080D2C9A:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_080D2CA0:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80D2CAC
sub_80D2CAC: @ 0x080D2CAC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _080D2CE4
	cmp r5, #0x14
	bhi _080D2CC8
	movs r5, #0
	b _080D2CD6
_080D2CC8:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080D2CD6
	movs r5, #0x3b
_080D2CD6:
	ldr r0, _080D2CE0 @ =0x08139CB0
	adds r0, r5, r0
	ldrb r0, [r0]
	b _080D2D46
	.align 2, 0
_080D2CE0: .4byte 0x08139CB0
_080D2CE4:
	cmp r5, #0x23
	bhi _080D2CF0
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _080D2D02
_080D2CF0:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _080D2D02
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_080D2D02:
	ldr r3, _080D2D4C @ =0x08139C14
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _080D2D50 @ =0x08139C98
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_080D2D46:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D2D4C: .4byte 0x08139C14
_080D2D50: .4byte 0x08139C98

	thumb_func_start sub_80D2D54
sub_80D2D54: @ 0x080D2D54
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _080D2D7C
	cmp r0, #2
	bgt _080D2D68
	cmp r0, #1
	beq _080D2D6E
	b _080D2D90
_080D2D68:
	cmp r1, #3
	beq _080D2D84
	b _080D2D90
_080D2D6E:
	ldr r1, _080D2D78 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _080D2D98
	.align 2, 0
_080D2D78: .4byte 0x04000063
_080D2D7C:
	ldr r1, _080D2D80 @ =0x04000069
	b _080D2D92
	.align 2, 0
_080D2D80: .4byte 0x04000069
_080D2D84:
	ldr r1, _080D2D8C @ =0x04000070
	movs r0, #0
	b _080D2D9A
	.align 2, 0
_080D2D8C: .4byte 0x04000070
_080D2D90:
	ldr r1, _080D2DA0 @ =0x04000079
_080D2D92:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_080D2D98:
	movs r0, #0x80
_080D2D9A:
	strb r0, [r1]
	bx lr
	.align 2, 0
_080D2DA0: .4byte 0x04000079

	thumb_func_start sub_80D2DA4
sub_80D2DA4: @ 0x080D2DA4
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _080D2DC4
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _080D2DD0
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _080D2DDE
_080D2DC4:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _080D2DD0
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _080D2DDE
_080D2DD0:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _080D2DEE
_080D2DDE:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _080D2DF0
	movs r0, #0xf
_080D2DEE:
	strb r0, [r1, #0xa]
_080D2DF0:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80D2E0C
sub_80D2E0C: @ 0x080D2E0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _080D2E2C @ =0x03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _080D2E30
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _080D2E36
	.align 2, 0
_080D2E2C: .4byte 0x03007FF0
_080D2E30:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_080D2E36:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_080D2E3C:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _080D2E52
	b _080D323C
_080D2E52:
	cmp r6, #2
	beq _080D2E84
	cmp r6, #2
	bgt _080D2E60
	cmp r6, #1
	beq _080D2E66
	b _080D2EBC
_080D2E60:
	cmp r6, #3
	beq _080D2E9C
	b _080D2EBC
_080D2E66:
	ldr r0, _080D2E78 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _080D2E7C @ =0x04000062
	ldr r2, _080D2E80 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080D2ECC
	.align 2, 0
_080D2E78: .4byte 0x04000060
_080D2E7C: .4byte 0x04000062
_080D2E80: .4byte 0x04000063
_080D2E84:
	ldr r0, _080D2E90 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _080D2E94 @ =0x04000068
	ldr r2, _080D2E98 @ =0x04000069
	b _080D2EC4
	.align 2, 0
_080D2E90: .4byte 0x04000061
_080D2E94: .4byte 0x04000068
_080D2E98: .4byte 0x04000069
_080D2E9C:
	ldr r0, _080D2EB0 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _080D2EB4 @ =0x04000072
	ldr r2, _080D2EB8 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080D2ECC
	.align 2, 0
_080D2EB0: .4byte 0x04000070
_080D2EB4: .4byte 0x04000072
_080D2EB8: .4byte 0x04000073
_080D2EBC:
	ldr r0, _080D2F1C @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _080D2F20 @ =0x04000078
	ldr r2, _080D2F24 @ =0x04000079
_080D2EC4:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_080D2ECC:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080D2FC2
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _080D2FE6
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl sub_80D2DA4
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _080D2F34
	cmp r6, #2
	bgt _080D2F28
	cmp r6, #1
	beq _080D2F2E
	b _080D2F88
	.align 2, 0
_080D2F1C: .4byte 0x04000071
_080D2F20: .4byte 0x04000078
_080D2F24: .4byte 0x04000079
_080D2F28:
	cmp r6, #3
	beq _080D2F40
	b _080D2F88
_080D2F2E:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_080D2F34:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _080D2F94
_080D2F40:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _080D2F68
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _080D2F7C @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_080D2F68:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080D2F80
	movs r0, #0xc0
	b _080D2FA2
	.align 2, 0
_080D2F7C: .4byte 0x04000090
_080D2F80:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _080D2FA4
_080D2F88:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_080D2F94:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080D2FA2
	movs r0, #0x40
_080D2FA2:
	strb r0, [r4, #0x1a]
_080D2FA4:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080D2FBE
	b _080D30FA
_080D2FBE:
	strb r2, [r4, #9]
	b _080D3128
_080D2FC2:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080D2FF4
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _080D2FE6
	b _080D313A
_080D2FE6:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_80D2D54
	movs r0, #0
	strb r0, [r4]
	b _080D3238
_080D2FF4:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _080D3034
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080D3034
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080D3066
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080D3128
	ldrb r2, [r4, #7]
	mov r8, r2
	b _080D3128
_080D3034:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080D3128
	cmp r6, #3
	bne _080D3046
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080D3046:
	adds r0, r4, #0
	bl sub_80D2DA4
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _080D309A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080D3096
_080D3066:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080D2FE6
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080D313A
	movs r2, #8
	mov r8, r2
	b _080D313A
_080D3096:
	ldrb r0, [r4, #7]
	b _080D3126
_080D309A:
	cmp r0, #1
	bne _080D30A6
_080D309E:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _080D3126
_080D30A6:
	cmp r0, #2
	bne _080D30EA
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _080D30E6
_080D30BE:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080D30CE
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _080D3066
_080D30CE:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080D309E
	movs r0, #8
	mov r8, r0
	b _080D309E
_080D30E6:
	ldrb r0, [r4, #5]
	b _080D3126
_080D30EA:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _080D3124
_080D30FA:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080D30BE
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _080D3128
	ldrb r2, [r4, #5]
	mov r8, r2
	b _080D3128
_080D3124:
	ldrb r0, [r4, #4]
_080D3126:
	strb r0, [r4, #0xb]
_080D3128:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _080D313A
	subs r0, #1
	str r0, [sp]
	b _080D3034
_080D313A:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _080D31B2
	cmp r6, #3
	bgt _080D317A
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _080D317A
	ldr r0, _080D3164 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _080D316C
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _080D3168 @ =0x000007FC
	b _080D3176
	.align 2, 0
_080D3164: .4byte 0x04000089
_080D3168: .4byte 0x000007FC
_080D316C:
	cmp r0, #0x7f
	bgt _080D317A
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _080D3188 @ =0x000007FE
_080D3176:
	ands r0, r1
	str r0, [r4, #0x20]
_080D317A:
	cmp r6, #4
	beq _080D318C
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _080D319A
	.align 2, 0
_080D3188: .4byte 0x000007FE
_080D318C:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_080D319A:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080D31B2:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _080D3238
	ldr r1, _080D31FC @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _080D3204
	ldr r0, _080D3200 @ =0x08139CEC
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _080D3238
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _080D3238
	.align 2, 0
_080D31FC: .4byte 0x04000081
_080D3200: .4byte 0x08139CEC
_080D3204:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _080D3238
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080D3238
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080D3238:
	movs r0, #0
	strb r0, [r4, #0x1d]
_080D323C:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _080D3246
	b _080D2E3C
_080D3246:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80D3258
sub_80D3258: @ 0x080D3258
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080D327C @ =0x68736D53
	cmp r3, r0
	bne _080D3274
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_080D3274:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D327C: .4byte 0x68736D53

	thumb_func_start sub_80D3280
sub_80D3280: @ 0x080D3280
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080D32E4 @ =0x68736D53
	cmp r3, r0
	bne _080D32D8
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080D32D4
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_080D32B0:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080D32CA
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080D32CA
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080D32CA:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080D32B0
_080D32D4:
	ldr r0, _080D32E4 @ =0x68736D53
	str r0, [r4, #0x34]
_080D32D8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D32E4: .4byte 0x68736D53

	thumb_func_start sub_80D32E8
sub_80D32E8: @ 0x080D32E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080D3358 @ =0x68736D53
	cmp r3, r0
	bne _080D334A
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080D3346
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_080D3320:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _080D333C
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _080D333C
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_080D333C:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080D3320
_080D3346:
	ldr r0, _080D3358 @ =0x68736D53
	str r0, [r4, #0x34]
_080D334A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D3358: .4byte 0x68736D53

	thumb_func_start sub_80D335C
sub_80D335C: @ 0x080D335C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _080D33C0 @ =0x68736D53
	cmp r3, r0
	bne _080D33B4
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080D33B0
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_080D338C:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080D33A6
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080D33A6
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080D33A6:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080D338C
_080D33B0:
	ldr r0, _080D33C0 @ =0x68736D53
	str r0, [r4, #0x34]
_080D33B4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D33C0: .4byte 0x68736D53

	thumb_func_start sub_80D33C4
sub_80D33C4: @ 0x080D33C4
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _080D33D8
	movs r0, #0xc
	b _080D33DA
_080D33D8:
	movs r0, #3
_080D33DA:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_80D33E4
sub_80D33E4: @ 0x080D33E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080D3454 @ =0x68736D53
	cmp r1, r0
	bne _080D3444
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080D3440
	mov sb, r8
_080D3414:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080D3436
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _080D3436
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _080D3436
	adds r0, r4, #0
	bl sub_80D33C4
_080D3436:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080D3414
_080D3440:
	ldr r0, _080D3454 @ =0x68736D53
	str r0, [r6, #0x34]
_080D3444:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D3454: .4byte 0x68736D53

	thumb_func_start sub_80D3458
sub_80D3458: @ 0x080D3458
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080D34C8 @ =0x68736D53
	cmp r1, r0
	bne _080D34B8
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080D34B4
	mov sb, r8
_080D3488:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080D34AA
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _080D34AA
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _080D34AA
	adds r0, r4, #0
	bl sub_80D33C4
_080D34AA:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080D3488
_080D34B4:
	ldr r0, _080D34C8 @ =0x68736D53
	str r0, [r6, #0x34]
_080D34B8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D34C8: .4byte 0x68736D53

	thumb_func_start sub_80D34CC
sub_80D34CC: @ 0x080D34CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _080D34F0
	b _080D361E
_080D34F0:
	lsls r0, r5, #2
	ldr r1, _080D34FC @ =_080D3500
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080D34FC: .4byte _080D3500
_080D3500: @ jump table
	.4byte _080D3548 @ case 0
	.4byte _080D354C @ case 1
	.4byte _080D3554 @ case 2
	.4byte _080D355C @ case 3
	.4byte _080D3566 @ case 4
	.4byte _080D3574 @ case 5
	.4byte _080D3582 @ case 6
	.4byte _080D358A @ case 7
	.4byte _080D3592 @ case 8
	.4byte _080D359A @ case 9
	.4byte _080D35A2 @ case 10
	.4byte _080D35AA @ case 11
	.4byte _080D35B2 @ case 12
	.4byte _080D35C0 @ case 13
	.4byte _080D35CE @ case 14
	.4byte _080D35DC @ case 15
	.4byte _080D35EA @ case 16
	.4byte _080D35F8 @ case 17
_080D3548:
	strb r2, [r3]
	b _080D361E
_080D354C:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _080D361E
_080D3554:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _080D361E
_080D355C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _080D361E
_080D3566:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _080D361E
_080D3574:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _080D361E
_080D3582:
	ldrb r3, [r3]
	cmp r3, r2
	beq _080D3604
	b _080D3618
_080D358A:
	ldrb r3, [r3]
	cmp r3, r2
	bne _080D3604
	b _080D3618
_080D3592:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _080D3604
	b _080D3618
_080D359A:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _080D3604
	b _080D3618
_080D35A2:
	ldrb r3, [r3]
	cmp r3, r2
	bls _080D3604
	b _080D3618
_080D35AA:
	ldrb r3, [r3]
	cmp r3, r2
	blo _080D3604
	b _080D3618
_080D35B2:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _080D3604
	b _080D3618
_080D35C0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _080D3604
	b _080D3618
_080D35CE:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _080D3604
	b _080D3618
_080D35DC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080D3604
	b _080D3618
_080D35EA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _080D3604
	b _080D3618
_080D35F8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080D3618
_080D3604:
	ldr r0, _080D3614 @ =0x02001C34
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _080D361E
	.align 2, 0
_080D3614: .4byte 0x02001C34
_080D3618:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_080D361E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80D3624
sub_80D3624: @ 0x080D3624
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _080D3640 @ =0x08139D30
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080D3640: .4byte 0x08139D30

	thumb_func_start sub_80D3644
sub_80D3644: @ 0x080D3644
	push {lr}
	ldr r2, _080D3654 @ =0x02001C30
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080D3654: .4byte 0x02001C30

	thumb_func_start sub_80D3658
sub_80D3658: @ 0x080D3658
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _080D3690 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _080D3694 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _080D3698 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _080D369C @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D3690: .4byte 0xFFFFFF00
_080D3694: .4byte 0xFFFF00FF
_080D3698: .4byte 0xFF00FFFF
_080D369C: .4byte 0x00FFFFFF
_080D36A0:
	.byte 0x08, 0x6C, 0x02, 0x78, 0x08, 0x1C, 0x24, 0x30, 0x02, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0x08, 0x6C, 0x02, 0x78, 0x08, 0x1C, 0x2C, 0x30, 0x02, 0x70, 0x08, 0x6C
	.byte 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x00, 0x00, 0x08, 0x6C, 0x00, 0x78, 0x0A, 0x1C, 0x2D, 0x32
	.byte 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x00, 0x00, 0x08, 0x6C, 0x00, 0x78
	.byte 0x0A, 0x1C, 0x2E, 0x32, 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x00, 0x00
	.byte 0x08, 0x6C, 0x00, 0x78, 0x0A, 0x1C, 0x2F, 0x32, 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0x08, 0x6C, 0x02, 0x78, 0x8A, 0x77, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47
	.byte 0x08, 0x6C, 0x02, 0x78, 0xCA, 0x77, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x08, 0x6C, 0x00, 0x78
	.byte 0x0A, 0x1C, 0x26, 0x32, 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64, 0x70, 0x47, 0x00, 0x00
	.byte 0x08, 0x6C, 0x00, 0x78, 0x0A, 0x1C, 0x27, 0x32, 0x10, 0x70, 0x08, 0x6C, 0x01, 0x30, 0x08, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
