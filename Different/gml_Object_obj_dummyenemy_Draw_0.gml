if (state == 3)
{
    global.monsterstatus[myself] = true
    if (global.monstercomment[myself] == " ")
        global.monstercomment[myself] = "(Tired)"
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
        d3d_set_fog(true, c_white, 0, 1)
        draw_sprite_ext(thissprite, (siner / 5), x, y, 2, 2, 0, image_blend, (((-cos((fsiner / 5))) * 0.4) + 0.6))
        d3d_set_fog(false, c_black, 0, 0)
    }
}
if (becomeflash == false)
    flash = false
becomeflash = false
