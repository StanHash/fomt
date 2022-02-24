#include "rucksack_item.hh"

#include "constants/food.h"
#include "constants/article.h"

RucksackItem::RucksackItem(void)
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

bool RucksackItem::IsEmpty(void) const
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

RucksackItem::Kind RucksackItem::GetKind(void) const
{
    return kind;
}

Food RucksackItem::GetFood(void) const
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

Article RucksackItem::GetArticle(void) const
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

bool RucksackItem::IsWrapped(void) const
{
    return wrapped;
}

bool RucksackItem::TryWrap(void)
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
