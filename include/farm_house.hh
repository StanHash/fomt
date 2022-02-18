#pragma once

#include "global.h"

#include "furniture.hh"
#include "game_time.hh"

struct FarmHouse
{
    FarmHouse(void);

    u32 GetUpgradeLevel(void) const;
    Fridge const * GetFridge(void) const;
    Shelf const * GetShelf(void) const;
    RecordPlayer const * GetRecordPlayer(void) const;
    u32 GetWindowStyle(void) const;
    u32 GetMailboxStyle(void) const;
    u32 GetDoghouseStyle(void) const;
    bool HasBathroom(void) const;
    bool HasLargeBed(void) const;
    bool HasCarpet(void) const;
    bool HasVase(void) const;
    u32 GetVaseArticleId(void) const;
    bool HasMirror(void) const;
    bool HasClock(void) const;
    bool HasStocking(void) const;
    bool IsFireplaceLighted(void) const;
    bool HasKitchen(void) const;
    bool HasKitchenKnife(void) const;
    bool HasKitchenFryingPan(void) const;
    bool HasKitchenPot(void) const;
    bool HasKitchenMixer(void) const;
    bool HasKitchenWhisk(void) const;
    bool HasKitchenRollingPin(void) const;
    bool HasKitchenOven(void) const;
    bool HasKitchenSeasoningSet(void) const;
    u32 GetStockingArticleId(void) const;
    void UpgradeHouseLevel(void);
    Fridge * GetFridge(void);
    Shelf * GetShelf(void);
    RecordPlayer * GetRecordPlayer(void);
    void SetWindowStyle(u32 style_id);
    void SetMailboxStyle(u32 style_id);
    void SetDoghouseStyle(u32 style_id);
    void AddBathroom(void);
    void AddFridge(void);
    void AddShelf(void);
    void AddRecordPlayer(void);
    void AddLargeBed(void);
    void AddCarpet(void);
    void AddVase(void);
    void SetVaseArticleId(u32 article_id);
    void AddMirror(void);
    void AddClock(void);
    void AddStocking(void);
    void RemoveStocking(void);
    void LightFireplace(void);
    void AddKitchen(void);
    void AddKitchenKnife(void);
    void AddKitchenFryingPan(void);
    void AddKitchenPot(void);
    void AddKitchenMixer(void);
    void AddKitchenWhisk(void);
    void KitchenRollingPin(void);
    void AddKitchenOven(void);
    void AddKitchenSeasoningSet(void);
    void SetStockingArticleId(u32 article_id);
    void DayUpdate(Season season);

    /* +000 */ u32 upgrade_level : 2;
    /* +000 */ u32 window_style : 2;
    /* +000 */ u32 mailbox_style : 2;
    /* +000 */ u32 doghouse_style : 2;
    /* +001 */ bool has_bathroom : 1;
    /* +001 */ bool has_fridge : 1;
    /* +001 */ bool has_shelf : 1;
    /* +001 */ bool has_record_player : 1;
    /* +001 */ bool has_large_bed : 1;
    /* +001 */ bool has_carpet : 1;
    /* +001 */ bool has_vase : 1;
    /* +001 */ u32 vase_article_id : 8;
    /* +002 */ u32 vase_article_lifespan : 4;
    /* +003 */ bool has_mirror : 1;
    /* +003 */ bool has_clock : 1;
    /* +003 */ bool has_stocking : 1;
    /* +003 */ u32 stocking_article_id : 8;
    /* +004 */ bool fireplace_lighted : 1;
    /* +004 */ bool has_kitchen : 1;
    /* +005 */ bool has_kitchen_knife : 1;
    /* +005 */ bool has_kitchen_frying_pan : 1;
    /* +005 */ bool has_kitchen_pot : 1;
    /* +005 */ bool has_kitchen_mixer : 1;
    /* +005 */ bool has_kitchen_whisk : 1;
    /* +005 */ bool has_kitchen_rolling_pin : 1;
    /* +005 */ bool has_kitchen_oven : 1;
    /* +005 */ bool has_kitchen_seasoning_set : 1;
    /* +008 */ Fridge fridge;
    /* +108 */ Shelf shelf;
    /* +188 */ RecordPlayer record_player;
    /* +18C */ ToolChest tool_chest;
    /* +20C */ Unk_0800BC58 unk;
};
