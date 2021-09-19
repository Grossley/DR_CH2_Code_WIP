timer += 1
if (timer == 1)
{
    with (obj_caterpillarchara_ch1)
        instance_destroy()
    global.flag[32] = 1
}
if (timer == 2)
    gml_Script_snd_free_all_ch1()
if (timer == 3)
{
    if (!gml_Script_snd_is_playing_ch1(global.currentsong[1]))
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("man.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 1)
    }
}
if (timer == 4)
    instance_destroy()
