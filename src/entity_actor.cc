#include "entity_actor.hh"

#include "unk-inl.hh"

extern "C" void func_080321B0(AActorEntity * self, int anim_id);
extern "C" void func_080321C8(AActorEntity * self, u32 arg_1);
extern "C" void func_0805E860(SpriteAnimator * self, u32 anim_id);
extern "C" u32 func_08032090(void * sprite, u32 anim_id); // Sprite
extern "C" bool func_080AC070(UnkMap & unk, Box const & box);

AActorEntity::AActorEntity(GameObject * game_object, ActorLocation const & location, u32 arg_2, u32 anim_id)
    : AEntity(game_object, location),
      x_speed_q16(0),
      y_speed_q16(0),
      facing(location.facing),
      unk_21(arg_2)
{
    SetAnim(anim_id);
}

void AActorEntity::SetLocation(ActorLocation const & location)
{
    AEntity::SetLocation(location.GetMap(), location.GetX(), location.GetY());

    fu8 new_facing = location.facing;

    if (facing != new_facing)
        SetAnimFacing(new_facing);

    unk_28.unk_00 = 0;
}

ActorLocation AActorEntity::GetLocation(void) const
{
    return ActorLocation(AEntity::GetLocation(), facing);
}

void AActorEntity::SetAnimFacing(u32 new_facing)
{
    facing = new_facing;
    func_080321C8(this, anim_id + facing);
}


void AActorEntity::SetAnim(u32 new_anim_id)
{
    anim_id = new_anim_id;
    func_080321C8(this, anim_id + facing);
}

void AActorEntity::RefreshSprite(u32 sprite_anim)
{
    UnknownEntityThing * ptr = unk_10.Get();

    if (ptr != nullptr)
    {
        func_0805E860(&ptr->sprite_animator, sprite_anim);
        ptr->unk_44 = 1;
        ptr->unk_46 = 0;
        ptr->unk_47 = 1;
    }

    unk_24 = func_08032090(game_object->vfunc_68(), sprite_anim);
    unk_26 = unk_24;
}

void AActorEntity::method_08032208(void)
{
    if (x_speed_q16 == 0 && y_speed_q16 == 0)
        return;

    GameObject * go = game_object;

    fu16 map = location_map;

    i32 x_old_q16 = x_q16;
    i32 y_old_q16 = y_q16;
    i32 x_new_q16 = x_q16 + x_speed_q16;
    i32 y_new_q16 = y_q16 + y_speed_q16;

    if (x_new_q16 < 0)
    {
        x_new_q16 = 0;
    }
    else
    {
        i32 map_width = go->vfunc_2C(map) << 16;

        if (x_new_q16 > map_width)
            x_new_q16 = map_width;
    }

    if (y_new_q16 < 0)
    {
        y_new_q16 = 0;
    }
    else
    {
        i32 map_height = go->vfunc_30(map) << 16;

        if (y_new_q16 > map_height)
            y_new_q16 = map_height;
    }

    i32 x_diff = (x_new_q16 >> 16) - (x_old_q16 >> 16);
    i32 y_diff = (y_new_q16 >> 16) - (y_old_q16 >> 16);

    Box box_a = UnkMapBox(GetBox());
    Box & box = box_a;

    UnkMap unk = go->vfunc_34(map);

    if (func_080AC070(unk, box) || !func_080AC070(unk, box.Moved(x_diff, y_diff)))
    {
        x_q16 = x_new_q16;
        y_q16 = y_new_q16;
    }
}

// Aliases
extern "C" void func_0803211C() ALIAS(SetLocation__12AActorEntityRC13ActorLocation);
extern "C" void func_08032170() ALIAS(GetLocation__C12AActorEntity);
extern "C" void func_08032198() ALIAS(SetAnimFacing__12AActorEntityUi);
extern "C" void func_080321B0() ALIAS(SetAnim__12AActorEntityUi);
extern "C" void func_080321C8() ALIAS(RefreshSprite__12AActorEntityUi);
