if (room == room_dw_mansion_dininghall)
{
    if (gml_Script_scr_sideb_get_phase() == 3)
    {
        x = (room_width * 2)
        y = (room_height * 2)
        instance_destroy()
    }
}
init = 0
inside = 0
ignorebuffer = -1
checkid = id
event_user(0)
if (!instance_exists(obj_camera_advanced))
{
    advancedcamera = gml_Script_instance_create(0, 0, obj_camera_advanced)
    event_user(0)
    event_user(1)
    var _temp_local_var_1 = advancedcamera
    event_user(1)
}
