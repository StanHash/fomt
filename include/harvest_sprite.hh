#pragma once

#include "npc.hh"
#include "unk-types.hh"

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

    Task GetCurrentTask(void) const;
    u32 GetWorkDaysLeft(void) const;
    u32 GetTaskExp(Task task) const;
    bool HasPlayedMinigameToday(void) const;
    u32 GetMinigameExp(Task task) const;
    void AddTaskExp(Task task, int amount);
    void StartTask(Task task, int days);
    void method_0809E6EC(void);
    void SetPlayedMinigame(Task task, bool succeeded);
    void TaskDayUpdate(void);
    void DayUpdate(void);
    void method_0809E7C8(void);
    void method_0809E7D0(void);
    void method_0809E7D8(UnkBarnAnimal2C const * param);
    void method_0809E7E4(UnkBarnAnimal2C const * param);
    void method_0809E7F0(UnkBarnAnimal2C const * param);
    void method_0809E7FC(void);

    /* +14 */ u8 task_exp[3];
    /* +17 */ u8 minigame_exp[3];
    /* +1A */ u32 current_task : 2;
    /* +1A */ u32 work_days_left : 3;
    /* +1A */ bool played_minigame : 1;
    /* +1C */ u32 unk_1C;
    /* +20 */ UnkBarnAnimal2C unk_20;
};
