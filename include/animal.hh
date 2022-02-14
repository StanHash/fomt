#pragma once

#include "actor.hh"

struct Animal : public Actor
{
    Animal(char const * name, ActorLocation const & location, u32 age);
    Animal(ActorLocation const & location, u32 age);

    char const * GetName(void) const;
    bool IsFestivalWinner(void) const;
    u32 GetAge(void) const;
    u32 GetAffection(void) const;
    bool HasBeenBrushedToday(void) const;
    bool HasBeenTalkedTo(void) const;
    void SetName(char const * name);
    void SetFestivalWinner(void);
    void SetBrushed(void);
    void SetTalkedTo(void);
    void AddAffection(int amount);
    void SubtractAffection(int amount);
    void DayUpdate(void);

    /* +08 */ u8 name[16];
    /* +18 */ u32 age : 10;
    /* +19 */ bool festival_winner : 1;
    /* +19 */ bool brushed : 1;
    /* +19 */ bool talked : 1;
    /* +19 */ u32 affection : 8;
};
