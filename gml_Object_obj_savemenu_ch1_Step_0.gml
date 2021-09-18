buffer -= 1
if (coord == 2 && buffer < 0)
{
    coord = 99
    endme = 1
}
if (coord < 2)
{
    if 1
    {
        if (coord == 1)
            coord = 0
        else
            coord = 1
    }
}
if (coord == 0 && buffer < 0)
{
    490
    gml_Script_scr_save_ch1
    coord = 2
    buffer = 3
    if (d == 2)
    {
        name = global.truename
        love = global.llv
    }
    room
    level = global.lv
    time = global.time
    minutes = (time / 1800)
    seconds = (((time / 1800) - minutes) * 60)
    if (seconds == 60)
        seconds = 59
    if (seconds < 10)
        seconds = ("0" + string(seconds))
}
if (coord == 1 && buffer < 0)
    endme = 1
if (buffer < 0)
    endme = 1
if (endme == 1)
{
    global.interact = 0
    with (obj_mainchara_ch1)
        onebuffer = 3
    // WARNING: Popz'd an empty stack.
}
