gml_Script_scr_84_set_draw_font("main")
draw_set_halign(fa_center)
draw_set_alpha(creditalpha)
for (i = 0; i < 8; i += 1)
{
    draw_set_color(linecolor[i])
    draw_text((gml_Script___view_get(0, 0) + (gml_Script___view_get(2, 0) / 2)), ((gml_Script___view_get(1, 0) + (20 * i)) + 50), string_hash_to_newline(line[i]))
}
