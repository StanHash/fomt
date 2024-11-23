#include "harvest_sprite.hh"

#include <cstdlib>

HarvestSprite::HarvestSprite(ActorLocation const & location)
    : Npc(location)
{
    current_task = TASK_NONE;
    work_days_left = 0;
    played_minigame = false;
    unk_1C = 0;

    task_exp[0] = 0;
    task_exp[1] = 0;
    task_exp[2] = 0;

    minigame_exp[0] = 0;
    minigame_exp[1] = 0;
    minigame_exp[2] = 0;
}

HarvestSprite::Task HarvestSprite::GetCurrentTask() const
{
    return static_cast<HarvestSprite::Task>(current_task);
}

u32 HarvestSprite::GetWorkDaysLeft() const
{
    return work_days_left;
}

u32 HarvestSprite::GetTaskExp(HarvestSprite::Task task) const
{
    if (task >= 0 && task < NUM_TASKS)
        return task_exp[task];
    else
        return 0;
}

bool HarvestSprite::HasPlayedMinigameToday() const
{
    return played_minigame;
}

u32 HarvestSprite::GetMinigameExp(HarvestSprite::Task task) const
{
    if (task >= 0 && task < NUM_TASKS)
        return minigame_exp[task];
    else
        return 0;
}

void HarvestSprite::AddTaskExp(HarvestSprite::Task task, int amount)
{
    if (task >= 0 && task < NUM_TASKS)
    {
        u32 total = task_exp[task] + amount;

        // Clamps the value between 0 and 255
        if ((int)total < 0)
            total = 0;
        else if (total > 255)
            total = 255;

        task_exp[task] = total;
    }
}

void HarvestSprite::StartTask(HarvestSprite::Task task, int days)
{
    current_task = task;
    work_days_left = days;
}

void HarvestSprite::method_0809E6EC()
{
    work_days_left = 1;
}

void HarvestSprite::SetPlayedMinigame(HarvestSprite::Task task, bool succeeded)
{
    played_minigame = true;

    if (succeeded && minigame_exp[task] != 31)
        minigame_exp[task]++;

    int task_exp;

    if (minigame_exp[task] < 6)
        task_exp = 1;
    else if (minigame_exp[task] < 11)
        task_exp = 2;
    else if (minigame_exp[task] < 17)
        task_exp = 3;
    else
        task_exp = 4;

    if (!succeeded)
        task_exp = -task_exp;

    AddTaskExp(task, task_exp);
    AddFriendship(1);
}

void HarvestSprite::TaskDayUpdate()
{
    if (work_days_left)
    {
        work_days_left--;

        if (work_days_left == 0)
            current_task = TASK_NONE;

        SubtractFriendship(2);
    }
}

void HarvestSprite::DayUpdate()
{
    Npc::DayUpdate(rand() % 100);
    played_minigame = false;
}

void HarvestSprite::method_0809E7C8()
{
    unk_1C = 0;
}

void HarvestSprite::method_0809E7D0()
{
    unk_1C = 1;
}

void HarvestSprite::method_0809E7D8(UnkBarnAnimal2C const * param)
{
    unk_20 = *param;
    unk_1C = 2;
}

void HarvestSprite::method_0809E7E4(UnkBarnAnimal2C const * param)
{
    unk_20 = *param;
    unk_1C = 3;
}

void HarvestSprite::method_0809E7F0(UnkBarnAnimal2C const * param)
{
    unk_20 = *param;
    unk_1C = 4;
}

void HarvestSprite::method_0809E7FC()
{
    unk_1C = 5;
}
