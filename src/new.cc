/*
 * implementation of the new and delete operators
 */

#include "global.h"

#include <cstddef>
#include <cstdlib>
#include <new>

extern std::new_handler __new_handler;

static void * alloc(size_t size)
{
    for (;;)
    {
        void * result = malloc(size);

        if (result != nullptr)
            return result;

        if (__new_handler == nullptr)
            return nullptr;

        __new_handler();
    }
}

std::new_handler std::set_new_handler(std::new_handler nh)
{
    new_handler old = __new_handler;
    __new_handler = nh;
    return old;
}

void * operator new (std::size_t size)
{
    void * result = alloc(size);

    if (result == nullptr)
        return nullptr;

    return result;
}

void * operator new[] (std::size_t size)
{
    return operator new (size);
}

void * operator new (std::size_t size, std::nothrow_t const & nothrow)
{
    return alloc(size);
}

void * operator new[] (std::size_t size, std::nothrow_t const & nothrow)
{
    return operator new (size, nothrow);
}

void operator delete (void * ptr)
{
    free(ptr);
}

void operator delete[] (void * ptr)
{
    operator delete (ptr);
}

void operator delete (void * ptr, std::nothrow_t const & nothrow)
{
    free(ptr);
}

void operator delete[] (void * ptr, std::nothrow_t const & nothrow)
{
    operator delete (ptr, nothrow);
}
