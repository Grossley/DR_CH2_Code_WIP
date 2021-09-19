if (type == 0)
{
    if (con == 1)
    {
        x = (gml_Script___view_get(0, 0) + 800)
        image_speed = 0.2
        sprite_index = spr_smallchecker_front_ch1
        global.interact = 1
        s = gml_Script_scr_dark_marker_ch1(-100, global.cinstance[1].y, 3544)
        r = gml_Script_scr_dark_marker_ch1(-50, global.cinstance[0].y, 3570)
        k = gml_Script_scr_dark_marker_ch1(0, obj_mainchara_ch1.y, 4197)
        with (obj_caterpillarchara_ch1)
            visible = false
        with (obj_mainchara_ch1)
            visible = false
        with (obj_marker_ch1)
        {
            hspeed = 5
            image_speed = 0.2
        }
        l = gml_Script_scr_dark_marker_ch1(500, obj_mainchara_ch1.y, 3578)
        con = -50
        alarm[4] = 28
    }
    if (con == -49)
    {
        gml_Script_snd_free_all_ch1()
        with (obj_marker_ch1)
            gml_Script_scr_halt_ch1()
        con = -48
        alarm[4] = 15
    }
    if (con == -47)
    {
        global.typer = 32
        global.fc = 5
        global.fe = 0
        name = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_42_0")
        if (global.flag[214] == 1)
            name = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_43_0")
        if (global.flag[214] == 2)
            name = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_44_0")
        if (global.flag[214] == 3)
            name = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_45_0")
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_47_0")
        global.msg[1] = ((gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_48_0") + name) + "/")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_49_0")
        gml_Script_scr_ralface_ch1(3, 3)
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_51_0")
        gml_Script_scr_lanface_ch1(5, 1)
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_53_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = -46
        warnpitch = 0
    }
    if (con == -46 && (!gml_Script_d_ex_ch1()))
    {
        hitnoise = gml_Script_snd_play_ch1(451)
        gml_Script_snd_pitch_ch1(hitnoise, (1 + (warnpitch / 16)))
        var _temp_local_var_2 = l
        sprite_index = spr_lancer_lt_ch1
        hspeed = -10
    }
    if (con == -44)
    {
        var _temp_local_var_3 = l
        gml_Script_scr_halt_ch1()
    }
    if (con == -42)
    {
        global.fe = 2
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_82_0")
        if (warnpitch == 1)
        {
            global.fe = 1
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_87_0")
        }
        if (warnpitch == 2)
        {
            global.fe = 3
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_92_0")
            gml_Script_scr_susface_ch1(1, 9)
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_94_0")
        }
        gml_Script_instance_create_ch1(0, 0, 1326)
        if (warnpitch < 2)
        {
            con = -46
            warnpitch += 1
        }
        else
            con = -40
    }
    if (con == -40 && (!gml_Script_d_ex_ch1()))
    {
        ltimer = 0
        with (obj_marker_ch1)
        {
            if (sprite_index != spr_lancer_lt_ch1)
            {
                hspeed = 5
                image_speed = 0.25
            }
            else
            {
                sprite_index = spr_lancer_dt_ch1
                vspeed = -2
                depth = 100000
            }
        }
        con = -10
        alarm[4] = 96
    }
    if (con == -10)
    {
        ltimer += 1
        if (ltimer >= 20)
        {
            var _temp_local_var_5 = l
            gml_Script_scr_halt_ch1()
        }
        if (k.x >= 140)
            obj_mainchara_ch1.x = k.x
        global.interact = 1
    }
    if (con == -9)
    {
        gml_Script_snd_free_all_ch1()
        global.facing = 1
        con = -8
        with (obj_marker_ch1)
            gml_Script_scr_halt_ch1()
        obj_mainchara_ch1.x = k.x
        obj_mainchara_ch1.visible = true
        obj_mainchara_ch1.cutscene = true
        var _temp_local_var_6 = l
        sprite_index = spr_lancer_rt_ch1
    }
    if (con == -7)
    {
        global.fc = 2
        global.fe = 8
        global.typer = 31
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_178_0")
        gml_Script_scr_susface_ch1(1, 6)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_180_0")
        gml_Script_scr_lanface_ch1(3, 3)
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_182_0")
        gml_Script_scr_susface_ch1(5, 2)
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_184_0")
        gml_Script_scr_lanface_ch1(7, 6)
        global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_186_0")
        con = -5.2
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == -5.2 && gml_Script_d_ex_ch1() == 0)
    {
        sprite_index = spr_smallchecker_idle_ch1
        image_index = 0
        x += 40
        image_xscale = -2
        hspeed = 2
        con = 2
    }
    if (con == 2)
    {
        if (x > (gml_Script___view_get(0, 0) + 520))
        {
            image_index = 0
            image_xscale = 2
            sprite_index = spr_smallchecker_front_ch1
            hspeed = 0
            x = (gml_Script___view_get(0, 0) + 480)
            con = 1.1
            alarm[4] = 30
        }
    }
    if (con == 2.1)
    {
        gml_Script_snd_play_ch1(414)
        for (j = 0; j < 3; j += 1)
        {
            tile[j] = gml_Script_scr_marker_ch1(((480 - (j * 40)) + 400), (240 + (j * 40)), 4089)
            tile[j].image_alpha = 0
            tile[j].depth = 700000
        }
        ttimer = 0
        con = 2.2
    }
    if (con == 2.2)
    {
        j = 0
        while (j < 3)
        {
            _temp_local_var_7.image_alpha = (tile[j].image_alpha + 0.1)
            j += 1
            var _temp_local_var_9 = l
            var _temp_local_var_10 = l
            var _temp_local_var_11 = -9
            var _temp_local_var_12 = tile[j]
        }
        ttimer += 1
        if (ttimer >= 10)
            con = 2.3
    }
    if (con == 2.3)
    {
        j = 0
        while (j < 3)
        {
            _temp_local_var_7.image_alpha = (tile[j].image_alpha - 0.1)
            j += 1
            var _temp_local_var_13 = l
            var _temp_local_var_14 = l
            var _temp_local_var_15 = -9
            var _temp_local_var_16 = tile[j]
        }
        ttimer += 1
        if (ttimer >= 30)
            con = 3.1
    }
    if (con == 3.1)
        con = 4
    if (con == 4)
    {
        sprite_index = spr_smallchecker_front_ch1
        image_speed = 0
        image_index = 0
        crown = gml_Script_instance_create_ch1((x + 8), (gml_Script___view_get(1, 0) - 40), 1403)
        crown.image_xscale = 2
        crown.image_yscale = 2
        crown.sprite_index = spr_smallchecker_crown_ch1
        crown.vspeed = 4
        crown.depth = (depth - 1)
        con = 5
    }
    if (con == 5)
    {
        if (crown.y >= (y - 10))
        {
            sprite_index = spr_smallchecker_transform_ch1
            y += 2
            gml_Script_snd_play_ch1(420)
            var _temp_local_var_17 = crown
            instance_destroy()
        }
    }
    if (con == 7)
    {
        gml_Script_snd_play_ch1(415)
        image_speed = 0.25
        con = 8
    }
    if (con == 8)
    {
        image_speed += 0.01
        if (image_speed >= 0.4)
        {
            image_index = 1
            image_speed = 0
            con = 9
            alarm[4] = 60
        }
    }
    if (con == 10)
    {
        image_index = 0
        sprite_index = spr_smallchecker_transform2_ch1
        image_speed = 0.334
        con = 11
    }
    if (con == 11)
    {
        if (image_index >= 4)
        {
            image_index = 4
            image_speed = 0
            con = 12
            alarm[4] = 40
        }
    }
    if (con == 13)
    {
        x -= 18
        y -= 90
        gml_Script_snd_play_ch1(378)
        var _temp_local_var_18 = s
        sprite_index = spr_susie_shock_r_ch1
    }
    if (con == 17)
    {
        var _temp_local_var_20 = r
        sprite_index = spr_ralseir_ch1
    }
    if (con == 18 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_scr_unmarkify_caterpillar_ch1()
        global.facing = 1
        gml_Script_scr_caterpillar_facing_ch1(global.facing)
        global.encounterno = 12
        gml_Script_scr_encountersetup_ch1(global.encounterno)
        global.flag[9] = 1
        global.batmusic[0] = gml_Script_snd_init_ch1("checkers.ogg")
        global.specialbattle = 3
        gml_Script_instance_create_ch1(0, 0, 1488)
        gml_Script_instance_create_ch1(0, 0, 1624)
        depth = 4000
        gml_Script_scr_move_to_point_over_time_ch1(global.monstermakex[0], global.monstermakey[0], 20)
        con = 19
        alarm[4] = 20
    }
    if (con == 20)
    {
        speed = 0
        con = 21
        alarm[4] = 10
    }
    if (con == 22)
    {
        visible = false
        type = 2
        con = 0
        victimer = 0
    }
}
if (type == 1)
{
    if (con == 1)
    {
        image_speed = 0
        image_index = 0
        crown = gml_Script_instance_create_ch1((x + 24), (y + 10), 1403)
        crown.image_xscale = 2
        crown.image_yscale = 2
        crown.sprite_index = spr_smallchecker_crown_ch1
        crown.depth = (depth - 1)
        sprite_index = spr_smallchecker_transform3_ch1
        con = 0.4
        windsound = false
        alarm[4] = 30
    }
    if (con == 1.4)
    {
        if (windsound == false)
        {
            gml_Script_snd_play_ch1(392)
            windsound = true
        }
        if (secondtime == false)
        {
            _temp_local_var_21.hspeed = (crown.hspeed + 0.2)
            var _temp_local_var_23 = r
            var _temp_local_var_24 = 
            var _temp_local_var_25 = -9
            var _temp_local_var_26 = crown
        }
        else
        {
            _temp_local_var_21.hspeed = (crown.hspeed + 0.4)
            _temp_local_var_23 = r
            _temp_local_var_24 = 
            _temp_local_var_25 = -9
            _temp_local_var_26 = crown
        }
        if (crown.hspeed >= 3)
            con = 1.5
    }
    if (con == 1.5)
    {
        var _temp_local_var_27 = crown
        maxy = (obj_checker_animtest_ch1.y + obj_checker_animtest_ch1.sprite_height)
        image_angle = -45
        y -= 10
        gravity = 0.5
        hspeed = 5
        friction = 0.2
    }
    if (con == 1.6)
    {
        if (crown.y >= ((crown.maxy - crown.sprite_height) - 10))
        {
            _temp_local_var_27.y = (crown.y + 10)
            crown.image_angle = 0
            crown.gravity = 0
            crown.vspeed = 0
            crown.friction = 0
            crown.hspeed = 1
            con = 0.9
            alarm[4] = 30
            var _temp_local_var_28 = r
            var _temp_local_var_29 = _temp_local_var_24
            var _temp_local_var_30 = -9
            var _temp_local_var_31 = crown
            if (secondtime == true)
            {
                alarm[4] = 10
                interactcrown = gml_Script_instance_create_ch1(crown.x, crown.y, 1405)
                interactcrown.hspeed = 1
                interactcrown.image_xscale = 1.6
                interactcrown.image_yscale = 1
            }
        }
    }
    if (con == 1.9)
    {
        image_speed = 0.25
        gml_Script_snd_play_ch1(416)
        con = 2.1
    }
    if (con == 2.1)
    {
        image_speed += 0.01
        if (secondtime == true)
            image_speed += 0.01
        if (image_speed >= 0.4)
        {
            image_index = 1
            image_speed = 0
            con = 3
            maxy = ((y + sprite_height) - 30)
            alarm[4] = 30
            if (secondtime == true)
                alarm[4] = 10
        }
    }
    if (con == 4)
    {
        x += 40
        y += 46
        sprite_index = spr_smallchecker_legtuck_ch1
        image_index = 0
        image_speed = 0.25
        vspeed = -3
        gravity = 1
        if (secondtime == true)
        {
            vspeed = -6
            gravity = 2
            image_speed = 0.5
        }
        con = 5
    }
    if (con == 5)
    {
        if (image_index >= 2)
            image_speed = 0
        if (y >= (maxy - 4))
        {
            y = maxy
            gravity = 0
            vspeed = 0
            con = 6
            alarm[4] = 30
            if (secondtime == true)
                alarm[4] = 10
        }
    }
    if (con == 7)
    {
        image_angle -= 5
        hspeed = 3
        if (secondtime == true)
        {
            hspeed = 6
            image_angle -= 5
        }
        if (x >= (gml_Script___view_get(0, 0) + 720))
        {
            con = 8
            global.monster[0] = false
            global.monster[1] = false
            global.monster[2] = false
            gml_Script_scr_attackphase_ch1()
            with (obj_monsterparent_ch1)
                instance_destroy()
            instance_destroy()
        }
    }
}
if (type == 2)
{
    if (con == 0)
    {
        victimer += 1
        if (victimer >= 60)
            con = 1
    }
    if (con == 1)
    {
        if (global.fighting == false)
        {
            victimer = 0
            con = 2
        }
    }
    if (con == 2)
    {
        victimer += 1
        if (victimer >= 15)
        {
            global.typer = 30
            global.fe = 6
            global.fc = 1
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_589_0")
            gml_Script_instance_create_ch1(0, 0, 1326)
            con = 3
        }
    }
    if (con == 3 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_33 = l
        hspeed = 18
    }
    if (con == 5)
    {
        var _temp_local_var_34 = l
        gml_Script_scr_halt_ch1()
        sprite_index = spr_lancer_lt_ch1
    }
    if (con == 7)
    {
        global.typer = 32
        global.fc = 5
        global.fe = 3
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_624_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_625_0")
        gml_Script_scr_susface_ch1(2, 2)
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_627_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 7.2
    }
    if (con == 7.1 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(382)
        var _temp_local_var_36 = s
        image_speed = 0.2
    }
    if (con == 7.2 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_38 = global.cinstance[0]
        visible = false
    }
    if (con == 50 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_41 = r
        sprite_index = spr_ralseid_ch1
    }
    if (con == 52)
    {
        var _temp_local_var_42 = r
        sprite_index = spr_ralseil_ch1
    }
    if (con == 53 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_44 = s
        sprite_index = spr_susied_dark_ch1
    }
    if (con == 55)
    {
        var _temp_local_var_45 = s
        sprite_index = spr_susier_dark_ch1
    }
    if (con == 56 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_47 = s
        sprite_index = spr_susiel_dark_unhappy_ch1
    }
    if (con == 58)
    {
        global.fc = 1
        global.fe = 0
        global.typer = 30
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_732_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_733_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_734_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 59
    }
    if (con == 59 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_49 = s
        vspeed = 2
        image_speed = 0.2
        sprite_index = spr_susied_dark_unhappy_ch1
    }
    if (con == 61)
    {
        var _temp_local_var_50 = k
        gml_Script_scr_depth_ch1()
    }
    if (con == 63)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_762_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_763_0")
        con = 64
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 64 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_54 = s
        hspeed = 12
        sprite_index = spr_susier_dark_ch1
        image_speed = 0.5
    }
    if (con == 65)
    {
        if (s.x >= (gml_Script___view_get(0, 0) + 460))
        {
            var _temp_local_var_55 = s
            gml_Script_scr_halt_ch1()
        }
    }
    if (con == 66)
    {
        con = 67
        global.fc = 1
        global.fe = 3
        global.typer = 30
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_checker_animtest_slash_Step_0_gml_799_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 67 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_60 = r
        sprite_index = spr_ralsei_shock_overworld_ch1
    }
    if (con == 69)
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("lancer.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.6, 1)
        var _temp_local_var_61 = r
        sprite_index = spr_ralseir_ch1
    }
    if (con == 70 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_volume_ch1(global.currentsong[1], 0, 50)
        gml_Script_snd_play_ch1(454)
        var _temp_local_var_63 = l
        sprite_index = spr_lancer_lt_laugh_ch1
        image_speed = 0.2
        hspeed = 12
    }
    if (con == 72)
        con = 22
    if (con == 22 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_66 = r
        hspeed = 6
        image_speed = 0.25
    }
    if (con == 24)
    {
        gml_Script_snd_free_all_ch1()
        global.facing = 2
        var _temp_local_var_67 = r
        gml_Script_scr_halt_ch1()
    }
    if (con == 28 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_69 = k
        hspeed = 8
        image_speed = 0.25
    }
    if (con == 30)
    {
        gml_Script_instance_create_ch1(0, 0, 1460)
        con = 31
        alarm[4] = 30
    }
    if (con == 32)
    {
        if (global.plot < 60)
        {
            global.plot = 60
            if (global.flag[215] == 1)
                global.flag[251] = 1
        }
        gml_Script_scr_losechar_ch1()
        gml_Script_scr_getchar_ch1(3)
        gml_Script_instance_create_ch1(0, 0, 1462)
        global.interact = 3
        global.entrance = 1
        room_goto_next()
    }
}
