var _temp_local_var_1;
if (state == 3)
{
    sleepcounter = 99
    sleeping = false
    global.monstercomment[myself] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Draw_0_gml_5_0")
    global.monsterstatus[myself] = false
    idlesprite = spr_susie_enemy_ch1
    hurttimer -= 1
    if (hurttimer < 0)
        state = 0
    else
    {
        if (global.monster[myself] == false)
        {
            gml_Script_snd_play_ch1(383)
            with (obj_susieandlancer_event_ch1)
            {
                var _temp_local_var_1 = s
                visible = true
                sprite_index = spr_susie_enemy_defeat_ch1
                depth = 100
            }
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
        draw_sprite_ext(hurtsprite, 0, (x + shakex), y, 2, 2, 0, image_blend, 1)
    }
}
if (state == 0)
{
    siner += 1
    thissprite = idlesprite
    if (global.mercymod[myself] >= global.mercymax[myself])
        thissprite = idlesprite
    draw_sprite_ext(thissprite, (siner / 6), x, y, 2, 2, 0, image_blend, 1)
    if (flash == true)
    {
        fsiner += 1
        gml_Script_d3d_set_fog_ch1(1, 16777215, 0, 1)
        draw_sprite_ext(thissprite, (siner / 6), x, y, 2, 2, 0, image_blend, (((-cos((fsiner / 5))) * 0.4) + 0.6))
        gml_Script_d3d_set_fog_ch1(0, 0, 0, 0)
    }
}
if (becomeflash == false)
    flash = false
becomeflash = false
