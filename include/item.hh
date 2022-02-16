#pragma once

#include "global.h"

struct PACKED Tool
{
    Tool(u8 id);

    u8 GetId(void) const;
    char const * GetName(void) const;
    u16 GetIconId(void) const;
    char const * GetDesc(void) const;

    /* +00 */ u8 id;
};

struct PACKED ToolStack : public Tool
{
    ToolStack();
    ToolStack(Tool kind, u32 amount);

    u8 GetId(void) const;
    bool IsEmpty(void) const;
    u32 GetAmount(void) const;
    void AddAmount(u32 amount);
    void SubtractAmount(u32 amount);

    /* +01 */ u8 amount;
};

struct PACKED Food
{
    Food(u8 id);

    u8 GetId(void) const;
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

struct PACKED FoodStack : public Food
{
    FoodStack();
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
    Article() {} // TODO: remove
    Article(u8 id);

    u8 GetId(void) const;
    char const * GetName(void) const;
    u16 GetIconId(void) const;
    bool CanBeDiscarded(void) const;
    char const * GetDesc(void) const;

    /* +00 */ u8 id;
};

struct PACKED ArticleStack : public Article
{
    ArticleStack();
    ArticleStack(Article article, u32 a_amount);

    u8 GetArticleId(void) const;
    bool IsEmpty(void) const;
    u32 GetAmount(void) const;
    void AddAmount(u32 amount);
    void SubtractAmount(u32 amount);

    /* +01 */ u8 amount;
};
