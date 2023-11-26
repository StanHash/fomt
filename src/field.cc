#include "field.hh"

#include "rucksack_item.hh"

// TODO: move those around

struct Unk_080E93F8
{
    /* +00 */ Unk_Something const * unk_00;
    /* +04 */ u8 unk_04;
    /* +05 */ u8 unk_05;
    /* +06 */ u8 unk_06;
    /* +07 */ u8 unk_07;
    /* +08 */ u8 unk_08;
    /* +09 */ u8 unk_09;
    /* +0A */ u16 unk_0A;
};

extern Unk_080E93F8 const gUnk_080E93F8[];

extern u32 const gUnk_080E8D14[][21];

struct Unk_080E8CC4
{
    /* +00 */ u8 unk_00;
    /* +01 */ u8 unk_01;
    /* +02 */ u8 unk_02;
    /* +03 */ u8 unk_03;
    /* +04 */ u8 unk_04;
    /* +05 */ u8 unk_05;
    /* +06 */ u8 unk_06;
    /* +07 */ u8 unk_07;
};

extern Unk_080E8CC4 const gUnk_080E8CC4[4][2];
extern Unk_080E8CC4 const gUnk_080E8D04;
extern Unk_080E8CC4 const gUnk_080E8D0C;

extern u8 SHOULD_BE_CONST gUnk_086D6518[];
extern u8 SHOULD_BE_CONST gUnk_086D6520[];
extern u8 SHOULD_BE_CONST gUnk_086D6528[];

extern Unk_Something SHOULD_BE_CONST gUnk_086D6458;
extern Unk_Something SHOULD_BE_CONST gUnk_086D6608;

FieldPlot::FieldPlot()
    : unk_00_00(0), unk_00_02(0), unk_00_08(0), unk_00_0C(0), unk_00_11(method_0800A014())
{
}

FieldPlot::FieldPlot(u32 arg_1, u32 arg_2, u32 arg_3)
    : unk_00_00(arg_1), unk_00_02(arg_2), unk_00_08(arg_3), unk_00_0C(0), unk_00_11(method_0800A014())
{
}

u32 FieldPlot::method_0800A014() const
{
    u32 result = 1;

    if (GetUnk8() != 0)
    {
        switch (unk_00_02)
        {
            case 0x1A:
                result = 6;
                break;

            case 0x1B:
            case 0x1C:
            case 0x1D:
            case 0x1E:
                result = 6;
                break;

            case 0x23:
            case 0x24:
            case 0x25:
            case 0x26:
                result = 6;
                break;

            case 0x1F:
            case 0x20:
            case 0x21:
            case 0x22:
                result = 3;
                break;
        }
    }

    return result;
}

bool FieldPlot::method_0800A07C() const
{
    int val = unk_00_08;

    switch (val)
    {
        case 0:
        case 1:
            return false;

        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
            if (unk_00_02 != 0x14)
                return true;

            return false;
    }

    return false;
}

u32 FieldPlot::method_0800A0A4() const
{
    int val = unk_00_08;

    switch (val)
    {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            return 0;

        case 8:
            switch (unk_00_02)
            {
                case 0x1B:
                case 0x1C:
                case 0x1D:
                case 0x1E:
                    return 0x3CC; // TODO: constant

                case 0x23:
                case 0x24:
                case 0x25:
                case 0x26:
                    return 0x3CB; // TODO: constant

                case 0x1F:
                case 0x20:
                case 0x21:
                case 0x22:
                    return 0x3CA; // TODO: constant
            }

            return 0;
    }

    return 0;
}

void FieldPlot::method_0800A120(int arg_1)
{
    unk_00_00 = arg_1;
}

void FieldPlot::method_0800A134(int id, int arg_2)
{
    unk_00_02 = id;
    unk_00_08 = arg_2;
    unk_00_11 = method_0800A014();

    if (arg_2 == 8 && GetUnk0() != 3)
    {
        unk_00_00 = 0;
    }
}

u32 FieldPlot::method_0800A190(bool arg_1)
{
    u32 result = 0;

    u32 u0 = GetUnk0();

    if (u0 == 0)
    {
        if (GetUnk8() == 0)
        {
            unk_00_00 = arg_1 ? 1 : 2;
            unk_00_08 = 0;
            result = 1;
        }

        if (result == 1)
        {
            u32 r = rand() & 0xFF;

            if (r < 10)
            {
                result = 2;
            }
            else if ((r -= 10) < 3)
            {
                result = 4;
            }
            else if ((r -= 3) < 5)
            {
                result = 3;
            }
        }
    }
    else if (u0 == 1 || u0 == 2)
    {
        switch (GetUnk8())
        {
            case 1:
                unk_00_08 = 0;
                result = 1;
                break;

            case 7:
                unk_00_00 = arg_1 ? 1 : 2;
                unk_00_08 = 0;
                result = 1;
                break;

            case 8:
                result = 0;
                break;
        }
    }

    return result;
}

u32 FieldPlot::method_0800A238(int arg_1)
{
    if (GetUnk8() == 0)
    {
        u32 u0 = GetUnk0();

        if (u0 == 1 || u0 == 2)
            unk_00_00 = 0;

        return 1;
    }

    int r1, r4;

    switch (unk_00_02)
    {
        default:
            return 0;

        case 0x16:
            r1 = 0;
            r4 = 3;
            break;

        case 0x18:
            r1 = 0;
            r4 = 5;
            break;

        case 0x19:
            r1 = 0;
            r4 = 6;
            break;

        case 0x1A:
            r1 = 3;
            r4 = 4;
            break;

        case 0x1F:
        case 0x20:
        case 0x21:
        case 0x22:
            r1 = 1;
            r4 = 7;
            break;

        case 0x23:
        case 0x24:
        case 0x25:
        case 0x26:
            r1 = 2;
            r4 = 8;
            break;
    }

    // note: inline?
    if (arg_1 - r1 > 0)
    {
        arg_1 = arg_1 - r1;

        if (arg_1 >= GetUnk11())
        {
            unk_00_11 = 0;
            unk_00_08 = 0;

            if (GetUnk0() != 3)
                unk_00_00 = 0;

            return r4;
        }
        else
        {
            unk_00_11 -= arg_1;
        }
    }

    return 2;
}

u32 FieldPlot::method_0800A33C(int arg_1)
{
    if (GetUnk8() == 0)
        return 0;

    int r1, r5;

    switch (GetUnk2())
    {
        default:
            return 0;

        case 0x17:
            r1 = 0;
            r5 = 1;
            break;

        case 0x1B:
        case 0x1C:
        case 0x1D:
        case 0x1E:
            r1 = 1;
            r5 = 2;
            break;
    }

    // note: inline?
    if (arg_1 - r1 > 0)
    {
        arg_1 = arg_1 - r1;

        if (arg_1 >= GetUnk11())
        {
            unk_00_11 = 0;
            unk_00_08 = 0;

            if (GetUnk0() != 3)
                unk_00_00 = 0;

            return r5;
        }
        else
        {
            unk_00_11 -= arg_1;
        }
    }

    return 3;
}

u32 FieldPlot::method_0800A3C8()
{
    if (GetUnk8() != 0)
    {
        if (GetUnk2() == 0x14)
        {
            if (GetUnk8() == 5)
            {
                unk_00_08 = 7;
                unk_00_0C = 0;
                return 1;
            }
        }
        else if (GetUnk2() != 0x15)
        {
            u32 u0 = GetUnk0();

            if (u0 == 1 || u0 == 2)
            {
                if (GetUnk8() == 6 || GetUnk8() == 2 || GetUnk8() == 3 || GetUnk8() == 4 || GetUnk8() == 5)
                {
                    unk_00_08 = 0;
                    return 2;
                }
            }
        }
        else
        {
            unk_00_08 = 0;
            return 2;
        }
    }

    return 0;
}

u32 FieldPlot::method_0800A438()
{
    if (GetUnk0() == 1)
    {
        unk_00_00 = 2;
        return 1;
    }

    return 0;
}

void FieldPlot::method_0800A460(int arg_1)
{
    u32 u0 = GetUnk0();

    if (u0 == 1 || u0 == 2)
    {
        if (GetUnk8() == 0)
        {
            unk_00_08 = 1;
            unk_00_02 = arg_1;
            unk_00_0C = 0;
        }
    }
}

RucksackItem FieldPlot::method_0800A4A4()
{
    switch (GetUnk8())
    {
        case 5:
            switch (GetUnk2())
            {
                case 0x2:
                    unk_00_08 = 2;
                    unk_00_0C = 4;
                    break;

                case 0x3:
                    unk_00_08 = 3;
                    unk_00_0C = 6;
                    break;

                case 0x5:
                    unk_00_08 = 4;
                    unk_00_0C = 6;
                    break;

                case 0x6:
                    unk_00_08 = 4;
                    unk_00_0C = 11;
                    break;

                case 0x9:
                    unk_00_08 = 4;
                    unk_00_0C = 15;
                    break;

                case 0xA:
                    unk_00_08 = 3;
                    unk_00_0C = 6;
                    break;

                case 0xC:
                    unk_00_08 = 2;
                    unk_00_0C = 3;
                    break;

                case 0xE:
                    unk_00_08 = 4;
                    unk_00_0C = 5;
                    break;

                case 0x14:
                    return RucksackItem();

                default:
                    unk_00_08 = 0;
                    unk_00_0C = 0;
                    break;
            }

            break;

        case 8:
            if (gUnk_080E93F8[unk_00_02].unk_0A != 0xFF)
            {
                unk_00_08 = 0;
            }

            break;

        default:
            return RucksackItem();
    }

    fu16 id = gUnk_080E93F8[GetUnk2()].unk_0A;

    if (id == 0xFF)
        return RucksackItem();

    if (GetUnk2() < 0xF)
        return RucksackItem(Food(id));
    else
        return RucksackItem(Article(id));
}

bool FieldPlot::method_0800A6C8(Article const & article) const
{
    if (GetUnk8() == 0)
    {
        switch (article.GetId())
        {
            case ARTICLE_STONES:
            case ARTICLE_BRANCHES:
            case ARTICLE_LUMBER:
            case ARTICLE_GOLDEN_LUMBER:
                return true;
        }
    }

    return false;
}

void FieldPlot::method_0800A6F4(Article const & article)
{
    if (method_0800A6C8(article))
    {
        switch (article.GetId())
        {
            case ARTICLE_STONES:
                unk_00_02 = 0x16;
                break;

            case ARTICLE_LUMBER:
                unk_00_02 = 0x18;
                break;

            case ARTICLE_GOLDEN_LUMBER:
                unk_00_02 = 0x1A;
                break;

            case ARTICLE_BRANCHES:
                unk_00_02 = 0x17;
                break;

            default:
                return;
        }

        unk_00_08 = 8;

        if (GetUnk0() != 3)
            unk_00_00 = 0;

        unk_00_11 = method_0800A014();
    }
}

bool FieldPlot::method_0800A78C() const
{
    if (GetUnk8() != 0)
    {
        switch (GetUnk2())
        {
            case 0x1B:
            case 0x1C:
            case 0x1D:
            case 0x1E:
            case 0x1F:
            case 0x20:
            case 0x21:
            case 0x22:
            case 0x23:
            case 0x24:
            case 0x25:
            case 0x26:
                return true;

            default:
                return false;
        }
    }

    return false;
}

void FieldPlot::DayUpdate(int weather, Date const & date)
{
    if (GetUnk8() == 1)
    {
        switch (GetUnk2())
        {
            case 0x00:
            case 0x01:
            case 0x02:
            case 0x03:
            case 0x04:
            case 0x0F:
            case 0x13:
                if (date.season != 0)
                    unk_00_08 = 0;

                break;

            case 0x05:
            case 0x06:
            case 0x07:
            case 0x08:
            case 0x09:
            case 0x10:
                if (date.season != 1)
                    unk_00_08 = 0;

                break;

            case 0x0A:
            case 0x0B:
            case 0x0C:
            case 0x0D:
            case 0x0E:
            case 0x11:
            case 0x12:
                if (date.season != 2)
                    unk_00_08 = 0;

                break;
        }
    }

    if (GetUnk8() != 0)
    {
        switch (GetUnk2())
        {
            case 0x00:
            case 0x01:
            case 0x02:
            case 0x03:
            case 0x04:
            case 0x0F:
            case 0x13:
            case 0x05:
            case 0x06:
            case 0x07:
            case 0x08:
            case 0x09:
            case 0x10:
            case 0x0A:
            case 0x0B:
            case 0x0C:
            case 0x0D:
            case 0x0E:
            case 0x11:
            case 0x12:
                switch (GetUnk8())
                {
                    case 4:
                    case 3:
                    case 2:
                    case 1:
                        if (GetUnk0() == 2)
                        {
                            unk_00_0C = unk_00_0C + 1;

                            int r3 = GetUnk8();

                            if (r3 != gUnk_080E8D14[unk_00_02][unk_00_0C])
                            {
                                unk_00_08 = gUnk_080E8D14[unk_00_02][unk_00_0C];
                            }
                        }

                        break;

                    case 5:
                        break;
                }

                break;

            case 0x14:
                if (date.season != 3 && GetUnk8() != 5)
                {
                    unk_00_0C = unk_00_0C + 1;

                    int r3 = GetUnk8();

                    if (r3 == 7)
                        r3 = 1;

                    if (r3 != gUnk_080E8D14[unk_00_02][unk_00_0C])
                    {
                        unk_00_08 = gUnk_080E8D14[unk_00_02][unk_00_0C];
                    }
                }

                break;

            case 0x15:
            case 0x16:
            case 0x17:
            case 0x18:
            case 0x19:
            case 0x1A:
            case 0x1B:
            case 0x1C:
            case 0x1D:
            case 0x1E:
            case 0x1F:
            case 0x20:
            case 0x21:
            case 0x22:
            case 0x23:
            case 0x24:
            case 0x25:
            case 0x26:
                break;
        }
    }

    if (GetUnk0() == 2)
    {
        unk_00_00 = 1;
    }

    Unk_080E8CC4 const * unk;

    switch (weather)
    {
        case 0:
        case 1:
        case 2:
        default:
            unk = &gUnk_080E8CC4[date.season][weather == 0];
            break;

        case 3:
            unk = &gUnk_080E8D04;
            break;

        case 4:
            unk = &gUnk_080E8D0C;
            break;
    }

    if (GetUnk8() != 0)
    {
        if (GetUnk8() == 1)
        {
            u32 r1 = (rand() >> 3) & 0xFF;

            if (r1 < unk->unk_07)
                unk_00_08 = 0;
        }
        else if (GetUnk2() == 0x18)
        {
            u32 r1 = (rand() >> 3) & 0xFF;

            if (r1 < unk->unk_00)
                method_0800A134(0x19, 8);
        }
    }
    else if (GetUnk0() == 0 || GetUnk0() == 3)
    {
        int r1 = (rand() >> 3) & 0xFF;

        if (r1 < unk->unk_04)
            method_0800A134(0x15, 8);
        else if (r1 < unk->unk_05 + unk->unk_04)
            method_0800A134(0x16, 8);
        else if (r1 < unk->unk_06 + unk->unk_05 + unk->unk_04)
            method_0800A134(0x17, 8);
    }
    else if (GetUnk0() == 1)
    {
        int r1 = (rand() >> 3) & 0xFF;

        if (r1 < unk->unk_01)
            method_0800A120(0);
        else if (r1 < unk->unk_02 + unk->unk_01)
            method_0800A134(0x15, 8);
        else if (r1 < unk->unk_03 + unk->unk_02 + unk->unk_01)
            method_0800A134(0x16, 8);
    }

    if (weather == 0)
    {
        if (GetUnk0() == 2)
            method_0800A120(1);
    }
    else
    {
        if (GetUnk0() == 1)
            method_0800A120(2);
    }
}

void FieldPlot::method_0800AB08(Season season)
{
    switch (season)
    {
        case 0:
            method_0800A120(0);

            if (GetUnk8() != 0)
            {
                switch (unk_00_02)
                {
                    case 0x14:
                        unk_00_08 = 7;
                        unk_00_00 = 1;
                        unk_00_0C = 0;
                        break;

                    case 0x00:
                    case 0x01:
                    case 0x02:
                    case 0x03:
                    case 0x04:
                    case 0x05:
                    case 0x06:
                    case 0x07:
                    case 0x08:
                    case 0x09:
                    case 0x0A:
                    case 0x0B:
                    case 0x0C:
                    case 0x0D:
                    case 0x0E:
                    case 0x0F:
                    case 0x10:
                    case 0x11:
                    case 0x12:
                    case 0x13:
                    case 0x15:
                        unk_00_08 = 0;
                        break;

                    case 0x16:
                    case 0x17:
                    case 0x18:
                    case 0x19:
                    case 0x1A:
                    case 0x1B:
                    case 0x1C:
                    case 0x1D:
                    case 0x1E:
                    case 0x1F:
                    case 0x20:
                    case 0x21:
                    case 0x22:
                    case 0x23:
                    case 0x24:
                    case 0x25:
                    case 0x26:
                        break;
                }
            }

            if (unk_00_00 == 0 && unk_00_08 == 0)
            {
                u32 r0 = (rand() >> 3) & 0xFF;

                if (r0 < 10)
                    method_0800A134(0x15, 8);
            }

            break;

        case 1:
            if (GetUnk8() != 0)
            {
                switch (unk_00_02)
                {
                    case 0x00:
                    case 0x01:
                    case 0x02:
                    case 0x03:
                    case 0x04:
                    case 0x0F:
                    case 0x13:
                        if (GetUnk8() == 1)
                            unk_00_08 = 0;
                        else
                            unk_00_08 = 6;

                        unk_00_00 = 1;

                        break;

                    case 0x05:
                    case 0x06:
                    case 0x07:
                    case 0x08:
                    case 0x09:
                    case 0x0A:
                    case 0x0B:
                    case 0x0C:
                    case 0x0D:
                    case 0x0E:
                    case 0x10:
                    case 0x11:
                    case 0x12:
                        unk_00_08 = 0;
                        unk_00_00 = 1;
                        break;

                    case 0x14:
                    case 0x15:
                    case 0x16:
                    case 0x17:
                    case 0x18:
                    case 0x19:
                    case 0x1A:
                    case 0x1B:
                    case 0x1C:
                    case 0x1D:
                    case 0x1E:
                    case 0x1F:
                    case 0x20:
                    case 0x21:
                    case 0x22:
                    case 0x23:
                    case 0x24:
                    case 0x25:
                    case 0x26:
                        break;
                }
            }

            break;

        case 2:
            if (GetUnk8() != 0)
            {
                switch (unk_00_02)
                {
                    case 0x05:
                    case 0x06:
                    case 0x07:
                    case 0x08:
                    case 0x09:
                    case 0x10:
                        if (GetUnk8() == 1)
                            unk_00_08 = 0;
                        else
                            unk_00_08 = 6;

                        unk_00_00 = 1;
                        break;

                    case 0x00:
                    case 0x01:
                    case 0x02:
                    case 0x03:
                    case 0x04:
                    case 0x0F:
                    case 0x0A:
                    case 0x0B:
                    case 0x0C:
                    case 0x0D:
                    case 0x0E:
                    case 0x11:
                    case 0x12:
                    case 0x13:
                        unk_00_08 = 0;
                        unk_00_00 = 1;
                        break;

                    case 0x14:
                    case 0x15:
                    case 0x16:
                    case 0x17:
                    case 0x18:
                    case 0x19:
                    case 0x1A:
                    case 0x1B:
                    case 0x1C:
                    case 0x1D:
                    case 0x1E:
                    case 0x1F:
                    case 0x20:
                    case 0x21:
                    case 0x22:
                    case 0x23:
                    case 0x24:
                    case 0x25:
                    case 0x26:
                        break;
                }
            }

            break;

        case 3:
            unk_00_00 = 3;

            if (GetUnk8() != 0)
            {
                switch (unk_00_02)
                {
                    case 0x14:
                        unk_00_08 = 7;
                        unk_00_0C = 0;
                        break;

                        if (GetUnk8() != 1)
                        {
                            unk_00_08 = 6;
                            unk_00_00 = 1;
                        }
                        else
                        {
                            unk_00_08 = 0;
                            unk_00_00 = 1;
                        }

                        break;

                    case 0x00:
                    case 0x01:
                    case 0x02:
                    case 0x03:
                    case 0x04:
                    case 0x0F:
                    case 0x05:
                    case 0x06:
                    case 0x07:
                    case 0x08:
                    case 0x09:
                    case 0x0A:
                    case 0x0B:
                    case 0x0C:
                    case 0x0D:
                    case 0x0E:
                    case 0x10:
                    case 0x11:
                    case 0x12:
                    case 0x13:
                    case 0x15:
                        unk_00_08 = 0;
                        break;

                    case 0x16:
                    case 0x17:
                    case 0x18:
                    case 0x19:
                    case 0x1A:
                    case 0x1B:
                    case 0x1C:
                    case 0x1D:
                    case 0x1E:
                    case 0x1F:
                    case 0x20:
                    case 0x21:
                    case 0x22:
                    case 0x23:
                    case 0x24:
                    case 0x25:
                    case 0x26:
                        break;
                }
            }

            break;
    }
}

void const * FieldPlot::method_0800AF20() const
{
    switch (GetUnk0_2())
    {
        case 0:
            return gUnk_086D6518;

        case 1:
            return gUnk_086D6520;

        case 2:
            return gUnk_086D6528;

        case 3:
            return nullptr;

        default:
            return nullptr;
    }
}

Unk_Something const * FieldPlot::method_0800AF5C(FieldPlot const * arg_1, FieldPlot const * arg_2) const
{
    Unk_Something const * ip = gUnk_080E93F8[GetUnk2()].unk_00;
    fu8 r4 = UINT8_MAX;

    if (GetUnk8() == 0)
        return &gUnk_086D6458;

    if (GetUnk8() == 1)
        return &gUnk_086D6608;

    if (GetUnk2() != 0x14)
    {
        switch (GetUnk8())
        {
            case 2:
                r4 = gUnk_080E93F8[GetUnk2()].unk_04;
                break;

            case 3:
                r4 = gUnk_080E93F8[GetUnk2()].unk_05;
                break;

            case 4:
                r4 = gUnk_080E93F8[GetUnk2()].unk_06;
                break;

            case 5:
                r4 = gUnk_080E93F8[GetUnk2()].unk_07;
                break;

            case 6:
                r4 = gUnk_080E93F8[GetUnk2()].unk_08;
                break;

            case 8:
                if (GetUnk0() != 3)
                    r4 = 0;
                else
                    r4 = 1;

                break;
        }
    }
    else if (GetUnk8() == 0x07)
    {
        r4 = 0x0C;
    }
    else
    {
        switch (GetUnk8())
        {
            case 0x03:
                r4 = 0;
                break;

            case 0x04:
                r4 = 4;
                break;

            case 0x05:
                r4 = 8;
                break;
        }

        if ((arg_1 == nullptr || arg_1->GetUnk2() != 0x14 || arg_1->GetUnk8() == 7 || arg_1->GetUnk8() < GetUnk8()))
        {
            if (!(arg_2 == nullptr || arg_2->GetUnk2() != 0x14 || arg_2->GetUnk8() == 7 || arg_2->GetUnk8() < GetUnk8()))
            {
                r4 = r4 + 1;
            }
        }
        else
        {
            if (arg_2 == nullptr || arg_2->GetUnk2() != 0x14 || arg_2->GetUnk8() == 7 || arg_2->GetUnk8() < GetUnk8())
            {
                r4 = r4 + 2;
            }
            else
            {
                r4 = r4 + 3;
            }
        }
    }

    return ip + r4;
}
