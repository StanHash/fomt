    .include "asm/macro.inc"
    .syntax unified

    thumb_func_start umul3232H32

umul3232H32:
    adr    r2, .Lumul3232H32
    bx     r2
    .arm
.Lumul3232H32:
    umull  r2, r3, r0, r1
    add    r0, r3, #0
    bx     lr

    thumb_func_end umul3232H32
