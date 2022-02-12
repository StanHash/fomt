extern "C"
{
#include "livestock.h"
}

// TODO: move elsewhere
struct UnkBarnAnimal2C
{
    /* +00 */ u16 unk_00;
    /* +02 */ u8 unk_02;
    /* +03 */ u8 unk_03;
};

// TODO: move elsewhere, and figure out if we need this
struct UnkBarnAnimal2C_x2
{
    UnkBarnAnimal2C a;
    UnkBarnAnimal2C b;
};

struct BarnAnimal
{
    BarnAnimal(u8 * name, u32 * param, u32 age, u32 days_fed);
    BarnAnimal(u32 * param, u32 age, u32 days_fed);

    bool IsPregnant(void);
    u8 method_0809B8BC(void);
    u8 method_0809B8D4(void);
    void method_0809B8F0(void);
    void StartPregnancy(void);
    void ResetPregnancy(void);
    void method_0809B940(UnkBarnAnimal2C const * param);
    void method_0809B94C(UnkBarnAnimal2C const * param);
    void method_0809B958(UnkBarnAnimal2C_x2 const * param);
    void method_0809B968(void);
    void method_0809B970(u8 * param);

    /* +00 */ struct Livestock lstock;
    /* +24 */ bool pregnant : 1;
    /* +24 */ u32 days_pregnant : 5;
    /* +24 */ u32 days_pregnant_healthy : 5;
    /* +28 */ u32 unk_28;
    /* +2C */ UnkBarnAnimal2C unk_2C;
    /* +30 */ UnkBarnAnimal2C unk_30;
};
