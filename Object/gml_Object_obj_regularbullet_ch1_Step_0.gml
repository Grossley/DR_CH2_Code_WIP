if (wall_destroy == 1)
{
    if (x < (gml_Script___view_get(0, 0) - 40))
        instance_destroy()
    if (x > (gml_Script___view_get(0, 0) + 680))
        instance_destroy()
    if (y < (gml_Script___view_get(1, 0) - 40))
        instance_destroy()
    if (y > (gml_Script___view_get(1, 0) + 520))
        instance_destroy()
}
