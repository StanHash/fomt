#include "inventory.h"

// Initializes the shelf
Shelf * sub_800B8E4(Shelf *shelf) {
    u32 ctr = 64;
    ArticleSlot *ptr = shelf->slots;

    while(--ctr != -1){
        __12ArticleStack(ptr);
        ptr++;
    }

    return shelf;
}

// Unused?
// Returns slot at index n
ArticleSlot * sub_800B908(Shelf *shelf, u32 idx) {
    return &shelf->slots[idx];
}

// Returns the available quantity of X article in a shelf
u32 sub_800B910(Shelf *shelf, u32 article) {
    u32 val = 0;
    u8 bool;
    ArticleSlot * ptr2 = &shelf->slots[64];
    ArticleSlot * ptr = &shelf->slots[0];
    ArticleSlot sp;

    while(ptr != ptr2){
        ArticleSlot * r7 = &sp;
        if(IsEmpty__C12ArticleStack(ptr)){
            val += 99;
        }else{
            r7->article = GetArticle__C12ArticleStack(ptr);
            bool = GetId__C7Article(&sp) == article;
            if(bool){
                u32 temp = GetAmount__C12ArticleStack(ptr);
                u32 temp2 = val + 99;
                val = temp2 - temp;
            }
        }
        ptr++;
    }

    return val;
}

// Returns the quantity of X article in a shelf
u32 sub_800B974(Shelf *shelf, u32 article) {
    u32 val = 0;
    u8 bool;
    ArticleSlot * ptr2 = &shelf->slots[64];
    ArticleSlot * ptr = &shelf->slots[0];
    ArticleSlot sp;

    while(ptr != ptr2){
        ArticleSlot * r7 = &sp;
        if(!IsEmpty__C12ArticleStack(ptr)){
            r7->article = GetArticle__C12ArticleStack(ptr);
            bool = GetId__C7Article(&sp) == article;

            if(bool)
                val += GetAmount__C12ArticleStack(ptr);
        }
        ptr++;
    }

    return val;
}

// Unused?
// Returns the first empty slot index in a shelf
u32 sub_800B9D0(Shelf *shelf, u32 article) {
    u32 idx = 0;
    ArticleSlot * ptr2 = &shelf->slots[64];
    ArticleSlot * ptr = &shelf->slots[0];

    while(ptr != ptr2){
        if(IsEmpty__C12ArticleStack(ptr))
            return idx;
        
        ptr++;
        idx++;
    }

    return -1;
}

// Unused?
NAKED
u32 sub_800BA00(Shelf *shelf) {
    asm_unified("\n\
        .byte 0x10, 0xB5, 0x84, 0xB0, 0x3F, 0x24, 0x01, 0x90, 0x80, 0x30, 0x03, 0x90, 0x0B, 0xE0, 0x90, 0x1E\n\
        .byte 0x02, 0xF0, 0x34, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x01, 0xD0, 0x20, 0x1C, 0x0D, 0xE0, 0x03, 0x98\n\
        .byte 0x02, 0x38, 0x03, 0x90, 0x01, 0x3C, 0x03, 0x9A, 0x01, 0x98, 0x00, 0x21, 0x82, 0x42, 0x00, 0xD1\n\
        .byte 0x01, 0x21, 0x00, 0x29, 0xEB, 0xD0, 0x01, 0x20, 0x40, 0x42, 0x04, 0xB0, 0x10, 0xBC, 0x02, 0xBC\n\
        .byte 0x08, 0x47, 0x00, 0x00\n\
    ");
}

// Returns the first slot index containing X article
u32 sub_800BA44(Shelf *shelf, u32 article) {
    u32 idx = 0;
    u8 bool;
    ArticleSlot * ptr2 = &shelf->slots[64];
    ArticleSlot * ptr = &shelf->slots[0];
    ArticleSlot sp;

    while(ptr != ptr2){
        ArticleSlot * r7 = &sp;
        if(!IsEmpty__C12ArticleStack(ptr)){
            r7->article = GetArticle__C12ArticleStack(ptr);
            bool = GetId__C7Article(&sp) == article;
            if(bool)
                return idx;
        }
        ptr++;
        idx++;
    }

    return -1;
}

// Returns slot at index n
ArticleSlot * sub_800BAA0(Shelf *shelf, u32 idx) {
    return &shelf->slots[idx];
}

// Fills as many slots as it can with a certain article
NAKED
u32 sub_800BAA8(Shelf *shelf, u32 article, u32 amount) {
    asm_unified("\n\
        push {r4, r5, r6, r7, lr}\n\
        sub sp, #0x14\n\
        adds r6, r1, #0\n\
        str r2, [sp, #4]\n\
        cmp r6, #0x5e\n\
        ble _0800BAB8\n\
        adds r0, r2, #0\n\
        b _0800BB58\n\
    _0800BAB8:\n\
        adds r7, r0, #0\n\
        adds r7, #0x80\n\
        adds r5, r0, #0\n\
        ldr r0, [sp, #4]\n\
        cmp r0, #0\n\
        beq _0800BB58\n\
        cmp r5, r7\n\
        beq _0800BB58\n\
    _0800BAC8:\n\
        adds r0, r5, #0\n\
        bl IsEmpty__C12ArticleStack\n\
        lsls r0, r0, #0x18\n\
        cmp r0, #0\n\
        beq _0800BB06\n\
        movs r0, #0x63\n\
        str r0, [sp, #8]\n\
        add r1, sp, #8\n\
        ldr r0, [sp, #4]\n\
        add r4, sp, #4\n\
        cmp r0, #0x63\n\
        bls _0800BAE4\n\
        adds r4, r1, #0\n\
    _0800BAE4:\n\
        ldr r4, [r4]\n\
        add r0, sp, #0xc\n\
        adds r1, r6, #0\n\
        bl __7ArticleUi\n\
        add r0, sp, #0xc\n\
        ldrb r1, [r0]\n\
        mov r0, sp\n\
        adds r2, r4, #0\n\
        bl __12ArticleStackG7ArticleUi\n\
        adds r0, r5, #0\n\
        mov r1, sp\n\
        movs r2, #2\n\
        bl memcpy\n\
        b _0800BB46\n\
    _0800BB06:\n\
        adds r0, r5, #0\n\
        bl GetArticle__C12ArticleStack\n\
        mov r1, sp\n\
        adds r1, #0xd\n\
        strb r0, [r1]\n\
        adds r0, r1, #0\n\
        bl GetId__C7Article\n\
        movs r1, #0\n\
        cmp r0, r6\n\
        bne _0800BB20\n\
        movs r1, #1\n\
    _0800BB20:\n\
        cmp r1, #0\n\
        beq _0800BB4C\n\
        adds r0, r5, #0\n\
        bl GetAmount__C12ArticleStack\n\
        movs r1, #0x63\n\
        subs r1, r1, r0\n\
        str r1, [sp, #0x10]\n\
        add r2, sp, #0x10\n\
        ldr r0, [sp, #4]\n\
        add r4, sp, #4\n\
        cmp r0, r1\n\
        bls _0800BB3C\n\
        adds r4, r2, #0\n\
    _0800BB3C:\n\
        ldr r4, [r4]\n\
        adds r0, r5, #0\n\
        adds r1, r4, #0\n\
        bl AddAmount__12ArticleStackUi\n\
    _0800BB46:\n\
        ldr r0, [sp, #4]\n\
        subs r0, r0, r4\n\
        str r0, [sp, #4]\n\
    _0800BB4C:\n\
        adds r5, #2\n\
        ldr r0, [sp, #4]\n\
        cmp r0, #0\n\
        beq _0800BB58\n\
        cmp r5, r7\n\
        bne _0800BAC8\n\
    _0800BB58:\n\
        add sp, #0x14\n\
        pop {r4, r5, r6, r7}\n\
        pop {r1}\n\
        bx r1\n\
    ");
}
