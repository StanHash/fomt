#ifndef FIXED_VEC_HH
#define FIXED_VEC_HH

#include "prelude.h"

#include <memory>

template <typename T, size_t Capacity>
struct FixedVec
{
    typedef T value_type;
    typedef value_type * pointer;
    typedef value_type const * const_pointer;
    typedef value_type * iterator;
    typedef value_type const * const_iterator;
    typedef value_type & reference;
    typedef value_type const & const_reference;
    typedef size_t size_type;
    typedef ptrdiff_t difference_type;

    typedef std::reverse_iterator<const_iterator> const_reverse_iterator;
    typedef std::reverse_iterator<iterator> reverse_iterator;

    FixedVec()
        : m_size(0)
    {
    }

    FixedVec(u32 size, T const & value)
        : m_size(0)
    {
        std::uninitialized_fill_n(reinterpret_cast<T *>(m_data), size, value);
        m_size = size;
    }

    iterator begin() { return reinterpret_cast<T *>(m_data); }
    const_iterator begin() const { return reinterpret_cast<T const *>(m_data); }
    iterator end() { return reinterpret_cast<T *>(m_data) + m_size; }
    const_iterator end() const { return reinterpret_cast<T const *>(m_data) + m_size; }

    reverse_iterator rbegin() { return reverse_iterator(end()); }
    const_reverse_iterator rbegin() const { return const_reverse_iterator(end()); }
    reverse_iterator rend() { return reverse_iterator(begin()); }
    const_reverse_iterator rend() const { return const_reverse_iterator(begin()); }

    size_type size() const { return m_size; }
    size_type max_size() const { return Capacity; }
    size_type capacity() const { return Capacity; }
    bool empty() const { return m_size == 0; }

    reference operator[](size_type idx) { return reinterpret_cast<T *>(m_data)[idx]; }
    const_reference operator[](size_type idx) const { return reinterpret_cast<T const *>(m_data)[idx]; }

    T push_back(T value);
    T push_front(T value);

private:
    u32 m_size;
    u32 m_data[(sizeof(T) * Capacity + sizeof(u32) - 1) / sizeof(u32)];
};

template <typename T, size_t Capacity>
T FixedVec<T, Capacity>::push_back(T value)
{
    T result((*this)[0]);
    std::copy(begin() + 1, end(), begin());
    (*this)[size() - 1] = value;
    return result;
}

template <typename T, size_t Capacity>
T FixedVec<T, Capacity>::push_front(T value)
{
    T result((*this)[m_size - 1]);
    std::copy_backward(begin(), end() - 1, end());
    (*this)[0] = value;
    return result;
}

#endif // FIXED_VEC_HH
