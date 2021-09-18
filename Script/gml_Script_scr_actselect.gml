if global.monsterinstance[argument0]
{
    if (global.char[global.charturn] == 1)
        global.monsterinstance[argument0].acting = (argument1 + 1)
    if (global.char[global.charturn] == 2)
        global.monsterinstance[argument0].actingsus = (argument1 + 1)
    if (global.char[global.charturn] == 3)
        global.monsterinstance[argument0].actingral = (argument1 + 1)
    if (global.char[global.charturn] == 4)
        global.monsterinstance[argument0].actingnoe = (argument1 + 1)
}
if (global.char[global.charturn] == 1)
{
    global.actingsimul[0] = actsimul[argument1]
    global.acting[0] = 1
    global.actingsingle[0] = 1
    global.actingtarget[global.charturn] = argument0
    if (global.actactor[argument0][argument1] == 2)
        global.acting[charpos[1]] = 1
    if (global.actactor[argument0][argument1] == 3)
        global.acting[charpos[2]] = 1
    if (global.actactor[argument0][argument1] == 4)
    {
        global.acting[2] = 1
        global.acting[1] = 1
    }
    if (global.actactor[argument0][argument1] == 5)
        global.acting[charpos[3]] = 1
    for (i = 0; i < 3; i += 1)
    {
        if (global.acting[i] == 1)
        {
            global.faceaction[i] = 6
            global.charaction[i] = 9
        }
    }
}
else
{
    global.actingtarget[global.charturn] = argument0
    global.actingsingle[global.charturn] = 1
    global.actingsimul[global.charturn] = actsimul[argument1]
    global.faceaction[global.charturn] = 6
    global.charaction[global.charturn] = 9
}
return;
