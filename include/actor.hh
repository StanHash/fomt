#pragma once

#include "global.h"

struct PACKED ALIGNED(2) Location
{
    Location() {}
    Location(u32 map, u32 x, u32 y) : map(map), x(x), y(y) {}

    /* +00 */ u32 map : 10;
    /* +01 */ u32 x : 16;
    /* +03 */ u32 y : 16;
};

struct ActorLocation : public Location
{
    ActorLocation() {}
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
