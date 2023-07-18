#pragma once

#include "global.h"

#include "entity.hh"

struct UnkActorEntity28
{
    UnkActorEntity28();

    /* +00 */ u32 unk_00;
};

struct AActorEntity : public AEntity
{
    AActorEntity(GameObject * game_object, ActorLocation const & location, u32 arg_2, u32 arg_3);

    void SetLocation(ActorLocation const & location);
    ActorLocation GetLocation(void) const;
    void SetAnimFacing(u32 facing);
    void SetAnim(u32 anim);
    void RefreshSprite(u32 sprite_anim);
    void method_08032208(void);

    /* +18 */ u32 x_speed_q16;
    /* +1C */ u32 y_speed_q16;
    /* +20 */ u8 facing;
    /* +21 */ u8 unk_21;
    /* +22 */ u16 anim_id;
    /* +24 */ u16 unk_24;
    /* +26 */ u16 unk_26;
    /* +28 */ UnkActorEntity28 unk_28;
    /* +2C */ u16 unk_2C;
    /* +2E */ u8 unk_2E;
};
