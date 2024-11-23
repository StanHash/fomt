#include "npc.hh"

Npc::Npc(ActorLocation const & a_location)
{
    location = a_location;
    friendship = 50;
    days_since_last_spoken = 0;
    spoken_today = false;
    spoken_just_now = false;
    gifted_today = false;
    met = false;
    unk_10 = 0;
    anim_id = NO_ANIM;
    unk_0C_0 = 0;
    unk_0C_5 = 0;
    unk_0D_2 = 0;
    unk_0D_7 = 0;
}

ActorLocation Npc::GetLocation() const
{
    return location;
}

u8 Npc::GetFriendship() const
{
    return friendship;
}

u32 Npc::GetDaysSinceLastSpoken() const
{
    return days_since_last_spoken;
}

bool Npc::HasBeenGiftedToday() const
{
    return gifted_today;
}

bool Npc::HasBeenSpokenToToday() const
{
    return spoken_today;
}

bool Npc::HasBeenSpokenToJustNow() const
{
    return spoken_just_now;
}

bool Npc::HasBeenMet() const
{
    return met;
}

void Npc::SetLocation(ActorLocation const & a_location)
{
    location = a_location;
}

void Npc::AddFriendship(int amount)
{
    u32 total = friendship + amount;

    if ((int)total < 0)
        total = 0;
    else if (total > 255)
        total = 255;

    friendship = total;
}

void Npc::SubtractFriendship(int amount)
{
    AddFriendship(-amount);
}

void Npc::SetFriendship(int amount)
{
    friendship = amount;
}

void Npc::SetSpokenTo()
{
    if (met)
    {
        spoken_today = true;
        spoken_just_now = true;
    }
    else
    {
        met = true;
    }

    days_since_last_spoken = 0;
}

void Npc::SetGifted()
{
    gifted_today = true;
    days_since_last_spoken = 0;
}

void Npc::SetChangedLocation()
{
    spoken_just_now = false;
}

void Npc::DayUpdate(u32 arg_00)
{
    if (!spoken_today && !gifted_today)
    {
        if (days_since_last_spoken < 31)
        {
            days_since_last_spoken++;
        }

        if (arg_00 < 10)
        {
            SubtractFriendship(1);
        }
    }
    else
    {
        days_since_last_spoken = 0;
    }

    if (spoken_today)
    {
        AddFriendship(1);
    }

    spoken_today = false;
    spoken_just_now = false;
    gifted_today = false;
}
