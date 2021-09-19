if (con < 40)
{
    if (con == 2)
    {
        xx = gml_Script___view_get(0, 0)
        yy = gml_Script___view_get(1, 0)
        var _temp_local_var_1 = k
        gml_Script_scr_halt_ch1()
    }
    if (con == 4)
    {
        with (obj_mainchara_ch1)
            cutscene = true
        global.fe = 0
        global.fc = 1
        global.typer = 30
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_20_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_21_0")
        con = 5
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 5 && gml_Script_d_ex_ch1() == 0)
    {
        con = 6
        global.fc = 0
        global.typer = 42
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_32_0")
        wr = gml_Script_instance_create_ch1((xx + 200), (yy + 100), 1327)
        if (gml_Script_scr_debug_ch1() == 0)
        {
            var _temp_local_var_4 = wr
            skippable = false
        }
    }
    if (con == 6)
    {
        if (instance_exists(wr) == 0)
        {
            global.fe = 9
            global.fc = 1
            global.typer = 30
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_46_0")
            con = 7
            gml_Script_instance_create_ch1(0, 0, 1326)
        }
    }
    if (con == 7 && gml_Script_d_ex_ch1() == 0)
    {
        global.fc = 0
        con = 8
        global.typer = 42
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_58_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_59_0")
        wr = gml_Script_instance_create_ch1((xx + 200), (yy + 100), 1327)
        if (gml_Script_scr_debug_ch1() == 0)
        {
            var _temp_local_var_6 = wr
            skippable = false
        }
    }
    if (con == 8)
    {
        if (instance_exists(wr) == 0)
        {
            r = gml_Script_scr_dark_marker_ch1(495, 310, 3563)
            var _temp_local_var_7 = r
            depth = 100
        }
    }
    if (con == 10)
    {
        var _temp_local_var_10 = k
        gml_Script_scr_halt_ch1()
    }
    if (con == 12)
    {
        global.typer = 6
        global.fc = 2
        global.fe = 0
        global.flag[30] = 1
        global.msc = 120
        gml_Script_scr_text_ch1(global.msc)
        con = 20
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 1
    }
    if (con == 20 && gml_Script_d_ex_ch1() == 0)
    {
        fade = gml_Script_instance_create_ch1(0, 0, 1460)
        var _temp_local_var_13 = fade
        fadespeed = 0.01
    }
    if (con == 22)
    {
        room_persistent = true
        con = 24
        alarm[4] = 2
    }
    if (con == 25)
    {
        gml_Script_instance_create_ch1(0, 0, 1462)
        room_goto(room_legend_ch1)
        global.plot = 20
        con = 26
        alarm[4] = 3
    }
    if (con == 27)
    {
        global.plot = 21
        room_persistent = false
        con = 28
        alarm[4] = 60
    }
    if (con == 29)
    {
        global.fc = 2
        global.fe = 0
        global.typer = 6
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_142_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_143_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_144_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_145_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_146_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 1
        con = 35
    }
    if (con == 30 && gml_Script_d_ex_ch1() == 1)
    {
        if (gml_Script_scr_getmsgno_ch1() == 17)
        {
            var _temp_local_var_15 = s
            sprite_index = spr_susier_dark_ch1
        }
        if (gml_Script_scr_getmsgno_ch1() == 18)
        {
            var _temp_local_var_16 = s
            sprite_index = spr_susied_dark_ch1
        }
    }
    if (con == 30 && gml_Script_d_ex_ch1() == 0)
        con = 40
    if (con == 35 && gml_Script_d_ex_ch1() == 0)
    {
        var _temp_local_var_19 = s
        sprite_index = spr_susier_dark_ch1
    }
    if (con == 37)
    {
        var _temp_local_var_20 = s
        sprite_index = spr_susieu_dark_ch1
    }
    if (con == 38 && gml_Script_d_ex_ch1() == 1)
    {
        if (gml_Script_scr_getmsgno_ch1() == 0)
        {
            var _temp_local_var_22 = s
            sprite_index = spr_susieu_dark_ch1
        }
        if (gml_Script_scr_getmsgno_ch1() == 9)
        {
            var _temp_local_var_23 = s
            sprite_index = spr_susier_dark_ch1
        }
        if (gml_Script_scr_getmsgno_ch1() == 13)
        {
            var _temp_local_var_24 = s
            sprite_index = spr_susieu_dark_ch1
        }
        if (gml_Script_scr_getmsgno_ch1() == 15)
        {
            var _temp_local_var_25 = s
            sprite_index = spr_susiel_dark_ch1
        }
        if (gml_Script_scr_getmsgno_ch1() == 18)
        {
            var _temp_local_var_26 = s
            sprite_index = spr_susied_dark_ch1
        }
    }
    if (con == 38 && gml_Script_d_ex_ch1() == 0)
        con = 40
}
else
{
    if (con == 40 && gml_Script_d_ex_ch1() == 0)
    {
        var _temp_local_var_38 = s
        sprite_index = spr_susieu_dark_ch1
    }
    if (con == 45)
    {
        gml_Script_snd_play_ch1(452)
        xx = gml_Script___view_get(0, 0)
        yy = gml_Script___view_get(1, 0)
        l = gml_Script_scr_dark_marker_ch1((xx + 720), ((r.y + r.sprite_height) - 10), 3791)
        var _temp_local_var_39 = l
        hspeed = -32
    }
    if (con == 46)
    {
        if (l.x <= (xx + 360))
        {
            ex = gml_Script_instance_create_ch1((r.x + 30), (r.y + 30), 1402)
            ex.sprite_index = spr_realisticexplosion_ch1
            ex.image_xscale = 2
            ex.image_yscale = 2
            ex.image_speed = 0.5
            ex.depth = 10
            global.currentsong[0] = gml_Script_snd_init_ch1("lancer.ogg")
            var _temp_local_var_40 = l
            hspeed = 0
        }
    }
    if (con == 48)
    {
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.7, 1)
        con = 49
        global.fc = 5
        global.fe = 1
        global.typer = 32
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_276_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_277_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_278_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_279_0")
        gml_Script_scr_susface_ch1(4, 9)
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_281_0")
        gml_Script_scr_lanface_ch1(6, 0)
        global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_283_0")
        if (global.flag[203] == 1)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_287_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_288_0")
            gml_Script_scr_susface_ch1(2, 9)
            global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_290_0")
            gml_Script_scr_lanface_ch1(4, 0)
            global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_292_0")
        }
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 1
    }
    if (con == 49 && gml_Script_d_ex_ch1() == 0)
    {
        con = 50
        gml_Script_snd_play_ch1(453)
        var _temp_local_var_43 = l
        sprite_index = spr_lancerbike_l_ch1
    }
    if (con == 50)
    {
        siner += 1
        l.image_xscale = (2 * cos((((siner * 2) * pi) / maxamt)))
        if (siner >= maxamt)
        {
            con = 51
            if (global.flag[203] == 1)
                con = 54
            l.image_xscale = 2
            alarm[4] = 15
        }
    }
    if (con == 52)
    {
        var _temp_local_var_44 = l
        sprite_index = spr_lancerbike_ch1
    }
    if (con == 55)
    {
        var _temp_local_var_45 = l
        sprite_index = spr_lancerbike_ch1
    }
    if (con == 56 && gml_Script_d_ex_ch1() == 0)
    {
        r2 = gml_Script_scr_dark_marker_ch1((xx - 60), (yy + 80), 3563)
        var _temp_local_var_48 = r2
        hspeed = 16
    }
    if (con == 58)
    {
        global.typer = 6
        var _temp_local_var_49 = r2
        hspeed = 0
    }
    if (con == 59 && gml_Script_d_ex_ch1() == 0)
    {
        var _temp_local_var_52 = r2
        hspeed = -8
    }
    if (con == 61)
    {
        global.fc = 5
        global.fe = 6
        global.typer = 32
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_412_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_413_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_414_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_415_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_416_0")
        gml_Script_scr_susface_ch1(5, 2)
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_418_0")
        gml_Script_scr_lanface_ch1(7, 7)
        global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_420_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        var _temp_local_var_53 = d
        side = 1
    }
    if (con == 62 && gml_Script_d_ex_ch1() == 0)
    {
        r3 = gml_Script_scr_dark_marker_ch1((xx - 60), (yy + 80), 3563)
        var _temp_local_var_55 = r3
        hspeed = 16
    }
    if (con == 64)
    {
        var _temp_local_var_56 = r3
        hspeed = 0
    }
    if (con == 65 && gml_Script_d_ex_ch1() == 0)
    {
        var _temp_local_var_59 = r3
        hspeed = -8
    }
    if (con == 67)
    {
        global.typer = 30
        global.fc = 1
        global.fe = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_460_0")
        gml_Script_scr_lanface_ch1(1, 1)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_462_0")
        gml_Script_scr_susface_ch1(3, 2)
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_464_0")
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_465_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        var _temp_local_var_60 = d
        side = 1
    }
    if (con == 72)
    {
        global.flag[9] = 1
        global.batmusic[0] = gml_Script_snd_init_ch1("battle.ogg")
        global.encounterno = 2
        global.specialbattle = 3
        gml_Script_scr_getchar_ch1(2)
        obj_mainchara_ch1.x = k.x
        obj_mainchara_ch1.y = k.y
        global.cinstance[0] = gml_Script_instance_create_ch1(s.x, s.y, 1489)
        var _temp_local_var_61 = k
        instance_destroy()
    }
    if (con == 70 && gml_Script_d_ex_ch1() == 0)
    {
        gml_Script_snd_free_all_ch1()
        con = 71
        alarm[4] = 2
    }
    if (con == 74)
    {
        var _temp_local_var_65 = l
        speed = 0
    }
    if (con == 75)
    {
        if (global.plot == 22)
        {
            if (instance_exists(obj_battlecontroller_ch1) == 0)
            {
                if (instance_exists(obj_endbattle_ch1) == 0)
                    con = 76
            }
            alarm[4] = 5
        }
    }
    if (con == 77)
    {
        rflip = 0
        global.interact = 1
        k = gml_Script_scr_dark_marker_ch1(obj_mainchara_ch1.x, obj_mainchara_ch1.y, 4198)
        s = gml_Script_scr_dark_marker_ch1(global.cinstance[0].x, global.cinstance[0].y, 3551)
        with (obj_mainchara_ch1)
            visible = false
        var _temp_local_var_67 = global.cinstance[0]
        instance_destroy()
    }
    if (con == 79)
    {
        r = gml_Script_scr_dark_marker_ch1(95, 310, 3563)
        r.hspeed = 16
        con = 80
        alarm[4] = 25
    }
    if (con == 81)
    {
        var _temp_local_var_68 = r
        speed = 0
    }
    if (con == 82 && gml_Script_d_ex_ch1() == 0)
    {
        var _temp_local_var_70 = r
        vspeed = 6
    }
    if (con == 84)
    {
        var _temp_local_var_72 = r
        vspeed = 0
    }
    if (con == 85 && gml_Script_d_ex_ch1() == 0)
    {
        gml_Script_snd_play_ch1(381)
        var _temp_local_var_74 = r
        sprite_index = spr_ralsei_removehood_ch1
        image_index = 0
        image_speed = 0.1
    }
    if (con == 87)
    {
        var _temp_local_var_75 = r
        sprite_index = spr_ralseid_ch1
        image_index = 0
        image_speed = 0
    }
    if (con == 89)
    {
        global.typer = 31
        global.fc = 2
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_611_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_612_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_613_0")
        gml_Script_scr_susface_ch1(3, 0)
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_615_0")
        gml_Script_scr_ralface_ch1(5, 0)
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_617_0")
        gml_Script_scr_susface_ch1(7, 0)
        global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_619_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 1
        con = 90
    }
    if (con == 90 && gml_Script_d_ex_ch1() == 0)
    {
        var _temp_local_var_77 = s
        sprite_index = spr_susier_dark_ch1
    }
    if (con == 92)
    {
        var _temp_local_var_78 = k
        sprite_index = spr_krisr_dark_ch1
    }
    if (con == 93 && gml_Script_d_ex_ch1() == 0)
    {
        var _temp_local_var_80 = k
        sprite_index = spr_krisd_dark_ch1
    }
    if (con == 95)
    {
        var _temp_local_var_82 = k
        sprite_index = spr_krisu_dark_ch1
    }
    if (con == 96 && gml_Script_d_ex_ch1() == 0)
    {
        var _temp_local_var_84 = k
        sprite_index = spr_krisr_dark_ch1
    }
    if (con == 97)
    {
        if (r.y >= (k.y - 12))
        {
            r.y = (k.y - 12)
            r.image_speed = 0
            r.image_index = 0
            r.sprite_index = spr_ralseil_ch1
            r.speed = 0
            r.vspeed = 0
            r.hspeed = 0
            con = 98
            alarm[4] = 30
        }
    }
    if (con == 99)
    {
        global.fe = 5
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_702_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_703_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_704_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_705_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_706_0")
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_707_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 1
        con = 100
    }
    if (con == 100 && gml_Script_d_ex_ch1() == 0)
    {
        var _temp_local_var_87 = r
        sprite_index = spr_ralseid_ch1
    }
    if (con == 102)
    {
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkcastle_event_slash_Step_0_gml_723_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 1
        con = 103
    }
    if (con == 103 && gml_Script_d_ex_ch1() == 0)
    {
        var _temp_local_var_89 = r
        hspeed = -4
        image_speed = 0.2
        sprite_index = spr_ralseil_ch1
    }
    if (con == 104)
    {
        if (r.x <= (k.x - 70))
        {
            var _temp_local_var_90 = r
            gml_Script_scr_halt_ch1()
        }
    }
    if (con == 105 && gml_Script_d_ex_ch1() == 0)
    {
        con = 107
        global.currentsong[0] = gml_Script_snd_init_ch1("castletown_empty.ogg")
        alarm[4] = 30
        gml_Script_scr_pan_to_obj_ch1(1347, 25)
    }
    if (con == 109)
    {
        var _temp_local_var_93 = r
        instance_destroy()
    }
    if (con == 108)
    {
        gml_Script_scr_losechar_ch1()
        gml_Script_scr_getchar_ch1(3)
        global.facing = 1
        obj_mainchara_ch1.visible = true
        obj_mainchara_ch1.cutscene = false
        var _temp_local_var_94 = k
        instance_destroy()
    }
}
if (rflip == 1)
{
    if instance_exists(r)
    {
        var _temp_local_var_28 = r
        image_angle += 2
    }
}
