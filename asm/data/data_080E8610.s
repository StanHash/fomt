    .section .rodata

	.global init_array
init_array:
	.word 0, 0, 0, 0

	@ "bad_alloc"
	.incbin "baserom.gba", 0xE8620, 0x0C

	.global gUnk_080E862C
gUnk_080E862C:
	.incbin "baserom.gba", 0xE862C, 0x58

	.global gUnk_080E8684
gUnk_080E8684:
	.incbin "baserom.gba", 0xE8684, 0x3C

	.global gUnk_080E86C0
gUnk_080E86C0:
	.incbin "baserom.gba", 0xE86C0, 0x2C

	.global gUnk_080E86EC
gUnk_080E86EC:
	.incbin "baserom.gba", 0xE86EC, 0x4

	.global gUnk_080E86F0
gUnk_080E86F0:
	.incbin "baserom.gba", 0xE86F0, 0x14

	.global gUnk_080E8704
gUnk_080E8704:
	.incbin "baserom.gba", 0xE8704, 0x48

	.global gUnk_080E874C
gUnk_080E874C:
	.incbin "baserom.gba", 0xE874C, 0x8

	.global gUnk_080E8754
gUnk_080E8754:
	.incbin "baserom.gba", 0xE8754, 0x4

	.global gUnk_080E8758
gUnk_080E8758:
	.incbin "baserom.gba", 0xE8758, 0x8

	.global gUnk_080E8760
gUnk_080E8760:
	.incbin "baserom.gba", 0xE8760, 0x4

	.global gUnk_080E8764
gUnk_080E8764:
	.incbin "baserom.gba", 0xE8764, 0x4

	.global gUnk_080E8768
gUnk_080E8768:
	.incbin "baserom.gba", 0xE8768, 0x8

	.global gUnk_080E8770
gUnk_080E8770:
	.incbin "baserom.gba", 0xE8770, 0xC

	.global gUnk_080E877C
gUnk_080E877C:
	.incbin "baserom.gba", 0xE877C, 0x10

	.global gUnk_080E878C
gUnk_080E878C:
	.incbin "baserom.gba", 0xE878C, 0x18

	.global gUnk_080E87A4
gUnk_080E87A4:
	.incbin "baserom.gba", 0xE87A4, 0x58

	.global gUnk_080E87FC
gUnk_080E87FC:
	.incbin "baserom.gba", 0xE87FC, 0x2C

	.global gUnk_080E8828
gUnk_080E8828:
	.incbin "baserom.gba", 0xE8828, 0x50

	.global gUnk_080E8878
gUnk_080E8878:
	.incbin "baserom.gba", 0xE8878, 0x50

	.global gUnk_080E88C8
gUnk_080E88C8:
	.incbin "baserom.gba", 0xE88C8, 0x10

	.global gUnk_080E88D8
gUnk_080E88D8:
	.incbin "baserom.gba", 0xE88D8, 0x34

	.global gUnk_080E890C
gUnk_080E890C:
	.incbin "baserom.gba", 0xE890C, 0x8

	.global gUnk_080E8914
gUnk_080E8914:
	.incbin "baserom.gba", 0xE8914, 0x20

	.global gUnk_080E8934
gUnk_080E8934:
	.incbin "baserom.gba", 0xE8934, 0x8

	.global gUnk_080E893C
gUnk_080E893C:
	.incbin "baserom.gba", 0xE893C, 0x8

	.global gUnk_080E8944
gUnk_080E8944:
	.incbin "baserom.gba", 0xE8944, 0x14

	.global gUnk_080E8958
gUnk_080E8958:
	.incbin "baserom.gba", 0xE8958, 0x10

	.global gUnk_080E8968
gUnk_080E8968:
	.incbin "baserom.gba", 0xE8968, 0x10

	.global gUnk_080E8978
gUnk_080E8978:
	.incbin "baserom.gba", 0xE8978, 0x10

	.global gUnk_080E8988
gUnk_080E8988:
	.incbin "baserom.gba", 0xE8988, 0xF

	.global gUnk_080E8997
gUnk_080E8997:
	.incbin "baserom.gba", 0xE8997, 0x1

	.global gUnk_080E8998
gUnk_080E8998:
	.incbin "baserom.gba", 0xE8998, 0xC

	.global gUnk_080E89A4
gUnk_080E89A4:
	.incbin "baserom.gba", 0xE89A4, 0x4

	.global gUnk_080E89A8
gUnk_080E89A8:
	.incbin "baserom.gba", 0xE89A8, 0xE

	.global gUnk_080E89B6
gUnk_080E89B6:
	.incbin "baserom.gba", 0xE89B6, 0x22E

	.global gUnk_080E8BE4
gUnk_080E8BE4:
	.incbin "baserom.gba", 0xE8BE4, 0x10

	.global gUnk_080E8BF4
gUnk_080E8BF4:
	.incbin "baserom.gba", 0xE8BF4, 0x8

	.global gUnk_080E8BFC
gUnk_080E8BFC:
	.incbin "baserom.gba", 0xE8BFC, 0x18

	.global gUnk_080E8C14
gUnk_080E8C14:
	.incbin "baserom.gba", 0xE8C14, 0x18

	.global gUnk_080E8C2C
gUnk_080E8C2C:
	.incbin "baserom.gba", 0xE8C2C, 0x18

	.global gUnk_080E8C44
gUnk_080E8C44:
	.incbin "baserom.gba", 0xE8C44, 0x4

	.global gUnk_080E8C48
gUnk_080E8C48:
	.incbin "baserom.gba", 0xE8C48, 0x7C

	.global gUnk_080E8CC4
gUnk_080E8CC4:
	.incbin "baserom.gba", 0xE8CC4, 0x40

	.global gUnk_080E8D04
gUnk_080E8D04:
	.incbin "baserom.gba", 0xE8D04, 0x8

	.global gUnk_080E8D0C
gUnk_080E8D0C:
	.incbin "baserom.gba", 0xE8D0C, 0x8

	.global gUnk_080E8D14
gUnk_080E8D14:
	.incbin "baserom.gba", 0xE8D14, 0x6E4

	.global gUnk_080E93F8
gUnk_080E93F8:
	.incbin "baserom.gba", 0xE93F8, 0x1D4
