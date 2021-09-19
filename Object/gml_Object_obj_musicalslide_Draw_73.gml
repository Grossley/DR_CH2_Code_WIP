if fadingOut
{
    var _fadeAmt = gml_Script_ease_out_quad(fadeToWhite, 0, 1, 1)
    draw_set_color(c_white)
    draw_set_alpha(_fadeAmt)
    -20
    draw_set_alpha(1)
    var _temp_local_var_1 = -20
    var _temp_local_var_2 = (((obj_sneo_friedpipis).room_height + 20).room_width + 20)
}
