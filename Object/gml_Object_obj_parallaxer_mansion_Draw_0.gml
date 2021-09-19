drawx = ((gml_Script___view_get(0, 0) * -0.125) + xstart)
if (room == room_dw_mansion_acid_tunnel_exit)
    drawy = ((gml_Script___view_get(1, 0) * -0.125) + ystart)
gml_Script_scr_draw_sprite_tiled_area(2869, 0, (drawx + x_offset), (drawy + y_offset), (drawx + x_offset), drawy, room_width, ((drawy + y_offset) + view_hport[0]), 1, 1, 16777215, 1)
