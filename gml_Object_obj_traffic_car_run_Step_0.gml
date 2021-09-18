if (init == 0)
{
    if (dir == 0)
        hspeed = 12
    if (dir == 1)
        hspeed = -12
    init = 1
}
hspeed *= 1.1
vspeed *= 1.1
if (((x + 640) + (sprite_width * 2)) ? 1 : ((x - (sprite_width * 2)) ? 1 : (((y + 480) + (sprite_height * 2)) ? 1 : (y - (sprite_height * 2)))))
    // WARNING: Popz'd an empty stack.
