#pragma once

#include "livestock.hh"

#include "unk-types.hh"

struct BarnAnimal : public Livestock
{
    BarnAnimal(char const * name, ActorLocation const & location, u32 age, u32 days_fed);
    BarnAnimal(ActorLocation const & location, u32 age, u32 days_fed);

    bool IsPregnant(void) const;
    u8 GetDaysPregnant(void) const;
    u8 GetDaysPregnantHealthy(void) const;
    void SetFed(void);
    void StartPregnancy(void);
    void ResetPregnancy(void);
    void method_0809B940(UnkBarnAnimal2C const * param);
    void method_0809B94C(UnkBarnAnimal2C const * param);
    void method_0809B958(UnkBarnAnimal2C_x2 const * param);
    void method_0809B968(void);
    void DayUpdate(LivestockDayUpdateInfo const * info);

    /* +24 */ bool pregnant : 1;
    /* +24 */ u32 days_pregnant : 5;
    /* +24 */ u32 days_pregnant_healthy : 5;
    /* +28 */ u32 unk_28;
    /* +2C */ UnkBarnAnimal2C_x2 unk_2C;
};
