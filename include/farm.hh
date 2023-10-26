#ifndef FARM_HH
#define FARM_HH

#include "global.h"

#include "fixed_str.hh"
#include "horse.hh"
#include "shipping_bin.hh"
#include "farm_house.hh"
#include "barn.hh"
#include "coop.hh"
#include "field.hh"

struct Farm
{
    enum { FIELD_WIDTH = 43 };
    enum { FIELD_HEIGHT = 25 };

    enum { MAX_UNK_0010_0 = 999 };

    Farm(char const * name);

    static Vec2 smethod_08009ADC();
    static Vec2 smethod_08009AE8();

    void method_08009AF4() const; // note: no-op
    u32 GetUnk10() const;
    Horse const * GetHorse() const;
    bool GetUnkFlag11() const;
    bool method_08009B20() const;
    bool GetUnkFlag12() const;

    void method_08009B68(u32 added);
    void method_08009BAC(u32 taken);
    void SetHorse(Horse const & horse);
    Horse * GetHorse();
    void RemoveHorse();
    void method_08009C60();
    void DayUpdate(int weather, Date const & date);
    void method_08009F80();

    /* +0000 */ FixedStr<12> name;
    /* +0010 */ u32 unk_0010_0 : 10;
    /* +0010 */ bool has_horse : 1;
    /* +0010 */ bool unk_0010_11 : 1;
    /* +0010 */ bool unk_0010_12 : 1;
    /* +0014 */ Placeholder<Horse> horse_placeholder;
    /* +0040 */ ShippingBin shipping_bin;
    /* +01E0 */ FarmHouse farm_house;
    /* +03FC */ Coop coop;
    /* +05DC */ Barn barn;
    /* +09C8 */ Field<FIELD_WIDTH, FIELD_HEIGHT> field;
};

#endif // FARM_HH
