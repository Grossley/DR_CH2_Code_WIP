timer += 1
gml_Script_pal_swap_set(sprite_palette, current_pal, 0)
draw_sprite(spr_swatchling_legs, 0, x, y)
draw_sprite(spr_swatchling_body, 0, x, (y + (sin((timer / 6)) * 3)))
draw_sprite(spr_swatchling_head, 0, x, (y + sin((timer / 6))))
// WARNING: Popz'd an empty stack.
