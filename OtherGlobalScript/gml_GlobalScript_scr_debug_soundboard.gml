if gml_Script_scr_debug()
{
    for (var __sndcount = 0; __sndcount < (argument_count + 1); __sndcount++)
    {
        if keyboard_check_pressed(ord(string(__sndcount)))
            gml_Script_snd_play(argument[__sndcount])
    }
}
return;
