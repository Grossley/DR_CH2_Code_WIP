var _temp_local_var_3;
if (bodymode == 0)
{
    if (state == 3)
    {
        0.5
        hurttimer -= 1
        if (hurttimer < 0 && global.monster[myself] > false)
            state = 0
        else
        {
            if (global.monster[myself] == false)
                hurtsprite = idlesprite
            hurtshake += 1
            if (hurtshake > 1)
            {
                if (shakex > 0)
                    shakex -= 1
                if (shakex < 0)
                    shakex += 1
                shakex = (-shakex)
                hurtshake = 0
            }
            draw_sprite_ext(hurtsprite, 0, ((x + shakex) + hurtspriteoffx), (y + hurtspriteoffy), 2, 2, 0, image_blend, 1)
        }
    }
    if (global.flag[20] == 0)
    {
        idlesprite = spr_spamton_idle
        shakeamt = 0
    }
    if (global.flag[20] == 1)
    {
        idlesprite = spr_spamton_dark
        shakeamt = 0
    }
    if (global.flag[20] == 2)
    {
        idlesprite = spr_spamton_laugh_left
        shakeamt = 2
    }
    if (global.flag[20] == 3)
    {
        idlesprite = spr_cutscene_14_spamton_grab
        shakeamt = 2
    }
    if (global.flag[20] == 4)
    {
        idlesprite = spr_cutscene_14_spamton_arms_up
        shakeamt = 0
    }
    if (global.flag[20] == 5)
    {
        idlesprite = spr_cutscene_14_spamton_laugh_right
        shakeamt = 2
    }
    if (global.flag[20] == 6)
    {
        idlesprite = spr_cutscene_14_spamton_laugh_large
        shakeamt = 2
    }
    if (state == 0)
    {
        if (shakeamt > 0)
        {
            x = (remx + random_range((-shakeamt), shakeamt))
            y = (remy + random_range((-shakeamt), shakeamt))
        }
        else
        {
            x = remx
            y = remy
        }
    }
    0.16666666666666666
    if (becomeflash == false)
        flash = false
    becomeflash = false
}
if (bodymode == 1)
{
    if (bodycon == 0)
    {
        bodytimer = 0
        bodycon = 1
    }
    if (bodycon == 1)
    {
        if (bodytimer <= 16)
            bodytimer++
        if (bodytimer >= 16 && bodyadvance == 1)
        {
            bodyadvance = 0
            bodysiner = 0
            bodytimer = 0
            bodycon = 2
        }
        else
            draw_sprite_ext(spr_spamton_head_grow, (bodytimer / 3), x, y, image_xscale, image_xscale, image_angle, c_white, 1)
    }
    if (bodycon == 2)
    {
        bodysiner++
        headpiece.x = (x - 12)
        headpiece.y = ((y + (sin(bodysiner) * 6)) - 94)
        if (bodyadvance == 1)
        {
            bodyadvance = 0
            bodytimer = 16
            bodycon = 3
            var _temp_local_var_3 = headpiece
            x = -999
        }
        else
        {
            draw_sprite_ext(spr_spamton_laugh_bottom, 0, (x - 12), (y - 94), image_xscale, image_xscale, image_angle, c_white, 1)
            draw_sprite_ext(spr_spamton_laugh_middle, 0, (x - 12), ((y - 104) - (sin(bodysiner) * 4)), image_xscale, image_xscale, image_angle, c_white, 1)
        }
    }
    if (bodycon == 3)
    {
        bodytimer--
        if (bodytimer <= 0)
        {
            bodyadvance = 0
            bodysiner = 0
            bodytimer = 0
            bodycon = 0
            bodymode = 0
        }
        draw_sprite_ext(spr_spamton_head_grow, (bodytimer / 3), x, y, image_xscale, image_xscale, image_angle, c_white, 1)
    }
}
if headpiece
{
    if 66
    {
        if (bodymode == 0)
            bodymode = 1
        else
        {
            bodymode = 0
            headpiece.x = -999
        }
        "Spamton body mode changed"
    }
    if 78
    {
        bodyadvance = 1
        "Toggled Spamton's DISGUISTING mouth"
    }
    if 49
    {
        bulletoverride = 0
        "Attack override set to 0 (1)"
    }
    if 50
    {
        bulletoverride = 1
        "Attack override set to 1 (2)"
    }
    if 51
    {
        bulletoverride = 2
        "Attack override set to 2 (3)"
    }
    if 48
    {
        bulletoverride = -1
        "Attack override disabled"
    }
}
