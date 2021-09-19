if (!instance_exists(obj_growtangle))
    return;
gpu_set_blendenable(0)
gpu_set_colorwriteenable(0, 0, 0, 1)
draw_set_alpha(0)
draw_rectangle(gml_Script_camerax(), gml_Script_cameray(), (gml_Script_camerax() + 640), (gml_Script_cameray() + 480), false)
draw_set_alpha(1)
draw_rectangle(((obj_growtangle.x - (obj_growtangle.sprite_width / 2)) + 5), ((obj_growtangle.y - (obj_growtangle.sprite_height / 2)) + 5), ((obj_growtangle.x + (obj_growtangle.sprite_width / 2)) - 4), ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - 4), false)
gpu_set_blendenable(1)
gpu_set_colorwriteenable(1, 1, 1, 1)
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
gpu_set_alphatestenable(1)
gpu_set_alphatestref(1)
return;
