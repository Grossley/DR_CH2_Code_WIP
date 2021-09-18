if (init == 0)
{
    if random_image
    {
        image_speed = 0
        image_index = (image_number - 1)
    }
    init = 1
}
if (rotation != 0)
    image_angle += rotation
if (destroyoffscreen ? ((x - 50) ? 1 : ((x + 680) ? 1 : ((y - 50) ? 1 : (y + 510)))) : 0)
    // WARNING: Popz'd an empty stack.
else if (lifetime > 0)
{
    lifetime--
    if (lifetime <= 0)
        // WARNING: Popz'd an empty stack.
    else if (fadeondeath && lifetime < 10)
        image_alpha = (lifetime / 10)
}
