draw_set_color(image_blend)
draw_set_alpha(image_alpha)
gml_Script_scr_84_set_draw_font_ch1("main")
draw_text(x, y, string_hash_to_newline(msg))
draw_set_alpha(1)
image_alpha -= 0.1
if (image_alpha < 0)
    instance_destroy()
if (global.interact != 5)
    instance_destroy()
