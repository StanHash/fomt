#include "prelude.h"

#include "entity_actor.hh"

struct Entity_080E6554 : public AActorEntity
{
    Entity_080E6554(GameObject * game_object, ActorLocation const & location, u32 arg_2);

    /* +30 */ bool unk_30;
};

EC u32 func_08020018(u32 value)
{
    return 48 + value * value * 432 / 62500;
}

Entity_080E6554::Entity_080E6554(GameObject * game_object, ActorLocation const & location, u32 arg_2)
    : AActorEntity(game_object, location, 2, arg_2), unk_30(false)
{
}

// Aliases
EC void func_08020038() ALIAS(__15Entity_080E6554P10GameObjectRC13ActorLocationUi);
