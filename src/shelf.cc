#include "item.hh"

#include "unk-inl.hh"

#include "constants/article.h"

struct Shelf
{
    enum { CAPACITY = 0x40 };

    Shelf();

    ArticleStack const * GetArticleStackAt(u32 idx) const;
    u32 GetAvailableSpaceFor(u32 article_id) const;
    u32 GetAmountOf(u32 article_id) const;
    u32 GetFirstFreeSlot(void) const;
    u32 method_0800BA00(void) const;
    u32 GetFirstSlotWith(u32 article_id) const;
    ArticleStack * GetArticleStackAt(u32 idx);
    u32 AddAmountOf(u32 article_id, u32 amount);

    /* +00 */ ArticleStack contents[CAPACITY];
};

Shelf::Shelf()
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

// TODO
NAKED u32 Shelf::method_0800BA00(void) const
{
    asm_unified("\n\
        .byte 0x10, 0xB5, 0x84, 0xB0, 0x3F, 0x24, 0x01, 0x90, 0x80, 0x30, 0x03, 0x90, 0x0B, 0xE0, 0x90, 0x1E\n\
        .byte 0x02, 0xF0, 0x34, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x01, 0xD0, 0x20, 0x1C, 0x0D, 0xE0, 0x03, 0x98\n\
        .byte 0x02, 0x38, 0x03, 0x90, 0x01, 0x3C, 0x03, 0x9A, 0x01, 0x98, 0x00, 0x21, 0x82, 0x42, 0x00, 0xD1\n\
        .byte 0x01, 0x21, 0x00, 0x29, 0xEB, 0xD0, 0x01, 0x20, 0x40, 0x42, 0x04, 0xB0, 0x10, 0xBC, 0x02, 0xBC\n\
        .byte 0x08, 0x47, 0x00, 0x00");
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
            u32 amt = min_inl<u32 const &>(amount, ArticleStack::MAX_AMOUNT);
            *it = ArticleStack(Article(article_id), amt);
            amount -= amt;
        }
        else if (it->GetArticle().GetId() == article_id)
        {
            u32 amt = min_inl<u32 const &>(amount, ArticleStack::MAX_AMOUNT - it->GetAmount());
            it->AddAmount(amt);
            amount -= amt;
        }
    }

    return amount;
}
