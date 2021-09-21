if (!gml_Script_snd_is_playing_ch1(global.currentsong[1]))
{
    global.currentsong[0] = gml_Script_snd_init_ch1("mus_birdnoise.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 1)
}
dk = gml_Script_snd_loop_ch1(snd_smile_ch1)
gml_Script_snd_volume_ch1(dk, 0, 0)
gml_Script_snd_pitch_ch1(dk, 0.15)
gml_Script_scr_depth_ch1()
