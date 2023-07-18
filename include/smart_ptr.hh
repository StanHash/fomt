#pragma once

#include "global.h"

// this is just your traditional std::auto_ptr
// (std::auto_ptr was removed from modern standards in favor of std::unique_ptr)

// TODO: make sure this is correct

template<typename T>
struct SmartPtr
{
    typedef T element_type;

    explicit SmartPtr(T * ptr = nullptr)
        : inner(ptr)
    {
    }

    SmartPtr & operator = (T * ptr)
    {
        if (ptr != inner)
            delete inner;
        inner = ptr;
        return *this;
    }

    ~SmartPtr()
    {
        delete inner;
    }

    T & operator * () const
    {
        return *inner;
    }

    T * operator -> () const
    {
        return inner;
    }

    T * Get() const
    {
        return inner;
    }

    // TODO
    T * Move(void)
    {
        T * tmp = inner;
        inner = nullptr;
        return tmp;
    }

private:
    // TODO
    SmartPtr(SmartPtr & ) {}

private:
    /* +00 */ T * inner;
};
