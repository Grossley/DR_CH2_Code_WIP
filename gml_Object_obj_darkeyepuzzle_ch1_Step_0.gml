var _temp_local_var_3;
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
        glass = gml_Script_scr_dark_marker_ch1((960 + (i * 40)), 320, 4187)
        glass.depth = 950000
        glass = gml_Script_scr_dark_marker_ch1((960 + (i * 40)), 360, 4187)
        glass.depth = 950000
    }
    var _temp_local_var_3 = block
}
if (con == 5)
{
    global.flag[201] = 1
    global.interact = 0
    con = 6
}
