#include "entity_actor.hh"
#include "npc.hh"

struct UnkNpcSchedule;

struct ANpcEntity : public AActorEntity
{
    ANpcEntity(GameObject * game_object, Npc * npc, u32 arg_3, void const * arg_4, u32 anim_id, u32 arg_6, u32 arg_7);
    ~ANpcEntity();

    /* vt+3C */ virtual void vfunc_3C(u32 unk_arg_1);

    /* +30 */ Npc * npc;
    /* +34 */ u32 unk_34;
    /* +38 */ UnkNpcSchedule const * unk_38;
    /* +3C */ u8 unk_3C;
    /* +3D */ u8 unk_3D;
    /* +3E */ u8 unk_3E;
    /* +3F */ u8 unk_3F;
    /* +40 */ u16 unk_40;
    /* +42 */ u16 unk_42;
    /* +44 */ u16 unk_44;
    /* +44 */ u16 unk_46;
};

EC void func_08034F00(ANpcEntity * self, bool);
EC void func_08035380(ANpcEntity & self);

static inline void TMP_ChangeAnim(ANpcEntity & self, u32 new_anim_id)
{
    if (self.anim_id != new_anim_id)
    {
        self.SetAnim(new_anim_id);
    }
}

static inline u32 TMP_GetAnim(ANpcEntity & self)
{
    return self.anim_id;
}

ANpcEntity::ANpcEntity(GameObject * game_object, Npc * npc, u32 arg_3, void const * arg_4, u32 anim_id, u32 arg_6, u32 arg_7)
    : AActorEntity(game_object, npc->GetLocation(), 2, npc->anim_id == NO_ANIM ? anim_id : npc->anim_id),
      npc(npc),
      unk_34(arg_3),
      unk_38(reinterpret_cast<UnkNpcSchedule const *>(arg_4)),
      unk_3C(npc->unk_0C_0),
      unk_3D(npc->unk_0C_5),
      unk_3E(npc->unk_0D_2),
      unk_3F(0),
      unk_40(npc->unk_0D_7),
      unk_42(arg_7),
      unk_44(anim_id),
      unk_46(arg_6)
{
    if (this->npc->anim_id == NO_ANIM)
    {
        func_08034F00(this, true);
    }
    else
    {
        unk_06 = true;
        TMP_ChangeAnim(*this, npc->anim_id);
    }
}

ANpcEntity::~ANpcEntity()
{
    npc->SetLocation(GetLocation());

    if (unk_06)
    {
        npc->anim_id = TMP_GetAnim(*this);
    }
    else
    {
        npc->anim_id = NO_ANIM;
    }

    if (unk_38 != nullptr)
    {
        npc->unk_0C_0 = unk_3C;
        npc->unk_0C_5 = unk_3D;
        npc->unk_0D_2 = unk_3E;
        npc->unk_0D_7 = unk_40;
    }
}

EC void func_08034E8C(ANpcEntity & self)
{
    self.AActorEntity::vfunc_14();
    self.npc->SetChangedLocation();
}

EC void func_08034EA0(ANpcEntity & self)
{
    self.unk_06 = false;
    self.vfunc_3C(1);
}

EC void func_08034EB4(ANpcEntity & self)
{
    func_08035380(self);

    if (self.unk_24 != 0)
        self.unk_24--;
    else
        self.unk_24 = self.unk_26;

    if (self.unk_10.Get() != nullptr)
    {
        self.unk_10->vfunc_0C();
    }
}

EC u32 func_08034EE0(ANpcEntity & self)
{
    if (self.npc->unk_10 == 0)
        return self.unk_42;

    return self.npc->unk_10;
}

EC void func_08034EF8(ANpcEntity & self, u32 unk_arg_1)
{
    self.npc->unk_10 = unk_arg_1;
}
