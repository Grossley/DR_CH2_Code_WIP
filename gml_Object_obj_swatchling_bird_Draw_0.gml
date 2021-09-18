if (colorlerp < 1)
{
    if (image_alpha < 1)
        image_alpha += 0.2
    else
    {
        image_blend = merge_color(startcolor, c_white, colorlerp)
        colorlerp += 0.05
    }
}
if (colorlerp == 1)
{
    var fadebird = 0
    if (hspeed > 0 ? (x + 10) : 0)
        fadebird = 1
    if (hspeed < 0 ? (x - 10) : 0)
        fadebird = 1
    if (vspeed > 0 ? (y + 10) : 0)
        fadebird = 1
    if (vspeed < 0 ? (y - 10) : 0)
        fadebird = 1
    if (fadebird == 1)
        image_alpha -= 0.2
    if (image_alpha <= 0)
        // WARNING: Popz'd an empty stack.
}
// WARNING: Popz'd an empty stack.
