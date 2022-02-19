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

struct Barn
{
    Barn(void);

    /* +00 */ u32 unk_0_0 : 1;
    /* +00 */ u32 unk_0_1 : 10; // Bushels
    /* +01 */ u32 unk_1_3 : 1;
    /* +01 */ u32 unk_1_4 : 1;
    /* +01 */ u32 unk_1_5 : 16;
    /* +03 */ u32 unk_3_5 : 2;
    /* +03 */ bool unk_3_7 : 1;
    /* +04 */ u32 unk_4_0 : 4;
    /* +05 */ u8 pad_05[0x07 - 0x05];
    /* +07 */ i8 unk_07[2];
    /* +0C */ u32 padding[8];
    /* +2C */ BarnEnt slots[16];
};
