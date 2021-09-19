if (!paused)
    global.time += 1
else
    return;
if gml_Script_scr_debug_ch1()
{
    if gml_Script_scr_84_debug_ch1(1)
        return;
    if keyboard_check_pressed(vk_f10)
    {
        screen_name = (string(screenshot_number) + "_shot.png")
        screen_save(screen_name)
        screenshot_number += 1
    }
}
if keyboard_check(vk_escape)
{
    if (quit_timer < 0)
        quit_timer = 0
    quit_timer += 1
    if (quit_timer >= 30)
        gml_Script_ossafe_game_end_ch1()
}
else
    quit_timer -= 2
if keyboard_check_pressed(vk_f4)
    fullscreen_toggle = 1
if (fullscreen_toggle == 1)
{
    fullscreen_toggle = 0
    if window_get_fullscreen()
    {
        window_set_fullscreen(false)
        gml_Script_ossafe_ini_open_ch1("true_config.ini")
        ini_write_real("SCREEN", "FULLSCREEN", 0)
        gml_Script_ossafe_ini_close_ch1()
        gml_Script_ossafe_savedata_save_ch1()
    }
    else
    {
        window_set_fullscreen(true)
        gml_Script_ossafe_ini_open_ch1("true_config.ini")
        ini_write_real("SCREEN", "FULLSCREEN", 1)
        gml_Script_ossafe_ini_close_ch1()
        gml_Script_ossafe_savedata_save_ch1()
    }
}
if (window_center_toggle == 2)
{
    window_center()
    window_center_toggle = 0
}
if (window_center_toggle == 1)
    window_center_toggle = 2
for (i = 0; i < 10; i += 1)
{
    global.input_released[i] = 0
    global.input_pressed[i] = 0
}
if (instance_exists(obj_gamecontroller) && obj_gamecontroller.gamepad_active == 1)
{
    for (var j = 0; j < 4; j++)
    {
        if (keyboard_check(global.input_k[j]) || gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[j]) || gml_Script_scr_gamepad_axis_check_ch1(obj_gamecontroller.gamepad_id, j))
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
        if (keyboard_check(global.input_k[k]) || gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[k]))
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
        if keyboard_check(global.input_k[l])
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
