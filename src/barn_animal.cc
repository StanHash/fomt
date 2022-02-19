#include "barn_animal.hh"

BarnAnimal::BarnAnimal(char const * name, ActorLocation const & location, u32 age, u32 days_fed)
    : Livestock(name, location, age, days_fed)
{
    pregnant = false;
    days_pregnant = 0;
    days_pregnant_healthy = 0;
    unk_28 = 0;
    unk_2C.a.unk_00 = 0;
    unk_2C.a.unk_02 = 0;
}

BarnAnimal::BarnAnimal(ActorLocation const & location, u32 age, u32 days_fed)
    : Livestock(location, age, days_fed)
{
    pregnant = false;
    days_pregnant = 0;
    days_pregnant_healthy = 0;
    unk_28 = 0;
    unk_2C.a.unk_00 = 0;
    unk_2C.a.unk_02 = 0;
}

bool BarnAnimal::IsPregnant(void) const
{
    return pregnant;
}

u32 BarnAnimal::GetDaysPregnant(void) const
{
    if (!pregnant)
        return 0;
    else
        return days_pregnant;
}

u32 BarnAnimal::GetDaysPregnantHealthy(void) const
{
    if (!pregnant)
        return 0;
    else
        return days_pregnant_healthy;
}

void BarnAnimal::SetFed(void)
{
    Livestock::SetFed();
}

void BarnAnimal::StartPregnancy(void)
{
    pregnant = true;
    days_pregnant = 0;
    days_pregnant_healthy = 0;
}

void BarnAnimal::ResetPregnancy(void)
{
    pregnant = false;
    days_pregnant = 0;
    days_pregnant_healthy = 0;
}

void BarnAnimal::method_0809B940(UnkBarnAnimal2C const * param)
{
    unk_2C.a = *param;
    unk_28 = 0;
}

void BarnAnimal::method_0809B94C(UnkBarnAnimal2C const * param)
{
    unk_2C.a = *param;
    unk_28 = 1;
}

void BarnAnimal::method_0809B958(UnkBarnAnimal2C_x2 const * param)
{
    unk_2C = *param;
    unk_28 = 2;
}

void BarnAnimal::method_0809B968(void)
{
    unk_28 = 3;
}

void BarnAnimal::DayUpdate(LivestockDayUpdateInfo const * info)
{
    Livestock::DayUpdate(info);

    if (IsPregnant())
    {
        if (days_pregnant < 31)
            days_pregnant++;

        if (!IsSick())
        {
            if (days_pregnant_healthy < 31)
                days_pregnant_healthy++;
        }
    }
}
