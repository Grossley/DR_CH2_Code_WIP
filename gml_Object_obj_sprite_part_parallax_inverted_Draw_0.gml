image_xscale = 2
image_yscale = 2
siner++
16734938
draw_rectangle(x, y, (x + 80), (y + 80), false)
if (dontdraw == 0)
    gml_Script_draw_sprite_part_parallax_scale(sprite_index, (siner / 8), (siner / 8), (siner / 8), 0.3, 3)
if (dontdraw == 0)
    gml_Script_draw_sprite_part_parallax(sprite_index, (siner / 8), (siner / 3), (siner / 6), 1)
