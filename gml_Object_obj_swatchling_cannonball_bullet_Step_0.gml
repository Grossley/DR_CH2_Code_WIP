// WARNING: Popz'd an empty stack.
if (colortimer <= 1)
{
    image_blend = merge_color(c_blue, c_white, colortimer)
    colortimer += (1/3)
}
if (x < (minx - 20) || x > (maxx + 20) || y < (miny - 20) || y > (maxy + 20))
{
    image_alpha -= 0.05
    if (image_alpha <= 0)
        // WARNING: Popz'd an empty stack.
}
image_angle += spin
