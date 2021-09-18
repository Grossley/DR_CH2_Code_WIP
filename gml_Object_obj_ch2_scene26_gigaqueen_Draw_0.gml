if head_init
{
    if static_happened
        draw_sprite_ext(spr_cutscene_27_queen_static_goggles, 0, 252, 123, 2, 2, 0, c_white, 1)
    0
    gpu_set_colorwriteenable(0, 0, 0, 1)
    0
    (((0 + view_hport[0]) + view_wport[0]) + 360)
    1
    1
    gpu_set_colorwriteenable(1, 1, 1, 1)
    gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
    1
    draw_sprite_ext(head_sprite, anim_index, head_x_pos, head_y_pos, 2, 2, 0, c_white, 1)
    0
    0
    if (!static_start)
    {
        var offset = (head_sprite == 2552 ? 5 : 0)
        0
        gpu_set_colorwriteenable(0, 0, 0, 1)
        0
        (((0 + view_hport[0]) + view_wport[0]) + 360)
        draw_sprite_ext(spr_cutscene_26_queen_giga_goggles_mask, anim_index, head_x_pos, (head_y_pos + offset), 2, 2, 0, c_white, 1)
        1
        1
        gpu_set_colorwriteenable(1, 1, 1, 1)
        gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
        1
        if (damagedfx == 0)
            draw_sprite_ext(pilot_sprite, anim_index, (head_x_pos + 167), ((head_y_pos + 160) + offset), 2, 2, 0, c_white, pilot_alpha)
        draw_sprite_ext(spr_cutscene_26_queen_giga_goggles_highlight, anim_index, head_x_pos, head_y_pos, 2, 2, 0, c_white, pilot_alpha)
        0
        0
    }
}
