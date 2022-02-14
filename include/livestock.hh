#pragma once

#include "animal.hh"

struct LivestockDayUpdateInfo
{
    struct AgeUnkRateEnt
    {
        /* +00 */ u16 age;
        /* +02 */ u8 unk_02;
    };

    /* +00 */ u8 fed_happy_rate;
    /* +01 */ u8 unfed_unhappy_rate;
    /* +02 */ u8 unhappy_sick_rates[7];
    /* +09 */ u8 sick_unk_rates[5];
    /* +10 */ AgeUnkRateEnt age_unk_rates[4];
};

struct Livestock : public Animal
{
    enum ProductRank
    {
        PRODUCT_RANK_0,
        PRODUCT_RANK_1,
        PRODUCT_RANK_2,
        PRODUCT_RANK_3,
        PRODUCT_RANK_4,
        PRODUCT_RANK_5,
    };

    Livestock(char const * name, ActorLocation const & location, u32 age, u32 days_fed);
    Livestock(ActorLocation const & location, u32 age, u32 days_fed);

    u32 GetDaysFed(void) const;
    bool HasBeenFed(void) const;
    bool IsUnhappy(void) const;
    bool IsSick(void) const;
    u8 method_0809B514(void) const;
    u32 GetCurrentOutdoorMinutes(void) const;
    u32 GetOutdoorMinutes(void) const;
    ProductRank GetProductRank(void) const;
    void AddOutdoorMinutes(u32 minutes);
    void ResetCurrentOutdoorMinutes(void);
    void SetSick(void);
    void ResetSick(void);
    void SetUnhappy(void);
    void ResetUnhappy(void);
    void SetFed(void);
    void DayUpdate(LivestockDayUpdateInfo const * info);

    /* +28 */ u32 days_fed : 5;
    /* +28 */ bool fed : 1;
    /* +28 */ bool unhappy : 1;
    /* +28 */ bool sick : 1;
    /* +29 */ u32 unk_0x1D_0 : 2;
    /* +29 */ u32 days_unhappy : 3;
    /* +29 */ u32 days_sick : 3;
    /* +30 */ u32 current_outdoor_minutes : 9;
    /* +30 */ u32 total_outdoor_minutes : 16;
};
