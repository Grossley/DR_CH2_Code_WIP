global.flag[31] = 1
if (!gml_Script_snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = gml_Script_snd_init("field_of_hopes.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 0.7, 1)
    if (global.flag[209] == 0)
    {
        global.flag[209] = 1
        gml_Script_instance_create(0, 0, obj_fieldmuslogo)
    }
}
