alarm[1] = 3
canchoose = false
dar = (global.darkzone + 1)
global.flag[33] = 0
image_xscale = dar
image_yscale = dar
remfc = global.fc
global.fc = 0
xx = __view_get((0 << 0), view_current)
yy = __view_get((1 << 0), view_current)
d = -1
if instance_exists(obj_dialoguer_ch1)
    d = obj_dialoguer_ch1.side
d_add = 0
if (d == -1)
{
    if (obj_mainchara_ch1.y <= (__view_get((1 << 0), view_current) + (130 * dar)))
        d_add = 155
}
else if (d != 0)
    d_add = 155
chx = ((140 * dar) + xx)
chy = (((36 + d_add) * dar) + yy)
hx = chx
hy = chy
mychoice = -1
global.choice = -1
choiced = false
choicetotal = 3
textposx[0] = 0
textposy[0] = 0
textposx[1] = 0
textposy[1] = 0
textposx[2] = 0
textposy[2] = 0
textposx[3] = 0
textposy[3] = 0
candraw = false
