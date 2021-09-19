if (grazed == 1)
{
    grazetimer += 1
    if (grazetimer >= 30)
    {
        grazetimer = 0
        grazed = 0
    }
}
if (wall_destroy == 1)
{
    if (x < (gml_Script___view_get(0, 0) - 80))
        instance_destroy()
    if (x > (gml_Script___view_get(0, 0) + 760))
        instance_destroy()
    if (y < (gml_Script___view_get(1, 0) - 80))
        instance_destroy()
    if (y > (gml_Script___view_get(1, 0) + 580))
        instance_destroy()
}
if (updateimageangle == 1)
    image_angle = direction
