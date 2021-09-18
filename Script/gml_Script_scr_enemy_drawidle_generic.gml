if (state == 0)
{
    fsiner += 1
    siner += argument0
    thissprite = idlesprite
    if (global.mercymod[myself] >= global.mercymax[myself])
        thissprite = sparedsprite
    gml_Script_draw_monster_body_part(thissprite, siner, x, y)
}
return;
