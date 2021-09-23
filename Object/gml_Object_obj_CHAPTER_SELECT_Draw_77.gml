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
    gml_Script_draw_enable_alphablend(false)
    draw_surface_ext(application_surface, xx, yy, global.window_scale, global.window_scale, 0, c_white, 1)
    gml_Script_draw_enable_alphablend(true)
    gml_Script_texture_set_interpolation(false)
}
else
{
    global.window_xofs = 0
    global.window_yofs = 0
}
