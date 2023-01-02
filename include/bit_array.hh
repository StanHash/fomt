#pragma once

#include "global.h"

#include "unk-inl.hh"

// I'm surprised we aren't just using std::bitset

template<std::size_t BitCount>
struct BitArray
{
    BitArray(void)
    {
        fill_inl(begin(), end(), 0);
        m_data[((BitCount + 31) / 32) - 1] &= ~((1 << (BitCount % 32)) - 1); // redundant
    }

    u32 * begin() { return m_data; }
    u32 * end() { return m_data + ((BitCount + 31) / 32); }

    u32 const * begin() const { return m_data; }
    u32 const * end() const { return m_data + ((BitCount + 31) / 32); }

    bool Test(u32 const & bit) const
    {
        return (bit < BitCount) && (m_data[bit / 32] & (1 << (bit % 32))) != 0;
    }

    u32 Count(void) const
    {
        u32 const * it = begin();
        u32 const * en = end();

        u32 result = 0;

        do
        {
            result += popcnt(*it++);
        }
        while (it != en);

        return result;
    }

    void Set(u32 const & bit)
    {
        if (bit < BitCount)
            m_data[bit / 32] |= (1 << (bit % 32));
    }

    void Clear(u32 const & bit)
    {
        if (bit < BitCount)
            m_data[bit / 32] &= ~(1 << (bit % 32));
    }

private:
    /* +00 */ u32 m_data[(BitCount + 31) / 32];
};
