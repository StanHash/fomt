#include "global.h"

enum Products {
    PRODUCT_TURNIP,
    PRODUCT_POTATO,
    PRODUCT_CUCUMBER,
    PRODUCT_STRAWBERRY,
    PRODUCT_CABBAGE,
    PRODUCT_TOMATO,
    PRODUCT_CORN,
    PRODUCT_ONION,
    PRODUCT_PUMPKIN,
    PRODUCT_PINEAPPLE,
    PRODUCT_EGGPLANT,
    PRODUCT_CARROT,
    PRODUCT_SWEET_POTATO,
    PRODUCT_SPINACH,
    PRODUCT_GREEN_PEPPER,
    PRODUCT_EGG,
    PRODUCT_EGG_GOOD,
    PRODUCT_EGG_HIGH,
    PRODUCT_EGG_GOLD,
    PRODUCT_EGG_P,
    PRODUCT_EGG_X,
    PRODUCT_EGG_SPA_BOILED,
    PRODUCT_MAYONNAISE_S,
    PRODUCT_MAYONNAISE_M,
    PRODUCT_MAYONNAISE_L,
    PRODUCT_MAYONNAISE_G,
    PRODUCT_MAYONNAISE_P,
    PRODUCT_MAYONNAISE_X,
    PRODUCT_MILK_S,
    PRODUCT_MILK_M,
    PRODUCT_MILK_L,
    PRODUCT_MILK_G,
    PRODUCT_MILK_P,
    PRODUCT_MILK_X,
    PRODUCT_CHEESE_S,
    PRODUCT_CHEESE_M,
    PRODUCT_CHEESE_L,
    PRODUCT_CHEESE_G,
    PRODUCT_CHEESE_P,
    PRODUCT_CHEESE_X,
    PRODUCT_APPLE,
    PRODUCT_APPLE_SUGDW,
    PRODUCT_APPLE_HMSGB,
    PRODUCT_APPLE_AEPFE,
    PRODUCT_HONEY,
    PRODUCT_BAMBOO_SHOOT,
    PRODUCT_WILD_GRAPES,
    PRODUCT_MUSHROOM,
    PRODUCT_MUSHROOM_POISONOUS,
    PRODUCT_TRUFFLE,
    PRODUCT_GRASS_BLUE,
    PRODUCT_GRASS_GREEN,
    PRODUCT_GRASS_RED,
    PRODUCT_GRASS_YELLOW,
    PRODUCT_GRASS_ORANGE,
    PRODUCT_GRASS_PURPLE,
    PRODUCT_GRASS_INDIGO,
    PRODUCT_GRASS_BLACK,
    PRODUCT_GRASS_WHITE,
    PRODUCT_CHOCOLATE,
    PRODUCT_LEAVES_RELAXATION,
    PRODUCT_FISH_SMALL,
    PRODUCT_FISH_MEDIUM,
    PRODUCT_FISH_LARGE,
    PRODUCT_PIRATE_TREASURE,
    PRODUCT_FOSSIL,
    PRODUCT_FLOWER_MAGIC_RED,
    PRODUCT_WOOL_S,
    PRODUCT_WOOL_M,
    PRODUCT_WOOL_L,
    PRODUCT_WOOL_G,
    PRODUCT_WOOL_P,
    PRODUCT_WOOL_X,
    PRODUCT_YARN_S,
    PRODUCT_YARN_M,
    PRODUCT_YARN_L,
    PRODUCT_YARN_G,
    PRODUCT_YARN_P,
    PRODUCT_YARN_X,
    PRODUCT_BRACELET,
    PRODUCT_NECKLACE,
    PRODUCT_EARRINGS,
    PRODUCT_BROACH,
    PRODUCT_ORE_JUNK,
    PRODUCT_ORE_COPPER,
    PRODUCT_ORE_SILVER,
    PRODUCT_ORE_GOLD,
    PRODUCT_ORE_MYSTRILE,
    PRODUCT_ORE_ORICHALC,
    PRODUCT_ORE_ADAMANTITE,
    PRODUCT_STONE_MOON,
    PRODUCT_SAND_ROSE,
    PRODUCT_DIAMOND_PINK,
    PRODUCT_ALEXANDRITE,
    PRODUCT_STONE_MYTHIC,
    PRODUCT_DIAMOND,
    PRODUCT_EMERALD,
    PRODUCT_RUBY,
    PRODUCT_TOPAZ,
    PRODUCT_PERIDOT,
    PRODUCT_FLUORITE,
    PRODUCT_AGATE,
    PRODUCT_AMETHYST,
    PRODUCT_NONE,
    NUM_PRODUCTS = PRODUCT_NONE
};

enum ProductType {
    TYPE_FOOD,
    TYPE_ARTICLE
};



typedef struct __attribute__((__packed__)) ToolSlot {
    u8 tool;
    u8 quantity;
} ToolSlot;

typedef struct Item
{
    u8 id;
    s8 stamina;
    s8 fatigue;
}
__attribute__((packed)) Item;

typedef struct FoodSlot {
    Item item;
    u8 quantity;
} FoodSlot;

typedef struct __attribute__((__packed__)) ArticleSlot {
    u8 article;
    u8 quantity;
} ArticleSlot;

typedef struct ProductSlot {
    u8 product;
} ProductSlot;



typedef struct Tool {
    const u8 * name;
    u16 icon;
    const u8 * desc;
} Tool;

typedef struct Food {
    const u8* name;
    u8 isDrink:1; // Uses the drink animation when consumed
    s8 stamina;   // Stamina recovered when consumed
    s8 fatigue;   // Fatigue recovered when consumed
    u16 icon;
    const u8* desc;
} Food;

typedef struct Article {
    const u8* name;
    u16 icon;
    const u8* desc;
} Article;

typedef struct Product {
    u32 price:15;
    u32 type:1; // Food/Article
    u32 item:8; // Food/Article
} Product;



typedef struct ToolChest{
    ToolSlot slots[64];
}ToolChest;

typedef struct Fridge {
    FoodSlot slots[64];
} Fridge;

typedef struct Shelf {
    ArticleSlot slots[64];
} Shelf;

typedef struct RecordPlayer {
    u8 unk:1;
    u8 album:4;
} RecordPlayer;



extern const u8 gText_BrokenTool[];
extern const u8 gText_NoExplanation[];
extern const u8 gText_BrokenFood[];
extern const u8 gText_BrokenArticle[];
extern const u8 gText_BrokenShipment[];
extern const Tool gToolInfo[];
extern const Food gFoodInfo[];
extern const Article gArticleInfo[];
extern const Product gProducts[];



// Initializes the tool chest
ToolChest * sub_800B2EC(ToolChest *chest);
// Initializes the fridge
Fridge * sub_800B660(Fridge *fridge);
// Initializes the shelf
Shelf * sub_800B8E4(Shelf *shelf);
// Initializes the record player
RecordPlayer * sub_800BB60(RecordPlayer *player);

// Returns a slot's tool
u32 GetId__C4Tool(ToolSlot *slot);
// Returns a slot's tool
u8 GetId__C9ToolStack(ToolSlot *slot);
// Returns whether a slot is empty or not
bool8 IsEmpty__C9ToolStack(ToolSlot *slot);
// Returns a slot's quantity
u32 GetAmount__C9ToolStack(ToolSlot *slot);

// Initializes a food slot
Item * __4Foodc(Item * slot, u8 food);
// Returns a slot's food
u32 GetId__C4Food(Item const * slot);
// Returns a pointer to a slot's food name
const u8 * GetName__C4Food(Item const * slot);
// Returns a slot's icon index
u16 GetIconId__C4Food(Item const * slot);
// Returns a slot's stamina bonus
s8 GetStaminaBonus__C4Food(FoodSlot *slot);
// Returns a slot's fatigue bonus
s8 GetFatigueBonus__C4Food(FoodSlot *slot);
// Adds to the slot's stamina and fatigue bonus
void AddBonuses__4FoodScSc(Item * slot, s8 stamina, s8 fatigue);
// Initializes a food slot
FoodSlot * __9FoodStack(FoodSlot *slot);
// Initializes a food slot
Item * GetFood__C9FoodStack(Item * result, FoodSlot const * slot2);
// Returns whether a slot is empty or not
u8 IsEmpty__C9FoodStack(FoodSlot *slot);
// Returns a slot's quantity
u32 GetAmount__C9FoodStack(FoodSlot *slot);

// Sets a slot's article
void __7Articlec(ArticleSlot *slot, u8 article);
// Returns a slot's article
s32 GetId__C7Article(ArticleSlot *slot);
// Returns a pointer to a slot's article name
const u8 * GetName__C7Article(ArticleSlot *slot);
// Returns a slot's icon index
u16 GetIconId__C7Article(ArticleSlot *slot);
// Returns whether a slot's article can be gift wrapped
u8 CanBeDiscarded__C7Article(ArticleSlot *slot);
// Initializes an article slot
ArticleSlot * __12ArticleStack(ArticleSlot *slot);
// Initializes an article slot
ArticleSlot * __12ArticleStackG7ArticleUi(ArticleSlot *slot, u8 article, u32 amount);
// Returns a slot's article
u32 GetArticleId__C12ArticleStack(ArticleSlot *slot);
// Returns whether a slot is empty or not
bool8 IsEmpty__C12ArticleStack(ArticleSlot *slot);
// Returns a slot's quantity
u32 GetAmount__C12ArticleStack(ArticleSlot *slot);

// Returns the slot's product
u32 sub_800E194(ProductSlot *slot);
// Returns the slot's product price
u32 sub_800E198(ProductSlot *slot);
