if (timer != 0)
    timer++
else if (timer == 0)
{
    if (speed < 3)
        speed += 0.25
}
if (timer > 60)
{
    d = obj_fadein
    with (obj_fadeout)
        // WARNING: Popz'd an empty stack.
    d.image_blend = c_white
    d.fadespeed = -0.01
    if playerhit
        // WARNING: Popz'd an empty stack.
    global.turntimer = 1
    // WARNING: Popz'd an empty stack.
}
