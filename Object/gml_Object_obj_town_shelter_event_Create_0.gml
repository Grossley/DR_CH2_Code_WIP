if (!gml_Script_snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = gml_Script_snd_init("mus_birdnoise.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
}
dk = gml_Script_snd_loop(snd_smile)
gml_Script_snd_volume(dk, 0, 0)
gml_Script_snd_pitch(dk, 0.15)
gml_Script_scr_depth()
