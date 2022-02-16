extern "C"
{

#include "inventory.h"

#include "constants/article.h"

// are those song ids?
u8 const unk_80E9605[] =
{
    18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32
};

// Initializes the record player
RecordPlayer * sub_800BB60(RecordPlayer * player)
{
    player->unk = FALSE;
    player->album = 0;
    return player;
}

// Returns an unkown flag
bool8 sub_800BB74(RecordPlayer const * player)
{
    return player->unk;
}

// Returns an unkown value from a table
u32 sub_800BB7C(RecordPlayer const * player)
{
    if (!sub_800BB74(player))
        return 199;
    else
        return unk_80E9605[player->album];
}

ArticleSlot * sub_800BBA4(ArticleSlot * slot, RecordPlayer *player)
{
    ArticleSlot sp;
    if(!sub_800BB74(player)){
        __12ArticleStack(slot);
    }else{
        player->unk = FALSE;
        __7Articlec(&sp, player->album + ARTICLE_ALBUM_1);
        __12ArticleStackG7ArticleUi(slot, sp.article, 1);
    }
    return slot;
}

ArticleSlot * sub_800BBF0(ArticleSlot * slot1, RecordPlayer *player, ArticleSlot * slot2){
    ArticleSlot sp;
    u8 temp;

    switch (GetId__C7Article(slot2))
    {
        case ARTICLE_ALBUM_1 ... ARTICLE_ALBUM_15:
            player->unk = TRUE;
            temp = player->album;
            player->album = GetId__C7Article(slot2) - ARTICLE_ALBUM_1;

            __7Articlec(&sp, temp + ARTICLE_ALBUM_1);
            __12ArticleStackG7ArticleUi(slot1, sp.article, 1);
            return slot1;

        default:
            __12ArticleStack(slot1);
            return slot1;
    }
}

}
