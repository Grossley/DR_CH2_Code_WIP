if (con == 0)
{
    if (image_alpha < 1)
        image_alpha += 0.1
}
if (con == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.1
    else
        // WARNING: Popz'd an empty stack.
}
if (type == 1)
{
    siner += 0.5
    x = (xstart + (sin((siner / 6)) * 48))
}
if (global.turntimer < 1)
    // WARNING: Popz'd an empty stack.
