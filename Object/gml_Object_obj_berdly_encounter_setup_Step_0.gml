if (fightcon == 2)
{
    counttimer += 1
    if (counttimer == 1)
    {
        gml_Script_instance_create(x, y, o_berdly_hide_intro_markers)
        global.specialbattle = 3
        global.encounterno = 58
        encounterflag = 529
        global.flag[54] = encounterflag
        gml_Script_scr_encountersetup(global.encounterno)
        if (global.flag[9] != 2)
        {
            global.flag[9] = 1
            global.batmusic[0] = gml_Script_snd_init("berdly_chase.ogg")
        }
        global.interact = 2
        if (global.flag[9] == 1)
            gml_Script_snd_volume(global.currentsong[1], 0, 20)
        with (obj_mainchara)
            visible = false
        with (global.cinstance[0])
            visible = false
    }
    if (counttimer >= 20)
    {
        counttimer = 0
        fightcon = 3
        gml_Script_instance_create(0, 0, obj_battlecontroller)
        with (obj_heroparent)
            visible = false
        instance_destroy()
    }
}
