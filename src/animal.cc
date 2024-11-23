#include "animal.hh"

extern "C"
{
    // TODO: sjis string
    extern char const gUnk_08103658[];
}

Animal::Animal(char const * a_name, ActorLocation const & location, u32 a_age)
    : Actor(location), name(a_name)
{
    age = a_age;
    festival_winner = 0;
    brushed = 0;
    talked = 0;
    affection = 0;
}

Animal::Animal(ActorLocation const & location, u32 a_age)
    : Actor(location)
{
    age = a_age;
    festival_winner = 0;
    brushed = 0;
    talked = 0;
    affection = 0;
}

char const * Animal::GetName() const
{
    if (!name.IsEmpty())
        return name;

    return gUnk_08103658;
}

bool Animal::IsFestivalWinner() const
{
    return festival_winner;
}

u32 Animal::GetAge() const
{
    return age;
}

u32 Animal::GetAffection() const
{
    return affection;
}

bool Animal::HasBeenBrushedToday() const
{
    return brushed;
}

bool Animal::HasBeenTalkedTo() const
{
    return talked;
}

void Animal::SetName(char const * a_name)
{
    name = a_name;
}

void Animal::SetFestivalWinner()
{
    festival_winner = true;
}

void Animal::SetBrushed()
{
    if (!brushed)
        brushed = true;
}

void Animal::SetTalkedTo()
{
    if (!talked)
        talked = true;
}

void Animal::AddAffection(int amount)
{
    u32 new_affection = affection + amount;

    // Clamps the value between 0 and 250
    if ((int)new_affection < 0)
        new_affection = 0;
    else if (new_affection > 250)
        new_affection = 250;

    affection = new_affection;
}

void Animal::SubtractAffection(int amount)
{
    AddAffection(-amount);
}

void Animal::DayUpdate()
{
    if (age <= 1022)
        age++;

    brushed = false;
    talked = false;
}
