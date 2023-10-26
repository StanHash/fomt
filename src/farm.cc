#include "farm.hh"

#include <algorithm>

Farm::Farm(char const * name)
    : name(name), unk_0010_0(0), has_horse(false), unk_0010_11(true), unk_0010_12(false)
{
}

Vec2 Farm::smethod_08009ADC()
{
    return Vec2(0x1F8, 0x84);
}

Vec2 Farm::smethod_08009AE8()
{
    return Vec2(0x8F, 0x20C);
}

void Farm::method_08009AF4() const
{
}

u32 Farm::GetUnk10() const
{
    return unk_0010_0;
}

Horse const * Farm::GetHorse() const
{
    return has_horse
        ? reinterpret_cast<Horse const *>(&horse_placeholder)
        : nullptr;
}

bool Farm::GetUnkFlag11() const
{
    return unk_0010_11;
}

bool Farm::method_08009B20() const
{
    u32 row = 0, col = 0;

    for (row = 0; row < FIELD_HEIGHT; row++)
    {
        for (col = 0; col < FIELD_WIDTH; col++)
        {
            FieldPlot const & plot = field.PlotAt(col, row);

            if (plot.unk_00_08 != 0 && plot.unk_00_02 == 0x1A)
                return true;
        }
    }

    return false;
}

bool Farm::GetUnkFlag12() const
{
    return unk_0010_12;
}

void Farm::method_08009B68(u32 added)
{
    unk_0010_0 = std::min<u32>(MAX_UNK_0010_0, unk_0010_0 + added);
}

void Farm::method_08009BAC(u32 taken)
{
    if (unk_0010_0 <= taken)
    {
        unk_0010_0 = 0;
    }
    else
    {
        unk_0010_0 = unk_0010_0 - taken;
    }
}

void Farm::SetHorse(Horse const & a_horse)
{
    if (!has_horse)
    {
        Horse * horse = reinterpret_cast<Horse *>(&horse_placeholder);

        if (horse != nullptr)
            *horse = a_horse;

        has_horse = true;
    }
}

Horse * Farm::GetHorse()
{
    return has_horse
        ? reinterpret_cast<Horse *>(&horse_placeholder)
        : nullptr;
}

void Farm::RemoveHorse()
{
    has_horse = false;
}

void Farm::method_08009C60()
{
    unk_0010_11 = 0;
}

void Farm::DayUpdate(int weather, Date const & date)
{
    unk_0010_11 = true;

    Horse * horse = GetHorse();

    if (horse != nullptr)
        horse->DayUpdate();

    farm_house.DayUpdate(date.season);
    coop.DayUpdate();
    barn.DayUpdate();
    field.DayUpdate(weather, date);
}

void Farm::method_08009F80()
{
    unk_0010_12 = 1;
}
