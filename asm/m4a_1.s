    .include "six/asm/prelude.s"
    .include "six/asm/hw/sound.s"
    .include "six/asm/hw/video.s"
    .include "six/asm/hw/dma.s"
    .include "six/asm/macros.s"

    .include "asm/m4a.inc"

    .syntax unified

    fn umul3232H32 thumb

    adr    r2, 1f
    bx     r2
    .arm
1:
    umull  r2, r3, r0, r1
    add    r0, r3, 0
    bx     lr

    endfn @ umul3232H32

    fn SoundMain thumb

    @ id check
    ldr    r0, .Llt_SOUND_INFO_PTR
    ldr    r0, [r0]
    ldr    r2, .Llt_ID_NUMBER
    ldr    r3, [r0, O_SoundInfo_ident]
    cmp    r2, r3
    beq    1f

    @ end if id check failed
    bx     lr

1:
    adds   r3, 1
    str    r3, [r0, O_SoundInfo_ident]

    push   {r4, r5, r6, r7, lr}
    mov    r1, r8
    mov    r2, r9
    mov    r3, r10
    mov    r4, r11
    push   {r0, r1, r2, r3, r4}
    sub    sp, 0x18

    ldrb   r1, [r0, O_SoundInfo_max_lines]
    cmp    r1, 0 @ if max_lines is 0, there is no maximum
    beq    2f

    ldr    r2, .Llt_REG_VCOUNT
    ldrb   r2, [r2]
    cmp    r2, VCOUNT_VBLANK_START
    bhs    1f

    adds   r2, VCOUNT_TOTAL_SCANLINES

1:
    adds   r1, r1, r2

2:
    str    r1, [sp, 0x14]

    ldr    r3, [r0, O_SoundInfo_mplay_head_func]
    cmp    r3, 0
    beq    1f

    ldr    r0, [r0, O_SoundInfo_mplay_head]
    bl     .Lcall_via_r3

    ldr    r0, [sp, 0x18] @ restore r0 = *SOUND_INFO_PTR

1:
    ldr    r3, [r0, O_SoundInfo_cgb_sound_func]
    bl     .Lcall_via_r3

    ldr    r0, [sp, 0x18] @ restore r0 = *SOUND_INFO_PTR

    ldr    r3, [r0, O_SoundInfo_pcm_samples_per_vblank]
    mov    r8, r3

    ldr    r5, .Llt_O_SoundInfo_pcm_buffer
    adds   r5, r0

    ldrb   r4, [r0, 4]
    subs   r7, r4, 1
    bls    1f

    ldrb   r1, [r0, 11]
    subs   r1, r1, r7
    mov    r2, r8
    muls   r2, r1, r2
    adds   r5, r5, r2

1:
    str    r5, [sp, 0x08]

    ldr    r6, .Llt_PCM_DMA_BUF_SIZE
    ldr    r3, .Llt_SoundMainRam
    bx     r3

    .align 2, 0
.Llt_SOUND_INFO_PTR:         .4byte SOUND_INFO_PTR
.Llt_ID_NUMBER:              .4byte ID_NUMBER
.Llt_SoundMainRam:           .4byte SoundMainRam + 1
.Llt_REG_VCOUNT:             .4byte REG_VCOUNT
.Llt_O_SoundInfo_pcm_buffer: .4byte O_SoundInfo_pcm_buffer
.Llt_PCM_DMA_BUF_SIZE:       .4byte PCM_DMA_BUF_SIZE

    fn SoundMainRam_load

    ldrb   r3, [r0, O_SoundInfo_reverb]
    cmp    r3, 0
    beq    .LSoundMainRam_no_reverb

    adr    r1, .LSoundMainRam_reverb
    bx     r1

    .arm
.LSoundMainRam_reverb:
    cmp    r4, 2
    addeq  r7, r0, O_SoundInfo_pcm_buffer
    addne  r7, r5, r8
    mov    r4, r8

1:
    ldsb   r0, [r5, r6]
    ldsb   r1, [r5]
    add    r0, r1
    ldsb   r1, [r7, r6]
    add    r0, r1
    ldsb   r1, [r7], 1
    add    r0, r1
    mul    r1, r0, r3
    mov    r0, r1, asr 9
    tst    r0, 0x80
    addne  r0, 1
    strb   r0, [r5, r6]
    strb   r0, [r5], 1
    subs   r4, r4, 1
    bgt    1b

    adr    r0, .LSoundMainRam_end_reverb + 1 @ plus 1 because THUMB
    bx     r0

    .thumb
.LSoundMainRam_no_reverb:
    movs   r0, 0
    mov    r1, r8
    adds   r6, r5
    lsrs   r1, 3
    bcc    .LSoundMainRam_no_reverb_ok
    stm    r5!, {r0}
    stm    r6!, {r0}
.LSoundMainRam_no_reverb_ok:
    lsrs   r1, 1
    bcc    .LSoundMainRam_no_reverb_lop
    stm    r5!, {r0}
    stm    r6!, {r0}
    stm    r5!, {r0}
    stm    r6!, {r0}
.LSoundMainRam_no_reverb_lop:
    stm    r5!, {r0}
    stm    r6!, {r0}
    stm    r5!, {r0}
    stm    r6!, {r0}
    stm    r5!, {r0}
    stm    r6!, {r0}
    stm    r5!, {r0}
    stm    r6!, {r0}
    subs   r1, 1
    bgt    .LSoundMainRam_no_reverb_lop

.LSoundMainRam_end_reverb:
    ldr    r4, [sp, 0x18]

    ldr    r0, [r4, O_SoundInfo_div_freq]
    mov    r12, r0
    ldrb   r0, [r4, O_SoundInfo_max_chans]
    adds   r4, O_SoundInfo_chans

.LSoundMainRam_chan_lop:
    str    r0, [sp, 0x04]

    ldr    r3, [r4, O_SoundChannel_wav]

    ldr    r0, [sp, 0x14]
    cmp    r0, 0
    beq    2f

    ldr    r1, =REG_VCOUNT
    ldrb   r1, [r1]
    cmp    r1, VCOUNT_VBLANK_START
    bhs    1f

    adds   r1, VCOUNT_TOTAL_SCANLINES

1:
    cmp    r1, r0
    blo    2f
    b      .LSoundMainRam_end

    .pool

2:
    ldrb   r6, [r4, O_SoundChannel_flags]
    movs   r0, SOUND_CHANNEL_SF_ON
    tst    r0, r6
    bne    1f
    b      .LSoundMainRam_chan_continue

1:
    movs   r0, SOUND_CHANNEL_SF_START
    tst    r0, r6
    beq    .L081DCFA0

    movs   r0, SOUND_CHANNEL_SF_STOP
    tst    r0, r6
    bne    .L081DCFB0

    movs   r6, SOUND_CHANNEL_SF_ENV_ATTACK
    strb   r6, [r4, O_SoundChannel_flags]
    adds   r0, r3, 0
    adds   r0, O_WaveData_data
    str    r0, [r4, O_SoundChannel_current_ptr]
    ldr    r0, [r3, O_WaveData_size]
    str    r0, [r4, O_SoundChannel_count]
    movs   r5, 0
    strb   r5, [r4, O_SoundChannel_envelope_volume]
    str    r5, [r4, O_SoundChannel_fw]
    ldrb   r2, [r3, O_WaveData_flags]
    movs   r0, WAVE_DATA_FLAG_LOOP
    tst    r0, r2
    beq    .L081DCFF8

    movs   r0, SOUND_CHANNEL_SF_LOOP
    orrs   r6, r0
    strb   r6, [r4, O_SoundChannel_flags]
    b      .L081DCFF8

.L081DCFA0:
    ldrb   r5, [r4, O_SoundChannel_envelope_volume]
    movs   r0, SOUND_CHANNEL_SF_IEC
    tst    r0, r6
    beq    .L081DCFB6

    ldrb   r0, [r4, O_SoundChannel_pseudo_echo_length]
    subs   r0, 1
    strb   r0, [r4, O_SoundChannel_pseudo_echo_length]
    bhi    .L081DD006

.L081DCFB0:
    movs   r0, 0
    strb   r0, [r4, O_SoundChannel_flags]
    b      .LSoundMainRam_chan_continue

.L081DCFB6:
    movs   r0, SOUND_CHANNEL_SF_STOP
    tst    r0, r6
    beq    .L081DCFD6

    ldrb   r0, [r4, O_SoundChannel_release]
    muls   r5, r0
    lsrs   r5, 8
    ldrb   r0, [r4, O_SoundChannel_pseudo_echo_volume]
    cmp    r5, r0
    bhi    .L081DD006

.L081DCFC8:
    ldrb   r5, [r4, O_SoundChannel_pseudo_echo_volume]
    cmp    r5, 0
    beq    .L081DCFB0

    movs   r0, SOUND_CHANNEL_SF_IEC
    orrs   r6, r0
    strb   r6, [r4, O_SoundChannel_flags]
    b      .L081DD006

.L081DCFD6:
    movs   r2, SOUND_CHANNEL_SF_ENV
    ands   r2, r6
    cmp    r2, SOUND_CHANNEL_SF_ENV_DECAY
    bne    .L081DCFF4

    ldrb   r0, [r4, O_SoundChannel_decay]
    muls   r5, r0
    lsrs   r5, 8
    ldrb   r0, [r4, O_SoundChannel_sustain]
    cmp    r5, r0
    bhi    .L081DD006

    adds   r5, r0, 0
    beq    .L081DCFC8

    subs   r6, 1
    strb   r6, [r4, O_SoundChannel_flags]
    b      .L081DD006

.L081DCFF4:
    cmp    r2, SOUND_CHANNEL_SF_ENV_ATTACK
    bne    .L081DD006

.L081DCFF8:
    ldrb   r0, [r4, O_SoundChannel_attack]
    adds   r5, r0
    cmp    r5, 0xFF
    bcc    .L081DD006

    movs   r5, 0xFF
    subs   r6, 1
    strb   r6, [r4, O_SoundChannel_flags]

.L081DD006:
    strb   r5, [r4, O_SoundChannel_envelope_volume]
    ldr    r0, [sp, 0x18]
    ldrb   r0, [r0, O_SoundChannel_release]
    adds   r0, 1
    muls   r0, r5
    lsrs   r5, r0, 4
    ldrb   r0, [r4, O_SoundChannel_volume_right]
    muls   r0, r5
    lsrs   r0, 8
    strb   r0, [r4, O_SoundChannel_envelope_volume_right]
    ldrb   r0, [r4, O_SoundChannel_volume_left]
    muls   r0, r5
    lsrs   r0, 8
    strb   r0, [r4, O_SoundChannel_envelope_volume_left]
    movs   r0, SOUND_CHANNEL_SF_LOOP
    ands   r0, r6
    str    r0, [sp, 0x10]
    beq    .L081DD03A

    adds   r0, r3, 0
    adds   r0, O_WaveData_data
    ldr    r1, [r3, O_WaveData_loop_start]
    adds   r0, r1
    str    r0, [sp, 0x0C]
    ldr    r0, [r3, O_WaveData_size]
    subs   r0, r1
    str    r0, [sp, 0x10]

.L081DD03A:
    ldr    r5, [sp, 0x8]
    ldr    r2, [r4, O_SoundChannel_count]
    ldr    r3, [r4, O_SoundChannel_current_ptr]
    adr    r0, .L081DD044
    bx     r0

    .arm
.L081DD044:
    str    r8, [sp]

    ldrb   r10, [r4, O_SoundChannel_envelope_volume_right]
    ldrb   r11, [r4, O_SoundChannel_envelope_volume_left]
    mov    r10, r10, lsl 16
    mov    r11, r11, lsl 16

    ldrb   r0, [r4, O_SoundChannel_type]
    tst    r0, 0x8
    beq    .L081DD19C

.L081DD07C:
    cmp    r2, 4
    ble    .L081DD0EC

    subs   r2, r2, r8
    movgt  lr, 0
    bgt    .L081DD0A8

    mov    lr, r8
    add    r2, r8
    sub    r8, r2, 4
    sub    lr, r8
    ands   r2, 0x3
    moveq  r2, 4

.L081DD0A8:
    ldr    r6, [r5]
    ldr    r7, [r5, PCM_DMA_BUF_SIZE]

.L081DD0B0:
    ldsb   r0, [r3], 1
    mul    r1, r10, r0
    bic    r1, 0xFF0000
    add    r6, r1, r6, ror 8
    mul    r1, r11, r0
    bic    r1, 0xFF0000
    add    r7, r1, r7, ror 8
    adds   r5, r5, 0x40000000
    bcc    .L081DD0B0

    str    r7, [r5, PCM_DMA_BUF_SIZE]
    str    r6, [r5], 4
    subs   r8, 4
    bgt    .L081DD0A8

    adds   r8, r8, lr
    beq    .L081DD22C

.L081DD0EC:
    ldr    r6, [r5]
    ldr    r7, [r5, PCM_DMA_BUF_SIZE]

.L081DD0F4:
    ldsb  r0, [r3], 1
    mul    r1, r10, r0
    bic    r1, 0xFF0000
    add    r6, r1, r6, ror 8
    mul    r1, r11, r0
    bic    r1, 0xFF0000
    add    r7, r1, r7, ror 8
    subs   r2, 1
    beq    .L081DD164

.L081DD118:
    adds   r5, r5, 0x40000000
    bcc    .L081DD0F4

    str    r7, [r5, PCM_DMA_BUF_SIZE]
    str    r6, [r5], 4
    subs   r8, 4
    bgt    .L081DD07C
    b      .L081DD22C

.L081DD134:
    ldr    r0, [sp, 0x18]
    cmp    r0, 0
    beq    .L081DD158

    ldr    r3, [sp, 0x14]
    rsb    r9, r2, 0

.L081DD148:
    adds   r2, r0, r2
    bgt    .L081DD1FC

    sub    r9, r0
    b      .L081DD148

.L081DD158:
    pop    {r4, r12}
    mov    r2, 0
    b      .L081DD174

.L081DD164:
    ldr    r2, [sp, 0x10]
    cmp    r2, 0
    ldrne  r3, [sp, 0x0C]
    bne    .L081DD118

.L081DD174:
    strb   r2, [r4, O_SoundChannel_flags]
    mov    r0, r5, lsr 30
    bic    r5, r5, 0xC0000000
    rsb    r0, r0, 0x3
    mov    r0, r0, lsl 3
    mov    r6, r6, ror r0
    mov    r7, r7, ror r0
    str    r7, [r5, PCM_DMA_BUF_SIZE]
    str    r6, [r5], 4
    b      .L081DD234

.L081DD19C:
    push   {r4, r12}
    ldr    lr, [r4, O_SoundChannel_fw]
    ldr    r1, [r4, O_SoundChannel_frequency]
    mul    r4, r12, r1
    ldsb   r0, [r3]
    ldsb   r1, [r3, 1]!
    sub    r1, r0

.L081DD1B4:
    ldr    r6, [r5]
    ldr    r7, [r5, PCM_DMA_BUF_SIZE]

.L081DD1BC:
    mul    r9, lr, r1
    add    r9, r0, r9, asr 23
    mul    r12, r10, r9
    bic    r12, 0xFF0000
    add    r6, r12, r6, ror 8
    mul    r12, r11, r9
    bic    r12, 0xFF0000
    add    r7, r12, r7, ror 8
    add    lr, r4
    movs   r9, lr, lsr 23
    beq    .L081DD208

    bic    lr, lr, 0x3F800000
    subs   r2, r9
    ble    .L081DD134

    subs   r9, 1
    addeq  r0, r1

.L081DD1FC:
    ldsbne r0, [r3, r9]!
    ldsb   r1, [r3, 1]!
    sub    r1, r0

.L081DD208:
    adds   r5, 0x40000000
    bcc    .L081DD1BC

    str    r7, [r5, PCM_DMA_BUF_SIZE]
    str    r6, [r5], 4
    subs   r8, 4
    bgt    .L081DD1B4

    sub    r3, 1
    pop    {r4, r12}
    str    lr, [r4, O_SoundChannel_fw]

.L081DD22C:
    str    r2, [r4, O_SoundChannel_count]
    str    r3, [r4, O_SoundChannel_current_ptr]

.L081DD234:
    ldr    r8, [sp]
    add    r0, pc, 1
    bx     r0

    .thumb
.LSoundMainRam_chan_continue:
    ldr    r0, [sp, 0x04]
    subs   r0, 1
    ble    .LSoundMainRam_end

    adds   r4, SoundChannel_size
    b      .LSoundMainRam_chan_lop

.LSoundMainRam_end:
    ldr    r0, [sp, 0x18]
    ldr    r3, =ID_NUMBER
    str    r3, [r0]
    add    sp, 0x1C
    pop    {r0-r7}
    mov    r8, r0
    mov    r9, r1
    mov    r10, r2
    mov    r11, r3
    pop    {r3}

.Lcall_via_r3:
    bx     r3

    .pool

    endfn @ SoundMainRam_load
    endfn @ SoundMain

    fn SoundMainBTM thumb

    mov    r12, r4

    movs   r1, 0
    movs   r2, 0
    movs   r3, 0
    movs   r4, 0
    stm    r0!, {r1-r4}
    stm    r0!, {r1-r4}
    stm    r0!, {r1-r4}
    stm    r0!, {r1-r4}

    mov    r4, r12
    bx     lr

    endfn @ SoundMainBTM

    fn RealClearChain thumb

    ldr    r3, [r0, O_SoundChannel_track]
    cmp    r3, 0
    beq    4f

    ldr    r1, [r0, O_SoundChannel_next_ptr]

    ldr    r2, [r0, O_SoundChannel_prev_ptr]
    cmp    r2, 0
    beq    1f

    str    r1, [r2, O_SoundChannel_next_ptr]
    b      2f

1:
    str    r1, [r3, O_MusicPlayerTrack_chan]

2:
    cmp    r1, 0
    beq    3f

    str    r2, [r1, O_SoundChannel_prev_ptr]

3:
    movs   r1, 0
    str    r1, [r0, O_SoundChannel_track]

4:
    bx     lr

    endfn @ RealClearChain

    fn ply_fine thumb

    push   {r4, r5, lr}

    adds   r5, r1, 0

    ldr    r4, [r5, O_MusicPlayerTrack_chan]
    cmp    r4, 0
    beq    .Lply_fine_done

.Lply_fine_loop:
    ldrb   r1, [r4, O_SoundChannel_flags]
    movs   r0, SOUND_CHANNEL_SF_ON
    tst    r0, r1
    beq    .Lply_fine_ok

    movs   r0, SOUND_CHANNEL_SF_STOP
    orrs   r1, r0
    strb   r1, [r4, O_SoundChannel_flags]

.Lply_fine_ok:
    adds   r0, r4, 0
    bl     RealClearChain

    ldr    r4, [r4, O_SoundChannel_next_ptr]
    cmp    r4, 0
    bne    .Lply_fine_loop

.Lply_fine_done:
    movs   r0, 0
    strb   r0, [r5, O_MusicPlayerTrack_flags]

    pop    {r4, r5}
    pop    {r0}
    bx     r0

    endfn @ ply_fine

    fn MPlayJumpTableCopy thumb

    mov    r12, lr

    movs   r1, 0x24
    ldr    r2, .Llt_MPlayJumpTableTemplate

1:
    ldr    r3, [r2]
    bl     chk_adr_r2
    stm    r0!, {r3}
    adds   r2, 4
    subs   r1, 1
    bgt    1b

    bx     r12

    .align 2, 0

    fn ldrb_r3_r2 thumb .linkage=local

    ldrb   r3, [r2]

    @ fallthrough

    fn chk_adr_r2 .linkage=local

@ This attempts to protect against reading anything from the BIOS ROM
@ besides the jump table template.
@ It assumes that the jump table template is located at the end of the ROM.

    push   {r0}

    lsrs   r0, r2, 25
    bne    .Lchk_adr_r2_done @ if adr >= 0x2000000 (i.e. not in BIOS ROM), accept it

    ldr    r0, .Llt_MPlayJumpTableTemplate
    cmp    r2, r0
    blo    .Lchk_adr_r2_reject @ if adr < gMPlayJumpTableTemplate, reject it

    lsrs   r0, r2, 14
    beq    .Lchk_adr_r2_done @ if adr < 0x40000 (i.e. in BIOS ROM), accept it

.Lchk_adr_r2_reject:
    movs   r3, 0

.Lchk_adr_r2_done:
    pop    {r0}
    bx     lr

    endfn @ chk_adr_r2
    endfn @ ldrb_r3_r2

    .align 2, 0
.Llt_MPlayJumpTableTemplate: .4byte gMPlayJumpTableTemplate

    fn ld_r3_tp_adr_i thumb

    ldr    r2, [r1, O_MusicPlayerTrack_cmdPtr]

    @ fallthrough

    fn st_r2_inc_pt_cmd_ptr

    adds   r3, r2, 0x1
    str    r3, [r1, O_MusicPlayerTrack_cmdPtr]
    ldrb   r3, [r2]
    b      chk_adr_r2

    endfn @ st_r2_inc_pt_cmd_ptr
    endfn @ ld_r3_tp_adr_i

    endfn @ MPlayJumpTableCopy

    fn ply_goto thumb

    push   {lr}

    @ fallthrough

    fn ply_goto_inner

    ldr    r2, [r1, O_MusicPlayerTrack_cmdPtr]
    ldrb   r0, [r2, 3]
    lsls   r0, 8
    ldrb   r3, [r2, 2]
    orrs   r0, r3
    lsls   r0, 8
    ldrb   r3, [r2, 1]
    orrs   r0, r3
    lsls   r0, 8
    bl     ldrb_r3_r2
    orrs   r0, r3
    str    r0, [r1, O_MusicPlayerTrack_cmdPtr]
    pop    {r0}
    bx     r0

    endfn @ ply_goto_inner
    endfn @ ply_goto

    fn ply_patt thumb

    ldrb   r2, [r1, O_MusicPlayerTrack_patternLevel]
    cmp    r2, 3
    bhs    .Lply_patt_done

    lsls   r2, 2
    adds   r3, r1, r2
    ldr    r2, [r1, O_MusicPlayerTrack_cmdPtr]
    adds   r2, 4
    str    r2, [r3, O_MusicPlayerTrack_patternStack]
    ldrb   r2, [r1, O_MusicPlayerTrack_patternLevel]
    adds   r2, 1
    strb   r2, [r1, O_MusicPlayerTrack_patternLevel]
    b      ply_goto

.Lply_patt_done:
    b      ply_fine

    endfn @ ply_patt

    fn ply_pend thumb

    ldrb   r2, [r1, O_MusicPlayerTrack_patternLevel]
    cmp    r2, 0
    beq    .Lply_pend_done

    subs   r2, 1
    strb   r2, [r1, O_MusicPlayerTrack_patternLevel]
    lsls   r2, 2
    adds   r3, r1, r2
    ldr    r2, [r3, O_MusicPlayerTrack_patternStack]
    str    r2, [r1, O_MusicPlayerTrack_cmdPtr]

.Lply_pend_done:
    bx     lr

    endfn @ ply_pend

    fn ply_rept thumb

    push   {lr}
    ldr    r2, [r1, O_MusicPlayerTrack_cmdPtr]
    ldrb   r3, [r2]
    cmp    r3, 0
    bne    .Lply_rept_1

    adds   r2, 1
    str    r2, [r1, O_MusicPlayerTrack_cmdPtr]
    b      ply_goto_inner

.Lply_rept_1:
    ldrb   r3, [r1, O_MusicPlayerTrack_repN]
    adds   r3, 1
    strb   r3, [r1, O_MusicPlayerTrack_repN]
    mov    r12, r3
    bl     ld_r3_tp_adr_i
    cmp    r12, r3
    bhs    .Lply_rept_2

    b      ply_goto_inner

.Lply_rept_2:
    movs   r3, 0
    strb   r3, [r1, O_MusicPlayerTrack_repN]
    adds   r2, 5
    str    r2, [r1, O_MusicPlayerTrack_cmdPtr]
    pop    {r0}
    bx     r0

    endfn @ ply_rept

    fn ply_prio thumb

    mov    r12, lr
    bl     ld_r3_tp_adr_i
    strb   r3, [r1, O_MusicPlayerTrack_priority]
    bx     r12

    endfn @ ply_prio

    fn ply_tempo thumb

    mov    r12, lr
    bl     ld_r3_tp_adr_i
    lsls   r3, 1
    strh   r3, [r0, O_MusicPlayerInfo_tempoD]
    ldrh   r2, [r0, O_MusicPlayerInfo_tempoU]
    muls   r3, r2
    lsrs   r3, 8
    strh   r3, [r0, O_MusicPlayerInfo_tempoI]
    bx     r12

    endfn @ ply_tempo

    fn ply_keysh thumb

    mov    r12, lr
    bl     ld_r3_tp_adr_i
    strb   r3, [r1, O_MusicPlayerTrack_keyShift]
    ldrb   r3, [r1, O_MusicPlayerTrack_flags]
    movs   r2, 0x0C
    orrs   r3, r2
    strb   r3, [r1, O_MusicPlayerTrack_flags]
    bx     r12

    endfn @ ply_keysh

    fn ply_voice thumb

    mov    r12, lr
    ldr    r2, [r1, O_MusicPlayerTrack_cmdPtr]
    ldrb   r3, [r2]
    adds   r2, 1
    str    r2, [r1, O_MusicPlayerTrack_cmdPtr]
    lsls   r2, r3, 1
    adds   r2, r3
    lsls   r2, 2
    ldr    r3, [r0, O_MusicPlayerInfo_tone]
    adds   r2, r3
    ldr    r3, [r2, O_ToneData_type]
    bl     chk_adr_r2
    str    r3, [r1, O_MusicPlayerTrack_ToneData_type]
    ldr    r3, [r2, O_ToneData_wav]
    bl     chk_adr_r2
    str    r3, [r1, O_MusicPlayerTrack_ToneData_wav]
    ldr    r3, [r2, O_ToneData_attack]
    bl     chk_adr_r2
    str    r3, [r1, O_MusicPlayerTrack_ToneData_attack]
    bx     r12

    endfn @ ply_voice

    fn ply_vol thumb

    mov    r12, lr
    bl     ld_r3_tp_adr_i
    strb   r3, [r1, O_MusicPlayerTrack_vol]
    ldrb   r3, [r1, O_MusicPlayerTrack_flags]
    movs   r2, MPT_FLG_VOLCHG
    orrs   r3, r2
    strb   r3, [r1, O_MusicPlayerTrack_flags]
    bx     r12

    endfn @ ply_vol

    fn ply_pan thumb

    mov    r12, lr
    bl     ld_r3_tp_adr_i
    subs   r3, C_V
    strb   r3, [r1, O_MusicPlayerTrack_pan]
    ldrb   r3, [r1, O_MusicPlayerTrack_flags]
    movs   r2, MPT_FLG_VOLCHG
    orrs   r3, r2
    strb   r3, [r1, O_MusicPlayerTrack_flags]
    bx     r12

    endfn @ ply_pan

    fn ply_bend thumb

    mov    r12, lr
    bl     ld_r3_tp_adr_i
    subs   r3, C_V
    strb   r3, [r1, O_MusicPlayerTrack_bend]
    ldrb   r3, [r1, O_MusicPlayerTrack_flags]
    movs   r2, MPT_FLG_PITCHG
    orrs   r3, r2
    strb   r3, [r1, O_MusicPlayerTrack_flags]
    bx     r12

    endfn @ ply_bend

    fn ply_bendr thumb

    mov    r12, lr
    bl     ld_r3_tp_adr_i
    strb   r3, [r1, O_MusicPlayerTrack_bendRange]
    ldrb   r3, [r1, O_MusicPlayerTrack_flags]
    movs   r2, MPT_FLG_PITCHG
    orrs   r3, r2
    strb   r3, [r1, O_MusicPlayerTrack_flags]
    bx     r12

    endfn @ ply_bendr

    fn ply_lfodl thumb

    mov    r12, lr
    bl     ld_r3_tp_adr_i
    strb   r3, [r1, O_MusicPlayerTrack_lfoDelay]
    bx     r12

    endfn @ ply_lfodl

    fn ply_modt thumb
    mov    r12, lr
    bl     ld_r3_tp_adr_i
    ldrb   r0, [r1, O_MusicPlayerTrack_modT]
    cmp    r0, r3
    beq    .Lply_modt_done

    strb   r3, [r1, O_MusicPlayerTrack_modT]
    ldrb   r3, [r1, O_MusicPlayerTrack_flags]
    movs   r2, MPT_FLG_VOLCHG | MPT_FLG_PITCHG
    orrs   r3, r2
    strb   r3, [r1, O_MusicPlayerTrack_flags]

.Lply_modt_done:
    bx     r12
    endfn @ ply_modt

    fn ply_tune thumb

    mov    r12, lr
    bl     ld_r3_tp_adr_i
    subs   r3, C_V
    strb   r3, [r1, O_MusicPlayerTrack_tune]
    ldrb   r3, [r1, O_MusicPlayerTrack_flags]
    movs   r2, MPT_FLG_PITCHG
    orrs   r3, r2
    strb   r3, [r1, O_MusicPlayerTrack_flags]
    bx     r12

    endfn @ ply_tune

    fn ply_port thumb

    mov    r12, lr
    ldr    r2, [r1, O_MusicPlayerTrack_cmdPtr]
    ldrb   r3, [r2]
    adds   r2, 1
    ldr    r0, =REG_SOUND1CNT_L @ sound register base address
    adds   r0, r3
    bl     st_r2_inc_pt_cmd_ptr
    strb   r3, [r0]
    bx     r12

    .pool

    endfn @ ply_port

    fn m4aSoundVSync thumb

    ldr    r0, lt2_SOUND_INFO_PTR
    ldr    r0, [r0]

    @ Exit the function if ident is not ID_NUMBER or ID_NUMBER+1.
    ldr    r2, lt2_ID_NUMBER
    ldr    r3, [r0, O_SoundInfo_ident]
    subs   r3, r2
    cmp    r3, 1
    bhi    .Lm4aSoundVSync_Done

    @ Decrement the PCM DMA counter. If it reaches 0, we need to do a DMA.
    ldrb   r1, [r0, O_SoundInfo_pcm_dma_counter]
    subs   r1, 1
    strb   r1, [r0, O_SoundInfo_pcm_dma_counter]
    bgt    .Lm4aSoundVSync_Done

    @ Reload the PCM DMA counter.
    ldrb   r1, [r0, O_SoundInfo_pcm_dma_period]
    strb   r1, [r0, O_SoundInfo_pcm_dma_counter]

    ldr    r2, =REG_DMA1SRC

    ldr    r1, [r2, 0x8] @ DMA1CNT
    lsls   r1, 7
    bcc    .Lm4aSoundVSync_SkipDMA1 @ branch if repeat bit isn't set

    ldr    r1, =((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INCREMENT | DMA_DST_FIXED) << 16) | 4
    str    r1, [r2, 0x8] @ DMA1CNT

.Lm4aSoundVSync_SkipDMA1:
    ldr    r1, [r2, 0xC + 0x8] @ DMA2CNT
    lsls   r1, 7
    bcc    .Lm4aSoundVSync_SkipDMA2 @ branch if repeat bit isn't set

    ldr    r1, =((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INCREMENT | DMA_DST_FIXED) << 16) | 4
    str    r1, [r2, 0xC + 0x8] @ DMA2CNT

.Lm4aSoundVSync_SkipDMA2:
    @ turn off DMA1/DMA2
    movs   r1, DMA_32BIT >> 8
    lsls   r1, 8
    strh   r1, [r2, 0xA]       @ DMA1CNT_H
    strh   r1, [r2, 0xC + 0xA] @ DMA2CNT_H

    @ turn on DMA1/DMA2 direct-sound FIFO mode
    movs   r1, (DMA_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT) >> 8
    lsls   r1, 8 @ LSB is 0, so DMA_SRC_INCREMENT is used (destination is always fixed in FIFO mode)
    strh   r1, [r2, 0xA]       @ DMA1CNT_H
    strh   r1, [r2, 0xC + 0xA] @ DMA2CNT_H

.Lm4aSoundVSync_Done:
    bx     lr

    .pool

    endfn @ m4aSoundVSync

    fn MPlayMain thumb

    ldr r2, lt2_ID_NUMBER
    ldr r3, [r0, O_MusicPlayerInfo_ident]
    cmp r2, r3
    beq _081DD82E
    bx lr
_081DD82E:
    adds r3, 0x1
    str r3, [r0, O_MusicPlayerInfo_ident]
    push {r0,lr}
    ldr r3, [r0, O_MusicPlayerInfo_func]
    cmp r3, 0
    beq _081DD840
    ldr r0, [r0, O_MusicPlayerInfo_intp]
    bl call_r3
_081DD840:
    pop {r0}
    push {r4-r7}
    mov r4, r8
    mov r5, r9
    mov r6, r10
    mov r7, r11
    push {r4-r7}
    adds r7, r0, 0
    ldr r0, [r7, O_MusicPlayerInfo_status]
    cmp r0, 0
    bge _081DD858
    b _081DDA6C
_081DD858:
    ldr r0, lt2_SOUND_INFO_PTR
    ldr r0, [r0]
    mov r8, r0
    adds r0, r7, 0
    bl FadeOutBody
    ldr r0, [r7, O_MusicPlayerInfo_status]
    cmp r0, 0
    bge _081DD86C
    b _081DDA6C
_081DD86C:
    ldrh r0, [r7, O_MusicPlayerInfo_tempoC]
    ldrh r1, [r7, O_MusicPlayerInfo_tempoI]
    adds r0, r1
    b _081DD9BC
_081DD874:
    ldrb r6, [r7, O_MusicPlayerInfo_trackCount]
    ldr r5, [r7, O_MusicPlayerInfo_tracks]
    movs r3, 0x1
    movs r4, 0
_081DD87C:
    ldrb r0, [r5, O_MusicPlayerTrack_flags]
    movs r1, MPT_FLG_EXIST
    tst r1, r0
    bne _081DD886
    b _081DD998
_081DD886:
    mov r10, r3
    orrs r4, r3
    mov r11, r4
    ldr r4, [r5, O_MusicPlayerTrack_chan]
    cmp r4, 0
    beq _081DD8BA
_081DD892:
    ldrb r1, [r4, O_SoundChannel_flags]
    movs r0, SOUND_CHANNEL_SF_ON
    tst r0, r1
    beq _081DD8AE
    ldrb r0, [r4, O_SoundChannel_gate_time]
    cmp r0, 0
    beq _081DD8B4
    subs r0, 0x1
    strb r0, [r4, O_SoundChannel_gate_time]
    bne _081DD8B4
    movs r0, SOUND_CHANNEL_SF_STOP
    orrs r1, r0
    strb r1, [r4, O_SoundChannel_flags]
    b _081DD8B4
_081DD8AE:
    adds r0, r4, 0
    bl ClearChain
_081DD8B4:
    ldr r4, [r4, O_SoundChannel_next_ptr]
    cmp r4, 0
    bne _081DD892
_081DD8BA:
    ldrb r3, [r5, O_MusicPlayerTrack_flags]
    movs r0, MPT_FLG_START
    tst r0, r3
    beq _081DD938
    adds r0, r5, 0
    bl Clear64byte
    movs r0, MPT_FLG_EXIST
    strb r0, [r5, O_MusicPlayerTrack_flags]
    movs r0, 0x2
    strb r0, [r5, O_MusicPlayerTrack_bendRange]
    movs r0, 0x40
    strb r0, [r5, O_MusicPlayerTrack_volX]
    movs r0, 0x16
    strb r0, [r5, O_MusicPlayerTrack_lfoSpeed]
    movs r0, 0x1
    adds r1, r5, 0x6
    strb r0, [r1, O_MusicPlayerTrack_ToneData_type - 0x6]
    b _081DD938
_081DD8E0:
    ldr r2, [r5, O_MusicPlayerTrack_cmdPtr]
    ldrb r1, [r2]
    cmp r1, 0x80
    bhs _081DD8EC
    ldrb r1, [r5, O_MusicPlayerTrack_runningStatus]
    b _081DD8F6
_081DD8EC:
    adds r2, 0x1
    str r2, [r5, O_MusicPlayerTrack_cmdPtr]
    cmp r1, 0xBD
    bcc _081DD8F6
    strb r1, [r5, O_MusicPlayerTrack_runningStatus]
_081DD8F6:
    cmp r1, 0xCF
    bcc _081DD90C
    mov r0, r8
    ldr r3, [r0, O_SoundInfo_plynote_func]
    adds r0, r1, 0
    subs r0, 0xCF
    adds r1, r7, 0
    adds r2, r5, 0
    bl call_r3
    b _081DD938
_081DD90C:
    cmp r1, 0xB0
    bls _081DD92E
    adds r0, r1, 0
    subs r0, 0xB1
    strb r0, [r7, O_MusicPlayerInfo_cmd]
    mov r3, r8
    ldr r3, [r3, O_SoundInfo_mplay_jump_table]
    lsls r0, 2
    ldr r3, [r3, r0]
    adds r0, r7, 0
    adds r1, r5, 0
    bl call_r3
    ldrb r0, [r5, O_MusicPlayerTrack_flags]
    cmp r0, 0
    beq _081DD994
    b _081DD938
_081DD92E:
    ldr r0, lt_gClockTable
    subs r1, 0x80
    adds r1, r0
    ldrb r0, [r1]
    strb r0, [r5, O_MusicPlayerTrack_wait]
_081DD938:
    ldrb r0, [r5, O_MusicPlayerTrack_wait]
    cmp r0, 0
    beq _081DD8E0
    subs r0, 0x1
    strb r0, [r5, O_MusicPlayerTrack_wait]
    ldrb r1, [r5, O_MusicPlayerTrack_lfoSpeed]
    cmp r1, 0
    beq _081DD994
    ldrb r0, [r5, O_MusicPlayerTrack_mod]
    cmp r0, 0
    beq _081DD994
    ldrb r0, [r5, O_MusicPlayerTrack_lfoDelayC]
    cmp r0, 0
    beq _081DD95A
    subs r0, 0x1
    strb r0, [r5, O_MusicPlayerTrack_lfoDelayC]
    b _081DD994
_081DD95A:
    ldrb r0, [r5, O_MusicPlayerTrack_lfoSpeedC]
    adds r0, r1
    strb r0, [r5, O_MusicPlayerTrack_lfoSpeedC]
    adds r1, r0, 0
    subs r0, 0x40
    lsls r0, 24
    bpl _081DD96E
    lsls r2, r1, 24
    asrs r2, 24
    b _081DD972
_081DD96E:
    movs r0, 0x80
    subs r2, r0, r1
_081DD972:
    ldrb r0, [r5, O_MusicPlayerTrack_mod]
    muls r0, r2
    asrs r2, r0, 6
    ldrb r0, [r5, O_MusicPlayerTrack_modM]
    eors r0, r2
    lsls r0, 24
    beq _081DD994
    strb r2, [r5, O_MusicPlayerTrack_modM]
    ldrb r0, [r5]
    ldrb r1, [r5, O_MusicPlayerTrack_modT]
    cmp r1, 0
    bne _081DD98E
    movs r1, MPT_FLG_PITCHG
    b _081DD990
_081DD98E:
    movs r1, MPT_FLG_VOLCHG
_081DD990:
    orrs r0, r1
    strb r0, [r5, O_MusicPlayerTrack_flags]
_081DD994:
    mov r3, r10
    mov r4, r11
_081DD998:
    subs r6, 0x1
    ble _081DD9A4
    movs r0, MusicPlayerTrack_size
    adds r5, r0
    lsls r3, 1
    b _081DD87C
_081DD9A4:
    ldr r0, [r7, O_MusicPlayerInfo_clock]
    adds r0, 0x1
    str r0, [r7, O_MusicPlayerInfo_clock]
    cmp r4, 0
    bne _081DD9B6
    movs r0, 0x80
    lsls r0, 24
    str r0, [r7, O_MusicPlayerInfo_status]
    b _081DDA6C
_081DD9B6:
    str r4, [r7, O_MusicPlayerInfo_status]
    ldrh r0, [r7, O_MusicPlayerInfo_tempoC]
    subs r0, 150
_081DD9BC:
    strh r0, [r7, O_MusicPlayerInfo_tempoC]
    cmp r0, 150
    bcc _081DD9C4
    b _081DD874
_081DD9C4:
    ldrb r2, [r7, O_MusicPlayerInfo_trackCount]
    ldr r5, [r7, O_MusicPlayerInfo_tracks]
_081DD9C8:
    ldrb r0, [r5, O_MusicPlayerTrack_flags]
    movs r1, 0x80
    tst r1, r0
    beq _081DDA62
    movs r1, MPT_FLG_VOLCHG | MPT_FLG_PITCHG
    tst r1, r0
    beq _081DDA62
    mov r9, r2
    adds r0, r7, 0
    adds r1, r5, 0
    bl TrkVolPitSet
    ldr r4, [r5, O_MusicPlayerTrack_chan]
    cmp r4, 0
    beq _081DDA58
_081DD9E6:
    ldrb r1, [r4, O_SoundChannel_flags]
    movs r0, SOUND_CHANNEL_SF_ON
    tst r0, r1
    bne _081DD9F6
    adds r0, r4, 0
    bl ClearChain
    b _081DDA52
_081DD9F6:
    ldrb r0, [r4, O_SoundChannel_type]
    movs r6, TONEDATA_TYPE_CGB
    ands r6, r0
    ldrb r3, [r5, O_MusicPlayerTrack_flags]
    movs r0, MPT_FLG_VOLCHG
    tst r0, r3
    beq _081DDA14
    bl ChnVolSetAsm
    cmp r6, 0
    beq _081DDA14
    ldrb r0, [r4, O_CgbChannel_modify]
    movs r1, 0x1
    orrs r0, r1
    strb r0, [r4, O_CgbChannel_modify]
_081DDA14:
    ldrb r3, [r5, O_MusicPlayerTrack_flags]
    movs r0, MPT_FLG_PITCHG
    tst r0, r3
    beq _081DDA52
    ldrb r1, [r4, O_SoundChannel_key]
    movs r0, O_MusicPlayerTrack_keyM
    ldrsb r0, [r5, r0]
    adds r2, r1, r0
    bpl _081DDA28
    movs r2, 0
_081DDA28:
    cmp r6, 0
    beq _081DDA46
    mov r0, r8
    ldr r3, [r0, O_SoundInfo_midi_to_cgb_func]
    adds r1, r2, 0
    ldrb r2, [r5, O_MusicPlayerTrack_pitM]
    adds r0, r6, 0
    bl call_r3
    str r0, [r4, O_CgbChannel_frequency]
    ldrb r0, [r4, O_CgbChannel_modify]
    movs r1, CGB_CHANNEL_MO_PIT
    orrs r0, r1
    strb r0, [r4, O_CgbChannel_modify]
    b _081DDA52
_081DDA46:
    adds r1, r2, 0
    ldrb r2, [r5, O_MusicPlayerTrack_pitM]
    ldr r0, [r4, O_SoundChannel_wav]
    bl MidiKeyToFreq
    str r0, [r4, O_SoundChannel_frequency]
_081DDA52:
    ldr r4, [r4, O_SoundChannel_next_ptr]
    cmp r4, 0
    bne _081DD9E6
_081DDA58:
    ldrb r0, [r5, O_MusicPlayerTrack_flags]
    movs r1, 0xF0
    ands r0, r1
    strb r0, [r5, O_MusicPlayerTrack_flags]
    mov r2, r9
_081DDA62:
    subs r2, 0x1
    ble _081DDA6C
    movs r0, MusicPlayerTrack_size
    adds r5, r0
    bgt _081DD9C8
_081DDA6C:
    ldr r0, lt2_ID_NUMBER
    str r0, [r7, O_MusicPlayerInfo_ident]
    pop {r0-r7}
    mov r8, r0
    mov r9, r1
    mov r10, r2
    mov r11, r3
    pop {r3}

call_r3:
    bx r3

    .align 2, 0
lt_gClockTable:     .word gClockTable
lt2_SOUND_INFO_PTR: .word SOUND_INFO_PTR
lt2_ID_NUMBER:      .word ID_NUMBER

    endfn @ MPlayMain

    endfn @ m4aSoundVSync_container

    fn TrackStop thumb

    push {r4, r5, r6, lr}
    adds r5, r1, #0
    ldrb r1, [r5]
    movs r0, #0x80
    tst r0, r1
    beq _080D1EE4
    ldr r4, [r5, #0x20]
    cmp r4, #0
    beq _080D1EE2
    movs r6, #0
_080D1EC0:
    ldrb r0, [r4]
    cmp r0, #0
    beq _080D1EDA
    ldrb r0, [r4, #1]
    movs r3, #7
    ands r0, r3
    beq _080D1ED8
    ldr r3, _080D1EEC @ =0x03007FF0
    ldr r3, [r3]
    ldr r3, [r3, #0x2c]
    bl call_r3
_080D1ED8:
    strb r6, [r4]
_080D1EDA:
    str r6, [r4, #0x2c]
    ldr r4, [r4, #0x34]
    cmp r4, #0
    bne _080D1EC0
_080D1EE2:
    str r4, [r5, #0x20]
_080D1EE4:
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    .align 2, 0
_080D1EEC: .4byte 0x03007FF0

    endfn @ TrackStop

    fn ChnVolSetAsm thumb

    ldrb r1, [r4, #0x12]
    movs r0, #0x14
    ldrsb r2, [r4, r0]
    movs r3, #0x80
    adds r3, r3, r2
    muls r3, r1, r3
    ldrb r0, [r5, #0x10]
    muls r0, r3, r0
    asrs r0, r0, #0xe
    cmp r0, #0xff
    bls _080D1F08
    movs r0, #0xff
_080D1F08:
    strb r0, [r4, #2]
    movs r3, #0x7f
    subs r3, r3, r2
    muls r3, r1, r3
    ldrb r0, [r5, #0x11]
    muls r0, r3, r0
    asrs r0, r0, #0xe
    cmp r0, #0xff
    bls _080D1F1C
    movs r0, #0xff
_080D1F1C:
    strb r0, [r4, #3]
    bx lr

    endfn @ ChnVolSetAsm

    fn ply_note thumb

    push {r4, r5, r6, r7, lr}
    mov r4, r8
    mov r5, sb
    mov r6, sl
    mov r7, fp
    push {r4, r5, r6, r7}
    sub sp, #0x18
    str r1, [sp]
    adds r5, r2, #0
    ldr r1, _080D2118 @ =0x03007FF0
    ldr r1, [r1]
    str r1, [sp, #4]
    ldr r1, _080D211C @ =0x08139CFC
    adds r0, r0, r1
    ldrb r0, [r0]
    strb r0, [r5, #4]
    ldr r3, [r5, #0x40]
    ldrb r0, [r3]
    cmp r0, #0x80
    bhs _080D1F66
    strb r0, [r5, #5]
    adds r3, #1
    ldrb r0, [r3]
    cmp r0, #0x80
    bhs _080D1F64
    strb r0, [r5, #6]
    adds r3, #1
    ldrb r0, [r3]
    cmp r0, #0x80
    bhs _080D1F64
    ldrb r1, [r5, #4]
    adds r1, r1, r0
    strb r1, [r5, #4]
    adds r3, #1
_080D1F64:
    str r3, [r5, #0x40]
_080D1F66:
    movs r0, #0
    str r0, [sp, #0x14]
    adds r4, r5, #0
    adds r4, #0x24
    ldrb r2, [r4]
    movs r0, #0xc0
    tst r0, r2
    beq _080D1FB8
    ldrb r3, [r5, #5]
    movs r0, #0x40
    tst r0, r2
    beq _080D1F86
    ldr r1, [r5, #0x2c]
    adds r1, r1, r3
    ldrb r0, [r1]
    b _080D1F88
_080D1F86:
    adds r0, r3, #0
_080D1F88:
    lsls r1, r0, #1
    adds r1, r1, r0
    lsls r1, r1, #2
    ldr r0, [r5, #0x28]
    adds r1, r1, r0
    mov sb, r1
    mov r6, sb
    ldrb r1, [r6]
    movs r0, #0xc0
    tst r0, r1
    beq _080D1FA0
    b _080D2106
_080D1FA0:
    movs r0, #0x80
    tst r0, r2
    beq _080D1FBC
    ldrb r1, [r6, #3]
    movs r0, #0x80
    tst r0, r1
    beq _080D1FB4
    subs r1, #0xc0
    lsls r1, r1, #1
    str r1, [sp, #0x14]
_080D1FB4:
    ldrb r3, [r6, #1]
    b _080D1FBC
_080D1FB8:
    mov sb, r4
    ldrb r3, [r5, #5]
_080D1FBC:
    str r3, [sp, #8]
    ldr r6, [sp]
    ldrb r1, [r6, #9]
    ldrb r0, [r5, #0x1d]
    adds r0, r0, r1
    cmp r0, #0xff
    bls _080D1FCC
    movs r0, #0xff
_080D1FCC:
    str r0, [sp, #0x10]
    mov r6, sb
    ldrb r0, [r6]
    movs r6, #7
    ands r6, r0
    str r6, [sp, #0xc]
    beq _080D200C
    ldr r0, [sp, #4]
    ldr r4, [r0, #0x1c]
    cmp r4, #0
    bne _080D1FE4
    b _080D2106
_080D1FE4:
    subs r6, #1
    lsls r0, r6, #6
    adds r4, r4, r0
    ldrb r1, [r4]
    movs r0, #0xc7
    tst r0, r1
    beq _080D2060
    movs r0, #0x40
    tst r0, r1
    bne _080D2060
    ldrb r1, [r4, #0x13]
    ldr r0, [sp, #0x10]
    cmp r1, r0
    blo _080D2060
    beq _080D2004
    b _080D2106
_080D2004:
    ldr r0, [r4, #0x2c]
    cmp r0, r5
    bhs _080D2060
    b _080D2106
_080D200C:
    ldr r6, [sp, #0x10]
    adds r7, r5, #0
    movs r2, #0
    mov r8, r2
    ldr r4, [sp, #4]
    ldrb r3, [r4, #6]
    adds r4, #0x50
_080D201A:
    ldrb r1, [r4]
    movs r0, #0xc7
    tst r0, r1
    beq _080D2060
    movs r0, #0x40
    tst r0, r1
    beq _080D2034
    cmp r2, #0
    bne _080D2038
    adds r2, #1
    ldrb r6, [r4, #0x13]
    ldr r7, [r4, #0x2c]
    b _080D2052
_080D2034:
    cmp r2, #0
    bne _080D2054
_080D2038:
    ldrb r0, [r4, #0x13]
    cmp r0, r6
    bhs _080D2044
    adds r6, r0, #0
    ldr r7, [r4, #0x2c]
    b _080D2052
_080D2044:
    bhi _080D2054
    ldr r0, [r4, #0x2c]
    cmp r0, r7
    bls _080D2050
    adds r7, r0, #0
    b _080D2052
_080D2050:
    blo _080D2054
_080D2052:
    mov r8, r4
_080D2054:
    adds r4, #0x40
    subs r3, #1
    bgt _080D201A
    mov r4, r8
    cmp r4, #0
    beq _080D2106
_080D2060:
    adds r0, r4, #0
    bl ClearChain
    movs r1, #0
    str r1, [r4, #0x30]
    ldr r3, [r5, #0x20]
    str r3, [r4, #0x34]
    cmp r3, #0
    beq _080D2074
    str r4, [r3, #0x30]
_080D2074:
    str r4, [r5, #0x20]
    str r5, [r4, #0x2c]
    ldrb r0, [r5, #0x1b]
    strb r0, [r5, #0x1c]
    cmp r0, r1
    beq _080D2086
    adds r1, r5, #0
    bl clear_modM
_080D2086:
    ldr r0, [sp]
    adds r1, r5, #0
    bl TrkVolPitSet
    ldr r0, [r5, #4]
    str r0, [r4, #0x10]
    ldr r0, [sp, #0x10]
    strb r0, [r4, #0x13]
    ldr r0, [sp, #8]
    strb r0, [r4, #8]
    ldr r0, [sp, #0x14]
    strb r0, [r4, #0x14]
    mov r6, sb
    ldrb r0, [r6]
    strb r0, [r4, #1]
    ldr r7, [r6, #4]
    str r7, [r4, #0x24]
    ldr r0, [r6, #8]
    str r0, [r4, #4]
    ldrh r0, [r5, #0x1e]
    strh r0, [r4, #0xc]
    bl ChnVolSetAsm
    ldrb r1, [r4, #8]
    movs r0, #8
    ldrsb r0, [r5, r0]
    adds r3, r1, r0
    bpl _080D20C0
    movs r3, #0
_080D20C0:
    ldr r6, [sp, #0xc]
    cmp r6, #0
    beq _080D20EE
    mov r6, sb
    ldrb r0, [r6, #2]
    strb r0, [r4, #0x1e]
    ldrb r1, [r6, #3]
    movs r0, #0x80
    tst r0, r1
    bne _080D20DA
    movs r0, #0x70
    tst r0, r1
    bne _080D20DC
_080D20DA:
    movs r1, #8
_080D20DC:
    strb r1, [r4, #0x1f]
    ldrb r2, [r5, #9]
    adds r1, r3, #0
    ldr r0, [sp, #0xc]
    ldr r3, [sp, #4]
    ldr r3, [r3, #0x30]
    bl call_r3
    b _080D20F8
_080D20EE:
    ldrb r2, [r5, #9]
    adds r1, r3, #0
    adds r0, r7, #0
    bl MidiKeyToFreq
_080D20F8:
    str r0, [r4, #0x20]
    movs r0, #0x80
    strb r0, [r4]
    ldrb r1, [r5]
    movs r0, #0xf0
    ands r0, r1
    strb r0, [r5]
_080D2106:
    add sp, #0x18
    pop {r0, r1, r2, r3, r4, r5, r6, r7}
    mov r8, r0
    mov sb, r1
    mov sl, r2
    mov fp, r3
    pop {r0}
    bx r0

    .align 2, 0
_080D2118: .4byte 0x03007FF0
_080D211C: .4byte 0x08139CFC

    endfn @ ply_note

    fn ply_endtie thumb

    push {r4, r5}
    ldr r2, [r1, #0x40]
    ldrb r3, [r2]
    cmp r3, #0x80
    bhs _080D2132
    strb r3, [r1, #5]
    adds r2, #1
    str r2, [r1, #0x40]
    b _080D2134
_080D2132:
    ldrb r3, [r1, #5]
_080D2134:
    ldr r1, [r1, #0x20]
    cmp r1, #0
    beq _080D215C
    movs r4, #0x83
    movs r5, #0x40
_080D213E:
    ldrb r2, [r1]
    tst r2, r4
    beq _080D2156
    tst r2, r5
    bne _080D2156
    ldrb r0, [r1, #0x11]
    cmp r0, r3
    bne _080D2156
    movs r0, #0x40
    orrs r2, r0
    strb r2, [r1]
    b _080D215C
_080D2156:
    ldr r1, [r1, #0x34]
    cmp r1, #0
    bne _080D213E
_080D215C:
    pop {r4, r5}
    bx lr

    endfn @ ply_endtie

    fn clear_modM thumb

    movs r2, #0
    strb r2, [r1, #0x16]
    strb r2, [r1, #0x1a]
    ldrb r2, [r1, #0x18]
    cmp r2, #0
    bne _080D2170
    movs r2, #0xc
    b _080D2172
_080D2170:
    movs r2, #3
_080D2172:
    ldrb r3, [r1]
    orrs r3, r2
    strb r3, [r1]
    bx lr

    endfn @ clear_modM

    fn ld_r3_tp_adr_i_unchecked thumb

    ldr r2, [r1, #0x40]
    adds r3, r2, #1
    str r3, [r1, #0x40]
    ldrb r3, [r2]
    bx lr

    endfn @ ld_r3_tp_adr_i_unchecked

    fn sub_80D2188 thumb

    mov ip, lr
    bl ld_r3_tp_adr_i_unchecked
    strb r3, [r1, #0x19]
    cmp r3, #0
    bne _080D2198
    bl clear_modM
_080D2198:
    bx ip

    endfn @ sub_80D2188

    fn ply_mod thumb

    mov    ip, lr
    bl     ld_r3_tp_adr_i_unchecked
    strb   r3, [r1, O_MusicPlayerTrack_mod]
    cmp    r3, 0
    bne    .Lply_mod_done

    bl     clear_modM

.Lply_mod_done:
    bx     ip

    endfn @ ply_mod

    .align 2, 0
