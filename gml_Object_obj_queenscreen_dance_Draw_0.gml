if dance_active
    draw_sprite_ext(spr_queenscreen, 11, x, y, image_xscale, image_yscale, image_angle, image_blend, 1)
else
    draw_sprite_ext(spr_queenscreen, 26, x, y, image_xscale, image_yscale, image_angle, image_blend, 1)
draw_text(10, 100, global.currentsong[1])
16777215
// WARNING: Popz'd an empty stack.
siner++
y += (sin((siner / 16)) / 4)
if (global.flag[8] == 0)
{
    1
    gml_Script_draw_sprite_ext_flash(sprite_index, image_index, x, y, (image_xscale + 0.01), (image_yscale + 0.01), image_angle, image_blend, (0.1 + (sin((siner / 5)) * 0.1)))
    0
}
