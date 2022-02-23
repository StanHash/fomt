#include "barn.hh"

#include <algorithm>

NAKED
Barn::Barn(void)
{
    asm_unified("\n\
        push {r4, r5, r6, r7, lr}\n\
        sub sp, #4\n\
        adds r5, r0, #0\n\
        ldrb r1, [r5]\n\
        movs r0, #2\n\
        rsbs r0, r0, #0\n\
        ands r0, r1\n\
        strb r0, [r5]\n\
        ldrh r1, [r5]\n\
        ldr r0, _0800CE48 @ =0xFFFFF801\n\
        ands r0, r1\n\
        strh r0, [r5]\n\
        ldrb r1, [r5, #1]\n\
        movs r0, #9\n\
        rsbs r0, r0, #0\n\
        ands r0, r1\n\
        movs r1, #0x11\n\
        rsbs r1, r1, #0\n\
        ands r0, r1\n\
        strb r0, [r5, #1]\n\
        ldr r0, [r5]\n\
        ldr r1, _0800CE4C @ =0xE0001FFF\n\
        ands r0, r1\n\
        str r0, [r5]\n\
        ldrb r1, [r5, #3]\n\
        movs r0, #0x61\n\
        rsbs r0, r0, #0\n\
        ands r0, r1\n\
        movs r1, #0x7f\n\
        ands r0, r1\n\
        strb r0, [r5, #3]\n\
        ldrh r1, [r5, #4]\n\
        ldr r0, _0800CE50 @ =0xFFFFC00F\n\
        ands r0, r1\n\
        strh r0, [r5, #4]\n\
        ldr r0, [r5, #4]\n\
        ldr r1, _0800CE54 @ =0xFF003FFF\n\
        ands r0, r1\n\
        str r0, [r5, #4]\n\
        movs r0, #0\n\
        strb r0, [r5, #0xc]\n\
        strb r0, [r5, #0x1c]\n\
        adds r4, r5, #0\n\
        adds r4, #0x2c\n\
        movs r6, #0xf\n\
        movs r7, #1\n\
        rsbs r7, r7, #0\n\
    _0800CE1A:\n\
        adds r0, r4, #0\n\
        bl sub_800D9FC\n\
        \n\
        adds r4, #0x3c\n\
        subs r6, #1\n\
        cmp r6, r7\n\
        bne _0800CE1A\n\
        movs r0, #1\n\
        rsbs r0, r0, #0\n\
        str r0, [sp]\n\
        adds r1, r5, #7\n\
        movs r2, #2\n\
    _0800CE32:\n\
        strb r0, [r1]\n\
        \n\
        subs r2, #1\n\
        adds r1, #1\n\
        cmp r2, #0\n\
        bgt _0800CE32\n\
        \n\
        adds r0, r5, #0\n\
        add sp, #4\n\
        pop {r4, r5, r6, r7}\n\
        pop {r1}\n\
        bx r1\n\
        .align 2, 0\n\
    _0800CE48: .4byte 0xFFFFF801\n\
    _0800CE4C: .4byte 0xE0001FFF\n\
    _0800CE50: .4byte 0xFFFFC00F\n\
    _0800CE54: .4byte 0xFF003FFF\n\
    ");
}

// TODO
extern "C"
Unk_0800CE58 sub_800CE58(void)
{
    return Unk_0800CE58(184, 272);
}

extern "C"
{

extern bool sub_800DA08(BarnEnt * slot);
extern Cow * sub_800DA2C(BarnEnt * slot);
extern Sheep * sub_800DA48(BarnEnt * slot);
extern BarnAnimal * sub_800DA14(BarnEnt * slot);

Barn * sub_800CDBC(Barn *barn) ALIAS(__4Barn);

u8 sub_800CE64(Barn *barn) {
    return barn->unk_0_0;
}

// Returns the amount of bushels
u32 sub_800CE6C(Barn *barn) {
    return barn->unk_0_1;
}

// Returns the size of the barn 
u32 sub_800CE74(Barn *barn) {
    return min<u32>(16, barn->unk_0_0 * 8 + 8);
}

u32 sub_800CE9C(Barn *barn) {
    return barn->unk_0_0 + 1;
}

u32 sub_800CEA8(Barn *barn, u32 param) {
    if(param < sub_800CE74(barn)){
        u32 temp = barn->unk_1_5 & (1 << param);
        return ((-temp|temp) >> 31);
    }
    
    return 0;
}

u32 sub_800CED4(Barn *barn, u32 param) {
    if(param < sub_800CE9C(barn)){
        u32 temp = barn->unk_3_5 & (1 << param);
        return ((-temp|temp) >> 31);
    }
    
    return 0;
}

u32 sub_800CF00(Barn *barn) {
    return barn->unk_1_3;
}

u32 sub_800CF08(Barn *barn) {
    return barn->unk_1_4;
}

// Returns a cow at index
Cow * sub_800CF10(Barn *barn, u32 idx) {
    if(idx < sub_800CE74(barn))
        return sub_800DA2C(&barn->slots[idx]);
    else
        return nullptr;
}

// Returns a sheep at index
Sheep * sub_800CF38(Barn *barn, u32 idx) {
    if(idx < sub_800CE74(barn))
        return sub_800DA48(&barn->slots[idx]);
    else
        return nullptr;
}

// Returns an animal at index
void * sub_800CF60(Barn *barn, u32 idx) {
    if(idx < sub_800CE74(barn))
        return sub_800DA14(&barn->slots[idx]);
    else
        return nullptr;
}

// Returns the next free index
int sub_800CF88(Barn *barn, u32 idx) {
    u32 temp = sub_800CE74(barn);

    while(idx < temp) {
        if(sub_800DA08(&barn->slots[idx]))
            return idx;

        idx++;
    }
    
    return -1;
}

// Returns the number of cows
u32 sub_800CFC4(Barn *barn) {
    u32 temp = sub_800CE74(barn);
    u32 val = 0;
    u32 idx = 0;

    while(idx < temp) {
        if(sub_800DA2C(&barn->slots[idx]) != NULL)
            val++;
        idx++;
    }
    
    return val;
}

// Returns the number of sheep
u32 sub_800CFF4(Barn *barn) {
    u32 temp = sub_800CE74(barn);
    u32 val = 0;
    u32 idx = 0;

    while(idx < temp) {
        if(sub_800DA48(&barn->slots[idx]) != NULL)
            val++;
        idx++;
    }
    
    return val;
}

// Returns the number of cows + sheep
u32 sub_800D024(Barn *barn) {
    u32 temp = sub_800CE74(barn);
    u32 val = 0;
    u32 idx = 0;

    while(idx < temp) {
        if(!sub_800DA08(&barn->slots[idx]))
            val++;
        idx++;
    }
    
    return val;
}

int sub_800D058(Barn *barn) {
    if(barn->unk_3_7)
        return barn->unk_4_0;
    else
        return -1;
}

Unk_0800CE58 sub_800D074(Barn * barn, u32 slot)
{
    u32 barn_capacity = sub_800CE74(barn);

    if (slot >= barn_capacity)
        slot = slot % barn_capacity;

    u32 x_off = (slot % 4) * 40;

    return Unk_0800CE58(
        (slot < 8) ? 216 + x_off : 456 + x_off,
        (slot % 8 < 4) ? 104 : 144);
}

Unk_0800CE58 sub_800D0C0(Barn * barn, u32 arg_2)
{
    return Unk_0800CE58(0x20, 0x70 + 96 * arg_2);
}

int sub_800D0D0(Barn * barn)
{
    int free_count = sub_800CE74(barn) - sub_800D024(barn);

    if (free_count <= 0)
        return -1;

    int result = -1;

    u32 count = sub_800CE9C(barn);

    for (u32 i = 0; i < count; ++i)
    {
        if (barn->unk_07[i] == -1)
        {
            if (result == -1)
                result = i;

            continue;
        }

        BarnAnimal const * barn_animal = sub_800DA14(&barn->slots[barn->unk_07[i]]);

        if (barn_animal == nullptr || !barn_animal->IsPregnant())
        {
            if (result == -1)
                result = i;

            continue;
        }

        free_count--;

        if (free_count <= 0)
            return -1;
    }

    return result;
}

bool sub_800D158(Barn * barn, u32 idx)
{
    if (idx < sub_800CE9C(barn))
    {
        int slot = barn->unk_07[idx];

        if (slot < 0 || slot >= sub_800CE74(barn))
            return false;

        BarnAnimal const * barn_animal = sub_800DA14(&barn->slots[slot]);

        if (barn_animal != nullptr)
            return barn_animal->GetDaysPregnantHealthy() > 20 || barn_animal->GetDaysPregnant() >= 30;
    }

    return false;
}

int sub_800D1B4(Barn * barn, u32 idx)
{
    if (idx < sub_800CE9C(barn))
        return barn->unk_07[idx];

    return -1;
}

Unk_0800CE58 sub_800D1D8(Barn * barn, u32 arg_2)
{
    Unk_0800CE58 unk = sub_800D0C0(barn, arg_2);
    unk.x += 0x20;
    return unk;
}

u32 sub_800D1FC(Barn * barn)
{
    return barn->unk_4_4;
}

void * sub_800D204(Barn * barn)
{
    return barn->unk_0C;
}

u32 sub_800D208(Barn * barn)
{
    return barn->unk_5_6;
}

void * sub_800D210(Barn * barn)
{
    return barn->unk_1C;
}

void sub_800D214(Barn * barn)
{
    if (barn->unk_0_0 == 0)
        barn->unk_0_0 += 1;
}

void sub_800D23C(Barn * barn, u32 amount)
{
    barn->unk_0_1 = min<u32>(999, barn->unk_0_1 + amount);
}

void sub_800D280(Barn * barn, u32 amount)
{
    if (barn->unk_0_1 <= amount)
        barn->unk_0_1 = 0;
    else
        barn->unk_0_1 -= amount;
}

void sub_800D2BC(Barn * barn, u32 idx)
{
    if (idx < sub_800CE74(barn))
    {
        if ((barn->unk_1_5 & (1 << idx)) == 0)
            barn->unk_1_5 |= (1 << idx);
    }
}

void sub_800D2FC(Barn * barn, u32 idx)
{
    if (idx < sub_800CE74(barn))
    {
        if ((barn->unk_1_5 & (1 << idx)) != 0)
            barn->unk_1_5 &= ~(1 << idx);
    }
}

void sub_800D334(Barn * barn, u32 idx)
{
    if (idx < sub_800CE9C(barn))
    {
        if ((barn->unk_3_5 & (1 << idx)) == 0)
            barn->unk_3_5 |= (1 << idx);
    }
}

void sub_800D36C(Barn * barn, u32 idx)
{
    if (idx < sub_800CE9C(barn))
    {
        if ((barn->unk_3_5 & (1 << idx)) != 0)
            barn->unk_3_5 &= ~(1 << idx);
    }
}

void sub_800D3A0(Barn * barn)
{
    if (!barn->unk_1_3)
        barn->unk_1_3 = true;
}

void sub_800D3B8(Barn * barn)
{
    if (!barn->unk_1_4)
        barn->unk_1_4 = true;
}

}
