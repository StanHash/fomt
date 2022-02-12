#include "barn_animal.hh"

// Initializes a barn animal struct with a name
BarnAnimal::BarnAnimal(u8 * name, u32 * param, u32 age, u32 days_fed)
{
    sub_809B454(&lstock, name, param, age, days_fed);
    pregnant = false;
    days_pregnant = 0;
    days_pregnant_healthy = 0;
    unk_28 = 0;
    unk_2C.unk_00 = 0;
    unk_2C.unk_02 = 0;
}

// Initializes a barn animal struct
BarnAnimal::BarnAnimal(u32 * param, u32 age, u32 days_fed)
{
    sub_809B4A4(&lstock, param, age, days_fed);
    pregnant = false;
    days_pregnant = 0;
    days_pregnant_healthy = 0;
    unk_28 = 0;
    unk_2C.unk_00 = 0;
    unk_2C.unk_02 = 0;
}

// Returns the pregnant flag
bool BarnAnimal::IsPregnant(void)
{
    return pregnant;
}

// Returns the number of days pregnant
u8 BarnAnimal::method_0809B8BC(void)
{
    if (!pregnant)
        return 0;
    else
        return days_pregnant;
}

// Returns the number of days pregnant and healthy
u8 BarnAnimal::method_0809B8D4(void)
{
    if (!pregnant)
        return 0;
    else
        return days_pregnant_healthy;
}

// Sets the fed flag
void BarnAnimal::method_0809B8F0(void)
{
    sub_809B65C(&lstock);
}

// Sets the pregnant flag
void BarnAnimal::StartPregnancy(void)
{
    pregnant = true;
    days_pregnant = 0;
    days_pregnant_healthy = 0;
}

// Clears the pregnant flag
void BarnAnimal::ResetPregnancy(void)
{
    pregnant = false;
    days_pregnant = 0;
    days_pregnant_healthy = 0;
}

void BarnAnimal::method_0809B940(UnkBarnAnimal2C const * param)
{
    unk_2C = *param;
    unk_28 = 0;
}

void BarnAnimal::method_0809B94C(UnkBarnAnimal2C const * param)
{
    unk_2C = *param;
    unk_28 = 1;
}

void BarnAnimal::method_0809B958(UnkBarnAnimal2C_x2 const * param)
{
    UnkBarnAnimal2C temp = param->b;
    unk_2C = param->a;
    unk_30 = temp;
    unk_28 = 2;
}

// Called when being pushed
void BarnAnimal::method_0809B968(void)
{
    unk_28 = 3;
}

// Checks if you fed a barn animal
void BarnAnimal::method_0809B970(u8 * param)
{
    u32 temp;

    sub_809B674(&lstock, param);

    if (IsPregnant())
    {
        temp = days_pregnant;

        if (temp < 31)
            days_pregnant++;

        if (!sub_809B50C(&lstock))
        {
            temp = days_pregnant_healthy;

            if (temp < 31)
                days_pregnant_healthy++;
        }
    }
}
