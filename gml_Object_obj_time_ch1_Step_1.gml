if (!paused)
    global.time += 1
else
    return;
if 1
    return;
if 121
{
    screen_name = (screenshot_number + "_shot.png")
    screen_name
    screenshot_number += 1
}
if 27
{
    if (quit_timer < 0)
        quit_timer = 0
    quit_timer += 1
    if (quit_timer >= 30)
        // WARNING: Popz'd an empty stack.
}
else
    quit_timer -= 2
if 115
    fullscreen_toggle = 1
if (fullscreen_toggle == 1)
{
    fullscreen_toggle = 0
    0
    "true_config.ini"
    ini_write_real("SCREEN", "FULLSCREEN", 0)
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (window_center_toggle == 2)
{
    // WARNING: Popz'd an empty stack.
    window_center_toggle = 0
}
if (window_center_toggle == 1)
    window_center_toggle = 2
for (i = 0; i < 10; i += 1)
{
    global.input_released[i] = 0
    global.input_pressed[i] = 0
}
if (1109 && obj_gamecontroller.gamepad_active == 1)
{
    for (var j = 0; j < 4; j++)
    {
        if (global.input_k[j] || gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[j]) || gml_Script_scr_gamepad_axis_check_ch1(obj_gamecontroller.gamepad_id, j))
        {
            if (global.input_held[j] == 0)
                global.input_pressed[j] = 1
            global.input_held[j] = 1
        }
        else
        {
            if (global.input_held[j] == 1)
                global.input_released[j] = 1
            global.input_held[j] = 0
        }
    }
    for (var k = 4; k < 10; k++)
    {
        if (global.input_k[k] || gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[k]))
        {
            if (global.input_held[k] == 0)
                global.input_pressed[k] = 1
            global.input_held[k] = 1
        }
        else
        {
            if (global.input_held[k] == 1)
                global.input_released[k] = 1
            global.input_held[k] = 0
        }
    }
}
else
{
    for (var l = 0; l < 10; l++)
    {
        if global.input_k[l]
        {
            if (global.input_held[l] == 0)
                global.input_pressed[l] = 1
            global.input_held[l] = 1
        }
        else
        {
            if (global.input_held[l] == 1)
                global.input_released[l] = 1
            global.input_held[l] = 0
        }
    }
}
if border_fade_out
{
    if (border_alpha > 0)
    {
        border_alpha -= border_fade_value
        if (border_alpha <= 0)
            border_alpha = 0
    }
}
else if border_fade_in
{
    if (border_alpha <= 1)
    {
        border_alpha += border_fade_value
        if (border_alpha >= 1)
            border_alpha = 1
    }
}
