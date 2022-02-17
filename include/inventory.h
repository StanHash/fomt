#include "global.h"

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
extern const Product gProductInfo[];



// Initializes the tool chest
ToolChest * sub_800B2EC(ToolChest *chest);
// Initializes the fridge
Fridge * sub_800B660(Fridge *fridge);
// Initializes the shelf
Shelf * __5Shelf(Shelf *shelf);
// Initializes the record player
RecordPlayer * __12RecordPlayer(RecordPlayer *player);

// Returns a slot's tool
u32 GetId__C4Tool(ToolSlot *slot);
// Returns a slot's tool
u8 GetTool__C9ToolStack(ToolSlot *slot);
// Returns whether a slot is empty or not
bool8 IsEmpty__C9ToolStack(ToolSlot *slot);
// Returns a slot's quantity
u32 GetAmount__C9ToolStack(ToolSlot *slot);

// Initializes a food slot
Item * __4FoodUi(Item * slot, u8 food);
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
void __7ArticleUi(ArticleSlot *slot, u8 article);
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
u32 GetArticle__C12ArticleStack(ArticleSlot *slot);
// Returns whether a slot is empty or not
bool8 IsEmpty__C12ArticleStack(ArticleSlot *slot);
// Returns a slot's quantity
u32 GetAmount__C12ArticleStack(ArticleSlot *slot);

// Returns the slot's product
u32 GetId__C7Product(ProductSlot *slot);
// Returns the slot's product price
u32 GetPrice__C7Product(ProductSlot *slot);
