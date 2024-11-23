#include "entity.hh"

AEntity::AEntity(GameObject * game_object, Location const & location)
    : game_object(game_object), location_map(location.map), unk_06(false), x_q16(location.x << 16), y_q16(location.y << 16)
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

void AEntity::vfunc_2C(u32 dummy)
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
