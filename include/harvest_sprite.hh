#pragma once

#include "npc.hh"

struct HarvestSprite : public Npc
{
    enum Task
    {
        TASK_HARVEST,
        TASK_WATER,
        TASK_ANIMALS,
        TASK_NONE,

        NUM_TASKS = TASK_NONE,
    };

    HarvestSprite(ActorLocation const & location);

    /* +14 */ u8 taskExp[3];
    /* +17 */ u8 minigameExp[3];
    /* +1A */ u32 task : 2;
    /* +1A */ u32 workDaysRemaining : 3;
    /* +1A */ bool playedMinigame : 1;
    /* +1B */ u8 unk_0x1B;
    /* +1C */ u32 unk_1C;
    /* +20 */ u32 unk_0x20;
};
