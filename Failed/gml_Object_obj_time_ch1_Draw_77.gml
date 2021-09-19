var _temp_local_var_1, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_10, _temp_local_var_11;
if (os_type == os_switch || os_type == os_ps4)
{
    var ww = window_get_width()
    var wh = window_get_height()
    var sw = surface_get_width(application_surface)
    var sh = surface_get_height(application_surface)
    var xx = floor(((ww - (sw * global.window_scale)) / 2))
    var yy = floor(((wh - (sh * global.window_scale)) / 2))
    global.window_xofs = xx
    global.window_yofs = yy
    if (os_type == os_switch && wh == 720)
        gml_Script_texture_set_interpolation(true)
    else
        gml_Script_texture_set_interpolation(false)
    if (global.screen_border_active && border_alpha >= 0)
    {
        gml_Script_scr_draw_screen_border_ch1(global.screen_border_id)
        if (border_alpha < 1)
        {
            draw_set_alpha((1 - border_alpha))
            draw_set_color(c_black)
            gml_Script_ossafe_fill_rectangle_ch1(0, 0, (ww - 1), (wh - 1))
            draw_set_alpha(1)
            draw_set_color(c_white)
        }
    }
    else
    {
        var room_id = global.currentroom
        if instance_exists(obj_savepoint_ch1)
            global.disable_border = 0
        if (room_id == PLACE_CONTACT_ch1 || room_id == 1634 || room_id == PLACE_MENU_ch1 || room_id == room_splashscreen_ch1 || room_id == room_gameover_ch1 || room_id == PLACE_DOG_ch1 || room_id == room_dark1a_ch1 || room_id == room_dark_eyepuzzle_ch1)
            global.disable_border = 1
    }
    if ((!paused) && os_is_paused())
    {
        paused = 1
        if (!sprite_exists(screenshot))
        {
            screenshot = (obj_sneo_friedpipis).application_surface
            var _temp_local_var_5 = 0
            var _temp_local_var_6 = sw
            var _temp_local_var_7 = sh
            var _temp_local_var_8 = 0
            var _temp_local_var_9 = 0
            var _temp_local_var_10 = 0
            var _temp_local_var_11 = 0
        }
        alarm[1] = 1
    }
    if (paused && (!os_is_paused()))
    {
        instance_activate_all()
        audio_resume_all()
        paused = 0
        alarm[0] = 1
    }
    gml_Script_draw_enable_alphablend(0)
    draw_surface_ext(xx.application_surface, yy, global.window_scale, global.window_scale, 0, 16777215, 0x000001, 0)
    if sprite_exists(screenshot)
        draw_sprite_ext(screenshot, 0, xx, yy, global.window_scale, global.window_scale, 0, c_white, 1)
    gml_Script_draw_enable_alphablend(1)
    gml_Script_texture_set_interpolation(false)
}
else
{
    global.window_xofs = 0
    global.window_yofs = 0
}
