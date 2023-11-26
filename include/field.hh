#ifndef FIELD_HH
#define FIELD_HH

#include "global.h"

#include "game_time.hh"
#include "rucksack_item.hh" // note: fwdable

#include <cstdlib> // rand

// TODO: what is this?
struct Unk_Something
{
    STRUCT_PAD(0x00, 0x0C);
};

struct FieldPlot
{
    FieldPlot();
    FieldPlot(u32 arg_1, u32 arg_2, u32 arg_3);

    int GetUnk0() const
    {
        return unk_00_00;
    }

    // this sucks
    fu16 GetUnk0_2() const
    {
        return unk_00_00;
    }

    int GetUnk2() const
    {
        return unk_00_02;
    }

    int GetUnk8() const
    {
        return unk_00_08;
    }

    u32 GetUnk11() const
    {
        return unk_00_11;
    }

    u32 method_0800A014() const;
    bool method_0800A07C() const;
    u32 method_0800A0A4() const;
    void method_0800A120(int arg_1);
    void method_0800A134(int id, int arg_2);
    u32 method_0800A190(bool arg_1);
    u32 method_0800A238(int arg_1);
    u32 method_0800A33C(int arg_1);
    u32 method_0800A3C8();
    u32 method_0800A438();
    void method_0800A460(int arg_1);
    RucksackItem method_0800A4A4();
    bool method_0800A6C8(Article const & article) const;
    void method_0800A6F4(Article const & article);
    bool method_0800A78C() const;

    // NOTE: unsure if this is actually weather
    void DayUpdate(int weather, Date const & date);
    void method_0800AB08(Season season);
    void const * method_0800AF20() const;
    Unk_Something const * method_0800AF5C(FieldPlot const * arg_1, FieldPlot const * arg_2) const;

    // typing on these is shaky
    /* bit 00 */ u32 unk_00_00 : 2;
    /* bit 02 */ u32 unk_00_02 : 6;
    /* bit 08 */ u32 unk_00_08 : 4;
    /* bit 0C */ u16 unk_00_0C : 5;
    /* bit 11 */ u16 unk_00_11 : 3;
};

template <u32 Width, u32 Height> struct Field
{
    FieldPlot const & PlotAt(int x, int y) const
    {
        return plots[x + y * Width];
    }

    FieldPlot & PlotAt(int x, int y)
    {
        return plots[x + y * Width];
    }

    bool FindRandomSpotFor(int id, i32 (&out_pos)[2]) const
    {
        bool big = id > 0x1A;

        for (u32 i = 0; i < 100; i++)
        {
            int x, y;

            if (big)
            {
                x = rand() % (Width - 1);
                y = rand() % (Height - 1);
            }
            else
            {
                x = rand() % Width;
                y = rand() % Height;
            }

            if (PlotAt(x, y).method_0800A78C())
                continue;

            if (big)
            {
                if (PlotAt(x + 1, y + 0).method_0800A78C())
                    continue;

                if (PlotAt(x + 0, y + 1).method_0800A78C())
                    continue;

                if (PlotAt(x + 1, y + 1).method_0800A78C())
                    continue;
            }

            out_pos[0] = x;
            out_pos[1] = y;

            return true;
        }

        return false;
    }

    void PutAtRandom(int id)
    {
        i32 pos[2];

        if (FindRandomSpotFor(id, pos))
        {
            bool big = id > 0x1A;

            PlotAt(pos[0] + 0, pos[1] + 0).method_0800A134(id + 0, 8);

            if (big)
            {
                PlotAt(pos[0] + 1, pos[1] + 0).method_0800A134(id + 1, 8);
                PlotAt(pos[0] + 0, pos[1] + 1).method_0800A134(id + 2, 8);
                PlotAt(pos[0] + 1, pos[1] + 1).method_0800A134(id + 3, 8);
            }
        }
    }

    // TODO: name
    static int RandThing()
    {
        if ((rand() & 1) != 0)
            return 0x1F;

        return 0x23;
    }

    void DayUpdate(int weather, Date const & date)
    {
        for (FieldPlot * it = plots; it < plots + Width * Height; it++)
        {
            it->DayUpdate(weather, date);
        }

        if (weather == 3 || weather == 4)
        {
            int id;

            id = RandThing();
            PutAtRandom(id);

            id = RandThing();
            PutAtRandom(id);
        }
    }

    /* +0000 */ FieldPlot plots[Height * Width];
};

#endif // FIELD_HH
