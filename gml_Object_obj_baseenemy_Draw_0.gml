if (state == 3)
{
    0.5
    // WARNING: Popz'd an empty stack.
}
if (custom_draw_example == 0)
    0.16666666666666666
else if (state == 0)
{
    if (flash == true)
        fsiner++
    siner += 0.16666666666666666
    if (global.mercymod[myself] >= global.mercymax[myself])
        gml_Script_draw_monster_body_part(sparedsprite, siner, x, y)
    else
    {
        gml_Script_draw_monster_body_part(1558, 1, (x + (sin(siner) * 2)), y)
        gml_Script_draw_monster_body_part(1558, 0, (x - (sin(siner) * 2)), (y + cos(siner)))
    }
}
if (becomeflash == false)
    flash = false
becomeflash = false
16777215
draw_text((x - 100), y, global.currentactingchar)
