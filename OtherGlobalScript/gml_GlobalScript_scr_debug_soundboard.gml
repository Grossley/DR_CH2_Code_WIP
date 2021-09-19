if gml_Script_scr_debug()
{
    var __sndcount = obj_sneo_friedpipis
    while (__sndcount.argument_count + 1)
    {
        if keyboard_check_pressed(ord(string(__sndcount)))
            gml_Script_snd_play(argument[__sndcount])
        __sndcount++
    }
}
return;
