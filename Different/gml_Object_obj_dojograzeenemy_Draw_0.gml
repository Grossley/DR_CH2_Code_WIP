if (state == 3)
{
    scr_enemyhurt_tired_after_damage(0.5)
    scr_enemy_drawhurt_generic()
}
if (custom_draw_example == 0)
    scr_enemy_drawidle_generic(0.16666666666666666)
else if (state == 0)
{
    if (flash == true)
        fsiner++
    siner += 0.16666666666666666
    if (global.mercymod[myself] >= global.mercymax[myself])
        draw_monster_body_part(sparedsprite, siner, x, y)
    else
    {
        draw_monster_body_part(spr_diamondm_custom_body_example, 1, (x + (sin(siner) * 2)), y)
        draw_monster_body_part(spr_diamondm_custom_body_example, 0, (x - (sin(siner) * 2)), (y + cos(siner)))
    }
}
if (becomeflash == false)
    flash = false
becomeflash = false
