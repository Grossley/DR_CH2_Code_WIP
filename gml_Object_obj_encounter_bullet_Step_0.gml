frozen = false
if (global.interact == 0 || global.interact == 4)
    frozen = false
if 200
    // WARNING: Popz'd an empty stack.
if (global.interact != 0 && global.interact != 4)
    frozen = true
if (speed != 0)
{
    fakespeed = speed
    speed = 0
}
fakedirection = direction
if (frozen == false)
{
    x += lengthdir_x(fakespeed, fakedirection)
    y += lengthdir_y(fakespeed, fakedirection)
}
if (!creator)
    // WARNING: Popz'd an empty stack.
image_angle = fakedirection
if (239 || 273)
{
    active = false
    // WARNING: Popz'd an empty stack.
}
