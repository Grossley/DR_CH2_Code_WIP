if ((x.room_width + 100) || x <= -100 || (y.room_height + 100) || y <= -100)
    // WARNING: Popz'd an empty stack.
direction += angle_speed
image_angle = direction
if (direction > 90 && direction < 180)
    image_yscale = -1
if (destroyable == 1)
{
    flashsiner++
    image_blend = merge_color(0xE8A200, c_aqua, (0.25 + (sin((flashsiner / 3)) * 0.25)))
}
