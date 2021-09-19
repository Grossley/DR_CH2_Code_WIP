depth = 99000
if gml_Script_i_ex(273)
    fightmode = 1
if (drawblack == 1 && fightmode == 0)
{
    draw_set_color(c_black)
    draw_rectangle(1630, -10, 2500, 500, false)
}
if (drawtrack == 1)
{
    trackx += trackspeed
    if ((trackx + 640) < gml_Script_camerax())
        trackx += 640
    if ((trackx - 640) > gml_Script_camerax())
        trackx -= 640
    draw_sprite_ext(spr_sneo_track, 0, (trackx - 640), tracky0, 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_sneo_track, 0, trackx, tracky0, 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_sneo_track, 0, (trackx + 640), tracky0, 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_sneo_track, 0, (trackx - 640), tracky1, 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_sneo_track, 0, trackx, tracky1, 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_sneo_track, 0, (trackx + 640), tracky1, 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_sneo_track, 0, (trackx - 640), tracky2, 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_sneo_track, 0, trackx, tracky2, 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_sneo_track, 0, (trackx + 640), tracky2, 2, 2, 0, c_white, image_alpha)
    if gml_Script_scr_debug()
        draw_set_color(c_white)
    draw_set_color(c_black)
    draw_rectangle(0, 200, 80, 420, false)
}
if (drawblack == 2 && fightmode == 0)
{
    draw_set_color(c_black)
    draw_rectangle(1640, -10, 2500, 500, false)
}
if cityscape_active
{
    if (cityscape_alpha < 1)
        cityscape_alpha = lerp(cityscape_alpha, 1, 0.2)
    if (cityscapefade == 1)
        cityscape_alpha = 0
    cityscape_speed -= cityscape_speed_max
    if (cityscape_speed_max < 0 && cityscape_speed > -398)
        cityscape_speed -= 398
    gml_Script_scr_draw_sprite_tiled_area(3331, 0, (gml_Script_camerax() + cityscape_speed), gml_Script_cameray(), (gml_Script_camerax() + cityscape_speed), gml_Script_cameray(), (gml_Script_camerax() + view_wport[0]), (gml_Script_cameray() + (sprite_get_height(bg_dw_mansion_basement_cityscape_background) * 2)), 2, 2, 16777215, cityscape_alpha)
    gml_Script_scr_draw_sprite_tiled_area(3303, 0, (gml_Script_camerax() + (cityscape_speed * 1.1)), gml_Script_cameray(), (gml_Script_camerax() + (cityscape_speed * 1.1)), gml_Script_cameray(), (gml_Script_camerax() + view_wport[0]), (gml_Script_cameray() + (sprite_get_height(bg_dw_mansion_basement_cityscape_midground) * 2)), 2, 2, 16777215, cityscape_alpha)
    gml_Script_scr_draw_sprite_tiled_area(3314, 0, (gml_Script_camerax() + (cityscape_speed * 1.2)), gml_Script_cameray(), (gml_Script_camerax() + (cityscape_speed * 1.2)), gml_Script_cameray(), (gml_Script_camerax() + view_wport[0]), (gml_Script_cameray() + (sprite_get_height(bg_dw_mansion_basement_cityscape_foreground) * 2)), 2, 2, 16777215, cityscape_alpha)
    if (shop_spamton_bg_con > 1)
    {
        if (cityscapefade == 1)
            cityscape_alpha = 0.15
        gml_Script_scr_draw_sprite_tiled_area(2056, 0, (gml_Script_camerax() + cityscape_speed), gml_Script_cameray(), (gml_Script_camerax() + cityscape_speed), gml_Script_cameray(), (gml_Script_camerax() + view_wport[0]), (gml_Script_cameray() + (sprite_get_height(bg_dw_mansion_basement_cityscape) * 2)), 1.6708, 1.195, 16777215, cityscape_alpha)
    }
    if (shop_spamton_bg_con == 1 && (!gml_Script_i_ex(62)) && (!gml_Script_i_ex(867)))
    {
        shop_spamton_bg_timer++
        if (shop_spamton_bg_timer == 1)
            gml_Script_snd_play(201)
        if (shop_spamton_bg_timer == 23)
            shop_spamton_bg_con = 2
    }
    if (shop_spamton_bg_con == 2)
    {
        shop_spamton_bg_timer--
        if (shop_spamton_bg_timer == 0)
        {
            shop_spamton_bg_con = 3
            with (obj_spamton_neo_enemy)
                targetbgspeed = 5
        }
    }
    if (shop_spamton_bg_con > 0 && shop_spamton_bg_con < 3)
        gml_Script_scr_draw_sprite_tiled_area(547, 0, (gml_Script_camerax() + cityscape_speed), gml_Script_cameray(), (gml_Script_camerax() + cityscape_speed), (gml_Script_cameray() - 2), (gml_Script_camerax() + view_wport[0]), ((gml_Script_cameray() - 2) + (sprite_get_height(bg_dw_mansion_basement_cityscape) * 2)), 396, 8, 16777215, (shop_spamton_bg_timer / 20))
}
