0
gpu_set_colorwriteenable(0, 0, 0, 1)
0
draw_rectangle(x, y_mask_pos, (x + (sprite_get_width(sprite_index) * 2)), (y_mask_pos + (sprite_get_height(sprite_index) * 2)), false)
1
1
gpu_set_colorwriteenable(1, 1, 1, 1)
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
1
// WARNING: Popz'd an empty stack.
0
0
siner += 0.075
y = (ystart + (sin((siner / 3)) * 10))
