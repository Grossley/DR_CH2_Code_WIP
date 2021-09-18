visibiliytimer++
if (visibiliytimer < 2)
    return;
if (image_alpha < 1)
    image_alpha += 0.1
image_alpha
32768
draw_line_width(x, y, jointx, jointy, 4)
if boss
{
    draw_line_width(jointx, jointy, boss.x, boss.y, 4)
    for (i = 0; i < 4; i++)
    {
        draw_sprite_ext(spr_sneo_bullet0, 0, lerp(x, jointx, (i / 4)), lerp(y, jointy, (i / 4)), 2, 2, 0, c_green, 1)
        draw_sprite_ext(spr_sneo_bullet0, 0, lerp(jointx, boss.x, (i / 4)), lerp(jointy, boss.y, (i / 4)), 2, 2, 0, c_green, 1)
    }
}
// WARNING: Popz'd an empty stack.
1
