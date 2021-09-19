if (global.flag[60] == 0 || global.flag[36] == 1)
{
    global.myfight = 7
    global.mnfight = -1
    with (obj_battlecontroller)
        victory = true
    for (i = 0; i < 3; i += 1)
    {
        if (global.monster[i] == true && gml_Script_i_ex(global.monsterinstance[i]))
        {
            with (global.monsterinstance[i])
				gml_Script_scr_monsterdefeat()
        }
    }
}
else
{
    for (i = 0; i < 3; i += 1)
    {
        if (global.monster[i] == true && gml_Script_i_ex(global.monsterinstance[i]))
        {
            with (global.monsterinstance[i])
				gml_Script_scr_monsterdefeat()
        }
    }
    global.encounterno = global.flag[60]
    gml_Script_scr_encountersetup(global.encounterno)
    global.flag[60] = 0
    for (__j = 0; __j < 3; __j++)
    {
        if (global.monstertype[__j] != 0)
        {
            _newmonster = gml_Script_scr_monster_add(global.monstertype[__j], global.monsterinstancetype[__j])
            global.monsterinstance[_newmonster].x = (gml_Script_camerax() + 800)
            global.monsterinstance[_newmonster].y = global.monstermakey[__j]
            with (global.monsterinstance[_newmonster])
				gml_Script_scr_move_to_point_over_time(global.monstermakex[myself], global.monstermakey[myself], 10)
        }
    }
    global.myfight = 5
    myfightreturntimer = 15
    global.mnfight = -1
}
return;
