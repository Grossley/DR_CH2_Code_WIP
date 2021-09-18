spawntype = 0
global.encounterno = 777
777
global.interact = 1
with (obj_mainchara)
    // WARNING: Popz'd an empty stack.
with (obj_darkcontroller)
    // WARNING: Popz'd an empty stack.
gml_Script_instance_create(0, 0, obj_battlecontroller)
global.myfight = -1
global.mnfight = 2
global.turntimer = 200
timer = 0
gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
gml_Script_instance_create((obj_growtangle.x - 6), (obj_growtangle.y - 8), obj_heart)
if (global.tempflag[26] == 1)
{
    global.monster[0] = global.tempflag[20]
    global.monster[1] = global.tempflag[21]
    global.monster[2] = global.tempflag[22]
    global.monsterinstance[0].spawntype = global.tempflag[23]
    global.monsterinstance[1].spawntype = global.tempflag[24]
    global.monsterinstance[2].spawntype = global.tempflag[25]
}
else
{
    global.monster[0] = true
    global.monster[1] = false
    global.monster[2] = false
    global.monsterinstance[0].spawntype = spawntype
    global.monsterinstance[1].spawntype = spawntype
    global.monsterinstance[2].spawntype = spawntype
    global.tempflag[26] = 1
}
