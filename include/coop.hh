#ifndef COOP_HH
#define COOP_HH

#include "prelude.h"

#include "utility/vec2.hh"
#include "chicken.hh"
#include "placeholder.hh"

struct Coop
{
    // clang-format off

    enum { MAX_CAPACITY = 8 };
    enum { MAX_INCUBATOR_CAPACITY = 2 };
    enum { MAX_STORED_BUSHELS = 999 };

    // clang-format on

    struct Ent
    {
        Ent()
            : occupied(false)
        {
        }

        bool IsFree() const;
        Chicken const * GetChicken() const;
        Chicken * GetChicken();
        bool Insert(Chicken const & to_copy);
        void Remove();

        /* +00 */ bool occupied : 1;
        /* +04 */ Placeholder<Chicken> placeholder;
    };

    struct Egg
    {
        Egg()
            : location(MAP_NONE, 0, 0), quality(0)
        {
        }

        Egg(Location const & location, u32 quality)
            : location(location), quality(quality)
        {
        }

        /* +00 */ Location location;
        /* +06 */ u32 quality : 3;
    };

    struct Incubator
    {
        Incubator()
            : days_left(0), occupied(false)
        {
        }

        bool IsOccupied() const;
        u32 GetDaysLeft() const;
        bool ShouldHatch() SHOULD_BE(const);
        void BeginIncubation();
        void DayUpdate();
        void Remove();

        /* +00 */ u32 days_left : 2;
        /* +00 */ bool occupied : 1;
    };

    Coop();

    static Vec2 method_0800C554();

    u32 GetUpgradeLevel() const;
    u32 GetStoredBushelCount() const;
    u32 GetCapacity() const;
    bool HasBushelForEnt(u32 ent_idx) const;
    bool method_0800C5C4() const;
    Chicken const * GetChicken(u32 ent_idx) const;
    int GetNextFreeEnt(u32 ent_idx) const;
    u32 CountChickens() const;
    u32 GetIncubatorCapacity() const;
    bool IsIncubatorOccupied(u32 incubator_idx) const;
    Egg const * GetEgg(u32 ent_idx) const;
    int GetUnkEnt() const;
    Vec2 method_0800C6F0(u32 ent_idx) const;
    bool ShouldHatch(u32 incubator_idx) SHOULD_BE(const);
    Vec2 method_0800C748(u32 incubator_idx) const;
    u32 GetUnkAge() const;
    char const * GetUnkName() const;
    void Upgrade();
    void AddStoredBushels(u32 amount);
    void SubtractStoredBushels(u32 amount);
    void SetEntBushel(u32 ent_idx);
    void ClearEntBushel(u32 ent_idx);
    void method_0800C888();
    Chicken * GetChicken(u32 ent_idx);
    int InsertChicken(Chicken const & to_copy);
    void Remove(u32 ent_idx);
    void RemoveAndRememberUnk(u32 ent_idx);
    void BeginIncubation(u32 incubator_idx);
    void method_0800C9B8(u32 ent_idx);
    void DayUpdate();
    void method_0800CB7C(u32 ent_idx);
    void method_0800CBC0();
    int AttemptHatch(u32 incubator_idx);

    /* +000 */ u8 upgrade_level : 1;
    /* +000 */ u32 stored_bushel_count : 10;
    /* +001 */ bool unk_001_3 : 1;           // unk
    /* +001 */ u32 unk_001_4 : MAX_CAPACITY; // feed
    /* +002 */ bool unk_002_4 : 1;
    /* +002 */ u32 unk_002_5 : 3;
    /* +003 */ u32 unk_003_0 : 10; // unk chicken age
    /* +008 */ FixedStr<12> unk_chicken_name;
    /* +018 */ Ent ent[MAX_CAPACITY];
    /* +198 */ Egg egg[MAX_CAPACITY];
    /* +1D8 */ Incubator incubator[MAX_INCUBATOR_CAPACITY];
};

#endif // COOP_HH
