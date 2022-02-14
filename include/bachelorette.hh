#pragma once

#include "npc.hh"

struct Bachelorette : public Npc
{
    Bachelorette(ActorLocation const & location);

    u32 GetLove(void) const;
    u32 GetPlayerEventCount(void) const;
    u32 GetDaysSincePlayerEvent_bugged(void) const;
    u32 GetRivalEventCount(void) const;
    u32 GetDaysSinceRivalEvent(void) const;
    u32 method_0809E4BC(void) const;
    void AddLove(int amount);
    void SubtractLove(int amount);
    void SetLove(int amount);
    void PlayerEventUpdate(void);
    void RivalEventUpdate(void);
    void method_0809E550(void);
    void DayUpdate(bool decay_love, u32 arg_01);

    /* +14 */ u32 love : 16;
    /* +16 */ u32 player_events : 3;
    /* +16 */ u32 days_since_player_event : 3;
    /* +16 */ u32 rival_events : 3;
    /* +17 */ u32 days_since_rival_event : 3;
    /* +17 */ u32 unk_17_4 : 3;
};
