if auto_scroll_start
{
    auto_scroll_start = 0
    with (looping_bg)
        x_speed = -2
}
if auto_scroll_stop
{
    if ((looping_bg.x_pos % 40) == 0)
    {
        auto_scroll_stop = 0
        with (looping_bg)
            x_speed = 0
    }
}
