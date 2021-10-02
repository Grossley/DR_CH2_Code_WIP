if (state == 3)
{
    if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 2))
    {
        global.monsterstatus[myself] = true
        if (global.monstercomment[myself] == " ")
            global.monstercomment[myself] = scr_84_get_lang_string_ch1("obj_clubsenemy_old_slash_Draw_0_gml_6_0")
    }
    hurttimer -= 1
    if (hurttimer < 0)
        state = 0
    else
    {
        if (global.monster[myself] == false)
            scr_defeatrun_ch1()
        else if (global.mercymod[myself] > 0 || battlecancel == 1)
        {
            battlecancel = 0
            scr_mercyadd_ch1(myself, -100)
            betray = true
        }
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
        draw_sprite_ext(spr_clubs_hurt_ch1, 0, (x + shakex), y, 2, 2, 0, image_blend, 1)
    }
}
if (state == 0)
{
    siner += 1
    thissprite = spr_clubs_idle_ch1
    if (global.mercymod[myself] >= global.mercymax[myself])
        thissprite = spr_clubs_spared_ch1
    draw_sprite_ext(thissprite, (siner / 6), x, y, 2, 2, 0, image_blend, 1)
    if (flash == true)
    {
        fsiner += 1
        d3d_set_fog_ch1(true, c_white, 0, 1)
        draw_sprite_ext(thissprite, (siner / 6), x, y, 2, 2, 0, image_blend, (((-cos((fsiner / 5))) * 0.4) + 0.6))
        d3d_set_fog_ch1(false, c_black, 0, 0)
    }
}
if (becomeflash == false)
    flash = false
becomeflash = false
