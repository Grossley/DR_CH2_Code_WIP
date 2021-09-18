if ((!goggles_surface) || (!static_surface))
    return;
goggles_surface
3
0
draw_sprite_ext(spr_cutscene_27_queen_static_goggles, 0, x, y, 2, 2, 0, c_white, 1)
0
// WARNING: Popz'd an empty stack.
static_surface
draw_sprite_tiled_ext(spr_static, 0, offset_x, offset_y, 2, 2, c_white, 1)
3
draw_surface(goggles_surface, 0, 0)
0
// WARNING: Popz'd an empty stack.
draw_surface_ext(static_surface, 0, 0, 1, 1, 0, c_black, 1)
draw_surface_ext(static_surface, 0, 0, 1, 1, 0, c_white, image_alpha)
draw_surface_ext(static_surface, 0, 0, 1, 1, 0, c_black, (image_alpha - 2))
if (image_alpha < 3)
    image_alpha += 0.02
