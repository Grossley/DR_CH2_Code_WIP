if (bust == 0)
{
    global.interact = 1
    gml_Script_instance_create_ch1(0, 0, 1464)
    456
    alarm[3] = 6
    bust = 1
    for (i = 0; i < 12; i += 1)
        gml_Script_instance_create_ch1(((x + 20) + (i * 6)), ((y + 20) + random(25)), 1474)
}
