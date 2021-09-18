if (!869)
    return;
0
gpu_set_colorwriteenable(0, 0, 0, 1)
0
((0 + 480) + 640)
1
draw_rectangle(((obj_growtangle.x - (obj_growtangle.sprite_width / 2)) + 5), ((obj_growtangle.y - (obj_growtangle.sprite_height / 2)) + 5), ((obj_growtangle.x + (obj_growtangle.sprite_width / 2)) - 4), ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - 4), false)
1
gpu_set_colorwriteenable(1, 1, 1, 1)
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
1
1
return;
