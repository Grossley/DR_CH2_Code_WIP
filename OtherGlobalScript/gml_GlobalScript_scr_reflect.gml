var reversedir = ((argument0 + 180) % 360)
var angledif = angle_difference(argument1, reversedir)
if (angledif >= 90 || angledif <= -90)
    return argument0;
return (argument1 + angledif);
