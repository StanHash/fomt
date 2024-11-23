#ifndef UNKNOWN_TYPES_HH
#define UNKNOWN_TYPES_HH

#include "prelude.h"

// TODO: move elsewhere
struct UnkBarnAnimal2C
{
    /* +00 */ u16 unk_00;
    /* +02 */ u8 unk_02;
    /* +03 */ u8 unk_03;
};

// TODO: move elsewhere
struct UnkBarnAnimal2C_x2
{
    /* +00 */ UnkBarnAnimal2C a;
    /* +04 */ UnkBarnAnimal2C b;
};

// TODO: move elsewhere
struct Box
{
    /* +00 */ i16 x1, y1;
    /* +04 */ i16 x2, y2;

    Box(u32 x, u32 y)
        : x1(x), y1(y), x2(x), y2(y)
    {
    }

    Box(u32 x, u32 y, u32 w, u32 h)
    {
        x1 = x - w / 2;
        y1 = y - h / 2;
        x2 = x + w - w / 2;
        y2 = y + h - h / 2;
    }

    Box(u32 x1, u32 y1, u32 x2, u32 y2, i32 x_off, i32 y_off)
        : x1(x_off + x1), y1(y_off + y1), x2(x_off + x2), y2(y_off + y2)
    {
    }

    Box Moved(i32 x, i32 y) const { return Box(x1, y1, x2, y2, x, y); }
};

// NOTE: this is not used yet in code, but I'm pretty sure that's correct
struct MapData
{
    /* +00 */ void const * packed_img;
    /* +04 */ void const * packed_pal;
    /* +08 */ void const * packed_unk_08;
    /* +0C */ void const * packed_unk_0C;
    /* +10 */ void const * packed_unk_10;
    /* +14 */ void const * packed_unk_14;
    /* +18 */ void const * terrain_info;
    /* +1C */ void const * terrain_map;
    /* +20 */ u16 width;
    /* +22 */ u16 height;
    /* +24 */ bool unk_24;
};

// TODO: rename
// TODO: move elsewhere
struct UnkMapBox : public Box
{
    UnkMapBox(Box const & box)
        : Box(box)
    {
    }
};

// TODO: rename
// TODO: move elsewhere
struct UnkMap
{
    /* +00 */ u16 unk_00, unk_02, unk_04, unk_06;
    /* +08 */ u32 unk_08;
};

// TODO: move elsewhere
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
    virtual i32 vfunc_2C(u32 map_id); // ok: get map width
    virtual i32 vfunc_30(u32 map_id); // ok: get map height
    virtual UnkMap vfunc_34(u32 map_id);
    virtual void vfunc_38();
    virtual void vfunc_3C();
    virtual void vfunc_40();
    virtual void vfunc_44();
    virtual void vfunc_48();
    virtual void vfunc_4C();
    virtual void vfunc_50();
    virtual void vfunc_54();
    virtual void vfunc_58();
    virtual void vfunc_5C();
    virtual void vfunc_60();
    virtual void vfunc_64();
    virtual void * vfunc_68(); // TODO: return type: get map actor sprite

    /* +00 */ // vtable
};

struct SpriteAnimator
{
    /* +00 */ STRUCT_PAD(0x00, 0x14);
};

struct UnknownEntityThingBase
{
    virtual ~UnknownEntityThingBase();
    virtual void vfunc_0C();
    virtual void vfunc_10(u32 dummy);

    /* +00 */ int * dummy;
    /* +04 */ // vtable
};

// TODO: move elsewheres
struct UnknownEntityThing : public UnknownEntityThingBase
{
    /* +08 */ STRUCT_PAD(0x08, 0x30);
    /* +30 */ SpriteAnimator sprite_animator;
    /* +44 */ u8 unk_44;
    /* +45 */ u8 unk_45;
    /* +46 */ u8 unk_46;
    /* +47 */ u8 unk_47;

    // TODO: these may be in a different/derived class

    /* +48 */ STRUCT_PAD(0x48, 0x70);

    /* +70 */ SpriteAnimator sprite_animator_70;
    /* +84 */ u8 unk_84;
    /* +85 */ STRUCT_PAD(0x85, 0x86);
    /* +86 */ u8 unk_86;
    /* +87 */ u8 unk_87;
    /* +88 */ u8 unk_88;
    /* +89 */ STRUCT_PAD(0x89, 0x8A);
    /* +8A */ u8 unk_8A_0 : 2;
    /* +8A */ u8 unk_8A_2 : 6;
};

enum Season
{
    SEASON_SPRING,
    SEASON_SUMMER,
    SEASON_AUTUMN,
    SEASON_WINTER,
};

struct PACKED Date
{
    Season season : 2;
};

#endif // UNKNOWN_TYPES_HH
