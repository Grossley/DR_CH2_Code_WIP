if gml_Script_scr_debug()
{
    if (keyboard_check_pressed(ord("G")) && (!keyboard_check(vk_control)) && gif_recording == 0)
    {
        gif_recording = 1
        gif_timer = 0
        gif_date = ((((((((((string(date_get_year(date_current_datetime())) + "_") + string(date_get_month(date_current_datetime()))) + "_") + string(date_get_day(date_current_datetime()))) + "_") + string(date_get_hour(date_current_datetime()))) + "_") + string(date_get_minute(date_current_datetime()))) + "_") + string(date_get_second(date_current_datetime())))
    }
    if gif_recording
    {
        var gif_release = 0
        if keyboard_check_released(ord("G"))
            gif_release = 1
        if (gif_timer == 0)
            gif_image = gif_open(640, 480)
        else if (gif_timer < 600 && gif_release == 0)
        {
            if keyboard_check(vk_shift)
            {
                gif_image
                var _temp_local_var_3 = (obj_gigaqueen_intro_fight).application_surface
            }
            else
            {
                gif_image
                _temp_local_var_3 = (3.3333333333333335).application_surface
            }
        }
        else
        {
            gif_save(gif_image, (("game_" + gif_date) + ".gif"))
            gif_timer = 0
            gif_recording = 0
        }
        gif_timer++
    }
}
