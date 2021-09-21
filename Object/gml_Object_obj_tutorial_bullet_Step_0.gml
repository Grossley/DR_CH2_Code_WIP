image_angle = direction
if (y > (gml_Script_cameray() + 220) || x < ((gml_Script_camerax() + 320) - 120) || x > ((gml_Script_camerax() + 320) + 120))
    fade = 1
if (fade == 1)
{
    image_alpha *= 0.6
    if (image_alpha < 0.01)
        instance_destroy()
}
if (ticked == 0)
{
    if (distance_to_object(obj_tutorial_puzboy) < 20 && y > 205)
    {
        ticked = 1
        with (obj_tutorial_puzboy)
            tickAlpha = 1
        gml_Script_snd_play(snd_graze)
    }
}
