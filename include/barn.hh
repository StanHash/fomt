#pragma once

#include "global.h"

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

    /* +00 */ bool occupied : 1;
    /* +00 */ Kind kind : 1;
    /* +04 */ DataEither<Sheep, Cow> data;
};

// TODO: figure out
struct Unk_0800CE58
{
    Unk_0800CE58(u32 a_x, u32 a_y)
        : x(a_x), y(a_y)
    {
    }

    /* +00 */ u16 x;
    /* +02 */ u16 y;
};

struct Barn
{
    Barn(void);

    Unk_0800CE58 method_0800CE58(void) const;
    u32 GetUpgradeLevel(void) const;
    u32 GetBushelCount(void) const;
    u32 GetCapacity(void) const;

    /* +00 */ u32 unk_0_0 : 1;
    /* +00 */ u32 unk_0_1 : 10; // Bushels
    /* +01 */ bool unk_1_3 : 1;
    /* +01 */ bool unk_1_4 : 1;
    /* +01 */ u32 unk_1_5 : 16;
    /* +03 */ u32 unk_3_5 : 2;
    /* +03 */ bool unk_3_7 : 1;
    /* +04 */ u32 unk_4_0 : 4;
    /* +04 */ u32 unk_4_4 : 10;
    /* +05 */ u32 unk_5_6 : 10;
    /* +07 */ i8 unk_07[2];
    /* +0C */ u32 unk_0C[4]; // str?
    /* +1C */ u32 unk_1C[4]; // str?
    /* +2C */ BarnEnt slots[16];
};
