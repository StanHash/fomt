#include "furniture.hh"

#include <iterator>
#include <algorithm>

ToolChest::ToolChest()
{
    ToolStack * row;

    row = contents + 0;
    row[0] = ToolStack(Tool(TOOL_IRON_SICKLE), 1);
    row[1] = ToolStack(Tool(TOOL_IRON_AXE), 1);

    row = contents + 2;
    row[0] = ToolStack(Tool(TOOL_IRON_HOE), 1);
    row[1] = ToolStack(Tool(TOOL_IRON_HAMMER), 1);

    row = contents + 4;
    row[0] = ToolStack(Tool(TOOL_WATERING_CAN), 1);
    row[1] = ToolStack(Tool(TOOL_PEDOMETER), 1);
}

ToolStack const * ToolChest::GetToolStackAt(u32 idx) const
{
    return contents + idx;
}

u32 ToolChest::GetAvailableSpaceFor(u32 tool_id) const
{
    u32 result = 0;

    ToolStack const * beg = contents;
    ToolStack const * end = contents + CAPACITY;

    for (ToolStack const * it = beg; it != end; ++it)
    {
        if (it->IsEmpty())
        {
            result += ToolStack::MAX_AMOUNT;
            continue;
        }

        if (it->GetTool().GetId() == tool_id)
        {
            result += ToolStack::MAX_AMOUNT - it->GetAmount();
        }
    }

    return result;
}

u32 ToolChest::GetAmountOf(u32 tool_id) const
{
    u32 result = 0;

    ToolStack const * beg = contents;
    ToolStack const * end = contents + CAPACITY;

    for (ToolStack const * it = beg; it != end; ++it)
    {
        if (it->IsEmpty())
        {
            continue;
        }

        if (it->GetTool().GetId() == tool_id)
        {
            result += it->GetAmount();
        }
    }

    return result;
}

u32 ToolChest::GetFirstFreeSlot() const
{
    u32 idx = 0;

    ToolStack const * beg = contents;
    ToolStack const * end = contents + CAPACITY;

    for (ToolStack const * it = beg; it != end; ++it, ++idx)
    {
        if (it->IsEmpty())
            return idx;
    }

    return static_cast<u32>(-1);
}

u32 ToolChest::GetLastFreeSlot() const
{
    typedef std::reverse_iterator<ToolStack const *> It;

    u32 idx = CAPACITY - 1;

    It dummy_a, end(contents);
    It dummy_b, it(contents + CAPACITY);

    for (; it != end; ++it, --idx)
    {
        if (it->IsEmpty())
            return idx;
    }

    return static_cast<u32>(-1);
}

u32 ToolChest::GetFirstSlotWith(u32 tool_id) const
{
    u32 idx = 0;

    ToolStack const * beg = contents;
    ToolStack const * end = contents + CAPACITY;

    for (ToolStack const * it = beg; it != end; ++it, ++idx)
    {
        if (it->IsEmpty())
            continue;

        if (it->GetTool().GetId() == tool_id)
            return idx;
    }

    return static_cast<u32>(-1);
}

ToolStack * ToolChest::GetToolStackAt(u32 idx)
{
    return contents + idx;
}

u32 ToolChest::AddAmountOf(u32 tool_id, u32 amount)
{
    if ((int)tool_id >= TOOL_NONE)
        return amount;

    ToolStack * beg = contents;
    ToolStack * end = contents + CAPACITY;

    for (ToolStack * it = beg; amount != 0 && it != end; ++it)
    {
        if (it->IsEmpty())
        {
            u32 amt = std::min<u32>(amount, ToolStack::MAX_AMOUNT);
            *it = ToolStack(Tool(tool_id), amt);
            amount -= amt;
        }
        else if (it->GetTool().GetId() == tool_id)
        {
            u32 amt = std::min<u32>(amount, ToolStack::MAX_AMOUNT - it->GetAmount());
            it->AddAmount(amt);
            amount -= amt;
        }
    }

    return amount;
}
