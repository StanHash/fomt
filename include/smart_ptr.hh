#pragma once

#include "global.h"

// this is just your traditional std::auto_ptr
// (std::auto_ptr was removed from modern standards in favor of std::unique_ptr)

template<typename T>
struct SmartPtr
{
    typedef T element_type;

    explicit SmartPtr(T * ptr = nullptr)
        : inner(ptr)
    {
    }

private:
    /* +00 */ T * inner;
};
