#include "harvest_sprite.hh"

// TODO: cstdlib
#include <stdlib.h>

HarvestSprite::HarvestSprite(ActorLocation const & location)
    : Npc(location)
{
    task = TASK_NONE;
    workDaysRemaining = 0;
    playedMinigame = false;
    unk_1C = 0;

    taskExp[0] = 0;
    taskExp[1] = 0;
    taskExp[2] = 0;

    minigameExp[0] = 0;
    minigameExp[1] = 0;
    minigameExp[2] = 0;
}

extern "C"
{

HarvestSprite * sub_809E628(HarvestSprite * self, ActorLocation const * location) ALIAS(__13HarvestSpriteRC13ActorLocation);

//Returns a sprite's current task
u8 sub_809E65C(struct HarvestSprite *hsprite){
    return hsprite->task;
}

//Returns a sprite's remaining work days
u8 sub_809E664(struct HarvestSprite *hsprite){
    return hsprite->workDaysRemaining;
}

//Returns a sprite's exp for a task
u8 sub_809E66C(struct HarvestSprite *hsprite, HarvestSprite::Task task){
    if ((u32) task < HarvestSprite::NUM_TASKS)
        return hsprite->taskExp[task];
    else
        return 0;
}

//Returns whether a sprite has played a minigame that day
u32 sub_809E680(struct HarvestSprite *hsprite){
    return hsprite->playedMinigame;
}

//Returns a sprite's minigame exp for a task
u32 sub_809E688(struct HarvestSprite *hsprite, HarvestSprite::Task task){
    if ((u32) task < HarvestSprite::NUM_TASKS)
        return hsprite->minigameExp[task];
    else
        return 0;
}

//Increases a sprite's task exp
void sub_809E69C(struct HarvestSprite *hsprite, HarvestSprite::Task task, u32 amount){
    if ((u32) task < HarvestSprite::NUM_TASKS){
        u32 total = hsprite->taskExp[task] + amount;

        //Clamps the value between 0 and 255
        if ((s32)total < 0)
            total = 0;
        else if (total > 255)
            total = 255;
            
        hsprite->taskExp[task] = total;
    }
}

//Sets a sprite's task and work days
void sub_809E6C4(struct HarvestSprite *hsprite, HarvestSprite::Task task, u32 days){
    hsprite->task = task;
    hsprite->workDaysRemaining = days;
}

//Assigns a sprite one work day
void sub_809E6EC(struct HarvestSprite *hsprite){
    hsprite->workDaysRemaining = 1;
}

//Modifies a sprite's minigame exp, task exp and friendship
void sub_809E6FC(struct HarvestSprite *hsprite, HarvestSprite::Task task, u8 param){
    u32 temp;

    hsprite->playedMinigame = TRUE;
    if(param && hsprite->minigameExp[task] != 31)
        hsprite->minigameExp[task]++;
    
    if(6 > hsprite->minigameExp[task])
        temp = 1;
    else if(11 > hsprite->minigameExp[task])
        temp = 2;
    else if(17 > hsprite->minigameExp[task])
        temp = 3;
    else
        temp = 4;
    
    if(!param)
        temp = -temp;
    
    sub_809E69C(hsprite, task, temp);
    hsprite->AddFriendship(1);
}

//Decrements a sprite's work days and resets the task if done
void sub_809E75C(struct HarvestSprite *hsprite){
    if(hsprite->workDaysRemaining){
        hsprite->workDaysRemaining--;
        if(hsprite->workDaysRemaining == 0)
            hsprite->task = HarvestSprite::TASK_NONE;
        hsprite->SubtractFriendship(2);
    }
}

//Checks if you talked to a sprite that day and resets the playedMinigame flag
void sub_809E7A0(struct HarvestSprite *hsprite){
    hsprite->DayUpdate(rand() % 100);
    hsprite->playedMinigame = FALSE;
}

//Resets a sprite's unknown value
void sub_809E7C8(struct HarvestSprite *hsprite){
    hsprite->unk_1C = 0;
}

//Sets a sprite's unknown value to 1
void sub_809E7D0(struct HarvestSprite *hsprite){
    hsprite->unk_1C = 1;
}

//Sets a sprite's unkown value to 2
void sub_809E7D8(struct HarvestSprite *hsprite, u32 *param){
    hsprite->unk_0x20 = *param;
    hsprite->unk_1C = 2;
}

//Sets a sprite's unkown value to 3
void sub_809E7E4(struct HarvestSprite *hsprite, u32 *param){
    hsprite->unk_0x20 = *param;
    hsprite->unk_1C = 3;
}

//Sets a sprite's unkown value to 4
void sub_809E7F0(struct HarvestSprite *hsprite, u32 *param){
    hsprite->unk_0x20 = *param;
    hsprite->unk_1C = 4;
}

//Sets a sprite's unkown value to 5
void sub_809E7FC(struct HarvestSprite *hsprite){
    hsprite->unk_1C = 5;
}

}
