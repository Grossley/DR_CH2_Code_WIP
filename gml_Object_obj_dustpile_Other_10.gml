if (bust == 0)
{
    global.interact = 1
    gml_Script_instance_create(0, 0, obj_shake)
    189
    alarm[3] = 6
    bust = 1
    for (i = 0; i < 12; i += 1)
        gml_Script_instance_create(((x + 20) + (i * 6)), ((y + 20) + random(25)), obj_dustball_pilebreak)
}
