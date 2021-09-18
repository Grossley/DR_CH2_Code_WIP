timer += 1
if (timer >= 2)
{
    if (image_alpha < 1)
        image_alpha += 0.1
    if (image_alpha >= 1)
        active = true
}
if (timer == 2)
{
    move_towards_point((obj_mainchara_ch1.x + 20), (obj_mainchara_ch1.y + 50), 8)
    image_angle = direction
}
if (x >= (gml_Script___view_get(0, 0) + 800))
    // WARNING: Popz'd an empty stack.
if (x <= (gml_Script___view_get(0, 0) - 200))
    // WARNING: Popz'd an empty stack.
if (y > (gml_Script___view_get(1, 0) + 600))
    // WARNING: Popz'd an empty stack.
if (y < (gml_Script___view_get(1, 0) - 600))
    // WARNING: Popz'd an empty stack.
