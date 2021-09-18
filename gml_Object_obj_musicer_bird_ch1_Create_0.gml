if (room == room_field_start_ch1 || room == room_field_forest_ch1)
    global.flag[31] = 0
if (!global.currentsong[1])
{
    global.currentsong[0] = "bird.ogg"
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 1)
}
image_index = 1
image_speed = 0
visible = true
if (room != room_field_start_ch1)
{
    visible = false
    // WARNING: Popz'd an empty stack.
}
