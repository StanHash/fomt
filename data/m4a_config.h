#include "prelude.h"
#include "m4a.h"

SECTION(".gMusicPlayerA")
struct MusicPlayer gMusicPlayerA = { 0 };

SECTION(".gMusicPlayerB")
struct MusicPlayer gMusicPlayerB = { 0 };

SECTION(".gMusicPlayerC")
struct MusicPlayer gMusicPlayerC = { 0 };

SECTION(".gMusicPlayerD")
struct MusicPlayer gMusicPlayerD = { 0 };

SECTION(".gMusicPlayerE")
struct MusicPlayer gMusicPlayerE = { 0 };

// defined in lds
extern char _M4aNumMusicPlayers[];
extern char _M4aMaxLines[];

#define NUM_MUSIC_PLAYERS ((u16) _M4aNumMusicPlayers)
#define MAX_LINES ((u32) _M4aMaxLines)

#define SOUND_MODE \
    (10 << SOUND_MODE_MAXCHN_SHIFT) | \
    (11 << SOUND_MODE_MASVOL_SHIFT) | \
    SOUND_MODE_FREQ_13379 | SOUND_MODE_DA_BIT_8
