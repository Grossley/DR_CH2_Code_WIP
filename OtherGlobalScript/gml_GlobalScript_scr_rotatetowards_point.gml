var __targetdir = point_direction(x, y, argument1, argument2)
var __diff = angle_difference(__targetdir, argument0)
if (abs(__diff) > argument3)
    return (argument0 + (sign(__diff) * argument3));
else
    return __targetdir;
