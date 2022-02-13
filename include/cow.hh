#pragma once

#include "barn_animal.hh"

struct Cow : public BarnAnimal
{
    enum GrowthStage
    {
        STAGE_0,
        STAGE_1,
        STAGE_2,
    };

    Cow(char const * name, ActorLocation const & location, u32 age, u32 days_fed);
    Cow(ActorLocation const & location, u32 age, u32 days_fed);

    GrowthStage GetGrowthStage(void) const;
    bool CanBeMilked(void) const;
    bool CanBeMadePregnant(void) const;
    bool HasBeenMilked(void) const;
    ProductRank ConsumeProduct(void);
    void DayUpdate(void);

    /* +34 */ bool milked : 1;
};
