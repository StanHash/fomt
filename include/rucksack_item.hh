#ifndef RUCKSACK_ITEM_HH
#define RUCKSACK_ITEM_HH

#include "prelude.h"

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

    RucksackItem();
    RucksackItem(Food food);
    RucksackItem(Article article);

    bool IsEmpty() const;
    Kind GetKind() const;
    Food GetFood() const;
    Article GetArticle() const;
    bool IsWrapped() const;
    bool TryWrap();

    /* +00 */ Kind kind : 1;
    /* +00 */ bool wrapped : 1;
    /* +01 */ Inner inner;
};

#endif // RUCKSACK_ITEM_HH
