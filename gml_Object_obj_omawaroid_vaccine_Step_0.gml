d = instance_nearest(x, y, obj_viro_needle)
if (d != noone && d.active && x < d.x)
{
    var distance = point_distance(x, y, d.x, d.y)
    if (distance <= 80)
        y = gml_Script_scr_movetowards(y, d.y, ((80 - distance) / 5))
}
if (x > obj_growtangle.x && image_alpha == 0)
    // WARNING: Popz'd an empty stack.
