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
at = (duration / 2)
sizeScale = 0
if (timer <= 20)
{
    if (easestyle == 1)
    {
        if (timer <= (at / 2))
            sizeScale = (timer / (at / 2))
    }
    else
        sizeScale = (timer / at)
}
else if (timer < duration)
{
    sizeScale = ((at - (timer - at)) / at)
    if (easestyle == 1)
        sizeScale = ((-1 * sizeScale) * (sizeScale - 2))
}
if (easestyle == 0)
    sizeScale = ((-1 * sizeScale) * (sizeScale - 2))
image_xscale = sizeScale
image_yscale = (sizeScale * sizemultiplier)
image_blend = merge_color(startColor, c_white, sizeScale)
timer++
if (timer == 40)
    // WARNING: Popz'd an empty stack.
