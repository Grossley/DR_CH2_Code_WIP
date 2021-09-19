if (global.chapter == 1)
{
    if (global.plot >= 250)
    {
        if (!gml_Script_snd_is_playing(global.currentsong[1]))
        {
            global.currentsong[0] = gml_Script_snd_init("town.ogg")
            global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 0.8, 0.97)
        }
    }
}
if (global.chapter == 2)
{
    if (global.plot >= 10 && global.plot != 200)
    {
        if (!gml_Script_snd_is_playing(global.currentsong[1]))
        {
            if (global.plot >= 17 && global.plot <= 25)
                global.currentsong[0] = gml_Script_snd_init("honksong.ogg")
            else
                global.currentsong[0] = gml_Script_snd_init("town.ogg")
            global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 0.97)
        }
    }
}
