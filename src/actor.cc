#include "actor.hh"

Actor::Actor(ActorLocation const & a_location)
{
    memcpy(&location, &a_location, sizeof(ActorLocation));
}

Actor::Actor(Actor const & other)
{
    memcpy(&location, &other.location, sizeof(ActorLocation));
}

void Actor::SetLocation(ActorLocation const & a_location)
{
    memcpy(&location, &a_location, sizeof(ActorLocation));
}
