var _temp_local_var_1, _temp_local_var_2, _temp_local_var_23;
if (con == 1)
{
    global.facing = 2
    s = gml_Script_scr_dark_marker_ch1(340, 1000, 3550)
    r = gml_Script_scr_dark_marker_ch1(260, 1008, 3566)
    l = gml_Script_scr_dark_marker_ch1(280, 740, 3576)
    with (obj_marker_ch1)
        // WARNING: Popz'd an empty stack.
    con = 2
    global.interact = 1
    alarm[4] = 30
}
if (con == 2)
    global.interact = 1
if (con == 3)
{
    global.fc = 1
    global.fe = 9
    global.typer = 30
    global.msg[0] = "obj_castlefront_event_slash_Step_0_gml_24_0"
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 4
}
if (con == 4)
{
}
else
    var _temp_local_var_23 = 0
var _temp_local_var_1 = l
sprite_index = spr_lancer_dt_unhappy_ch1
vspeed = -3
