#ifndef BIT_ARRAY_HH
#define BIT_ARRAY_HH

#include "prelude.h"

#include "popcnt.hh"
#include "unknown_inlines.hh"

// I'm surprised we aren't just using std::bitset
// TODO: decide on method naming case for these STL-like classes

template <size_t BitCount>
struct BitArray
{
    BitArray()
    {
        /* FIXME: using std::fill here (or, more specifically, inluding a header that defines it) makes FarmHouse::DayUpdate not match.
         * Which is wild. This should probably be investigated. */

        fill_inl(begin(), end(), 0);
        m_data[((BitCount + 31) / 32) - 1] &= ~((1 << (BitCount % 32)) - 1); // redundant
    }

    u32 * begin() { return m_data; }
    u32 * end() { return m_data + ((BitCount + 31) / 32); }

    u32 const * begin() const { return m_data; }
    u32 const * end() const { return m_data + ((BitCount + 31) / 32); }

    bool Test(u32 const & bit) const { return (bit < BitCount) && (m_data[bit / 32] & (1 << (bit % 32))) != 0; }

    u32 Count() const
    {
        u32 const * it = begin();
        u32 const * en = end();

        u32 result = 0;

        do
        {
            result += popcnt(*it++);
        } while (it != en);

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

#endif // BIT_ARRAY_HH
