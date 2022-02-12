extern "C"
{
#include "barn_animal.h"
}

struct Sheep
{
    Sheep(u8 * name, u32 * param, u32 age, u32 days_fed);
    Sheep(u32 * param, u32 age, u32 days_fed);

    u32 method_0809BEDC(void);
    bool method_0809BF00(void);
    bool method_0809BF18(void);
    bool method_0809BF48(void);
    u32 method_0809BF84(void);
    void method_0809BFB4(void);

    /* +00 */ struct BarnAnimal barnAnimal;
    /* +34 */ u8 days_until_product : 3;
};
