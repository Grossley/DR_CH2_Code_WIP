init = 0
difficulty = 0
currentturn = 0
turns = 1
manualturns = 0
letters[0] = 0
turnspeed = 30
lastletter = -1
state = 0
timer = 0
voiceclips[0] = 210
voiceclips[1] = 211
voiceclips[2] = 212
voiceclips[3] = 213
canrepeat = 1
creator = obj_sneo_friedpipis
damage = -1
target = -1
animator = noone
if 454
    animator = 454
else
{
    animator = gml_Script_instance_create(x, y, obj_tm_whip_animation)
    animator.visible = false
    animator.state = -1
}
nextdifficulty = 0
dojo = 0
restart = 0
rounds = 0
