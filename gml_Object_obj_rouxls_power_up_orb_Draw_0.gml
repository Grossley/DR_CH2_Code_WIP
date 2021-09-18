if (parenttarget != self && (!parenttarget))
{
    // WARNING: Popz'd an empty stack.
    return;
}
if (parenttarget != self && parenttarget)
{
    xstart = parenttarget.x
    ystart = parenttarget.y
}
if (init == 0)
{
    init = 1
    if thin
        lifetime /= 2
    if (track_target != noone)
    {
        xstart = 0
        ystart = 0
    }
    var _distance = (random_range(70, 90) * distance_multiplier)
    if (_type == 1)
        _distance = random_range(40, 45)
    xx = (xstart + lengthdir_x(_distance, direction))
    x = xx
    yy = (ystart + lengthdir_y(_distance, direction))
    y = yy
}
if (track_target != noone)
{
    xoff = track_target.x
    yoff = track_target.y
}
timer++
if (timer > lifetime)
{
    // WARNING: Popz'd an empty stack.
    return;
}
var _progress = (timer / lifetime)
image_alpha = 1
if thin
{
    image_blend = c_white
    image_yscale = 0.25
    image_angle = direction
    // WARNING: Popz'd an empty stack.
    x = (lerp(xx, xstart, gml_Script_scr_ease_in(_progress, 2)) + xoff)
    y = (lerp(yy, ystart, gml_Script_scr_ease_in(_progress, 2)) + yoff)
}
else
{
    var _drawalpha = 
    image_blend
    draw_circle(x, y, (radius - 2), 0)
    image_alpha
    x = (lerp(xx, xstart, gml_Script_scr_ease_in(_progress, 2)) + xoff)
    y = (lerp(yy, ystart, gml_Script_scr_ease_in(_progress, 2)) + yoff)
    draw_circle(x, y, radius, 0)
    if ((radius - 3) > 0)
    {
        16777215
        draw_circle(x, y, (radius - 2), 0)
    }
    _drawalpha
    radius = lerp(max_radius, 1, _progress)
}
