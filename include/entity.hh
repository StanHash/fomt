#ifndef ENTITY_HH
#define ENTITY_HH

#include "prelude.h"

#include "actor.hh" // TODO: move Location
#include "smart_ptr.hh"
#include "unknown_types.hh"

struct AEntity
{
    AEntity(GameObject * game_object, Location const & location);

    /* vt+08 */ virtual ~AEntity() {}
    /* vt+0C */ virtual Box GetBox() const;
    /* vt+10 */ virtual void vfunc_10();
    /* vt+14 */ virtual void vfunc_14();
    /* vt+18 */ virtual void vfunc_18();
    /* vt+1C */ virtual void vfunc_1C(u32 dummy);
    /* vt+20 */ virtual void vfunc_20();
    /* vt+24 */ virtual void vfunc_24();
    /* vt+28 */ virtual bool vfunc_28() const;
    /* vt+2C */ virtual void vfunc_2C(u32 dummy);
    /* vt+30 */ virtual UnknownEntityThing * vfunc_30() = 0;

    void SetLocation(u32 map, i32 x, i32 y);
    Location GetLocation() const;
    void SetMap(u32 map);

    i32 GetQ16X() const { return x_q16; }
    void SetQ16X(i32 x_q16) { this->x_q16 = x_q16; }
    i32 GetQ16Y() const { return y_q16; }
    void SetQ16Y(i32 y_q16) { this->y_q16 = y_q16; }
    void SetLocation(Location const & location) { SetLocation(location.map, location.x, location.y); }
    u32 GetMap() const { return location_map; }
    void PutOutOfTown() { SetMap(MAP_NONE); }
    GameObject * GetGameObject() const { return game_object; }

    /* +00 */ GameObject * game_object;
    /* +04 */ u16 location_map;
    /* +06 */ bool unk_06; // enabled?
    /* +08 */ i32 x_q16;
    /* +0C */ i32 y_q16;
    /* +10 */ SmartPtr<UnknownEntityThing> unk_10;
    /* +14 */ // vtable
};

#endif // ENTITY_HH
