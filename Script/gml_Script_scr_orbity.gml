if (argument4 == 0)
    return argument3;
var __theta = point_direction(argument0, argument1, argument2, argument3)
var __radius = point_distance(argument0, argument1, argument2, argument3)
__theta += argument4
return (argument1 + lengthdir_y(__radius, __theta));
