var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_10, _temp_local_var_11, _temp_local_var_12, _temp_local_var_17;
gml_Script_scr_84_set_draw_font_ch1("mainbig")
draw_set_valign(fa_bottom)
if (!visit_shop)
{
    if (global.lang == "en")
    {
        draw_set_valign(fa_middle)
        draw_set_halign(fa_center)
        draw_set_color(c_white)
        ((yy + 160) + (xx.room_width * 0.5))
        draw_text_color(((yy + 240) + (xx.room_width * 0.5)), string_hash_to_newline(check_text_en), 16777215, c_white, c_white, c_white, text_alpha_b, string_hash_to_newline(played_text_en))
        draw_set_valign(fa_top)
        draw_set_halign(fa_left)
        draw_sprite_ext(spr_heart_ch1, 0, (xx + 170), heart_pos_y, 1, 1, 0, c_white, text_alpha_b)
        var _colorA = c_white
        var _temp_local_var_1 = 16777215
        var _temp_local_var_2 = 16777215
        var _temp_local_var_3 = 16777215
        var _temp_local_var_4 = 16777215
        var _temp_local_var_5 = text_alpha_a
        if (heart_pos_y == (yy + 288))
            _colorA = (selected ? c_red : c_aqua)
        draw_set_color(_colorA)
        draw_text_color((xx + 220), (yy + 280), check_undertale, _colorA, _colorA, _colorA, _colorA, text_alpha_b)
        var _colorB = c_white
        if (heart_pos_y == ((yy + 288) + line_height))
            _colorB = (selected ? c_red : c_aqua)
        draw_set_color(_colorB)
        draw_text_color((xx + 220), ((yy + 280) + line_height), start_dr, _colorB, _colorB, _colorB, _colorB, text_alpha_b)
    }
    else
    {
        draw_set_valign(fa_middle)
        draw_set_halign(fa_center)
        draw_set_color(c_white)
        ((yy + 125) + (xx.room_width * 0.5))
        draw_text_color((((yy + 125) + line_height_ja) + (xx.room_width * 0.5)), played_text_ja_2, 16777215, c_white, c_white, c_white, text_alpha_a, played_text_ja_1)
        draw_text_color(((yy + 225) + (xx.room_width * 0.5)), check_text_ja_1, 16777215, c_white, c_white, c_white, text_alpha_b, 16777215)
        draw_text_color((((yy + 225) + line_height_ja) + (xx.room_width * 0.5)), check_text_ja_2, 16777215, c_white, c_white, c_white, text_alpha_b, 16777215)
        draw_set_valign(fa_top)
        draw_set_halign(fa_left)
        draw_sprite_ext(spr_heart_ch1, 0, (xx + 170), heart_pos_y_ja, 1, 1, 0, c_white, text_alpha_b)
        _colorA = c_white
        var _temp_local_var_10 = 16777215
        var _temp_local_var_11 = 16777215
        var _temp_local_var_12 = text_alpha_a
        if (heart_pos_y_ja == (yy + 328))
            _colorA = (selected ? 255 : 16776960)
        draw_set_color(_colorA)
        draw_text_color((xx + 189), (yy + 318), check_undertale, _colorA, _colorA, _colorA, _colorA, text_alpha_b)
        _colorB = c_white
        if (heart_pos_y_ja == ((yy + 328) + select_padding))
            _colorB = (selected ? 255 : 16776960)
        draw_set_color(_colorB)
        draw_text_color((xx + 189), ((yy + 318) + select_padding), start_dr, _colorB, _colorB, _colorB, _colorB, text_alpha_b)
    }
}
else
{
    draw_set_valign(fa_middle)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    if (global.lang == "en")
    {
        ((yy + 220) + (xx.room_width * 0.5))
        var _temp_local_var_17 = ((string_hash_to_newline("Visit the UNDERTALE page#in the ") + shop_text) + "?")
    }
    else
    {
        ((yy + 220) + (xx.room_width * 0.5))
        _temp_local_var_17 = (shop_text + string_hash_to_newline("で「UNDERTALE」の#ページをチェックしますか？ "))
    }
    draw_sprite(spr_heart_ch1, 0, heart_pos_x, (yy + 271))
    for (var i = 0; i < array_length_1d(shop_options); i++)
    {
        draw_set_color(c_white)
        var _xPos = (heart_pos_x_default + (i * heart_pos_x_h_padding))
        if (heart_pos_x == _xPos)
            draw_set_color(c_aqua)
        draw_text(((xx + 240) + (i * 150)), (yy + 280), shop_options[i])
    }
    draw_set_halign(fa_left)
}
