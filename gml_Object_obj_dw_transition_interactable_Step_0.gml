var _temp_local_var_1, _temp_local_var_2;
if (talking == 2)
{
    global.interact = 0
    talking = 0
    myinteract = 0
    global.facing = 0
}
if (con == 1)
{
    with (obj_mainchara)
    {
        cutscene = true
        idealx = 300
        if 2
            idealx = 285
        gml_Script_scr_move_to_point_over_time(idealx, 100, 6)
    }
    if 274
    {
        su_actor = gml_Script_scr_marker(obj_caterpillarchara.x, obj_caterpillarchara.y, 978)
        var _temp_local_var_1 = su_actor
        image_speed = 0.25
        gml_Script_scr_move_to_point_over_time(313, 86, 6)
    }
    gml_Script_scr_pan_lerp(151, 0, 6)
    con = 2
    alarm[4] = 7
}
if (con == 3)
{
    with (obj_mainchara)
        visible = false
    gml_Script_instance_create(x, y, obj_dw_transition)
    if 2
        var _temp_local_var_2 = su_actor
    with (obj_dw_transition)
    {
        quick_mode = 1
        if (!2)
        {
            kris_x = obj_mainchara.x
            kris_y = obj_mainchara.y
            kris_only = 1
        }
    }
    con = 4
}
