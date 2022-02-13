#include "animal.hh"

// TODO: cstring
#include <string.h>

extern "C"
{
extern u8 gUnk_8103658[];
}

Located::Located(Location const * loc)
{
    memcpy(&location, loc, sizeof(Location));
}

Located::Located(Located const & other)
{
    memcpy(&location, &other.location, sizeof(Location));
}

void Located::SetLocation(Location const * loc)
{
    memcpy(&location, loc, sizeof(Location));
}

//Initializes an animal struct with a name
Animal::Animal(u8 * name, u32 * param, u32 age)
    : Located((Location const *) param)
{
    u8* temp;
    u32 length;

    temp = this->name;
    length = strlen(name);
    if (0xc < length)
        length = 0xc;
    
    memcpy(temp, name, length);
    temp[length] = 0;

    this->age = age;
    festivalWinner = 0;
    brushed = 0;
    talked = 0;
    affection = 0;
}

//Initializes an animal struct without a name
Animal::Animal(u32 * param, u32 age)
    : Located((Location const *) param)
{
    name[0] = 0;
    this->age = age;
    festivalWinner = 0;
    brushed = 0;
    talked = 0;
    affection = 0;
}

extern "C"
{

//Returns a pointer to an animal's name if it isn't empty, otherwise returns gUnk_8103658
u8 * sub_809B1F4(struct Animal *animal){
    u8 *temp = animal->name;
    u8 empty = temp[0] == 0;

    if(!empty)
        return temp;
    else
        return gUnk_8103658;
}

//Returns whether the animal has won a festival
bool8 sub_809B218(struct Animal *animal){
    return animal->festivalWinner;
}

//Returns an animal's age
u32 sub_809B220(struct Animal *animal){
    return animal->age;
}

//Returns an animal's affection
u32 sub_809B228(struct Animal *animal){
    return animal->affection;
}

//Returns whether the animal has been brushed
bool8 sub_809B230(struct Animal *animal){
    return animal->brushed;
}

//Returns whether the animal has been talked to
bool8 sub_809B238(struct Animal *animal){
    return animal->talked;
}

//Sets an animal's name
void sub_809B240(struct Animal *animal, u8 *arr) {
  u8 *temp = animal->name;
  
  u32 length = strlen(arr);
  if (0xc < length)
    length = 0xc;

  memcpy(temp, arr, length);
  animal->name[length] = 0;
}

//Sets the festival winner flag
void sub_809B26C(struct Animal *animal){
    animal->festivalWinner = TRUE;
}

//Sets the brushed flag
void sub_809B278(struct Animal *animal){
    if(!animal->brushed)
        animal->brushed = TRUE;
}

//Sets the talked flag
void sub_809B290(struct Animal *animal){
    if(!animal->talked)
        animal->talked = TRUE;
}

//Increases an animal's affection
void sub_809B2A8(struct Animal *animal, u32 amount){
    u32 total = animal->affection + amount;
    
    //Clamps the value between 0 and 250
    if ((s32)total < 0)
        total = 0;
    else if (total > 250)
        total = 250;
        
    animal->affection = total;
}

//Decreases an animal's affection
void sub_809B2DC(struct Animal *animal, u32 amount){
    sub_809B2A8(animal, -amount);
}

//Increments an animal's age and clears the brushed and talked flags
void sub_809B2E8(struct Animal *animal){
    if((u32)animal->age <= 1022)
        animal->age++;
        
    animal->brushed = FALSE;
    animal->talked = FALSE;
}

}
// extern "C"
