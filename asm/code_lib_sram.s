	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start sub_80D3778
sub_80D3778: @ 0x080D3778
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _080D3794
	movs r2, #1
	rsbs r2, r2, #0
_080D3786:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _080D3786
_080D3794:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80D379C
sub_80D379C: @ 0x080D379C
	push {r4, r5, r6, lr}
	sub sp, #0x80
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _080D37C8 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080D37CC @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080D37D0 @ =sub_80D3778
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080D37D4 @ =sub_80D379C
	ldr r1, _080D37D0 @ =sub_80D3778
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080D37E4
	.align 2, 0
_080D37C8: .4byte 0x04000204
_080D37CC: .4byte 0x0000FFFC
_080D37D0: .4byte sub_80D3778
_080D37D4: .4byte sub_80D379C
_080D37D8:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080D37E4:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080D37D8
	mov r3, sp
	adds r3, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0x80
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80D3800
sub_80D3800: @ 0x080D3800
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _080D3838 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080D383C @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080D3830
	adds r1, r0, #0
_080D3822:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r3, #1
	cmp r3, r1
	bne _080D3822
_080D3830:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D3838: .4byte 0x04000204
_080D383C: .4byte 0x0000FFFC

	thumb_func_start sub_80D3840
sub_80D3840: @ 0x080D3840
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _080D3866
	movs r2, #1
	rsbs r2, r2, #0
_080D3850:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _080D3860
	subs r0, r3, #1
	b _080D3868
_080D3860:
	subs r4, #1
	cmp r4, r2
	bne _080D3850
_080D3866:
	movs r0, #0
_080D3868:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80D3870
sub_80D3870: @ 0x080D3870
	push {r4, r5, r6, lr}
	sub sp, #0xc0
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _080D389C @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080D38A0 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080D38A4 @ =sub_80D3840
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080D38A8 @ =sub_80D3870
	ldr r1, _080D38A4 @ =sub_80D3840
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080D38B8
	.align 2, 0
_080D389C: .4byte 0x04000204
_080D38A0: .4byte 0x0000FFFC
_080D38A4: .4byte sub_80D3840
_080D38A8: .4byte sub_80D3870
_080D38AC:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080D38B8:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080D38AC
	mov r3, sp
	adds r3, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0xc0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80D38D4
sub_80D38D4: @ 0x080D38D4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r7, #0
	b _080D38E6
_080D38E0:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080D38E6:
	cmp r7, #2
	bhi _080D3904
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80D3800
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80D3870
	adds r3, r0, #0
	cmp r3, #0
	bne _080D38E0
_080D3904:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
