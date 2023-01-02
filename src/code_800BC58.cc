#include "furniture.hh"

Unk_0800BC58::Unk_0800BC58(void)
{
}

void Unk_0800BC58::method_0800BCB0(u32 unk)
{
    u32 unk_2 = unk - 0x4D;

    bit_array_00.Set(unk_2);
}

void Unk_0800BC58::method_0800BCD0(u32 unk)
{
    u32 unk_2 = unk - 0x4D;

    bit_array_00.Clear(unk_2);
    bit_array_08.Set(unk_2);
}

bool Unk_0800BC58::method_0800BD14(u32 unk) const
{
    u32 unk_2 = unk - 0x4D;

    return bit_array_00.Test(unk_2);
}

bool Unk_0800BC58::method_0800BD40(u32 unk) const
{
    u32 unk_2 = unk - 0x4D;

    return bit_array_08.Test(unk_2);
}

u32 Unk_0800BC58::method_0800BD6C(void) const
{
    return bit_array_00.Count();
}

u32 Unk_0800BC58::method_0800BDEC(void) const
{
    return bit_array_08.Count();
}

extern "C" {

void sub_800BC58() ALIAS(__12Unk_0800BC58);
void sub_800BCB0() ALIAS(method_0800BCB0__12Unk_0800BC58Ui);
void sub_800BCD0() ALIAS(method_0800BCD0__12Unk_0800BC58Ui);
void sub_800BD14() ALIAS(method_0800BD14__C12Unk_0800BC58Ui);
void sub_800BD40() ALIAS(method_0800BD40__C12Unk_0800BC58Ui);
void sub_800BD6C() ALIAS(method_0800BD6C__C12Unk_0800BC58);
void sub_800BDEC() ALIAS(method_0800BDEC__C12Unk_0800BC58);

}
