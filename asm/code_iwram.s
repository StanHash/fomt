    .section .iwram, "awx"

    .macro inc from, to
    .incbin "baserom.gba", 0x75B9F8 + \from - 0x03000490, \to - \from
    .endm

    .global func_03000490
    .type func_03000490, function
    .thumb
func_03000490:
    inc 0x03000490, 0x030004C0

    .global __new_handler
    .type __new_handler, object
__new_handler:
    inc 0x030004C0, 0x030004DC

    .global func_030004DC
    .type func_030004DC, function
    .arm
func_030004DC:
    inc 0x030004DC, 0x03000714

    .global func_03000714
    .type func_03000714, function
    .arm
func_03000714:
    inc 0x03000714, 0x0300085C

    .global func_0300085C
    .type func_0300085C, function
    .arm
func_0300085C:
    inc 0x0300085C, 0x03000958

    .global func_03000958
    .type func_03000958, function
    .arm
func_03000958:
    inc 0x03000958, 0x03000A1C

    .global func_03000A1C
    .type func_03000A1C, function
    .arm
func_03000A1C:
    inc 0x03000A1C, 0x03000C08

    .global func_03000C08
    .type func_03000C08, function
    .arm
func_03000C08:
    inc 0x03000C08, 0x03000C2C

    .global func_03000C2C
    .type func_03000C2C, function
    .arm
func_03000C2C:
    inc 0x03000C2C, 0x03000CD4

    .global gUnk_03000CD4
    .type gUnk_03000CD4, object
gUnk_03000CD4: @ new handler
    inc 0x03000CD4, 0x03000CD8
