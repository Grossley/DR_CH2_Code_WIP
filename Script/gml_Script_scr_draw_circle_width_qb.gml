var xx = argument0
var yy = argument1
var radius = argument2
var width = argument3
var steps = argument4
var h = (width / 2)
4
for (i = 0; i < steps; i += 1)
{
    draw_vertex((xx + lengthdir_x((radius - h), ((360 * i) / steps))), (yy + lengthdir_y((radius - h), ((360 * i) / steps))))
    draw_vertex((xx + lengthdir_x((radius + h), ((360 * i) / steps))), (yy + lengthdir_y((radius + h), ((360 * i) / steps))))
    draw_vertex((xx + lengthdir_x((radius + h), ((360 * (i + 1)) / steps))), (yy + lengthdir_y((radius + h), ((360 * (i + 1)) / steps))))
    draw_vertex((xx + lengthdir_x((radius + h), ((360 * (i + 1)) / steps))), (yy + lengthdir_y((radius + h), ((360 * (i + 1)) / steps))))
    draw_vertex((xx + lengthdir_x((radius - h), ((360 * (i + 1)) / steps))), (yy + lengthdir_y((radius - h), ((360 * (i + 1)) / steps))))
    draw_vertex((xx + lengthdir_x((radius - h), ((360 * i) / steps))), (yy + lengthdir_y((radius - h), ((360 * i) / steps))))
}
// WARNING: Popz'd an empty stack.
return;
