var _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8;
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
    gml_Script_draw_enable_alphablend(0)
    xx.application_surface
    gml_Script_draw_enable_alphablend(1)
    gml_Script_texture_set_interpolation(false)
    var _temp_local_var_3 = yy
    var _temp_local_var_4 = global.window_scale
    var _temp_local_var_5 = global.window_scale
    var _temp_local_var_6 = 0
    var _temp_local_var_7 = 16777215
    var _temp_local_var_8 = 1
}
else
{
    global.window_xofs = 0
    global.window_yofs = 0
}
