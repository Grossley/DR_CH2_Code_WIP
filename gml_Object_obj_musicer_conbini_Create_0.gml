if (!gml_Script_snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = gml_Script_snd_init("muscle.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
}
