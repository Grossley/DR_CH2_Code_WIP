if (facing == 0)
    draw_sprite_ext(sprite_index, walk_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if (facing == 1)
    draw_sprite_ext(sprite_index, walk_index, (x + sprite_width), y, (-image_xscale), image_yscale, image_angle, image_blend, image_alpha)
255
draw_rectangle((targetx - 2), (targety - 2), (targetx + 2), (targety + 2), false)
16776960
draw_rectangle(((targetx - 2) + (sprite_width / 2)), ((targety - 2) + (sprite_height / 2)), ((targetx + 2) + (sprite_width / 2)), ((targety + 2) + (sprite_height / 2)), false)
