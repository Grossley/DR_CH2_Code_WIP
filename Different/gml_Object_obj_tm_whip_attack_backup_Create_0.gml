state = 0
creator = obj_sneo_friedpipis
animConst = 9.426
timer = (animConst * 2)
attacktimer = 0
truetimer = 0
sprite[0] = spr_tm_head
sprite[1] = spr_tm_body
sprite[2] = spr_tm_tail
sprite[3] = spr_tm_hand_l_attack
sprite[4] = spr_tm_hand_r
sprite[5] = spr_tm_legs
for (i = 0; i < 6; i += 1)
{
    xOffset[i] = (sprite_get_xoffset(sprite[i]) * 2)
    yOffset[i] = (sprite_get_yoffset(sprite[i]) * 2)
}
targetx = obj_heart.x
targety = obj_heart.y
rotateCracker = 0
attackoffset = 0
whipball = instance_create(x, y, obj_tm_whip)
quizmode = false
init = false
