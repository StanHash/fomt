    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    @ this is the continuation of rucksack_item
    @ and other model stuff

    thumb_func_start func_0800F170
func_0800F170: @ 0x0800F170
    ldrb r2, [r0]
    movs r1, #8
    rsbs r1, r1, #0
    ands r1, r2
    movs r2, #5
    orrs r1, r2
    movs r2, #9
    rsbs r2, r2, #0
    ands r1, r2
    strb r1, [r0]
    ldr r1, _0800F18C @ =0x0000FFFF
    strh r1, [r0, #2]
    bx lr
    .align 2, 0
_0800F18C: .4byte 0x0000FFFF

    thumb_func_start func_0800F190
func_0800F190: @ 0x0800F190
    push {lr}
    adds r2, r0, #0
    ldrb r0, [r2]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    cmp r0, #5
    bhi _0800F1C4
    lsls r0, r0, #2
    ldr r1, _0800F1A8 @ =_0800F1AC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
_0800F1A8: .4byte _0800F1AC
_0800F1AC: @ jump table
    .4byte _0800F1C8 @ case 0
    .4byte _0800F1D2 @ case 1
    .4byte _0800F1EA @ case 2
    .4byte _0800F1DC @ case 3
    .4byte _0800F1EA @ case 4
    .4byte _0800F1EE @ case 5
_0800F1C4:
    movs r0, #1
    b _0800F1FC
_0800F1C8:
    movs r1, #0
    ldrb r0, [r2, #2]
    cmp r0, #0xaa
    bls _0800F1E6
    b _0800F1E4
_0800F1D2:
    movs r1, #0
    ldrb r0, [r2, #2]
    cmp r0, #0x5e
    bls _0800F1E6
    b _0800F1E4
_0800F1DC:
    movs r1, #0
    ldrb r0, [r2, #2]
    cmp r0, #7
    bls _0800F1E6
_0800F1E4:
    movs r1, #1
_0800F1E6:
    adds r0, r1, #0
    b _0800F1FC
_0800F1EA:
    movs r0, #0
    b _0800F1FC
_0800F1EE:
    movs r3, #0
    ldrh r1, [r2, #2]
    ldr r0, _0800F200 @ =0x0000FFFF
    cmp r1, r0
    bne _0800F1FA
    movs r3, #1
_0800F1FA:
    adds r0, r3, #0
_0800F1FC:
    pop {r1}
    bx r1
    .align 2, 0
_0800F200: .4byte 0x0000FFFF

    thumb_func_start func_0800F204
func_0800F204: @ 0x0800F204
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    bx lr

    thumb_func_start func_0800F20C
func_0800F20C: @ 0x0800F20C
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r4, r1, #0
    ldrb r0, [r4]
    lsls r0, r0, #0x1d
    cmp r0, #0
    bne _0800F244
    ldrb r0, [r4, #2]
    cmp r0, #0xaa
    bhi _0800F244
    adds r1, r0, #0
    mov r0, sp
    bl __4FoodUi
    movs r1, #3
    ldrsb r1, [r4, r1]
    movs r2, #4
    ldrsb r2, [r4, r2]
    mov r0, sp
    bl AddBonuses__4FoodScSc
    adds r0, r5, #0
    mov r1, sp
    movs r2, #3
    bl memcpy
    b _0800F24C
_0800F244:
    adds r0, r5, #0
    movs r1, #0xab
    bl __4FoodUi
_0800F24C:
    adds r0, r5, #0
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800F258
func_0800F258: @ 0x0800F258
    push {r4, lr}
    sub sp, #4
    adds r1, r0, #0
    ldrb r0, [r1]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    cmp r0, #1
    bne _0800F27C
    ldrb r0, [r1, #2]
    cmp r0, #0x5e
    bhi _0800F27C
    adds r1, r0, #0
    mov r0, sp
    bl __7ArticleUi
    mov r0, sp
    ldrb r0, [r0]
    b _0800F28A
_0800F27C:
    mov r4, sp
    adds r4, #1
    adds r0, r4, #0
    movs r1, #0x5f
    bl __7ArticleUi
    ldrb r0, [r4]
_0800F28A:
    add sp, #4
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800F294
func_0800F294: @ 0x0800F294
    push {r4, r5, r6, r7, lr}
    sub sp, #0x10
    adds r6, r0, #0
    adds r5, r1, #0
    ldrb r0, [r5]
    lsls r0, r0, #0x1d
    cmp r0, #0
    bne _0800F2FE
    ldrb r0, [r5, #2]
    cmp r0, #0xaa
    bhi _0800F2FE
    adds r1, r0, #0
    mov r0, sp
    bl __4FoodUi
    movs r1, #3
    ldrsb r1, [r5, r1]
    movs r2, #4
    ldrsb r2, [r5, r2]
    mov r0, sp
    bl AddBonuses__4FoodScSc
    add r7, sp, #4
    add r4, sp, #8
    adds r0, r4, #0
    mov r1, sp
    movs r2, #3
    bl memcpy
    ldrb r1, [r4]
    mov r0, sp
    adds r0, #9
    ldrb r0, [r0]
    lsls r0, r0, #8
    orrs r0, r1
    mov r1, sp
    adds r1, #0xa
    ldrb r1, [r1]
    lsls r1, r1, #0x10
    orrs r1, r0
    adds r0, r7, #0
    bl __12RucksackItemG4Food
    ldrb r0, [r5]
    lsls r0, r0, #0x1c
    cmp r0, #0
    bge _0800F2F8
    adds r0, r7, #0
    bl TryWrap__12RucksackItem
_0800F2F8:
    ldr r0, [sp, #4]
    str r0, [r6]
    b _0800F33A
_0800F2FE:
    ldrb r0, [r5]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    cmp r0, #1
    bne _0800F334
    ldrb r0, [r5, #2]
    cmp r0, #0x5e
    bhi _0800F334
    add r4, sp, #0xc
    adds r1, r0, #0
    adds r0, r4, #0
    bl __7ArticleUi
    ldrb r1, [r4]
    mov r0, sp
    bl __12RucksackItemG7Article
    ldrb r0, [r5]
    lsls r0, r0, #0x1c
    cmp r0, #0
    bge _0800F32E
    mov r0, sp
    bl TryWrap__12RucksackItem
_0800F32E:
    ldr r0, [sp]
    str r0, [r6]
    b _0800F33A
_0800F334:
    adds r0, r6, #0
    bl __12RucksackItem
_0800F33A:
    adds r0, r6, #0
    add sp, #0x10
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_0800F344
func_0800F344: @ 0x0800F344
    push {lr}
    adds r1, r0, #0
    ldrb r0, [r1]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    cmp r0, #3
    bne _0800F358
    ldrb r0, [r1, #2]
    cmp r0, #7
    bls _0800F35C
_0800F358:
    movs r0, #1
    rsbs r0, r0, #0
_0800F35C:
    pop {r1}
    bx r1

    thumb_func_start func_0800F360
func_0800F360: @ 0x0800F360
    push {lr}
    adds r2, r0, #0
    ldrb r0, [r2]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    cmp r0, #5
    bne _0800F380
    ldrh r1, [r2, #2]
    ldr r0, _0800F37C @ =0x0000FFFE
    cmp r1, r0
    bhi _0800F380
    adds r0, r1, #0
    b _0800F384
    .align 2, 0
_0800F37C: .4byte 0x0000FFFE
_0800F380:
    movs r0, #1
    rsbs r0, r0, #0
_0800F384:
    pop {r1}
    bx r1

    thumb_func_start func_0800F388
func_0800F388: @ 0x0800F388
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_0800F390
func_0800F390: @ 0x0800F390
    ldrb r2, [r0]
    movs r1, #8
    rsbs r1, r1, #0
    ands r1, r2
    movs r2, #5
    orrs r1, r2
    movs r2, #9
    rsbs r2, r2, #0
    ands r1, r2
    strb r1, [r0]
    ldr r1, _0800F3AC @ =0x0000FFFF
    strh r1, [r0, #2]
    bx lr
    .align 2, 0
_0800F3AC: .4byte 0x0000FFFF

    thumb_func_start func_0800F3B0
func_0800F3B0: @ 0x0800F3B0
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    str r1, [sp]
    ldrb r1, [r4]
    movs r0, #8
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #9
    rsbs r1, r1, #0
    ands r0, r1
    strb r0, [r4]
    mov r0, sp
    bl GetId__C4Food
    strb r0, [r4, #2]
    mov r0, sp
    bl GetStaminaBonus__C4Food
    strb r0, [r4, #3]
    mov r0, sp
    bl GetFatigueBonus__C4Food
    strb r0, [r4, #4]
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_0800F3E8
func_0800F3E8: @ 0x0800F3E8
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    mov r0, sp
    strb r1, [r0]
    ldrb r1, [r4]
    movs r0, #8
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #1
    orrs r0, r1
    movs r1, #9
    rsbs r1, r1, #0
    ands r0, r1
    strb r0, [r4]
    mov r0, sp
    bl GetId__C7Article
    strb r0, [r4, #2]
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0800F418
func_0800F418: @ 0x0800F418
    push {r4, r5, lr}
    sub sp, #0xc
    adds r5, r0, #0
    str r1, [sp]
    mov r0, sp
    bl GetKind__C12RucksackItem
    adds r4, r0, #0
    cmp r4, #0
    beq _0800F43C
    cmp r4, #1
    beq _0800F482
    ldrb r1, [r5]
    movs r0, #9
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r5]
    b _0800F4B8
_0800F43C:
    ldrb r1, [r5]
    movs r0, #8
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r5]
    mov r0, sp
    bl IsWrapped__C12RucksackItem
    movs r1, #1
    ands r1, r0
    lsls r1, r1, #3
    ldrb r2, [r5]
    movs r0, #9
    rsbs r0, r0, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r5]
    add r4, sp, #4
    adds r0, r4, #0
    mov r1, sp
    bl GetFood__C12RucksackItem
    adds r0, r4, #0
    bl GetId__C4Food
    strb r0, [r5, #2]
    adds r0, r4, #0
    bl GetStaminaBonus__C4Food
    strb r0, [r5, #3]
    adds r0, r4, #0
    bl GetFatigueBonus__C4Food
    strb r0, [r5, #4]
    b _0800F4B8
_0800F482:
    ldrb r1, [r5]
    movs r0, #8
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #1
    orrs r0, r1
    strb r0, [r5]
    mov r0, sp
    bl IsWrapped__C12RucksackItem
    ands r4, r0
    lsls r2, r4, #3
    ldrb r1, [r5]
    movs r0, #9
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r2
    strb r0, [r5]
    mov r0, sp
    bl GetArticle__C12RucksackItem
    adds r1, r0, #0
    add r0, sp, #8
    strb r1, [r0]
    bl GetId__C7Article
    strb r0, [r5, #2]
_0800F4B8:
    add sp, #0xc
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_0800F4C0
func_0800F4C0: @ 0x0800F4C0
    ldrb r2, [r0]
    movs r1, #8
    rsbs r1, r1, #0
    ands r1, r2
    movs r2, #2
    orrs r1, r2
    movs r2, #9
    rsbs r2, r2, #0
    ands r1, r2
    strb r1, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_0800F4D8
func_0800F4D8: @ 0x0800F4D8
    ldrb r2, [r0]
    movs r1, #8
    rsbs r1, r1, #0
    ands r1, r2
    movs r2, #4
    orrs r1, r2
    movs r2, #9
    rsbs r2, r2, #0
    ands r1, r2
    strb r1, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_0800F4F0
func_0800F4F0: @ 0x0800F4F0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    ldrb r3, [r0]
    movs r2, #8
    rsbs r2, r2, #0
    ands r2, r3
    movs r3, #3
    orrs r2, r3
    movs r3, #9
    rsbs r3, r3, #0
    ands r2, r3
    strb r2, [r0]
    movs r2, #7
    ands r1, r2
    strb r1, [r0, #2]
    bx lr

    thumb_func_start func_0800F510
func_0800F510: @ 0x0800F510
    ldrb r3, [r0]
    movs r2, #8
    rsbs r2, r2, #0
    ands r2, r3
    movs r3, #5
    orrs r2, r3
    movs r3, #9
    rsbs r3, r3, #0
    ands r2, r3
    strb r2, [r0]
    strh r1, [r0, #2]
    bx lr

    thumb_func_start func_0800F528
func_0800F528: @ 0x0800F528
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    movs r3, #0
    ldrb r0, [r4]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    cmp r0, #0
    beq _0800F540
    cmp r0, #1
    beq _0800F544
    b _0800F556
_0800F540:
    movs r3, #1
    b _0800F556
_0800F544:
    ldrb r1, [r4, #2]
    mov r0, sp
    bl __7ArticleUi
    mov r0, sp
    bl CanBeDiscarded__C7Article
    lsls r0, r0, #0x18
    lsrs r3, r0, #0x18
_0800F556:
    movs r0, #1
    ands r0, r3
    lsls r0, r0, #3
    ldrb r2, [r4]
    movs r1, #9
    rsbs r1, r1, #0
    ands r1, r2
    orrs r1, r0
    strb r1, [r4]
    adds r0, r3, #0
    add sp, #4
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800F574
func_0800F574: @ 0x0800F574
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    mov r0, sp
    bl __12RucksackItem
    mov r2, sp
    movs r0, #0
    adds r1, r6, #0
    stm r1!, {r0}
    movs r4, #2
    add r3, sp, #4
_0800F58C:
    cmp r1, #0
    beq _0800F594
    ldr r0, [r2]
    str r0, [r1]
_0800F594:
    subs r4, #1
    adds r1, #4
    cmp r4, #0
    bne _0800F58C
    movs r0, #2
    str r0, [r6]
    adds r0, r3, #0
    bl __9ToolStack
    adds r7, r6, #0
    adds r7, #0x24
    str r4, [r6, #0x24]
    movs r5, #2
    adds r4, r6, #0
    adds r4, #0x28
_0800F5B2:
    cmp r4, #0
    beq _0800F5C0
    adds r0, r4, #0
    add r1, sp, #4
    movs r2, #2
    bl memcpy
_0800F5C0:
    subs r5, #1
    adds r4, #2
    cmp r5, #0
    bne _0800F5B2
    movs r0, #2
    str r0, [r7]
    adds r0, r6, #0
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800F5D8
func_0800F5D8: @ 0x0800F5D8
    push {lr}
    ldr r0, [r0]
    adds r1, r0, #0
    cmp r0, #1
    bls _0800F5E6
    cmp r0, #3
    bhi _0800F5EA
_0800F5E6:
    movs r0, #0
    b _0800F5F4
_0800F5EA:
    cmp r1, #7
    bls _0800F5F2
    movs r0, #2
    b _0800F5F4
_0800F5F2:
    movs r0, #1
_0800F5F4:
    pop {r1}
    bx r1

    thumb_func_start func_0800F5F8
func_0800F5F8: @ 0x0800F5F8
    ldr r0, [r0]
    bx lr
_0800F5FC:
    .byte 0x89, 0x00, 0x04, 0x31
    .byte 0x40, 0x18, 0x70, 0x47

    thumb_func_start func_0800F604
func_0800F604: @ 0x0800F604
    push {r4, r5, lr}
    ldr r1, [r0]
    lsls r1, r1, #2
    adds r1, #4
    adds r5, r0, r1
    adds r4, r0, #4
    cmp r4, r5
    beq _0800F62A
_0800F614:
    adds r0, r4, #0
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0800F624
    movs r0, #0
    b _0800F62C
_0800F624:
    adds r4, #4
    cmp r4, r5
    bne _0800F614
_0800F62A:
    movs r0, #1
_0800F62C:
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800F634
func_0800F634: @ 0x0800F634
    push {r4, r5, r6, lr}
    movs r6, #0
    ldr r1, [r0]
    lsls r1, r1, #2
    adds r1, #4
    adds r5, r0, r1
    adds r4, r0, #4
    cmp r4, r5
    beq _0800F65E
_0800F646:
    adds r0, r4, #0
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0800F656
    adds r0, r6, #0
    b _0800F662
_0800F656:
    adds r4, #4
    adds r6, #1
    cmp r4, r5
    bne _0800F646
_0800F65E:
    movs r0, #1
    rsbs r0, r0, #0
_0800F662:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
_0800F668:
    .byte 0x10, 0xB5, 0x84, 0xB0, 0x02, 0x1C, 0x02, 0xCA
    .byte 0x4C, 0x1E, 0x01, 0x92, 0x89, 0x00, 0x04, 0x31, 0x40, 0x18, 0x03, 0x90, 0x0B, 0xE0, 0x10, 0x1F
    .byte 0xFF, 0xF7, 0xF4, 0xFC, 0x00, 0x06, 0x00, 0x28, 0x01, 0xD0, 0x20, 0x1C, 0x0D, 0xE0, 0x03, 0x98
    .byte 0x04, 0x38, 0x03, 0x90, 0x01, 0x3C, 0x03, 0x9A, 0x01, 0x98, 0x00, 0x21, 0x82, 0x42, 0x00, 0xD1
    .byte 0x01, 0x21, 0x00, 0x29, 0xEB, 0xD0, 0x01, 0x20, 0x40, 0x42, 0x04, 0xB0, 0x10, 0xBC, 0x02, 0xBC
    .byte 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_0800F6B4
func_0800F6B4: @ 0x0800F6B4
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r7, r1, #0
    movs r6, #0
    ldr r1, [r0]
    lsls r1, r1, #2
    adds r1, #4
    adds r5, r0, r1
    adds r4, r0, #4
    cmp r4, r5
    beq _0800F706
_0800F6CA:
    adds r0, r4, #0
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0800F6FE
    adds r0, r4, #0
    bl GetKind__C12RucksackItem
    cmp r0, #0
    bne _0800F6FE
    mov r0, sp
    adds r1, r4, #0
    bl GetFood__C12RucksackItem
    mov r0, sp
    bl GetId__C4Food
    movs r1, #0
    cmp r0, r7
    bne _0800F6F6
    movs r1, #1
_0800F6F6:
    cmp r1, #0
    beq _0800F6FE
    adds r0, r6, #0
    b _0800F70A
_0800F6FE:
    adds r4, #4
    adds r6, #1
    cmp r4, r5
    bne _0800F6CA
_0800F706:
    movs r0, #1
    rsbs r0, r0, #0
_0800F70A:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800F714
func_0800F714: @ 0x0800F714
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    mov r8, r1
    movs r6, #0
    ldr r1, [r0]
    lsls r1, r1, #2
    adds r1, #4
    adds r5, r0, r1
    adds r4, r0, #4
    cmp r4, r5
    beq _0800F76C
    mov r7, sp
_0800F730:
    adds r0, r4, #0
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0800F764
    adds r0, r4, #0
    bl GetKind__C12RucksackItem
    cmp r0, #1
    bne _0800F764
    adds r0, r4, #0
    bl GetArticle__C12RucksackItem
    strb r0, [r7]
    mov r0, sp
    bl GetId__C7Article
    movs r1, #0
    cmp r0, r8
    bne _0800F75C
    movs r1, #1
_0800F75C:
    cmp r1, #0
    beq _0800F764
    adds r0, r6, #0
    b _0800F770
_0800F764:
    adds r4, #4
    adds r6, #1
    cmp r4, r5
    bne _0800F730
_0800F76C:
    movs r0, #1
    rsbs r0, r0, #0
_0800F770:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_0800F77C
func_0800F77C: @ 0x0800F77C
    push {r4, r5, r6, lr}
    movs r6, #0
    ldr r1, [r0]
    lsls r1, r1, #2
    adds r1, #4
    adds r5, r0, r1
    adds r4, r0, #4
    cmp r4, r5
    beq _0800F7A2
_0800F78E:
    adds r0, r4, #0
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0800F79C
    adds r6, #1
_0800F79C:
    adds r4, #4
    cmp r4, r5
    bne _0800F78E
_0800F7A2:
    adds r0, r6, #0
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800F7AC
func_0800F7AC: @ 0x0800F7AC
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r7, r1, #0
    movs r6, #0
    ldr r1, [r0]
    lsls r1, r1, #2
    adds r1, #4
    adds r5, r0, r1
    adds r4, r0, #4
    cmp r4, r5
    beq _0800F7FA
_0800F7C2:
    adds r0, r4, #0
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0800F7F4
    adds r0, r4, #0
    bl GetKind__C12RucksackItem
    cmp r0, #0
    bne _0800F7F4
    mov r0, sp
    adds r1, r4, #0
    bl GetFood__C12RucksackItem
    mov r0, sp
    bl GetId__C4Food
    movs r1, #0
    cmp r0, r7
    bne _0800F7EE
    movs r1, #1
_0800F7EE:
    cmp r1, #0
    beq _0800F7F4
    adds r6, #1
_0800F7F4:
    adds r4, #4
    cmp r4, r5
    bne _0800F7C2
_0800F7FA:
    adds r0, r6, #0
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_0800F804
func_0800F804: @ 0x0800F804
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    mov r8, r1
    movs r6, #0
    ldr r1, [r0]
    lsls r1, r1, #2
    adds r1, #4
    adds r5, r0, r1
    adds r4, r0, #4
    cmp r4, r5
    beq _0800F858
    mov r7, sp
_0800F820:
    adds r0, r4, #0
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0800F852
    adds r0, r4, #0
    bl GetKind__C12RucksackItem
    cmp r0, #1
    bne _0800F852
    adds r0, r4, #0
    bl GetArticle__C12RucksackItem
    strb r0, [r7]
    mov r0, sp
    bl GetId__C7Article
    movs r1, #0
    cmp r0, r8
    bne _0800F84C
    movs r1, #1
_0800F84C:
    cmp r1, #0
    beq _0800F852
    adds r6, #1
_0800F852:
    adds r4, #4
    cmp r4, r5
    bne _0800F820
_0800F858:
    adds r0, r6, #0
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800F868
func_0800F868: @ 0x0800F868
    adds r2, r0, #0
    lsls r0, r1, #1
    adds r0, r0, r2
    adds r0, #0x28
    bx lr
    .align 2, 0

    thumb_func_start func_0800F874
func_0800F874: @ 0x0800F874
    push {r4, r5, lr}
    ldr r1, [r0, #0x24]
    lsls r1, r1, #1
    adds r1, r1, r0
    adds r5, r1, #0
    adds r5, #0x28
    adds r4, r0, #0
    adds r4, #0x28
    cmp r4, r5
    beq _0800F89E
_0800F888:
    adds r0, r4, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0800F898
    movs r0, #0
    b _0800F8A0
_0800F898:
    adds r4, #2
    cmp r4, r5
    bne _0800F888
_0800F89E:
    movs r0, #1
_0800F8A0:
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800F8A8
func_0800F8A8: @ 0x0800F8A8
    push {r4, r5, r6, lr}
    movs r6, #0
    ldr r1, [r0, #0x24]
    lsls r1, r1, #1
    adds r1, r1, r0
    adds r5, r1, #0
    adds r5, #0x28
    adds r4, r0, #0
    adds r4, #0x28
    cmp r4, r5
    beq _0800F8D6
_0800F8BE:
    adds r0, r4, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0800F8CE
    adds r0, r6, #0
    b _0800F8DA
_0800F8CE:
    adds r4, #2
    adds r6, #1
    cmp r4, r5
    bne _0800F8BE
_0800F8D6:
    movs r0, #1
    rsbs r0, r0, #0
_0800F8DA:
    pop {r4, r5, r6}
    pop {r1}
    bx r1
_0800F8E0:
    .byte 0x10, 0xB5, 0x84, 0xB0, 0x41, 0x6A, 0x4C, 0x1E, 0x02, 0x1C, 0x28, 0x32, 0x01, 0x92, 0x49, 0x00
    .byte 0x09, 0x18, 0x28, 0x31, 0x03, 0x91, 0x0B, 0xE0, 0x90, 0x1E, 0xFE, 0xF7, 0x9B, 0xF9, 0x00, 0x06
    .byte 0x00, 0x28, 0x01, 0xD0, 0x20, 0x1C, 0x0D, 0xE0, 0x03, 0x98, 0x02, 0x38, 0x03, 0x90, 0x01, 0x3C
    .byte 0x03, 0x9A, 0x01, 0x98, 0x00, 0x21, 0x82, 0x42, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0xEB, 0xD0
    .byte 0x01, 0x20, 0x40, 0x42, 0x04, 0xB0, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

    thumb_func_start func_0800F92C
func_0800F92C: @ 0x0800F92C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    mov r8, r1
    movs r6, #0
    ldr r1, [r0, #0x24]
    lsls r1, r1, #1
    adds r1, r1, r0
    adds r5, r1, #0
    adds r5, #0x28
    adds r4, r0, #0
    adds r4, #0x28
    cmp r4, r5
    beq _0800F97E
    mov r7, sp
_0800F94C:
    adds r0, r4, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0800F976
    adds r0, r4, #0
    bl GetTool__C9ToolStack
    strb r0, [r7]
    mov r0, sp
    bl GetId__C4Tool
    movs r1, #0
    cmp r0, r8
    bne _0800F96E
    movs r1, #1
_0800F96E:
    cmp r1, #0
    beq _0800F976
    adds r0, r6, #0
    b _0800F982
_0800F976:
    adds r4, #2
    adds r6, #1
    cmp r4, r5
    bne _0800F94C
_0800F97E:
    movs r0, #1
    rsbs r0, r0, #0
_0800F982:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800F990
func_0800F990: @ 0x0800F990
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    mov r8, r1
    movs r5, #0
    ldr r1, [r0, #0x24]
    lsls r1, r1, #1
    adds r1, r1, r0
    adds r6, r1, #0
    adds r6, #0x28
    adds r4, r0, #0
    adds r4, #0x28
    cmp r4, r6
    beq _0800F9EC
    mov r7, sp
_0800F9B0:
    adds r0, r4, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0800F9C0
    adds r5, #0x63
    b _0800F9E6
_0800F9C0:
    adds r0, r4, #0
    bl GetTool__C9ToolStack
    strb r0, [r7]
    mov r0, sp
    bl GetId__C4Tool
    movs r1, #0
    cmp r0, r8
    bne _0800F9D6
    movs r1, #1
_0800F9D6:
    cmp r1, #0
    beq _0800F9E6
    adds r0, r4, #0
    bl GetAmount__C9ToolStack
    adds r1, r5, #0
    adds r1, #0x63
    subs r5, r1, r0
_0800F9E6:
    adds r4, #2
    cmp r4, r6
    bne _0800F9B0
_0800F9EC:
    adds r0, r5, #0
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800F9FC
func_0800F9FC: @ 0x0800F9FC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    mov r8, r1
    movs r6, #0
    ldr r1, [r0, #0x24]
    lsls r1, r1, #1
    adds r1, r1, r0
    adds r5, r1, #0
    adds r5, #0x28
    adds r4, r0, #0
    adds r4, #0x28
    cmp r4, r5
    beq _0800FA50
    mov r7, sp
_0800FA1C:
    adds r0, r4, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0800FA4A
    adds r0, r4, #0
    bl GetTool__C9ToolStack
    strb r0, [r7]
    mov r0, sp
    bl GetId__C4Tool
    movs r1, #0
    cmp r0, r8
    bne _0800FA3E
    movs r1, #1
_0800FA3E:
    cmp r1, #0
    beq _0800FA4A
    adds r0, r4, #0
    bl GetAmount__C9ToolStack
    adds r6, r6, r0
_0800FA4A:
    adds r4, #2
    cmp r4, r5
    bne _0800FA1C
_0800FA50:
    adds r0, r6, #0
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800FA60
func_0800FA60: @ 0x0800FA60
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r5, r0, #0
    bl func_0800F5D8
    cmp r0, #1
    bls _0800FA78
    b _0800FCCA
_0800FA78:
    adds r0, #1
    movs r1, #2
    mov sl, r1
    mov r2, sl
    lsls r2, r0
    mov sl, r2
    mov r0, sp
    bl __12RucksackItem
    mov r8, sp
    ldr r2, [r5]
    cmp sl, r2
    bhs _0800FAC0
    adds r1, r5, #4
    mov r3, sl
    lsls r0, r3, #2
    adds r1, r1, r0
    lsls r0, r2, #2
    adds r0, #4
    adds r0, r5, r0
    adds r3, r0, #0
    adds r2, r1, #0
    movs r4, #0x24
    adds r4, r4, r5
    mov sb, r4
    ldr r4, [r5]
    cmp r2, r3
    beq _0800FAB6
_0800FAB0:
    adds r2, #4
    cmp r2, r3
    bne _0800FAB0
_0800FAB6:
    subs r0, r0, r1
    asrs r0, r0, #2
    subs r0, r4, r0
    str r0, [r5]
    b _0800FB90
_0800FAC0:
    mov r6, sl
    subs r4, r6, r2
    lsls r0, r2, #2
    adds r0, #4
    adds r7, r5, r0
    movs r0, #0x24
    adds r0, r0, r5
    mov sb, r0
    cmp r4, #0
    beq _0800FB90
    movs r0, #8
    subs r0, r0, r2
    cmp r0, r4
    blo _0800FB90
    adds r0, r5, #4
    subs r0, r7, r0
    asrs r0, r0, #2
    subs r2, r2, r0
    mov ip, r2
    adds r3, r7, #0
    cmp ip, r4
    bls _0800FB3C
    lsls r0, r4, #2
    subs r6, r3, r0
    adds r2, r6, #0
    adds r1, r3, #0
    cmp r6, r3
    beq _0800FB08
_0800FAF8:
    cmp r1, #0
    beq _0800FB00
    ldr r0, [r2]
    str r0, [r1]
_0800FB00:
    adds r2, #4
    adds r1, #4
    cmp r2, r3
    bne _0800FAF8
_0800FB08:
    ldr r0, [r5]
    adds r0, r0, r4
    str r0, [r5]
    adds r2, r6, #0
    subs r0, r2, r7
    asrs r1, r0, #2
    cmp r1, #0
    ble _0800FB26
_0800FB18:
    subs r3, #4
    subs r2, #4
    ldr r0, [r2]
    str r0, [r3]
    subs r1, #1
    cmp r1, #0
    bgt _0800FB18
_0800FB26:
    adds r2, r7, #0
    adds r0, r4, #0
    cmp r0, #0
    beq _0800FB90
    mov r3, r8
    ldr r1, [r3]
_0800FB32:
    stm r2!, {r1}
    subs r0, #1
    cmp r0, #0
    bne _0800FB32
    b _0800FB90
_0800FB3C:
    mov r6, ip
    subs r4, r4, r6
    adds r2, r4, #0
    adds r1, r3, #0
    cmp r4, #0
    beq _0800FB5A
_0800FB48:
    cmp r1, #0
    beq _0800FB52
    mov r6, r8
    ldr r0, [r6]
    str r0, [r1]
_0800FB52:
    subs r2, #1
    adds r1, #4
    cmp r2, #0
    bne _0800FB48
_0800FB5A:
    ldr r0, [r5]
    adds r0, r0, r4
    str r0, [r5]
    lsls r0, r4, #2
    adds r2, r7, #0
    adds r1, r0, r3
    cmp r7, r3
    beq _0800FB7A
_0800FB6A:
    cmp r1, #0
    beq _0800FB72
    ldr r0, [r2]
    str r0, [r1]
_0800FB72:
    adds r2, #4
    adds r1, #4
    cmp r2, r3
    bne _0800FB6A
_0800FB7A:
    ldr r0, [r5]
    add r0, ip
    str r0, [r5]
    adds r0, r7, #0
    cmp r0, r3
    beq _0800FB90
    mov r2, r8
    ldr r1, [r2]
_0800FB8A:
    stm r0!, {r1}
    cmp r0, r3
    bne _0800FB8A
_0800FB90:
    mov r0, sp
    bl __9ToolStack
    mov r3, sp
    str r3, [sp, #4]
    ldr r2, [r5, #0x24]
    cmp sl, r2
    bhs _0800FBCE
    adds r1, r5, #0
    adds r1, #0x28
    mov r4, sl
    lsls r0, r4, #1
    adds r1, r1, r0
    lsls r0, r2, #1
    adds r0, #4
    add r0, sb
    adds r3, r0, #0
    adds r2, r1, #0
    mov r5, sb
    ldr r4, [r5]
    cmp r2, r3
    beq _0800FBC2
_0800FBBC:
    adds r2, #2
    cmp r2, r3
    bne _0800FBBC
_0800FBC2:
    subs r0, r0, r1
    asrs r0, r0, #1
    subs r0, r4, r0
    mov r6, sb
    str r0, [r6]
    b _0800FCCA
_0800FBCE:
    mov r0, sl
    subs r7, r0, r2
    lsls r0, r2, #1
    adds r0, #4
    add r0, sb
    mov sl, r0
    cmp r7, #0
    beq _0800FCCA
    movs r0, #8
    subs r0, r0, r2
    cmp r0, r7
    blo _0800FCCA
    adds r0, r5, #0
    adds r0, #0x28
    mov r1, sl
    subs r0, r1, r0
    asrs r0, r0, #1
    subs r2, r2, r0
    mov r8, r2
    mov r6, sl
    cmp r8, r7
    bls _0800FC62
    lsls r0, r7, #1
    subs r0, r6, r0
    mov r8, r0
    mov r5, r8
    adds r4, r6, #0
    cmp r8, r6
    beq _0800FC1E
_0800FC08:
    cmp r4, #0
    beq _0800FC16
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    bl memcpy
_0800FC16:
    adds r5, #2
    adds r4, #2
    cmp r5, r6
    bne _0800FC08
_0800FC1E:
    mov r2, sb
    ldr r0, [r2]
    adds r0, r0, r7
    str r0, [r2]
    mov r5, r8
    mov r3, sl
    subs r0, r5, r3
    asrs r4, r0, #1
    cmp r4, #0
    ble _0800FC46
_0800FC32:
    subs r6, #2
    subs r5, #2
    adds r0, r6, #0
    adds r1, r5, #0
    movs r2, #2
    bl memcpy
    subs r4, #1
    cmp r4, #0
    bgt _0800FC32
_0800FC46:
    mov r5, sl
    adds r4, r7, #0
    cmp r4, #0
    beq _0800FCCA
_0800FC4E:
    adds r0, r5, #0
    ldr r1, [sp, #4]
    movs r2, #2
    bl memcpy
    subs r4, #1
    adds r5, #2
    cmp r4, #0
    bne _0800FC4E
    b _0800FCCA
_0800FC62:
    mov r4, r8
    subs r7, r7, r4
    adds r5, r7, #0
    adds r4, r6, #0
    cmp r7, #0
    beq _0800FC84
_0800FC6E:
    cmp r4, #0
    beq _0800FC7C
    adds r0, r4, #0
    ldr r1, [sp, #4]
    movs r2, #2
    bl memcpy
_0800FC7C:
    subs r5, #1
    adds r4, #2
    cmp r5, #0
    bne _0800FC6E
_0800FC84:
    mov r5, sb
    ldr r0, [r5]
    adds r0, r0, r7
    str r0, [r5]
    lsls r0, r7, #1
    mov r5, sl
    adds r4, r0, r6
    cmp sl, r6
    beq _0800FCAC
_0800FC96:
    cmp r4, #0
    beq _0800FCA4
    adds r0, r4, #0
    adds r1, r5, #0
    movs r2, #2
    bl memcpy
_0800FCA4:
    adds r5, #2
    adds r4, #2
    cmp r5, r6
    bne _0800FC96
_0800FCAC:
    mov r1, sb
    ldr r0, [r1]
    add r0, r8
    str r0, [r1]
    mov r4, sl
    cmp r4, r6
    beq _0800FCCA
_0800FCBA:
    adds r0, r4, #0
    ldr r1, [sp, #4]
    movs r2, #2
    bl memcpy
    adds r4, #2
    cmp r4, r6
    bne _0800FCBA
_0800FCCA:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0800FCDC
func_0800FCDC: @ 0x0800FCDC
    lsls r1, r1, #2
    adds r1, #4
    adds r0, r0, r1
    bx lr

    thumb_func_start func_0800FCE4
func_0800FCE4: @ 0x0800FCE4
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    lsls r2, r2, #2
    adds r2, #4
    adds r4, r1, r2
    adds r0, r4, #0
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0800FD10
    ldr r0, [r4]
    str r0, [sp]
    add r0, sp, #4
    bl __12RucksackItem
    ldr r0, [sp, #4]
    str r0, [r4]
    ldr r0, [sp]
    str r0, [r5]
    b _0800FD16
_0800FD10:
    adds r0, r5, #0
    bl __12RucksackItem
_0800FD16:
    adds r0, r5, #0
    add sp, #8
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_0800FD20
func_0800FD20: @ 0x0800FD20
    push {r4, lr}
    sub sp, #8
    adds r4, r0, #0
    str r2, [sp]
    str r2, [sp, #4]
    bl func_080D7CFC
    adds r0, r4, #0
    add sp, #8
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_0800FD38
func_0800FD38: @ 0x0800FD38
    push {r4, lr}
    sub sp, #8
    adds r4, r0, #0
    str r2, [sp]
    str r2, [sp, #4]
    bl func_080D7D40
    adds r0, r4, #0
    add sp, #8
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_0800FD50
func_0800FD50: @ 0x0800FD50
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r3, r0, #0
    mov r8, r1
    adds r5, r2, #0
    cmp r1, #0xaa
    bgt _0800FDB4
    ldr r0, [r3]
    lsls r0, r0, #2
    adds r0, #4
    adds r7, r3, r0
    adds r4, r3, #4
    cmp r5, #0
    beq _0800FDB4
    cmp r4, r7
    beq _0800FDB4
    add r6, sp, #4
_0800FD76:
    adds r0, r4, #0
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0800FDAA
    adds r0, r6, #0
    mov r1, r8
    bl __4FoodUi
    ldrb r1, [r6]
    mov r0, sp
    adds r0, #5
    ldrb r2, [r0]
    lsls r2, r2, #8
    orrs r2, r1
    adds r0, #1
    ldrb r1, [r0]
    lsls r1, r1, #0x10
    orrs r1, r2
    mov r0, sp
    bl __12RucksackItemG4Food
    ldr r0, [sp]
    str r0, [r4]
    subs r5, #1
_0800FDAA:
    adds r4, #4
    cmp r5, #0
    beq _0800FDB4
    cmp r4, r7
    bne _0800FD76
_0800FDB4:
    adds r0, r5, #0
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800FDC4
func_0800FDC4: @ 0x0800FDC4
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r3, r0, #0
    adds r7, r1, #0
    adds r5, r2, #0
    cmp r7, #0x5e
    bgt _0800FE0C
    ldr r0, [r3]
    lsls r0, r0, #2
    adds r0, #4
    adds r6, r3, r0
    adds r4, r3, #4
    b _0800FE04
_0800FDDE:
    adds r0, r4, #0
    bl IsEmpty__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0800FE02
    add r0, sp, #4
    adds r1, r7, #0
    bl __7ArticleUi
    add r0, sp, #4
    ldrb r1, [r0]
    mov r0, sp
    bl __12RucksackItemG7Article
    ldr r0, [sp]
    str r0, [r4]
    subs r5, #1
_0800FE02:
    adds r4, #4
_0800FE04:
    cmp r5, #0
    beq _0800FE0C
    cmp r4, r6
    bne _0800FDDE
_0800FE0C:
    adds r0, r5, #0
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800FE18
func_0800FE18: @ 0x0800FE18
    adds r2, r0, #0
    lsls r0, r1, #1
    adds r0, r0, r2
    adds r0, #0x28
    bx lr
    .align 2, 0

    thumb_func_start func_0800FE24
func_0800FE24: @ 0x0800FE24
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r0, #0
    lsls r2, r2, #1
    adds r2, r2, r1
    adds r5, r2, #0
    adds r5, #0x28
    adds r0, r5, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    bne _0800FE66
    mov r0, sp
    adds r1, r5, #0
    movs r2, #2
    bl memcpy
    add r4, sp, #4
    adds r0, r4, #0
    bl __9ToolStack
    adds r0, r5, #0
    adds r1, r4, #0
    movs r2, #2
    bl memcpy
    adds r0, r6, #0
    mov r1, sp
    movs r2, #2
    bl memcpy
    b _0800FE6C
_0800FE66:
    adds r0, r6, #0
    bl __9ToolStack
_0800FE6C:
    adds r0, r6, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800FE78
func_0800FE78: @ 0x0800FE78
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r1, #0
    adds r1, r2, #0
    mov r0, sp
    movs r2, #2
    bl memcpy
    adds r5, #0x24
    adds r0, r4, #0
    adds r1, r5, #0
    mov r2, sp
    bl func_080D7D88
    adds r0, r4, #0
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_0800FEA0
func_0800FEA0: @ 0x0800FEA0
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r1, #0
    adds r1, r2, #0
    mov r0, sp
    movs r2, #2
    bl memcpy
    adds r5, #0x24
    adds r0, r4, #0
    adds r1, r5, #0
    mov r2, sp
    bl func_080D7DF4
    adds r0, r4, #0
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1

    thumb_func_start func_0800FEC8
func_0800FEC8: @ 0x0800FEC8
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    adds r3, r0, #0
    adds r6, r1, #0
    str r2, [sp, #4]
    cmp r6, #0x50
    ble _0800FEDA
    adds r0, r2, #0
    b _0800FF82
_0800FEDA:
    ldr r0, [r3, #0x24]
    lsls r0, r0, #1
    adds r0, r0, r3
    adds r7, r0, #0
    adds r7, #0x28
    adds r5, r3, #0
    adds r5, #0x28
    ldr r0, [sp, #4]
    cmp r0, #0
    beq _0800FF82
    cmp r5, r7
    beq _0800FF82
_0800FEF2:
    adds r0, r5, #0
    bl IsEmpty__C9ToolStack
    lsls r0, r0, #0x18
    cmp r0, #0
    beq _0800FF30
    movs r0, #0x63
    str r0, [sp, #8]
    add r1, sp, #8
    ldr r0, [sp, #4]
    add r4, sp, #4
    cmp r0, #0x63
    bls _0800FF0E
    adds r4, r1, #0
_0800FF0E:
    ldr r4, [r4]
    add r0, sp, #0xc
    adds r1, r6, #0
    bl __4ToolUi
    add r0, sp, #0xc
    ldrb r1, [r0]
    mov r0, sp
    adds r2, r4, #0
    bl __9ToolStackG4ToolUi
    adds r0, r5, #0
    mov r1, sp
    movs r2, #2
    bl memcpy
    b _0800FF70
_0800FF30:
    adds r0, r5, #0
    bl GetTool__C9ToolStack
    mov r1, sp
    adds r1, #0xd
    strb r0, [r1]
    adds r0, r1, #0
    bl GetId__C4Tool
    movs r1, #0
    cmp r0, r6
    bne _0800FF4A
    movs r1, #1
_0800FF4A:
    cmp r1, #0
    beq _0800FF76
    adds r0, r5, #0
    bl GetAmount__C9ToolStack
    movs r1, #0x63
    subs r1, r1, r0
    str r1, [sp, #0x10]
    add r2, sp, #0x10
    ldr r0, [sp, #4]
    add r4, sp, #4
    cmp r0, r1
    bls _0800FF66
    adds r4, r2, #0
_0800FF66:
    ldr r4, [r4]
    adds r0, r5, #0
    adds r1, r4, #0
    bl AddAmount__9ToolStackUi
_0800FF70:
    ldr r0, [sp, #4]
    subs r0, r0, r4
    str r0, [sp, #4]
_0800FF76:
    adds r5, #2
    ldr r0, [sp, #4]
    cmp r0, #0
    beq _0800FF82
    cmp r5, r7
    bne _0800FEF2
_0800FF82:
    add sp, #0x14
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0800FF8C
func_0800FF8C: @ 0x0800FF8C
    push {r4, r5, lr}
    movs r1, #0
    str r1, [r0]
    adds r4, r0, #0
    adds r4, #0x24
    movs r5, #0x8d
    lsls r5, r5, #2
    ldrh r2, [r0, #0x24]
    ldr r3, _0800FFCC @ =0xFFFFFC00
    adds r1, r3, #0
    ands r1, r2
    orrs r1, r5
    strh r1, [r0, #0x24]
    ldrb r5, [r4, #1]
    movs r2, #3
    adds r1, r2, #0
    ands r1, r5
    strb r1, [r4, #1]
    ldrh r5, [r4, #2]
    adds r1, r3, #0
    ands r1, r5
    strh r1, [r4, #2]
    ldrb r1, [r4, #3]
    ands r2, r1
    strb r2, [r4, #3]
    ldrh r1, [r4, #4]
    ands r3, r1
    strh r3, [r4, #4]
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
_0800FFCC: .4byte 0xFFFFFC00

    thumb_func_start func_0800FFD0
func_0800FFD0: @ 0x0800FFD0
    ldr r0, [r0]
    bx lr

    thumb_func_start func_0800FFD4
func_0800FFD4: @ 0x0800FFD4
    adds r0, #4
    bx lr

    thumb_func_start func_0800FFD8
func_0800FFD8: @ 0x0800FFD8
    ldr r1, [r0]
    adds r1, #4
    adds r0, r0, r1
    bx lr

    thumb_func_start func_0800FFE0
func_0800FFE0: @ 0x0800FFE0
    push {r4, lr}
    adds r4, r0, #0
    adds r1, #0x24
    movs r2, #6
    bl memcpy
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1

    thumb_func_start func_0800FFF4
func_0800FFF4: @ 0x0800FFF4
    push {lr}
    adds r2, r0, #0
    ldr r0, [r2]
    cmp r0, #0x1d
    bhi _0801000E
    adds r0, #4
    adds r0, r2, r0
    cmp r0, #0
    beq _08010008
    strb r1, [r0]
_08010008:
    ldr r0, [r2]
    adds r0, #1
    str r0, [r2]
_0801000E:
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08010014
func_08010014: @ 0x08010014
    push {lr}
    adds r0, #0x24
    movs r2, #6
    bl memcpy
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08010024
func_08010024: @ 0x08010024
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r5, r3, #4
    ldr r0, [r3]
    adds r0, #4
    adds r0, r3, r0
    adds r2, r0, #0
    adds r1, r5, #0
    ldr r4, [r3]
    cmp r1, r2
    beq _08010040
_0801003A:
    adds r1, #1
    cmp r1, r2
    bne _0801003A
_08010040:
    subs r0, r0, r5
    subs r0, r4, r0
    str r0, [r3]
    pop {r4, r5}
    pop {r0}
    bx r0
