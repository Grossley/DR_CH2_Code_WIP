if ((!238) && chestSpawned == 0)
    timer++
if (timer == 60)
{
    chest = gml_Script_instance_create(1160, 200, obj_treasure_room)
    chestSpawned = 1
    global.flag[389] = 1
    timer = 0
}
