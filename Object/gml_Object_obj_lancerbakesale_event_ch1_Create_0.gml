con = 1
npc = gml_Script_instance_create_ch1(x, y, 1408)
if (global.plot >= 80 || global.flag[238] == 1)
    con = 99
else
{
    s = gml_Script_scr_dark_marker_ch1((x + 20), (y + 60), 3548)
    with (s)
        gml_Script_scr_depth_ch1()
    l = gml_Script_scr_dark_marker_ch1((x + 60), (y + 80), 3573)
    with (l)
        gml_Script_scr_depth_ch1()
}
