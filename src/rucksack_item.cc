#include "rucksack_item.hh"

RucksackItem::RucksackItem()
{
    kind = KIND_FOOD;
    wrapped = false;

    inner.item_id = FOOD_NONE;
}

RucksackItem::RucksackItem(Food food)
{
    kind = KIND_FOOD;
    wrapped = false;

    inner.item_id = food.GetId();
    inner.stamina_bonus = food.GetStaminaBonus();
    inner.fatigue_bonus = food.GetFatigueBonus();
}

RucksackItem::RucksackItem(Article article)
{
    kind = KIND_ARTICLE;
    wrapped = false;

    inner.item_id = article.GetId();
}

bool RucksackItem::IsEmpty() const
{
    switch (kind)
    {
        default:
            return true;

        case KIND_FOOD:
            return inner.item_id >= FOOD_NONE;

        case KIND_ARTICLE:
            return inner.item_id >= ARTICLE_NONE;
    }
}

RucksackItem::Kind RucksackItem::GetKind() const
{
    return kind;
}

Food RucksackItem::GetFood() const
{
    if (kind == KIND_FOOD)
    {
        Food result(inner.item_id);
        result.AddBonuses(inner.stamina_bonus, inner.fatigue_bonus);
        return result;
    }
    else
    {
        return Food(FOOD_NONE);
    }
}

Article RucksackItem::GetArticle() const
{
    if (kind == KIND_ARTICLE)
    {
        return Article(inner.item_id);
    }
    else
    {
        return Article(ARTICLE_NONE);
    }
}

bool RucksackItem::IsWrapped() const
{
    return wrapped;
}

bool RucksackItem::TryWrap()
{
    bool can_be_wrapped = false;

    switch (kind)
    {
        case KIND_FOOD:
            can_be_wrapped = true;
            break;

        case KIND_ARTICLE:
            can_be_wrapped = Article(inner.item_id).CanBeDiscarded();
            break;
    }

    wrapped = can_be_wrapped;
    return can_be_wrapped;
}

struct UnkItem
{
    enum Kind
    {
        KIND_FOOD,
        KIND_ARTICLE,
        KIND_2,
        KIND_3,
        KIND_4,
        KIND_5,
    };

    union PACKED Inner
    {
        struct
        {
            u8 id;
            i8 stamina_bonus;
            i8 fatigue_bonus;
        } food;

        struct
        {
            u8 id;
        } article;

        struct
        {
            u8 id;
        } unk_k3;

        u16 unk_k5_02;
    };

    Kind kind : 3;
    bool wrapped : 1;
    STRUCT_PAD(0x01, 0x02);
    Inner inner;
};

// constructor?
EC UnkItem * func_0800F170(UnkItem * self)
{
    self->kind = UnkItem::KIND_5;
    self->wrapped = 0;
    self->inner.unk_k5_02 = UINT16_MAX;

    return self;
}

EC bool func_0800F190(UnkItem const * self)
{
    switch (self->kind)
    {
        default:
            return true;

        case UnkItem::KIND_FOOD:
            return self->inner.food.id >= FOOD_NONE;

        case UnkItem::KIND_ARTICLE:
            return self->inner.article.id >= ARTICLE_NONE;

        case UnkItem::KIND_2:
            return false;

        case UnkItem::KIND_3:
            return self->inner.unk_k3.id >= 8;

        case UnkItem::KIND_4:
            return false;

        case UnkItem::KIND_5:
            return self->inner.unk_k5_02 == 0xFFFF;
    }
}

EC UnkItem::Kind func_0800F204(UnkItem const * self)
{
    return self->kind;
}

EC Food func_0800F20C(UnkItem const * self)
{
    if (self->kind == UnkItem::KIND_FOOD && self->inner.food.id < FOOD_NONE)
    {
        Food food(self->inner.food.id);

        food.AddBonuses(self->inner.food.stamina_bonus, self->inner.food.fatigue_bonus);

        return food;
    }

    return Food(FOOD_NONE);
}

EC Article func_0800F258(UnkItem const * self)
{
    if (self->kind == UnkItem::KIND_ARTICLE && self->inner.article.id < ARTICLE_NONE)
    {
        return Article(self->inner.article.id);
    }

    return Article(ARTICLE_NONE);
}

EC RucksackItem func_0800F294(UnkItem const * self)
{
    if (self->kind == UnkItem::KIND_FOOD && self->inner.food.id < FOOD_NONE)
    {
        Food food(self->inner.food.id);

        food.AddBonuses(self->inner.food.stamina_bonus, self->inner.food.fatigue_bonus);

        RucksackItem rucksack_item(food);

        if (self->wrapped)
        {
            rucksack_item.TryWrap();
        }

        return rucksack_item;
    }

    if (self->kind == UnkItem::KIND_ARTICLE && self->inner.food.id < ARTICLE_NONE)
    {
        Article article(self->inner.article.id);

        RucksackItem rucksack_item(article);

        if (self->wrapped)
        {
            rucksack_item.TryWrap();
        }

        return rucksack_item;
    }

    return RucksackItem();
}

EC int func_0800F344(UnkItem const * self)
{
    if (self->kind == UnkItem::KIND_3 && self->inner.unk_k3.id < 8)
        return self->inner.unk_k3.id;

    return -1;
}

EC int func_0800F360(UnkItem const * self)
{
    if (self->kind == UnkItem::KIND_5 && self->inner.unk_k5_02 < 0xFFFF)
        return self->inner.unk_k5_02;

    return -1;
}

EC bool func_0800F388(UnkItem const * self)
{
    return self->wrapped;
}

EC void func_0800F390(UnkItem * self)
{
    self->kind = UnkItem::KIND_5;
    self->wrapped = 0;
    self->inner.unk_k5_02 = UINT16_MAX;
}

EC void func_0800F3B0(UnkItem * self, Food food)
{
    self->kind = UnkItem::KIND_FOOD;
    self->wrapped = 0;
    self->inner.food.id = food.GetId();
    self->inner.food.stamina_bonus = food.GetStaminaBonus();
    self->inner.food.fatigue_bonus = food.GetFatigueBonus();
}

EC void func_0800F3E8(UnkItem * self, Article article)
{
    self->kind = UnkItem::KIND_ARTICLE;
    self->wrapped = 0;
    self->inner.food.id = article.GetId();
}

EC void func_0800F418(UnkItem * self, RucksackItem rucksack_item)
{
    switch (rucksack_item.GetKind())
    {
        default:
            self->wrapped = false;
            break;

        case RucksackItem::KIND_FOOD:
        {
            self->kind = UnkItem::KIND_FOOD;
            self->wrapped = rucksack_item.IsWrapped();
            Food food = rucksack_item.GetFood();
            self->inner.food.id = food.GetId();
            self->inner.food.stamina_bonus = food.GetStaminaBonus();
            self->inner.food.fatigue_bonus = food.GetFatigueBonus();
            break;
        }

        case RucksackItem::KIND_ARTICLE:
        {
            self->kind = UnkItem::KIND_ARTICLE;
            self->wrapped = rucksack_item.IsWrapped();
            Article article = rucksack_item.GetArticle();
            self->inner.food.id = article.GetId();
            break;
        }
    }
}

EC void func_0800F4C0(UnkItem * self)
{
    self->kind = UnkItem::KIND_2;
    self->wrapped = 0;
}

EC void func_0800F4D8(UnkItem * self)
{
    self->kind = UnkItem::KIND_4;
    self->wrapped = 0;
}

EC void func_0800F4F0(UnkItem * self, fu8 arg_1)
{
    self->kind = UnkItem::KIND_3;
    self->wrapped = 0;
    self->inner.unk_k3.id = arg_1 % 8;
}

EC void func_0800F510(UnkItem * self, int arg_1)
{
    self->kind = UnkItem::KIND_5;
    self->wrapped = 0;
    self->inner.unk_k5_02 = arg_1;
}

EC bool func_0800F528(UnkItem * self)
{
    bool can_be_wrapped = false;

    switch (self->kind)
    {
        case UnkItem::KIND_FOOD:
            can_be_wrapped = true;
            break;

        case UnkItem::KIND_ARTICLE:
            can_be_wrapped = Article(self->inner.article.id).CanBeDiscarded();
            break;

        default:
            break;
    }

    self->wrapped = can_be_wrapped;
    return can_be_wrapped;
}
