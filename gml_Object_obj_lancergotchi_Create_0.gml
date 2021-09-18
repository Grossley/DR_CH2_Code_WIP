image_xscale = 2
image_yscale = 2
image_speed = 0
dsprite = spr_lancer_dt
lsprite = spr_lancer_lt
rsprite = spr_lancer_rt
usprite = spr_lancer_ut
spinsprite[0] = dsprite
spinsprite[1] = lsprite
spinsprite[2] = usprite
spinsprite[3] = rsprite
alarm[0] = 60
movecon = 4
con = 0
minx = 100
maxx = 400
maxy = 280
x = (minx + 150)
y = maxy
depth = -20
rouxls = 0
if 9
    rouxls = 1
starwalker = 0
if 14
    starwalker = 1
sleeptimer = 0
remmovecon = 0
if global.flag[915] >= 1.5
    movecon = 10
if 3
    movecon = 11
if (global.plot >= 200)
    movecon = 4
if (movecon == 10)
{
    alarm[0] = -10
    sprite_index = spr_lancer_sleep
    image_speed = 0.1
    speed = 0
    hspeed = 0
    gravity = 0
}
if (movecon == 11)
{
    alarm[0] = -10
    sprite_index = spr_cutscene_20_lancer_stone
    image_speed = 0
    speed = 0
    hspeed = 0
    gravity = 0
}
