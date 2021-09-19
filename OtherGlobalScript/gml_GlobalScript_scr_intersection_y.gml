var ylength = lengthdir_y(argument2, argument3)
if (sign((ylength - y)) != sign((argument4 - y)))
    return (argument0 + lengthdir_x(argument2, argument3));
else
    return (argument0 + lengthdir_x((abs((argument1 - argument4)) / ylength), argument3));
