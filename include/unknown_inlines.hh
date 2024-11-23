#pragma once

#include "prelude.h"

template <typename T>
inline T min_inl(T l, T r)
{
    return r < l ? r : l;
}

template <typename T>
inline T max_inl(T l, T r)
{
    return r > l ? r : l;
}

template <typename I, typename V>
inline void fill_inl(I beg, I end, V const & val)
{
    for (; beg != end; ++beg)
        *beg = val;
}

template <class I, class S, class V>
inline I fill_n_inl(I beg, S n, V const & value)
{
    for (; n > 0; --n, ++beg)
        *beg = value;

    return beg;
}
