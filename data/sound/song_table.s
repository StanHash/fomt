    .include "six/asm/prelude.s"
    .include "six/asm/macros.s"
    .include "asm/m4a.s"

    rodata gSongTable global
    @ TODO
    .incbin "baserom.gba", (0x13ABF0), (0x13B288 - 0x13ABF0)
    endr
