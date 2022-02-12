#include "cow.hh"

// TODO: cstdlib
#include <stdlib.h>

extern "C"
{
extern u8 gUnk_8103680[];
}

// Initializes a cow struct with a name
Cow::Cow(u8 * name, u32 * param, u32 age, u32 days_fed)
{
    sub_809B828(&barnAnimal, name, param, age, days_fed);
    milked = 0;
}

// Initializes a cow struct
Cow::Cow(u32 * param, u32 age, u32 days_fed)
{
    sub_809B870(&barnAnimal, param, age, days_fed);
    milked = 0;
}

// Returns a cow's stage
u32 Cow::method_0809BD90(void)
{
    u32 days_fed = sub_809B4F4((struct Livestock *) this);
    u32 age = sub_809B220((struct Animal *) this);

    if (days_fed < 14 && age < 20)
        return 0;
    else if (days_fed < 21 && age < 34)
        return 1;
    else
        return 2;
}

// Returns whether a cow can be milked or not
bool Cow::method_0809BDC0(void)
{
    return !milked
        && !sub_809B8B0(&barnAnimal)
        && !sub_809B50C((struct Livestock *) this)
        && !sub_809B504((struct Livestock *) this)
        && method_0809BD90() == 2;
}

// Returns whether a cow can be impregnated
bool Cow::method_0809BE08(void)
{
    return !sub_809B8B0(&barnAnimal)
        && !sub_809B50C((struct Livestock *) this)
        && method_0809BD90() == 2;
}

// Returns whether a cow has been milked
bool Cow::method_0809BE38(void)
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
    sub_809B970(&barnAnimal, gUnk_8103680);
    milked = false;
}
