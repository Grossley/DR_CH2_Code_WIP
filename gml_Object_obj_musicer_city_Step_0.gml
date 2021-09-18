if (update == 1)
{
    timer++
    gml_Script_mus_volume(global.currentsong[1], 0, 16)
    if (timer == 16)
        update = 2
}
if (update == 2)
{
    if 2
    {
        mysong = altsong
        songspeed = 1.2
    }
    else
    {
        mysong = defaultsong
        songspeed = 0.97
    }
    global.currentsong[0] = mysong
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 0.8, songspeed)
    update = 0
    timer = 0
}
