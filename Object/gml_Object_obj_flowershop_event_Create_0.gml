var _temp_local_var_1;
tcon = 0
image_speed = 0.05
gml_Script_scr_depth()
if (room == room_flowershop_1f)
{
    counter = gml_Script_scr_marker(20, 103, 1054)
    var _temp_local_var_1 = counter
    gml_Script_scr_depth()
}
if (null.room == room_flowershop_1f)
{
    if (global.entrance == 2)
    {
        global.interact = 0
        global.entrance = 0
        with (obj_mainchara)
            x = global.flag[264]
    }
}
if (null.room == room_flowershop_2f)
{
    visible = false
    if (global.entrance == 1)
    {
        global.entrance = 0
        global.interact = 0
        with (obj_mainchara)
            x = global.flag[264]
        if (obj_mainchara.x < 160)
            x = 255
        if (obj_mainchara.x > 160)
            x = 15
        gml_Script_instance_create(x, (y + sprite_height), obj_npc_facing)
        con = -1
    }
}
if (global.chapter == 1)
    gml_Script_instance_create(x, (y + sprite_height), obj_npc_facing)
else if (global.chapter == 2)
{
    if (counter.room == room_flowershop_1f)
        instance_destroy()
}
else
    instance_destroy()