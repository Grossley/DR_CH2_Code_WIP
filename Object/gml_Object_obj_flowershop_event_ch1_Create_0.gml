tcon = 0
image_speed = 0.05
gml_Script_scr_depth_ch1()
if (room == room_flowershop_1f_ch1)
{
    counter = gml_Script_scr_marker_ch1(20, 103, 3629)
    with (counter)
        gml_Script_scr_depth_ch1()
    flowera = gml_Script_scr_marker_ch1(177, 136, 3630)
    flowerb = gml_Script_scr_marker_ch1(177, 82, 3630)
    with (flowera)
        gml_Script_scr_depth_ch1()
    with (flowerb)
        gml_Script_scr_depth_ch1()
    con = 1
    if (global.flag[262] >= 1)
    {
        gml_Script_instance_create_ch1(x, (y + sprite_height), 1407)
        visible = false
        if (global.flag[262] == 1)
            con = 50
        if (global.flag[262] >= 2)
            con = -1
    }
    if (global.flag[262] == 0)
        global.interact = 1
    image_speed = 0
}
if (room == room_flowershop_1f_ch1)
{
    if (global.entrance == 2)
    {
        global.interact = 0
        global.entrance = 0
        with (obj_mainchara_ch1)
            x = global.flag[264]
    }
}
if (room == room_flowershop_2f_ch1)
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
