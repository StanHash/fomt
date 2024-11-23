#ifndef FURNITURE_HH
#define FURNITURE_HH

#include "prelude.h"

#include "utility/bit_array.hh"
#include "item.hh"

struct ToolChest
{
    // clang-format off

    enum { CAPACITY = 0x40 };

    // clang-format on

    ToolChest();

    ToolStack const * GetToolStackAt(u32 idx) const;
    u32 GetAvailableSpaceFor(u32 tool_id) const;
    u32 GetAmountOf(u32 tool_id) const;
    u32 GetFirstFreeSlot() const;
    u32 GetLastFreeSlot() const;
    u32 GetFirstSlotWith(u32 tool_id) const;
    ToolStack * GetToolStackAt(u32 idx);
    u32 AddAmountOf(u32 tool_id, u32 amount);

    /* +00 */ ToolStack contents[CAPACITY];
};

struct Fridge
{
    // clang-format off

    enum { CAPACITY = 0x40 };

    // clang-format on

    Fridge();

    FoodStack const * GetFoodStackAt(u32 idx) const;
    u32 GetAvailableSpaceFor(u32 food_id) const;
    u32 GetAmountOf(u32 food_id) const;
    u32 GetFirstFreeSlot() const;
    u32 GetLastFreeSlot() const;
    u32 GetFirstSlotWith(u32 food_id) const;
    FoodStack * GetFoodStackAt(u32 idx);
    u32 AddAmountOf(u32 food_id, u32 amount);

    /* +00 */ FoodStack contents[CAPACITY];
};

struct Shelf
{
    // clang-format off

    enum { CAPACITY = 0x40 };

    // clang-format on

    Shelf();

    ArticleStack const * GetArticleStackAt(u32 idx) const;
    u32 GetAvailableSpaceFor(u32 article_id) const;
    u32 GetAmountOf(u32 article_id) const;
    u32 GetFirstFreeSlot() const;
    u32 GetLastFreeSlot() const;
    u32 GetFirstSlotWith(u32 article_id) const;
    ArticleStack * GetArticleStackAt(u32 idx);
    u32 AddAmountOf(u32 article_id, u32 amount);

    /* +00 */ ArticleStack contents[CAPACITY];
};

struct RecordPlayer
{
    RecordPlayer();

    bool HasAlbum() const;
    u32 GetUnknown() const;
    ArticleStack RemoveAlbum();
    ArticleStack SetAlbum(Article const & album_article);

    /* +00 */ bool has_album : 1;
    /* +00 */ u32 album_id : 4;
};

struct Unk_0800BC58
{
    Unk_0800BC58();

    void method_0800BCB0(u32 unk);
    void method_0800BCD0(u32 unk);
    bool method_0800BD14(u32 unk) const;
    bool method_0800BD40(u32 unk) const;
    u32 method_0800BD6C() const;
    u32 method_0800BDEC() const;

    /* +00 */ BitArray<60> bit_array_00;
    /* +08 */ BitArray<60> bit_array_08;
};

#endif // FURNITURE_HH
