gml_Script_scr_enemy_object_init()
talkmax = 90
image_speed = 0.16666666666666666
hurtsprite = spr_tm_hurt
timer = 0
sprite[0] = spr_tm_head
sprite[1] = spr_tm_body
sprite[2] = spr_tm_tail
sprite[3] = spr_tm_hand_l
sprite[4] = spr_tm_hand_r
sprite[5] = spr_tm_legs
sparesprite[0] = 1692
sparesprite[1] = 1684
sparesprite[2] = 1682
sparesprite[3] = 1688
sparesprite[4] = 1690
sparesprite[5] = 1694
sparedsprite = spr_npc_tasquemanager
for (i = 0; i < 6; i += 1)
{
    xOffset[i] = ((sprite_get_xoffset(sprite[i]) * 2) - 22)
    yOffset[i] = ((sprite_get_yoffset(sprite[i]) * 2) - 6)
}
timesOrdered = 0
timesCharged = 0
balloon = -4
timesTrained = 0
treatText = 0
badgeText = 0
quizDifficulty = 0
overrideAttack = 0
tailcheck = 0
knifecheck = 0
lastQuizLetter = 0
init = 0
violenceused = 0
violenceusedcon = 0
hitbysimonsaysattackcount = 0
simonsayscon = 0