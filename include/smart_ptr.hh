#pragma once

#include "global.h"

// this is just your traditional std::auto_ptr
// (std::auto_ptr was removed from modern standards in favor of std::unique_ptr)

// TODO: make sure this is correct

template<typename T>
struct SmartPtr
{
    typedef T element_type;

    // ok
    explicit SmartPtr(T * ptr = nullptr)
        : inner(ptr)
    {
    }

    SmartPtr(SmartPtr<T> & other)
        : inner(other.release())
    {
    }

    template<typename U>
    SmartPtr(SmartPtr<U> & other)
        : inner(other.release())
    {
    }

    // ok
    SmartPtr & operator = (T * ptr)
    {
        if (ptr != inner)
            delete inner;
        inner = ptr;
        return *this;
    }

    SmartPtr & operator = (SmartPtr & other)
    {
        T * ptr = other.release();
        if (ptr != inner)
            delete inner;
        inner = ptr;
        return *this;
    }

    template <class U>
    SmartPtr & operator = (SmartPtr<U> & other)
    {
        T * ptr = other.release();
        if (ptr != inner)
            delete inner;
        inner = ptr;
        return *this;
    }

    // ok
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

    // ok
    T * Get() const
    {
        return inner;
    }

    T * release()
    {
        T * tmp = inner;
        inner = nullptr;
        return tmp;
    }

    void reset(T * ptr = nullptr)
    {
        if (inner != ptr)
            delete inner;
        inner = ptr;
    }

    struct Ref
    {
        T * inner;

        Ref(SmartPtr * self)
            : inner(self->release())
        {
        }
    };

    SmartPtr(Ref ref)
        : inner(ref.inner)
    {
    }

    SmartPtr & operator = (Ref ref)
    {
        if (ref.inner != inner)
            delete inner;

        inner = ref.inner;
        return *this;
    }

    operator Ref()
    {
        return Ref(this);
    }

    template <class U>
    operator SmartPtr<U>()
    {
        return SmartPtr<U>(release());
    }

private:
    /* +00 */ T * inner;
};
