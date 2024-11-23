#include "sheep.hh"

#include <stdlib.h> // rand

extern "C"
{
    extern LivestockDayUpdateInfo const gUnk_081036A0;
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

Sheep::GrowthStage Sheep::GetGrowthStage() const
{
    u32 days_fed = GetDaysFed();
    u32 age = GetAge();

    if (days_fed < 14 && age < 20)
        return STAGE_0;
    else
        return STAGE_1;
}

bool Sheep::IsSheared() const
{
    return days_until_product == 0 ? false : true;
}

bool Sheep::CanBeSheared() const
{
    return !IsPregnant() && GetGrowthStage() == STAGE_1 && !IsSheared();
}

bool Sheep::CanBeMadePregnant() const
{
    return !IsPregnant() && !IsSick() && GetGrowthStage() == STAGE_1 && !IsSheared();
}

Livestock::ProductRank Sheep::ConsumeProduct()
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

void Sheep::DayUpdate()
{
    BarnAnimal::DayUpdate(&gUnk_081036A0);

    if (days_until_product != 0)
        days_until_product--;
}
