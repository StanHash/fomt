#include "global.h"

// TODO
struct Location
{
    u32 map : 10;
    u32 x : 16;
    u32 y : 16;
};

struct Located
{
    Located(Location const * location);
    Located(Located const & other);

    void SetLocation(Location const * location);

    Location location;
};

struct Animal : public Located
{
    Animal::Animal(u8 * name, u32 * param, u32 age);
    Animal::Animal(u32 * param, u32 age);

    //8-23 0x8-0x17
    u8 name[16];
    //24-27 0x18-0x1B 
    u32 age:10;
    u32 festivalWinner:1;
    bool brushed:1;
    bool talked:1;
    u32 affection:8;
};

extern "C"
{
//Returns whether the animal has won a festival
bool8 sub_809B218(struct Animal *animal);
//Returns an animal's age
u32 sub_809B220(struct Animal *animal);
//Returns an animal's affection
u32 sub_809B228(struct Animal *animal);
//Returns whether the animal has been brushed
bool8 sub_809B230(struct Animal *animal);
//Returns whether the animal has been talked to
bool8 sub_809B238(struct Animal *animal);
//Increases an animal's affection
void sub_809B2A8(struct Animal *animal, u32 amount);
//Decreases an animal's affection
void sub_809B2DC(struct Animal *animal, u32 amount);
//Increments an animal's age and clears the brushed and talked flags
void sub_809B2E8(struct Animal *animal);
}
