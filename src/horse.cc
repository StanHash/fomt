#include "horse.hh"

Horse::Horse(char const * name, ActorLocation const & location, u32 age)
    : Pet(name, location, age)
{
    unk_20 = 0;
    unk_24.a.unk_00 = 0;
    unk_24.a.unk_02 = 0;
}

Horse::Horse(ActorLocation const & location, u32 age)
    : Pet(location, age)
{
    unk_20 = 0;
    unk_24.a.unk_00 = 0;
    unk_24.a.unk_02 = 0;
}

Horse::GrowthStage Horse::GetGrowthStage(void) const
{
    return GetAge() < 120 ? STAGE_0 : STAGE_1;
}

void Horse::method_0809BC24(UnkBarnAnimal2C const * param)
{
    unk_24.a = *param;
    unk_20 = 0;
}

void Horse::method_0809BC30(UnkBarnAnimal2C_x2 const * param)
{
    unk_24 = *param;
    unk_20 = 1;
}

void Horse::method_0809BC40(void)
{
    unk_20 = 2;
}

void Horse::DayUpdate(void)
{
    Pet::DayUpdate(false);

    unk_20 = 0;
    unk_24.a.unk_00 = 0;
    unk_24.a.unk_02 = 0;
}
