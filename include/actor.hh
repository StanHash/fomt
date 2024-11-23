#ifndef ACTOR_HH
#define ACTOR_HH

#include "prelude.h"

/* TODO: move elsewhere */
#define MAP_NONE 0x234

struct PACKED ALIGN(2) Location
{
    Location() {}

    Location(u32 map, u32 x, u32 y)
        : map(map), x(x), y(y)
    {
    }

    u32 GetMap() const { return map; }
    i16 GetX() const { return x; }
    i16 GetY() const { return y; }

    /* +00 */ u16 map : 10;
    /* +01 */ i16 x : 16;
    /* +03 */ i16 y : 16;
};

struct ActorLocation : public Location
{
    ActorLocation() {}
    ActorLocation(Location const & location, int facing)
        : Location(location), facing(facing)
    {
    }

    /* +06 */ u8 facing;
};

struct Actor
{
    Actor(ActorLocation const & location);
    Actor(Actor const & other);

    void SetLocation(ActorLocation const & location);

    ActorLocation location;
};

#endif // ACTOR_HH
