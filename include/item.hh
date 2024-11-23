#ifndef ITEM_HH
#define ITEM_HH

#include "prelude.h"

enum
{
#define o(tag, icon, name, desc) TOOL_##tag,
#include "data/item/tool.def"
#undef o

    TOOL_NONE,
    NUM_TOOLS = TOOL_NONE,
};

enum
{
#define o(tag, is_drink, stamina, fatigue, icon, name, desc) FOOD_##tag,
#include "data/item/food.def"
#undef o

    FOOD_NONE,
    NUM_FOODS = FOOD_NONE,
};

enum
{
#define o(tag, icon, name, desc) ARTICLE_##tag,
#include "data/item/article.def"
#undef o

    ARTICLE_NONE,
    NUM_ARTICLES = ARTICLE_NONE,
};

enum
{
#define o(tag, kind, price) PRODUCT_##tag,
#include "data/item/product.def"
#undef o
    PRODUCT_NONE,
    NUM_PRODUCTS = PRODUCT_NONE,
};

struct PACKED Tool
{
    Tool(u32 id);

    int GetId() const;
    char const * GetName() const;
    u16 GetIconId() const;
    char const * GetDesc() const;

    /* +00 */ u8 id;
};

struct PACKED ToolStack : public Tool
{
    enum
    {
        MAX_AMOUNT = 99
    };

    ToolStack();
    ToolStack(Tool kind, u32 amount);

    Tool GetTool() const;
    bool IsEmpty() const;
    u32 GetAmount() const;
    void AddAmount(u32 amount);
    void SubtractAmount(u32 amount);

    /* +01 */ u8 amount;
};

struct PACKED Food
{
    Food(u32 id);

    int GetId() const;
    char const * GetName() const;
    u16 GetIconId() const;
    int GetStaminaGain() const;
    int GetFatigueGain() const;
    int GetStaminaBonus() const;
    int GetFatigueBonus() const;
    bool IsDrink() const;
    char const * GetDesc() const;
    void AddBonuses(i8 stamina_amount, i8 fatigue_amount);

    /* +00 */ u8 id;
    /* +01 */ i8 stamina_bonus;
    /* +02 */ i8 fatigue_bonus;
};

struct FoodStack : public Food
{
    enum
    {
        MAX_AMOUNT = 99
    };

    FoodStack();
    FoodStack(Food food, u32 a_amount);

    Food GetFood() const;
    bool IsEmpty() const;
    u32 GetAmount() const;
    void AddAmount(u32 amount);
    void SubtractAmount(u32 amount);

    /* +03 */ u8 amount;
};

struct PACKED Article
{
    Article(u32 id);

    int GetId() const;
    char const * GetName() const;
    u16 GetIconId() const;
    bool CanBeDiscarded() const;
    char const * GetDesc() const;

    /* +00 */ u8 id;
};

struct PACKED ArticleStack : public Article
{
    enum
    {
        MAX_AMOUNT = 99
    };

    ArticleStack();
    ArticleStack(Article article, u32 a_amount);

    Article GetArticle() const;
    bool IsEmpty() const;
    u32 GetAmount() const;
    void AddAmount(u32 amount);
    void SubtractAmount(u32 amount);

    /* +01 */ u8 amount;
};

struct PACKED Product
{
    Product();
    Product(u32 id);
    Product(Food food);
    Product(Article article);

    int GetId() const;
    u32 GetPrice() const;
    char const * GetName() const;
    u16 GetIconId() const;

    /* +00 */ u8 id;
};

struct PACKED ALIGN(2) ItemVariant
{
    enum Kind
    {
        KIND_TOOL,
        KIND_FOOD,
        KIND_ARTICLE,
    };

    Tool AsTool() const;
    Food AsFood() const;
    Article AsArticle() const;

    /* +00 */ u32 kind : 2;
    /* +00 */ u32 id : 14;
};

#endif // ITEM_HH
