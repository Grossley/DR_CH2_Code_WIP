destroyoffscreen = 1
tolerance = 64
teller = 0
if 80
{
    with (obj_mainchara)
    {
        if press_r
            other.teller = wspeed
        else if press_l
            other.teller = (-wspeed)
        else
            other.teller = 0
    }
}
(1 + (teller * 20))
friction = -0.3
alarm[0] = 300
image_xscale = 0.2
image_yscale = 2
image_angle = direction
explosiontype = 0
target = 3
active = true
timer = 0
damage = 10
aimtimer = 0
deathtimer = 0
