#ifndef RUCKSACK_HH
#define RUCKSACK_HH

#include "prelude.h"

#include "utility/fixed_vec.hh"
#include "rucksack_item.hh"

struct Rucksack
{
    Rucksack();

    u32 GetUpgradeLevel() const;
    u32 GetSize() const;
    RucksackItem const & GetItemAt(u32 idx) const;
    bool HasNoItems() const;
    u32 GetFirstFreeItemSlot() const;
    u32 GetLastFreeItemSlot() const;
    u32 GetFirstSlotWithFood(u32 food_id) const;
    u32 GetFirstSlotWithArticle(u32 article_id) const;
    u32 GetEmptyItemSlotCount() const;
    u32 GetAmountOfFood(u32 food_id) const;
    u32 GetAmountOfArticles(u32 article_id) const;
    ToolStack const & GetToolAt(u32 idx) const;
    bool HasNoTools() const;
    u32 GetFirstFreeToolSlot() const;
    u32 GetLastFreeToolSlot() const;
    u32 GetFirstSlotWithTool(u32 tool_id) const;
    u32 GetAvailableSpaceForTool(u32 tool_id) const;
    u32 GetAmountOfTool(u32 tool_id) const;
    void Upgrade();
    RucksackItem & GetItemAt(u32 idx);
    RucksackItem ExtractItemAt(u32 idx);
    RucksackItem CycleItemBack(RucksackItem item);
    RucksackItem CycleItemFront(RucksackItem item);
    u32 AddAmountOfFood(u32 food_id, u32 amount);
    u32 AddAmountOfArticle(u32 article_id, u32 amount);
    ToolStack & GetToolAt(u32 idx);
    ToolStack ExtractToolAt(u32 idx);
    ToolStack CycleToolBack(ToolStack tool_stack);
    ToolStack CycleToolFront(ToolStack tool_stack);
    u32 AddAmountOfTool(u32 tool_id, u32 amount);

    /* +00 */ FixedVec<RucksackItem, 8> items;
    /* +24 */ FixedVec<ToolStack, 8> tools;
};

#endif // RUCKSACK_HH
