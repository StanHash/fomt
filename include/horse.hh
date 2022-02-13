#include "pet.hh"

struct Horse : public Pet
{
    Horse(ActorLocation const * location, u32 age);

    /* +20 */ u32 unk_0x20;
    /* +24 */ u16 unk_0x24;
    /* +26 */ u8  unk_0x26;
    /* +27 */ u8  unk_0x27;
    /* +28 */ u32 unk_0x28;
};
