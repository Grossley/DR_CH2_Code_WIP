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
        // WARNING: Popz'd an empty stack.
    if (x > (gml_Script___view_get(0, 0) + 760))
        // WARNING: Popz'd an empty stack.
    if (y < (gml_Script___view_get(1, 0) - 80))
        // WARNING: Popz'd an empty stack.
    if (y > (gml_Script___view_get(1, 0) + 580))
        // WARNING: Popz'd an empty stack.
}
if (updateimageangle == 1)
    image_angle = direction
