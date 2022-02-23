#pragma once

#include "global.h"

struct PACKED ALIGNED(2) Location
{
    Location(void) {}
    Location(u32 map, u32 x, u32 y) : map(map), x(x), y(y) {}

    /* +00 */ u16 map : 10;
    /* +01 */ u16 x : 16;
    /* +03 */ u16 y : 16;
};

struct ActorLocation : public Location
{
    ActorLocation(void) {}
    ActorLocation(Location const & location, int facing) : Location(location), facing(facing) {}

    /* +06 */ u8 facing;
};

struct Actor
{
    Actor(ActorLocation const & location);
    Actor(Actor const & other);

    void SetLocation(ActorLocation const & location);

    ActorLocation location;
};
