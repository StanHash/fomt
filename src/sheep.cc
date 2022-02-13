#include "sheep.hh"

// TODO: cstdlib
#include <stdlib.h>

extern "C"
{
extern u8 gUnk_81036A0[];
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
    u32 days_fed = sub_809B4F4((struct Livestock *) this);
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
        && !sub_809B50C((struct Livestock *) this)
        && GetGrowthStage() == STAGE_1
        && !IsSheared();
}

// Returns a sheep's product level
u32 Sheep::method_0809BF84(void)
{
    days_until_product = 7;

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

// Checks if you fed a sheep
void Sheep::method_0809BFB4(void)
{
    method_0809B970(gUnk_81036A0);

    if (days_until_product != 0)
        days_until_product--;
}
