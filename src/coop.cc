#include "coop.hh"

#include <cstdlib>
#include <algorithm>

Coop::Coop(void)
    : upgrade_level(0),
      stored_bushel_count(0),
      unk_001_3(false),
      unk_001_4(0),
      unk_002_4(false),
      unk_003_0(0)
{
}

Vec2 Coop::method_0800C554(void)
{
    return Vec2(0x78, 0xD8);
}

u32 Coop::GetUpgradeLevel(void) const
{
    return upgrade_level;
}

u32 Coop::GetStoredBushelCount(void) const
{
    return stored_bushel_count;
}

u32 Coop::GetCapacity(void) const
{
    return std::min<u32>(MAX_CAPACITY, 4 + upgrade_level * 4);
}

bool Coop::HasBushelForEnt(u32 ent_idx) const
{
    if (ent_idx < GetCapacity())
        return !!(unk_001_4 & (1 << ent_idx));

    return false;
}

bool Coop::method_0800C5C4(void) const
{
    return unk_001_3;
}

Chicken const * Coop::GetChicken(u32 ent_idx) const
{
    if (ent_idx < GetCapacity())
        return ent[ent_idx].GetChicken();

    return nullptr;
}

int Coop::GetNextFreeEnt(u32 ent_idx) const
{
    u32 capacity = GetCapacity();

    while (ent_idx < capacity)
    {
        if (ent[ent_idx].IsFree())
            return ent_idx;

        ent_idx++;
    }

    return -1;
}

u32 Coop::CountChickens(void) const
{
    u32 capacity = GetCapacity();
    u32 result = 0;

    for (u32 idx = 0; idx < capacity; idx++)
    {
        if (ent[idx].GetChicken() != nullptr)
            result++;
    }

    return result;
}

u32 Coop::GetIncubatorCapacity(void) const
{
    return upgrade_level == 0 ? 1 : 2;
}

bool Coop::IsIncubatorOccupied(u32 incubator_idx) const
{
    if (incubator_idx < GetIncubatorCapacity())
    {
        return incubator[incubator_idx].IsOccupied();
    }

    return false;
}

Coop::Egg const * Coop::GetEgg(u32 ent_idx) const
{
    if (ent_idx < GetCapacity())
    {
        if (egg[ent_idx].location.map < 0x234)
            return &egg[ent_idx];
    }

    return nullptr;
}

int Coop::GetUnkEnt(void) const
{
    if (unk_002_4)
        return unk_002_5;

    return -1;
}

Vec2 Coop::method_0800C6F0(u32 ent_idx) const
{
    u32 capacity = GetCapacity();

    if (ent_idx >= capacity)
        ent_idx %= capacity;

    u32 x_off = ent_idx * 24;

    return Vec2(136 + x_off, 96);
}

bool Coop::ShouldHatch(u32 incubator_idx) SHOULD_BE_CONST
{
    if (incubator_idx < GetIncubatorCapacity())
        return incubator[incubator_idx].ShouldHatch();

    return false;
}

Vec2 Coop::method_0800C748(u32 incubator_idx) const
{
    return Vec2(40, 152 - 32 * incubator_idx);
}

u32 Coop::GetUnkAge(void) const
{
    return unk_003_0;
}

char const * Coop::GetUnkName(void) const
{
    return unk_chicken_name;
}

void Coop::Upgrade(void)
{
    if (upgrade_level == 0)
        upgrade_level += 1;
}

void Coop::AddStoredBushels(u32 amount)
{
    stored_bushel_count = std::min<u32>(MAX_STORED_BUSHELS, stored_bushel_count + amount);
}

void Coop::SubtractStoredBushels(u32 amount)
{
    if (stored_bushel_count <= amount)
        stored_bushel_count = 0;
    else
        stored_bushel_count -= amount;
}

void Coop::SetEntBushel(u32 ent_idx)
{
    if (ent_idx < GetCapacity())
    {
        if ((unk_001_4 & (1 << ent_idx)) == 0)
            unk_001_4 |= (1 << ent_idx);
    }
}

void Coop::ClearEntBushel(u32 ent_idx)
{
    if (ent_idx < GetCapacity())
    {
        if ((unk_001_4 & (1 << ent_idx)) != 0)
            unk_001_4 &= ~(1 << ent_idx);
    }
}

void Coop::method_0800C888(void)
{
    unk_001_3 = true;
}

Chicken * Coop::GetChicken(u32 ent_idx)
{
    if (ent_idx < GetCapacity())
        return ent[ent_idx].GetChicken();

    return nullptr;
}

int Coop::InsertChicken(Chicken const & to_copy)
{
    for (int idx = GetNextFreeEnt(0); idx >= 0; idx = GetNextFreeEnt(idx + 1))
    {
        if (ent[idx].Insert(to_copy))
            return idx;
    }

    return -1;
}

void Coop::Remove(u32 ent_idx)
{
    if (ent_idx < GetCapacity())
    {
        ent[ent_idx].Remove();
    }
}

void Coop::RemoveAndRememberUnk(u32 ent_idx)
{
    Chicken * chicken = GetChicken(ent_idx);

    if (chicken != nullptr)
    {
        u32 age = chicken->GetAge();

        if (unk_003_0 < age)
        {
            unk_003_0 = age;
            unk_chicken_name = chicken->GetName();
        }

        Remove(ent_idx);
    }
}

void Coop::BeginIncubation(u32 incubator_idx)
{
    if (incubator_idx < GetIncubatorCapacity())
    {
        incubator[incubator_idx].BeginIncubation();
    }
}

void Coop::method_0800C9B8(u32 ent_idx)
{
    if (ent_idx < GetCapacity())
    {
        egg[ent_idx].location.map = 0x234;
    }
}

void Coop::DayUpdate(void)
{
    u32 feed_count = popcnt(unk_001_4);
    unk_001_4 = 0;

    for (u32 capacity = GetCapacity(), i = 0; i < capacity; ++i)
    {
        if (ent[i].IsFree())
            continue;

        Chicken * chicken = ent[i].GetChicken();

        if (chicken == nullptr)
            continue;

        if ((unk_002_4 && i == unk_002_5))
        {
            goto l_chicken_set_fed;
        }
        else if (!chicken->HasBeenFed())
        {
            if (chicken->GetGrowthStage() == Chicken::STAGE_0)
            {
            l_chicken_set_fed:
                chicken->SetFed();
            }
            else if (feed_count != 0)
            {
                // TODO: what's up with that?
                if (Actor(*chicken).location.GetMap() == 0x11)
                {
                    feed_count--;
                    chicken->SetFed();
                }
            }
        }

        chicken->DayUpdate();

        if (chicken->method_0809BCC0())
        {
            egg[i] = Egg(Actor(*chicken).location, chicken->ConsumeProduct());
        }
    }

    for (u32 capacity = GetIncubatorCapacity(), i = 0; i < capacity; ++i)
    {
        if (incubator[i].IsOccupied())
            incubator[i].DayUpdate();
    }
}

void Coop::method_0800CB7C(u32 ent_idx)
{
    u32 capacity = GetCapacity();

    if (ent_idx >= capacity)
        ent_idx %= capacity;

    if (!ent[ent_idx].IsFree())
    {
        unk_002_4 = true;
        unk_002_5 = ent_idx;
    }
}

void Coop::method_0800CBC0(void)
{
    unk_002_4 = false;
}

int Coop::AttemptHatch(u32 incubator_idx)
{
    if (ShouldHatch(incubator_idx))
    {
        incubator[incubator_idx].Remove();

        Vec2 vec;
        vec = method_0800C748(incubator_idx);

        ActorLocation actor_location(Location(0x11, vec.x, vec.y), 3);

        Chicken new_chicken(actor_location, 0, 0);
        new_chicken.AddAffection(rand() % 10);

        return InsertChicken(new_chicken);
    }

    return -1;
}

bool Coop::Ent::IsFree(void) const
{
    return !occupied;
}

Chicken const * Coop::Ent::GetChicken(void) const
{
    return !occupied ? nullptr : reinterpret_cast<Chicken const *>(&placeholder);
}

Chicken * Coop::Ent::GetChicken(void)
{
    return !occupied ? nullptr : reinterpret_cast<Chicken *>(&placeholder);
}

bool Coop::Ent::Insert(Chicken const & to_copy)
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

void Coop::Ent::Remove(void)
{
    if (occupied)
        occupied = false;
}

bool Coop::Incubator::IsOccupied(void) const
{
    return occupied;
}

u32 Coop::Incubator::GetDaysLeft(void) const
{
    return occupied ? days_left : 0;
}

bool Coop::Incubator::ShouldHatch(void) SHOULD_BE_CONST
{
    return occupied && days_left == 0;
}

void Coop::Incubator::BeginIncubation(void)
{
    occupied = true;
    days_left = 3;
}

void Coop::Incubator::DayUpdate(void)
{
    if (days_left > 0)
        days_left--;
}

void Coop::Incubator::Remove(void)
{
    occupied = false;
}
