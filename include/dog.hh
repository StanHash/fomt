#pragma once

#include "pet.hh"

#include "unk-types.hh"

struct Dog : public Pet
{
    enum GrowthStage
    {
        STAGE_0,
        STAGE_1,
    };

    Dog(char const * name);
    Dog(void);

    GrowthStage GetGrowthStage(void) const;
    void method_0809BB48(UnkBarnAnimal2C const * param);
    void method_0809BB54(UnkBarnAnimal2C_x2 const * param);
    void method_0809BB64(UnkBarnAnimal2C const * param);
    void method_0809BB70(UnkBarnAnimal2C_x2 const * param);
    void method_0809BB80(UnkBarnAnimal2C const * param);
    void method_0809BB8C(UnkBarnAnimal2C_x2 const * param);
    void method_0809BB9C(UnkBarnAnimal2C const * param);
    void DayUpdate(void);

    /* +20 */ u32 unk_20;
    /* +24 */ UnkBarnAnimal2C_x2 unk_24;
    /* +2C */ u32 frisbee_record : 10;
    /* +2D */ u32 unk_2D_2 : 3;
    /* +2D */ u32 frisbee_gauge_limit : 8;
};
