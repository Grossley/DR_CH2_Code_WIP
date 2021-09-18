state = 0
lastState = 0
creator = obj_sneo_friedpipis
animConst = 9.42477796076938
timer = (animConst * 2)
attacktimer = 0
truetimer = 0
animSpeed = 1
sprite[0] = 1690
sprite[1] = 1682
sprite[2] = 1680
sprite[3] = 1695
sprite[4] = 1688
sprite[5] = 1692
for (i = 0; i < 6; i += 1)
{
    xOffset[i] = (sprite[i] * 2)
    yOffset[i] = (sprite[i] * 2)
}
targetx = obj_heart.x
targety = obj_heart.y
rotateCracker = 0
attackoffset = choose(0, 45)
whipball = gml_Script_instance_create(x, y, obj_tm_whip)
quizmode = 0
quizloop = 0
init = 0
damage = -1
target = -1
difficulty = 0
