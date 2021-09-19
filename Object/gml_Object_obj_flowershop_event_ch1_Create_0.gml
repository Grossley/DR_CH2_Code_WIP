tcon = 0
image_speed = 0.05
gml_Script_scr_depth_ch1()
if (room == room_flowershop_1f_ch1)
{
    counter = gml_Script_scr_marker_ch1(20, 103, 3629)
    var _temp_local_var_1 = counter
    gml_Script_scr_depth_ch1()
}
if (null.room == room_flowershop_1f_ch1)
{
    if (global.entrance == 2)
    {
        global.interact = 0
        global.entrance = 0
        with (obj_mainchara_ch1)
            x = global.flag[264]
    }
}
if (null.room == room_flowershop_2f_ch1)
{
    visible = false
    if (global.entrance == 1)
    {
        global.entrance = 0
        global.interact = 0
        with (obj_mainchara_ch1)
            x = global.flag[264]
        if (obj_mainchara_ch1.x < 160)
            x = 255
        if (obj_mainchara_ch1.x > 160)
            x = 15
        gml_Script_instance_create_ch1(x, (y + sprite_height), 1407)
        con = -1
    }
}
