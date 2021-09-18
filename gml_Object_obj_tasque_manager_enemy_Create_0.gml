// WARNING: Popz'd an empty stack.
talkmax = 90
image_speed = 0.16666666666666666
hurtsprite = spr_tm_hurt
timer = 0
sprite[0] = 1690
sprite[1] = 1682
sprite[2] = 1680
sprite[3] = 1684
sprite[4] = 1688
sprite[5] = 1692
sparesprite[0] = 1691
sparesprite[1] = 1683
sparesprite[2] = 1681
sparesprite[3] = 1687
sparesprite[4] = 1689
sparesprite[5] = 1693
sparedsprite = spr_npc_tasquemanager
for (i = 0; i < 6; i += 1)
{
    xOffset[i] = ((sprite[i] * 2) - 22)
    yOffset[i] = ((sprite[i] * 2) - 6)
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
