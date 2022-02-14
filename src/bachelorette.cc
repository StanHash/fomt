#include "bachelorette.hh"

// TODO: cstdlib
#include <stdlib.h>

Bachelorette::Bachelorette(ActorLocation const & location)
    : Npc(location)
{
    love = 0;
    player_events = 0;
    days_since_player_event = 0;
    rival_events = 0;
    days_since_rival_event = 0;
    unk_17_4 = 0;
}

u32 Bachelorette::GetLove(void) const
{
    return love;
}

u32 Bachelorette::GetPlayerEventCount(void) const
{
    return player_events;
}

u32 Bachelorette::GetDaysSincePlayerEvent_bugged(void) const
{
    return days_since_rival_event;
}

u32 Bachelorette::GetRivalEventCount(void) const
{
    return rival_events;
}

u32 Bachelorette::GetDaysSinceRivalEvent(void) const
{
    return days_since_rival_event;
}

u32 Bachelorette::method_0809E4BC(void) const
{
    return unk_17_4;
}

void Bachelorette::AddLove(int amount)
{
    u32 total = love + amount;

    // Clamps the value between 0 and 0xFFFF
    if ((int) total < 0)
        total = 0;
    else if (0xFFFF < total)
        total = 0xFFFF;

    love = total;
}

void Bachelorette::SubtractLove(int amount)
{
    AddLove(-amount);
}

void Bachelorette::SetLove(int amount)
{
    love = amount;
}

void Bachelorette::PlayerEventUpdate(void)
{
    if (player_events < 6)
    {
        player_events++;
        days_since_player_event = 0;
    }
}

void Bachelorette::RivalEventUpdate(void)
{
    if (rival_events < 5)
    {
        rival_events++;
        days_since_rival_event = 0;
    }
}

void Bachelorette::method_0809E550(void)
{
    if (unk_17_4 < 5)
    {
        unk_17_4++;
    }
}

void Bachelorette::DayUpdate(bool decay_love, u32 arg_01)
{
    if (HasBeenSpokenToToday())
        AddLove(200);

    Npc::DayUpdate(arg_01);

    if (GetDaysSinceLastSpoken() != 0 && arg_01 < 10)
        SubtractLove(200);

    if (decay_love)
    {
        if (player_events > 5)
        {
            if (4 < GetDaysSinceLastSpoken() && (rand() % 100) < 10)
                SubtractLove(1000);
        }
        else
        {
            SubtractLove(100);
        }
    }

    if (days_since_player_event < 7)
        days_since_player_event++;

    if (days_since_rival_event < 7)
        days_since_rival_event++;
}
