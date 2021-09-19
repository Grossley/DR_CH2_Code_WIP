image_speed = 0
boxfinished = 0
con = 0
if (room == room_cc_rurus1_ch1 || room == room_cc_rurus2_ch1)
{
    spike[0] = gml_Script_scr_dark_marker_ch1(80, 240, 3607)
    spike[1] = gml_Script_scr_dark_marker_ch1(80, 280, 3607)
    spike[2] = gml_Script_scr_dark_marker_ch1(920, 200, 3607)
    spike[3] = gml_Script_scr_dark_marker_ch1(920, 240, 3607)
    for (i = 0; i < 4; i += 1)
    {
        spike[i].depth = 900000
        spike[i].image_index = 1
    }
    if (room == room_cc_rurus1_ch1)
    {
        floorwall = gml_Script_instance_create_ch1(280, 240, 1656)
        floorwall.image_xscale = 2
    }
    if (room == room_cc_rurus2_ch1)
    {
        floorwall = gml_Script_instance_create_ch1(260, 240, 1656)
        floorwall.image_xscale = 3
    }
    if (room == room_cc_rurus1_ch1)
    {
        if (global.flag[217] == 1)
        {
            gml_Script_instance_create_ch1(280, 160, 1408)
            instance_destroy()
        }
        else
        {
            flashobj = gml_Script_scr_dark_marker_ch1(520, 260, 4229)
            var _temp_local_var_3 = flashobj
            image_speed = 0.1
            depth = 90000
        }
    }
    if (room == room_cc_rurus2_ch1)
    {
        if (global.flag[218] == 1)
        {
            gml_Script_instance_create_ch1(280, 160, 1408)
            instance_destroy()
        }
        else
        {
            flashobj = gml_Script_scr_dark_marker_ch1(520, 260, 4229)
            var _temp_local_var_2 = flashobj
            image_speed = 0.1
            depth = 90000
        }
    }
    visible = false
}
