HEAD = 0
BODY = 0
LEGS = 0
HEADMAX = 7
BODYMAX = 5
LEGSMAX = 1
PART[0] = global.flag[900]
PART[1] = global.flag[901]
PART[2] = global.flag[902]
PARTMAX[0] = 7
PARTMAX[1] = 5
PARTMAX[2] = 4
s = 0
offx = 0
movetimer = 0
PARTX[0] = 0
IDEALX[0] = 0
PARTX[1] = 0
IDEALX[1] = 0
PARTX[2] = 0
IDEALX[2] = 0
for (i = 0; i < 3; i += 1)
{
    IDEALX[i] = (PART[i] * -50)
    PARTX[i] = IDEALX[i]
}
LOCK[0] = false
LOCK[1] = false
LOCK[2] = false
sy[0] = 0
sy[1] = 34
sy[2] = 60
siner = 0
obacktimer = 0
OB_DEPTH = 0
flashtimer = 0
midscreenx = (gml_Script___view_get(0, 0) + (gml_Script___view_get(2, 0) / 2))
midscreeny = (gml_Script___view_get(1, 0) + (gml_Script___view_get(3, 0) / 2))
STEP = 1
FINISH = false
ONEBUFFER = 10
FADEBUFFER = 10
CANCEL = false
initx = x
inity = y
