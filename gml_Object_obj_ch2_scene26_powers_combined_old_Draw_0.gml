if fade_in_out
    gml_Script_draw_sprite_ext_flash(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, merge_color(start_color, end_color, color_lerp), 1)
else
    // WARNING: Popz'd an empty stack.
for (i = 0; i < orb_count; i++)
{
    16777215
    var _distance = (200 + (sin((orbsiner / 30)) * 10))
    var _rotation = orb_spin
    var _yaw = orb_yaw
    if (i == (orb_count - 1) || orb_con == 2)
    {
        _distance *= orb_ease
        _rotation += ((360 / orb_count) * i)
        _yaw += ((360 / orb_count) * i)
    }
    else
    {
        _yaw += ((360 / (orb_count - (1 - orb_ease))) * i)
        _rotation += ((360 / (orb_count - (1 - orb_ease))) * i)
    }
    xx = (x + (sin(((_rotation / 180) * pi)) * _distance))
    yy = (y + (cos(((_yaw / 180) * pi)) * _distance))
    1
    16777215
    draw_circle(xx, yy, (16 + (((i + flicker_timer) % 2) * 2)), 0)
    15379086
    draw_circle(xx, yy, (20 - (((i + flicker_timer) % 2) * 2)), 0)
    16777215
}
orb_spin = ((orb_spin - spin_speed) % 360)
orb_siner += spin_speed
orb_yaw = orb_spin
flicker_timer = (1 - flicker_timer)
if (orb_con == 0 && orb_ease < 1)
    orb_ease += 0.05
else if (orb_con == 1)
{
    spin_speed += 0.5
    if (spin_speed > 20)
        orb_con = 2
}
else if (orb_con == 2)
    orb_ease -= 0.01
