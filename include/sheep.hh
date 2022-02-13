#pragma once

#include "barn_animal.hh"

struct Sheep : public BarnAnimal
{
    enum GrowthStage
    {
        STAGE_0,
        STAGE_1,
    };

    Sheep(char const * name, ActorLocation const & location, u32 age, u32 days_fed);
    Sheep(ActorLocation const & location, u32 age, u32 days_fed);

    GrowthStage GetGrowthStage(void);
    bool IsSheared(void);
    bool CanBeSheared(void);
    bool method_0809BF48(void);
    u32 method_0809BF84(void);
    void DayUpdate(void);

    /* +34 */ u8 days_until_product : 3;
};
