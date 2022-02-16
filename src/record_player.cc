#include "item.hh"

#include "constants/article.h"

// TODO: move to header
struct RecordPlayer
{
    RecordPlayer(void);

    bool HasAlbum(void) const;
    u32 GetUnknown(void) const;
    ArticleStack RemoveAlbum(void);
    ArticleStack SetAlbum(Article const & album_article);

    /* +00 */ bool has_album : 1;
    /* +00 */ u32 album_id : 4;
};

// are those song ids?
u8 const unk_080E9605[] =
{
    18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32
};

RecordPlayer::RecordPlayer(void)
{
    has_album = false;
    album_id = 0;
}

bool RecordPlayer::HasAlbum(void) const
{
    return has_album;
}

u32 RecordPlayer::GetUnknown(void) const
{
    if (!HasAlbum())
        return 199;

    return unk_080E9605[album_id];
}

ArticleStack RecordPlayer::RemoveAlbum(void)
{
    if (!HasAlbum())
        return ArticleStack();

    has_album = false;

    return ArticleStack(Article(ARTICLE_ALBUM_0 + album_id), 1);
}

ArticleStack RecordPlayer::SetAlbum(Article const & album_article)
{
    u8 old_album_id;

    switch (album_article.GetId())
    {
        case ARTICLE_ALBUM_0 ... ARTICLE_ALBUM_14:
            has_album = true;
            old_album_id = album_id;
            album_id = album_article.GetId() - ARTICLE_ALBUM_0;

            return ArticleStack(Article(old_album_id + ARTICLE_ALBUM_0), 1);

        default:
            return ArticleStack();
    }
}
