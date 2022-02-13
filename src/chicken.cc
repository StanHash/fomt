#include "chicken.hh"

// TODO: cstdlib
#include <stdlib.h>

extern "C"
{
extern u8 gUnk_8103660[];
}

// Initializes a chicken struct with a name
Chicken::Chicken(char const * name, ActorLocation const * location, u32 age, u32 days_fed)
    : Livestock(name, location, age, days_fed)
{
    unk_24 = 0;
    unk_28.unk_00 = 0;
    unk_28.unk_02 = 0;
}

// Initializes a chicken struct
Chicken::Chicken(ActorLocation const * location, u32 age, u32 days_fed)
    : Livestock(location, age, days_fed)
{
    unk_24 = 0;
    unk_28.unk_00 = 0;
    unk_28.unk_02 = 0;
}

// Returns whether the chicken is an adult or not
Chicken::GrowthStage Chicken::GetGrowthStage(void)
{
    if (GetAge() < 7)
        return STAGE_0;
    else
        return STAGE_1;
}

// Returns whether the chicken is an adult, healthy and happy
bool Chicken::method_0809BCC0(void)
{
    return GetGrowthStage() == STAGE_1
        && !sub_809B50C(this)
        && !sub_809B504(this);
}

void Chicken::method_0809BCF0(void)
{
    sub_809B65C(this);
}

// Returns a chicken's product level
u32 Chicken::method_0809BCFC(void)
{
    u32 level = sub_809B538(this);

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

void Chicken::method_0809BD20(UnkBarnAnimal2C const * param)
{
    unk_28 = *param;
    unk_24 = 0;
}

void Chicken::method_0809BD2C(UnkBarnAnimal2C const * param)
{
    unk_28 = *param;
    unk_24 = 1;
}

// Checks if you fed a chicken
void Chicken::method_0809BD38(void)
{
    sub_809B674(this, gUnk_8103660);
}
