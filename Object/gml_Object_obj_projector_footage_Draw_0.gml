draw_set_color(c_black)
draw_set_alpha(0.75)
-10
draw_set_color(c_white)
draw_set_alpha(1)
siner++
desAlpha = (0.85 + (sin((siner / 4)) * 0.05))
draw_sprite_ext(spr_projector_footage, image_index, x, y, 2, 2, 0, c_white, desAlpha)
draw_sprite_ext(spr_projectorBeam, 0, x, (y - 240), 2, 2, 0, c_white, (desAlpha * 0.25))
var _temp_local_var_1 = -10
var _temp_local_var_2 = (((obj_sneo_friedpipis).room_height + 10).room_width + 10)
