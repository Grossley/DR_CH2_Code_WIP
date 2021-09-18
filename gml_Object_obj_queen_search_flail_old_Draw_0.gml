if (loading > 0)
{
    loading--
    if (loading == 0)
        image_index = 0
    else if ((loading % 3) == 0)
        image_index++
    // WARNING: Popz'd an empty stack.
    return;
}
if (broken == 0)
{
    for (i = 0; i < 4; i++)
    {
        xx = lerp(xstart, x, (i / 4))
        yy = lerp(ystart, y, (i / 4))
        draw_sprite(sprite_index, 1, xx, yy)
    }
}
// WARNING: Popz'd an empty stack.
if (bufferstate == 0)
{
    var _af = obj_buffer_afterimage
    _af.image_alpha = 0.5
}
16776960
("swing time = " + string(timer))
if (bufferstate == 1)
    draw_sprite(spr_queen_buffering, (obj_queen_buffercontroller.bufferbar % 8), x, y)
