timer += 1
if (timer >= 2)
{
    if (image_alpha < 1)
        image_alpha += 0.1
    if (image_alpha == 1)
        active = true
}
if (room == room_dark_chase2_ch1)
{
    if (x > 680)
        // WARNING: Popz'd an empty stack.
    if (x < -40)
        // WARNING: Popz'd an empty stack.
}
else
{
    if (room == room_dark_chase1_ch1)
    {
        if (x >= (gml_Script___view_get(0, 0) + 800))
            x -= 900
        if (x <= (gml_Script___view_get(0, 0) - 200))
            x += 900
    }
    if (y > (gml_Script___view_get(1, 0) + 600))
        // WARNING: Popz'd an empty stack.
    if (y < (gml_Script___view_get(1, 0) - 800))
        // WARNING: Popz'd an empty stack.
}
