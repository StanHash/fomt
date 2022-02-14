#pragma once

#include "actor.hh"

struct Npc
{
    Npc(ActorLocation const & location);

    ActorLocation GetLocation(void) const;
    u8 GetFriendship(void) const;
    u32 GetDaysSinceLastSpoken(void) const;
    bool HasBeenGiftedToday(void) const;
    bool HasBeenSpokenToToday(void) const;
    bool HasBeenSpokenToJustNow(void) const;
    bool HasBeenMet(void) const;
    void SetLocation(ActorLocation const & location);
    void AddFriendship(int amount);
    void SubtractFriendship(int amount);
    void SetFriendship(int amount);
    void SetSpokenTo(void);
    void SetGifted(void);
    void SetChangedLocation(void);
    void DayUpdate(u32 arg_00);

    /* +00 */ ActorLocation location;
    /* +08 */ u32 friendship : 8;
    /* +09 */ u32 days_since_last_spoken : 5;
    /* +09 */ bool spoken_today : 1;
    /* +09 */ bool spoken_just_now : 1;
    /* +09 */ bool gifted_today : 1;
    /* +0A */ bool met : 1;
    /* +0A */ u32 : 0;
    /* +0C */ u32 unk_0C_0 : 5;
    /* +0C */ u32 unk_0C_5 : 5;
    /* +0D */ u32 unk_0D_2 : 5;
    /* +0D */ u32 unk_0D_7 : 10;
    /* +10 */ u16 unk_10;
    /* +12 */ u16 anim_id;
};
