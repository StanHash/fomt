#include "entity_actor.hh"

#include <stdlib.h>

extern "C" void func_0805E860(SpriteAnimator * self, u32 anim_id);
extern "C" u32 func_08032090(void * sprite, u32 anim_id); // Sprite
extern "C" bool func_080AC070(UnkMap & unk, Box const & box);

AActorEntity::AActorEntity(GameObject * game_object, ActorLocation const & location, u32 arg_2, u32 anim_id)
    : AEntity(game_object, location), x_speed_q16(0), y_speed_q16(0), facing(location.facing), unk_21(arg_2)
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

ActorLocation AActorEntity::GetLocation() const
{
    return ActorLocation(AEntity::GetLocation(), facing);
}

void AActorEntity::SetAnimFacing(u32 new_facing)
{
    facing = new_facing;
    RefreshSprite(anim_id + facing);
}

void AActorEntity::SetAnim(u32 new_anim_id)
{
    anim_id = new_anim_id;
    RefreshSprite(anim_id + facing);
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

void AActorEntity::method_08032208()
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

UnkActorEntity28::UnkActorEntity28()
    : unk_00(0)
{
}

EC void func_08032308(AActorEntity & self, u32 arg_1, i32 arg_2)
{
    i32 x = self.x_q16 >> 16;

    self.x_q16 = x << 16;

    if (arg_2 != 0 && arg_1 != x)
    {
        self.unk_28.unk_00 = abs(arg_2);
        self.unk_2C = arg_1;
        self.unk_2E = 0;
    }
    else
    {
        self.unk_28.unk_00 = 0;
    }
}

EC void func_0803233C(AActorEntity & self, u32 arg_1, i32 arg_2)
{
    i32 y = self.y_q16 >> 16;

    self.y_q16 = y << 16;

    if (arg_2 != 0 && arg_1 != y)
    {
        self.unk_28.unk_00 = abs(arg_2);
        self.unk_2C = arg_1;
        self.unk_2E = 1;
    }
    else
    {
        self.unk_28.unk_00 = 0;
    }
}

EC bool func_08032370(AActorEntity & self)
{
    return self.unk_28.unk_00 == 0;
}

EC void func_08032384(AActorEntity & self, u32 arg_1, bool arg_2)
{
    if (self.unk_10.Get() != nullptr)
    {
        // TODO: this may be an inlined method call?
        UnknownEntityThing * ptr = self.unk_10.Get();
        func_0805E860(&ptr->sprite_animator_70, arg_1);
        ptr->unk_84 = 1;
        ptr->unk_86 = 0;
        ptr->unk_87 = 1;
        ptr->unk_8A_0 = arg_2 ? 2 : 1;
    }
}

EC void func_080323C8(AActorEntity & self)
{
    if (self.unk_10.Get() != nullptr)
    {
        self.unk_10->unk_8A_0 = 0;
    }
}

EC void func_080323E0(AActorEntity & self, u32 arg_1)
{
    if (self.unk_10.Get() != nullptr)
    {
        self.unk_10->unk_88 = arg_1;
    }
}

EC void func_080323F0(AActorEntity & self, u32 arg_1)
{
    if (self.unk_10.Get() != nullptr)
    {
        self.unk_10->unk_8A_2 = arg_1;
    }
}

EC Box func_0803240C(AActorEntity & self)
{
    return Box(self.x_q16 >> 16, self.y_q16 >> 16, 14, 9);
}

#if 0

EC void func_0803242C(AActorEntity & self, u32 arg_1)
{
    if (self.unk_24 == 0)
    {
        self.unk_24 = 0xFFFF;
    }
    else
    {
        self.unk_24 = self.unk_26;
    }

    if (self.unk_28.unk_00 != 0)
    {
        bool ip = self.unk_2E == 0;
        i32 r2 = ip ? self.x_q16 : self.y_q16;
        int r5 = r2 >> 16;
        int r7 = self.unk_2C - r5;

        if (r7 == 0)
        {
            self.unk_28.unk_00 = 0;
        }
        else
        {
            r2 = r7 > 0 ? r2 + self.unk_28.unk_00 : r2 - self.unk_28.unk_00;

            if ((r2 >> 16) != r5)
            {
                if (r7 > 0 && self.unk_2C - (r2 >> 16) > 0)
                    self.unk_28.unk_00 = 0;
                else if (r7 < 0 && self.unk_2C - (r2 >> 16) < 0)
                    self.unk_28.unk_00 = 0;
            }

            if (ip != 0)
                self.x_q16 = r2;
            else
                self.y_q16 = r2;
        }
    }

    self.AEntity::vfunc_2C(arg_1);
}

#endif

// this goes up to func_08032BB4
