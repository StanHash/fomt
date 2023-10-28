#include "field.hh"

#include "rucksack_item.hh"

struct Unk_080E93F8
{
    /* +00 */ void const * unk_00;
    /* +04 */ STRUCT_PAD(0x04, 0x0A);
    /* +0A */ u16 unk_0A;
};

extern struct Unk_080E93F8 SHOULD_BE_CONST gUnk_080E93F8[];

FieldPlot::FieldPlot() : unk_00_00(0), unk_00_02(0), unk_00_08(0), unk_00_0C(0), unk_00_11(method_0800A014())
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
