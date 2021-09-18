if (global.plot < 30)
{
    if (!global.currentsong[1])
    {
        global.currentsong[0] = "creepydoor.ogg"
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 1)
    }
}
else if (!global.currentsong[1])
{
    global.currentsong[0] = "castletown_empty.ogg"
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 1)
}
