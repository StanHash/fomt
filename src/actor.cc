#include "actor.hh"

Actor::Actor(ActorLocation const * loc)
{
    memcpy(&location, loc, sizeof(ActorLocation));
}

Actor::Actor(Actor const & other)
{
    memcpy(&location, &other.location, sizeof(ActorLocation));
}

void Actor::SetLocation(ActorLocation const * loc)
{
    memcpy(&location, loc, sizeof(ActorLocation));
}
