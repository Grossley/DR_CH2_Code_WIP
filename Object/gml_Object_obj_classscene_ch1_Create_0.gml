door = gml_Script_scr_marker_ch1(236, 26, 3479)
with (door)
    gml_Script_scr_depth_ch1()
con = 0
global.facing = 0
if (global.plot < 2)
{
    global.facing = 0
    con = 1
    with (obj_mainchara_ch1)
    {
        x = 240
        y = 30
        gml_Script_scr_depth_ch1()
    }
    alphys = gml_Script_scr_marker_ch1(50, 50, 3480)
    with (alphys)
        gml_Script_scr_depth_ch1()
    global.interact = 1
}
if (global.plot >= 3)
{
    doorb = gml_Script_instance_create_ch1(242, 48, 1417)
    with (door)
        depth = 900000
    with (obj_npc_facing_ch1)
        instance_destroy()
    with (obj_tem_school_ch1)
        instance_destroy()
    sunset = gml_Script_scr_marker_ch1(3, 0, 3466)
    with (sunset)
    {
        image_alpha = 0.4
        depth = 2000
    }
    instance_destroy()
}
