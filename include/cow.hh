#ifndef COW_HH
#define COW_HH

#include "prelude.h"

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

    GrowthStage GetGrowthStage() const;
    bool CanBeMilked() const;
    bool CanBeMadePregnant() const;
    bool HasBeenMilked() const;
    ProductRank ConsumeProduct();
    void DayUpdate();

    /* +34 */ bool milked : 1;
};

#endif // COW_HH
