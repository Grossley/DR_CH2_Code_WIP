if (con == 1 && (!gml_Script_d_ex()))
{
    if instance_exists(obj_controller_dining3)
        obj_controller_dining3.dogcon = 1
    global.interact = 0
    con++
}
if (icon == 0 && x > (gml_Script_camerax() - 100) && x < (gml_Script_camerax() + 640) && y > (gml_Script_cameray() - 94) && y < (gml_Script_cameray() + 480))
{
    timer = 0
    icon = 1
}
if (icon == 1)
{
    timer++
    hspeed = 2
    if (timer == 12)
    {
        hspeed = 0
        icon++
    }
}
if (icon == 2)
{
    dogIndex = 0
    raise -= 2
    raise = clamp(raise, 0, 18)
    if (raise == 0)
        icon++
}
if (toss == 1)
{
    lid = gml_Script_instance_create((x + 24), (y + 18), obj_marker)
    lid.sprite_index = spr_saucerlid
    lid.image_xscale = 2
    lid.image_yscale = 2
    if (tossdir == "left")
        lid.direction = 120
    else
        lid.direction = 60
    lid.speed = 16
    toss = 2
    lidtimer = 0
}
if (toss == 2)
{
    lidtimer++
    if (tossdir == "left")
        lid.image_angle += 16
    else
        lid.image_angle -= 16
    lid.image_alpha *= 0.9
    if (lidtimer == 60)
    {
        var _temp_local_var_3 = lid
        instance_destroy()
    }
}
