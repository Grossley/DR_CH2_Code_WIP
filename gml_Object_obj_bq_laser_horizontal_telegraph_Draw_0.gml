timer++
if (dir == 1)
{
    1
    255
    if (flash == true)
        16777215
    draw_rectangle(x, y, (x + 460), (y + 60), true)
    draw_rectangle((x + 1), (y + 1), (x + 461), (y + 61), true)
}
if (dir == -1)
{
    1
    255
    if (flash == true)
        16777215
    draw_rectangle(x, y, (x - 460), (y + 60), true)
    draw_rectangle((x + 1), (y + 1), (x - 461), (y + 61), true)
}
if (timer >= 2 && timer < 6)
{
    with (obj_bq_laser_exclamation_point)
    {
        if (image_blend == c_white)
            image_blend = c_red
        else
            image_blend = c_white
    }
    if (flash == false)
        flash = true
    else
        flash = false
}
if (timer == 6)
{
    with (obj_bq_laser_exclamation_point)
    {
        state = 2
        image_speed = 0
    }
}
if (timer > 6 && (!782))
    // WARNING: Popz'd an empty stack.
