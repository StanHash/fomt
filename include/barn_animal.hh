#ifndef BARN_ANIMAL_HH
#define BARN_ANIMAL_HH

#include "prelude.h"

#include "livestock.hh"
#include "unknown_types.hh"

struct BarnAnimal : public Livestock
{
    BarnAnimal(char const * name, ActorLocation const & location, u32 age, u32 days_fed);
    BarnAnimal(ActorLocation const & location, u32 age, u32 days_fed);

    bool IsPregnant() const;
    u32 GetDaysPregnant() const;
    u32 GetDaysPregnantHealthy() const;
    void SetFed();
    void StartPregnancy();
    void ResetPregnancy();
    void method_0809B940(UnkBarnAnimal2C const * param);
    void method_0809B94C(UnkBarnAnimal2C const * param);
    void method_0809B958(UnkBarnAnimal2C_x2 const * param);
    void method_0809B968();
    void DayUpdate(LivestockDayUpdateInfo const * info);

    /* +24 */ bool pregnant : 1;
    /* +24 */ u32 days_pregnant : 5;
    /* +24 */ u32 days_pregnant_healthy : 5;
    /* +28 */ u32 unk_28;
    /* +2C */ UnkBarnAnimal2C_x2 unk_2C;
};

#endif // BARN_ANIMAL_HH
