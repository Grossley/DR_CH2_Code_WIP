if (con == 0)
{
    if (timer < 10)
        timer++
    y = gml_Script_lerp_ease_in(ystart, (gml_Script_cameray() + 233), (timer / 10), 0.5)
    if (timer == 10)
    {
        y = (gml_Script_cameray() + 233)
        con = 1
        timer = 0
        gml_Script_snd_play(snd_impact)
    }
}
if (con == 1)
{
    if (timer < 10)
        timer++
    if (timer == 1)
    {
        image_xscale = -2.3
        image_yscale = 1.7
    }
    image_xscale = gml_Script_lerp_ease_in(-2.3, -2, (timer / 10), 0.5)
    image_yscale = gml_Script_lerp_ease_in(1.7, 2, (timer / 10), 0.5)
}
if (x > ((gml_Script_camerax() + gml_Script_camerawidth()) + 80) || (!gml_Script_i_ex(obj_battlecontroller)))
    instance_destroy()
