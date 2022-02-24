#pragma once

#include "global.h"

#include "item.hh"

struct RucksackItem
{
    enum Kind
    {
        KIND_FOOD,
        KIND_ARTICLE,
    };

    struct PACKED Inner
    {
        u8 item_id;
        i8 stamina_bonus;
        i8 fatigue_bonus;
    };

    RucksackItem(void);
    RucksackItem(Food food);
    RucksackItem(Article article);

    bool IsEmpty(void) const;
    Kind GetKind(void) const;
    Food GetFood(void) const;
    Article GetArticle(void) const;
    bool IsWrapped(void) const;
    bool TryWrap(void);

    /* +00 */ Kind kind : 1;
    /* +00 */ bool wrapped : 1;
    /* +01 */ Inner inner;
};
