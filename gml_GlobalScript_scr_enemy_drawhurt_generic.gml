hurttimer -= 1
if (hurttimer < 0)
    state = 0
else
{
    if (global.monster[myself] == false)
        // WARNING: Popz'd an empty stack.
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
return;
