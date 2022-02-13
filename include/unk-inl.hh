#pragma once

#include "global.h"

// TODO: move elsewhere
template<typename T>
inline T min_inl(T l, T r)
{
    return r < l ? r : l;
}
