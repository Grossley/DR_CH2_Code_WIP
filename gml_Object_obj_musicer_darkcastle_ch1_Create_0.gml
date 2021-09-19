if (global.plot < 30)
{
    if (!gml_Script_snd_is_playing_ch1(global.currentsong[1]))
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("creepydoor.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 1)
    }
}
else if (!gml_Script_snd_is_playing_ch1(global.currentsong[1]))
{
    global.currentsong[0] = gml_Script_snd_init_ch1("castletown_empty.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 1)
}
