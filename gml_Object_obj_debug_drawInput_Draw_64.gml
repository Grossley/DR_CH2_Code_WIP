xx = 300
yy = 465
darkgrey = make_color_rgb(40, 40, 40)
5
16777215
gml_Script_draw_text_outline(xx, (yy - 6), "[U]", 0)
16777215
gml_Script_draw_text_outline((xx - 15), yy, "[L]", 0)
16777215
gml_Script_draw_text_outline(xx, yy, "[D]", 0)
16777215
gml_Script_draw_text_outline((xx + 15), yy, "[R]", 0)
16777215
gml_Script_draw_text_outline((xx + 45), yy, gml_Script_scr_get_input_name(4), 0)
16777215
gml_Script_draw_text_outline((xx + 60), yy, gml_Script_scr_get_input_name(5), 0)
16777215
gml_Script_draw_text_outline((xx + 75), yy, gml_Script_scr_get_input_name(6), 0)
