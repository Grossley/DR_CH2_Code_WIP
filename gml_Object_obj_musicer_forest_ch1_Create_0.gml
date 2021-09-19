doit = 1
if (global.plot < 70 && room == room_forest_area1_ch1)
    doit = 0
if (doit == 1)
{
    if (!gml_Script_snd_is_playing_ch1(global.currentsong[1]))
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("forest.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.7, 1)
    }
}
