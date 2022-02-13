#include "global.h"

struct PACKED Location
{
    u32 map : 10;
    u32 x : 16;
    u32 y : 16;
};

struct ActorLocation : public Location
{
    u8 facing;
};

struct Actor
{
    Actor(ActorLocation const * location);
    Actor(Actor const & other);

    void SetLocation(ActorLocation const * location);

    ActorLocation location;
};
