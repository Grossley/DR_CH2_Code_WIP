global.flag[917] = 2
if gml_Script_i_ex(obj_caterpillarchara)
{
    with (obj_caterpillarchara)
        instance_destroy()
}
gml_Script_snd_free_all()
if (!gml_Script_snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = gml_Script_snd_init("man.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
}
