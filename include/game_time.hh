#pragma once

#include "global.h"

enum Season
{
    SEASON_SPRING,
    SEASON_SUMMER,
    SEASON_AUTUMN,
    SEASON_WINTER,
};

struct PACKED Date
{
    Season season : 2;
};
