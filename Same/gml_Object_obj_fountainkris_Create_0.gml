colcol = 0
image_speed = 0
image_xscale = 2
image_yscale = 2
siner = 0
made = 0
adjust = 0
con = 0
global.interact = 1
y += 260
susx = (x - 80)
susy = (y + 20)
sussprite = spr_susieu_bright
susindex = 0
songplay = 0
with (obj_mainchara)
    visible = false
fin = instance_create(0, 0, obj_fadein)
if (global.chapter == 1)
{
    with (fin)
        fadespeed = -0.01
}
else
{
    with (fin)
        fadespeed = -0.005
}
