#ifndef ANIMAL_HH
#define ANIMAL_HH

#include "prelude.h"

#include "utility/fixed_str.hh"
#include "actor.hh"

struct Animal : public Actor
{
    Animal(char const * name, ActorLocation const & location, u32 age);
    Animal(ActorLocation const & location, u32 age);

    char const * GetName() const;
    bool IsFestivalWinner() const;
    u32 GetAge() const;
    u32 GetAffection() const;
    bool HasBeenBrushedToday() const;
    bool HasBeenTalkedTo() const;
    void SetName(char const * name);
    void SetFestivalWinner();
    void SetBrushed();
    void SetTalkedTo();
    void AddAffection(int amount);
    void SubtractAffection(int amount);
    void DayUpdate();

    /* +08 */ FixedStr<12> name;
    /* +18 */ u32 age : 10;
    /* +19 */ bool festival_winner : 1;
    /* +19 */ bool brushed : 1;
    /* +19 */ bool talked : 1;
    /* +19 */ u32 affection : 8;
};

#endif // ANIMAL_HH
