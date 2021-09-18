timer += 1
if (timer >= 30)
{
    active = false
    image_alpha -= 0.1
    if (image_alpha <= 0)
        // WARNING: Popz'd an empty stack.
    hspeed += lengthdir_x(0.2, bdir)
    vspeed += lengthdir_y(0.2, bdir)
}
