if (argument1 < -3 || argument1 > 7)
    return argument0;
switch argument1
{
    case -3:
        return gml_Script_ease_in_bounce(argument0, 0, 1, 1);
    case -2:
        return gml_Script_ease_in_elastic(argument0, 0, 1, 1);
    case -1:
        var _s = 1.70158
        return ((argument0 * argument0) * (((_s + 1) * argument0) - _s));
    case 0:
        return argument0;
    case 1:
        return ((-cos((argument0 * 1.5707963267948966))) + 1);
    case 6:
        return power(2, (10 * (argument0 - 1)));
    case 7:
        return (-(sqrt((1 - sqr(argument0))) - 1));
    default:
        return power(argument0, argument1);
}

