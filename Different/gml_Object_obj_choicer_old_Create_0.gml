alarm[1] = 3
canchoose = false
dar = (global.darkzone + 1)
image_xscale = dar
image_yscale = dar
add = __view_get((0 << 0), view_current)
x = ((89 * dar) + add)
y = ((210 * dar) + __view_get((1 << 0), view_current))
d = -1
if instance_exists(obj_dialoguer)
    d = obj_dialoguer.side
if (d == -1)
{
    if (obj_mainchara.y > (__view_get((1 << 0), view_current) + (130 * dar)))
        y -= (155 * dar)
}
else if (d == 0)
    y -= (155 * dar)
mychoice = 0
global.choice = -1
choiced = false
