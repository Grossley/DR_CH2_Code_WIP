if (firecon == 0)
{
    image_yscale = 0.001
    image_xscale = 2
    if (effecttimer <= 42 && (effecttimer % 6) == 0)
    {
        if (_type == 1)
        {
            for (i = 0; i < 3; i++)
            {
                d = gml_Script_instance_create(x, y, obj_rouxls_power_up_orb)
                d.direction = (120 + (i * 120))
                d.lifetime = 16
                d.depth = (depth + 1)
                d.image_blend = image_blend
                d.parenttarget = id
                d._type = _type
            }
        }
        else
        {
            for (i = 0; i < 6; i++)
            {
                d = gml_Script_instance_create(x, y, obj_rouxls_power_up_orb)
                d.direction = (60 + (i * 60))
                d.lifetime = 16
                d.depth = (depth + 1)
                d.image_blend = image_blend
                d.parenttarget = id
                d._type = _type
            }
        }
    }
    if (effecttimer > 50)
        orbsize -= 4
    else
        orbsize++
    16777215
    draw_circle(x, y, max(2, ((orbsize / 2) + (sin((siner / 2)) * 2))), 0)
    effecttimer++
    siner++
}
else if (firecon == 1)
{
    active = true
    mask_index = spr_sneo_laser
    if (image_yscale < 0.5)
        image_yscale = gml_Script_scr_movetowards(image_yscale, 0.5, 0.1)
    else
        image_yscale -= 0.05
    16777215
    draw_circle(x, y, (image_yscale * 100), 0)
    // WARNING: Popz'd an empty stack.
}
else if (firecon == 2)
{
    16777215
    active = false
    mask_index = spr_nothing
    if (image_yscale <= 0.01)
        image_yscale -= 0.0025
    else
        image_yscale = gml_Script_scr_movetowards(image_yscale, 0.01, 0.1)
    if (image_yscale <= 0)
        // WARNING: Popz'd an empty stack.
    draw_circle(x, y, (image_yscale * 100), 0)
    // WARNING: Popz'd an empty stack.
}
