#include "dog.hh"

Dog::Dog(char const * name)
    : Pet(name, ActorLocation(Location(2, 0x17E, 0x52), 0), 1)
{
    unk_20 = 0;
    frisbee_record = 0;
    unk_2D_2 = 0;
    frisbee_gauge_limit = 10;
    unk_24.a.unk_00 = 0;
    unk_24.a.unk_02 = 0;
}

Dog::Dog(void)
    : Pet(ActorLocation(Location(2, 0x17E, 0x52), 0), 1)
{
    unk_20 = 0;
    frisbee_record = 0;
    unk_2D_2 = 0;
    frisbee_gauge_limit = 0;
    unk_24.a.unk_00 = 0;
    unk_24.a.unk_02 = 0;
}

Dog::GrowthStage Dog::GetGrowthStage(void) const
{
    return GetAge() < 60 ? STAGE_0 : STAGE_1;
}

void Dog::method_0809BB48(UnkBarnAnimal2C const * param)
{
    unk_24.a = *param;
    unk_20 = 0;
}

void Dog::method_0809BB54(UnkBarnAnimal2C_x2 const * param)
{
    unk_24 = *param;
    unk_20 = 1;
}

void Dog::method_0809BB64(UnkBarnAnimal2C const * param)
{
    unk_24.a = *param;
    unk_20 = 2;
}

void Dog::method_0809BB70(UnkBarnAnimal2C_x2 const * param)
{
    unk_24 = *param;
    unk_20 = 3;
}

void Dog::method_0809BB80(UnkBarnAnimal2C const * param)
{
    unk_24.a = *param;
    unk_20 = 4;
}

void Dog::method_0809BB8C(UnkBarnAnimal2C_x2 const * param)
{
    unk_24 = *param;
    unk_20 = 5;
}

void Dog::method_0809BB9C(UnkBarnAnimal2C const * param)
{
    unk_24.a = *param;
    unk_20 = 6;
}

void Dog::DayUpdate(void)
{
    Pet::DayUpdate(unk_2D_2 != 0);
    unk_2D_2 = 0;
}
