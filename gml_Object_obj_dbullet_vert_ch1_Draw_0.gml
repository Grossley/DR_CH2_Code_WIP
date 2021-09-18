if (dont == 0)
{
    if (active == false)
    {
        draw_sprite_ext(sprite_index, 0, x, y, (3 - (image_alpha * 2)), (3 - (image_alpha * 2)), 0, c_white, image_alpha)
        if (image_alpha < 1)
        {
            image_alpha += 0.1
            if (type == 1)
            {
                vspeed = 3
                gravity = -0.5
            }
        }
        else
        {
            if (type == 0)
            {
                if ((obj_heart_ch1.y + 8) < y)
                {
                    vspeed = 1
                    gravity = -0.2
                }
                else
                {
                    vspeed = -2
                    gravity = 1
                }
            }
            active = true
        }
    }
    draw_sprite_ext(sprite_index, 0, x, y, (2 - image_alpha), (2 - image_alpha), 0, c_white, image_alpha)
    if (type == 0)
    {
        if (speed > 8)
            speed = 8
    }
    if (y > (gml_Script___view_get(1, 0) + 500))
        // WARNING: Popz'd an empty stack.
    if (y < (gml_Script___view_get(1, 0) - 20))
        // WARNING: Popz'd an empty stack.
}
dont = 0
