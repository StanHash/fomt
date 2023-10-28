#include "field.hh"

#include "rucksack_item.hh"

struct Unk_080E93F8
{
    /* +00 */ void const * unk_00;
    /* +04 */ STRUCT_PAD(0x04, 0x0A);
    /* +0A */ u16 unk_0A;
};

extern struct Unk_080E93F8 SHOULD_BE_CONST gUnk_080E93F8[];

FieldPlot::FieldPlot()
    : unk_00_00(0), unk_00_02(0), unk_00_08(0), unk_00_0C(0),
      unk_00_11(method_0800A014())
{
}

FieldPlot::FieldPlot(u32 arg_1, u32 arg_2, u32 arg_3)
    : unk_00_00(arg_1), unk_00_02(arg_2), unk_00_08(arg_3), unk_00_0C(0),
      unk_00_11(method_0800A014())
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

EC bool func_0800A07C(FieldPlot const & self)
{
    int val = self.unk_00_08;

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
            if (self.unk_00_02 != 0x14)
                return true;

            return false;
    }

    return false;
}

EC u32 func_0800A0A4(FieldPlot const & self)
{
    int val = self.unk_00_08;

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
            switch (self.unk_00_02)
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

EC void func_0800A120(FieldPlot & self, int arg_1)
{
    self.unk_00_00 = arg_1;
}

void FieldPlot::method_0800A134(int arg_1, int arg_2)
{
    unk_00_02 = arg_1;
    unk_00_08 = arg_2;
    unk_00_11 = method_0800A014();

    if (arg_2 == 8 && GetUnk0() != 3)
    {
        unk_00_00 = 0;
    }
}

EC u32 func_0800A190(FieldPlot & self, bool arg_1)
{
    u32 r4 = 0;

    u32 u0 = self.GetUnk0();

    if (self.GetUnk0() == 0)
    {
        if (self.GetUnk8() == 0)
        {
            self.unk_00_00 = arg_1 ? 1 : 2;
            self.unk_00_08 = 0;
            r4 = 1;
        }

        if (r4 == 1)
        {
            u32 r = rand() & 0xFF;

            if (r < 10)
            {
                r4 = 2;
            }
            else if ((r -= 10) < 3)
            {
                r4 = 4;
            }
            else if ((r -= 3) < 5)
            {
                r4 = 3;
            }
        }
    }
    else if (u0 == 1 || u0 == 2)
    {
        switch (self.GetUnk8())
        {
            case 1:
                self.unk_00_08 = 0;
                r4 = 1;
                break;

            case 7:
                self.unk_00_00 = arg_1 ? 1 : 2;
                self.unk_00_08 = 0;
                r4 = 1;
                break;

            case 8:
                r4 = 0;
                break;
        }
    }

    return r4;
}

EC u32 func_0800A238(FieldPlot & self, int arg_1)
{
    if (self.GetUnk8() == 0)
    {
        u32 u0 = self.GetUnk0();

        if (u0 == 1 || u0 == 2)
            self.unk_00_00 = 0;

        return 1;
    }

    int r1, r4;

    switch (self.unk_00_02)
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

        if (arg_1 >= self.GetUnk11())
        {
            self.unk_00_11 = 0;
            self.unk_00_08 = 0;

            if (self.GetUnk0() != 3)
                self.unk_00_00 = 0;

            return r4;
        }
        else
        {
            self.unk_00_11 -= arg_1;
        }
    }

    return 2;
}

EC u32 func_0800A33C(FieldPlot & self, int arg_1)
{
    if (self.GetUnk8() == 0)
        return 0;

    int r1, r5;

    switch (self.GetUnk2())
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

        if (arg_1 >= self.GetUnk11())
        {
            self.unk_00_11 = 0;
            self.unk_00_08 = 0;

            if (self.GetUnk0() != 3)
                self.unk_00_00 = 0;

            return r5;
        }
        else
        {
            self.unk_00_11 -= arg_1;
        }
    }

    return 3;
}

EC u32 func_0800A3C8(FieldPlot & self)
{
    if (self.GetUnk8() != 0)
    {
        if (self.GetUnk2() == 0x14)
        {
            if (self.GetUnk8() == 5)
            {
                self.unk_00_08 = 7;
                self.unk_00_0C = 0;
                return 1;
            }
        }
        else if (self.GetUnk2() != 0x15)
        {
            u32 u0 = self.GetUnk0();

            if (u0 == 1 || u0 == 2)
            {
                if (self.GetUnk8() == 6 || self.GetUnk8() == 2 || self.GetUnk8() == 3 || self.GetUnk8() == 4 || self.GetUnk8() == 5)
                {
                    self.unk_00_08 = 0;
                    return 2;
                }
            }
        }
        else
        {
            self.unk_00_08 = 0;
            return 2;
        }
    }

    return 0;
}

EC u32 func_0800A438(FieldPlot & self)
{
    if (self.GetUnk0() == 1)
    {
        self.unk_00_00 = 2;
        return 1;
    }

    return 0;
}

EC void func_0800A460(FieldPlot & self, int arg_1)
{
    u32 u0 = self.GetUnk0();

    if (u0 == 1 || u0 == 2)
    {
        if (self.GetUnk8() == 0)
        {
            self.unk_00_08 = 1;
            self.unk_00_02 = arg_1;
            self.unk_00_0C = 0;
        }
    }
}

EC RucksackItem func_0800A4A4(FieldPlot & self)
{
    switch (self.GetUnk8())
    {
        case 5:
            switch (self.GetUnk2())
            {
                case 0x2:
                    self.unk_00_08 = 2;
                    self.unk_00_0C = 4;
                    break;

                case 0x3:
                    self.unk_00_08 = 3;
                    self.unk_00_0C = 6;
                    break;

                case 0x5:
                    self.unk_00_08 = 4;
                    self.unk_00_0C = 6;
                    break;

                case 0x6:
                    self.unk_00_08 = 4;
                    self.unk_00_0C = 11;
                    break;

                case 0x9:
                    self.unk_00_08 = 4;
                    self.unk_00_0C = 15;
                    break;

                case 0xA:
                    self.unk_00_08 = 3;
                    self.unk_00_0C = 6;
                    break;

                case 0xC:
                    self.unk_00_08 = 2;
                    self.unk_00_0C = 3;
                    break;

                case 0xE:
                    self.unk_00_08 = 4;
                    self.unk_00_0C = 5;
                    break;

                case 0x14:
                    return RucksackItem();

                default:
                    self.unk_00_08 = 0;
                    self.unk_00_0C = 0;
                    break;
            }

            break;

        case 8:
            if (gUnk_080E93F8[self.unk_00_02].unk_0A != 0xFF)
            {
                self.unk_00_08 = 0;
            }

            break;

        default:
            return RucksackItem();
    }

    fu16 id = gUnk_080E93F8[self.GetUnk2()].unk_0A;

    if (id == 0xFF)
        return RucksackItem();

    if (self.GetUnk2() < 0xF)
        return RucksackItem(Food(id));
    else
        return RucksackItem(Article(id));
}

EC bool func_0800A6C8(FieldPlot const & self, Article const & article)
{
    if (self.GetUnk8() == 0)
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

EC void func_0800A6F4(FieldPlot & self, Article const & article)
{
    if (func_0800A6C8(self, article))
    {
        switch (article.GetId())
        {
            case ARTICLE_STONES:
                self.unk_00_02 = 0x16;
                break;

            case ARTICLE_LUMBER:
                self.unk_00_02 = 0x18;
                break;

            case ARTICLE_GOLDEN_LUMBER:
                self.unk_00_02 = 0x1A;
                break;

            case ARTICLE_BRANCHES:
                self.unk_00_02 = 0x17;
                break;

            default:
                return;
        }

        self.unk_00_08 = 8;

        if (self.GetUnk0() != 3)
            self.unk_00_00 = 0;

        self.unk_00_11 = self.method_0800A014();
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
