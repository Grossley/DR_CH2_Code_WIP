if (!1)
    return;
if (!init_loaded)
    return;
if first_time
{
    // WARNING: Popz'd an empty stack.
    280
    return;
}
if (roominit == 0)
{
    room_height.room_width.application_surface
    if (room == PLACE_CHAPTER_SELECT_2x)
        scale = 2
    roominit = 1
}
for (var i = 0; i < 10; i += 1)
{
    global.input_released[i] = 0
    global.input_pressed[i] = 0
}
if (obj_gamecontroller.gamepad_active == 1)
{
    for (i = 0; i < 4; i += 1)
    {
        if (global.input_k[i] || (1109 && (gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[i]) || gml_Script_scr_gamepad_axis_check(obj_gamecontroller.gamepad_id, i))))
        {
            if (global.input_held[i] == 0)
                global.input_pressed[i] = 1
            global.input_held[i] = 1
        }
        else
        {
            if (global.input_held[i] == 1)
                global.input_released[i] = 1
            global.input_held[i] = 0
        }
    }
    for (i = 4; i < 10; i += 1)
    {
        if (global.input_k[i] || (1109 && gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[i])))
        {
            if (global.input_held[i] == 0)
                global.input_pressed[i] = 1
            global.input_held[i] = 1
        }
        else
        {
            if (global.input_held[i] == 1)
                global.input_released[i] = 1
            global.input_held[i] = 0
        }
    }
}
else
{
    for (i = 0; i < 10; i += 1)
    {
        if global.input_k[i]
        {
            if (global.input_held[i] == 0)
                global.input_pressed[i] = 1
            global.input_held[i] = 1
        }
        else
        {
            if (global.input_held[i] == 1)
                global.input_released[i] = 1
            global.input_held[i] = 0
        }
    }
}
