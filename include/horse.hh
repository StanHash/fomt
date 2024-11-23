#ifndef HORSE_HH
#define HORSE_HH

#include "prelude.h"

#include "pet.hh"
#include "unknown_types.hh"

struct Horse : public Pet
{
    enum GrowthStage
    {
        STAGE_0,
        STAGE_1,
    };

    Horse(char const * name, ActorLocation const & location, u32 age);
    Horse(ActorLocation const & location, u32 age);

    GrowthStage GetGrowthStage() const;
    void method_0809BC24(UnkBarnAnimal2C const * param);
    void method_0809BC30(UnkBarnAnimal2C_x2 const * param);
    void method_0809BC40();
    void DayUpdate();

    /* +20 */ u32 unk_20;
    /* +24 */ UnkBarnAnimal2C_x2 unk_24;
};

#endif // HORSE_HH
