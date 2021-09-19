quit_timer = 0
keyboard_active = 1
axis_value = 0.4
fullscreen_toggle = 0
window_center_toggle = 0
screenshot_number = 0
border_fade_out = 0
border_fade_in = 0
border_alpha = 1
border_fade_value = 0.025
loaded = 0
paused = 0
pausing = 0
screenshot = -1
if (instance_number(obj_time_ch1) > 1)
    instance_destroy()
else
{
    display_height = display_get_height()
    display_width = display_get_width()
    window_size_multiplier = 1
    for (_ww = 2; _ww < 6; _ww += 1)
    {
        if (display_width > (640 * _ww) && display_height > (480 * _ww))
            window_size_multiplier = _ww
    }
    if (window_size_multiplier > 1)
    {
        window_set_size((640 * window_size_multiplier), (480 * window_size_multiplier))
        window_center_toggle = 1
    }
    if (os_type == os_switch)
    {
        switch_controller_support_set_defaults()
        switch_controller_support_set_singleplayer_only(1)
        switch_controller_set_supported_styles(7)
    }
    gml_Script_scr_controls_default_ch1()
    gml_Script_scr_ascii_input_names_ch1()
    for (i = 0; i < 10; i += 1)
    {
        global.input_pressed[i] = 0
        global.input_held[i] = 0
        global.input_released[i] = 0
    }
    if global.is_console
    {
        application_surface_enable(true)
        application_surface_draw_enable(false)
    }
    gml_Script_scr_enable_screen_border_ch1(global.is_console)
}
