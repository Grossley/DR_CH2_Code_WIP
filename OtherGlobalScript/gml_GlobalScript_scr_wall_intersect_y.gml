var xlength = lengthdir_x(argument2, argument3)
if (sign((xlength - x)) != sign((argument4 - x)))
    return (argument0 + lengthdir_x(argument2, argument3));
return (argument1 + lengthdir_y((abs((argument0 - argument4)) / xlength), argument3));
