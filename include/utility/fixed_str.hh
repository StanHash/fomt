#ifndef FIXED_STR_HH
#define FIXED_STR_HH

#include "prelude.h"

#include "unknown_inlines.hh"

#include <string.h>

template <size_t MaxLen>
struct FixedStr
{
    FixedStr() { m_data[0] = '\0'; }

    FixedStr(FixedStr const & other) { operator=(other); }

    FixedStr(char const * cstr) { operator=(cstr); }

    FixedStr & operator=(FixedStr const & other)
    {
        strcpy(m_data, other.m_data);
        return *this;
    }

    FixedStr & operator=(char const * cstr)
    {
        u32 len = min_inl<u32>(strlen(cstr), MaxLen);
        memcpy(m_data, cstr, len);
        m_data[len] = '\0';
        return *this;
    }

    bool IsEmpty() const { return m_data[0] == '\0'; }

    operator char const *() const { return m_data; }

private:
    /* +00 */ char m_data[MaxLen + 1];
};

#endif // FIXED_STR_HH
