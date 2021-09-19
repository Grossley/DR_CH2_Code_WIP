var _temp_local_var_1, _temp_local_var_2;
if auto_scroll_start
{
    auto_scroll_start = 0
    var _temp_local_var_1 = looping_bg
    x_speed = -2
}
if auto_scroll_stop
{
    if ((looping_bg.x_pos % 40) == 0)
    {
        auto_scroll_stop = 0
        var _temp_local_var_2 = looping_bg
        x_speed = 0
    }
}
