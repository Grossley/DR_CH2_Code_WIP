if (eye[0] == 1 && eye[1] == 1 && eye[2] == 1)
{
    if (con == 0 && global.interact == 0)
    {
        global.interact = 1
        con = 2
        alarm[4] = 30
    }
}
if (con == 3)
{
    con = 4
    for (i = 0; i < 3; i += 1)
    {
        glass = scr_dark_marker_ch1((960 + (i * 40)), 320, spr_magicalglass_ch1)
        glass.depth = 950000
        glass = scr_dark_marker_ch1((960 + (i * 40)), 360, spr_magicalglass_ch1)
        glass.depth = 950000
    }
    with (block)
        instance_destroy()
    snd_play_ch1(snd_impact_ch1)
    instance_create_ch1(0, 0, obj_shake_ch1)
    global.facing = 1
    alarm[4] = 30
    for (i = 0; i < 3; i += 1)
    {
        with (shine[i])
            instance_destroy()
    }
    with (obj_darkeyepuzzle_switch_ch1)
        instance_destroy()
}
if (con == 5)
{
    global.flag[201] = 1
    global.interact = 0
    con = 6
}
