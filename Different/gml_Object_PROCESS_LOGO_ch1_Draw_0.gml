if (os_type == os_macosx)
    draw_screen = skiptimer < 29
if draw_screen
{
    if (PHASE == 0)
    {
        siner += 1
        factor -= (0.003 + (siner / 900))
        if (factor < 0)
        {
            factor = 0
            PHASE = 1
        }
        for (i = 0; i < h; i += 1)
        {
            ia = ((siner / 25) - (abs((i - mid)) * 0.05))
            xoff = ((40 * sin(((siner / 5) + (i / 3)))) * factor)
            xoff2 = ((40 * sin((((siner / 5) + (i / 3)) + 0.6))) * factor)
            xoff3 = ((40 * sin((((siner / 5) + (i / 3)) + 1.2))) * factor)
            draw_sprite_part_ext(sprite_index, image_index, 0, i, w, 2, (x + xoff), (y + i), 1, 1, c_white, ((1 - factor) / 2))
            draw_sprite_part_ext(sprite_index, image_index, 0, i, w, 2, (x + xoff2), (y + i), 1, 1, c_white, ((1 - factor) / 2))
            draw_sprite_part_ext(sprite_index, image_index, 0, i, w, 2, (x + xoff3), (y + i), 1, 1, c_white, ((1 - factor) / 2))
        }
    }
    if (PHASE == 1)
    {
        draw_self()
        PHASETIMER += 1
        if (PHASETIMER >= 30)
        {
            siner = 0
            factor = 0
            PHASE = 2
            scr_windowcaption_ch1(scr_84_get_lang_string_ch1("PROCESS_LOGO_slash_Draw_0_gml_37_0"))
            global.tempflag[10] = 1
        }
    }
    if (PHASE == 2)
    {
        if (PHASEPLUS == 0)
            siner += 0.5
        if (siner >= 20)
            PHASEPLUS = 1
        if (PHASEPLUS == 1)
        {
            siner += 0.5
            AA -= 0.02
            AB -= 0.08
        }
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, AB)
        mina = (siner / 30)
        if (mina >= 0.14)
            mina = 0.14
        factor2 += 0.05
        for (i = 0; i < 10; i += 1)
        {
            draw_sprite_ext(IMAGE_LOGO_CENTER_ch1, image_index, ((x + (w / 2)) - (sin(((siner / 8) + (i / 2))) * (i * factor2))), ((y + (h / 2)) - (cos(((siner / 8) + (i / 2))) * (i * factor2))), image_xscale, image_yscale, 0, c_white, (mina * AA))
            draw_sprite_ext(IMAGE_LOGO_CENTER_ch1, image_index, ((x + (w / 2)) + (sin(((siner / 8) + (i / 2))) * (i * factor2))), ((y + (h / 2)) - (cos(((siner / 8) + (i / 2))) * (i * factor2))), image_xscale, image_yscale, 0, c_white, (mina * AA))
            draw_sprite_ext(IMAGE_LOGO_CENTER_ch1, image_index, ((x + (w / 2)) - (sin(((siner / 8) + (i / 2))) * (i * factor2))), ((y + (h / 2)) + (cos(((siner / 8) + (i / 2))) * (i * factor2))), image_xscale, image_yscale, 0, c_white, (mina * AA))
            draw_sprite_ext(IMAGE_LOGO_CENTER_ch1, image_index, ((x + (w / 2)) + (sin(((siner / 8) + (i / 2))) * (i * factor2))), ((y + (h / 2)) + (cos(((siner / 8) + (i / 2))) * (i * factor2))), image_xscale, image_yscale, 0, c_white, (mina * AA))
        }
        draw_sprite_ext(IMAGE_LOGO_CENTER_HEART_ch1, image_index, x, y, image_xscale, image_yscale, 0, c_white, AA)
        if (AA <= -0.46)
            room_speed = 30
        if (AA <= -0.5 && skipped == false)
        {
            if (ingame == true)
                room_goto(room_ed_ch1)
            else
                room_goto(PLACE_MENU_ch1)
        }
    }
}
if (ingame == false)
{
    if (button1_p_ch1() && skipped == false)
    {
        fade = instance_create_ch1(0, 0, obj_fadeout_ch1)
        with (fade)
            fadespeed = 0.04
        snd_volume_ch1(NOISE, 0, 20)
        skipped = true
    }
    if (skipped == true)
    {
        skiptimer += 1
        if (skiptimer >= 28)
            room_speed = 30
        if (skiptimer >= 30)
            room_goto(PLACE_MENU_ch1)
    }
}
