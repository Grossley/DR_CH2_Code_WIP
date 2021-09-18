image_xscale *= 1.3
image_yscale *= 1.3
image_xscale = clamp(image_xscale, 0, 3)
image_yscale = clamp(image_yscale, 0, 2)
if (exploded == 1)
{
    active = false
    image_index += 1
    image_alpha -= 0.2
    if (image_index >= 4)
        // WARNING: Popz'd an empty stack.
}
if (obj_mainchara.battlemode == 0)
    image_alpha *= 0.9
if (image_alpha < 0.01)
    // WARNING: Popz'd an empty stack.
if (hit != 0)
    exploded = 1
