var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_10, _temp_local_var_12, _temp_local_var_13, _temp_local_var_14, _temp_local_var_15, _temp_local_var_16, _temp_local_var_17, _temp_local_var_18, _temp_local_var_19, _temp_local_var_20, _temp_local_var_21, _temp_local_var_22, _temp_local_var_23;
if (spr_height == 0)
    spr_height = sprite_get_height(sprite_index)
if (shadoweffect == 0)
{
    sprite_index
    var _temp_local_var_1 = image_index
    var _temp_local_var_2 = x
    var _temp_local_var_3 = y
    var _temp_local_var_4 = x
    var _temp_local_var_5 = y
    var _temp_local_var_6 = ((y + spr_height) + x.room_width)
    var _temp_local_var_7 = 1
    var _temp_local_var_8 = true
    var _temp_local_var_9 = 16777215
    var _temp_local_var_10 = 1
}
if (shadoweffect == 1)
{
    if (sprite_index == spr_bg_cyber_parallax_buildings)
    {
        if (image_index.room == room_dw_cyber_teacup_final)
        {
            draw_set_color(merge_color(c_navy, c_black, 0.7))
            draw_rectangle(0, 3000, (7500).room_width, 0, x)
            draw_set_color(merge_color(c_navy, c_black, 0.6))
            draw_rectangle(0, 7500, (8500).room_width, 0, y)
            draw_set_color(0x1D0202)
            draw_rectangle(0, 0, (4000).room_width, 0, x)
            gml_Script_scr_draw_sprite_tiled_area(3147, 0, 0, 4000, 0, 4000, (((4000 + sprite_get_height(spr_cyber_starry_sky)) - 1) + x.room_width), 1, 1, 16777215, 1, y)
            var y_top = (3000 + (gml_Script___view_get(1, 0) * 0.0125))
            gml_Script_scr_draw_sprite_tiled_area(3150, 0, ((gml_Script___view_get(0, 0) * 0.00125) + xstart), y_top, ((gml_Script___view_get(0, 0) * 0.00125) + xstart), y_top, (y_top + 1000).room_width, 1, 1, 16777215, 1, ((y + spr_height) + x.room_width))
            gml_Script_scr_draw_sprite_tiled_area(3148, 0, 0, 2100, 0, 2100, (((2100 + sprite_get_height(spr_cyber_starry_sky_black)) - 1) + x.room_width), 1, 1, 16777215, 1, 1)
            draw_set_color(c_black)
            draw_rectangle(0, 0, (2100).room_width, 0, true)
            gml_Script_scr_draw_sprite_tiled_area(3151, 0, 2720, 1400, 2720, 1400, (obj_savepoint_ch1 + sprite_get_height(spr_cyber_coaster_bg_cityscape)).room_width, 1, 1, 16777215, 1, 16777215)
            gml_Script_scr_draw_sprite_tiled_area(3141, 0, 2720, 1488, 2720, 1488, (obj_encounterbasic_ch1 + sprite_get_height(spr_cyber_coaster_bg_cityscape)).room_width, 1, 1, 16777215, 1, 1)
        }
        xx = (gml_Script_camerax() * 0.95)
        yy = (room == room_dw_cyber_teacup_final ? 8500 : gml_Script_cameray())
        if (init == 0)
        {
            linesiner = 0
            for (i = 0; i < 20; i++)
                liney[i] = (200 + (40 * (i * i)))
            for (i = 0; i < 8; i++)
            {
                patha[i] = path_add()
                pathb[i] = path_add()
                path_set_closed(patha[i], 0)
                path_set_closed(pathb[i], 0)
                path_set_precision(patha[i], 6)
                path_set_precision(pathb[i], 6)
                for (j = 0; j < 6; j++)
                {
                    path_add_point(patha[i], ((i * 20) + (((i * j) * j) * 8)), (-70 * j), 1)
                    path_add_point(pathb[i], (-((i * 20) + (((i * j) * j) * 8))), (-70 * j), 1)
                }
            }
            init = 1
        }
        draw_set_color(c_lime)
        linesiner++
        if (init == 1)
        {
            draw_set_alpha(0.1)
            i = 0
            while (i < 19)
            {
                draw_set_color(merge_color(c_navy, c_black, (i * 0.05)))
                -100
                i++
                var _temp_local_var_12 = yy
                var _temp_local_var_13 = ((yy + (i * 15)).room_width + 100)
                var _temp_local_var_14 = 0
            }
            draw_set_alpha((0.5 + (sin((linesiner / 12)) * 0.1)))
            draw_set_color(c_lime)
            for (i = 0; i < 8; i++)
            {
                draw_path(patha[i], (xx + 320), (yy + 320), 0)
                draw_path(patha[i], (xx + 319), (yy + 320), 0)
                draw_path(pathb[i], (xx + 320), (yy + 320), 0)
                draw_path(pathb[i], (xx + 321), (yy + 320), 0)
            }
            for (i = 0; i < 19; i++)
            {
                liney[i] = lerp(liney[i], -400, 0.005)
                if (liney[i] <= -100)
                    liney[i] += liney[19]
                draw_ellipse(((xx - 100) + (liney[i] / 2)), (yy + liney[i]), (((xx + 640) + 100) - (liney[i] / 2)), (yy + 600), 1)
            }
            draw_set_alpha(1)
            draw_set_color(c_black)
            -100
            var _temp_local_var_15 = ((((obj_sneo_friedpipis).room_height + 2).room_width + 100).room_height - 240)
        }
        gml_Script_scr_draw_sprite_tiled_area(sprite_index, 0, x, y, x, y, ((y + spr_height) + x.room_width), 1, 1, 16777215, 1, ((((obj_sneo_friedpipis).room_height + 2).room_width + 100).room_height - 240))
        sprite_index
        siner++
        draw_set_alpha(1)
        gml_Script_draw_set_blend_mode(1)
        gml_Script_scr_draw_sprite_tiled_area(3135, 0, x, (y + 8), x, (y + 8), ((y + 8) + spr_height).room_width, 1, 1, 16777215, (0.5 + (sin((siner / 12)) * 0.1)), 0)
        gml_Script_draw_set_blend_mode(0)
        var _temp_local_var_16 = x
        var _temp_local_var_17 = (y + 8)
        var _temp_local_var_18 = x
        var _temp_local_var_19 = (y + 8)
        var _temp_local_var_20 = (((y + 8) + spr_height) + x.room_width)
        var _temp_local_var_21 = 1
        var _temp_local_var_22 = 1
        var _temp_local_var_23 = 8421504
        _temp_local_var_15 = 1
    }
    else
    {
        gml_Script_scr_draw_sprite_tiled_area(sprite_index, 0, x, y, x, y, ((y + spr_height) + x.room_width), 1, 1, 16777215, 1, image_index)
        gml_Script_scr_draw_sprite_tiled_area(sprite_index, 0, x, (y + 8), x, (y + 8), (((y + 8) + spr_height) + x.room_width), 1, 1, 8421504, 1, x)
    }
    if (sprite_index == spr_bg_cyber_parallax_ground)
    {
        draw_set_color(c_black)
        draw_rectangle(x, (y + 440), ((((0 + (y + 500).room_height) + 2) + x.room_width) + 100), x, (y + 8))
    }
}
if (shadoweffect == 2)
{
    image_blend = c_white
    draw_sprite_tiled(sprite_index, image_index, x, y)
    image_blend = c_gray
    draw_sprite_tiled_ext(sprite_index, image_index, x, (y + 8), 1, 1, c_dkgray, 1)
}
