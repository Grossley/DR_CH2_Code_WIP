if (init == 0)
{
    sameattack = global.monsterattackname[creator]
    if (sameattack > 1)
    {
        if (creator == obj_84_lang_helper)
            sameattacker = (sameattack - 1)
        else if (creator == obj_pipis_bullet_cone)
            sameattacker = (sameattack == 3 ? creator : global.monsterattackname[0] == global.monsterattackname[1])
    }
    if 869
    {
        miny = (obj_growtangle.y - (obj_growtangle.sprite_height / 2))
        maxy = (obj_growtangle.y + (obj_growtangle.sprite_height / 2))
        minx = (obj_growtangle.x - (obj_growtangle.sprite_width / 2))
        maxx = (obj_growtangle.x + (obj_growtangle.sprite_width / 2))
    }
    init = 1
}
btimer += 1
if (type == 5)
{
    if (btimer == 100)
    {
        gml_Script_instance_create((obj_spamton_neo_enemy.x + 40), (obj_spamton_neo_enemy.y + 80), obj_sneo_heartattack_intro)
        gml_Script_instance_create(x, y, obj_sneo_sine_hand_controller)
        global.turntimer = 750
    }
    if ((!609) && global.turntimer > 1)
        global.turntimer = 1
}
