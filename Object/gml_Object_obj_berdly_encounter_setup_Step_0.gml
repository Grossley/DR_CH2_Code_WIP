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
        with (global.cinstance[1])
            visible = false
        with (obj_mainchara)
            fun = false
        with (obj_caterpillarchara)
            fun = false
        wp = gml_Script_snd_play(61)
        gml_Script_snd_volume(wp, 0.7, 0)
        wp2 = gml_Script_snd_play(138)
        gml_Script_snd_volume(wp2, 0.8, 0)
        with (obj_ch2_scene11a)
        {
            with (coaster_kris)
            {
                stop_siner = 1
                con = 1
                character_sprite = 1418
                actor.sprite_index = spr_krisb_attack
            }
            with (coaster_susie)
            {
                stop_siner = 1
                con = 1
                character_sprite = 1446
                actor.sprite_index = spr_susieb_attack
                if (global.charweapon[global.char[2]] == 0)
                    character_sprite = 1448
            }
            with (coaster_ralsei)
            {
                stop_siner = 1
                con = 1
                character_sprite = 1503
                actor.sprite_index = spr_ralsei_battleintro
            }
            with (coaster_berdly)
                stop_siner = 1
        }
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
