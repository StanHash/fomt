#include "barn.hh"

#include <cstdlib>
#include <algorithm>

Barn::Barn()
    : upgrade_level(0),
      stored_bushel_count(0),
      unk_1_3(false),
      unk_1_4(false),
      stall_bushels(0),
      pregnancy_stall_bushels(0),
      unk_3_7(false),
      unk_cow_age(0),
      unk_sheep_age(0)
{
    fill_n_inl(pregnancy_stall_ent_idx, static_cast<int>(MAX_PREGNANCY_STALL_CAPACITY), -1);
}

Vec2 Barn::method_0800CE58(void)
{
    return Vec2(184, 272);
}

u32 Barn::GetUpgradeLevel(void) const
{
    return upgrade_level;
}

u32 Barn::GetStoredBushelCount(void) const
{
    return stored_bushel_count;
}

u32 Barn::GetCapacity(void) const
{
    return std::min<u32>(MAX_CAPACITY, 8 + upgrade_level * 8);
}

u32 Barn::GetPregnancyStallCapacity(void) const
{
    return 1 + upgrade_level;
}

bool Barn::HasBushelForStall(u32 ent_idx) const
{
    if (ent_idx < GetCapacity())
        return !!(stall_bushels & (1 << ent_idx));

    return false;
}

bool Barn::HasBushelForPregnancyStall(u32 pregnancy_stall_idx) const
{
    if (pregnancy_stall_idx < GetPregnancyStallCapacity())
        return !!(pregnancy_stall_bushels & (1 << pregnancy_stall_idx));

    return false;
}

bool Barn::method_0800CF00(void) const
{
    return unk_1_3;
}

bool Barn::method_0800CF08(void) const
{
    return unk_1_4;
}

Cow const * Barn::GetCow(u32 ent_idx) const
{
    if (ent_idx < GetCapacity())
        return ent[ent_idx].AsCow();

    return nullptr;
}

Sheep const * Barn::GetSheep(u32 ent_idx) const
{
    if (ent_idx < GetCapacity())
        return ent[ent_idx].AsSheep();

    return nullptr;
}

BarnAnimal const * Barn::GetBarnAnimal(u32 ent_idx) const
{
    if (ent_idx < GetCapacity())
        return ent[ent_idx].AsBarnAnimal();

    return nullptr;
}

int Barn::GetNextFreeStall(u32 ent_idx) const
{
    u32 capacity = GetCapacity();

    while (ent_idx < capacity)
    {
        if (ent[ent_idx].IsEmpty())
            return ent_idx;

        ent_idx++;
    }
    
    return -1;
}

u32 Barn::CountCows(void) const
{
    u32 capacity = GetCapacity();
    u32 result = 0;

    for (u32 idx = 0; idx < capacity; idx++)
    {
        if (ent[idx].AsCow() != nullptr)
            result++;
    }

    return result;
}

u32 Barn::CountSheeps(void) const
{
    u32 capacity = GetCapacity();
    u32 result = 0;

    for (u32 idx = 0; idx < capacity; idx++)
    {
        if (ent[idx].AsSheep() != nullptr)
            result++;
    }

    return result;
}

u32 Barn::CountBarnAnimals(void) const
{
    u32 capacity = GetCapacity();
    u32 result = 0;

    for (u32 idx = 0; idx < capacity; idx++)
    {
        if (!ent[idx].IsEmpty())
            result++;
    }

    return result;
}

int Barn::method_0800D058(void) const
{
    if (unk_3_7)
        return unk_4_0;

    return -1;
}

Vec2 Barn::method_0800D074(u32 ent_idx) const
{
    u32 capacity = GetCapacity();

    if (ent_idx >= capacity)
        ent_idx %= capacity;

    u32 x_off = (ent_idx % 4) * 40;

    return Vec2(
        (ent_idx < 8) ? 216 + x_off : 456 + x_off,
        (ent_idx % 8 < 4) ? 104 : 144);
}

Vec2 Barn::method_0800D0C0(u32 pregnancy_stall_idx) const
{
    return Vec2(0x20, 0x70 + 96 * pregnancy_stall_idx);
}

int Barn::GetFreePregnancyStall(void) const
{
    int free_count = GetCapacity() - CountBarnAnimals();

    if (free_count <= 0)
        return -1;

    int result = -1;

    u32 count = GetPregnancyStallCapacity();

    for (u32 i = 0; i < count; ++i)
    {
        if (pregnancy_stall_ent_idx[i] == -1)
        {
            if (result == -1)
                result = i;

            continue;
        }

        BarnAnimal const * barn_animal = ent[pregnancy_stall_ent_idx[i]].AsBarnAnimal();

        if (barn_animal == nullptr || !barn_animal->IsPregnant())
        {
            if (result == -1)
                result = i;

            continue;
        }

        free_count--;

        if (free_count <= 0)
            return -1;
    }

    return result;
}

bool Barn::IsReadyToGiveBirth(u32 pregnancy_stall_idx) const
{
    if (pregnancy_stall_idx < GetPregnancyStallCapacity())
    {
        int ent_idx = pregnancy_stall_ent_idx[pregnancy_stall_idx];

        if (ent_idx < 0 || ent_idx >= GetCapacity())
            return false;

        BarnAnimal const * barn_animal = ent[ent_idx].AsBarnAnimal();

        if (barn_animal != nullptr)
            return barn_animal->GetDaysPregnantHealthy() > 20 || barn_animal->GetDaysPregnant() >= 30;
    }

    return false;
}

int Barn::GetPregnancyStallLinkedStall(u32 pregnancy_stall_idx) const
{
    if (pregnancy_stall_idx < GetPregnancyStallCapacity())
        return pregnancy_stall_ent_idx[pregnancy_stall_idx];

    return -1;
}

Vec2 Barn::method_0800D1D8(u32 pregnancy_stall_idx) const
{
    Vec2 vec = method_0800D0C0(pregnancy_stall_idx);
    vec.x += 0x20;
    return vec;
}

u32 Barn::GetUnkCowAge(void) const
{
    return unk_cow_age;
}

char const * Barn::GetUnkCowName(void) const
{
    return unk_cow_name;
}

u32 Barn::GetUnkSheepAge(void) const
{
    return unk_sheep_age;
}

char const * Barn::GetUnkSheepName(void) const
{
    return unk_sheep_name;
}

void Barn::Upgrade(void)
{
    if (upgrade_level == 0)
        upgrade_level += 1;
}

void Barn::AddStoredBushels(u32 amount)
{
    stored_bushel_count = std::min<u32>(MAX_STORED_BUSHELS, stored_bushel_count + amount);
}

void Barn::SubtractStoredBushels(u32 amount)
{
    if (stored_bushel_count <= amount)
        stored_bushel_count = 0;
    else
        stored_bushel_count -= amount;
}

void Barn::SetBushelForStall(u32 ent_idx)
{
    if (ent_idx < GetCapacity())
    {
        if ((stall_bushels & (1 << ent_idx)) == 0)
            stall_bushels |= (1 << ent_idx);
    }
}

void Barn::ClearBushelForStall(u32 ent_idx)
{
    if (ent_idx < GetCapacity())
    {
        if ((stall_bushels & (1 << ent_idx)) != 0)
            stall_bushels &= ~(1 << ent_idx);
    }
}

void Barn::SetBushelForPregnancyStall(u32 pregnancy_stall_idx)
{
    if (pregnancy_stall_idx < GetPregnancyStallCapacity())
    {
        if ((pregnancy_stall_bushels & (1 << pregnancy_stall_idx)) == 0)
            pregnancy_stall_bushels |= (1 << pregnancy_stall_idx);
    }
}

void Barn::ClearBushelForPregnancyStall(u32 pregnancy_stall_idx)
{
    if (pregnancy_stall_idx < GetPregnancyStallCapacity())
    {
        if ((pregnancy_stall_bushels & (1 << pregnancy_stall_idx)) != 0)
            pregnancy_stall_bushels &= ~(1 << pregnancy_stall_idx);
    }
}

void Barn::method_0800D3A0(void)
{
    if (!unk_1_3)
        unk_1_3 = true;
}

void Barn::method_0800D3B8(void)
{
    if (!unk_1_4)
        unk_1_4 = true;
}

Cow * Barn::GetCow(u32 ent_idx)
{
    if (ent_idx < GetCapacity())
        return ent[ent_idx].AsCow();

    return nullptr;
}

Sheep * Barn::GetSheep(u32 ent_idx)
{
    if (ent_idx < GetCapacity())
        return ent[ent_idx].AsSheep();

    return nullptr;
}

BarnAnimal * Barn::GetBarnAnimal(u32 ent_idx)
{
    if (ent_idx < GetCapacity())
        return ent[ent_idx].AsBarnAnimal();

    return nullptr;
}

int Barn::InsertCow(Cow const & to_copy)
{
    for (int idx = GetNextFreeStall(0); idx >= 0; idx = GetNextFreeStall(idx + 1))
    {
        if (ent[idx].InsertCow(to_copy))
            return idx;
    }

    return -1;
}

int Barn::InsertSheep(Sheep const & to_copy)
{
    for (int idx = GetNextFreeStall(0); idx >= 0; idx = GetNextFreeStall(idx + 1))
    {
        if (ent[idx].InsertSheep(to_copy))
            return idx;
    }

    return -1;
}

void Barn::Remove(u32 ent_idx)
{
    ent[ent_idx].Remove();
}

void Barn::RemoveAndRememberUnk(u32 ent_idx)
{
    // for some reason variables here a duplicated

    BarnAnimal * barn_animal = GetBarnAnimal(ent_idx);
    BarnAnimal * barn_animal_2 = barn_animal;

    if (barn_animal != nullptr)
    {
        u32 age = barn_animal->GetAge();
        u32 age_2 = age;

        if (GetCow(ent_idx) != nullptr)
        {
            if (unk_cow_age < age)
            {
                unk_cow_age = age;
                unk_cow_name = barn_animal->GetName();
            }
        }
        else
        {
            if (unk_sheep_age < age_2)
            {
                unk_sheep_age = age_2;
                unk_sheep_name = barn_animal_2->GetName();
            }
        }

        Remove(ent_idx);
    }
}

static inline void SetAnimalPositionWithinBarn(BarnAnimal * barn_animal, Vec2 const & vec)
{
    barn_animal->SetLocation(ActorLocation(Location(0x25, vec.x, vec.y), 3));
}

void Barn::DayUpdate(void)
{
    u32 feed_count = popcnt(stall_bushels);
    stall_bushels = 0;

    feed_count += popcnt(pregnancy_stall_bushels);

    for (u32 capacity = GetPregnancyStallCapacity(), i = 0; i < capacity; ++i)
    {
        if (pregnancy_stall_ent_idx[i] < 0)
            continue;

        BarnAnimal * barn_animal = ent[pregnancy_stall_ent_idx[i]].AsBarnAnimal();
        BarnAnimal * barn_animal_2 = barn_animal;

        if (barn_animal == nullptr)
            continue;

        if (!barn_animal->IsPregnant())
            continue;

        if ((pregnancy_stall_bushels & (1 << i)) != 0)
        {
            feed_count--;
            barn_animal->SetFed();
        }

        Vec2 vec;
        vec = method_0800D0C0(i);
        SetAnimalPositionWithinBarn(barn_animal_2, vec);
    }

    pregnancy_stall_bushels = 0;

    for (u32 capacity = GetCapacity(), i = 0; i < capacity; ++i)
    {
        if (ent[i].IsEmpty())
            continue;

        Cow * cow = ent[i].AsCow();
        Sheep * sheep = ent[i].AsSheep();

        if (cow == nullptr && sheep == nullptr)
            continue;

        BarnAnimal * barn_animal = cow == nullptr ? sheep : cow;

        if (unk_3_7 && i == unk_4_0)
        {
            barn_animal->SetFed();
        }
        else
        {
            if (!barn_animal->HasBeenFed() && !barn_animal->IsPregnant() && feed_count != 0)
            {
                // TODO: what's up with that?
                if (Actor(*barn_animal).location.GetMap() == 0x25)
                {
                    feed_count--;
                    barn_animal->SetFed();
                }
            }
        }

        if (cow != nullptr)
            cow->DayUpdate();
        else
            sheep->DayUpdate();
    }
}

void Barn::method_0800D80C(u32 ent_idx)
{
    u32 capacity = GetCapacity();

    if (ent_idx >= capacity)
        ent_idx %= capacity;

    if (!ent[ent_idx].IsEmpty())
    {
        unk_3_7 = true;
        unk_4_0 = ent_idx;
    }
}

void Barn::method_0800D858(void)
{
    unk_3_7 = false;
}

void Barn::MoveToPregnancyStall(u32 pregnancy_stall_idx, u32 ent_idx)
{
    if (pregnancy_stall_idx < GetPregnancyStallCapacity() && ent_idx < GetCapacity())
    {
        struct BarnAnimal const * barn_animal = ent[ent_idx].AsBarnAnimal();

        if (barn_animal != nullptr && barn_animal->IsPregnant())
            pregnancy_stall_ent_idx[pregnancy_stall_idx] = ent_idx;
    }
}

int Barn::AttemptBirth(u32 pregnancy_stall_idx)
{
    Vec2 vec;

    if (!IsReadyToGiveBirth(pregnancy_stall_idx))
        return -1;

    int ent_idx = pregnancy_stall_ent_idx[pregnancy_stall_idx];
    pregnancy_stall_ent_idx[pregnancy_stall_idx] = -1;

    vec = method_0800D1D8(pregnancy_stall_idx);
    ActorLocation actor_location = ActorLocation(Location(0x25, vec.x, vec.y), 2);

    Cow * parent_cow = ent[ent_idx].AsCow();

    if (parent_cow != nullptr)
    {
        parent_cow->ResetPregnancy();

        Cow new_cow(actor_location, 0, 0);

        u32 max_new_affection = parent_cow->GetAffection() / 2;
        if (max_new_affection > 1)
            new_cow.AddAffection(rand() % max_new_affection);

        return InsertCow(new_cow);
    }

    Sheep * parent_sheep = ent[ent_idx].AsSheep();

    if (parent_sheep != nullptr)
    {
        parent_sheep->ResetPregnancy();

        Sheep new_sheep(actor_location, 0, 0);

        u32 max_new_affection = parent_sheep->GetAffection() / 2;
        if (max_new_affection > 1)
            new_sheep.AddAffection(rand() % max_new_affection);

        return InsertSheep(new_sheep);
    }

    return -1;
}

Barn::Ent::Ent(void)
    : occupied(false)
{
}

bool Barn::Ent::IsEmpty(void) const
{
    return !occupied;
}

BarnAnimal const * Barn::Ent::AsBarnAnimal(void) const
{
    return occupied
        ? reinterpret_cast<BarnAnimal const *>(&placeholder)
        : nullptr;
}

Cow const * Barn::Ent::AsCow(void) const
{
    return (occupied && kind == KIND_COW)
        ? reinterpret_cast<Cow const *>(&placeholder)
        : nullptr;
}

Sheep const * Barn::Ent::AsSheep(void) const
{
    return (occupied && kind == KIND_SHEEP)
        ? reinterpret_cast<Sheep const *>(&placeholder)
        : nullptr;
}

BarnAnimal * Barn::Ent::AsBarnAnimal(void)
{
    return occupied
        ? reinterpret_cast<BarnAnimal *>(&placeholder)
        : nullptr;
}

Cow * Barn::Ent::AsCow(void)
{
    return (occupied && kind == KIND_COW)
        ? reinterpret_cast<Cow *>(&placeholder)
        : nullptr;
}

Sheep * Barn::Ent::AsSheep(void)
{
    return (occupied && kind == KIND_SHEEP)
        ? reinterpret_cast<Sheep *>(&placeholder)
        : nullptr;
}

bool Barn::Ent::InsertCow(Cow const & to_copy)
{
    if (!occupied)
    {
        Cow * cow = reinterpret_cast<Cow *>(&placeholder);

        if (cow != nullptr)
            *cow = to_copy;

        kind = KIND_COW;
        occupied = true;

        return true;
    }

    return false;
}

bool Barn::Ent::InsertSheep(Sheep const & to_copy)
{
    if (!occupied)
    {
        Sheep * sheep = reinterpret_cast<Sheep *>(&placeholder);

        if (sheep != nullptr)
            *sheep = to_copy;

        kind = KIND_SHEEP;
        occupied = true;

        return true;
    }

    return false;
}

void Barn::Ent::Remove(void)
{
    if (occupied)
        occupied = false;
}
