#pragma once

#include "animal.hh"

struct Livestock : public Animal
{
    Livestock::Livestock(u8 * name, u32 * param, u32 age, u32 days_fed);
    Livestock::Livestock(u32 * param, u32 age, u32 days_fed);

    /* +28 */ u8 days_fed:5;
    /* +28 */ bool fed:1;
    /* +28 */ bool unhappy:1;
    /* +28 */ bool sick:1;
    /* +29 */ u8 unk_0x1D_0:2;
    /* +29 */ u8 daysUnhappy:3;
    /* +29 */ u8 daysSick:3;
    /* +30 */ u32 currentOutdoorMinutes:9;
    /* +30 */ u32 totalOutdoorMinutes:16;
};

extern "C"
{
//Returns the number of days fed
u32 sub_809B4F4(struct Livestock *lstock);
//Returns the unhappy flag
bool8 sub_809B504(struct Livestock *lstock);
//Returns the sick flag
bool8 sub_809B50C(struct Livestock *lstock);
//Returns a livestock's product level
u32 sub_809B538(struct Livestock *lstock);
//Sets the fed flag
void sub_809B65C(struct Livestock *lstock);
//Checks if you fed a livestock
void sub_809B674(struct Livestock *lstock, u8 *param);
}
