if is_active
{
    gml_Script_scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_buildings, 0, layer_x_pos, layer_y_pos, layer_x_pos, layer_y_pos, (layer_x_pos + room_width), (layer_y_pos + cityscape_height), 1, 1, c_white, true)
    gml_Script_scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_buildings, 0, layer_x_pos, (layer_y_pos + 8), layer_x_pos, (layer_y_pos + 8), (layer_x_pos + room_width), ((layer_y_pos + 8) + cityscape_height), 1, 1, dark_blend, true)
    siner++
    draw_set_alpha(1)
    gml_Script_draw_set_blend_mode(1)
    gml_Script_scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_buildings_lights, 0, layer_x_pos, (layer_y_pos + 8), layer_x_pos, (layer_y_pos + 8), (layer_x_pos + room_width), ((layer_y_pos + 8) + lights_height), 1, 1, c_white, (0.5 + (sin((siner / 12)) * 0.1)))
    gml_Script_draw_set_blend_mode(0)
    gml_Script_scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_ground, 0, layer_x_pos, layer_y_pos, layer_x_pos, layer_y_pos, (layer_x_pos + room_width), (layer_y_pos + ground_height), 1, 1, c_white, true)
    gml_Script_scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_ground, 0, layer_x_pos, (layer_y_pos + 8), layer_x_pos, (layer_y_pos + 8), (layer_x_pos + room_width), ((layer_y_pos + 8) + ground_height), 1, 1, dark_blend, true)
    draw_set_color(c_black)
    draw_rectangle(layer_x_pos, (layer_y_pos + 440), ((layer_x_pos + room_width) + 100), (((layer_y_pos + 500) + room_height) + 2), false)
    draw_set_color(merge_color(c_dkgray, c_navy, 0.3))
    draw_rectangle((gml_Script_camerax() - 80), ((gml_Script_cameray() + 360) - (gml_Script_cameray() / 40)), (gml_Script_camerax() + 720), (gml_Script_cameray() + 600), false)
    draw_set_alpha(0.3)
    for (var i = 0; i < 6; i++)
    {
        draw_set_color(c_black)
        draw_rectangle((gml_Script_camerax() - 80), ((gml_Script_cameray() + 340) + (i * 20)), (gml_Script_camerax() + 720), (gml_Script_cameray() + 600), false)
    }
    draw_set_alpha(1)
}
