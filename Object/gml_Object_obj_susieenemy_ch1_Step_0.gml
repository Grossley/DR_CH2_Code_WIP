if (global.monster[myself] == true && defeated == 0)
{
    global.flag[(51 + myself)] = 4
    event_user(1)
    if (talked == 1 && global.mnfight == 1)
    {
        rtimer = 0
        gml_Script_scr_blconskip_ch1(15)
        if (global.mnfight == 2)
        {
            if (!instance_exists(obj_moveheart_ch1))
                gml_Script_scr_moveheart_ch1()
            if (!instance_exists(obj_growtangle_ch1))
                gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), 1628)
        }
    }
    if (global.mnfight == 2 && attacked == false)
    {
        rtimer += 1
        if (rtimer == 12)
        {
            global.turntimer = 180
            if (attacktype == 2)
            {
                dc = gml_Script_instance_create_ch1((x + (sprite_width / 2)), (y + (sprite_height / 2)), 1558)
                dc.type = 85
                dc.target = mytarget
                dc.damage = (global.monsterat[myself] * 5)
                dc.timepoints = 3
                dc.grazepoints = 5
                if (sleeping == true)
                {
                    var _temp_local_var_4 = dc
                    instance_destroy()
                }
            }
            if (attacktype == 1)
            {
                dc = gml_Script_instance_create_ch1(x, y, 1558)
                dc.type = 20
                dc.target = mytarget
                dc.damage = (global.monsterat[myself] * 5)
                dc.timepoints = 3
                dc.grazepoints = 3
                if (sleeping == true)
                {
                    var _temp_local_var_5 = dc
                    instance_destroy()
                }
            }
            if (attacktype == 0 && sleeping == false)
            {
                bike = gml_Script_instance_create_ch1(obj_lancerboss3_ch1.x, obj_lancerboss3_ch1.y, 1601)
                with (obj_lancerboss3_ch1)
                    visible = false
                bike.target = mytarget
                bike.damage = (global.monsterat[myself] * 5)
                global.turntimer = 999
            }
            attacktype += 1
            if (attacktype >= 3)
                attacktype = 0
            turns += 1
            attacked = true
            global.typer = 6
            global.fc = 0
            rr = choose(0, 1, 2, 3, 4)
            global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_79_0")
            if (rr == 1)
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_80_0")
            if (rr == 2)
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_81_0")
            if (rr == 3)
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_82_0")
            if (rr == 4)
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_83_0")
        }
        else
            global.turntimer = 120
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (battlecancel == 1)
                global.mercymod[myself] = 999
            if (battlecancel == 2)
            {
                with (obj_battlecontroller_ch1)
                    noreturn = true
                con = 1
                battlecancel = 3
            }
        }
    }
}
if (con == 1)
{
    con = 2
    alarm[4] = 10
}
if (con == 3)
{
    global.typer = 50
    global.mercymod[myself] = 999
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_118_0")
    gml_Script_scr_enemyblcon_ch1((x - 160), y, 3)
    con = 4
}
if (con == 4 && (!instance_exists(obj_writer_ch1)))
{
    hspeed = 15
    con = 5
    alarm[4] = 15
    with (obj_battlecontroller_ch1)
        alarm[2] = 17
}
if (con == 6)
{
    with (obj_battlecontroller_ch1)
        noreturn = false
    gml_Script_scr_monsterdefeat_ch1()
    instance_destroy()
    con = 7
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        _armordf = ((global.itemdf[2][0] + global.itemdf[2][1]) + global.itemdf[2][2])
        _armorat = ((global.itemat[2][0] + global.itemat[2][1]) + global.itemat[2][2])
        totaldf = string((global.df[2] + _armordf))
        totalat = string((global.at[2] + _armorat))
        totalhp = string(global.maxhp[2])
        global.msg[0] = gml_Script_scr_84_get_subst_string_ch1(gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_159_0"), totalat, totaldf, totalhp)
        if (_armordf > 0)
            global.msg[0] = gml_Script_scr_84_get_subst_string_ch1(gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_162_0"), totalat, totaldf, totalhp)
        gml_Script_scr_battletext_default_ch1()
    }
    if (acting == 2 && actcon == 0)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_170_0")
        if (anythingcounter == 1)
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_171_0")
        if (anythingcounter == 2)
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_172_0")
        if (anythingcounter == 3)
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_173_0")
        if (anythingcounter >= 4)
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_174_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_175_0")
        if (anythingcounter >= 1)
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_176_0")
        gml_Script_scr_battletext_default_ch1()
        anythingcounter += 1
        actcon = 1
    }
    if (acting == 3 && actcon == 0)
    {
        with (obj_monsterparent_ch1)
            susie_act = 3
        gml_Script_snd_pause_ch1(global.batmusic[1])
        if (lullabied == 0)
        {
            singy = gml_Script_snd_play_ch1(393)
            var _temp_local_var_11 = object_index
            lullabied = 1
        }
        else
        {
            singy = gml_Script_snd_play_ch1(394)
            _temp_local_var_11 = object_index
            lullabied = 0
        }
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susieenemy_slash_Step_0_gml_197_0")
        with (obj_heroralsei_ch1)
            visible = false
        ralsing = gml_Script_scr_dark_marker_ch1(obj_heroralsei_ch1.x, obj_heroralsei_ch1.y, 3848)
        var _temp_local_var_12 = ralsing
        image_speed = 0.2
    }
    if (actcon == 10)
    {
        lullatimer += 1
        if (lullatimer >= 30)
            actcon = 11
    }
    if (actcon == 11 && instance_exists(obj_writer_ch1) == 0)
    {
        var _temp_local_var_14 = ralsing
        instance_destroy()
    }
    if (actcon == 1 && (!instance_exists(obj_writer_ch1)))
    {
        actcon = 0
        gml_Script_scr_attackphase_ch1()
    }
}
if (pacifycon > 0)
{
    global.spelldelay = 999
    with (obj_spellphase_ch1)
    {
        if (spelltimer > 30)
            spelltimer = 30
    }
}
if (pacifycon == 1)
{
    if (obj_spellphase_ch1.spelltimer >= 15)
    {
        pacifytimer = 0
        pacifycon = 2
        with (obj_lancerboss3_ch1)
            visible = false
        temp_l = gml_Script_scr_dark_marker_ch1((x - 40), (y + sprite_height), 3791)
        temp_l.depth = (depth - 2)
    }
}
if (pacifycon == 2)
{
    gml_Script_snd_play_ch1(453)
    var _temp_local_var_16 = temp_l
    o = gml_Script_scr_oflash_ch1()
    o.flashcolor = c_blue
}
if (pacifycon == 3)
{
    pacifytimer += 1
    if (pacifytimer >= 30 && (!instance_exists(obj_writer_ch1)))
    {
        var _temp_local_var_18 = temp_l
        instance_destroy()
    }
}
if (pacifycon == 5 && (!instance_exists(obj_writer_ch1)))
{
    global.spelldelay = 20
    with (obj_spellphase_ch1)
        spelltimer = 18
    pacifycon = 0
}
