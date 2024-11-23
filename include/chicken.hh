#ifndef CHICKEN_HH
#define CHICKEN_HH

#include "prelude.h"

#include "livestock.hh"
#include "unknown_types.hh"

struct Chicken : public Livestock
{
    enum GrowthStage
    {
        STAGE_0,
        STAGE_1,
    };

    Chicken(char const * name, ActorLocation const & location, u32 age, u32 days_fed);
    Chicken(ActorLocation const & location, u32 age, u32 days_fed);

    GrowthStage GetGrowthStage() const;
    bool method_0809BCC0() const;
    void SetFed();
    ProductRank ConsumeProduct();
    void method_0809BD20(UnkBarnAnimal2C const * param);
    void method_0809BD2C(UnkBarnAnimal2C const * param);
    void DayUpdate();

    /* +24 */ u32 unk_24;
    /* +28 */ UnkBarnAnimal2C unk_28;
};

#endif // CHICKEN_HH
