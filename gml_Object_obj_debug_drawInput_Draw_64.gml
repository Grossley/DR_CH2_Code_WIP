if gml_Script_scr_debug()
{
    xx = 300
    yy = 465
    darkgrey = make_color_rgb(40, 40, 40)
    draw_set_font(fnt_small)
    if gml_Script_up_h()
        draw_set_color(c_white)
    else
        draw_set_color(darkgrey)
    gml_Script_draw_text_outline(xx, (yy - 6), "[U]", 0)
    if gml_Script_left_h()
        draw_set_color(c_white)
    else
        draw_set_color(darkgrey)
    gml_Script_draw_text_outline((xx - 15), yy, "[L]", 0)
    if gml_Script_down_h()
        draw_set_color(c_white)
    else
        draw_set_color(darkgrey)
    gml_Script_draw_text_outline(xx, yy, "[D]", 0)
    if gml_Script_right_h()
        draw_set_color(c_white)
    else
        draw_set_color(darkgrey)
    gml_Script_draw_text_outline((xx + 15), yy, "[R]", 0)
    if gml_Script_button1_h()
        draw_set_color(c_white)
    else
        draw_set_color(darkgrey)
    gml_Script_draw_text_outline((xx + 45), yy, gml_Script_scr_get_input_name(4), 0)
    if gml_Script_button2_h()
        draw_set_color(c_white)
    else
        draw_set_color(darkgrey)
    gml_Script_draw_text_outline((xx + 60), yy, gml_Script_scr_get_input_name(5), 0)
    if gml_Script_button3_h()
        draw_set_color(c_white)
    else
        draw_set_color(darkgrey)
    gml_Script_draw_text_outline((xx + 75), yy, gml_Script_scr_get_input_name(6), 0)
}
