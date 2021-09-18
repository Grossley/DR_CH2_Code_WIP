timer++
if (con == 1)
{
    t = ((t + increment) % 360)
    shift = (amplitude * dsin(t))
    y = (yy + shift)
    sprite_index = spr_berdly_plug_target
    x = (((xstart - (((y - gml_Script_cameray()) + 0.1) / 3.375)) + 18) + (sprite_width / 2))
}
if (con == 5)
{
    slash = gml_Script_instance_create(x, y, obj_slashEffect)
    slash.image_angle = (image_angle + 45)
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
