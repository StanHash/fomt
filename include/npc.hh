#ifndef NPC_HH
#define NPC_HH

#include "prelude.h"

#include "actor.hh"

/* TODO: move */
#define NO_ANIM (static_cast<u16>(-1))

struct Npc
{
    Npc(ActorLocation const & location);

    ActorLocation GetLocation() const;
    u8 GetFriendship() const;
    u32 GetDaysSinceLastSpoken() const;
    bool HasBeenGiftedToday() const;
    bool HasBeenSpokenToToday() const;
    bool HasBeenSpokenToJustNow() const;
    bool HasBeenMet() const;
    void SetLocation(ActorLocation const & location);
    void AddFriendship(int amount);
    void SubtractFriendship(int amount);
    void SetFriendship(int amount);
    void SetSpokenTo();
    void SetGifted();
    void SetChangedLocation();
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

#endif // NPC_HH
