// WARNING: Popz'd an empty stack.
can = 0
if (y < -20)
    can = 1
if (x < (gml_Script___view_get(0, 0) - 20))
    can = 1
if (x > (gml_Script___view_get(0, 0) + 660))
    can = 1
if (can == 1)
{
    255
    draw_line(x, y, (x + lengthdir_x(1000, direction)), (y + lengthdir_y(1000, direction)))
}
if (can == 0 && soundcon == 0)
{
    362
    soundcon = 1
}
