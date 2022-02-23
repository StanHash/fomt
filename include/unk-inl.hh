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

template<typename I, typename V>
inline void fill_inl(I beg, I end, V const & val)
{
    for (; beg != end; ++beg)
        *beg = val;
}

template <class I, class S, class V>
inline I fill_n_inl(I beg, S n, V const & value)
{
    for ( ; n > 0; --n, ++beg)
        *beg = value;
    return beg;
}

template<typename I>
inline u32 popcnt(I i)
{
    i = (i & 0x55555555) + ((i >> 1) & 0x55555555);
    i = (i & 0x33333333) + ((i >> 2) & 0x33333333);
    i = (i & 0x0F0F0F0F) + ((i >> 4) & 0x0F0F0F0F);
    i = (i & 0x00FF00FF) + ((i >> 8) & 0x00FF00FF);
    return (i & 0x0000FFFF) + ((i >> 16) & 0x0000FFFF);
}
