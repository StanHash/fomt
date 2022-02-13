#pragma once

#include "livestock.hh"

#include "unk-types.hh"

struct Chicken : public Livestock
{
    enum GrowthStage
    {
        STAGE_0,
        STAGE_1,
    };

    Chicken(u8 * name, u32 * param, u32 age, u32 days_fed);
    Chicken(u32 * param, u32 age, u32 days_fed);

    GrowthStage GetGrowthStage(void);
    bool method_0809BCC0(void);
    void method_0809BCF0(void);
    u32 method_0809BCFC(void);
    void method_0809BD20(UnkBarnAnimal2C const * param);
    void method_0809BD2C(UnkBarnAnimal2C const * param);
    void method_0809BD38(void);

    /* +24 */ u32 unk_24;
    /* +28 */ UnkBarnAnimal2C unk_28;
};
