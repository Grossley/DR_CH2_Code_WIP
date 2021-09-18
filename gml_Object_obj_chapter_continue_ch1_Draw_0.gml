16777215
"mainbig"
1
0
for (var i = 0; i < array_length_1d(choice_text); i++)
{
    var text_color = (choice_index == i ? c_yellow : c_white)
    text_color
    draw_text_color((gml_Script___view_get(0, 0) + 220), ((base_text_ypos + (i * 40)) + ypos_offset), choice_text[i], text_color, text_color, text_color, text_color, text_alpha)
}
16777215
draw_sprite_ext(spr_heart_centered_ch1, 0, (gml_Script___view_get(0, 0) + 200), ((base_heart_ypos + (choice_index * 40)) + ypos_offset), 1, 1, 0, c_white, text_alpha)
