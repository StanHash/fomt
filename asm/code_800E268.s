    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

_0800E268:
	.byte 0x00, 0xB5, 0x81, 0xB0, 0x01, 0x88, 0x88, 0x07
	.byte 0x00, 0x28, 0x04, 0xD1, 0x89, 0x08, 0x68, 0x46, 0xFF, 0xF7, 0x58, 0xFC, 0x03, 0xE0, 0x68, 0x46
	.byte 0x51, 0x21, 0xFF, 0xF7, 0x53, 0xFC, 0x68, 0x46, 0x00, 0x78, 0x01, 0xB0, 0x02, 0xBC, 0x08, 0x47
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x09, 0x88, 0x88, 0x07, 0x80, 0x0F, 0x01, 0x28, 0x04, 0xD1, 0x89, 0x08
	.byte 0x20, 0x1C, 0xFF, 0xF7, 0x01, 0xFD, 0x03, 0xE0, 0x20, 0x1C, 0xAB, 0x21, 0xFF, 0xF7, 0xFC, 0xFC
	.byte 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0xB5, 0x81, 0xB0, 0x01, 0x88, 0x88, 0x07
	.byte 0x80, 0x0F, 0x02, 0x28, 0x04, 0xD1, 0x89, 0x08, 0x68, 0x46, 0xFF, 0xF7, 0x41, 0xFE, 0x03, 0xE0
	.byte 0x68, 0x46, 0x5F, 0x21, 0xFF, 0xF7, 0x3C, 0xFE, 0x68, 0x46, 0x00, 0x78, 0x01, 0xB0, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	thumb_func_start sub_800E2E4
sub_800E2E4: @ 0x0800E2E4
	push {lr}
	adds r1, r0, #0
	cmp r1, #3
	bls _0800E2F4
	ldr r0, _0800E2F0 @ =0x080F050C
	b _0800E2FC
	.align 2, 0
_0800E2F0: .4byte 0x080F050C
_0800E2F4:
	lsls r0, r1, #3
	subs r0, r0, r1
	ldr r1, _0800E300 @ =0x080F04EE
	adds r0, r0, r1
_0800E2FC:
	pop {r1}
	bx r1
	.align 2, 0
_0800E300: .4byte 0x080F04EE

	thumb_func_start sub_800E304
sub_800E304: @ 0x0800E304
	push {lr}
	adds r1, r0, #0
	cmp r1, #6
	bls _0800E314
	ldr r0, _0800E310 @ =0x080F050C
	b _0800E31C
	.align 2, 0
_0800E310: .4byte 0x080F050C
_0800E314:
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r1, _0800E320 @ =0x080F050F
	adds r0, r0, r1
_0800E31C:
	pop {r1}
	bx r1
	.align 2, 0
_0800E320: .4byte 0x080F050F

	thumb_func_start sub_800E324
sub_800E324: @ 0x0800E324
	push {lr}
	adds r1, r0, #0
	adds r3, r1, #1
	ldrb r2, [r1, #1]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0
	bne _0800E34A
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	cmp r0, #5
	bhi _0800E34A
	lsls r0, r2, #0x1e
	movs r1, #3
	lsrs r0, r0, #0x1e
	subs r0, #1
	ands r0, r1
	b _0800E350
_0800E34A:
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
_0800E350:
	pop {r1}
	bx r1

	thumb_func_start sub_800E354
sub_800E354: @ 0x0800E354
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xc
	bls _0800E374
	movs r4, #0xc
_0800E374:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	strb r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x20
	ldrb r0, [r7]
	strb r0, [r1]
	mov r1, sp
	movs r4, #2
	ldrh r2, [r1]
	ldr r3, _0800E4CC @ =0xFFFFFC00
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
	adds r4, r6, #0
	adds r4, #0x24
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	strb r5, [r4, #6]
	adds r4, #8
	movs r5, #5
	adds r7, r6, #0
	adds r7, #0x44
	movs r0, #0x46
	adds r0, r0, r6
	mov sl, r0
	adds r1, r6, #0
	adds r1, #0x47
	str r1, [sp, #8]
	adds r3, r6, #0
	adds r3, #0x4b
	str r3, [sp, #0xc]
	movs r0, #0x4c
	adds r0, r0, r6
	mov sb, r0
	adds r1, #9
	str r1, [sp, #0x10]
	adds r3, #6
	str r3, [sp, #0x14]
	adds r0, r6, #0
	adds r0, #0x54
	str r0, [sp, #0x18]
	adds r1, #0xc
	str r1, [sp, #0x1c]
	adds r3, #0xf
	str r3, [sp, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
_0800E40A:
	adds r0, r4, #0
	bl sub_800EF44
	adds r4, #4
	subs r5, #1
	cmp r5, r8
	bne _0800E40A
	ldrb r1, [r7]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r7]
	ldrh r1, [r7]
	ldr r2, _0800E4D0 @ =0xFFFF807F
	adds r0, r2, #0
	ands r0, r1
	movs r3, #0x96
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r7]
	ldr r0, [r6, #0x44]
	ldr r1, _0800E4D4 @ =0xFF807FFF
	ands r0, r1
	str r0, [r6, #0x44]
	mov r0, sl
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	mov r1, sl
	strh r0, [r1]
	ldr r3, [sp, #8]
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3]
	ldr r0, [r6, #0x48]
	movs r1, #0xe0
	lsls r1, r1, #0x18
	ands r0, r1
	str r0, [r6, #0x48]
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	movs r3, #0x1f
	adds r0, r3, #0
	ands r0, r1
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	ldrh r0, [r1]
	ands r2, r0
	strh r2, [r1]
	ldr r0, [r6, #0x4c]
	ldr r1, _0800E4D8 @ =0x00007FFF
	ands r0, r1
	str r0, [r6, #0x4c]
	ldr r0, [sp, #0x10]
	ldrh r1, [r0]
	ldr r0, _0800E4DC @ =0xFFFFE000
	ands r0, r1
	ldr r1, [sp, #0x10]
	strh r0, [r1]
	ldr r1, [sp, #0x14]
	ldrb r0, [r1]
	ands r3, r0
	strb r3, [r1]
	ldr r0, [sp, #0x18]
	bl sub_800F170
	ldr r0, [sp, #0x1c]
	bl __9ToolStack
	ldr r0, [sp, #0x20]
	bl sub_800F574
	adds r0, r6, #0
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800E4CC: .4byte 0xFFFFFC00
_0800E4D0: .4byte 0xFFFF807F
_0800E4D4: .4byte 0xFF807FFF
_0800E4D8: .4byte 0x00007FFF
_0800E4DC: .4byte 0xFFFFE000

	thumb_func_start sub_800E4E0
sub_800E4E0: @ 0x0800E4E0
	bx lr
	.align 2, 0

	thumb_func_start sub_800E4E4
sub_800E4E4: @ 0x0800E4E4
	adds r0, #0x10
	bx lr

	thumb_func_start sub_800E4E8
sub_800E4E8: @ 0x0800E4E8
	adds r0, #0x20
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_800E4F0
sub_800E4F0: @ 0x0800E4F0
	adds r0, #0x44
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_800E4FC
sub_800E4FC: @ 0x0800E4FC
	ldr r0, [r0, #0x44]
	lsls r0, r0, #9
	lsrs r0, r0, #0x19
	bx lr
_0800E504:
	.byte 0x00, 0xB5, 0x00, 0x21, 0x40, 0x6C, 0x40, 0x02, 0x00, 0x0E, 0xC7, 0x28
	.byte 0x00, 0xD9, 0x01, 0x21, 0x08, 0x1C, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start sub_800E51C
sub_800E51C: @ 0x0800E51C
	adds r0, #0x44
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x96
	bx lr
	.align 2, 0

	thumb_func_start sub_800E530
sub_800E530: @ 0x0800E530
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bx lr
	.align 2, 0

	thumb_func_start sub_800E53C
sub_800E53C: @ 0x0800E53C
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0

	thumb_func_start sub_800E548
sub_800E548: @ 0x0800E548
	lsls r1, r1, #2
	adds r1, #0x2c
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_800E550
sub_800E550: @ 0x0800E550
	push {r4, lr}
	sub sp, #0x20
	adds r4, r0, #0
	mov r0, sp
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x28
	bls _0800E564
	b _0800E916
_0800E564:
	lsls r0, r0, #2
	ldr r1, _0800E570 @ =_0800E574
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E570: .4byte _0800E574
_0800E574: @ jump table
	.4byte _0800E618 @ case 0
	.4byte _0800E916 @ case 1
	.4byte _0800E916 @ case 2
	.4byte _0800E916 @ case 3
	.4byte _0800E916 @ case 4
	.4byte _0800E916 @ case 5
	.4byte _0800E916 @ case 6
	.4byte _0800E916 @ case 7
	.4byte _0800E69A @ case 8
	.4byte _0800E916 @ case 9
	.4byte _0800E916 @ case 10
	.4byte _0800E916 @ case 11
	.4byte _0800E916 @ case 12
	.4byte _0800E916 @ case 13
	.4byte _0800E916 @ case 14
	.4byte _0800E916 @ case 15
	.4byte _0800E71A @ case 16
	.4byte _0800E916 @ case 17
	.4byte _0800E916 @ case 18
	.4byte _0800E916 @ case 19
	.4byte _0800E916 @ case 20
	.4byte _0800E916 @ case 21
	.4byte _0800E916 @ case 22
	.4byte _0800E916 @ case 23
	.4byte _0800E79A @ case 24
	.4byte _0800E916 @ case 25
	.4byte _0800E916 @ case 26
	.4byte _0800E916 @ case 27
	.4byte _0800E916 @ case 28
	.4byte _0800E916 @ case 29
	.4byte _0800E916 @ case 30
	.4byte _0800E916 @ case 31
	.4byte _0800E818 @ case 32
	.4byte _0800E916 @ case 33
	.4byte _0800E916 @ case 34
	.4byte _0800E916 @ case 35
	.4byte _0800E916 @ case 36
	.4byte _0800E916 @ case 37
	.4byte _0800E916 @ case 38
	.4byte _0800E916 @ case 39
	.4byte _0800E896 @ case 40
_0800E618:
	adds r0, r4, #0
	adds r0, #0x30
	bl sub_800EF6C
	subs r0, #1
	cmp r0, #4
	bls _0800E628
	b _0800E916
_0800E628:
	lsls r0, r0, #2
	ldr r1, _0800E634 @ =_0800E638
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E634: .4byte _0800E638
_0800E638: @ jump table
	.4byte _0800E64C @ case 0
	.4byte _0800E65C @ case 1
	.4byte _0800E66C @ case 2
	.4byte _0800E67C @ case 3
	.4byte _0800E68A @ case 4
_0800E64C:
	mov r4, sp
	adds r4, #1
	adds r0, r4, #0
	movs r1, #1
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E65C:
	mov r4, sp
	adds r4, #2
	adds r0, r4, #0
	movs r1, #2
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E66C:
	mov r4, sp
	adds r4, #3
	adds r0, r4, #0
	movs r1, #3
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E67C:
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #4
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E68A:
	mov r4, sp
	adds r4, #5
	adds r0, r4, #0
	movs r1, #7
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E69A:
	adds r0, r4, #0
	adds r0, #0x2c
	bl sub_800EF6C
	subs r0, #1
	cmp r0, #4
	bls _0800E6AA
	b _0800E916
_0800E6AA:
	lsls r0, r0, #2
	ldr r1, _0800E6B4 @ =_0800E6B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E6B4: .4byte _0800E6B8
_0800E6B8: @ jump table
	.4byte _0800E6CC @ case 0
	.4byte _0800E6DC @ case 1
	.4byte _0800E6EC @ case 2
	.4byte _0800E6FA @ case 3
	.4byte _0800E70A @ case 4
_0800E6CC:
	mov r4, sp
	adds r4, #6
	adds r0, r4, #0
	movs r1, #9
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E6DC:
	mov r4, sp
	adds r4, #7
	adds r0, r4, #0
	movs r1, #0xa
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E6EC:
	add r4, sp, #8
	adds r0, r4, #0
	movs r1, #0xb
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E6FA:
	mov r4, sp
	adds r4, #9
	adds r0, r4, #0
	movs r1, #0xc
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E70A:
	mov r4, sp
	adds r4, #0xa
	adds r0, r4, #0
	movs r1, #0xf
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E71A:
	adds r0, r4, #0
	adds r0, #0x34
	bl sub_800EF6C
	subs r0, #1
	cmp r0, #4
	bls _0800E72A
	b _0800E916
_0800E72A:
	lsls r0, r0, #2
	ldr r1, _0800E734 @ =_0800E738
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E734: .4byte _0800E738
_0800E738: @ jump table
	.4byte _0800E74C @ case 0
	.4byte _0800E75C @ case 1
	.4byte _0800E76A @ case 2
	.4byte _0800E77A @ case 3
	.4byte _0800E78A @ case 4
_0800E74C:
	mov r4, sp
	adds r4, #0xb
	adds r0, r4, #0
	movs r1, #0x11
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E75C:
	add r4, sp, #0xc
	adds r0, r4, #0
	movs r1, #0x12
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E76A:
	mov r4, sp
	adds r4, #0xd
	adds r0, r4, #0
	movs r1, #0x13
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E77A:
	mov r4, sp
	adds r4, #0xe
	adds r0, r4, #0
	movs r1, #0x14
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E78A:
	mov r4, sp
	adds r4, #0xf
	adds r0, r4, #0
	movs r1, #0x17
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E79A:
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_800EF6C
	subs r0, #1
	cmp r0, #4
	bls _0800E7AA
	b _0800E916
_0800E7AA:
	lsls r0, r0, #2
	ldr r1, _0800E7B4 @ =_0800E7B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E7B4: .4byte _0800E7B8
_0800E7B8: @ jump table
	.4byte _0800E7CC @ case 0
	.4byte _0800E7DA @ case 1
	.4byte _0800E7EA @ case 2
	.4byte _0800E7FA @ case 3
	.4byte _0800E80A @ case 4
_0800E7CC:
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0x19
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E7DA:
	mov r4, sp
	adds r4, #0x11
	adds r0, r4, #0
	movs r1, #0x1a
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E7EA:
	mov r4, sp
	adds r4, #0x12
	adds r0, r4, #0
	movs r1, #0x1b
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E7FA:
	mov r4, sp
	adds r4, #0x13
	adds r0, r4, #0
	movs r1, #0x1c
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E80A:
	add r4, sp, #0x14
	adds r0, r4, #0
	movs r1, #0x1f
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E818:
	adds r0, r4, #0
	adds r0, #0x3c
	bl sub_800EF6C
	subs r0, #1
	cmp r0, #4
	bhi _0800E916
	lsls r0, r0, #2
	ldr r1, _0800E830 @ =_0800E834
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E830: .4byte _0800E834
_0800E834: @ jump table
	.4byte _0800E848 @ case 0
	.4byte _0800E858 @ case 1
	.4byte _0800E868 @ case 2
	.4byte _0800E878 @ case 3
	.4byte _0800E886 @ case 4
_0800E848:
	mov r4, sp
	adds r4, #0x15
	adds r0, r4, #0
	movs r1, #0x21
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E858:
	mov r4, sp
	adds r4, #0x16
	adds r0, r4, #0
	movs r1, #0x22
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E868:
	mov r4, sp
	adds r4, #0x17
	adds r0, r4, #0
	movs r1, #0x23
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E878:
	add r4, sp, #0x18
	adds r0, r4, #0
	movs r1, #0x24
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E886:
	mov r4, sp
	adds r4, #0x19
	adds r0, r4, #0
	movs r1, #0x27
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E896:
	adds r0, r4, #0
	adds r0, #0x40
	bl sub_800EF6C
	subs r0, #1
	cmp r0, #4
	bhi _0800E916
	lsls r0, r0, #2
	ldr r1, _0800E8B0 @ =_0800E8B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E8B0: .4byte _0800E8B4
_0800E8B4: @ jump table
	.4byte _0800E8C8 @ case 0
	.4byte _0800E8D8 @ case 1
	.4byte _0800E8E8 @ case 2
	.4byte _0800E8F6 @ case 3
	.4byte _0800E906 @ case 4
_0800E8C8:
	mov r4, sp
	adds r4, #0x1a
	adds r0, r4, #0
	movs r1, #0x29
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E8D8:
	mov r4, sp
	adds r4, #0x1b
	adds r0, r4, #0
	movs r1, #0x2a
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E8E8:
	add r4, sp, #0x1c
	adds r0, r4, #0
	movs r1, #0x2b
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E8F6:
	mov r4, sp
	adds r4, #0x1d
	adds r0, r4, #0
	movs r1, #0x2c
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E906:
	mov r4, sp
	adds r4, #0x1e
	adds r0, r4, #0
	movs r1, #0x2f
	bl __4Toolc
	ldrb r0, [r4]
	b _0800E91A
_0800E916:
	mov r0, sp
	ldrb r0, [r0]
_0800E91A:
	add sp, #0x20
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800E924
sub_800E924: @ 0x0800E924
	push {r4, lr}
	adds r2, r0, #0
	adds r1, #0x24
	ldm r1!, {r3, r4}
	stm r2!, {r3, r4}
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800E934
sub_800E934: @ 0x0800E934
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0

	thumb_func_start sub_800E940
sub_800E940: @ 0x0800E940
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0

	thumb_func_start sub_800E94C
sub_800E94C: @ 0x0800E94C
	adds r0, #0x46
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_800E958
sub_800E958: @ 0x0800E958
	adds r1, r0, #0
	adds r1, #0x47
	ldrb r2, [r1]
	lsrs r2, r2, #7
	ldr r0, [r0, #0x48]
	ldr r1, _0800E96C @ =0x1FFFFFFF
	ands r0, r1
	lsls r0, r0, #1
	orrs r0, r2
	bx lr
	.align 2, 0
_0800E96C: .4byte 0x1FFFFFFF

	thumb_func_start sub_800E970
sub_800E970: @ 0x0800E970
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	bx lr
	.align 2, 0

	thumb_func_start sub_800E97C
sub_800E97C: @ 0x0800E97C
	adds r0, #0x4c
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0

	thumb_func_start sub_800E988
sub_800E988: @ 0x0800E988
	ldr r2, [r0, #0x4c]
	lsrs r2, r2, #0xf
	adds r0, #0x50
	ldrh r0, [r0]
	ldr r1, _0800E99C @ =0x00001FFF
	ands r0, r1
	lsls r0, r0, #0x11
	orrs r0, r2
	bx lr
	.align 2, 0
_0800E99C: .4byte 0x00001FFF

	thumb_func_start sub_800E9A0
sub_800E9A0: @ 0x0800E9A0
	adds r0, #0x51
	ldrb r0, [r0]
	lsrs r0, r0, #5
	bx lr

	thumb_func_start sub_800E9A8
sub_800E9A8: @ 0x0800E9A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xc
	bls _0800E9BE
	movs r4, #0xc
_0800E9BE:
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	mov r1, sp
	adds r0, r1, r4
	movs r1, #0
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x10
	mov r1, sp
	bl sub_80D3B28
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800E9E4
sub_800E9E4: @ 0x0800E9E4
	push {r4, lr}
	sub sp, #8
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x44
	ldrh r2, [r4]
	lsls r0, r2, #0x11
	lsrs r0, r0, #0x18
	adds r0, r0, r1
	cmp r0, #0
	ble _0800EA24
	str r0, [sp]
	adds r0, r3, #0
	bl sub_800E51C
	str r0, [sp, #4]
	add r2, sp, #4
	ldr r1, [sp]
	mov r3, sp
	cmp r1, r0
	bls _0800EA10
	adds r3, r2, #0
_0800EA10:
	ldrb r0, [r3]
	lsls r0, r0, #7
	ldrh r2, [r4]
	ldr r1, _0800EA20 @ =0xFFFF807F
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	b _0800EA2A
	.align 2, 0
_0800EA20: .4byte 0xFFFF807F
_0800EA24:
	ldr r0, _0800EA34 @ =0xFFFF807F
	ands r0, r2
	strh r0, [r4]
_0800EA2A:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA34: .4byte 0xFFFF807F
_0800EA38:
	.byte 0x00, 0xB5, 0x49, 0x42, 0xFF, 0xF7, 0xD2, 0xFF
	.byte 0x01, 0xBC, 0x00, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0xFF, 0xF7, 0x68, 0xFD, 0x44, 0x34, 0xFF, 0x21
	.byte 0x08, 0x40, 0xC0, 0x01, 0x22, 0x88, 0x03, 0x49, 0x11, 0x40, 0x01, 0x43, 0x21, 0x80, 0x10, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x7F, 0x80, 0xFF, 0xFF

	thumb_func_start sub_800EA68
sub_800EA68: @ 0x0800EA68
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r3, r1, #0
	cmp r3, #0
	ble _0800EAA0
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _0800EA80
	lsls r3, r3, #1
_0800EA80:
	ldr r2, [r5, #0x44]
	lsls r1, r2, #9
	lsrs r1, r1, #0x18
	adds r1, r1, r3
	str r1, [sp]
	movs r0, #0xc8
	str r0, [sp, #4]
	add r0, sp, #4
	mov r3, sp
	adds r4, r2, #0
	cmp r1, #0xc8
	bls _0800EA9A
	adds r3, r0, #0
_0800EA9A:
	ldrb r1, [r3]
	lsls r1, r1, #0xf
	b _0800EABE
_0800EAA0:
	cmp r3, #0
	bge _0800EAC6
	lsls r3, r3, #1
	ldr r1, [r5, #0x44]
	lsls r0, r1, #9
	lsrs r2, r0, #0x18
	rsbs r0, r3, #0
	movs r3, #0
	adds r4, r1, #0
	cmp r2, r0
	bls _0800EAB8
	subs r3, r2, r0
_0800EAB8:
	movs r0, #0xff
	ands r3, r0
	lsls r1, r3, #0xf
_0800EABE:
	ldr r0, _0800EAD0 @ =0xFF807FFF
	ands r0, r4
	orrs r0, r1
	str r0, [r5, #0x44]
_0800EAC6:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAD0: .4byte 0xFF807FFF
_0800EAD4:
	.byte 0x00, 0xB5, 0x49, 0x42, 0xFF, 0xF7, 0xC6, 0xFF, 0x01, 0xBC, 0x00, 0x47
	.byte 0x41, 0x6C, 0x02, 0x4A, 0x11, 0x40, 0x41, 0x64, 0x70, 0x47, 0x00, 0x00, 0xFF, 0x7F, 0x80, 0xFF

	thumb_func_start sub_800EAF0
sub_800EAF0: @ 0x0800EAF0
	adds r0, #0x44
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_800EAFC
sub_800EAFC: @ 0x0800EAFC
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x44
	ldrb r2, [r3]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	bhi _0800EB26
	adds r1, r0, #1
	movs r0, #0xf
	ands r1, r0
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_800E9E4
_0800EB26:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800EB2C
sub_800EB2C: @ 0x0800EB2C
	lsls r1, r1, #2
	adds r1, #0x2c
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_800EB34
sub_800EB34: @ 0x0800EB34
	adds r0, #0x24
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	bx lr

	thumb_func_start sub_800EB3C
sub_800EB3C: @ 0x0800EB3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r0, #0x60
	bl sub_800F604
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800EB72
	mov r0, sp
	bl sub_800EFEC
	adds r4, r6, #0
	adds r4, #0x54
	adds r0, r4, #0
	bl sub_800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800EB88
	adds r0, r4, #0
	bl sub_800F204
	cmp r0, #1
	bgt _0800EB72
	cmp r0, #0
	bge _0800EB76
_0800EB72:
	movs r0, #0
	b _0800EBBA
_0800EB76:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_800F294
	ldr r0, [sp, #4]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_800F390
_0800EB88:
	movs r5, #0
	adds r7, r6, #0
	adds r7, #0x60
	add r6, sp, #4
_0800EB90:
	ldr r2, [sp]
	str r2, [sp, #8]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_800FD20
	ldr r0, [sp, #4]
	str r0, [sp]
	adds r5, #1
	mov r0, sp
	bl sub_800F06C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800EB90
	ldr r1, [sp]
	str r1, [sp, #4]
	adds r0, r4, #0
	bl sub_800F418
	adds r0, r5, #0
_0800EBBA:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800EBC4
sub_800EBC4: @ 0x0800EBC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r0, #0x60
	bl sub_800F604
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800EBFA
	mov r0, sp
	bl sub_800EFEC
	adds r4, r6, #0
	adds r4, #0x54
	adds r0, r4, #0
	bl sub_800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800EC10
	adds r0, r4, #0
	bl sub_800F204
	cmp r0, #1
	bgt _0800EBFA
	cmp r0, #0
	bge _0800EBFE
_0800EBFA:
	movs r0, #0
	b _0800EC42
_0800EBFE:
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_800F294
	ldr r0, [sp, #4]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_800F390
_0800EC10:
	movs r5, #0
	adds r7, r6, #0
	adds r7, #0x60
	add r6, sp, #4
_0800EC18:
	ldr r2, [sp]
	str r2, [sp, #8]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_800FD38
	ldr r0, [sp, #4]
	str r0, [sp]
	adds r5, #1
	mov r0, sp
	bl sub_800F06C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800EC18
	ldr r1, [sp]
	str r1, [sp, #4]
	adds r0, r4, #0
	bl sub_800F418
	adds r0, r5, #0
_0800EC42:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800EC4C
sub_800EC4C: @ 0x0800EC4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x60
	adds r0, r4, #0
	bl sub_800F874
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800EC6A
	movs r0, #0
	b _0800ECA2
_0800EC6A:
	movs r7, #0
	mov r8, r4
	add r5, sp, #4
	adds r4, r6, #0
	adds r4, #0x5c
_0800EC74:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r0, sp
	mov r1, r8
	adds r2, r5, #0
	bl sub_800FE78
	adds r0, r4, #0
	mov r1, sp
	movs r2, #2
	bl memcpy
	adds r7, #1
	adds r0, r4, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800EC74
	adds r0, r7, #0
_0800ECA2:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800ECB0
sub_800ECB0: @ 0x0800ECB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x60
	adds r0, r4, #0
	bl sub_800F874
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800ECCE
	movs r0, #0
	b _0800ED06
_0800ECCE:
	movs r7, #0
	mov r8, r4
	add r5, sp, #4
	adds r4, r6, #0
	adds r4, #0x5c
_0800ECD8:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r0, sp
	mov r1, r8
	adds r2, r5, #0
	bl sub_800FEA0
	adds r0, r4, #0
	mov r1, sp
	movs r2, #2
	bl memcpy
	adds r7, #1
	adds r0, r4, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800ECD8
	adds r0, r7, #0
_0800ED06:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800ED14
sub_800ED14: @ 0x0800ED14
	adds r0, #0x44
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_800ED20
sub_800ED20: @ 0x0800ED20
	adds r0, #0x44
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_800ED2C
sub_800ED2C: @ 0x0800ED2C
	adds r0, #0x44
	ldrb r2, [r0]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_800ED3C
sub_800ED3C: @ 0x0800ED3C
	adds r0, #0x46
	movs r2, #0xff
	ands r1, r2
	lsls r1, r1, #7
	ldrh r3, [r0]
	ldr r2, _0800ED50 @ =0xFFFF807F
	ands r2, r3
	orrs r2, r1
	strh r2, [r0]
	bx lr
	.align 2, 0
_0800ED50: .4byte 0xFFFF807F

	thumb_func_start sub_800ED54
sub_800ED54: @ 0x0800ED54
	push {lr}
	adds r3, r0, #0
	adds r0, #0x46
	ldrh r0, [r0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x18
	subs r2, r0, r1
	cmp r2, #0
	bge _0800ED6A
	movs r2, #0
	b _0800ED70
_0800ED6A:
	cmp r2, #0xfe
	ble _0800ED70
	movs r2, #0xff
_0800ED70:
	adds r3, #0x46
	movs r0, #0xff
	ands r2, r0
	lsls r2, r2, #7
	ldrh r1, [r3]
	ldr r0, _0800ED88 @ =0xFFFF807F
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_0800ED88: .4byte 0xFFFF807F

	thumb_func_start sub_800ED8C
sub_800ED8C: @ 0x0800ED8C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0x47
	ldrb r2, [r0]
	lsrs r2, r2, #7
	ldr r0, [r5, #0x48]
	ldr r1, _0800EE24 @ =0x1FFFFFFF
	ands r0, r1
	lsls r0, r0, #1
	orrs r0, r2
	ldr r1, _0800EE28 @ =0x3B9AC9FF
	cmp r0, r1
	bhi _0800EE1C
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0x5c
	adds r0, r4, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800EDCE
	adds r0, r4, #0
	bl GetId__C9ToolStack
	mov r1, sp
	strb r0, [r1]
	mov r0, sp
	bl GetId__C4Tool
	cmp r0, #0x4c
	beq _0800EDE0
_0800EDCE:
	adds r0, r5, #0
	adds r0, #0x60
	movs r1, #0x4c
	bl sub_800F92C
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0800EDE2
_0800EDE0:
	movs r6, #1
_0800EDE2:
	cmp r6, #0
	beq _0800EE1C
	movs r0, #0x47
	adds r0, r0, r5
	mov ip, r0
	ldrb r3, [r0]
	lsrs r0, r3, #7
	ldr r1, [r5, #0x48]
	ldr r4, _0800EE24 @ =0x1FFFFFFF
	ands r1, r4
	lsls r1, r1, #1
	orrs r1, r0
	adds r1, #1
	movs r2, #1
	ands r2, r1
	lsls r2, r2, #7
	movs r0, #0x7f
	ands r0, r3
	orrs r0, r2
	mov r2, ip
	strb r0, [r2]
	lsrs r1, r1, #1
	ands r1, r4
	ldr r0, [r5, #0x48]
	movs r2, #0xe0
	lsls r2, r2, #0x18
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #0x48]
_0800EE1C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EE24: .4byte 0x1FFFFFFF
_0800EE28: .4byte 0x3B9AC9FF

	thumb_func_start sub_800EE2C
sub_800EE2C: @ 0x0800EE2C
	push {r4, r5, r6, lr}
	movs r5, #0
	adds r4, r0, #0
	adds r4, #0x4b
	ldrb r0, [r4]
	lsrs r1, r0, #5
	adds r1, #1
	lsls r2, r1, #5
	movs r6, #0x1f
	adds r3, r6, #0
	ands r3, r0
	orrs r3, r2
	strb r3, [r4]
	movs r0, #7
	ands r1, r0
	cmp r1, #4
	bls _0800EE50
	movs r5, #1
_0800EE50:
	cmp r5, #0
	beq _0800EE58
	ands r3, r6
	strb r3, [r4]
_0800EE58:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_800EE60
sub_800EE60: @ 0x0800EE60
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x44]
	movs r1, #0xff
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0800EE90
	adds r4, r3, #0
	adds r4, #0x4c
	ldrb r2, [r4]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x19
	cmp r0, #0x7e
	bhi _0800EE9E
	adds r1, r0, #1
	movs r0, #0x7f
	ands r1, r0
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	b _0800EE9E
_0800EE90:
	adds r2, r3, #0
	adds r2, #0x4c
	ldrb r1, [r2]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0800EE9E:
	adds r4, r3, #0
	adds r4, #0x51
	ldrb r0, [r4]
	lsrs r0, r0, #5
	cmp r0, #6
	bhi _0800EEC6
	adds r0, r3, #0
	adds r0, #0x60
	bl sub_800F5D8
	cmp r0, #0
	beq _0800EEC6
	ldrb r2, [r4]
	lsrs r1, r2, #5
	adds r1, #1
	lsls r1, r1, #5
	movs r0, #0x1f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
_0800EEC6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800EECC
sub_800EECC: @ 0x0800EECC
	push {lr}
	adds r3, r0, #0
	adds r3, #0x4c
	ldrh r2, [r3]
	lsls r0, r2, #0x11
	lsrs r0, r0, #0x18
	cmp r0, r1
	blo _0800EEE0
	movs r0, #0
	b _0800EEF0
_0800EEE0:
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #7
	ldr r0, _0800EEF4 @ =0xFFFF807F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	movs r0, #1
_0800EEF0:
	pop {r1}
	bx r1
	.align 2, 0
_0800EEF4: .4byte 0xFFFF807F

	thumb_func_start sub_800EEF8
sub_800EEF8: @ 0x0800EEF8
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r5, [r3, #0x4c]
	lsrs r0, r5, #0xf
	adds r4, r3, #0
	adds r4, #0x50
	ldrh r1, [r4]
	ldr r6, _0800EF34 @ =0x00001FFF
	ands r1, r6
	lsls r1, r1, #0x11
	orrs r1, r0
	ldr r0, _0800EF38 @ =0x3B9AC9FF
	cmp r1, r0
	bhi _0800EF2E
	adds r1, #1
	lsls r2, r1, #0xf
	ldr r0, _0800EF3C @ =0x00007FFF
	ands r0, r5
	orrs r0, r2
	str r0, [r3, #0x4c]
	lsrs r1, r1, #0x11
	ands r1, r6
	ldrh r2, [r4]
	ldr r0, _0800EF40 @ =0xFFFFE000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
_0800EF2E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EF34: .4byte 0x00001FFF
_0800EF38: .4byte 0x3B9AC9FF
_0800EF3C: .4byte 0x00007FFF
_0800EF40: .4byte 0xFFFFE000

	thumb_func_start sub_800EF44
sub_800EF44: @ 0x0800EF44
	movs r1, #0
	strh r1, [r0]
	ldrb r1, [r0, #2]
	movs r3, #8
	rsbs r3, r3, #0
	ands r3, r1
	strb r3, [r0, #2]
	ldr r1, [r0]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	lsls r1, r1, #3
	movs r2, #0x39
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_800EF68
sub_800EF68: @ 0x0800EF68
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_800EF6C
sub_800EF6C: @ 0x0800EF6C
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1d
	bx lr

	thumb_func_start sub_800EF74
sub_800EF74: @ 0x0800EF74
	ldr r1, [r0]
	lsls r0, r1, #0xa
	lsls r1, r1, #0xd
	eors r1, r0
	lsrs r1, r1, #0x1d
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0

	thumb_func_start sub_800EF88
sub_800EF88: @ 0x0800EF88
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrh r0, [r4]
	adds r0, r0, r1
	str r0, [sp]
	ldr r1, _0800EFB0 @ =0x0000FFFF
	str r1, [sp, #4]
	add r2, sp, #4
	mov r3, sp
	cmp r0, r1
	bls _0800EFA2
	adds r3, r2, #0
_0800EFA2:
	ldr r0, [r3]
	strh r0, [r4]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EFB0: .4byte 0x0000FFFF

	thumb_func_start sub_800EFB4
sub_800EFB4: @ 0x0800EFB4
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1d
	cmp r0, r1
	beq _0800EFD4
	movs r0, #7
	ands r1, r0
	lsls r2, r1, #3
	ldrb r1, [r3, #2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #2]
_0800EFD4:
	pop {r0}
	bx r0

	thumb_func_start sub_800EFD8
sub_800EFD8: @ 0x0800EFD8
	ldr r2, [r0]
	lsls r2, r2, #0xa
	lsrs r2, r2, #0x1d
	ldrb r3, [r0, #2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r0, #2]
	bx lr
