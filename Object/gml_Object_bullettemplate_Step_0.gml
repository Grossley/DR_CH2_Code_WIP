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
image_angle = direction
