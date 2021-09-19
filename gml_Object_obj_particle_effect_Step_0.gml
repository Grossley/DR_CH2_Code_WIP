if (init == 0)
{
    if random_image
    {
        image_speed = 0
        image_index = irandom((image_number - 1))
    }
    init = 1
}
if (rotation != 0)
    image_angle += rotation
if (destroyoffscreen && (x < (gml_Script_camerax() - 50) || x > (gml_Script_camerax() + 680) || y < (gml_Script_cameray() - 50) || y > (gml_Script_cameray() + 510)))
    instance_destroy()
else if (lifetime > 0)
{
    lifetime--
    if (lifetime <= 0)
        instance_destroy()
    else if (fadeondeath && lifetime < 10)
        image_alpha = (lifetime / 10)
}
