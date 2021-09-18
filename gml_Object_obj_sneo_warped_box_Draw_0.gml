var colo = 
if (inhalespeed > 0 && inhale < 1)
    inhale = clamp((inhale + inhalespeed), 0, 1)
var _minx = lerp(minx, (lerp(maxx, suckx, suckpower) - 8), inhale)
var _maxy = lerp(maxy, (lerp(maxy, lower_sucky, suckpower) + 8), inhale)
var _miny = lerp(miny, (lerp(miny, upper_sucky, suckpower) - 8), inhale)
49152
image_alpha
draw_triangle(_minx, _miny, lerp(maxx, suckx, suckpower), lerp(_miny, upper_sucky, suckpower), lerp(maxx, suckx, suckpower), lerp(_maxy, lower_sucky, suckpower), 0)
draw_triangle(_minx, _miny, _minx, _maxy, lerp(maxx, suckx, suckpower), lerp(_maxy, lower_sucky, suckpower), 0)
0
draw_triangle((_minx + 4), (_miny + 4), lerp((maxx - 4), (suckx - 4), suckpower), lerp((_miny + 4), (upper_sucky + 3), suckpower), lerp((maxx - 4), (suckx - 4), suckpower), lerp((_maxy - 4), (lower_sucky - 3), suckpower), 0)
draw_triangle((_minx + 4), (_miny + 4), (_minx + 4), (_maxy - 4), lerp((maxx - 4), (suckx - 4), suckpower), lerp((_maxy - 4), (lower_sucky - 3), suckpower), 0)
colo
1
if (state == 1)
{
    if (timer >= 60)
        timer--
    if (timer >= 59)
        suckpower = (timer / 60)
    else
        suckpower = gml_Script_scr_ease_in((timer / 60), 3)
}
else if (state == 2)
{
    if (timer > 30)
        timer = 30
    if (snapback == 0)
        snapback = -1
    if (timer > 0)
        timer--
    suckpower = gml_Script_scr_ease_in((timer / 30), -2)
}
