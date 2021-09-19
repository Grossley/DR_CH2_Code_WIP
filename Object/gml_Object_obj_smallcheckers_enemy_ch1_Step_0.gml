if instance_exists(obj_basicattack_ch1)
{
    if (obj_basicattack_ch1.sprite_index == spr_attack_cut1_ch1)
        global.flag[211] = 3
    if (obj_basicattack_ch1.sprite_index == spr_attack_slap1_ch1)
        global.flag[211] = 3
}
if (global.monster[myself] == true)
{
    global.flag[(51 + myself)] = 4
    if (global.mnfight == 1 && talked == 0)
    {
        gml_Script_scr_randomtarget_ch1()
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && global.mnfight == 1)
    {
        rtimer = 0
        if (gml_Script_button1_p_ch1() && talktimer > 5)
            talktimer = talkmax
        talktimer += 1
        if (talktimer >= talkmax)
            global.mnfight = 2
    }
    if (global.mnfight == 2 && attacked == false)
    {
        with (obj_heartblcon_ch1)
            instance_destroy()
        rtimer += 1
        if (rtimer == 12)
        {
            rr = gml_Script_scr_monsterpop_ch1()
            global.turntimer = 1
            if (rr == 999)
            {
                dc = gml_Script_instance_create_ch1(x, y, 1557)
                dc.type = 0
                dc.target = mytarget
                dc.damage = (global.monsterat[myself] * 5)
            }
            turns += 1
            attacked = true
            global.typer = 6
            global.fc = 0
            rr = choose(0)
            if (rr == 0)
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_83_0")
        }
        else
            global.turntimer = 1
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (instance_exists(obj_hathyfightevent_ch1) && firstturn == 0)
            {
                if (checkhp1 <= global.hp[1])
                {
                    if (checkhp2 <= global.hp[2])
                    {
                        with (obj_battlecontroller_ch1)
                            noreturn = true
                        with (obj_hathyfightevent_ch1)
                            con = 15
                    }
                }
            }
            firstturn = 1
            if (battlecancel == 1)
                global.mercymod[myself] = 999
        }
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_127_0")
        gml_Script_scr_battletext_default_ch1()
    }
    if (acting == 2 && actcon == 0)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_136_0")
        gml_Script_scr_susface_ch1(1, 0)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_138_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_139_0")
        gml_Script_scr_ralface_ch1(4, 0)
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_141_0")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_142_0")
        gml_Script_scr_susface_ch1(7, 0)
        global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_144_0")
        global.msg[9] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_145_0")
        global.msg[10] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_146_0")
        global.msg[11] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_147_0")
        actcon = 5
        gml_Script_scr_battletext_default_ch1()
    }
    if (acting == 3 && actcon == 0)
    {
        actcon = 5
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_155_0")
        gml_Script_scr_susface_ch1(1, 0)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_157_0")
        gml_Script_scr_ralface_ch1(3, 6)
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_159_0")
        gml_Script_scr_susface_ch1(5, 0)
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_161_0")
        global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_162_0")
        global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_163_0")
        gml_Script_scr_ralface_ch1(9, 8)
        global.msg[10] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_165_0")
        gml_Script_scr_susface_ch1(11, 0)
        global.msg[12] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_167_0")
        global.msg[13] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_168_0")
        gml_Script_scr_ralface_ch1(14, 0)
        global.msg[15] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_170_0")
        gml_Script_scr_susface_ch1(16, 4)
        global.msg[17] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_172_0")
        global.monstercomment[myself] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_174_0")
        global.automiss[0] = true
        gml_Script_scr_battletext_default_ch1()
    }
    if (actcon == 1 && (!instance_exists(obj_writer_ch1)))
    {
        actcon = 0
        gml_Script_scr_attackphase_ch1()
    }
    if (actcon == 5 && instance_exists(obj_writer_ch1) == 0)
    {
        global.battleat[1] = 90
        global.battleat[2] = 90
        actcon = 6
        with (obj_herosusie_ch1)
        {
            attacktimer = 0
            state = 1
            points = (100 + round(random(40)))
            global.faceaction[myself] = 0
            if (global.automiss[0] == true)
                points = 0
        }
        if (global.automiss[0] == true)
        {
            hspeed = 5
            global.mercymod[myself] = 200
        }
        alarm[4] = 50
    }
    if (actcon == 7)
    {
        global.monster[myself] = false
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_217_0")
        gml_Script_scr_ralface_ch1(1, 3)
        global.flag[211] = 1
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_220_0")
        if (global.automiss[0] == true)
        {
            global.flag[211] = 2
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_224_0")
            gml_Script_scr_ralface_ch1(1, 3)
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_226_0")
            global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_smallcheckers_enemy_slash_Step_0_gml_227_0")
        }
        gml_Script_scr_battletext_ch1()
        actcon = 1
    }
}
if (global.myfight == 7)
    hspeed = 15