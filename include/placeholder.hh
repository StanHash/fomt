#ifndef PLACEHOLDER_HH
#define PLACEHOLDER_HH

#include "prelude.h"

template <typename InnerA, typename InnerB, typename AlignType = u32>
struct PlaceholderEither
{
    /* +00 */ AlignType _[(CONST_MAX(sizeof(InnerA), sizeof(InnerB)) + sizeof(AlignType) - 1) / sizeof(AlignType)];
};

template <typename Inner, typename AlignType = u32>
struct Placeholder : PlaceholderEither<Inner, Inner, AlignType>
{
};

#endif // PLACEHOLDER_HH
