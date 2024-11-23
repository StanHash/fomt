#ifndef BACHELORETTE_HH
#define BACHELORETTE_HH

#include "prelude.h"

#include "npc.hh"

struct Bachelorette : public Npc
{
    Bachelorette(ActorLocation const & location);

    u32 GetLove() const;
    u32 GetPlayerEventCount() const;
    u32 GetDaysSincePlayerEvent_bugged() const;
    u32 GetRivalEventCount() const;
    u32 GetDaysSinceRivalEvent() const;
    u32 method_0809E4BC() const;
    void AddLove(int amount);
    void SubtractLove(int amount);
    void SetLove(int amount);
    void PlayerEventUpdate();
    void RivalEventUpdate();
    void method_0809E550();
    void DayUpdate(bool decay_love, u32 arg_01);

    /* +14 */ u32 love : 16;
    /* +16 */ u32 player_events : 3;
    /* +16 */ u32 days_since_player_event : 3;
    /* +16 */ u32 rival_events : 3;
    /* +17 */ u32 days_since_rival_event : 3;
    /* +17 */ u32 unk_17_4 : 3;
};

#endif // BACHELORETTE_HH
