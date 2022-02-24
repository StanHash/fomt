#include "chicken.hh"

#include "placeholder.hh"

struct CoopEnt
{
    bool IsFree(void) const;
    Chicken const * GetChicken(void) const;
    Chicken * GetChicken(void);
    bool Insert(Chicken const & to_copy);
    void Remove(void);

    /* +00 */ bool occupied : 1;
    /* +04 */ Placeholder<Chicken> placeholder;
};

struct CoopIncubator
{
    bool IsOccupied(void) const;
    u32 GetDaysLeft(void) const;
    bool ShouldHatch(void) SHOULD_BE_CONST;
    void BeginIncubation(void);
    void DayUpdate(void);
    void Remove(void);

    /* +00 */ u32 days_left : 2;
    /* +00 */ bool occupied : 1;
};

bool CoopEnt::IsFree(void) const
{
    return !occupied;
}

Chicken const * CoopEnt::GetChicken(void) const
{
    return !occupied ? nullptr : reinterpret_cast<Chicken const *>(&placeholder);
}

Chicken * CoopEnt::GetChicken(void)
{
    return !occupied ? nullptr : reinterpret_cast<Chicken *>(&placeholder);
}

bool CoopEnt::Insert(Chicken const & to_copy)
{
    if (!occupied)
    {
        Chicken * chicken = reinterpret_cast<Chicken *>(&placeholder);

        if (chicken != nullptr)
            *chicken = to_copy;

        occupied = true;

        return true;
    }

    return false;
}

void CoopEnt::Remove(void)
{
    if (occupied)
        occupied = false;
}

bool CoopIncubator::IsOccupied(void) const
{
    return occupied;
}

u32 CoopIncubator::GetDaysLeft(void) const
{
    return occupied ? days_left : 0;
}

bool CoopIncubator::ShouldHatch(void) SHOULD_BE_CONST
{
    return occupied && days_left == 0;
}

void CoopIncubator::BeginIncubation(void)
{
    occupied = true;
    days_left = 3;
}

void CoopIncubator::DayUpdate(void)
{
    if (days_left > 0)
        days_left--;
}

void CoopIncubator::Remove(void)
{
    occupied = false;
}
