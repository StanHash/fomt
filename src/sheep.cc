#include "sheep.hh"

// TODO: cstdlib
#include <stdlib.h>

extern "C"
{
extern LivestockDayUpdateInfo const gUnk_81036A0;
}

// Initializes a sheep struct with a name
Sheep::Sheep(char const * name, ActorLocation const * location, u32 age, u32 days_fed)
    : BarnAnimal(name, location, age, days_fed)
{
    days_until_product = 0;
}

// Initializes a sheep struct
Sheep::Sheep(ActorLocation const * location, u32 age, u32 days_fed)
    : BarnAnimal(location, age, days_fed)
{
    days_until_product = 0;
}

// Returns a sheep's stage
Sheep::GrowthStage Sheep::GetGrowthStage(void)
{
    u32 days_fed = GetDaysFed();
    u32 age = GetAge();

    if (days_fed < 14 && age < 20)
        return STAGE_0;
    else
        return STAGE_1;
}

// Returns whether a sheep is sheared
bool Sheep::IsSheared(void)
{
    return days_until_product == 0 ? false : true;
}

// Returns whether a sheep can be sheared
bool Sheep::CanBeSheared(void)
{
    return !IsPregnant()
        && GetGrowthStage() == STAGE_1
        && !IsSheared();
}

// Returns whether a sheep can be impregnated
bool Sheep::method_0809BF48(void)
{
    return !IsPregnant()
        && !IsSick()
        && GetGrowthStage() == STAGE_1
        && !IsSheared();
}

// Returns a sheep's product rank
u32 Sheep::method_0809BF84(void)
{
    days_until_product = 7;

    ProductRank rank = GetProductRank();

    if (rank == PRODUCT_RANK_4)
    {
        ProductRank temp;

        if (rand() % 255 != 0)
            temp = PRODUCT_RANK_4;
        else
            temp = PRODUCT_RANK_5;

        rank = temp;
    }

    return rank;
}

// Checks if you fed a sheep
void Sheep::DayUpdate(void)
{
    BarnAnimal::DayUpdate(&gUnk_81036A0);

    if (days_until_product != 0)
        days_until_product--;
}
