#include "furniture.hh"

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

    return ArticleStack(Article(ARTICLE_ALBUM_1 + album_id), 1);
}

ArticleStack RecordPlayer::SetAlbum(Article const & album_article)
{
    u8 old_album_id;

    switch (album_article.GetId())
    {
        case ARTICLE_ALBUM_1 ... ARTICLE_ALBUM_15:
            has_album = true;
            old_album_id = album_id;
            album_id = album_article.GetId() - ARTICLE_ALBUM_1;

            return ArticleStack(Article(old_album_id + ARTICLE_ALBUM_1), 1);

        default:
            return ArticleStack();
    }
}
