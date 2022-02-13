#include "cow.hh"

// TODO: cstdlib
#include <stdlib.h>

extern "C"
{
extern LivestockDayUpdateInfo const gUnk_8103680;
}

// Initializes a cow struct with a name
Cow::Cow(char const * name, ActorLocation const & location, u32 age, u32 days_fed)
    : BarnAnimal(name, location, age, days_fed)
{
    milked = false;
}

// Initializes a cow struct
Cow::Cow(ActorLocation const & location, u32 age, u32 days_fed)
    : BarnAnimal(location, age, days_fed)
{
    milked = false;
}

// Returns a cow's stage
Cow::GrowthStage Cow::GetGrowthStage(void)
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

// Returns whether a cow can be milked or not
bool Cow::CanBeMilked(void)
{
    return !milked
        && !IsPregnant()
        && !IsSick()
        && !IsUnhappy()
        && GetGrowthStage() == STAGE_2;
}

// Returns whether a cow can be impregnated
bool Cow::method_0809BE08(void)
{
    return !IsPregnant()
        && !IsSick()
        && GetGrowthStage() == STAGE_2;
}

// Returns whether a cow has been milked
bool Cow::HasBeenMilked(void)
{
    return milked;
}

// Returns a cow's product rank
u32 Cow::method_0809BE44(void)
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

// Checks if you fed a cow and resets the milked flag
void Cow::DayUpdate(void)
{
    BarnAnimal::DayUpdate(&gUnk_8103680);
    milked = false;
}
