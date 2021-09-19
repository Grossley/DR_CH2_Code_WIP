draw_sprite_tiled_ext(spr_cyber_coaster_bg_cityscape, 0, gml_Script_camerax(), y, 1, 1, c_white, 1)
draw_rectangle_color(gml_Script_camerax(), (gml_Script_cameray() + 160), (gml_Script_camerax() + view_wport[0]), (gml_Script_cameray() + view_hport[0]), c_black, c_black, c_black, c_black, 0)
draw_set_color(c_navy)
i = 0
while (i < 7)
{
    ly = lerp(160, 250, ((i * i) / 100))
    -10
    i++
    var _temp_local_var_1 = ly
    var _temp_local_var_2 = (ly.room_width + 10)
    var _temp_local_var_3 = (4 - (i / 3))
}
drawx = ((gml_Script_camerax() + cx) - (gml_Script_cameray() / factor))
animsiner++
draw_sprite_ext(spr_castle_fountain, (animsiner / 10), (drawx - 25), y, 2, 2, 1, c_white, 1)
draw_sprite_ext(spr_queenmansion_bg_base, image_index, drawx, y, image_xscale, image_yscale, 0, c_white, 1)
draw_sprite_ext(spr_queenmansion_bg_middle, image_index, drawx, y, image_xscale, image_yscale, 0, c_white, 1)
draw_sprite_ext(sprite_index, image_index, drawx, y, image_xscale, image_yscale, 0, c_white, 1)
draw_triangle_colour((drawx - 3), (y + 160), (520 + cx), (y + 240), (720 + cx), (y + 240), bred, 255, 255, 0)
