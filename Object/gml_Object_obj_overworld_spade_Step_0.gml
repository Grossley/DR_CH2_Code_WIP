timer += 1
if (timer >= 2)
{
    if (image_alpha < 1)
        image_alpha += 0.1
    if (image_alpha == 1)
        active = true
}
if (room == 9999999)
{
    if (x > 680)
        instance_destroy()
    if (x < -40)
        instance_destroy()
}
else
{
    if (room == 9999999999999)
    {
        if (x >= (gml_Script___view_get(0, 0) + 800))
            x -= 900
        if (x <= (gml_Script___view_get(0, 0) - 200))
            x += 900
    }
    if (y > (gml_Script___view_get(1, 0) + 600))
        instance_destroy()
    if (y < (gml_Script___view_get(1, 0) - 800))
        instance_destroy()
}