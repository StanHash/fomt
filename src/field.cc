#include "field.hh"

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

#if 0
EC u32 func_0800A33C(FieldPlot & self, int arg_1)
{
}
#endif
