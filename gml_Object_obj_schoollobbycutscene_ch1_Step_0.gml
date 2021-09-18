var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_10, _temp_local_var_11, _temp_local_var_13, _temp_local_var_16, _temp_local_var_17, _temp_local_var_18, _temp_local_var_21, _temp_local_var_23, _temp_local_var_24, _temp_local_var_26, _temp_local_var_27, _temp_local_var_28, _temp_local_var_31, _temp_local_var_33, _temp_local_var_35, _temp_local_var_36, _temp_local_var_39, _temp_local_var_40, _temp_local_var_41, _temp_local_var_43, _temp_local_var_44, _temp_local_var_45, _temp_local_var_46, _temp_local_var_47, _temp_local_var_50, _temp_local_var_51, _temp_local_var_52, _temp_local_var_54, _temp_local_var_56, _temp_local_var_58, _temp_local_var_59, _temp_local_var_61, _temp_local_var_62;
if (con > 0 && type == 1)
{
    if (con == 2)
    {
        with (obj_mainchara_ch1)
            vspeed = 0
        var _temp_local_var_2 = t
        vspeed = 0
        image_index = 0
        image_speed = 0
    }
    if (con == 4)
    {
        var _temp_local_var_3 = t
        sprite_index = spr_toriel_hug_ch1
    }
    if (con == 6)
    {
        with (obj_writer_ch1)
            instance_destroy()
        var _temp_local_var_4 = t
        image_index = 1
    }
    if (con == 8)
    {
        var _temp_local_var_5 = t
        image_speed = 0
        image_index = 2
    }
    if (con == 12)
    {
        with (obj_writer_ch1)
            instance_destroy()
        var _temp_local_var_6 = t
        image_speed = -0.2
    }
    if (con == 14)
    {
        var _temp_local_var_7 = t
        image_index = 0
        image_speed = 0
        sprite_index = spr_toriel_d_ch1
    }
    if (con == 16)
    {
        var _temp_local_var_8 = t
        sprite_index = spr_toriel_l_ch1
    }
    if (con == 18)
    {
        var _temp_local_var_10 = t
        sprite_index = spr_toriel_r_ch1
        hspeed = 2
        image_speed = 0.2
    }
    if (con == 19.1)
    {
        fade = gml_Script_instance_create_ch1(0, 0, 1460)
        fade.fadespeed = 0.02
        con = 19
        alarm[4] = 10
    }
    if (con == 20)
    {
        var _temp_local_var_11 = k
        hspeed = 0
        sprite_index = spr_krisu_ch1
        vspeed = -0.5
    }
    if (con == 23)
    {
        gml_Script_instance_create_ch1(0, 0, 1462)
        room_goto(room_alphysclass_ch1)
    }
    if (con == 22)
    {
        gml_Script_snd_free_all_ch1()
        con = 23
    }
}
if (con > 0 && type == 2)
{
    if (con == 0.1)
        global.interact = 1
    if (con == 1.1)
    {
        var _temp_local_var_13 = k
        sprite_index = spr_krisr_ch1
    }
    if (con == 1.2)
    {
        if (s.image_index >= 16 && chalksound == false)
        {
            chalksound = true
            gml_Script_snd_play_ch1(381)
        }
        if (s.image_index >= 21)
        {
            var _temp_local_var_16 = s
            sprite_index = spr_susier_ch1
            image_speed = 0
            image_index = 0
        }
    }
    if (con == 1.3)
    {
        s.sprite_index = spr_susied_ch1
        con = 0.4
        alarm[4] = 30
    }
    if (con == 1.4)
    {
        s.sprite_index = spr_susiel_ch1
        s.hspeed = -0.5
        s.image_speed = 0.1
        con = 0.5
        alarm[4] = 40
    }
    if (con == 1.5)
    {
        var _temp_local_var_17 = s
        x = 220
        hspeed = 0
        image_index = 0
        image_speed = 0
    }
    if (con == 2)
    {
        global.fc = 1
        global.fe = 0
        var _temp_local_var_18 = k
        sprite_index = spr_krisr_ch1
    }
    if (con == 2.1 && gml_Script_d_ex_ch1() == 0)
    {
        s.sprite_index = spr_susieu_ch1
        con = 1.6
        alarm[4] = 60
    }
    if (con == 2.6)
    {
        s.sprite_index = spr_susier_ch1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_209_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_210_0")
        con = 3
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 3 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        con = 4
        alarm[4] = 90
    }
    if (con == 5)
    {
        var _temp_local_var_21 = s
        sprite_index = spr_susier_lookup_ch1
    }
    if (con == 6 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        con = 7
        alarm[4] = 60
    }
    if (con == 8)
    {
        var _temp_local_var_23 = s
        sprite_index = spr_susied_plain_ch1
    }
    if (con == 10)
    {
        var _temp_local_var_24 = s
        sprite_index = spr_susiel_ch1
    }
    if (con == 12)
    {
        global.fe = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_254_0")
        con = 13
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 13 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        var _temp_local_var_26 = s
        hspeed = -1
        image_speed = 0.1
    }
    if (con == 15)
    {
        var _temp_local_var_27 = k
        image_speed = 0.1
        hspeed = -0.5
    }
    if (con == 17)
    {
        var _temp_local_var_28 = k
        hspeed = 0
        image_index = 0
        image_speed = 0
    }
    if (con == 19)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_303_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 20
    }
    if (con == 20 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        con = 21
        var _temp_local_var_31 = k
        visible = false
    }
    if (con == 22)
    {
        var _temp_local_var_33 = s
        image_speed = 0
    }
    if (con == 24)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_330_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 25
    }
    if (con == 25 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        con = 27
        alarm[4] = 50
    }
    if (con == 28)
    {
        var _temp_local_var_35 = s
        sprite_index = spr_susie_krisgrab_ch1
        image_index = 0
        image_speed = 0.334
    }
    if (con == 30)
    {
        gml_Script_snd_play_ch1(376)
        con = 31
        alarm[4] = 6
    }
    if (con == 32)
    {
        var _temp_local_var_36 = s
        image_speed = 0
    }
    if (con == 34)
    {
        global.fe = 2
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_374_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 35
    }
    if (con == 35 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("s_neo.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ch1(global.currentsong[0])
        con = 36
        alarm[4] = 60
    }
    if (con == 37)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_389_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_390_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_391_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_392_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_393_0")
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_394_0")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_395_0")
        global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_396_0")
        global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_397_0")
        global.msg[9] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_398_0")
        global.msg[10] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_399_0")
        global.msg[11] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_400_0")
        global.msg[12] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_401_0")
        global.msg[13] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_402_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 38
    }
    if (instance_exists(obj_dialoguer_ch1) == 0 && con == 38)
    {
        gml_Script_snd_free_ch1(global.currentsong[0])
        var _temp_local_var_39 = s
        sprite_index = spr_susie_grabsmile_ch1
        image_index = 0
        image_speed = 0.2
    }
    if (con == 40)
    {
        var _temp_local_var_40 = s
        image_speed = 0
    }
    if (con == 42)
    {
        global.fe = 3
        global.typer = 2
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_432_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        var _temp_local_var_41 = d
        skippable = false
    }
    if (con == 43 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("s_neo_clip.ogg")
        audio_sound_pitch(global.currentsong[0], 0.667)
        global.currentsong[1] = gml_Script_mus_play_ch1(global.currentsong[0])
        var _temp_local_var_43 = s
        image_index = 0
        image_speed = (1/15)
        sprite_index = spr_susie_krisgrab_eat_ch1
    }
    if (con == 44.5)
    {
        gml_Script_snd_free_ch1(global.currentsong[0])
        var _temp_local_var_44 = s
        image_speed = 0
    }
    if (con == 45)
    {
        var _temp_local_var_45 = s
        sprite_index = spr_susie_krisdrop_ch1
        image_speed = 0.334
        image_index = 0
    }
    if (con == 47)
    {
        var _temp_local_var_46 = s
        image_speed = 0
    }
    if (con == 49)
    {
        global.typer = 10
        global.fe = 0
        var _temp_local_var_47 = k
        visible = true
        sprite_index = spr_krisr_sit_ch1
    }
    if (con == 50 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        var _temp_local_var_50 = s
        hspeed = 2
        image_speed = 0.2
    }
    if (con == 52)
    {
        var _temp_local_var_51 = s
        image_index = 0
        image_speed = 0
        hspeed = 0
    }
    if (con == 54)
    {
        var _temp_local_var_52 = s
        sprite_index = spr_susier_lookup_ch1
    }
    if (con == 55 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        var _temp_local_var_54 = s
        sprite_index = spr_susiel_ch1
    }
    if (con == 57)
    {
        global.msc = 104
        gml_Script_scr_text_ch1(global.msc)
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 57.1
        choosetimer = 0
    }
    if (con == 57.1)
    {
        if instance_exists(obj_choicer_old_ch1)
        {
            choosetimer += 1
            if (choosetimer >= 30)
            {
                if (obj_choicer_old_ch1.choiced == false)
                {
                    with (obj_choicer_old_ch1)
                    {
                        canchoose = true
                        mychoice = 1
                        event_user(0)
                    }
                }
                con = 58
            }
        }
        if (!gml_Script_d_ex_ch1())
            con = 58
    }
    if (con == 58 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        var _temp_local_var_56 = s
        sprite_index = spr_susier_ch1
    }
    if (con == 59 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        var _temp_local_var_58 = s
        image_speed = 0.2
        hspeed = 2
    }
    if (con == 61)
    {
        var _temp_local_var_59 = s
        hspeed = 0
        image_speed = 0
        image_index = 0
    }
    if (con == 63)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_616_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 64
    }
    if (con == 64 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        interact = gml_Script_instance_create_ch1(110, 200, 1405)
        obj_mainchara_ch1.x = (k.x + 6)
        obj_mainchara_ch1.y = (k.y + 2)
        var _temp_local_var_61 = k
        instance_destroy()
    }
}
if (type == 3)
{
    var _temp_local_var_62 = s
    gml_Script_scr_depth_ch1()
}
if (type == 4)
{
    if (global.flag[272] == 0 && global.interact == 0 && con == 0)
    {
        if (obj_mainchara_ch1.y >= 320)
        {
            global.fc = 0
            global.typer = 5
            global.interact = 1
            global.msc = 365
            gml_Script_scr_text_ch1(global.msc)
            gml_Script_snd_play_ch1(370)
            if (global.flag[272] == 0)
                global.flag[272] = 1
            con = 2
            gml_Script_instance_create_ch1(0, 0, 1326)
        }
    }
    if (con == 2 && (!gml_Script_d_ex_ch1()))
    {
        global.interact = 0
        con = 3
    }
}
