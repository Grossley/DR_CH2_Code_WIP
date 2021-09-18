if (fallspeed == 0 && y < (gml_Script___view_get(1, 0) - 80))
{
    timer = 30
    fallspeed = speed
    initialgravity = gravity
    speed = 0
    gravity = 0
    image_angle += 180
    direction += 180
    x -= 20
}
else if (timer > 0)
{
    timer--
    if (timer <= 0)
    {
        speed = fallspeed
        gravity = (-initialgravity)
    }
}
if (fallspeed > 0 && y >= ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - 30))
{
    141
    d = gml_Script_instance_create(x, y, obj_animation_dx)
    d.sprite_index = spr_thrash_missile_explosion
    d.depth = (depth - 5)
    // WARNING: Popz'd an empty stack.
}
