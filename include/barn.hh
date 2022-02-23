#pragma once

#include "global.h"

#include "fixed_str.hh"
#include "sheep.hh"
#include "cow.hh"

// TODO: move to own header
template<typename InnerA, typename InnerB, typename AlignType = u32>
struct DataEither
{
    /* +00 */ AlignType _[(CONST_MAX(sizeof(InnerA), sizeof(InnerB)) + sizeof(AlignType) - 1) / sizeof(AlignType)];
};

struct BarnEnt
{
    enum Kind
    {
        KIND_SHEEP,
        KIND_COW,
    };

    BarnEnt();

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
    /* +04 */ DataEither<Sheep, Cow> data;
};

// TODO: figure out
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
    Barn(void);

    static Vec2 method_0800CE58(void);

    u32 GetUpgradeLevel(void) const;
    u32 GetBushelCount(void) const;
    u32 GetCapacity(void) const;
    u32 GetPregnancyStallCapacity(void) const;

    int AttemptBirth(u32 pregnancy_stall_idx);

    /* +00 */ u32 unk_0_0 : 1; // upgrade level
    /* +00 */ u32 unk_0_1 : 10; // bushel count
    /* +01 */ bool unk_1_3 : 1;
    /* +01 */ bool unk_1_4 : 1;
    /* +01 */ u32 unk_1_5 : 16; // regular stall bushels
    /* +03 */ u32 unk_3_5 : 2; // pregnancy stall bushels
    /* +03 */ bool unk_3_7 : 1;
    /* +04 */ u32 unk_4_0 : 4;
    /* +04 */ u32 unk_4_4 : 10; // unk cow age
    /* +05 */ u32 unk_5_6 : 10; // unk sheep age
    /* +07 */ i8 unk_07[2];
    /* +0C */ FixedStr<12> unk_0C; // unk cow name
    /* +1C */ FixedStr<12> unk_1C; // unk sheep name
    /* +2C */ BarnEnt slots[16];
};
