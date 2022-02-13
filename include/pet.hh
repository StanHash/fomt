#pragma once

#include "animal.hh"

struct Pet : public Animal
{
    Pet(char const * name, ActorLocation const & location, u32 age);
    Pet(ActorLocation const & location, u32 age);

    // TODO:
    // what are Pet::HasTalkedToday and Animal::HasBeenTalkedTo?

    u32 GetAdequacy(void) const;
    bool HasPlayedToday(void) const;
    bool HasTalkedToday(void) const;
    void AddAdequacy(int amount);
    void SubtractAdequacy(int amount);
    void SetHasPlayedToday(void);
    void SetHasTalkedToday(void);
    void DayUpdate(bool disable_affection_decay);

    /* +1C */ u32 adequacy : 8;
    /* +1D */ bool has_played_today : 1;
    /* +1D */ bool has_talked_today : 1;
};
