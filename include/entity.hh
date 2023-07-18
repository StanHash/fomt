#pragma once

#include "global.h"

#include "unk-types.hh"
#include "actor.hh" // TODO: move Location
#include "smart_ptr.hh"

struct AEntity
{
    AEntity(GameObject * game_object, Location const & location);

    /* vt+08 */ virtual ~AEntity();
    /* vt+0C */ virtual Box GetBox() const;
    /* vt+10 */ virtual void vfunc_10();
    /* vt+14 */ virtual void vfunc_14();
    /* vt+18 */ virtual void vfunc_18();
    /* vt+1C */ virtual void vfunc_1C(u32 dummy);
    /* vt+20 */ virtual void vfunc_20();
    /* vt+24 */ virtual void vfunc_24();
    /* vt+28 */ virtual bool vfunc_28() const;
    /* vt+2C */ virtual void vfunc_2C();
    /* vt+30 */ virtual UnknownEntityThing * vfunc_30() = 0;

    void SetLocation(u32 map, i32 x, i32 y);
    Location GetLocation() const;
    void SetMap(u32 map);
    GameObject * GetGameObject() const;
    void PutInWhateverMapUnused();
    u32 GetMap() const;
    void SetLocation(Location const & location);
    void SetQ16Y(i32 y_q16);
    i32 GetQ16Y() const;
    void SetQ16X(i32 x_q16);
    i32 GetQ16X() const;

    /* +00 */ GameObject * game_object;
    /* +04 */ u16 location_map;
    /* +06 */ bool unk_06;
    /* +08 */ i32 x_q16;
    /* +0C */ i32 y_q16;
    /* +10 */ SmartPtr<UnknownEntityThing> unk_10;
    /* +14 */ // vtable
};
