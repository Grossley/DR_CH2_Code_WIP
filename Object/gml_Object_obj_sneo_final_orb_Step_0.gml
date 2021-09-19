if (timer != 0)
    timer++
else if (timer == 0)
{
    if (speed < 3)
        speed += 0.25
}
if (timer > 60)
{
    d = gml_Script_instance_create(gml_Script_camerax(), gml_Script_cameray(), obj_fadein)
    with (obj_fadeout)
        instance_destroy()
    d.image_blend = c_white
    d.fadespeed = -0.01
    if playerhit
        gml_Script_scr_damage_all()
    global.turntimer = 1
    instance_destroy()
}
