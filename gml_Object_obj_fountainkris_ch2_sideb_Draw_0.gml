if draw_kris
{
    if 230
    {
        image_blend = obj_darkfountain.colcol
        siner = obj_darkfountain.siner
    }
    else
    {
        0
        ((0 + view_hport[0]) + view_wport[0])
        16777215
    }
    draw_sprite_ext(sprite_index, image_index, x, (y - 4), 2, 2, 0, image_blend, 1)
    image_blend = c_black
    draw_sprite_ext(sprite_index, image_index, x, ((y + (sprite_height * 4)) - 8), 2, -6, 0, image_blend, 1)
    // WARNING: Popz'd an empty stack.
}
