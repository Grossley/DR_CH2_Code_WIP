if (sprite_index == spr_cutscene_25_berdly_plug)
    // WARNING: Popz'd an empty stack.
else
{
    var x_offset = (image_xscale == -2 ? 30 : 0)
    draw_sprite_part_ext(spr_cutscene_25_berdly_plug, 0, 0, 0, 20, 100, ((x - 20) + x_offset), (y - 210), 2, 2, c_white, 1)
    // WARNING: Popz'd an empty stack.
}
if (con == 5 || con == 10)
{
    elecsiner++
    // WARNING: Popz'd an empty stack.
    if (con >= 10)
        draw_sprite_ext(spr_cutscene_25_berdly_grab_electrocute_yellowarm, (image_index + 2), x, y, image_xscale, image_yscale, image_angle, c_white, (elecsiner / 10))
}
if (con == 20)
{
    16777215
    draw_circle(x, y, circlesize, 0)
    circlesize += 10
}
