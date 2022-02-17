#pragma once

#include "item.hh"

struct ToolChest
{
    enum { CAPACITY = 0x40 };

    ToolChest();

    ToolStack const * GetToolStackAt(u32 idx) const;
    u32 GetAvailableSpaceFor(u32 tool_id) const;
    u32 GetAmountOf(u32 tool_id) const;
    u32 GetFirstFreeSlot(void) const;
    u32 GetLastFreeSlot(void) const;
    u32 GetFirstSlotWith(u32 tool_id) const;
    ToolStack * GetToolStackAt(u32 idx);
    u32 AddAmountOf(u32 tool_id, u32 amount);

    /* +00 */ ToolStack contents[CAPACITY];
};

struct Fridge
{
    enum { CAPACITY = 0x40 };

    Fridge();

    FoodStack const * GetFoodStackAt(u32 idx) const;
    u32 GetAvailableSpaceFor(u32 food_id) const;
    u32 GetAmountOf(u32 food_id) const;
    u32 GetFirstFreeSlot(void) const;
    u32 GetLastFreeSlot(void) const;
    u32 GetFirstSlotWith(u32 food_id) const;
    FoodStack * GetFoodStackAt(u32 idx);
    u32 AddAmountOf(u32 food_id, u32 amount);

    /* +00 */ FoodStack contents[CAPACITY];
};

struct Shelf
{
    enum { CAPACITY = 0x40 };

    Shelf();

    ArticleStack const * GetArticleStackAt(u32 idx) const;
    u32 GetAvailableSpaceFor(u32 article_id) const;
    u32 GetAmountOf(u32 article_id) const;
    u32 GetFirstFreeSlot(void) const;
    u32 GetLastFreeSlot(void) const;
    u32 GetFirstSlotWith(u32 article_id) const;
    ArticleStack * GetArticleStackAt(u32 idx);
    u32 AddAmountOf(u32 article_id, u32 amount);

    /* +00 */ ArticleStack contents[CAPACITY];
};
