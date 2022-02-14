#include "actor.hh"

Actor::Actor(ActorLocation const & a_location)
{
    location = a_location;
}

Actor::Actor(Actor const & other)
{
    location = other.location;
}

void Actor::SetLocation(ActorLocation const & a_location)
{
    location = a_location;
}
