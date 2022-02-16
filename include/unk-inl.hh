#pragma once

#include "global.h"

template<typename T>
inline T min_inl(T l, T r)
{
    return r < l ? r : l;
}

template<typename T>
inline T max_inl(T l, T r)
{
    return r > l ? r : l;
}
