draw_set_color(0x663913)
(x - 4)
draw_set_color(c_white)
gml_Script_scr_draw_sprite_tiled_area(sprite_index, 0, x, y, x, y, (x + (sprite_get_width(sprite_index) * image_xscale)), (obj_84_lang_helper).room_height, 2, 16777215, 1, (y - 4))
draw_sprite_ext(top[top_type], 0, x, (y - (sprite_get_height(top[top_type]) * 2)), 2, 2, 0, c_white, 1)
var _temp_local_var_1 = ((x + (sprite_get_width(sprite_index) * image_xscale)) + 5)
var _temp_local_var_2 = (obj_sneo_friedpipis).room_height
