#pragma once

#include "global.h"

#include "unk-inl.hh"

#include <cstring>

template<std::size_t MaxLen>
struct FixedStr
{
    FixedStr(void)
    {
        m_data[0] = '\0';
    }

    FixedStr(FixedStr const & other)
    {
        operator =(other);
    }

    FixedStr(char const * cstr)
    {
        operator =(cstr);
    }

    FixedStr & operator =(FixedStr const & other)
    {
        strcpy(m_data, other.m_data);
        return *this;
    }

    FixedStr & operator =(char const * cstr)
    {
        u32 len = min_inl<u32>(strlen(cstr), MaxLen);
        memcpy(m_data, cstr, len);
        m_data[len] = '\0';
        return *this;
    }

    bool IsEmpty(void) const
    {
        return m_data[0] == '\0';
    }

    operator char const * (void) const
    {
        return m_data;
    }

private:
    /* +00 */ char m_data[MaxLen + 1];
};
