var _temp_local_var_1, _temp_local_var_4, _temp_local_var_5;
if (wall_con == 1)
{
    var _temp_local_var_1 = looping_coaster_top
    y_pos -= 20
}
if (wall_con == 3)
{
    if (v_speed < 0)
        v_speed++
    else
    {
        wall_con = 4
        var _temp_local_var_5 = looping_coaster
        y_speed = 0
    }
    var v_speed_temp = v_speed
    var _temp_local_var_4 = looping_coaster
    y_speed = v_speed_temp
    x_speed = -20
}
