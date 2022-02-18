#pragma once

#include "global.h"

struct PACKED Tool
{
    Tool(u32 id);

    int GetId(void) const;
    char const * GetName(void) const;
    u16 GetIconId(void) const;
    char const * GetDesc(void) const;

    /* +00 */ u8 id;
};

struct PACKED ToolStack : public Tool
{
    enum { MAX_AMOUNT = 99 };

    ToolStack(void);
    ToolStack(Tool kind, u32 amount);

    Tool GetTool(void) const;
    bool IsEmpty(void) const;
    u32 GetAmount(void) const;
    void AddAmount(u32 amount);
    void SubtractAmount(u32 amount);

    /* +01 */ u8 amount;
};

struct PACKED Food
{
    Food(u32 id);

    int GetId(void) const;
    char const * GetName(void) const;
    u16 GetIconId(void) const;
    int GetStaminaGain(void) const;
    int GetFatigueGain(void) const;
    int GetStaminaBonus(void) const;
    int GetFatigueBonus(void) const;
    bool IsDrink(void) const;
    char const * GetDesc(void) const;
    void AddBonuses(i8 stamina_amount, i8 fatigue_amount);

    /* +00 */ u8 id;
    /* +01 */ i8 stamina_bonus;
    /* +02 */ i8 fatigue_bonus;
};

struct FoodStack : public Food
{
    enum { MAX_AMOUNT = 99 };

    FoodStack(void);
    FoodStack(Food food, u32 a_amount);

    Food GetFood(void) const;
    bool IsEmpty(void) const;
    u32 GetAmount(void) const;
    void AddAmount(u32 amount);
    void SubtractAmount(u32 amount);

    /* +03 */ u8 amount;
};

struct PACKED Article
{
    Article(u32 id);

    int GetId(void) const;
    char const * GetName(void) const;
    u16 GetIconId(void) const;
    bool CanBeDiscarded(void) const;
    char const * GetDesc(void) const;

    /* +00 */ u8 id;
};

struct PACKED ArticleStack : public Article
{
    enum { MAX_AMOUNT = 99 };

    ArticleStack(void);
    ArticleStack(Article article, u32 a_amount);

    Article GetArticle(void) const;
    bool IsEmpty(void) const;
    u32 GetAmount(void) const;
    void AddAmount(u32 amount);
    void SubtractAmount(u32 amount);

    /* +01 */ u8 amount;
};

struct PACKED Product
{
    Product(void);
    Product(u32 id);
    Product(Food food);
    Product(Article article);

    int GetId(void) const;
    u32 GetPrice(void) const;
    char const * GetName(void) const;
    u16 GetIconId(void) const;

    /* +00 */ u8 id;
};

struct PACKED ALIGNED(2) ItemVariant
{
    enum Kind
    {
        KIND_TOOL,
        KIND_FOOD,
        KIND_ARTICLE,
    };

    Tool AsTool(void) const;
    Food AsFood(void) const;
    Article AsArticle(void) const;

    /* +00 */ u32 kind : 2;
    /* +00 */ u32 id : 14;
};

struct ToolInfo
{
    /* +00 */ char const * name;
    /* +04 */ u16 icon_id;
    /* +08 */ char const * desc;
};

struct FoodInfo
{
    /* +00 */ char const * name;
    /* +04 */ bool is_drink : 1;
    /* +05 */ i8 stamina;
    /* +06 */ i8 fatigue;
    /* +08 */ u16 icon_id;
    /* +0C */ char const * desc;
};

struct ArticleInfo
{
    /* +00 */ char const * name;
    /* +04 */ u16 icon_id;
    /* +08 */ char const * desc;
};

struct ProductInfo
{
    enum Kind
    {
        KIND_FOOD,
        KIND_ARTICLE,
    };

    /* +00 */ u32 price : 15;
    /* +01 */ u32 kind : 1;
    /* +02 */ u32 item : 8;
};

extern ToolInfo const gToolInfo[];
extern FoodInfo const gFoodInfo[];
extern ArticleInfo const gArticleInfo[];
extern ProductInfo const gProductInfo[];
