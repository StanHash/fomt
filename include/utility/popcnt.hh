#ifndef POPCNT_HH
#define POPCNT_HH

#include <stddef.h>

template <typename I>
inline size_t popcnt(I i)
{
    i = (i & 0x55555555) + ((i >> 1) & 0x55555555);
    i = (i & 0x33333333) + ((i >> 2) & 0x33333333);
    i = (i & 0x0F0F0F0F) + ((i >> 4) & 0x0F0F0F0F);
    i = (i & 0x00FF00FF) + ((i >> 8) & 0x00FF00FF);
    return (i & 0x0000FFFF) + ((i >> 16) & 0x0000FFFF);
}

#endif // POPCNT_HH
