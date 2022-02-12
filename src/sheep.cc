#include "sheep.hh"

extern "C"
{
// RNG functions
extern int sub_80D11E4();
extern u8 gUnk_81036A0[];
}

// Initializes a sheep struct with a name
Sheep::Sheep(u8 * name, u32 * param, u32 age, u32 days_fed)
{
    sub_809B828(&barnAnimal, name, param, age, days_fed);
    days_until_product = 0;
}

// Initializes a sheep struct
Sheep::Sheep(u32 * param, u32 age, u32 days_fed)
{
    sub_809B870(&barnAnimal, param, age, days_fed);
    days_until_product = 0;
}

// Returns a sheep's stage
u32 Sheep::method_0809BEDC(void)
{
    u32 days_fed = sub_809B4F4((struct Livestock *) this);
    u32 age = sub_809B220((struct Animal *) this);

    if (days_fed < 14 && age < 20)
        return 0;
    else
        return 1;
}

// Returns whether a sheep is sheared
bool Sheep::method_0809BF00(void)
{
    return days_until_product == 0 ? false : true;
}

// Returns whether a sheep can be sheared
bool Sheep::method_0809BF18(void)
{
    return !sub_809B8B0(&barnAnimal)
        && method_0809BEDC() == 1
        && !method_0809BF00();
}

// Returns whether a sheep can be impregnated
bool Sheep::method_0809BF48(void)
{
    return !sub_809B8B0(&barnAnimal)
        && !sub_809B50C((struct Livestock *) this)
        && method_0809BEDC() == 1
        && !method_0809BF00();
}

// Returns a sheep's product level
u32 Sheep::method_0809BF84(void)
{
    days_until_product = 7;

    u32 level = sub_809B538((struct Livestock *) this);

    if (level == 4)
    {
        u32 temp;

        if (sub_80D11E4() % 255 != 0)
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
    sub_809B970(&barnAnimal, gUnk_81036A0);

    if (days_until_product != 0)
        days_until_product--;
}
