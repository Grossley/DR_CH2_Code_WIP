if (myself == 1)
{
    if (pipisSignAlpha > 0)
    {
        pipisSignAlpha -= 0.1
        var lang = 0
        if (global.lang == "ja")
            lang = 1
        draw_sprite_ext(spr_pipissign, lang, ((x - 4) + random_range(0, 1)), (((y + (sprite_height / 2)) + 12) + random_range(0, 1)), 1, 1, 0, c_white, pipisSignAlpha)
    }
}
if (state == 3)
{
    gml_Script_scr_enemyhurt_tired_after_damage(0.5)
    fatal = 1
    hurttimer -= 1
    if (hurttimer < 0)
        state = 0
    else
    {
        if (global.monster[myself] == false)
        {
            x = (xstart - 16)
            y = (ystart - 12)
            gml_Script_scr_defeatrun()
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
        draw_sprite_ext(hurtsprite, 0, ((x + shakex) + hurtspriteoffx), (y + hurtspriteoffy), 2, 2, 0, image_blend, 1)
    }
}
if (custom_draw_example == 0)
    gml_Script_scr_enemy_drawidle_generic(0)
else if (state == 0)
{
    if (flash == true)
        fsiner++
    siner += 0.16666666666666666
    if (global.mercymod[myself] >= global.mercymax[myself])
        gml_Script_draw_monster_body_part(sparedsprite, siner, x, y)
    else
    {
        gml_Script_draw_monster_body_part(spr_diamondm_custom_body_example, 1, (x + (sin(siner) * 2)), y)
        gml_Script_draw_monster_body_part(spr_diamondm_custom_body_example, 0, (x - (sin(siner) * 2)), (y + cos(siner)))
    }
}
if (becomeflash == false)
    flash = false
becomeflash = false
