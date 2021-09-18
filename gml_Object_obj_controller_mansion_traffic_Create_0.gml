carGen = 0
depth = 5102
visible = true
victory = false
con = 0
timer = 0
hitcount = 0
layer_set_visible("HIDDEN_PATH", 0)
layer_set_visible("TRAFFIC_JAM", 0)
if (global.flag[370] == 1)
{
    with (obj_mansion_art_frame)
    {
        if (image_index == 0)
            image_index = 3
    }
    if 1228
    {
        with (obj_traffic_road_trigger)
        {
            x = (room_width * 2)
            y = (room_height * 2)
        }
    }
    with (obj_traffic_car_generator)
        // WARNING: Popz'd an empty stack.
    with (obj_mouseTrigger)
        // WARNING: Popz'd an empty stack.
    with (obj_traffic_switch)
        // WARNING: Popz'd an empty stack.
    with (obj_cybercity_bg_sign)
        // WARNING: Popz'd an empty stack.
    layer_set_visible("HIDDEN_PATH", 1)
    layer_set_visible("TRAFFIC_JAM", 1)
    layer_set_visible("SPRITES_Alcoves_2", 0)
    // WARNING: Popz'd an empty stack.
}
else
{
    with (obj_mansion_stanchion)
        // WARNING: Popz'd an empty stack.
}
