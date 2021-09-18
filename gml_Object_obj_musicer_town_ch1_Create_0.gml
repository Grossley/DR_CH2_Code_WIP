if (global.plot >= 250)
{
    if (!global.currentsong[1])
    {
        global.currentsong[0] = "town.ogg"
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.8, 0.97)
    }
}
