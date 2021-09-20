draw_set_alpha(1)
gpu_set_blendenable(1)
gpu_set_colorwriteenable(1, 1, 1, 1)
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
gpu_set_alphatestenable(1)
gpu_set_alphatestref(1)
return;
