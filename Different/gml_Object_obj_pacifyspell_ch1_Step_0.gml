if (instance_exists(target) == 0)
{
    con = 99
    instance_destroy()
}
if (con == 1)
{
    if (fail == 0)
    {
        siner += 1
        target.image_blend = merge_color(target.image_blend, flashcolor, 0.1)
        if ((siner % 2) == 0)
        {
            ai = instance_create_ch1((target.x + random(target.sprite_width)), ((target.y + target.sprite_height) - 20), obj_afterimage_ch1)
            ai.gravity = 0.5
            ai.sprite_index = spr_savepoint_ch1
            ai.image_speed = 0.2
        }
        target.x += ((siner / 4) + (sin((siner / 8)) * 10))
        target.y -= (siner / 5)
    }
    else
    {
        siner = 0
        con = 5
    }
}
if (con == 2)
{
    with (target)
        instance_destroy()
    instance_destroy()
}
if (instance_exists(target) == 0)
{
    con = 99
    instance_destroy()
}
if (con == 5)
{
    con = 6
    alarm[4] = 8
}
if (con == 6)
    target.image_blend = merge_color(target.image_blend, flashcolor, 0.12)
if (con == 7)
{
    con = 8
    alarm[4] = 8
}
if (con == 8)
    target.image_blend = merge_color(target.image_blend, c_white, 0.16)
if (con == 9)
{
    target.image_blend = c_white
    instance_destroy()
}
