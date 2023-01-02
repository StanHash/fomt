    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start __pure_virtual
__pure_virtual: @ 0x08000638
    bx lr
    .align 2, 0
