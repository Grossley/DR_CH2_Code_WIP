if (!actor)
    // WARNING: Popz'd an empty stack.
if actor
{
    x = actor.x
    y = actor.y
}
1
draw_sprite_ext(spr_aura_zap, image_index, x, y, (dis / 300), image_yscale, dir, image_blend, 1)
1
draw_sprite_ext(spr_aura_zap, (image_index * 2), x, y, (dis / 300), (image_yscale * 2), dir, tint, 1)
0
0
