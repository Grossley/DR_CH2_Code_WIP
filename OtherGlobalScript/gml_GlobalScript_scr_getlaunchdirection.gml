if ((sqr(argument0) / argument2) <= argument1)
    return 45;
var __resultangle = (radtodeg(arcsin(((argument1 * argument2) / sqr(argument0)))) / 2)
if (argument3 >= 1)
    return (90 - __resultangle);
else if (argument3 <= -1)
    return __resultangle;
else
    return choose(__resultangle, (90 - __resultangle));
