#ifndef FIELD_HH
#define FIELD_HH

#include "global.h"

#include "game_time.hh"

#include <cstdlib> // rand

struct FieldPlot
{
    FieldPlot();

    // NOTE: unsure if this is actually weather
    void DayUpdate(int weather, Date const & date);
    void method_0800A134(int id, int arg_2);
    bool method_0800A78C() const;

    /* bit 00 */ u32 unk_00_00 : 2;
    /* bit 20 */ u32 unk_00_02 : 6;
    /* bit 10 */ u32 unk_00_08 : 4;
};

template<u32 Width, u32 Height>
struct Field
{
    FieldPlot const & PlotAt(int x, int y) const
    {
        return plots[x + y * Width];
    }

    FieldPlot & PlotAt(int x, int y)
    {
        return plots[x + y * Width];
    }

    bool FindRandomSpotFor(int id, i32 (& out_pos)[2]) const
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
