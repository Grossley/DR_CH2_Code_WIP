x = obj_thrash_zap_controller.x
y = obj_thrash_zap_controller.y
gml_Script_texture_set_interpolation(true)
draw_sprite_ext(spr_aura_zap, image_index, x, y, (dis / 300), image_yscale, dir, image_blend, random(1))
gml_Script_draw_set_blend_mode(1)
draw_sprite_ext(spr_aura_zap, (image_index * 2), x, y, (dis / 300), (image_yscale * 2), dir, tint, random(1))
gml_Script_texture_set_interpolation(false)
gml_Script_draw_set_blend_mode(0)
