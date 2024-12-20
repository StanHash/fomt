#include "item.hh"

#include <algorithm>

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

static inline bool IsValidProductId(u8 id)
{
    return id < NUM_PRODUCTS;
}

Tool::Tool(u32 a_id)
{
    id = a_id;
}

int Tool::GetId() const
{
    return id;
}

char const * Tool::GetName() const
{
    if (IsValidToolId(id))
        return gToolInfo[id].name;

    return "Broken Tool";
}

u16 Tool::GetIconId() const
{
    if (IsValidToolId(id))
        return gToolInfo[id].icon_id;

    // TODO: icon id constants
    return 457; // Turnip
}

static inline char const * GetToolDescById(u32 id)
{
    if (gToolInfo[id].desc != nullptr)
        return gToolInfo[id].desc;

    return "No Explanation";
}

char const * Tool::GetDesc() const
{
    if (IsValidToolId(id))
        return GetToolDescById(id);

    return "No Explanation";
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
        amount = *(u8 *)&std::min<u32>(MAX_AMOUNT, a_amount);
    }
    else
    {
        amount = 1;
    }
}

Tool ToolStack::GetTool() const
{
    if (amount != 0)
        return *this;

    return Tool(TOOL_NONE);
}

bool ToolStack::IsEmpty() const
{
    return amount == 0;
}

u32 ToolStack::GetAmount() const
{
    if (amount != 0)
        return amount;

    return 0;
}

void ToolStack::AddAmount(u32 a_amount)
{
    if (amount != 0)
    {
        amount = std::min<u32>(MAX_AMOUNT, amount + a_amount);
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

Food::Food(u32 a_id)
{
    id = a_id;
    stamina_bonus = 0;
    fatigue_bonus = 0;
}

int Food::GetId() const
{
    return id;
}

char const * Food::GetName() const
{
    if (IsValidFoodId(id))
        return gFoodInfo[id].name;

    return "Broken Food";
}

u16 Food::GetIconId() const
{
    if (IsValidFoodId(id))
        return gFoodInfo[id].icon_id;

    // TODO: icon id constants
    return 428; // Stones
}

int Food::GetStaminaGain() const
{
    if (IsValidFoodId(id))
        return gFoodInfo[id].stamina + stamina_bonus;

    return -100;
}

int Food::GetFatigueGain() const
{
    if (IsValidFoodId(id))
        return gFoodInfo[id].fatigue + fatigue_bonus;

    return +100;
}

int Food::GetStaminaBonus() const
{
    if (IsValidFoodId(id))
        return stamina_bonus;

    return -100;
}

int Food::GetFatigueBonus() const
{
    if (IsValidFoodId(id))
        return fatigue_bonus;

    return +100;
}

bool Food::IsDrink() const
{
    if (IsValidFoodId(id))
        return gFoodInfo[id].is_drink;

    return false;
}

static inline char const * GetFoodDescById(u32 id)
{
    if (gFoodInfo[id].desc != nullptr)
        return gFoodInfo[id].desc;

    return "No Explanation";
}

char const * Food::GetDesc() const
{
    if (IsValidFoodId(id))
        return GetFoodDescById(id);

    return "No Explanation";
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
        amount = *(u8 *)&std::min<u32>(MAX_AMOUNT, a_amount);
    }
    else
    {
        amount = 1;
    }
}

Food FoodStack::GetFood() const
{
    if (amount > 0)
        return *this;

    return Food(FOOD_NONE);
}

bool FoodStack::IsEmpty() const
{
    return amount == 0;
}

u32 FoodStack::GetAmount() const
{
    if (amount > 0)
        return amount;

    return 0;
}

void FoodStack::AddAmount(u32 a_amount)
{
    if (amount != 0)
    {
        amount = std::min<u32>(MAX_AMOUNT, amount + a_amount);
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

Article::Article(u32 a_id)
{
    id = a_id;
}

int Article::GetId() const
{
    return id;
}

char const * Article::GetName() const
{
    if (IsValidArticleId(id))
        return gArticleInfo[id].name;

    return "Broken Article";
}

u16 Article::GetIconId() const
{
    if (IsValidArticleId(id))
        return gArticleInfo[id].icon_id;

    return 457; // Turnip
}

bool Article::CanBeDiscarded() const
{
    switch (id)
    {
        default:
            return true;

        case ARTICLE_HARVEST_GODDESS_JEWEL:
        case ARTICLE_KAPPA_JEWEL:
        case ARTICLE_JEWEL_OF_TRUTH:
        case ARTICLE_KARENS_WINE:
        case ARTICLE_POPURIS_MUD_BALL:
        case ARTICLE_ANNS_MUSIC_BOX:
        case ARTICLE_MARYS_GREAT_BOOK:
        case ARTICLE_ELLIS_PRESSED_FLOWER:
        case ARTICLE_FRISBEE:
            return false;
    }
}

static inline char const * GetArticleDescById(u32 id)
{
    if (gArticleInfo[id].desc != nullptr)
        return gArticleInfo[id].desc;

    return "No Explanation";
}

char const * Article::GetDesc() const
{
    if (IsValidArticleId(id))
        return GetArticleDescById(id);

    return "No Explanation";
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
        amount = *(u8 *)&std::min<u32>(MAX_AMOUNT, a_amount);
    }
    else
    {
        amount = 1;
    }
}

Article ArticleStack::GetArticle() const
{
    if (amount != 0)
        return *this;

    return Article(ARTICLE_NONE);
}

bool ArticleStack::IsEmpty() const
{
    return amount == 0;
}

u32 ArticleStack::GetAmount() const
{
    if (amount != 0)
        return amount;

    return 0;
}

void ArticleStack::AddAmount(u32 a_amount)
{
    if (amount != 0)
    {
        amount = std::min<u32>(MAX_AMOUNT, amount + a_amount);
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

Product::Product()
{
    id = PRODUCT_NONE;
}

Product::Product(u32 a_id)
{
    id = a_id;
}

Product::Product(Food food)
{
    id = PRODUCT_NONE;

    u32 food_id = food.GetId();

    for (int i = 0; i < PRODUCT_NONE; i++)
    {
        ProductInfo const * info = gProductInfo + i;

        if (info->kind == ProductInfo::KIND_FOOD && info->item == food_id)
        {
            id = i;
            break;
        }
    }
}

Product::Product(Article article)
{
    id = PRODUCT_NONE;

    u32 article_id = article.GetId();

    for (int i = 0; i < PRODUCT_NONE; ++i)
    {
        ProductInfo const * info = gProductInfo + i;

        if (info->kind == ProductInfo::KIND_ARTICLE && info->item == article_id)
        {
            id = i;
            break;
        }
    }
}

int Product::GetId() const
{
    return id;
}

u32 Product::GetPrice() const
{
    if (IsValidProductId(id))
        return gProductInfo[id].price;

    return 0;
}

char const * Product::GetName() const
{
    if (IsValidProductId(id))
    {
        ProductInfo const * info = gProductInfo + id;

        if (info->kind == ProductInfo::KIND_FOOD)
        {
            return Food(info->item).GetName();
        }
        else
        {
            return Article(info->item).GetName();
        }
    }

    return "Broken Shipment";
}

u16 Product::GetIconId() const
{
    if (IsValidProductId(id))
    {
        ProductInfo const * info = gProductInfo + id;

        if (info->kind == ProductInfo::KIND_FOOD)
        {
            return Food(info->item).GetIconId();
        }
        else
        {
            return Article(info->item).GetIconId();
        }
    }

    return 0;
}

Tool ItemVariant::AsTool() const
{
    return (kind == KIND_TOOL) ? Tool(id) : Tool(TOOL_NONE);
}

Food ItemVariant::AsFood() const
{
    return (kind == KIND_FOOD) ? Food(id) : Food(FOOD_NONE);
}

Article ItemVariant::AsArticle() const
{
    return (kind == KIND_ARTICLE) ? Article(id) : Article(ARTICLE_NONE);
}

// Item Info tables

ToolInfo const gToolInfo[] = {
#define o(tag, icon, name, desc) { (name), (icon), (desc) },
#include "data/item/tool.def"
#undef o
};

FoodInfo const gFoodInfo[] = {
#define o(tag, is_drink, stamina, fatigue, icon, name, desc) { (name), (is_drink), (stamina), (fatigue), (icon), (desc) },
#include "data/item/food.def"
#undef o
};

ArticleInfo const gArticleInfo[] = {
#define o(tag, icon, name, desc) { (name), (icon), (desc) },
#include "data/item/article.def"
#undef o
};

ProductInfo const gProductInfo[] = {
#define o(tag, kind, price) { (price), (ProductInfo::KIND_##kind), (kind##_##tag) },
#include "data/item/product.def"
#undef o
};
