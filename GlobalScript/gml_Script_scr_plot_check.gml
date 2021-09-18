var __plot = argument0
if (__plot > 0)
{
    if (global.plot >= __plot)
        return 1;
    else
        return 0;
}
else if (global.plot < __plot)
    return 1;
else
    return 0;
