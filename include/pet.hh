#pragma once

#include "animal.hh"

struct Pet : public Animal
{
    Pet(char const * name, ActorLocation const * location, u32 age);
    Pet(ActorLocation const * location, u32 age);

    /* +28 */ u32 _0x1C:8;
    /* +29 */ bool _0x1D_0:1;
    /* +29 */ bool unk_0x1D_1:1;
};

extern "C"
{
//Initializes a pet struct without a name
struct Pet * sub_809B350(struct Pet *pet, u32 *param, u32 age);
//Checks if you talked, brushed, or played with/rode your dog/horse
void sub_809B3C8(struct Pet *pet, u8 param);
}
