if (explode == 0)
{
    remx = x
    remy = y
    image_angle += rotspeed
    remrot = image_angle
}
if ((y.room_height - 100) && explode == 0)
{
    461
    461
    remx = x
    remy = y
    explode = 1
    explodetimer = 0
    remrot = image_angle
    image_angle = 0
    speed = 0
    gravity = 0
    mask_index = spr_tallpx_ch1
    sprite_index = spr_tallpx_ch1
    grazed = 0
    y = 0
    depth += 1
}
if (explode == 1)
{
    active = false
    image_xscale += 8
    if (image_xscale >= 16)
        active = true
    if (image_xscale >= 32)
        explode = 2
}
if (explode == 2)
{
    image_xscale -= 4
    if (image_xscale <= 16)
    {
        image_alpha -= 0.25
        active = false
    }
    if (image_xscale <= 0)
        // WARNING: Popz'd an empty stack.
}
if (grazed == 1)
{
    with (obj_dbulletcontroller_ch1)
        made += 0.2
    grazed = 2
}
