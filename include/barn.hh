#pragma once

#include "global.h"

#include "fixed_str.hh"
#include "placeholder.hh"
#include "sheep.hh"
#include "cow.hh"

// TODO: move out
struct Vec2
{
    Vec2() {}
    Vec2(u32 a_x, u32 a_y)
        : x(a_x), y(a_y)
    {
    }

    /* +00 */ i16 x;
    /* +02 */ i16 y;
};

struct Barn
{
    struct Ent
    {
        enum Kind
        {
            KIND_SHEEP,
            KIND_COW,
        };

        Ent(void);

        bool IsEmpty(void) const;
        BarnAnimal const * AsBarnAnimal(void) const;
        Cow const * AsCow(void) const;
        Sheep const * AsSheep(void) const;
        BarnAnimal * AsBarnAnimal(void);
        Cow * AsCow(void);
        Sheep * AsSheep(void);
        bool InsertCow(Cow const & to_copy);
        bool InsertSheep(Sheep const & to_copy);
        void Remove(void);

        /* +00 */ bool occupied : 1;
        /* +00 */ Kind kind : 1;
        /* +04 */ PlaceholderEither<Sheep, Cow> placeholder;
    };

    Barn(void);

    static Vec2 method_0800CE58(void);

    u32 GetUpgradeLevel(void) const;
    u32 GetStoredBushelCount(void) const;
    u32 GetCapacity(void) const;
    u32 GetPregnancyStallCapacity(void) const;
    bool HasBushelForStall(u32 ent_idx) const;
    bool HasBushelForPregnancyStall(u32 pregnancy_stall_idx) const;
    bool method_0800CF00(void) const;
    bool method_0800CF08(void) const;
    Cow const * GetCow(u32 ent_idx) const;
    Sheep const * GetSheep(u32 ent_idx) const;
    BarnAnimal const * GetBarnAnimal(u32 ent_idx) const;
    int GetNextFreeStall(u32 ent_idx) const;
    u32 CountCows(void) const;
    u32 CountSheeps(void) const;
    u32 CountBarnAnimals(void) const;
    int method_0800D058(void) const;
    Vec2 method_0800D074(u32 ent_idx) const;
    Vec2 method_0800D0C0(u32 pregnancy_stall_idx) const;
    int GetFreePregnancyStall(void) const;
    bool IsReadyToGiveBirth(u32 pregnancy_stall_idx) const;
    int GetPregnancyStallLinkedStall(u32 pregnancy_stall_idx) const;
    Vec2 method_0800D1D8(u32 pregnancy_stall_idx) const;
    u32 GetUnkCowAge(void) const;
    char const * GetUnkCowName(void) const;
    u32 GetUnkSheepAge(void) const;
    char const * GetUnkSheepName(void) const;
    void Upgrade(void);
    void AddStoredBushels(u32 amount);
    void SubtractStoredBushels(u32 amount);
    void SetBushelForStall(u32 ent_idx);
    void ClearBushelForStall(u32 ent_idx);
    void SetBushelForPregnancyStall(u32 pregnancy_stall_idx);
    void ClearBushelForPregnancyStall(u32 pregnancy_stall_idx);
    void method_0800D3A0(void);
    void method_0800D3B8(void);
    Cow * GetCow(u32 ent_idx);
    Sheep * GetSheep(u32 ent_idx);
    BarnAnimal * GetBarnAnimal(u32 ent_idx);
    int InsertCow(Cow const & to_copy);
    int InsertSheep(Sheep const & to_copy);
    void Remove(u32 ent_idx);
    void RemoveAndRememberUnk(u32 ent_idx);
    void DayUpdate(void);
    void method_0800D80C(u32 ent_idx);
    void method_0800D858(void);
    void MoveToPregnancyStall(u32 pregnancy_stall_idx, u32 ent_idx);
    int AttemptBirth(u32 pregnancy_stall_idx);

    /* +00 */ u32 upgrade_level : 1;
    /* +00 */ u32 stored_bushel_count : 10;
    /* +01 */ bool unk_1_3 : 1;
    /* +01 */ bool unk_1_4 : 1;
    /* +01 */ u32 stall_bushels : 16;
    /* +03 */ u32 pregnancy_stall_bushels : 2;
    /* +03 */ bool unk_3_7 : 1;
    /* +04 */ u32 unk_4_0 : 4;
    /* +04 */ u32 unk_cow_age : 10;
    /* +05 */ u32 unk_sheep_age : 10;
    /* +07 */ i8 pregnancy_stall_ent_idx[2];
    /* +0C */ FixedStr<12> unk_cow_name;
    /* +1C */ FixedStr<12> unk_sheep_name;
    /* +2C */ Ent ent[16];
};
