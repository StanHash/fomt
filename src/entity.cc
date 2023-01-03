#include "global.h"

// TODO: move Location out of that
#include "actor.hh"

#include "smart_ptr.hh"

struct GameObject
{
    virtual ~GameObject();
    virtual void vfunc_0C();
    virtual void vfunc_10();
    virtual u32 vfunc_14(); // ok, get current map
    virtual void vfunc_18();
    virtual void vfunc_1C();
    virtual void vfunc_20();
    virtual void vfunc_24();
    virtual void vfunc_28();
    virtual void vfunc_2C();

    /* +00 */ // vtable
};

struct UnknownEntityThing
{
    virtual ~UnknownEntityThing();
    virtual void vfunc_0C();
    virtual void vfunc_10(u32 dummy);

    /* +00 */ int dummy;
    /* +04 */ // vtable
};

struct Box
{
    /* +00 */ u16 x1, y1;
    /* +01 */ u16 x2, y2;

    Box(u32 x, u32 y)
        : x1(x), y1(y), x2(x), y2(y)
    {
    }
};

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
    /* vt+28 */ virtual bool vfunc_28();
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

AEntity::AEntity(GameObject * game_object, Location const & location)
    : game_object(game_object),
      location_map(location.map), 
      unk_06(false),
      x_q16(location.x << 16),
      y_q16(location.y << 16)
{
}

void AEntity::vfunc_10()
{
    unk_10 = nullptr;

    if (game_object->vfunc_14() != location_map)
        return;

    unk_10 = vfunc_30();
}

void AEntity::vfunc_14()
{
    unk_10 = nullptr;
}

void AEntity::vfunc_1C(u32 dummy)
{
    if (unk_10.Get() != nullptr)
        unk_10->vfunc_10(dummy);
}

void AEntity::vfunc_2C()
{
    if (unk_10.Get() != nullptr)
        unk_10->vfunc_0C();
}

void AEntity::SetLocation(u32 map, i32 x, i32 y)
{
    SetMap(map);
    x_q16 = x << 16;
    y_q16 = y << 16;
}

Location AEntity::GetLocation() const
{
    return Location(location_map, x_q16 >> 16, y_q16 >> 16);
}

Box AEntity::GetBox() const
{
    return Box(x_q16 >> 16, y_q16 >> 16);
}

void AEntity::SetMap(u32 map)
{
    if (location_map != map)
    {
        location_map = map;
        vfunc_10();
    }
}

void AEntity::vfunc_18()
{
    if (unk_10.Get() != nullptr)
        unk_10->vfunc_0C();
}

bool AEntity::vfunc_28()
{
    return unk_06;
}

void AEntity::vfunc_24()
{
    unk_06 = false;
}

void AEntity::vfunc_20()
{
    unk_06 = true;
}

GameObject * AEntity::GetGameObject() const
{
    return game_object;
}

void AEntity::PutInWhateverMapUnused()
{
    SetMap(0x234); // TODO: map id
}

u32 AEntity::GetMap() const
{
    return location_map;
}

void AEntity::SetLocation(Location const & location)
{
    SetLocation(location.map, location.x, location.y);
}

void AEntity::SetQ16Y(i32 y_q16)
{
    this->y_q16 = y_q16;
}

i32 AEntity::GetQ16Y() const
{
    return y_q16;
}

void AEntity::SetQ16X(i32 x_q16)
{
    this->x_q16 = x_q16;
}

i32 AEntity::GetQ16X() const
{
    return x_q16;
}

AEntity::~AEntity()
{
}

// Aliases
extern "C" void func_0801FD78() ALIAS(__7AEntityP10GameObjectRC8Location);
extern "C" void func_0801FDC0() ALIAS(vfunc_10__7AEntity);
extern "C" void func_0801FE20() ALIAS(vfunc_14__7AEntity);
extern "C" void func_0801FE60() ALIAS(vfunc_2C__7AEntity);
extern "C" void func_0801FE78() ALIAS(SetLocation__7AEntityUiii);
extern "C" void func_0801FE94() ALIAS(GetLocation__C7AEntity);
extern "C" void func_0801FF38() ALIAS(SetMap__7AEntityUi);
extern "C" void func_0801FF54() ALIAS(vfunc_18__7AEntity);
