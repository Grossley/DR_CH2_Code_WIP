if (!parent)
{
    // WARNING: Popz'd an empty stack.
    return;
}
if (parent != self)
{
    x = (parent.x + lengthdir_x(85, (parent.image_angle + 268)))
    y = (parent.y + lengthdir_y(85, (parent.image_angle + 268)))
}
if (firecon == 0)
{
    image_yscale = 0.001
    if (effecttimer <= 8 && (effecttimer % 6) == 0)
    {
        for (i = 0; i < 6; i++)
        {
            d = gml_Script_instance_create(x, y, obj_rouxls_power_up_orb)
            d.direction = (60 + (i * 60))
            d.lifetime = 12
            d.depth = (depth + 1)
            d.image_blend = image_blend
        }
    }
    if (effecttimer > 14)
        orbsize -= 8
    else
        orbsize += 2
    if (effecttimer == 18)
        firecon = 1
    16777215
    draw_circle(x, y, max(2, ((orbsize / 2) + (sin((siner / 2)) * 2))), 0)
    effecttimer++
    siner++
}
else if (firecon == 1)
{
    active = true
    16777215
    draw_circle(x, y, (image_yscale * 100), 0)
    effecttimer++
    if (effecttimer == 20)
    {
        bullet = gml_Script_instance_create((x + 30), ystart, obj_sneo_laser_bullet)
        bullet.sprite_index = spr_neo_heart_bullet_elevator
        bullet.image_angle = 180
        bullet.direction = 0
        bullet.image_xscale = 1
        bullet.image_yscale = 1
        bullet.speed = -2
        bullet.friction = -0.35
    }
    if (effecttimer == 27)
        firecon = 2
}
else if (firecon == 2)
{
    16777215
    active = false
    draw_circle(x, y, (image_yscale * 100), 0)
    // WARNING: Popz'd an empty stack.
}
