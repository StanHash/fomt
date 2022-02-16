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

// used generate bad_alloc strings in rodata
// TODO: port over the libstdc++ that introduces those
static inline char const * dummy_bad_alloc(void)
{
    return "bad_alloc";
}
