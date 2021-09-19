var __diff = angle_difference(argument1, argument0)
if (abs(__diff) > argument2)
    return (argument0 + (sign(__diff) * argument2));
else
    return argument1;
