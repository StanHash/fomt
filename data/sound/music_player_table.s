    .include "six/asm/prelude.s"
    .include "six/asm/macros.s"
    .include "asm/m4a.s"

    .equiv NUM_TRACKS, 8

    .macro def_music_player_track name:req
    bss \name .section=.sbss
    .space MusicPlayerTrack_size * NUM_TRACKS
    endb
    .endm

    def_music_player_track gMusicPlayerTrackA
    def_music_player_track gMusicPlayerTrackB
    def_music_player_track gMusicPlayerTrackC
    def_music_player_track gMusicPlayerTrackD
    def_music_player_track gMusicPlayerTrackE

    .purgem def_music_player_track

    rodata gMusicPlayerTable global

    music_player gMusicPlayerA, gMusicPlayerTrackA, NUM_TRACKS, 0
    music_player gMusicPlayerB, gMusicPlayerTrackB, NUM_TRACKS, 0
    music_player gMusicPlayerC, gMusicPlayerTrackC, NUM_TRACKS, 0
    music_player gMusicPlayerD, gMusicPlayerTrackD, NUM_TRACKS, 0
    music_player gMusicPlayerE, gMusicPlayerTrackE, NUM_TRACKS, 0

    endr
