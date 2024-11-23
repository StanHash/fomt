#ifndef BARN_HH
#define BARN_HH

#include "prelude.h"

#include "utility/fixed_str.hh"
#include "utility/vec2.hh"
#include "placeholder.hh"
#include "sheep.hh"
#include "cow.hh"

struct Barn
{
    // clang-format off

    enum { MAX_CAPACITY = 16 };
    enum { MAX_PREGNANCY_STALL_CAPACITY = 2 };
    enum { MAX_STORED_BUSHELS = 999 };

    // clang-format on

    struct Ent
    {
        enum Kind
        {
            KIND_SHEEP,
            KIND_COW,
        };

        Ent();

        bool IsEmpty() const;
        BarnAnimal const * AsBarnAnimal() const;
        Cow const * AsCow() const;
        Sheep const * AsSheep() const;
        BarnAnimal * AsBarnAnimal();
        Cow * AsCow();
        Sheep * AsSheep();
        bool InsertCow(Cow const & to_copy);
        bool InsertSheep(Sheep const & to_copy);
        void Remove();

        /* +00 */ bool occupied : 1;
        /* +00 */ Kind kind : 1;
        /* +04 */ PlaceholderEither<Sheep, Cow> placeholder;
    };

    Barn();

    static Vec2 method_0800CE58();

    u32 GetUpgradeLevel() const;
    u32 GetStoredBushelCount() const;
    u32 GetCapacity() const;
    u32 GetPregnancyStallCapacity() const;
    bool HasBushelForStall(u32 ent_idx) const;
    bool HasBushelForPregnancyStall(u32 pregnancy_stall_idx) const;
    bool method_0800CF00() const;
    bool method_0800CF08() const;
    Cow const * GetCow(u32 ent_idx) const;
    Sheep const * GetSheep(u32 ent_idx) const;
    BarnAnimal const * GetBarnAnimal(u32 ent_idx) const;
    int GetNextFreeStall(u32 ent_idx) const;
    u32 CountCows() const;
    u32 CountSheeps() const;
    u32 CountBarnAnimals() const;
    int method_0800D058() const;
    Vec2 method_0800D074(u32 ent_idx) const;
    Vec2 method_0800D0C0(u32 pregnancy_stall_idx) const;
    int GetFreePregnancyStall() const;
    bool IsReadyToGiveBirth(u32 pregnancy_stall_idx) const;
    int GetPregnancyStallLinkedStall(u32 pregnancy_stall_idx) const;
    Vec2 method_0800D1D8(u32 pregnancy_stall_idx) const;
    u32 GetUnkCowAge() const;
    char const * GetUnkCowName() const;
    u32 GetUnkSheepAge() const;
    char const * GetUnkSheepName() const;
    void Upgrade();
    void AddStoredBushels(u32 amount);
    void SubtractStoredBushels(u32 amount);
    void SetBushelForStall(u32 ent_idx);
    void ClearBushelForStall(u32 ent_idx);
    void SetBushelForPregnancyStall(u32 pregnancy_stall_idx);
    void ClearBushelForPregnancyStall(u32 pregnancy_stall_idx);
    void method_0800D3A0();
    void method_0800D3B8();
    Cow * GetCow(u32 ent_idx);
    Sheep * GetSheep(u32 ent_idx);
    BarnAnimal * GetBarnAnimal(u32 ent_idx);
    int InsertCow(Cow const & to_copy);
    int InsertSheep(Sheep const & to_copy);
    void Remove(u32 ent_idx);
    void RemoveAndRememberUnk(u32 ent_idx);
    void DayUpdate();
    void method_0800D80C(u32 ent_idx);
    void method_0800D858();
    void MoveToPregnancyStall(u32 pregnancy_stall_idx, u32 ent_idx);
    int AttemptBirth(u32 pregnancy_stall_idx);

    /* +00 */ u32 upgrade_level : 1;
    /* +00 */ u32 stored_bushel_count : 10;
    /* +01 */ bool unk_1_3 : 1;
    /* +01 */ bool unk_1_4 : 1;
    /* +01 */ u32 stall_bushels : MAX_CAPACITY;
    /* +03 */ u32 pregnancy_stall_bushels : MAX_PREGNANCY_STALL_CAPACITY;
    /* +03 */ bool unk_3_7 : 1;
    /* +04 */ u32 unk_4_0 : 4;
    /* +04 */ u32 unk_cow_age : 10;
    /* +05 */ u32 unk_sheep_age : 10;
    /* +07 */ i8 pregnancy_stall_ent_idx[MAX_PREGNANCY_STALL_CAPACITY];
    /* +0C */ FixedStr<12> unk_cow_name;
    /* +1C */ FixedStr<12> unk_sheep_name;
    /* +2C */ Ent ent[MAX_CAPACITY];
};

#endif // BARN_HH
