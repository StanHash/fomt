#include "rucksack.hh"

Rucksack::Rucksack()
    : items(2, RucksackItem()), tools(2, ToolStack())
{
}

u32 Rucksack::GetUpgradeLevel() const
{
    u32 size = items.size();

    if (size < 2)
        return 0;

    if (size < 4)
        return 0;

    if (size < 8)
        return 1;

    return 2;
}

u32 Rucksack::GetSize() const
{
    return items.size();
}

RucksackItem const & Rucksack::GetItemAt(u32 idx) const
{
    return items[idx];
}

bool Rucksack::HasNoItems() const
{
    RucksackItem const * begin = items.begin();
    RucksackItem const * end = items.end();

    for (RucksackItem const * it = begin; it != end; ++it)
    {
        if (!it->IsEmpty())
            return false;
    }

    return true;
}

u32 Rucksack::GetFirstFreeItemSlot() const
{
    u32 idx = 0;

    RucksackItem const * begin = items.begin();
    RucksackItem const * end = items.end();

    for (RucksackItem const * it = begin; it != end; ++it, ++idx)
    {
        if (it->IsEmpty())
            return idx;
    }

    return static_cast<u32>(-1);
}

u32 Rucksack::GetLastFreeItemSlot() const
{
    typedef FixedVec<RucksackItem, 8>::const_reverse_iterator It;

    u32 idx = items.size() - 1;

    // TODO: those are probably not dummies but rather space for the begin() and end() iterators that got copied

    It dummy_a, end = items.rend();
    It dummy_b, it = items.rbegin();

    for (; it != end; ++it, --idx)
    {
        if (it->IsEmpty())
            return idx;
    }

    return static_cast<u32>(-1);
}

u32 Rucksack::GetFirstSlotWithFood(u32 food_id) const
{
    int idx = 0;

    RucksackItem const * begin = items.begin();
    RucksackItem const * end = items.end();

    for (RucksackItem const * it = begin; it != end; ++it, ++idx)
    {
        if (!it->IsEmpty() && it->GetKind() == RucksackItem::KIND_FOOD && it->GetFood().GetId() == food_id)
            return idx;
    }

    return static_cast<u32>(-1);
}

u32 Rucksack::GetFirstSlotWithArticle(u32 article_id) const
{
    u32 idx = 0;

    RucksackItem const * begin = items.begin();
    RucksackItem const * end = items.end();

    for (RucksackItem const * it = begin; it != end; ++it, ++idx)
    {
        if (!it->IsEmpty() && it->GetKind() == RucksackItem::KIND_ARTICLE && it->GetArticle().GetId() == article_id)
            return idx;
    }

    return static_cast<u32>(-1);
}

u32 Rucksack::GetEmptyItemSlotCount() const
{
    u32 count = 0;

    RucksackItem const * begin = items.begin();
    RucksackItem const * end = items.end();

    for (RucksackItem const * it = begin; it != end; ++it)
    {
        if (it->IsEmpty())
            count++;
    }

    return count;
}

u32 Rucksack::GetAmountOfFood(u32 food_id) const
{
    u32 count = 0;

    RucksackItem const * begin = items.begin();
    RucksackItem const * end = items.end();

    for (RucksackItem const * it = begin; it != end; ++it)
    {
        if (!it->IsEmpty() && it->GetKind() == RucksackItem::KIND_FOOD && it->GetFood().GetId() == food_id)
            count++;
    }

    return count;
}

u32 Rucksack::GetAmountOfArticles(u32 article_id) const
{
    u32 count = 0;

    RucksackItem const * begin = items.begin();
    RucksackItem const * end = items.end();

    for (RucksackItem const * it = begin; it != end; ++it)
    {
        if (!it->IsEmpty() && it->GetKind() == RucksackItem::KIND_ARTICLE && it->GetArticle().GetId() == article_id)
            count++;
    }

    return count;
}

ToolStack const & Rucksack::GetToolAt(u32 idx) const
{
    return tools[idx];
}

bool Rucksack::HasNoTools() const
{
    ToolStack const * begin = tools.begin();
    ToolStack const * end = tools.end();

    for (ToolStack const * it = begin; it != end; ++it)
    {
        if (!it->IsEmpty())
            return false;
    }

    return true;
}

u32 Rucksack::GetFirstFreeToolSlot() const
{
    u32 idx = 0;

    ToolStack const * begin = tools.begin();
    ToolStack const * end = tools.end();

    for (ToolStack const * it = begin; it != end; ++it, ++idx)
    {
        if (it->IsEmpty())
            return idx;
    }

    return static_cast<u32>(-1);
}

u32 Rucksack::GetLastFreeToolSlot() const
{
    typedef FixedVec<ToolStack, 8>::const_reverse_iterator It;

    int idx = tools.size() - 1;

    // TODO: those are probably not dummies but rather space for the begin() and end() iterators that got copied

    It dummy_a, end = tools.rend();
    It dummy_b, it = tools.rbegin();

    for (; it != end; ++it, --idx)
    {
        if (it->IsEmpty())
            return idx;
    }

    return static_cast<u32>(-1);
}

u32 Rucksack::GetFirstSlotWithTool(u32 tool_id) const
{
    u32 idx = 0;

    ToolStack const * begin = tools.begin();
    ToolStack const * end = tools.end();

    for (ToolStack const * it = begin; it != end; ++it, ++idx)
    {
        if (!it->IsEmpty() && it->GetTool().GetId() == tool_id)
            return idx;
    }

    return static_cast<u32>(-1);
}

u32 Rucksack::GetAvailableSpaceForTool(u32 tool_id) const
{
    u32 available = 0;

    ToolStack const * begin = tools.begin();
    ToolStack const * end = tools.end();

    for (ToolStack const * it = begin; it != end; ++it)
    {
        if (it->IsEmpty())
        {
            available += ToolStack::MAX_AMOUNT;
        }
        else if (it->GetTool().GetId() == tool_id)
        {
            available += ToolStack::MAX_AMOUNT - it->GetAmount();
        }
    }

    return available;
}

u32 Rucksack::GetAmountOfTool(u32 tool_id) const
{
    u32 count = 0;

    ToolStack const * begin = tools.begin();
    ToolStack const * end = tools.end();

    for (ToolStack const * it = begin; it != end; ++it)
    {
        if (!it->IsEmpty() && it->GetTool().GetId() == tool_id)
        {
            count += it->GetAmount();
        }
    }

    return count;
}

#if defined(NONMATCHING) && NONMATCHING != 0

void Rucksack::Upgrade()
{
    u32 upgrade_level = GetUpgradeLevel();

    if (upgrade_level < 2)
    {
        ++upgrade_level;

        u32 new_size = 2 << upgrade_level;

        items.resize(new_size, RucksackItem());
        tools.resize(new_size, ToolStack());
    }
}

#else

void NAKED Rucksack::Upgrade()
{
    /* NONMATCHING
     * https://decomp.me/scratch/05Wq0
     * https://decomp.me/scratch/LzhAW */

    // The actual nonmatching part is the inlined FixedVec::resize, which may come up again

    asm_unified("\
        push {r4, r5, r6, r7, lr}\n\
        mov r7, sl\n\
        mov r6, sb\n\
        mov r5, r8\n\
        push {r5, r6, r7}\n\
        sub sp, #8\n\
        adds r5, r0, #0\n\
        bl GetUpgradeLevel__C8Rucksack\n\
        cmp r0, #1\n\
        bls .L0800FA78\n\
        b .L0800FCCA\n\
    .L0800FA78:\n\
        adds r0, #1\n\
        movs r1, #2\n\
        mov sl, r1\n\
        mov r2, sl\n\
        lsls r2, r0\n\
        mov sl, r2\n\
        mov r0, sp\n\
        bl __12RucksackItem\n\
        mov r8, sp\n\
        ldr r2, [r5]\n\
        cmp sl, r2\n\
        bhs .L0800FAC0\n\
        adds r1, r5, #4\n\
        mov r3, sl\n\
        lsls r0, r3, #2\n\
        adds r1, r1, r0\n\
        lsls r0, r2, #2\n\
        adds r0, #4\n\
        adds r0, r5, r0\n\
        adds r3, r0, #0\n\
        adds r2, r1, #0\n\
        movs r4, #0x24\n\
        adds r4, r4, r5\n\
        mov sb, r4\n\
        ldr r4, [r5]\n\
        cmp r2, r3\n\
        beq .L0800FAB6\n\
    .L0800FAB0:\n\
        adds r2, #4\n\
        cmp r2, r3\n\
        bne .L0800FAB0\n\
    .L0800FAB6:\n\
        subs r0, r0, r1\n\
        asrs r0, r0, #2\n\
        subs r0, r4, r0\n\
        str r0, [r5]\n\
        b .L0800FB90\n\
    .L0800FAC0:\n\
        mov r6, sl\n\
        subs r4, r6, r2\n\
        lsls r0, r2, #2\n\
        adds r0, #4\n\
        adds r7, r5, r0\n\
        movs r0, #0x24\n\
        adds r0, r0, r5\n\
        mov sb, r0\n\
        cmp r4, #0\n\
        beq .L0800FB90\n\
        movs r0, #8\n\
        subs r0, r0, r2\n\
        cmp r0, r4\n\
        blo .L0800FB90\n\
        adds r0, r5, #4\n\
        subs r0, r7, r0\n\
        asrs r0, r0, #2\n\
        subs r2, r2, r0\n\
        mov ip, r2\n\
        adds r3, r7, #0\n\
        cmp ip, r4\n\
        bls .L0800FB3C\n\
        lsls r0, r4, #2\n\
        subs r6, r3, r0\n\
        adds r2, r6, #0\n\
        adds r1, r3, #0\n\
        cmp r6, r3\n\
        beq .L0800FB08\n\
    .L0800FAF8:\n\
        cmp r1, #0\n\
        beq .L0800FB00\n\
        ldr r0, [r2]\n\
        str r0, [r1]\n\
    .L0800FB00:\n\
        adds r2, #4\n\
        adds r1, #4\n\
        cmp r2, r3\n\
        bne .L0800FAF8\n\
    .L0800FB08:\n\
        ldr r0, [r5]\n\
        adds r0, r0, r4\n\
        str r0, [r5]\n\
        adds r2, r6, #0\n\
        subs r0, r2, r7\n\
        asrs r1, r0, #2\n\
        cmp r1, #0\n\
        ble .L0800FB26\n\
    .L0800FB18:\n\
        subs r3, #4\n\
        subs r2, #4\n\
        ldr r0, [r2]\n\
        str r0, [r3]\n\
        subs r1, #1\n\
        cmp r1, #0\n\
        bgt .L0800FB18\n\
    .L0800FB26:\n\
        adds r2, r7, #0\n\
        adds r0, r4, #0\n\
        cmp r0, #0\n\
        beq .L0800FB90\n\
        mov r3, r8\n\
        ldr r1, [r3]\n\
    .L0800FB32:\n\
        stm r2!, {r1}\n\
        subs r0, #1\n\
        cmp r0, #0\n\
        bne .L0800FB32\n\
        b .L0800FB90\n\
    .L0800FB3C:\n\
        mov r6, ip\n\
        subs r4, r4, r6\n\
        adds r2, r4, #0\n\
        adds r1, r3, #0\n\
        cmp r4, #0\n\
        beq .L0800FB5A\n\
    .L0800FB48:\n\
        cmp r1, #0\n\
        beq .L0800FB52\n\
        mov r6, r8\n\
        ldr r0, [r6]\n\
        str r0, [r1]\n\
    .L0800FB52:\n\
        subs r2, #1\n\
        adds r1, #4\n\
        cmp r2, #0\n\
        bne .L0800FB48\n\
    .L0800FB5A:\n\
        ldr r0, [r5]\n\
        adds r0, r0, r4\n\
        str r0, [r5]\n\
        lsls r0, r4, #2\n\
        adds r2, r7, #0\n\
        adds r1, r0, r3\n\
        cmp r7, r3\n\
        beq .L0800FB7A\n\
    .L0800FB6A:\n\
        cmp r1, #0\n\
        beq .L0800FB72\n\
        ldr r0, [r2]\n\
        str r0, [r1]\n\
    .L0800FB72:\n\
        adds r2, #4\n\
        adds r1, #4\n\
        cmp r2, r3\n\
        bne .L0800FB6A\n\
    .L0800FB7A:\n\
        ldr r0, [r5]\n\
        add r0, ip\n\
        str r0, [r5]\n\
        adds r0, r7, #0\n\
        cmp r0, r3\n\
        beq .L0800FB90\n\
        mov r2, r8\n\
        ldr r1, [r2]\n\
    .L0800FB8A:\n\
        stm r0!, {r1}\n\
        cmp r0, r3\n\
        bne .L0800FB8A\n\
    .L0800FB90:\n\
        mov r0, sp\n\
        bl __9ToolStack\n\
        mov r3, sp\n\
        str r3, [sp, #4]\n\
        ldr r2, [r5, #0x24]\n\
        cmp sl, r2\n\
        bhs .L0800FBCE\n\
        adds r1, r5, #0\n\
        adds r1, #0x28\n\
        mov r4, sl\n\
        lsls r0, r4, #1\n\
        adds r1, r1, r0\n\
        lsls r0, r2, #1\n\
        adds r0, #4\n\
        add r0, sb\n\
        adds r3, r0, #0\n\
        adds r2, r1, #0\n\
        mov r5, sb\n\
        ldr r4, [r5]\n\
        cmp r2, r3\n\
        beq .L0800FBC2\n\
    .L0800FBBC:\n\
        adds r2, #2\n\
        cmp r2, r3\n\
        bne .L0800FBBC\n\
    .L0800FBC2:\n\
        subs r0, r0, r1\n\
        asrs r0, r0, #1\n\
        subs r0, r4, r0\n\
        mov r6, sb\n\
        str r0, [r6]\n\
        b .L0800FCCA\n\
    .L0800FBCE:\n\
        mov r0, sl\n\
        subs r7, r0, r2\n\
        lsls r0, r2, #1\n\
        adds r0, #4\n\
        add r0, sb\n\
        mov sl, r0\n\
        cmp r7, #0\n\
        beq .L0800FCCA\n\
        movs r0, #8\n\
        subs r0, r0, r2\n\
        cmp r0, r7\n\
        blo .L0800FCCA\n\
        adds r0, r5, #0\n\
        adds r0, #0x28\n\
        mov r1, sl\n\
        subs r0, r1, r0\n\
        asrs r0, r0, #1\n\
        subs r2, r2, r0\n\
        mov r8, r2\n\
        mov r6, sl\n\
        cmp r8, r7\n\
        bls .L0800FC62\n\
        lsls r0, r7, #1\n\
        subs r0, r6, r0\n\
        mov r8, r0\n\
        mov r5, r8\n\
        adds r4, r6, #0\n\
        cmp r8, r6\n\
        beq .L0800FC1E\n\
    .L0800FC08:\n\
        cmp r4, #0\n\
        beq .L0800FC16\n\
        adds r0, r4, #0\n\
        adds r1, r5, #0\n\
        movs r2, #2\n\
        bl memcpy\n\
    .L0800FC16:\n\
        adds r5, #2\n\
        adds r4, #2\n\
        cmp r5, r6\n\
        bne .L0800FC08\n\
    .L0800FC1E:\n\
        mov r2, sb\n\
        ldr r0, [r2]\n\
        adds r0, r0, r7\n\
        str r0, [r2]\n\
        mov r5, r8\n\
        mov r3, sl\n\
        subs r0, r5, r3\n\
        asrs r4, r0, #1\n\
        cmp r4, #0\n\
        ble .L0800FC46\n\
    .L0800FC32:\n\
        subs r6, #2\n\
        subs r5, #2\n\
        adds r0, r6, #0\n\
        adds r1, r5, #0\n\
        movs r2, #2\n\
        bl memcpy\n\
        subs r4, #1\n\
        cmp r4, #0\n\
        bgt .L0800FC32\n\
    .L0800FC46:\n\
        mov r5, sl\n\
        adds r4, r7, #0\n\
        cmp r4, #0\n\
        beq .L0800FCCA\n\
    .L0800FC4E:\n\
        adds r0, r5, #0\n\
        ldr r1, [sp, #4]\n\
        movs r2, #2\n\
        bl memcpy\n\
        subs r4, #1\n\
        adds r5, #2\n\
        cmp r4, #0\n\
        bne .L0800FC4E\n\
        b .L0800FCCA\n\
    .L0800FC62:\n\
        mov r4, r8\n\
        subs r7, r7, r4\n\
        adds r5, r7, #0\n\
        adds r4, r6, #0\n\
        cmp r7, #0\n\
        beq .L0800FC84\n\
    .L0800FC6E:\n\
        cmp r4, #0\n\
        beq .L0800FC7C\n\
        adds r0, r4, #0\n\
        ldr r1, [sp, #4]\n\
        movs r2, #2\n\
        bl memcpy\n\
    .L0800FC7C:\n\
        subs r5, #1\n\
        adds r4, #2\n\
        cmp r5, #0\n\
        bne .L0800FC6E\n\
    .L0800FC84:\n\
        mov r5, sb\n\
        ldr r0, [r5]\n\
        adds r0, r0, r7\n\
        str r0, [r5]\n\
        lsls r0, r7, #1\n\
        mov r5, sl\n\
        adds r4, r0, r6\n\
        cmp sl, r6\n\
        beq .L0800FCAC\n\
    .L0800FC96:\n\
        cmp r4, #0\n\
        beq .L0800FCA4\n\
        adds r0, r4, #0\n\
        adds r1, r5, #0\n\
        movs r2, #2\n\
        bl memcpy\n\
    .L0800FCA4:\n\
        adds r5, #2\n\
        adds r4, #2\n\
        cmp r5, r6\n\
        bne .L0800FC96\n\
    .L0800FCAC:\n\
        mov r1, sb\n\
        ldr r0, [r1]\n\
        add r0, r8\n\
        str r0, [r1]\n\
        mov r4, sl\n\
        cmp r4, r6\n\
        beq .L0800FCCA\n\
    .L0800FCBA:\n\
        adds r0, r4, #0\n\
        ldr r1, [sp, #4]\n\
        movs r2, #2\n\
        bl memcpy\n\
        adds r4, #2\n\
        cmp r4, r6\n\
        bne .L0800FCBA\n\
    .L0800FCCA:\n\
        add sp, #8\n\
        pop {r3, r4, r5}\n\
        mov r8, r3\n\
        mov sb, r4\n\
        mov sl, r5\n\
        pop {r4, r5, r6, r7}\n\
        pop {r0}\n\
        bx r0");
}

#endif // NONMATCHING

RucksackItem & Rucksack::GetItemAt(u32 idx)
{
    return items[idx];
}

RucksackItem Rucksack::ExtractItemAt(u32 idx)
{
    if (!items[idx].IsEmpty())
    {
        RucksackItem result(items[idx]);
        items[idx] = RucksackItem();
        return result;
    }

    return RucksackItem();
}

RucksackItem Rucksack::CycleItemBack(RucksackItem item)
{
    return items.push_back(item);
}

RucksackItem Rucksack::CycleItemFront(RucksackItem item)
{
    return items.push_front(item);
}

u32 Rucksack::AddAmountOfFood(u32 food_id, u32 amount)
{
    typedef FixedVec<RucksackItem, 8>::iterator It;

    if ((int)food_id >= FOOD_NONE)
        return amount;

    It begin = items.begin();
    It end = items.end();

    for (It it = begin; amount > 0 && it != end; ++it)
    {
        if (it->IsEmpty())
        {
            *it = RucksackItem(Food(food_id));
            amount--;
        }
    }

    return amount;
}

u32 Rucksack::AddAmountOfArticle(u32 article_id, u32 amount)
{
    typedef FixedVec<RucksackItem, 8>::iterator It;

    if ((int)article_id >= ARTICLE_NONE)
        return amount;

    It begin = items.begin();
    It end = items.end();

    for (It it = begin; amount > 0 && it != end; ++it)
    {
        if (it->IsEmpty())
        {
            *it = RucksackItem(Article(article_id));
            amount--;
        }
    }

    return amount;
}

ToolStack & Rucksack::GetToolAt(u32 idx)
{
    return tools[idx];
}

ToolStack Rucksack::ExtractToolAt(u32 idx)
{
    if (!tools[idx].IsEmpty())
    {
        ToolStack result(tools[idx]);
        tools[idx] = ToolStack();
        return result;
    }

    return ToolStack();
}

ToolStack Rucksack::CycleToolBack(ToolStack tool_stack)
{
    return tools.push_back(tool_stack);
}

ToolStack Rucksack::CycleToolFront(ToolStack tool_stack)
{
    return tools.push_front(tool_stack);
}

u32 Rucksack::AddAmountOfTool(u32 tool_id, u32 amount)
{
    typedef FixedVec<ToolStack, 8>::iterator It;

    if ((int)tool_id >= TOOL_NONE)
        return amount;

    It begin = tools.begin();
    It end = tools.end();

    for (ToolStack * it = begin; amount > 0 && it != end; ++it)
    {
        if (it->IsEmpty())
        {
            u32 added = std::min<u32>(amount, ToolStack::MAX_AMOUNT);
            *it = ToolStack(Tool(tool_id), added);
            amount -= added;
        }
        else if (it->GetTool().GetId() == tool_id)
        {
            u32 added = std::min<u32>(amount, ToolStack::MAX_AMOUNT - it->GetAmount());
            it->AddAmount(added);
            amount -= added;
        }
    }

    return amount;
}
