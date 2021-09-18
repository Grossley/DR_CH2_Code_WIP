if (argument1 < -3 || argument1 > 7)
    return argument0;
switch argument1
{
    case -3:
        return gml_Script_ease_out_bounce(argument0, 0, 1, 1);
    case -2:
        return gml_Script_ease_out_elastic(argument0, 0, 1, 1);
    case -1:
        return gml_Script_ease_out_back(argument0, 0, 1, 1);
    case 0:
        return argument0;
    case 1:
        return sin((argument0 * 1.5707963267948966));
    case 2:
        return ((-argument0) * (argument0 - 2));
    case 6:
        return ((-power(2, (-10 * argument0))) + 1);
    case 7:
        argument0--
        return sqrt((1 - (argument0 * argument0)));
    default:
        argument0--
        if (argument1 == 4)
            return (-1 * (power(argument0, argument1) - 1));
        else
            return (power(argument0, argument1) + 1);
}

