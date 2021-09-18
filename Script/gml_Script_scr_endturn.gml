for (i = 0; i < 12; i += 1)
    global.item[i] = tempitem[i][global.charturn]
for (i = 0; i < 12; i += 1)
{
    for (j = 0; j < 3; j += 1)
        tempitem[i][j] = global.item[i]
}
moveswapped = 0
with (obj_writer)
    // WARNING: Popz'd an empty stack.
with (obj_face)
    // WARNING: Popz'd an empty stack.
with (obj_smallface)
    // WARNING: Popz'd an empty stack.
global.attacking = false
for (i = 0; i < 3; i += 1)
{
    global.monsterattackname[i] = " "
    if (global.charauto[global.char[i]] == 1 && global.hp[global.char[i]] > 0)
    {
        if (global.monster[2] == true)
            global.chartarget[i] = 2
        if (global.monster[1] == true)
            global.chartarget[i] = 1
        if (global.monster[0] == true)
            global.chartarget[i] = 0
    }
    if (global.charaction[i] == 1)
        global.attacking = true
}
__noactors = 1
if (global.acting[0] == 1)
    __noactors = 0
for (__noactorsi = 0; __noactorsi < 3; __noactorsi++)
{
    if (global.actingsingle[__noactorsi] == 1)
        __noactors = 0
}
if (__noactors == 1)
    // WARNING: Popz'd an empty stack.
else
{
    global.charturn = 3
    global.myfight = 3
    global.currentactingchar = 0
    if (global.acting[0] == 0)
        // WARNING: Popz'd an empty stack.
    if (global.chapter == 2 && 707 && global.actingsingle[0] == 1 && global.actingsingle[1] == 0 && global.actingsingle[2] == 0)
        obj_sweet_enemy.simultotal_funny = 1
    if (global.acting[0] == 1 && global.actingsimul[0] == 1)
        // WARNING: Popz'd an empty stack.
}
with (obj_battlecontroller)
{
    messagepriority = -1
    attackpriority = -1
}
return;
