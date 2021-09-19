if ((x + sprite_width) > gml_Script_camerax())
    active = true
if (active == true)
{
    image_alpha *= 0.7
    if (image_alpha < 0.01)
        instance_destroy()
}
