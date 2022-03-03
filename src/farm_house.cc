#include "farm_house.hh"

#include <cstdlib>

FarmHouse::FarmHouse(void)
    : upgrade_level(0),
      window_style(0),
      mailbox_style(0),
      doghouse_style(0),
      has_bathroom(false),
      has_fridge(false),
      has_shelf(false),
      has_record_player(false),
      has_large_bed(false),
      has_carpet(false),
      has_vase(false), vase_article_id(ARTICLE_NONE),
      has_mirror(false),
      has_clock(false),
      has_stocking(false), stocking_article_id(ARTICLE_NONE),
      fireplace_lighted(false),
      has_kitchen(false),
      has_kitchen_knife(false),
      has_kitchen_frying_pan(false),
      has_kitchen_pot(false),
      has_kitchen_mixer(false),
      has_kitchen_whisk(false),
      has_kitchen_rolling_pin(false),
      has_kitchen_oven(false),
      has_kitchen_seasoning_set(false)
{
}

u32 FarmHouse::GetUpgradeLevel(void) const
{
    return upgrade_level;
}

Fridge const * FarmHouse::GetFridge(void) const
{
    return !has_fridge ? nullptr : &fridge;
}

Shelf const * FarmHouse::GetShelf(void) const
{
    return !has_shelf ? nullptr : &shelf;
}

RecordPlayer const * FarmHouse::GetRecordPlayer(void) const
{
    return !has_record_player ? nullptr : &record_player;
}

u32 FarmHouse::GetWindowStyle(void) const
{
    return window_style;
}

u32 FarmHouse::GetMailboxStyle(void) const
{
    return mailbox_style;
}

u32 FarmHouse::GetDoghouseStyle(void) const
{
    return doghouse_style;
}

bool FarmHouse::HasBathroom(void) const
{
    return has_bathroom;
}

bool FarmHouse::HasLargeBed(void) const
{
    return has_large_bed;
}

bool FarmHouse::HasCarpet(void) const
{
    return has_carpet;
}

bool FarmHouse::HasVase(void) const
{
    return has_vase;
}

u32 FarmHouse::GetVaseArticleId(void) const
{
    return vase_article_id;
}

bool FarmHouse::HasMirror(void) const
{
    return has_mirror;
}

bool FarmHouse::HasClock(void) const
{
    return has_clock;
}

bool FarmHouse::HasStocking(void) const
{
    return has_stocking;
}

bool FarmHouse::IsFireplaceLighted(void) const
{
    return fireplace_lighted;
}

bool FarmHouse::HasKitchen(void) const
{
    return has_kitchen;
}

bool FarmHouse::HasKitchenKnife(void) const
{
    return has_kitchen_knife;
}

bool FarmHouse::HasKitchenFryingPan(void) const
{
    return has_kitchen_frying_pan;
}

bool FarmHouse::HasKitchenPot(void) const
{
    return has_kitchen_pot;
}

bool FarmHouse::HasKitchenMixer(void) const
{
    return has_kitchen_mixer;
}

bool FarmHouse::HasKitchenWhisk(void) const
{
    return has_kitchen_whisk;
}

bool FarmHouse::HasKitchenRollingPin(void) const
{
    return has_kitchen_rolling_pin;
}

bool FarmHouse::HasKitchenOven(void) const
{
    return has_kitchen_oven;
}

bool FarmHouse::HasKitchenSeasoningSet(void) const
{
    return has_kitchen_seasoning_set;
}

u32 FarmHouse::GetStockingArticleId(void) const
{
    return stocking_article_id;
}

void FarmHouse::UpgradeHouseLevel(void)
{
    if (upgrade_level < 2)
        upgrade_level++;
}

Fridge * FarmHouse::GetFridge(void)
{
    return !has_fridge ? nullptr : &fridge;
}

Shelf * FarmHouse::GetShelf(void)
{
    return !has_shelf ? nullptr : &shelf;
}

RecordPlayer * FarmHouse::GetRecordPlayer(void)
{
    return !has_record_player ? nullptr : &record_player;
}

void FarmHouse::SetWindowStyle(u32 style_id)
{
    if (upgrade_level > 1)
        window_style = style_id;
}

void FarmHouse::SetMailboxStyle(u32 style_id)
{
    if (upgrade_level > 1)
        mailbox_style = style_id;
}

void FarmHouse::SetDoghouseStyle(u32 style_id)
{
    if (upgrade_level > 1)
        doghouse_style = style_id;
}

void FarmHouse::AddBathroom(void)
{
    if (upgrade_level == 2)
        has_bathroom = true;
}

void FarmHouse::AddFridge(void)
{
    if (upgrade_level != 0)
        has_fridge = true;
}

void FarmHouse::AddShelf(void)
{
    if (upgrade_level != 0)
        has_shelf = true;
}

void FarmHouse::AddRecordPlayer(void)
{
    has_record_player = true;
}

void FarmHouse::AddLargeBed(void)
{
    if (upgrade_level > 1)
        has_large_bed = true;
}

void FarmHouse::AddCarpet(void)
{
    if (upgrade_level != 0)
        has_carpet = true;
}

void FarmHouse::AddVase(void)
{
    has_vase = true;
}

void FarmHouse::SetVaseArticleId(u32 article_id)
{
    vase_article_id = article_id;

    switch (vase_article_id)
    {
        default:
            vase_article_lifespan = 0;
            break;

        case ARTICLE_MOON_DROP_GRASS:
            vase_article_lifespan = 7;
            break;

        case ARTICLE_BLUE_MAGIC_GRASS:
            vase_article_lifespan = 10;
            break;

        case ARTICLE_PINK_CAT_GRASS:
        case ARTICLE_RED_MAGIC_GRASS:
        case ARTICLE_TOY_FLOWER:
            vase_article_lifespan = 5;
            break;
    }
}

void FarmHouse::AddMirror(void)
{
    has_mirror = true;
}

void FarmHouse::AddClock(void)
{
    has_clock = true;
}

void FarmHouse::AddStocking(void)
{
    has_stocking = true;
}

void FarmHouse::RemoveStocking(void)
{
    has_stocking = false;
}

void FarmHouse::LightFireplace(void)
{
    if (upgrade_level > 1 && !fireplace_lighted)
        fireplace_lighted = true;
}

void FarmHouse::AddKitchen(void)
{
    if (upgrade_level != 0 && GetFridge() != nullptr)
        has_kitchen = true;
}

void FarmHouse::AddKitchenKnife(void)
{
    if (has_kitchen)
        has_kitchen_knife = true;
}

void FarmHouse::AddKitchenFryingPan(void)
{
    if (has_kitchen)
        has_kitchen_frying_pan = true;
}

void FarmHouse::AddKitchenPot(void)
{
    if (has_kitchen)
        has_kitchen_pot = true;
}

void FarmHouse::AddKitchenMixer(void)
{
    if (has_kitchen)
        has_kitchen_mixer = true;
}

void FarmHouse::AddKitchenWhisk(void)
{
    if (has_kitchen)
        has_kitchen_whisk = true;
}

void FarmHouse::KitchenRollingPin(void)
{
    if (has_kitchen)
        has_kitchen_rolling_pin = true;
}

void FarmHouse::AddKitchenOven(void)
{
    if (has_kitchen)
        has_kitchen_oven = true;
}

void FarmHouse::AddKitchenSeasoningSet(void)
{
    if (has_kitchen)
        has_kitchen_seasoning_set = true;
}

void FarmHouse::SetStockingArticleId(u32 article_id)
{
    stocking_article_id = article_id;
}

void FarmHouse::DayUpdate(Season season)
{
    fireplace_lighted = false;

    if (!has_vase || (u8) vase_article_id == ARTICLE_NONE)
        return;

    if (vase_article_lifespan)
        vase_article_lifespan--;

    switch (vase_article_id)
    {
        case ARTICLE_MOON_DROP_GRASS:
        case ARTICLE_TOY_FLOWER:
            if (season != SEASON_SPRING)
                vase_article_id = ARTICLE_NONE;

            break;

        case ARTICLE_PINK_CAT_GRASS:
            if (season != SEASON_SUMMER)
                vase_article_id = ARTICLE_NONE;

            break;

        case ARTICLE_BLUE_MAGIC_GRASS:
        case ARTICLE_RED_MAGIC_GRASS:
            if (season != SEASON_AUTUMN)
                vase_article_id = ARTICLE_NONE;

            break;
    }

    if (vase_article_lifespan == 0 && (rand() & 0xFF) <= 100)
        vase_article_id = ARTICLE_NONE;
}
