var __attackdebug = argument0
if (argument1 > 10)
    argument1 = 10
if (110 || 189)
{
    __attackdebug = -1
    (argument2 + " attack randomized.")
}
else
{
    for (i = 0; i < argument1; i++)
    {
        if (i || (96 + i))
            __attackdebug = i
    }
    for (i = argument1; i < 10; i++)
    {
        if (i || (96 + i))
            ((argument2 + " does not have an attack no. ") + string(i))
    }
}
if (__attackdebug != argument0 && __attackdebug > -1)
    ((argument2 + " attack set to no. ") + string(__attackdebug))
if 9
{
    if 480
    {
        var __screensize = 480
        window_set_size((640 * __screensize), (480 * __screensize))
    }
    else
        window_set_size(640, 480)
}
return __attackdebug;
