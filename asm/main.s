    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start AgbMain
AgbMain: @ 0x0800018C
	push {r4, lr}
	sub sp, #0x1c
	ldr r1, _08000228 @ =0x04000204
	ldr r2, _0800022C @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_80004C4
	ldr r1, _08000230 @ =0x03000491
	movs r0, #0xd
	bl sub_80D100C
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_800050C
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_8000640
	adds r0, r4, #0
	bl sub_80002E0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080001C6
	adds r0, r4, #0
	bl sub_8000358
_080001C6:
	ldr r1, _08000234 @ =sub_8000240
	movs r0, #0xc
	bl sub_80D100C
	ldr r1, _08000238 @ =0x04000132
	ldr r2, _0800023C @ =0x0000C00F
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_800050C
	bl sub_8008AFC
	mov r0, sp
	bl sub_8008980
	movs r0, #8
	bl sub_80005D4
	bl sub_80036F8
	add r1, sp, #8
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	movs r1, #0
	str r1, [sp, #8]
	str r0, [sp, #4]
	add r0, sp, #4
	bl sub_800082C
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08000216
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
_08000216:
	mov r0, sp
	movs r1, #2
	bl sub_8008A68
	add sp, #0x1c
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000228: .4byte 0x04000204
_0800022C: .4byte 0x00004014
_08000230: .4byte 0x03000491
_08000234: .4byte sub_8000240
_08000238: .4byte 0x04000132
_0800023C: .4byte 0x0000C00F

	thumb_func_start sub_8000240
sub_8000240: @ 0x08000240
	push {r4, lr}
	ldr r0, _080002C8 @ =0x0000FFFF
	bl sub_8000528
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #0x84
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080002CC @ =0x04000130
	ldrh r1, [r2]
	movs r0, #0xf
	bics r0, r1
	cmp r0, #0
	beq _0800026E
	movs r3, #0xf
_08000264:
	ldrh r1, [r2]
	adds r0, r3, #0
	bics r0, r1
	cmp r0, #0
	bne _08000264
_0800026E:
	ldr r1, _080002D0 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _080002D4 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _080002D8 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _080002DC @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	movs r0, #0xff
	bl sub_080D375C
_080002C4:
	b _080002C4
	.align 2, 0
_080002C8: .4byte 0x0000FFFF
_080002CC: .4byte 0x04000130
_080002D0: .4byte 0x040000B0
_080002D4: .4byte 0x0000C5FF
_080002D8: .4byte 0x00007FFF
_080002DC: .4byte 0x040000D4
