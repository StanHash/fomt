#include "cow.hh"

// TODO: cstdlib
#include <stdlib.h>

extern "C"
{
extern LivestockDayUpdateInfo const gUnk_8103680;
}

Cow::Cow(char const * name, ActorLocation const & location, u32 age, u32 days_fed)
    : BarnAnimal(name, location, age, days_fed)
{
    milked = false;
}

Cow::Cow(ActorLocation const & location, u32 age, u32 days_fed)
    : BarnAnimal(location, age, days_fed)
{
    milked = false;
}

Cow::GrowthStage Cow::GetGrowthStage(void) const
{
    u32 days_fed = GetDaysFed();
    u32 age = GetAge();

    if (days_fed < 14 && age < 20)
        return STAGE_0;
    else if (days_fed < 21 && age < 34)
        return STAGE_1;
    else
        return STAGE_2;
}

bool Cow::CanBeMilked(void) const
{
    return !milked
        && !IsPregnant()
        && !IsSick()
        && !IsUnhappy()
        && GetGrowthStage() == STAGE_2;
}

bool Cow::CanBeMadePregnant(void) const
{
    return !IsPregnant()
        && !IsSick()
        && GetGrowthStage() == STAGE_2;
}

bool Cow::HasBeenMilked(void) const
{
    return milked;
}

Livestock::ProductRank Cow::ConsumeProduct(void)
{
    milked = true;

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

void Cow::DayUpdate(void)
{
    BarnAnimal::DayUpdate(&gUnk_8103680);
    milked = false;
}