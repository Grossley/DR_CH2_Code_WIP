if (!gml_Script_snd_is_playing_ch1(global.currentsong[1]))
{
    global.currentsong[0] = gml_Script_snd_init_ch1("quiet_autumn.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.7, 1)
}
