if (global.monstertype[myself] == 21)
    secondtime = true
if (global.monster[myself] == true)
{
    global.flag[(51 + myself)] = 4
    if (secondtime == true)
        milk_counter = 99
    if (secondtime == true)
        ralsei_lecture = 99
    if (global.mnfight == 1 && talked == 0)
    {
        gml_Script_scr_randomtarget_ch1()
        if (!instance_exists(obj_darkener_ch1))
            gml_Script_instance_create_ch1(0, 0, 1522)
        milkmax = 1000
        if (milk_counter > 0)
            milkmax = 600
        if (global.monsterhp[myself] > milkmax)
        {
            if ((!instance_exists(obj_moveheart_ch1)) && (!instance_exists(obj_heart_ch1)))
                gml_Script_scr_moveheart_ch1()
            if (!instance_exists(obj_growtangle_ch1))
                gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), 1628)
        }
        global.mnfight = 2
        rtimer = 0
        global.typer = 50
        talked = 2
        attacked = false
        talktimer = 0
    }
    if (talked == 2)
        global.mnfight = 2
    if (global.mnfight == 2 && attacked == false)
    {
        rtimer += 1
        if (rtimer == 12)
        {
            talked = 0
            milkmax = 1000
            if (milk_counter > 0)
                milkmax = 600
            if (global.monsterhp[myself] <= milkmax)
            {
                if (scon == 0)
                    scon = 1
            }
            else
            {
                if (!instance_exists(obj_checkers_leap_ch1))
                {
                    if (attacktype == 0)
                        rr = 0
                    if (attacktype == 1)
                        rr = 3
                    if (attacktype == 2)
                        rr = 1
                    if (attacktype == 3)
                        rr = 2
                    dc = gml_Script_instance_create_ch1(x, y, 1583)
                    dc.leapmode = rr
                    dc.target = mytarget
                    dc.damage = (global.monsterat[myself] * 5)
                    attacktype += 1
                    if (attacktype > 3)
                        attacktype = 0
                }
                siner = 0
                visible = false
                turns += 1
            }
            global.turntimer = 999
            attacked = true
            global.typer = 6
            global.fc = 0
            rr = choose(0)
            global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_77_0")
            if (global.monsterstatus[myself] == true)
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_79_0")
            if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_80_0")
            if (crown > 0)
                global.battlemsg[0] = gml_Script_scr_84_get_subst_string_ch1(gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_82_0"), string(crown))
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
if (scon == 1)
{
    if (milk_counter > 0)
        scon = 1.5
    else
    {
        with (obj_writer_ch1)
            instance_destroy()
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_119_0")
        gml_Script_scr_battletext_default_ch1()
        scon = 1.5
    }
}
if (scon == 1.5 && (!instance_exists(obj_writer_ch1)))
{
    gml_Script_snd_play_ch1(413)
    with (obj_writer_ch1)
        instance_destroy()
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_129_0")
    global.turntimer = 999
    gml_Script_scr_battletext_default_ch1()
    milk = gml_Script_scr_dark_marker_ch1((x - 100), (y + 60), 3902)
    var _temp_local_var_5 = milk
    image_speed = 0
    image_xscale = 4
    image_yscale = 4
    image_alpha = 0
}
if (scon == 2)
{
    var _temp_local_var_6 = milk
    image_xscale -= 0.2
    image_yscale -= 0.2
    image_alpha += 0.1
}
if (scon == 3)
{
    milktimer += 1
    if (milktimer >= 25)
    {
        scon = 4
        milktimer = 0
    }
}
if (scon == 4)
{
    var _temp_local_var_8 = milk
    hspeed += 2
    image_alpha -= 0.1
}
if (scon == 5)
{
    milktimer += 1
    if (milktimer >= 30)
    {
        if (milk_counter > 0)
        {
            with (obj_writer_ch1)
                instance_destroy()
            scon = 0
            milktimer = 0
            global.turntimer = 0
        }
        else
        {
            with (obj_writer_ch1)
                instance_destroy()
            scon = 6
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_226_0")
            gml_Script_scr_ralface_ch1(1, 3)
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_228_0")
            gml_Script_scr_susface_ch1(3, 3)
            global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_230_0")
            gml_Script_scr_battletext_default_ch1()
        }
        milk_counter += 1
    }
}
if (scon == 6)
{
    if (!instance_exists(obj_writer_ch1))
    {
        global.fc = 0
        scon = 0
        milktimer = 0
        global.turntimer = 0
    }
    else
        global.turntimer = 999
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        if (secondtime == false)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_263_0")
            global.actname[myself][0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_264_0")
            global.flag[246] = 1
            if (checked == true)
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_268_0")
            checked = true
        }
        else
        {
            if (global.flag[246] == 1)
            {
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_277_0")
                global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_278_0")
            }
            else
            {
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_282_0")
                global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_283_0")
            }
            checked = true
        }
        gml_Script_scr_battletext_default_ch1()
    }
    if (acting == 2 && actcon == 0)
    {
        if (secondtime == false)
            crown += 15
        if (secondtime == true)
            crown += 18
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_296_0")
        with (obj_herokris_ch1)
            visible = false
        global.faceaction[0] = 0
        global.charaction[0] = 0
        bowkris = gml_Script_scr_dark_marker_ch1(obj_herokris_ch1.x, obj_herokris_ch1.y, 3811)
        var _temp_local_var_13 = bowkris
        gml_Script_scr_oflash_ch1()
        a = gml_Script_scr_afterimage_ch1()
        a.hspeed = 5
        a.depth = (depth + 1)
    }
    if (actcon == 20 && (!instance_exists(obj_writer_ch1)))
    {
        visible = false
        bowcheck = gml_Script_scr_dark_marker_ch1(x, y, 3914)
        var _temp_local_var_15 = bowcheck
        image_speed = 0.334
    }
    if (actcon == 21 && (!instance_exists(obj_writer_ch1)))
    {
        var _temp_local_var_19 = bowkris
        instance_destroy()
    }
    if (secondtime == false)
    {
        if (acting == 3 && actcon == 0)
        {
            crown += 20
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_398_0")
            with (obj_herokris_ch1)
                visible = false
            with (obj_heroralsei_ch1)
                visible = false
            global.faceaction[0] = 0
            global.charaction[0] = 0
            global.faceaction[1] = 0
            global.charaction[1] = 0
            bowkris = gml_Script_scr_dark_marker_ch1(obj_herokris_ch1.x, obj_herokris_ch1.y, 3811)
            var _temp_local_var_22 = bowkris
            gml_Script_scr_oflash_ch1()
            a = gml_Script_scr_afterimage_ch1()
            a.hspeed = 5
            a.depth = (depth + 1)
        }
    }
    if (actcon == 30 && (!instance_exists(obj_writer_ch1)))
    {
        visible = false
        bowcheck = gml_Script_scr_dark_marker_ch1(x, y, 3914)
        var _temp_local_var_25 = bowcheck
        image_speed = 0.5
    }
    if (actcon == 31 && (!instance_exists(obj_writer_ch1)))
    {
        var _temp_local_var_28 = bowral
        instance_destroy()
    }
    if (secondtime == true)
    {
        if (acting == 3 && actcon == 0)
        {
            if (thrown == 1)
            {
                var _temp_local_var_32 = trsus
                instance_destroy()
            }
            if (thrown > 0)
            {
                global.actname[myself][2] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_487_0")
                global.msg[0] = ((gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_489_0") + gml_Script_scr_get_input_name_ch1(6)) + gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_489_1"))
                flash = false
                becomeflash = false
                gml_Script_scr_battletext_default_ch1()
                actcon = 90
                gml_Script_instance_create_ch1(x, y, 1580)
                throwsus = gml_Script_instance_create_ch1(obj_herosusie_ch1.x, obj_herosusie_ch1.y, 1582)
                visible = false
                global.faceaction[1] = 0
                global.charaction[1] = 0
                global.faceaction[2] = 0
                global.charaction[2] = 0
                with (obj_herosusie_ch1)
                    visible = false
                with (obj_heroralsei_ch1)
                    visible = false
                gml_Script_snd_play_ch1(377)
            }
            else
            {
                global.typer = 31
                global.fc = 2
                global.fe = 6
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_510_0")
                gml_Script_scr_susface_ch1(1, 0)
                global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_512_0")
                global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_513_0")
                gml_Script_scr_ralface_ch1(4, 8)
                global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_515_0")
                global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_516_0")
                gml_Script_scr_susface_ch1(7, 2)
                global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_518_0")
                actcon = 10
                gml_Script_scr_battletext_ch1()
            }
        }
    }
    if (acting == 4 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_531_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_532_0")
        if (warned == true)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_535_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_536_0")
        }
        if (warned == 2)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_540_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_541_0")
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_542_0")
            global.battleat[2] *= 1.5
        }
        warned += 1
        gml_Script_scr_battletext_default_ch1()
    }
    if (actcon == 1 && (!instance_exists(obj_writer_ch1)))
    {
        actcon = 0
        if (crown >= 100)
        {
            global.mercymod[myself] = 999
            actcon = 50
        }
        else
            gml_Script_scr_attackphase_ch1()
    }
    if (actcon == 10 && (!instance_exists(obj_writer_ch1)))
    {
        actcon = 11
        alarm[4] = 30
        with (obj_herosusie_ch1)
            visible = false
        with (obj_heroralsei_ch1)
            visible = false
        thrown = 1
        trsus = gml_Script_scr_dark_marker_ch1(obj_herosusie_ch1.x, obj_herosusie_ch1.y, 3845)
        gml_Script_snd_play_ch1(377)
    }
    if (actcon == 12)
    {
        global.fe = 7
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_578_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_checkers_enemy_slash_Step_0_gml_579_0")
        gml_Script_scr_battletext_ch1()
        actcon = 13
    }
    if (actcon == 13 && (!instance_exists(obj_writer_ch1)))
        actcon = 0
    if (actcon == 50)
    {
        visible = false
        gml_Script_snd_free_all_ch1()
        animtest = gml_Script_instance_create_ch1(x, y, 1579)
        animtest.sprite_index = spr_smallchecker_transform3_ch1
        animtest.image_xscale = 2
        animtest.image_yscale = 2
        animtest.type = 1
        actcon = 51
    }
}
if (global.myfight == 7)
    hspeed = 15
