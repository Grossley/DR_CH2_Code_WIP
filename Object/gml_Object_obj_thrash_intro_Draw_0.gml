draw_self()
gml_Script_draw_set_blend_mode(0)
gml_Script_draw_sprite_ext_glow(headsprite, image_index, x, y, image_xscale, image_yscale, 0, 16777215, image_alpha, 16777215)
gml_Script_draw_set_blend_mode(1)
gml_Script_draw_sprite_ext_glow(headsprite, image_index, x, y, image_xscale, image_yscale, 0, headcolor, image_alpha, 16777215)
gml_Script_draw_set_blend_mode(0)