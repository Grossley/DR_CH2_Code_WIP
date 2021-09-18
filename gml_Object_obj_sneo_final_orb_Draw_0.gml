flashsiner++
var blend_color = merge_color(0xE8A200, c_aqua, (0.25 + (sin((flashsiner / 3)) * 0.25)))
// WARNING: Popz'd an empty stack.
image_angle += (10 + (timer * 2))
if (timer > 0)
{
    draw_sprite_ext(spr_sneo_bigcircle, 0, x, y, (image_xscale + (timer * 2)), (image_yscale + timer), 0, c_white, 1)
    draw_sprite_ext(spr_pixel_white, 0, (gml_Script_camerax() - 20), (gml_Script_cameray() - 20), 220, 220, 0, c_white, clamp((timer / 15), 0, 1))
}
0.5
16777215
for (i = max(0, hp); i < 12; i++)
{
    var _conewidth = ((((i - 1) % 3) == 0 ? 14 : 4) / 2)
    var _x2 = lengthdir_x(999, (((i + 1) * 180) - _conewidth))
    var _y2 = lengthdir_y(999, (((i + 1) * 180) - _conewidth))
    var _x3 = lengthdir_x(999, (((i + 1) * 180) + _conewidth))
    var _y3 = lengthdir_y(999, (((i + 1) * 180) + _conewidth))
    draw_triangle(x, y, _x2, _y2, _x3, _y3, 0)
}
1
