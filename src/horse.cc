#include "horse.hh"

//TODO: Document and revise the pointer casts

//Initializes a horse struct
Horse::Horse(ActorLocation const * location, u32 age)
    : Pet(location, age)
{
    unk_0x20 = 0;
    unk_0x24 = 0;
    unk_0x26 = 0;
}

extern "C"
{

//Returns whether the horse is an adult or not
bool8 sub_809BC10(struct Horse *horse){
    return 119 < horse->GetAge();
}

void sub_809BC24(struct Horse *horse, u32 *param){
    *(u32 *)&horse->unk_0x24 = *param;
    horse->unk_0x20 = 0;
}

void sub_809BC30(struct Horse *horse, u32 *param){
    u32 temp = param[1];

    *(u32 *)&horse->unk_0x24 = *param;
    horse->unk_0x28 = temp;
    horse->unk_0x20 = 1;
}

void sub_809BC40(struct Horse *horse){
    horse->unk_0x20 = 2;
}

//Checks if you talked, brushed or rode your horse
void sub_809BC48(struct Horse *horse){
    horse->DayUpdate(false);
    horse->unk_0x20 = 0;
    horse->unk_0x24 = 0;
    horse->unk_0x26 = 0;
}

}
