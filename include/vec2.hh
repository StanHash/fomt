#pragma once

#include "global.h"

struct Vec2
{
    Vec2(void) {}
    Vec2(u32 a_x, u32 a_y)
        : x(a_x), y(a_y)
    {
    }

    /* +00 */ i16 x;
    /* +02 */ i16 y;
};
