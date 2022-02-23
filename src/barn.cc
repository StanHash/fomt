#include "barn.hh"

#include <algorithm>

Barn::Barn()
    : unk_0_0(0),
      unk_0_1(0),
      unk_1_3(false),
      unk_1_4(false),
      unk_1_5(0),
      unk_3_5(0),
      unk_3_7(false),
      unk_4_4(0),
      unk_5_6(0)
{
    fill_n_inl(unk_07, 2, -1);
}

Vec2 Barn::method_0800CE58(void)
{
    return Vec2(184, 272);
}

u32 Barn::GetUpgradeLevel(void) const
{
    return unk_0_0;
}

u32 Barn::GetBushelCount(void) const
{
    return unk_0_1;
}

u32 Barn::GetCapacity(void) const
{
    return min<u32>(16, 8 + unk_0_0 * 8);
}

u32 Barn::GetPregnancyStallCapacity(void) const
{
    return 1 + unk_0_0;
}

extern "C"
{

Barn * sub_800CDBC(Barn * self) ALIAS(__4Barn);
Vec2 sub_800CE58(void) ALIAS(method_0800CE58__4Barn);
u8 sub_800CE64(Barn *barn) ALIAS(GetUpgradeLevel__C4Barn);
u32 sub_800CE6C(Barn *barn) ALIAS(GetBushelCount__C4Barn);
u32 sub_800CE74(Barn *barn) ALIAS(GetCapacity__C4Barn);
u32 sub_800CE9C(Barn *barn) ALIAS(GetPregnancyStallCapacity__C4Barn);

bool sub_800CEA8(Barn *barn, u32 slot)
{
    if (slot < barn->GetCapacity())
        return !!(barn->unk_1_5 & (1 << slot));

    return false;
}

u32 sub_800CED4(Barn *barn, u32 param) {
    if(param < barn->GetPregnancyStallCapacity()){
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
Cow const * sub_800CF10(Barn const * barn, u32 idx) {
    if(idx < barn->GetCapacity())
        return barn->slots[idx].AsCow();
    else
        return nullptr;
}

// Returns a sheep at index
Sheep const * sub_800CF38(Barn const * barn, u32 idx) {
    if(idx < barn->GetCapacity())
        return barn->slots[idx].AsSheep();
    else
        return nullptr;
}

// Returns an animal at index
BarnAnimal const * sub_800CF60(Barn const * barn, u32 idx) {
    if(idx < barn->GetCapacity())
        return barn->slots[idx].AsBarnAnimal();
    else
        return nullptr;
}

// Returns the next free index
int sub_800CF88(Barn *barn, u32 idx) {
    u32 capacity = barn->GetCapacity();

    while(idx < capacity)
    {
        if (barn->slots[idx].IsEmpty())
            return idx;

        idx++;
    }
    
    return -1;
}

// Returns the number of cows
u32 sub_800CFC4(Barn const *barn) {
    u32 temp = barn->GetCapacity();
    u32 val = 0;
    u32 idx = 0;

    while(idx < temp) {
        if(barn->slots[idx].AsCow() != NULL)
            val++;
        idx++;
    }
    
    return val;
}

// Returns the number of sheep
u32 sub_800CFF4(Barn const *barn) {
    u32 temp = barn->GetCapacity();
    u32 val = 0;
    u32 idx = 0;

    while(idx < temp) {
        if(barn->slots[idx].AsSheep() != NULL)
            val++;
        idx++;
    }
    
    return val;
}

// Returns the number of cows + sheep
u32 sub_800D024(Barn const *barn) {
    u32 temp = barn->GetCapacity();
    u32 val = 0;
    u32 idx = 0;

    while(idx < temp) {
        if(!barn->slots[idx].IsEmpty())
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

Vec2 sub_800D074(Barn * barn, u32 slot)
{
    u32 barn_capacity = barn->GetCapacity();

    if (slot >= barn_capacity)
        slot = slot % barn_capacity;

    u32 x_off = (slot % 4) * 40;

    return Vec2(
        (slot < 8) ? 216 + x_off : 456 + x_off,
        (slot % 8 < 4) ? 104 : 144);
}

Vec2 sub_800D0C0(Barn * barn, u32 idx)
{
    return Vec2(0x20, 0x70 + 96 * idx);
}

int sub_800D0D0(Barn const * barn)
{
    int free_count = barn->GetCapacity() - sub_800D024(barn);

    if (free_count <= 0)
        return -1;

    int result = -1;

    u32 count = barn->GetPregnancyStallCapacity();

    for (u32 i = 0; i < count; ++i)
    {
        if (barn->unk_07[i] == -1)
        {
            if (result == -1)
                result = i;

            continue;
        }

        BarnAnimal const * barn_animal = barn->slots[barn->unk_07[i]].AsBarnAnimal();

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

bool sub_800D158(Barn const * barn, u32 idx)
{
    if (idx < barn->GetPregnancyStallCapacity())
    {
        int slot = barn->unk_07[idx];

        if (slot < 0 || slot >= barn->GetCapacity())
            return false;

        BarnAnimal const * barn_animal = barn->slots[slot].AsBarnAnimal();

        if (barn_animal != nullptr)
            return barn_animal->GetDaysPregnantHealthy() > 20 || barn_animal->GetDaysPregnant() >= 30;
    }

    return false;
}

int sub_800D1B4(Barn * barn, u32 idx)
{
    if (idx < barn->GetPregnancyStallCapacity())
        return barn->unk_07[idx];

    return -1;
}

Vec2 sub_800D1D8(Barn * barn, u32 idx)
{
    Vec2 unk = sub_800D0C0(barn, idx);
    unk.x += 0x20;
    return unk;
}

u32 sub_800D1FC(Barn * barn)
{
    return barn->unk_4_4;
}

char const * sub_800D204(Barn * barn)
{
    return barn->unk_0C;
}

u32 sub_800D208(Barn * barn)
{
    return barn->unk_5_6;
}

char const * sub_800D210(Barn * barn)
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
    if (idx < barn->GetCapacity())
    {
        if ((barn->unk_1_5 & (1 << idx)) == 0)
            barn->unk_1_5 |= (1 << idx);
    }
}

void sub_800D2FC(Barn * barn, u32 idx)
{
    if (idx < barn->GetCapacity())
    {
        if ((barn->unk_1_5 & (1 << idx)) != 0)
            barn->unk_1_5 &= ~(1 << idx);
    }
}

void sub_800D334(Barn * barn, u32 idx)
{
    if (idx < barn->GetPregnancyStallCapacity())
    {
        if ((barn->unk_3_5 & (1 << idx)) == 0)
            barn->unk_3_5 |= (1 << idx);
    }
}

void sub_800D36C(Barn * barn, u32 idx)
{
    if (idx < barn->GetPregnancyStallCapacity())
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

Cow * sub_800D3D0(Barn * barn, u32 slot)
{
    if (slot < barn->GetCapacity())
        return barn->slots[slot].AsCow();

    return nullptr;
}

Sheep * sub_800D3F8(Barn * barn, u32 slot)
{
    if (slot < barn->GetCapacity())
        return barn->slots[slot].AsSheep();

    return nullptr;
}

BarnAnimal * sub_800D420(Barn * barn, u32 slot)
{
    if (slot < barn->GetCapacity())
        return barn->slots[slot].AsBarnAnimal();

    return nullptr;
}

int sub_800D448(Barn * barn, Cow const & cow)
{
    for (int idx = sub_800CF88(barn, 0); idx >= 0; idx = sub_800CF88(barn, idx + 1))
    {
        if (barn->slots[idx].InsertCow(cow))
            return idx;
    }

    return -1;
}

int sub_800D484(Barn * barn, Sheep const & sheep)
{
    for (int idx = sub_800CF88(barn, 0); idx >= 0; idx = sub_800CF88(barn, idx + 1))
    {
        if (barn->slots[idx].InsertSheep(sheep))
            return idx;
    }

    return -1;
}

void sub_800D4C0(Barn * barn, u32 idx)
{
    barn->slots[idx].Remove();
}

void sub_800D4D4(Barn * barn, u32 idx)
{
    // for some reason variables here a duplicated

    BarnAnimal * barn_animal = sub_800D420(barn, idx);
    BarnAnimal * barn_animal_2 = barn_animal;

    if (barn_animal != nullptr)
    {
        u32 age = barn_animal->GetAge();
        u32 age_2 = age;

        if (sub_800D3D0(barn, idx) != nullptr)
        {
            if (barn->unk_4_4 < age)
            {
                barn->unk_4_4 = age;
                barn->unk_0C = barn_animal->GetName();
            }
        }
        else
        {
            if (barn->unk_5_6 < age_2)
            {
                barn->unk_5_6 = age_2;
                barn->unk_1C = barn_animal_2->GetName();
            }
        }

        sub_800D4C0(barn, idx);
    }
}

/*
static inline void Test(BarnAnimal * barn_animal, Vec2<i16> const & vec)
{
    barn_animal->SetLocation(ActorLocation(Location(0x25, vec.x, vec.y), 3));
}

void Barn::DayUpdate(void)
{
    u32 feed_count = popcnt(unk_1_5);
    unk_1_5 = 0;

    feed_count += popcnt(unk_3_5);

    for (u32 capacity = GetPregnancyStallCapacity(), i = 0; i < capacity; ++i)
    {
        if (unk_07[i] < 0)
            continue;

        BarnAnimal * barn_animal = slots[unk_07[i]].AsBarnAnimal();
        BarnAnimal * barn_animal_2 = barn_animal;

        if (barn_animal == nullptr)
            continue;

        if (!barn_animal->IsPregnant())
            continue;

        if ((unk_3_5 & (1 << i)) != 0)
        {
            feed_count--;
            barn_animal->SetFed();
        }

        // this was a tricky bit to get matching
        Vec2<i16> vec;
        vec = sub_800D0C0(i);
        Test(barn_animal_2, vec);
    }

    unk_3_5 = 0;

    for (u32 capacity = GetCapacity(), i = 0; i < capacity; ++i)
    {
        if (slots[i].IsEmpty())
            continue;

        Cow * cow = slots[i].AsCow();
        Sheep * sheep = slots[i].AsSheep();

        if (cow == nullptr && sheep == nullptr)
            continue;

        BarnAnimal * barn_animal = cow == nullptr ? sheep : cow;

        if (unk_3_7 && i == unk_4_0)
        {
            barn_animal->SetFed();
        }
        else
        {
            if (!barn_animal->HasBeenFed() && !barn_animal->IsPregnant() && feed_count != 0)
            {
                // TODO: what's up with that?
                if (Actor(*barn_animal).location.GetMap() == 0x25)
                {
                    feed_count--;
                    barn_animal->SetFed();
                }
            }
        }

        if (cow != nullptr)
            cow->DayUpdate();
        else
            sheep->DayUpdate();
    }
}
*/

NAKED
void sub_800D5B0(Barn * self)
{
    asm_unified("\n\
        push {r4, r5, r6, r7, lr}\n\
        mov r7, sl\n\
        mov r6, sb\n\
        mov r5, r8\n\
        push {r5, r6, r7}\n\
        sub sp, #0x20\n\
        mov sb, r0\n\
        ldr r4, [r0]\n\
        lsls r0, r4, #3\n\
        lsrs r1, r0, #0x10\n\
        ldr r6, _0800D780 @ =0x55555555\n\
        ands r1, r6\n\
        lsrs r0, r0, #0x11\n\
        ands r0, r6\n\
        adds r0, r1, r0\n\
        ldr r1, _0800D784 @ =0x33333333\n\
        mov r8, r1\n\
        adds r1, r0, #0\n\
        mov r2, r8\n\
        ands r1, r2\n\
        lsrs r0, r0, #2\n\
        ands r0, r2\n\
        adds r0, r1, r0\n\
        ldr r5, _0800D788 @ =0x0F0F0F0F\n\
        adds r1, r0, #0\n\
        ands r1, r5\n\
        lsrs r0, r0, #4\n\
        ands r0, r5\n\
        adds r0, r1, r0\n\
        ldr r3, _0800D78C @ =0x00FF00FF\n\
        adds r1, r0, #0\n\
        ands r1, r3\n\
        lsrs r0, r0, #8\n\
        ands r0, r3\n\
        adds r0, r1, r0\n\
        ldr r2, _0800D790 @ =0x0000FFFF\n\
        adds r1, r0, #0\n\
        ands r1, r2\n\
        lsrs r0, r0, #0x10\n\
        ands r0, r2\n\
        adds r1, r1, r0\n\
        mov sl, r1\n\
        ldr r0, _0800D794 @ =0xE0001FFF\n\
        ands r4, r0\n\
        mov r0, sb\n\
        str r4, [r0]\n\
        ldrb r1, [r0, #3]\n\
        lsls r1, r1, #0x19\n\
        lsrs r0, r1, #0x1e\n\
        ands r0, r6\n\
        lsrs r1, r1, #0x1f\n\
        ands r1, r6\n\
        adds r0, r0, r1\n\
        mov r1, r8\n\
        ands r0, r1\n\
        ands r0, r5\n\
        ands r0, r3\n\
        ands r0, r2\n\
        add sl, r0\n\
        mov r0, sb\n\
        bl sub_800CE9C\n\
        str r0, [sp, #0x18]\n\
        movs r6, #0\n\
        cmp r6, r0\n\
        bhs _0800D714\n\
        add r2, sp, #0x14\n\
        mov r8, r2\n\
        add r5, sp, #8\n\
    _0800D63A:\n\
        mov r0, sb\n\
        adds r0, #7\n\
        adds r1, r0, r6\n\
        movs r0, #0\n\
        ldrsb r0, [r1, r0]\n\
        cmp r0, #0\n\
        blt _0800D70C\n\
        adds r1, r0, #0\n\
        lsls r0, r1, #4\n\
        subs r0, r0, r1\n\
        lsls r0, r0, #2\n\
        adds r0, #0x2c\n\
        add r0, sb\n\
        bl AsBarnAnimal__7BarnEnt\n\
        adds r4, r0, #0\n\
        adds r7, r4, #0\n\
        cmp r4, #0\n\
        beq _0800D70C\n\
        bl IsPregnant__C10BarnAnimal\n\
        lsls r0, r0, #0x18\n\
        cmp r0, #0\n\
        beq _0800D70C\n\
        mov r0, sb\n\
        ldrb r1, [r0, #3]\n\
        lsls r1, r1, #0x19\n\
        lsrs r1, r1, #0x1e\n\
        movs r0, #1\n\
        lsls r0, r6\n\
        ands r1, r0\n\
        cmp r1, #0\n\
        beq _0800D688\n\
        movs r1, #1\n\
        rsbs r1, r1, #0\n\
        add sl, r1\n\
        adds r0, r4, #0\n\
        bl SetFed__10BarnAnimal\n\
    _0800D688:\n\
        add r0, sp, #0x10\n\
        mov r1, sb\n\
        adds r2, r6, #0\n\
        bl sub_800D0C0\n\
        ldr r0, [sp, #0x10]\n\
        str r0, [sp, #0x14]\n\
        mov r2, r8\n\
        movs r0, #0\n\
        ldrsh r3, [r2, r0]\n\
        movs r1, #2\n\
        ldrsh r4, [r2, r1]\n\
        movs r2, #0x25\n\
        ldrh r1, [r5]\n\
        ldr r0, _0800D798 @ =0xFFFFFC00\n\
        ands r0, r1\n\
        orrs r0, r2\n\
        strh r0, [r5]\n\
        lsls r3, r3, #0x10\n\
        lsrs r1, r3, #0x10\n\
        movs r2, #0x3f\n\
        ands r1, r2\n\
        lsls r1, r1, #2\n\
        ldrb r2, [r5, #1]\n\
        movs r0, #3\n\
        ands r0, r2\n\
        orrs r0, r1\n\
        strb r0, [r5, #1]\n\
        lsrs r3, r3, #0x16\n\
        ldr r0, _0800D79C @ =0x000003FF\n\
        ands r3, r0\n\
        ldrh r1, [r5, #2]\n\
        ldr r0, _0800D798 @ =0xFFFFFC00\n\
        ands r0, r1\n\
        orrs r0, r3\n\
        strh r0, [r5, #2]\n\
        lsls r4, r4, #0x10\n\
        lsrs r1, r4, #0x10\n\
        movs r2, #0x3f\n\
        ands r1, r2\n\
        lsls r1, r1, #2\n\
        ldrb r2, [r5, #3]\n\
        movs r0, #3\n\
        ands r0, r2\n\
        orrs r0, r1\n\
        strb r0, [r5, #3]\n\
        lsrs r4, r4, #0x16\n\
        ldr r0, _0800D79C @ =0x000003FF\n\
        ands r4, r0\n\
        ldrh r1, [r5, #4]\n\
        ldr r0, _0800D798 @ =0xFFFFFC00\n\
        ands r0, r1\n\
        orrs r0, r4\n\
        strh r0, [r5, #4]\n\
        mov r4, sp\n\
        mov r0, sp\n\
        adds r1, r5, #0\n\
        movs r2, #6\n\
        bl memcpy\n\
        movs r1, #3\n\
        strb r1, [r4, #6]\n\
        adds r0, r7, #0\n\
        mov r1, sp\n\
        bl SetLocation__5ActorRC13ActorLocation\n\
    _0800D70C:\n\
        adds r6, #1\n\
        ldr r2, [sp, #0x18]\n\
        cmp r6, r2\n\
        blo _0800D63A\n\
    _0800D714:\n\
        mov r0, sb\n\
        ldrb r1, [r0, #3]\n\
        movs r0, #0x61\n\
        rsbs r0, r0, #0\n\
        ands r0, r1\n\
        mov r1, sb\n\
        strb r0, [r1, #3]\n\
        mov r0, sb\n\
        bl sub_800CE74\n\
        str r0, [sp, #0x1c]\n\
        movs r2, #0\n\
        mov r8, r2\n\
        cmp r8, r0\n\
        bhs _0800D7FC\n\
        mov r7, sb\n\
        adds r7, #0x2c\n\
    _0800D736:\n\
        adds r0, r7, #0\n\
        bl IsEmpty__C7BarnEnt\n\
        lsls r0, r0, #0x18\n\
        cmp r0, #0\n\
        bne _0800D7F0\n\
        adds r0, r7, #0\n\
        bl AsCow__7BarnEnt\n\
        adds r5, r0, #0\n\
        adds r0, r7, #0\n\
        bl AsSheep__7BarnEnt\n\
        adds r6, r0, #0\n\
        cmp r5, #0\n\
        bne _0800D75A\n\
        cmp r6, #0\n\
        beq _0800D7F0\n\
    _0800D75A:\n\
        adds r4, r5, #0\n\
        cmp r5, #0\n\
        bne _0800D762\n\
        adds r4, r6, #0\n\
    _0800D762:\n\
        mov r1, sb\n\
        ldrb r0, [r1, #3]\n\
        lsrs r0, r0, #7\n\
        cmp r0, #0\n\
        beq _0800D7A0\n\
        ldrb r0, [r1, #4]\n\
        lsls r0, r0, #0x1c\n\
        lsrs r0, r0, #0x1c\n\
        cmp r8, r0\n\
        bne _0800D7A0\n\
        adds r0, r4, #0\n\
        bl SetFed__10BarnAnimal\n\
        b _0800D7DE\n\
        .align 2, 0\n\
    _0800D780: .4byte 0x55555555\n\
    _0800D784: .4byte 0x33333333\n\
    _0800D788: .4byte 0x0F0F0F0F\n\
    _0800D78C: .4byte 0x00FF00FF\n\
    _0800D790: .4byte 0x0000FFFF\n\
    _0800D794: .4byte 0xE0001FFF\n\
    _0800D798: .4byte 0xFFFFFC00\n\
    _0800D79C: .4byte 0x000003FF\n\
    _0800D7A0:\n\
        adds r0, r4, #0\n\
        bl HasBeenFed__C9Livestock\n\
        lsls r0, r0, #0x18\n\
        cmp r0, #0\n\
        bne _0800D7DE\n\
        adds r0, r4, #0\n\
        bl IsPregnant__C10BarnAnimal\n\
        lsls r0, r0, #0x18\n\
        cmp r0, #0\n\
        bne _0800D7DE\n\
        mov r2, sl\n\
        cmp r2, #0\n\
        beq _0800D7DE\n\
        mov r0, sp\n\
        adds r1, r4, #0\n\
        bl __5ActorRC5Actor\n\
        mov r0, sp\n\
        ldrh r0, [r0]\n\
        lsls r0, r0, #0x16\n\
        lsrs r0, r0, #0x16\n\
        cmp r0, #0x25\n\
        bne _0800D7DE\n\
        movs r0, #1\n\
        rsbs r0, r0, #0\n\
        add sl, r0\n\
        adds r0, r4, #0\n\
        bl SetFed__10BarnAnimal\n\
    _0800D7DE:\n\
        cmp r5, #0\n\
        beq _0800D7EA\n\
        adds r0, r5, #0\n\
        bl DayUpdate__3Cow\n\
        b _0800D7F0\n\
    _0800D7EA:\n\
        adds r0, r6, #0\n\
        bl DayUpdate__5Sheep\n\
    _0800D7F0:\n\
        adds r7, #0x3c\n\
        movs r1, #1\n\
        add r8, r1\n\
        ldr r2, [sp, #0x1c]\n\
        cmp r8, r2\n\
        blo _0800D736\n\
    _0800D7FC:\n\
        add sp, #0x20\n\
        pop {r3, r4, r5}\n\
        mov r8, r3\n\
        mov sb, r4\n\
        mov sl, r5\n\
        pop {r4, r5, r6, r7}\n\
        pop {r0}\n\
        bx r0");
}

void sub_800D80C(Barn * self, u32 idx)
{
    u32 capacity = self->GetCapacity();

    if (idx >= capacity)
        idx = idx % capacity;

    if (!self->slots[idx].IsEmpty())
    {
        self->unk_3_7 = true;
        self->unk_4_0 = idx;
    }
}

void sub_800D858(Barn * self)
{
    self->unk_3_7 = false;
}

void sub_800D864(Barn * self, u32 pregnancy_stall_idx, u32 ent_idx)
{
    if (pregnancy_stall_idx < self->GetPregnancyStallCapacity() && ent_idx < self->GetCapacity())
    {
        struct BarnAnimal const * barn_animal = self->slots[ent_idx].AsBarnAnimal();

        if (barn_animal != nullptr && barn_animal->IsPregnant())
            self->unk_07[pregnancy_stall_idx] = ent_idx;
    }
}

int sub_800D8A8(Barn * self, u32 idx) ALIAS(AttemptBirth__4BarnUi);

}

int Barn::AttemptBirth(u32 pregnancy_stall_idx)
{
    Vec2 vec;

    if (!sub_800D158(this, pregnancy_stall_idx))
        return -1;

    int ent_idx = unk_07[pregnancy_stall_idx];
    unk_07[pregnancy_stall_idx] = -1;

    vec = sub_800D1D8(this, pregnancy_stall_idx);
    ActorLocation actor_location = ActorLocation(Location(0x25, vec.x, vec.y), 2);

    Cow * parent_cow = slots[ent_idx].AsCow();

    if (parent_cow != nullptr)
    {
        parent_cow->ResetPregnancy();

        Cow new_cow(actor_location, 0, 0);

        u32 max_new_affection = parent_cow->GetAffection() / 2;
        if (max_new_affection > 1)
            new_cow.AddAffection(rand() % max_new_affection);

        return sub_800D448(this, new_cow);
    }

    Sheep * parent_sheep = slots[ent_idx].AsSheep();

    if (parent_sheep != nullptr)
    {
        parent_sheep->ResetPregnancy();

        Sheep new_sheep(actor_location, 0, 0);

        u32 max_new_affection = parent_sheep->GetAffection() / 2;
        if (max_new_affection > 1)
            new_sheep.AddAffection(rand() % max_new_affection);

        return sub_800D484(this, new_sheep);
    }

    return -1;
}

BarnEnt::BarnEnt()
    : occupied(false)
{
}

bool BarnEnt::IsEmpty(void) const
{
    return !occupied;
}

BarnAnimal const * BarnEnt::AsBarnAnimal(void) const
{
    return occupied
        ? reinterpret_cast<BarnAnimal const *>(&data)
        : nullptr;
}

Cow const * BarnEnt::AsCow(void) const
{
    return (occupied && kind == KIND_COW)
        ? reinterpret_cast<Cow const *>(&data)
        : nullptr;
}

Sheep const * BarnEnt::AsSheep(void) const
{
    return (occupied && kind == KIND_SHEEP)
        ? reinterpret_cast<Sheep const *>(&data)
        : nullptr;
}

BarnAnimal * BarnEnt::AsBarnAnimal(void)
{
    return occupied
        ? reinterpret_cast<BarnAnimal *>(&data)
        : nullptr;
}

Cow * BarnEnt::AsCow(void)
{
    return (occupied && kind == KIND_COW)
        ? reinterpret_cast<Cow *>(&data)
        : nullptr;
}

Sheep * BarnEnt::AsSheep(void)
{
    return (occupied && kind == KIND_SHEEP)
        ? reinterpret_cast<Sheep *>(&data)
        : nullptr;
}

bool BarnEnt::InsertCow(Cow const & to_copy)
{
    if (!occupied)
    {
        Cow * cow = reinterpret_cast<Cow *>(&data);

        if (cow != nullptr)
            *cow = to_copy;

        kind = KIND_COW;
        occupied = true;

        return true;
    }

    return false;
}

bool BarnEnt::InsertSheep(Sheep const & to_copy)
{
    if (!occupied)
    {
        Sheep * sheep = reinterpret_cast<Sheep *>(&data);

        if (sheep != nullptr)
            *sheep = to_copy;

        kind = KIND_SHEEP;
        occupied = true;

        return true;
    }

    return false;
}

void BarnEnt::Remove(void)
{
    if (occupied)
        occupied = false;
}
