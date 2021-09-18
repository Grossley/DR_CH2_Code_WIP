if target
{
    image_index = target.image_index
    sprite_index = target.sprite_index
}
siner += flashspeed
gml_Script_d3d_set_fog_ch1(1, flashcolor, 0, 1)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, (siner / 3))
gml_Script_d3d_set_fog_ch1(0, 0, 0, 0)
if (siner > 4 && (siner / 3) < 0)
    // WARNING: Popz'd an empty stack.
