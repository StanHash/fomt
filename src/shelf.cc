#include "furniture.hh"

#include "constants/article.h"

#include <iterator>
#include <algorithm>

Shelf::Shelf(void)
{
}

ArticleStack const * Shelf::GetArticleStackAt(u32 idx) const
{
    return contents + idx;
}

u32 Shelf::GetAvailableSpaceFor(u32 article_id) const
{
    u32 result = 0;

    ArticleStack const * beg = contents;
    ArticleStack const * end = contents + CAPACITY;

    for (ArticleStack const * it = beg; it != end; ++it)
    {
        if (it->IsEmpty())
        {
            result += ArticleStack::MAX_AMOUNT;
            continue;
        }

        if (it->GetArticle().GetId() == article_id)
        {
            result += ArticleStack::MAX_AMOUNT - it->GetAmount();
        }
    }

    return result;
}

u32 Shelf::GetAmountOf(u32 article_id) const
{
    u32 result = 0;

    ArticleStack const * beg = contents;
    ArticleStack const * end = contents + CAPACITY;

    for (ArticleStack const * it = beg; it != end; ++it)
    {
        if (it->IsEmpty())
        {
            continue;
        }

        if (it->GetArticle().GetId() == article_id)
        {
            result += it->GetAmount();
        }
    }

    return result;
}

u32 Shelf::GetFirstFreeSlot(void) const
{
    u32 idx = 0;

    ArticleStack const * beg = contents;
    ArticleStack const * end = contents + CAPACITY;

    for (ArticleStack const * it = beg; it != end; ++it, ++idx)
    {
        if (it->IsEmpty())
            return idx;
    }

    return static_cast<u32>(-1);
}

u32 Shelf::GetLastFreeSlot(void) const
{
    typedef std::reverse_iterator<ArticleStack const *> It;

    u32 idx = CAPACITY - 1;

    It dummy_a, end(contents);
    It dummy_b, it(contents + CAPACITY);

    for (; it != end; ++it, --idx)
    {
        if (it->IsEmpty())
            return idx;
    }

    return static_cast<u32>(-1);
}

u32 Shelf::GetFirstSlotWith(u32 article_id) const
{
    u32 idx = 0;

    ArticleStack const * beg = contents;
    ArticleStack const * end = contents + CAPACITY;

    for (ArticleStack const * it = beg; it != end; ++it, ++idx)
    {
        if (it->IsEmpty())
            continue;

        if (it->GetArticle().GetId() == article_id)
            return idx;
    }

    return static_cast<u32>(-1);
}

ArticleStack * Shelf::GetArticleStackAt(u32 idx)
{
    return contents + idx;
}

u32 Shelf::AddAmountOf(u32 article_id, u32 amount)
{
    if ((int) article_id >= ARTICLE_NONE)
        return amount;

    ArticleStack * beg = contents;
    ArticleStack * end = contents + CAPACITY;

    for (ArticleStack * it = beg; amount != 0 && it != end; ++it)
    {
        if (it->IsEmpty())
        {
            u32 amt = min<u32>(amount, ArticleStack::MAX_AMOUNT);
            *it = ArticleStack(Article(article_id), amt);
            amount -= amt;
        }
        else if (it->GetArticle().GetId() == article_id)
        {
            u32 amt = min<u32>(amount, ArticleStack::MAX_AMOUNT - it->GetAmount());
            it->AddAmount(amt);
            amount -= amt;
        }
    }

    return amount;
}
