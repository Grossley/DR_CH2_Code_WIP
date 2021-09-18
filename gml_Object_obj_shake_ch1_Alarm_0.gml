if (global.flag[12] == 0)
{
    gml_Script___view_set(0, camera, (mycamerax + (shakex * shakesign)))
    gml_Script___view_set(1, camera, (mycameray + (shakey * shakesign)))
}
if (permashake == false)
{
    if (shakex > 0)
        shakex -= 1
    if (shakey > 0)
        shakey -= 1
}
shakesign = (-shakesign)
alarm[0] = shakespeed
if (shakex == 0 && shakey == 0)
    // WARNING: Popz'd an empty stack.
