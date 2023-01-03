#pragma once

#include "global.h"

#include "smart_ptr.hh"

struct AScene;
struct AUnk_0800080C;

struct AScene
{
    virtual ~AScene();
    virtual SmartPtr<AUnk_0800080C> Run() = 0;
};

struct AUnk_0800080C
{
    virtual ~AUnk_0800080C();
    virtual SmartPtr<AScene> vfunc_0C() = 0;
};

void SceneMain(SmartPtr<AScene> scene_ptr);
