#include "item.hh"

#include "unk-inl.hh"

#include "constants/tool.h"
#include "constants/food.h"
#include "constants/article.h"

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

extern char const gText_BrokenTool[];
extern char const gText_BrokenFood[];
extern char const gText_BrokenArticle[];
extern char const gText_NoExplanation[];
extern ToolInfo const gToolInfo[];
extern FoodInfo const gFoodInfo[];
extern ArticleInfo const gArticleInfo[];

static inline bool IsValidToolId(u8 id)
{
    return id < NUM_TOOLS;
}

static inline bool IsValidFoodId(u8 id)
{
    return id < NUM_FOODS;
}

static inline bool IsValidArticleId(u8 id)
{
    return id < NUM_ARTICLES;
}

Tool::Tool(u8 a_id)
{
    id = a_id;
}

u8 Tool::GetId(void) const
{
    return id;
}

char const * Tool::GetName(void) const
{
    if (IsValidToolId(id))
        return gToolInfo[id].name;

    return gText_BrokenTool;
}

u16 Tool::GetIconId(void) const
{
    if (IsValidToolId(id))
        return gToolInfo[id].icon_id;

    // TODO: icon id constants
    return 457; // Turnip
}

char const * Tool::GetDesc(void) const
{
    if (IsValidToolId(id))
    {
        if (gToolInfo[id].desc != nullptr)
            return gToolInfo[id].desc;

        return gText_NoExplanation;
    }

    // TODO: put strings inside source
    return (char const *) 0x080E962C;
}

ToolStack::ToolStack()
    : Tool(TOOL_NONE)
{
    amount = 0;
}

ToolStack::ToolStack(Tool kind, u32 a_amount)
    : Tool(kind)
{
    if (a_amount != 0)
    {
        // ugh
        amount = *(u8 *) &min_inl<u32 const &>(99, a_amount);
    }
    else
    {
        amount = 1;
    }
}

u8 ToolStack::GetId(void) const
{
    if (amount != 0)
        return id;

    return Tool(TOOL_NONE).id;
}

bool ToolStack::IsEmpty(void) const
{
    return amount == 0;
}

u32 ToolStack::GetAmount(void) const
{
    if (amount != 0)
        return amount;

    return 0;
}

void ToolStack::AddAmount(u32 a_amount)
{
    if (amount != 0)
    {
        amount = min_inl<u32 const &>(99, amount + a_amount);
    }
}

void ToolStack::SubtractAmount(u32 a_amount)
{
    if (amount != 0)
    {
        if (amount <= a_amount)
            amount = 0;
        else
            amount -= a_amount;
    }
}

Food::Food(u8 a_id)
{
    id = a_id;
    stamina_bonus = 0;
    fatigue_bonus = 0;
}

u8 Food::GetId(void) const
{
    return id;
}

char const * Food::GetName(void) const
{
    if (IsValidFoodId(id))
        return gFoodInfo[id].name;

    return gText_BrokenFood;
}

u16 Food::GetIconId(void) const
{
    if (IsValidFoodId(id))
        return gFoodInfo[id].icon_id;

    // TODO: icon id constants
    return 428; // Stones
}

int Food::GetStaminaGain(void) const
{
    if (IsValidFoodId(id))
        return gFoodInfo[id].stamina + stamina_bonus;

    return -100;
}

int Food::GetFatigueGain(void) const
{
    if (IsValidFoodId(id))
        return gFoodInfo[id].fatigue + fatigue_bonus;

    return +100;
}

int Food::GetStaminaBonus(void) const
{
    if (IsValidFoodId(id))
        return stamina_bonus;

    return -100;
}

int Food::GetFatigueBonus(void) const
{
    if (IsValidFoodId(id))
        return fatigue_bonus;

    return +100;
}

bool Food::IsDrink(void) const
{
    if (IsValidFoodId(id))
        return gFoodInfo[id].is_drink;

    return false;
}

char const * Food::GetDesc(void) const
{
    if (IsValidFoodId(id))
    {
        if (gFoodInfo[id].desc != nullptr)
            return gFoodInfo[id].desc;

        return gText_NoExplanation;
    }

    // TODO: put strings inside source
    return (char const *) 0x080E962C;
}

void Food::AddBonuses(i8 stamina_amount, i8 fatigue_amount)
{
    int total;

    if (IsValidFoodId(id))
    {
        total = stamina_bonus + stamina_amount;

        if (total < -128)
            total = -128;
        else if (total > 127)
            total = 127;

        stamina_bonus = total;

        total = fatigue_bonus + fatigue_amount;

        if (total < -128)
            total = -128;
        else if (total > 127)
            total = 127;

        fatigue_bonus = total;
    }
}

FoodStack::FoodStack()
    : Food(FOOD_NONE)
{
    amount = 0;
}

FoodStack::FoodStack(Food food, u32 a_amount)
    : Food(food)
{
    if (a_amount != 0)
    {
        // ugh
        amount = *(u8 *) &min_inl<u32 const &>(99, a_amount);
    }
    else
    {
        amount = 1;
    }
}

Food FoodStack::GetFood(void) const
{
    if (amount > 0)
        return *this;

    return Food(FOOD_NONE);
}

bool FoodStack::IsEmpty(void) const
{
    return amount == 0;
}

u32 FoodStack::GetAmount(void) const
{
    if (amount > 0)
        return amount;

    return 0;
}

void FoodStack::AddAmount(u32 a_amount)
{
    if (amount != 0)
    {
        amount = min_inl<u32 const &>(99, amount + a_amount);
    }
}

void FoodStack::SubtractAmount(u32 a_amount)
{
    if (amount != 0)
    {
        if (amount <= a_amount)
            amount = 0;
        else
            amount -= a_amount;
    }
}

Article::Article(u8 a_id)
{
    id = a_id;
}

u8 Article::GetId(void) const
{
    return id;
}

char const * Article::GetName(void) const
{
    if (IsValidArticleId(id))
        return gArticleInfo[id].name;

    return gText_BrokenArticle;
}

u16 Article::GetIconId(void) const
{
    if (IsValidArticleId(id))
        return gArticleInfo[id].icon_id;

    return 457; // Turnip
}

bool Article::CanBeDiscarded(void) const
{
    switch (id)
    {
        default:
            return true;

        case ARTICLE_JEWEL_GODDESS:
        case ARTICLE_JEWEL_KAPPA:
        case ARTICLE_JEWEL_TRUTH:
        case ARTICLE_KAREN_WINE:
        case ARTICLE_POPURI_MUD_BALL:
        case ARTICLE_ANN_MUSIC_BOX:
        case ARTICLE_MARY_GREAT_BOOK:
        case ARTICLE_ELLI_PRESSED_FLOWER:
        case ARTICLE_FRISBEE:
            return false;
    }
}

char const * Article::GetDesc(void) const
{
    if (IsValidArticleId(id))
    {
        if (gArticleInfo[id].desc != nullptr)
            return gArticleInfo[id].desc;

        return gText_NoExplanation;
    }

    // TODO: put strings inside source
    return (char const *) 0x080E962C;
}

ArticleStack::ArticleStack()
    : Article(ARTICLE_NONE)
{
    amount = 0;
}

ArticleStack::ArticleStack(Article article, u32 a_amount)
    : Article(article)
{
    if (a_amount != 0)
    {
        // ugh
        amount = *(u8 *) &min_inl<u32 const &>(99, a_amount);
    }
    else
    {
        amount = 1;
    }
}

u8 ArticleStack::GetArticleId(void) const
{
    if (amount != 0)
        return id;

    return Article(ARTICLE_NONE).id;
}

bool ArticleStack::IsEmpty(void) const
{
    return amount == 0;
}

u32 ArticleStack::GetAmount(void) const
{
    if (amount != 0)
        return amount;

    return 0;
}

void ArticleStack::AddAmount(u32 a_amount)
{
    if (amount != 0)
    {
        amount = min_inl<u32 const &>(99, amount + a_amount);
    }
}

void ArticleStack::SubtractAmount(u32 a_amount)
{
    if (amount != 0)
    {
        if (amount <= a_amount)
            amount = 0;
        else
            amount -= a_amount;
    }
}
