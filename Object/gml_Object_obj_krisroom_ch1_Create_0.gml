if (global.plot <= 10)
    gml_Script_snd_free_all_ch1()
con = 0
image_speed = 0
wallwindow = gml_Script_scr_marker_ch1(140, 40, 3449)
with (wallwindow)
    gml_Script_scr_depth_ch1()
if (global.plot > 0)
{
    gml_Script_scr_depth_ch1()
    with (wallwindow)
        image_index = 1
    image_index = 1
}
else
{
    gml_Script_scr_windowcaption_ch1(gml_Script_scr_84_get_lang_string_ch1("obj_krisroom_slash_Create_0_gml_14_0"))
    t = gml_Script_scr_marker_ch1(151, 97, 3463)
    with (t)
    {
        gml_Script_scr_depth_ch1()
        image_speed = 0.25
    }
    global.msc = 0
    global.typer = 7
    global.fc = 4
    global.fe = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_krisroom_slash_Create_0_gml_21_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_krisroom_slash_Create_0_gml_22_0")
    d = gml_Script_instance_create_ch1(0, 0, 1326)
    con = 1
    global.interact = 1
    global.facing = 3
}
