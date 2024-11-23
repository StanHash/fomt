#include "furniture.hh"

#include <iterator>
#include <algorithm>

Fridge::Fridge() {}

FoodStack const * Fridge::GetFoodStackAt(u32 idx) const
{
    return contents + idx;
}

u32 Fridge::GetAvailableSpaceFor(u32 food_id) const
{
    u32 result = 0;

    FoodStack const * beg = contents;
    FoodStack const * end = contents + CAPACITY;

    for (FoodStack const * it = beg; it != end; ++it)
    {
        if (it->IsEmpty())
        {
            result += FoodStack::MAX_AMOUNT;
            continue;
        }

        if (it->GetFood().GetId() == food_id)
        {
            result += FoodStack::MAX_AMOUNT - it->GetAmount();
        }
    }

    return result;
}

u32 Fridge::GetAmountOf(u32 food_id) const
{
    u32 result = 0;

    FoodStack const * beg = contents;
    FoodStack const * end = contents + CAPACITY;

    for (FoodStack const * it = beg; it != end; ++it)
    {
        if (it->IsEmpty())
        {
            continue;
        }

        if (it->GetFood().GetId() == food_id)
        {
            result += it->GetAmount();
        }
    }

    return result;
}

u32 Fridge::GetFirstFreeSlot() const
{
    u32 idx = 0;

    FoodStack const * beg = contents;
    FoodStack const * end = contents + CAPACITY;

    for (FoodStack const * it = beg; it != end; ++it, ++idx)
    {
        if (it->IsEmpty())
            return idx;
    }

    return static_cast<u32>(-1);
}

u32 Fridge::GetLastFreeSlot() const
{
    typedef std::reverse_iterator<FoodStack const *> It;

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

u32 Fridge::GetFirstSlotWith(u32 food_id) const
{
    u32 idx = 0;

    FoodStack const * beg = contents;
    FoodStack const * end = contents + CAPACITY;

    for (FoodStack const * it = beg; it != end; ++it, ++idx)
    {
        if (it->IsEmpty())
            continue;

        if (it->GetFood().GetId() == food_id)
            return idx;
    }

    return static_cast<u32>(-1);
}

FoodStack * Fridge::GetFoodStackAt(u32 idx)
{
    return contents + idx;
}

u32 Fridge::AddAmountOf(u32 food_id, u32 amount)
{
    if ((int)food_id >= FOOD_NONE)
        return amount;

    FoodStack * beg = contents;
    FoodStack * end = contents + CAPACITY;

    for (FoodStack * it = beg; amount != 0 && it != end; ++it)
    {
        if (it->IsEmpty())
        {
            u32 amt = std::min<u32>(amount, FoodStack::MAX_AMOUNT);
            *it = FoodStack(Food(food_id), amt);
            amount -= amt;
        }
        else if (it->GetFood().GetId() == food_id)
        {
            u32 amt = std::min<u32>(amount, FoodStack::MAX_AMOUNT - it->GetAmount());
            it->AddAmount(amt);
            amount -= amt;
        }
    }

    return amount;
}
