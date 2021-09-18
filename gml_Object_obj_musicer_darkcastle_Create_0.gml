if (global.chapter <= 1)
{
    if (global.plot <= 30)
    {
        if (!global.currentsong[1])
        {
            global.currentsong[0] = "creepydoor.ogg"
            global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
        }
    }
    if (global.plot > 30)
    {
        global.currentsong[0] = "castletown_empty.ogg"
        global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
    }
}
if (global.chapter == 2)
{
    if (!global.currentsong[1])
    {
        if (global.plot == 8)
            global.currentsong[0] = "castletown_empty.ogg"
        if (global.plot >= 12 && global.plot < 200)
            global.currentsong[0] = "castletown.ogg"
        if (global.plot >= 200)
        {
            var mySong = "castletown.ogg"
            if global.tempflag[11]
                mySong = global.tempflag[11]
            global.currentsong[0] = mySong
        }
        if (global.plot == 8 || global.plot >= 12)
            global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
    }
}
