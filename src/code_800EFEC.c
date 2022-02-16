#include "inventory.h"

#include <string.h>

#include "constants/food.h"
#include "constants/article.h"

typedef struct RucksackSlot {
    u32 type:1;
    u8 wrapped:1;
    u8 item;
    s8 stamina;
    s8 fatigue;
    u8 unk;
} RucksackSlot;

typedef struct UnkStruct_4 {
    u8 _0;
    u8 _1;
    u8 _2;
    u8 _3;
} UnkStruct_4;

// Initializes a rucksack slot
void sub_800EFEC(RucksackSlot *slot) {
    slot->type = 0;
    slot->wrapped = 0;
    slot->item = FOOD_NONE;
}

// Initializes a rucksack slot from a food slot
RucksackSlot * sub_800F004(RucksackSlot *rSlot, FoodSlot fSlot) {
    rSlot->type = 0;
    rSlot->wrapped = 0;

    rSlot->item = GetId__C4Food(&fSlot.item);
    rSlot->stamina = GetStaminaBonus__C4Food(&fSlot);
    rSlot->fatigue = GetFatigueBonus__C4Food(&fSlot);

    return rSlot;
}

// Initializes a rucksack slot from an article
RucksackSlot * sub_800F040(RucksackSlot *rSlot, u8 article) {
    ArticleSlot sp;
    sp.article = article;
    
    rSlot->type = 1;
    rSlot->wrapped = 0;

    rSlot->item = GetId__C7Article(&sp);

    return rSlot;
}

// Returns whether the slot is empty
u8 sub_800F06C(RucksackSlot *slot) {
    switch(slot->type) {
        default:
            return TRUE;
        case 0:
            return slot->item >= FOOD_NONE;
        case 1:
            return slot->item >= ARTICLE_NONE;
    }
}

// Returns the slot's itemp type
u8 sub_800F09C(RucksackSlot *slot) {
    return slot->type;
}

// Initializes a food slot from a rucksack slot
FoodSlot * sub_800F0A4(FoodSlot *fSlot, RucksackSlot *rSlot) {
    Item item;

    if (rSlot->type == 0) {
        __4FoodUi(&item, rSlot->item);
        AddBonuses__4FoodScSc(&item, rSlot->stamina, rSlot->fatigue);
        fSlot->item = item;
    } else {
        __4FoodUi(&fSlot->item, FOOD_NONE);
    }

    return fSlot;
}

u8 sub_800F0E8(RucksackSlot *slot) {
    UnkStruct_4 sp;
    u8 *ptr;
    
    if(slot->type == 1) {
        ptr = &sp._0;
        ptr++;
        __7ArticleUi((ArticleSlot *)&sp._1, slot->item);
        return *ptr;
    } else {
        __7ArticleUi((ArticleSlot *)&sp, ARTICLE_NONE);
        return sp._0;
    }

}

// Returns whether the item is wrapped
u8 sub_800F11C(RucksackSlot *slot) {
    return slot->wrapped;
}

// Returns whether the item can be wrapped
u8 sub_800F124(RucksackSlot *slot) {
    ArticleSlot sp;
    u8 bool = FALSE;
    
    switch(slot->type) {
        case 0:
            bool = TRUE;
            break;
        case 1:
            __7ArticleUi(&sp, slot->item);
            bool = CanBeDiscarded__C7Article(&sp);
            break;
    }
    
    slot->wrapped = bool;
    return bool;
}
