draw_self()
if (flashamount >= 0)
{
    gml_Script_draw_set_blend_mode(2)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
    gml_Script_draw_set_blend_mode(0)
}
