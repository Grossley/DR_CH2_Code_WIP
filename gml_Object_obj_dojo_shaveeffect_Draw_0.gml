// WARNING: Popz'd an empty stack.
if (blend_timer < 1)
    blend_timer += 0.25
if (blend_timer > 0)
{
    gml_Script_d3d_set_fog(true, c_white, 0, 1)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, blend_timer)
    gml_Script_d3d_set_fog(false, c_black, 0, 0)
}
