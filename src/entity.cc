#include "entity.hh"

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

bool AEntity::vfunc_28() const
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
