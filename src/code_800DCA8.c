#include "inventory.h"

// Initializes a food slot
Item * sub_800DCA8(Item * slot, u8 food) {
    slot->id = food;
    slot->stamina = 0;
    slot->fatigue = 0;

    return slot;
}

// Returns a slot's food
u32 sub_800DCB4(Item const * slot) {
    return slot->id;
}

// Returns a pointer to a slot's food name
const u8 * sub_800DCB8(Item const * slot) {
    u8 food = slot->id;
    u8 bool = food < NUM_FOODS;

    if(bool)
        return gFoods[slot->id].name;
    else
        return gText_BrokenFood;
}

// Returns a slot's icon index
u16 sub_800DCE0(Item const * slot) {
    u8 food = slot->id;
    u8 bool = food < NUM_FOODS;

    if(bool)
        return gFoods[slot->id].icon;
    else
        return 428; // Stones
}

// Returns a slot's stamina bonus + the food's stamina bonus
s32 sub_800DD08(Item const * slot) {
    u8 food = slot->id;
    u8 bool = food < NUM_FOODS;

    if(bool)
        return gFoods[slot->id].stamina + slot->stamina;
    else
        return -100;
}

// Returns a slot's fatigue bonus + the food's fatigue bonus
s32 sub_800DD3C(Item const * slot) {
    u8 food = slot->id;
    u8 bool = food < NUM_FOODS;

    if(bool)
        return gFoods[slot->id].fatigue + slot->fatigue;
    else
        return 100;
}

// Returns a slot's stamina bonus
NAKED
s8 sub_800DD6C(FoodSlot *slot) {
    asm_unified("\n\
        push {lr}\n\
        adds r2, r0, #0\n\
        ldrb r0, [r2]\n\
        movs r1, #0\n\
        cmp r0, #0xaa\n\
        bhi _0800DD7A\n\
        movs r1, #1\n\
    _0800DD7A:\n\
        cmp r1, #0\n\
        bne _0800DD84\n\
        movs r0, #0x64\n\
        rsbs r0, r0, #0\n\
        b _0800DD88\n\
    _0800DD84:\n\
        movs r0, #1\n\
        ldrsb r0, [r2, r0]\n\
    _0800DD88:\n\
        pop {r1}\n\
        bx r1\n\
    ");
}

// Returns a slot's fatigue bonus
NAKED
s8 sub_800DD8C(FoodSlot *slot) {
    asm_unified("\n\
        push {lr}\n\
        adds r2, r0, #0\n\
        ldrb r0, [r2]\n\
        movs r1, #0\n\
        cmp r0, #0xaa\n\
        bhi _0800DD9A\n\
        movs r1, #1\n\
    _0800DD9A:\n\
        cmp r1, #0\n\
        bne _0800DDA2\n\
        movs r0, #0x64\n\
        b _0800DDA6\n\
    _0800DDA2:\n\
        movs r0, #2\n\
        ldrsb r0, [r2, r0]\n\
    _0800DDA6:\n\
        pop {r1}\n\
        bx r1\n\
    ");
}

// Returns whether the slot contains a drink
u8 sub_800DDAC(FoodSlot *slot) {
    u8 food = slot->item.id;
    u8 bool = food < NUM_FOODS;

    if(bool)
        return gFoods[slot->item.id].isDrink;
    else
        return FALSE;
}

// Returns a pointer to a slot's food description
const u8 * sub_800DDD4(FoodSlot *slot) {
    u8 food = slot->item.id;
    u8 bool = food < NUM_FOODS;

    if(bool){
        if(gFoods[slot->item.id].desc != NULL)
            return gFoods[slot->item.id].desc;
        else
            return gText_NoExplanation;
    }
    
#ifndef NONMATCHING
    return (u8 *)0x080E962C;
#else
    return gText_NoExplanation;
#endif
}

// Adds to the slot's stamina and fatigue bonus
void sub_800DE0C(Item * slot, s8 stamina, s8 fatigue) {
    s32 total;
    u8 food = slot->id;
    u8 bool = food < NUM_FOODS;

    if(bool)
    {
        total = slot->stamina + stamina;

        if(total < -128)
            total = -128;
        else if(total > 127)
            total = 127;
        
        slot->stamina = total;

        total = slot->fatigue + fatigue;

        if(total < -128)
            total = -128;
        else if(total > 127)
            total = 127;

        slot->fatigue = total;
    }
}

// Initializes a food slot
FoodSlot * sub_800DE68(FoodSlot * slot) {
    sub_800DCA8(&slot->item, FOOD_NONE);
    slot->quantity = 0;
    return slot;
}

struct UnkStruct_C {
    u32 _0;
    u32 _4;
    u32 _8;
};

// No idea
FoodSlot * sub_800DE80(FoodSlot * result, Item a_item, u32 a_amount) {
    result->item = a_item;

    if (a_amount != 0)
    {
        u32 max_amount = 99;

        u8 * p_max_amount = (u8 *) &max_amount;
        u8 * p_a_amount = (u8 *) &a_amount;

        result->quantity = *(max_amount > a_amount ? p_a_amount : p_max_amount);
    }
    else
    {
        result->quantity = 1;
    }

    return result;
}

/* // note: this matches
ItemStack::ItemStack(Item a_item, u32 a_amount)
{
    item = a_item;

    if (a_amount != 0)
    {
        u32 max_amount = 99;

        u8 * p_max_amount = (u8 *) &max_amount;
        u8 * p_a_amount = (u8 *) &a_amount;

        amount = *(max_amount > a_amount ? p_a_amount : p_max_amount);
    }
    else
    {
        amount = 1;
    }
}
*/

// Initializes a food slot
Item * sub_800DEB8(Item * result, FoodSlot const * self)
{
    if (self->quantity > 0)
        *result = self->item;
    else
        sub_800DCA8(result, FOOD_NONE);
    return result;
}

// Returns whether a slot is empty or not
u8 sub_800DEDC(FoodSlot *slot) {
    return slot->quantity == 0;
}

// Returns a slot's quantity
u32 sub_800DEF0(FoodSlot *slot) {
    if(slot->quantity > 0)
        return slot->quantity;
    else
        return 0;
}

struct UnkStruct_8 {
    u32 _0;
    u32 _4;
};

// Adds to a slot's quantity
void sub_800DF04(FoodSlot *slot, u32 amount) {
    struct UnkStruct_8 _struct;

    if(slot->quantity != 0){
        u32 *ptr, *ptr2;

        _struct._0 = 99;
        _struct._4 = slot->quantity + amount;
        ptr2 = &_struct._4;
        ptr = &_struct._0;
        
        if(_struct._0 > _struct._4)
            ptr = ptr2;
        slot->quantity = *ptr;
    }
}

// Subtracts from a slot's quantity
void sub_800DF34(FoodSlot *slot, u32 amount) {
    if(slot->quantity != 0){
        if(slot->quantity <= amount)
            slot->quantity = 0;
        else
            slot->quantity -= amount;
    }
}
