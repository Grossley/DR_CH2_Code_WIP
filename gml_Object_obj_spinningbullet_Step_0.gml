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
if imageonly
    image_angle += spin
else
    direction += spin
if (updateimageangle == 1)
    image_angle = direction
