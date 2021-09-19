if (firstskip == 1)
{
    global.acting[0] = 1
    acting = 1
    with (obj_writer_ch1)
        instance_destroy()
    with (obj_face_ch1)
        instance_destroy()
    with (obj_smallface_ch1)
        instance_destroy()
    if (global.charaction[0] == 1)
        global.attacking = true
    global.charturn = 3
    global.myfight = 3
}
if (global.monster[myself] == true)
{
    global.flag[(51 + myself)] = 4
    global.acting[0] = 1
    acting = 1
    if (global.mnfight == 1 && talked == 0)
    {
        actcon = 0
        gml_Script_scr_randomtarget_ch1()
        if (!instance_exists(obj_darkener_ch1))
            gml_Script_instance_create_ch1(0, 0, 1522)
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && global.mnfight == 1)
    {
        rtimer = 0
        gml_Script_scr_blconskip_ch1(-1)
        if (global.mnfight == 2)
        {
            if ((!instance_exists(obj_moveheart_ch1)) && hmake == 0)
            {
                gml_Script_scr_moveheart_ch1()
                hmake = 1
            }
            if (!instance_exists(obj_growtangle_ch1))
                gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), 1628)
        }
    }
    if (global.mnfight == 2 && attacked == false)
    {
        rtimer += 1
        if (rtimer == 12)
        {
            global.turntimer = 140
            if (turns == 0 || turns == 2)
            {
                dc = gml_Script_instance_create_ch1(x, y, 1558)
                dc.type = 20
                dc.target = mytarget
                dc.damage = (global.monsterat[myself] * 5)
                if (global.hp[global.char[0]] <= 70)
                    dc.damage = (global.monsterat[myself] * 3)
                global.turntimer = 180
            }
            if (turns == 1)
            {
                dc = gml_Script_instance_create_ch1(x, y, 1558)
                dc.type = 21
                dc.target = mytarget
                dc.damage = (global.monsterat[myself] * 5)
                if (global.hp[global.char[0]] <= 70)
                    dc.damage = (global.monsterat[myself] * 3)
                global.turntimer = 180
            }
            if (turns >= 3)
            {
                dc = gml_Script_instance_create_ch1(x, y, 1558)
                dc.difficulty = (turns * 2)
                if (turns == 6)
                    dc.difficulty = 30
                if (turns == 7)
                    dc.difficulty = 90
                dc.type = 24
                dc.target = mytarget
                dc.damage = (global.monsterat[myself] * 5)
            }
            turns += 1
            attacked = true
            global.typer = 6
            global.fc = 0
            global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_88_0")
        }
        else
            global.turntimer = 150
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 10)
            hmake = 0
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        firstskip = 0
        global.typer = 53
        rr = choose(0, 1, 2, 3)
        actcon = 1
        if (turns == 0)
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_120_0")
        if (turns == 1)
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_121_0")
        if (turns == 2)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_122_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_122_1")
        }
        if (turns == 3)
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_123_0")
        if (turns == 4)
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_124_0")
        if (turns == 5)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_127_0")
            with (obj_herosusie_ch1)
            {
                idlesprite = spr_susieb_idle_serious_ch1
                attacksprite = spr_susieb_attack_serious_ch1
            }
        }
        if (turns == 6)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_135_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_136_0")
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_137_0")
            with (obj_herosusie_ch1)
            {
                idlesprite = spr_susieb_idle_ch1
                attacksprite = spr_susieb_attack_ch1
            }
        }
        if (turns == 7)
        {
            global.typer = 54
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_145_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_145_1")
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerboss2_slash_Step_0_gml_145_2")
            actcon = 2
        }
        global.monsterdf[myself] -= 5
        gml_Script_scr_enemyblcon_ch1((obj_herosusie_ch1.x + 100), obj_herosusie_ch1.y, 7)
        with (obj_writer_ch1)
            skippable = false
    }
    if (actcon == 1 && (!instance_exists(obj_writer_ch1)))
    {
        actcon = 0
        gml_Script_scr_attackphase_ch1()
    }
    if (actcon == 2 && (!instance_exists(obj_writer_ch1)))
    {
        gml_Script_snd_free_all_ch1()
        gml_Script_snd_play_ch1(442)
        black = gml_Script_scr_dark_marker_ch1((gml_Script___view_get(0, 0) - 20), (gml_Script___view_get(1, 0) - 20), 4277)
        with (black)
        {
            image_blend = c_black
            depth = -10000
            image_xscale = 900
            image_yscale = 900
        }
        actcon = 3
        acttimer = 0
        if instance_exists(obj_lancerbattle2_event_ch1)
        {
            obj_lancerbattle2_event_ch1.black = black
            with (obj_lancerbattle2_event_ch1)
            {
                con = 52
                alarm[4] = 80
            }
        }
    }
    if (actcon == 3)
    {
    }
}
