#pragma once

#include "pet.hh"

#include "unk-types.hh"

struct Horse : public Pet
{
    enum GrowthStage
    {
        STAGE_0,
        STAGE_1,
    };

    Horse(char const * name, ActorLocation const & location, u32 age);
    Horse(ActorLocation const & location, u32 age);

    GrowthStage GetGrowthStage(void);
    void method_0809BC24(UnkBarnAnimal2C const * param);
    void method_0809BC30(UnkBarnAnimal2C_x2 const * param);
    void method_0809BC40(void);
    void DayUpdate(void);

    /* +20 */ u32 unk_20;
    /* +24 */ UnkBarnAnimal2C_x2 unk_24;
};
