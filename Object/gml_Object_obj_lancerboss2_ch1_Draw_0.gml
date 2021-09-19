if (state == 3)
{
    shakesine = 0
    siner = 0
    hurttimer -= 1
    if (hurttimer < 0)
        state = 0
    else
    {
        if (global.monster[myself] == false)
            gml_Script_scr_defeatrun_ch1()
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
        if ((global.monsterhp[myself] / global.monstermaxhp[myself]) <= 0.65)
            hurtlevel = 1
        if ((global.monsterhp[myself] / global.monstermaxhp[myself]) <= 0.2)
            hurtlevel = 2
        draw_sprite_ext(hurtsprite, 0, (x + (shakex * 2)), y, 2, 2, 0, image_blend, 1)
    }
}
if (state == 0)
{
    shakesine += 1
    siner += 1
    shx = random(((sin((shakesine / 6)) * hurtlevel) / 1.5))
    thissprite = idlesprite
    if (global.mercymod[myself] >= global.mercymax[myself])
        thissprite = sparedsprite
    draw_sprite_ext(thissprite, hurtlevel, (x + shx), y, 2, 2, 0, image_blend, 1)
    if (flash == true)
    {
        fsiner += 1
        gml_Script_d3d_set_fog_ch1(1, 16777215, 0, 1)
        draw_sprite_ext(thissprite, hurtlevel, x, y, 2, 2, 0, image_blend, (((-cos((fsiner / 5))) * 0.4) + 0.6))
        gml_Script_d3d_set_fog_ch1(0, 0, 0, 0)
    }
}
if (becomeflash == false)
    flash = false
becomeflash = false
