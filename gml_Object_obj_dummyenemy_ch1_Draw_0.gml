if (state == 3)
{
    global.monsterstatus[myself] = true
    if (global.monstercomment[myself] == " ")
        global.monstercomment[myself] = gml_Script_scr_84_get_lang_string_ch1("obj_dummyenemy_slash_Draw_0_gml_4_0")
    hurttimer -= 1
    if (hurttimer < 0)
        state = 0
    else
    {
        if (global.monster[myself] == false)
        {
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
        draw_sprite_ext(sprite_index, 0, (x + shakex), y, 2, 2, 0, image_blend, 1)
    }
}
if (state == 0)
{
    siner += 1
    thissprite = sprite_index
    if (global.mercymod[myself] >= global.mercymax[myself])
        thissprite = sprite_index
    draw_sprite_ext(thissprite, (siner / 5), x, y, 2, 2, 0, image_blend, 1)
    if (flash == true)
    {
        fsiner += 1
        gml_Script_d3d_set_fog_ch1(1, 16777215, 0, 1)
        draw_sprite_ext(thissprite, (siner / 5), x, y, 2, 2, 0, image_blend, (((-cos((fsiner / 5))) * 0.4) + 0.6))
        gml_Script_d3d_set_fog_ch1(0, 0, 0, 0)
    }
}
if (becomeflash == false)
    flash = false
becomeflash = false
