	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start sub_80D3748
sub_80D3748: @ 0x080D3748
	svc #0xa
	bx lr

	thumb_func_start sub_80D374C
sub_80D374C: @ 0x080D374C
	svc #0xc
	bx lr

	thumb_func_start sub_80D3750
sub_80D3750: @ 0x080D3750
	svc #0xb
	bx lr

	thumb_func_start sub_80D3754
sub_80D3754: @ 0x080D3754
	movs r2, #0
	svc #4
	bx lr
	.align 2, 0

	thumb_func_start sub_080D375C
sub_080D375C: @ 0x080D375C
	ldr r3, _080D376C @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r1, _080D3770 @ =0x03007F00
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_080D376C: .4byte 0x04000208
_080D3770: .4byte 0x03007F00

	thumb_func_start sub_80D3774
sub_80D3774: @ 0x080D3774
	svc #8
	bx lr
