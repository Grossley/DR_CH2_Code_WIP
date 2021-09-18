if (throwcon == 1)
{
    if (throwready == 0)
        angle += anglespeed
    if (angle >= 30)
        anglespeed = -2
    if (angle <= -15)
        anglespeed = 2
    if (throwalpha >= 0.9 && throwready == 1)
    {
        activatethrow = true
        with (obj_writer)
            // WARNING: Popz'd an empty stack.
    }
    if (throwready == 0)
    {
        throwready = 1
        with (obj_writer)
            // WARNING: Popz'd an empty stack.
        global.msg[0] = gml_Script_stringsetsubloc("* Press ~1 to determine the POWER!", gml_Script_scr_get_input_name(6), "obj_throwralsei_slash_Step_0_gml_26_0")
        // WARNING: Popz'd an empty stack.
    }
    if (activatethrow == true)
    {
        activatethrow = false
        throwready = 0
        image_index = 0
        image_speed = 0.5
        sprite_index = spr_susieb_attack_unarmed
        angledraw = 0
        throwcon = 2
        157
        ral = gml_Script_instance_create(rx, ry, obj_ralseithrown)
        ral.speed = mypower
        ral.mypower = mypower
        ral.image_xscale = 2
        ral.image_yscale = 2
        ral.direction = angle
        ral.image_angle = angle
        ral.gravity = ralgrav
    }
    if (throwready == 1)
    {
        mypower += (powerdir * powerspeed)
        if (mypower >= maxpower)
            powerdir = -1
        if (mypower <= minpower)
            powerdir = 1
    }
}
if (throwcon == 2)
{
    if (image_index >= 5)
        image_speed = 0
}
if (angledraw == 1)
{
    lx = lengthdir_x(mypower, angle)
    ly = lengthdir_y(mypower, angle)
    for (i = 0; i < 42; i += 1)
    {
        ralyadd = (ralgrav + (ralgrav * i))
        if (i > 0)
            ralyoff[i] = (ralyoff[(i - 1)] + ralyadd)
        else
            ralyoff[0] = ralyadd
    }
}
