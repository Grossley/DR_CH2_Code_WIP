var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_10, _temp_local_var_11, _temp_local_var_13, _temp_local_var_14, _temp_local_var_15, _temp_local_var_16, _temp_local_var_17, _temp_local_var_18, _temp_local_var_19, _temp_local_var_20, _temp_local_var_21;
siner++
drawx = ((gml_Script___view_get(0, 0) * -0.125) + xstart)
drawy = (room == room_dw_mansion_prefountain ? ((gml_Script_cameray() * -0.125) + 620) : ((gml_Script_cameray() + ystart) - 80))
if auto_scroll
    x_offset -= 0.5
if auto_scroll_y
{
    auto_scroll_y_timer++
    y_offset -= 0.75
    if (auto_scroll_y_timer >= 30)
        auto_scroll_y = 0
}
2869
var _temp_local_var_2 = 0
var _temp_local_var_3 = (drawx + x_offset)
var _temp_local_var_4 = (drawy + y_offset)
var _temp_local_var_5 = (drawx + x_offset)
var _temp_local_var_6 = drawy
var _temp_local_var_7 = ((drawy + y_offset) + view_hport[0]).room_width
var _temp_local_var_8 = 1
var _temp_local_var_9 = 1
var _temp_local_var_10 = 16777215
var _temp_local_var_11 = 1
if show_laser_outline
{
    if (reveal_pos < 0)
        reveal_pos = gml_Script_camerax()
    if (!cityscape_reveal)
    {
        reveal_pos += 16
        if (reveal_pos >= (gml_Script_camerax() + view_wport[0]))
            cityscape_reveal = 1
        gpu_set_blendenable(0)
        gpu_set_colorwriteenable(0, 0, 0, 1)
        draw_set_alpha(0)
        draw_rectangle(reveal_pos, 0, (gml_Script_camerax() + view_wport[0]), (gml_Script_cameray() + view_hport[0]), false)
        draw_set_alpha(1)
        gpu_set_blendenable(1)
        gpu_set_colorwriteenable(1, 1, 1, 1)
        gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
        gpu_set_alphatestenable(1)
        gml_Script_scr_draw_sprite_tiled_area(301, 0, drawx, drawy, drawx, drawy, (obj_pipis_bullet_cone).room_height.room_width, 1, 16777215, 1, 0, (drawx + x_offset))
        gpu_set_alphatestenable(0)
        gpu_set_blendmode(bm_normal)
    }
    else
        gml_Script_scr_draw_sprite_tiled_area(301, 0, drawx, drawy, drawx, drawy, (obj_pipis_bullet_cone).room_height.room_width, 1, 16777215, main_alpha, 0, (drawx + x_offset))
}
if show_laser_beam
{
    if (beam_offset < 60)
        beam_offset += 4
    if (show_laser_hand && hand_alpha > 0)
        hand_alpha -= 0.1
    else
        show_laser_hand = 0
    gpu_set_blendenable(0)
    gpu_set_colorwriteenable(0, 0, 0, 1)
    draw_set_alpha(0)
    gml_Script_scr_draw_sprite_tiled_area(302, 0, drawx, drawy, drawx, drawy, (obj_pipis_bullet_cone).room_height.room_width, 1, 16777215, main_alpha, (drawy + y_offset), (drawx + x_offset))
    draw_set_alpha(1)
    gpu_set_blendenable(1)
    gpu_set_colorwriteenable(1, 1, 1, 1)
    gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
    gpu_set_alphatestenable(1)
    gml_Script_scr_draw_sprite_tiled_area(307, 0, ((gml_Script_camerax() + (view_wport[0] / 2)) - beam_offset), gml_Script_cameray(), ((gml_Script_camerax() + (view_wport[0] / 2)) - beam_offset), gml_Script_cameray(), ((gml_Script_camerax() + (view_wport[0] / 2)) + beam_offset), (gml_Script_cameray() + 200), 1, 1, 16777215, 1)
    gml_Script_d3d_set_fog(false, c_black, 0, 0)
    gpu_set_alphatestenable(0)
    gpu_set_blendmode(bm_normal)
}
if show_mini_fountains
{
    if (mini_alpha < 1)
        mini_alpha += 0.1
    gml_Script_scr_draw_sprite_tiled_area(301, 0, drawx, drawy, drawx, drawy, (obj_pipis_bullet_cone).room_height.room_width, 1, 16777215, mini_alpha, drawy, ((drawy + y_offset) + view_hport[0]).room_width)
    gpu_set_blendenable(0)
    gpu_set_colorwriteenable(0, 0, 0, 1)
    draw_set_alpha(0)
    gml_Script_scr_draw_sprite_tiled_area(302, 0, drawx, drawy, drawx, drawy, (obj_pipis_bullet_cone).room_height.room_width, 1, 16777215, mini_alpha, 1, 1)
    draw_set_alpha(1)
    gpu_set_blendenable(1)
    gpu_set_colorwriteenable(1, 1, 1, 1)
    gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
    gpu_set_alphatestenable(1)
    gml_Script_scr_draw_sprite_tiled_area(307, 0, (kris_screen.x - 2), gml_Script_cameray(), (kris_screen.x - 2), gml_Script_cameray(), (kris_screen.x + 2), (gml_Script_cameray() + 210), 1, 1, 16777215, mini_alpha)
    gml_Script_scr_draw_sprite_tiled_area(307, 0, (sus_screen.x - 2), gml_Script_cameray(), (sus_screen.x - 2), gml_Script_cameray(), (sus_screen.x + 2), (gml_Script_cameray() + 210), 1, 1, 16777215, mini_alpha)
    gml_Script_scr_draw_sprite_tiled_area(307, 0, (no_screen.x - 2), gml_Script_cameray(), (no_screen.x - 2), gml_Script_cameray(), (no_screen.x + 2), (gml_Script_cameray() + 210), 1, 1, 16777215, mini_alpha)
    gml_Script_d3d_set_fog(false, c_black, 0, 0)
    gpu_set_alphatestenable(0)
    gpu_set_blendmode(bm_normal)
}
if mini_cityscape
    gml_Script_scr_draw_sprite_tiled_area(301, 0, drawx, drawy, drawx, drawy, (obj_pipis_bullet_cone).room_height.room_width, 1, 16777215, main_alpha, 16777215, 1)
if tender_goodbye
{
    siner++
    if (!tender_fly)
        sinery = (sin((siner / 20)) * 4)
    else
        sinery -= 10
    if (tender_reveal_pos < 0)
    {
        gml_Script_snd_play(145)
        tender_reveal_pos = ((gml_Script_camerax() + (view_wport[0] / 2)) - sprite_get_width(byebye_sprite))
    }
    if (!tender_reveal)
    {
        tender_reveal_pos += 8
        if (tender_reveal_pos >= ((gml_Script_camerax() + (view_wport[0] / 2)) + (sprite_get_width(byebye_sprite) * 2)))
            tender_reveal = 1
    }
    gpu_set_blendenable(0)
    gpu_set_colorwriteenable(0, 0, 0, 1)
    draw_set_alpha(0)
    draw_rectangle(tender_reveal_pos, ((gml_Script_cameray() + 40) + sinery), ((gml_Script_camerax() + (view_wport[0] / 2)) + (sprite_get_width(byebye_sprite) * 2)), (((gml_Script_cameray() + 40) + (sprite_get_height(byebye_sprite) * 2)) + sinery), false)
    draw_set_alpha(1)
    gpu_set_blendenable(1)
    gpu_set_colorwriteenable(1, 1, 1, 1)
    gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
    gpu_set_alphatestenable(1)
    draw_sprite_ext(byebye_sprite, 0, ((gml_Script_camerax() + (view_wport[0] / 2)) - sprite_get_width(byebye_sprite)), ((gml_Script_cameray() + 40) + sinery), 2, 2, 0, c_white, (0.8 + (sin((siner / 8)) * 0.2)))
    gpu_set_alphatestenable(0)
    gpu_set_blendmode(bm_normal)
}
if tender_cancel
{
    siner++
    if (tender_cancel_pos < 0)
        tender_cancel_pos = (((gml_Script_camerax() + (view_wport[0] / 2)) - sprite_get_width(byebye_sprite)) - 10)
    tender_cancel_pos += 16
    if (tender_cancel_pos >= (((gml_Script_camerax() + (view_wport[0] / 2)) + sprite_get_width(byebye_sprite)) + 10))
    {
        tender_timer--
        if (tender_timer <= -30)
            tender_fly = 1
    }
    if (!tender_fly)
        sinery = (sin((siner / 20)) * 4)
    else
    {
        sinery -= 10
        if (sinery <= -200)
        {
            tender_goodbye = 0
            tender_cancel = 0
        }
    }
    gpu_set_blendenable(0)
    gpu_set_colorwriteenable(0, 0, 0, 1)
    draw_set_alpha(0)
    draw_rectangle(tender_cancel_pos, (((sinery + gml_Script_cameray()) + 50) + (sprite_get_height(byebye_sprite) / 2)), (((gml_Script_camerax() + (view_wport[0] / 2)) + sprite_get_width(byebye_sprite)) + 10), (((gml_Script_cameray() + 120) + (sprite_get_height(spr_cutscene_27_tender_cancelled) * 2)) + sinery), false)
    draw_set_alpha(1)
    gpu_set_blendenable(1)
    gpu_set_colorwriteenable(1, 1, 1, 1)
    gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
    gpu_set_alphatestenable(1)
    draw_set_color(c_red)
    draw_rectangle((((gml_Script_camerax() + (view_wport[0] / 2)) - sprite_get_width(byebye_sprite)) - 10), (((gml_Script_cameray() + 50) + (sprite_get_height(byebye_sprite) / 2)) + sinery), (((gml_Script_camerax() + (view_wport[0] / 2)) + sprite_get_width(byebye_sprite)) + 10), ((((gml_Script_cameray() + 50) + (sprite_get_height(byebye_sprite) / 2)) + 4) + sinery), false)
    draw_set_color(c_white)
    draw_sprite_ext(spr_cutscene_27_tender_cancelled, 0, ((gml_Script_camerax() + (view_wport[0] / 2)) - sprite_get_width(spr_cutscene_27_tender_cancelled)), ((gml_Script_cameray() + 120) + sinery), 2, 2, 0, c_white, (0.9 + (sin((siner / 8)) * 0.1)))
    gpu_set_alphatestenable(0)
    gpu_set_blendmode(bm_normal)
}
if show_hands
{
    draw_sprite_ext(spr_cutscene_26_laser_hand_right, 0, hand_right_xpos, (gml_Script_cameray() + 80), 2, 2, 0, c_white, 1)
    gpu_set_blendenable(0)
    gpu_set_colorwriteenable(0, 0, 0, 1)
    draw_set_alpha(0)
    302
    draw_set_alpha(1)
    gpu_set_blendenable(1)
    gpu_set_colorwriteenable(1, 1, 1, 1)
    gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha)
    gpu_set_alphatestenable(1)
    draw_sprite_ext(spr_cutscene_26_laser_knife, 0, ((gml_Script_camerax() + (view_wport[0] / 2)) - sprite_get_width(spr_cutscene_26_laser_knife)), knife_ypos, 2, 2, 0, c_white, 1)
    gml_Script_d3d_set_fog(false, c_black, 0, 0)
    gpu_set_alphatestenable(0)
    gpu_set_blendmode(bm_normal)
    var _temp_local_var_13 = 0
    var _temp_local_var_14 = drawx
    var _temp_local_var_15 = drawy
    var _temp_local_var_16 = drawx
    var _temp_local_var_17 = drawy
    var _temp_local_var_18 = (obj_pipis_bullet_cone).room_height.room_width
    var _temp_local_var_19 = 1
    var _temp_local_var_20 = 16777215
    var _temp_local_var_21 = knife_alpha
}
