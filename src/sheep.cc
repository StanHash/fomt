#include "sheep.hh"

// TODO: cstdlib
#include <stdlib.h>

extern "C"
{
extern LivestockDayUpdateInfo const gUnk_81036A0;
}

Sheep::Sheep(char const * name, ActorLocation const & location, u32 age, u32 days_fed)
    : BarnAnimal(name, location, age, days_fed)
{
    days_until_product = 0;
}

Sheep::Sheep(ActorLocation const & location, u32 age, u32 days_fed)
    : BarnAnimal(location, age, days_fed)
{
    days_until_product = 0;
}

Sheep::GrowthStage Sheep::GetGrowthStage(void) const
{
    u32 days_fed = GetDaysFed();
    u32 age = GetAge();

    if (days_fed < 14 && age < 20)
        return STAGE_0;
    else
        return STAGE_1;
}

bool Sheep::IsSheared(void) const
{
    return days_until_product == 0 ? false : true;
}

bool Sheep::CanBeSheared(void) const
{
    return !IsPregnant()
        && GetGrowthStage() == STAGE_1
        && !IsSheared();
}

bool Sheep::CanBeMadePregnant(void) const
{
    return !IsPregnant()
        && !IsSick()
        && GetGrowthStage() == STAGE_1
        && !IsSheared();
}

Livestock::ProductRank Sheep::ConsumeProduct(void)
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

void Sheep::DayUpdate(void)
{
    BarnAnimal::DayUpdate(&gUnk_81036A0);

    if (days_until_product != 0)
        days_until_product--;
}
