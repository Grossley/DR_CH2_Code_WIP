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
        glass = gml_Script_scr_dark_marker_ch1((960 + (i * 40)), 320, 4188)
        glass.depth = 950000
        glass = gml_Script_scr_dark_marker_ch1((960 + (i * 40)), 360, 4188)
        glass.depth = 950000
    }
    with (block)
        instance_destroy()
    gml_Script_snd_play_ch1(378)
    gml_Script_instance_create_ch1(0, 0, 1464)
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
