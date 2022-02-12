extern "C"
{
#include "barn_animal.h"
}

struct Cow // : BarnAnimal
{
    Cow(u8 * name, u32 * param, u32 age, u32 days_fed);
    Cow(u32 * param, u32 age, u32 days_fed);

    u32 method_0809BD90(void);
    bool method_0809BDC0(void);
    bool method_0809BE08(void);
    bool method_0809BE38(void);
    u32 method_0809BE44(void);
    void method_0809BE74(void);

    struct BarnAnimal barnAnimal;
    bool milked : 1;
};
