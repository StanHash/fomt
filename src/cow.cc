#include "cow.hh"

// TODO: cstdlib
#include <stdlib.h>

extern "C"
{
extern u8 gUnk_8103680[];
}

// Initializes a cow struct with a name
Cow::Cow(char const * name, ActorLocation const * location, u32 age, u32 days_fed)
    : BarnAnimal(name, location, age, days_fed)
{
    milked = false;
}

// Initializes a cow struct
Cow::Cow(ActorLocation const * location, u32 age, u32 days_fed)
    : BarnAnimal(location, age, days_fed)
{
    milked = false;
}

// Returns a cow's stage
Cow::GrowthStage Cow::GetGrowthStage(void)
{
    u32 days_fed = sub_809B4F4((struct Livestock *) this);
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
        && !sub_809B50C((struct Livestock *) this)
        && !sub_809B504((struct Livestock *) this)
        && GetGrowthStage() == STAGE_2;
}

// Returns whether a cow can be impregnated
bool Cow::method_0809BE08(void)
{
    return !IsPregnant()
        && !sub_809B50C((struct Livestock *) this)
        && GetGrowthStage() == STAGE_2;
}

// Returns whether a cow has been milked
bool Cow::HasBeenMilked(void)
{
    return milked;
}

// Returns a cow's product level
u32 Cow::method_0809BE44(void)
{
    milked = true;

    u32 level = sub_809B538((struct Livestock *) this);

    if (level == 4)
    {
        u32 temp;

        if (rand() % 255 != 0)
            temp = 4;
        else
            temp = 5;

        level = temp;
    }

    return level;
}

// Checks if you fed a cow and resets the milked flag
void Cow::method_0809BE74(void)
{
    method_0809B970(gUnk_8103680);
    milked = false;
}
