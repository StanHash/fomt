#pragma once

#include "barn_animal.hh"

struct Sheep : public BarnAnimal
{
    enum GrowthStage
    {
        STAGE_0,
        STAGE_1,
    };

    Sheep(u8 * name, u32 * param, u32 age, u32 days_fed);
    Sheep(u32 * param, u32 age, u32 days_fed);

    GrowthStage GetGrowthStage(void);
    bool IsSheared(void);
    bool CanBeSheared(void);
    bool method_0809BF48(void);
    u32 method_0809BF84(void);
    void method_0809BFB4(void);

    /* +34 */ u8 days_until_product : 3;
};
