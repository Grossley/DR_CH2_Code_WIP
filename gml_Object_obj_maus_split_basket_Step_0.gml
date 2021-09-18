if (con == 0)
{
    if (extra_mode == 1)
        image_xscale = 1
    if (extra_mode == 0)
        image_xscale = 0.6
    if (y <= (yy + sprite_height))
        y += 10
    else
    {
        y = (yy + sprite_height)
        con = 1
        timer = 0
        siner = 0
    }
}
if (con == 1)
{
    siner++
    x = (xstart + (sin((siner / 6)) * 120))
    con = 2
    vspeed = 20
    friction = 0.5
    with (obj_maus_liddle)
    {
        con = 5
        timer = 0
    }
    91
}
if (con == 2)
{
    if (y >= (yy + 240))
        image_alpha -= 0.2
    if (image_alpha <= 0)
    {
        con = 3
        with (obj_maus_liddle)
        {
            if (captured == 0)
                con = 2
        }
        // WARNING: Popz'd an empty stack.
    }
}
if (con == 10)
{
    if (y <= (yy - 100))
        // WARNING: Popz'd an empty stack.
}
