    .include "six/asm/prelude.s"
    .include "six/asm/hw/dma.s"

    .syntax unified

    .section ".rom_header", "ax", %progbits
    .align 2, 0

    .arm
    .global _start
    .type _start, function
_start:
    b      entrypoint      @ ROM entry point

                           @ Nintendo logo data
    .byte  0x24, 0xFF, 0xAE, 0x51, 0x69, 0x9A, 0xA2, 0x21
    .byte  0x3D, 0x84, 0x82, 0x0A, 0x84, 0xE4, 0x09, 0xAD
    .byte  0x11, 0x24, 0x8B, 0x98, 0xC0, 0x81, 0x7F, 0x21
    .byte  0xA3, 0x52, 0xBE, 0x19, 0x93, 0x09, 0xCE, 0x20
    .byte  0x10, 0x46, 0x4A, 0x4A, 0xF8, 0x27, 0x31, 0xEC
    .byte  0x58, 0xC7, 0xE8, 0x33, 0x82, 0xE3, 0xCE, 0xBF
    .byte  0x85, 0xF4, 0xDF, 0x94, 0xCE, 0x4B, 0x09, 0xC1
    .byte  0x94, 0x56, 0x8A, 0xC0, 0x13, 0x72, 0xA7, 0xFC
    .byte  0x9F, 0x84, 0x4D, 0x73, 0xA3, 0xCA, 0x9A, 0x61
    .byte  0x58, 0x97, 0xA3, 0x27, 0xFC, 0x03, 0x98, 0x76
    .byte  0x23, 0x1D, 0xC7, 0x61, 0x03, 0x04, 0xAE, 0x56
    .byte  0xBF, 0x38, 0x84, 0x00, 0x40, 0xA7, 0x0E, 0xFD
    .byte  0xFF, 0x52, 0xFE, 0x03, 0x6F, 0x95, 0x30, 0xF1
    .byte  0x97, 0xFB, 0xC0, 0x85, 0x60, 0xD6, 0x80, 0x25
    .byte  0xA9, 0x63, 0xBE, 0x03, 0x01, 0x4E, 0x38, 0xE2
    .byte  0xF9, 0xA2, 0x34, 0xFF, 0xBB, 0x3E, 0x03, 0x44
    .byte  0x78, 0x00, 0x90, 0xCB, 0x88, 0x11, 0x3A, 0x94
    .byte  0x65, 0xC0, 0x7C, 0x63, 0x87, 0xF0, 0x3C, 0xAF
    .byte  0xD6, 0x25, 0xE4, 0x8B, 0x38, 0x0A, 0xAC, 0x72
    .byte  0x21, 0xD4, 0xF8, 0x07
    @ CHECKSUM AREA BEGIN
    .ascii "HARVESTMOGBA"  @ Game title
    .ascii "A4NE"          @ Game code
    .ascii "E9"            @ Maker code
    .byte  0x96            @ Mandatory
    .zero  1               @ Device code
    .zero  1               @ Device type
    .zero  7               @ Reserved
    .zero  1               @ Game version
    @ CHECKSUM AREA END
    .byte  0x48            @ Checksum
    .zero  2               @ Reserved

    .arm
    .type entrypoint, function
entrypoint:
    @ init sp
    mov    r0, 0x12
    msr    cpsr, r0
    ldr    sp, l_sp_irq
    mov    r0, 0x1F
    msr    cpsr, r0
    ldr    sp, l_sp_usr

    @ clear memory
    mov    r0, 3
    svc    SVC_REGISTERRAMRESET << 16

    @ init .iwram
    ldr    r3, l_iwram_vma @ =__iwram_vma
    mov    r1, REG_BASE
    str    r3, [r1, REG_DMA3DST - REG_BASE]
    ldr    r2, l_iwram_vma_end @ =__iwram_vma_end
    sub    r3, r2, r3
    add    r3, #3
    lsrs   r3, #2
    orrne  r2, r3, (DMA_ENABLE | DMA_32BIT) << 16
    ldrne  r3, l_iwram_lma @ =__iwram_lma
    strne  r3, [r1, REG_DMA3SRC - REG_BASE]
    strne  r2, [r1, REG_DMA3LEN - REG_BASE]

    @ init heap
    ldr    r0, l_ewram_bss_end @ =0x02001F10
    ldr    r1, l_ewram_end @ =0x02040000
    sub    r1, r1, r0
    ldr    r2, l_set_heap @ =func_080D01E0
    mov    lr, pc
    bx     r2

    @ init static constructors (BUGGED)
    ldr    r4, l_init_array @ =init_array
    ldr    r5, [r4], 4
    cmp    r5, 0
1:  ldrne  r6, [r4], 4
    cmpne  r6, 0
    movne  lr, pc
    bxne   r6
    subsne r5, 1 @ BUG: function call may have messed with N flag
    bne    1b

    @ call main
    ldr    r1, l_main @ =AgbMain
    ldr    lr, l_exit @ =exit
    bx     r1

l_sp_irq:        .4byte MEM_IWRAM + MEM_IWRAM_SIZE - 0x0060
l_sp_usr:        .4byte MEM_IWRAM + MEM_IWRAM_SIZE - 0x0100
l_iwram_vma:     .4byte __iwram_vma
l_iwram_vma_end: .4byte __iwram_vma_end
l_iwram_lma:     .4byte __iwram_lma
l_ewram_bss_end: .4byte __ewram_bss_end
l_ewram_end:     .4byte MEM_EWRAM + MEM_EWRAM_SIZE
l_set_heap:      .4byte func_080D01E0
l_init_array:    .4byte init_array
l_main:          .4byte AgbMain
l_exit:          .4byte exit
    .align 2, 0

    .thumb
    .type exit, function
exit:
    movs   r0, 0xE0
    svc    SVC_REGISTERRAMRESET
    svc    SVC_SOFTRESET
    movs   r0, r0
    bx     lr

    .align 2, 0
