#ifndef SHEEP_HH
#define SHEEP_HH

#include "prelude.h"

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

    GrowthStage GetGrowthStage() const;
    bool IsSheared() const;
    bool CanBeSheared() const;
    bool CanBeMadePregnant() const;
    ProductRank ConsumeProduct();
    void DayUpdate();

    /* +34 */ u8 days_until_product : 3;
};

#endif // SHEEP_HH
