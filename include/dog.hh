#include "pet.hh"

struct Dog : public Pet
{
    Dog(u8 * name, u32 * param, u32 age);

    /* +20 */ u32 unk_0x20;
    /* +24 */ u16 unk_0x24;
    /* +26 */ u8 unk_0x26;
    /* +28 */ u32 unk_0x28;
    /* +2C */ u32 frisbeeRecord:10;
    /* +2D */ u32 unk_0x2D_2:3;
    /* +2D */ u32 frisbeeGaugeLimit:8;
};
