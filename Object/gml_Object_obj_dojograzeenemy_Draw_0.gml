if (state == 3)
{
    gml_Script_scr_enemyhurt_tired_after_damage(0.5)
    gml_Script_scr_enemy_drawhurt_generic()
}
if (custom_draw_example == 0)
    gml_Script_scr_enemy_drawidle_generic(0.16666666666666666)
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
