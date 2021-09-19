if (!audio_group_is_loaded(1))
    return;
if (!init_loaded)
    return;
if first_time
{
    audio_stop_all()
    room_goto(ROOM_INITIALIZE_ch1)
    return;
}
if (roominit == 0)
{
    surface_resize(application_surface, room_width, room_height)
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
        if (keyboard_check(global.input_k[i]) || (gml_Script_i_ex(1109) && (gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[i]) || gml_Script_scr_gamepad_axis_check(obj_gamecontroller.gamepad_id, i))))
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
        if (keyboard_check(global.input_k[i]) || (instance_exists(obj_gamecontroller) && gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[i])))
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
        if keyboard_check(global.input_k[i])
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
