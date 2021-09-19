if (con > 0 && con < 40)
{
    if (con == 1)
        global.interact = 1
    if (con == 2)
    {
        var _temp_local_var_2 = k
        gml_Script_scr_halt_ch1()
    }
    if (con == 4)
    {
        global.typer = 10
        global.fc = 1
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_21_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_22_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 4.5
    }
    if (con == 4.5 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        gml_Script_snd_play_ch1(376)
        image_index = 1
        con = 5.5
        alarm[4] = 60
    }
    if (con == 6.5)
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("creepydoor.ogg")
        gml_Script_mus_loop_ch1(global.currentsong[0])
        open = 1
        con = 6
        alarm[4] = 60
    }
    if (con == 7)
    {
        var _temp_local_var_5 = s
        vspeed = 0.5
        image_speed = 0.1
    }
    if (con == 9)
    {
        var _temp_local_var_7 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 11)
    {
        global.fe = 5
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_72_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_73_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_74_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        var _temp_local_var_9 = s
        sprite_index = spr_susiel_ch1
    }
    if (con == 12 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        var _temp_local_var_11 = s
        sprite_index = spr_susieu_ch1
    }
    if (con == 14)
    {
        var _temp_local_var_12 = s
        sprite_index = spr_susiel_ch1
    }
    if (con == 15 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        var _temp_local_var_14 = k
        vspeed = 0.5
        image_speed = 0.1
    }
    if (con == 15.5)
    {
        var _temp_local_var_15 = k
        gml_Script_scr_halt_ch1()
    }
    if (con == 17)
    {
        var _temp_local_var_16 = s
        sprite_index = spr_susiel_ch1
    }
    if (con == 18 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        var _temp_local_var_18 = s
        sprite_index = spr_susieu_ch1
    }
    if (con == 20)
    {
        var _temp_local_var_19 = s
        sprite_index = spr_susiel_ch1
    }
    if (con == 21 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        var _temp_local_var_21 = s
        sprite_index = spr_susieu_ch1
        vspeed = -0.5
        image_speed = 0.1
    }
    if (con == 23)
    {
        fade = gml_Script_instance_create_ch1(0, 0, 1460)
        var _temp_local_var_23 = fade
        fadespeed = 0.03
    }
    if (con == 25)
    {
        con = 26
        global.plot = 5
        gml_Script_instance_create_ch1(0, 0, 1462)
        room_goto(room_insidecloset_ch1)
    }
}
if (con >= 40)
{
    if (con == 40)
    {
        gml_Script_snd_free_all_ch1()
        global.currentsong[0] = gml_Script_snd_init_ch1("mus_birdnoise.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.6, 0.7)
        global.interact = 1
        s = gml_Script_scr_marker_ch1(479, 92, 3531)
        var _temp_local_var_24 = s
        gml_Script_scr_depth_ch1()
    }
    if (con == 42)
    {
        global.typer = 10
        global.fc = 1
        global.fe = 0
        global.flag[29] = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_194_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_195_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 43
    }
    if (con == 43 && (!gml_Script_d_ex_ch1()))
    {
        k = gml_Script_scr_marker_ch1(obj_mainchara_ch1.x, obj_mainchara_ch1.y, 4204)
        var _temp_local_var_26 = k
        gml_Script_scr_depth_ch1()
    }
    if (con == 45)
    {
        global.fe = 2
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_215_0")
        con = 50
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 50 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_29 = s
        hspeed = -2
        image_speed = 0.2
        sprite_index = spr_susiel_ch1
    }
    if (con == 52)
    {
        var _temp_local_var_31 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 52.1)
    {
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_252_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 52.2
    }
    if (con == 52.2 && (!gml_Script_d_ex_ch1()))
    {
        con = 53
        alarm[4] = 30
    }
    if (con == 54)
    {
        var _temp_local_var_36 = s
        sprite_index = spr_susier_plain_ch1
    }
    if (con == 55 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_39 = k
        sprite_index = spr_krisd_ch1
    }
    if (con == 57)
    {
        var _temp_local_var_41 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 59)
    {
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_298_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_299_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_300_0")
        con = 60
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        var _temp_local_var_42 = d
        side = 0
    }
    if (con == 60 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_44 = s
        sprite_index = spr_susier_plain_ch1
    }
    if (con == 62)
    {
        var _temp_local_var_45 = s
        vspeed = -2
        hspeed = 0.75
        image_speed = 0.25
        sprite_index = spr_susieu_ch1
    }
    if (con == 64)
    {
        var _temp_local_var_47 = s
        gml_Script_scr_halt_ch1()
        sprite_index = spr_susier_plain_ch1
    }
    if (con == 66)
    {
        var _temp_local_var_48 = k
        visible = false
    }
    if (con == 68)
    {
        var _temp_local_var_50 = s
        image_speed = 0
    }
    if (con == 70)
    {
        global.fe = 8
        global.flag[6] = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkdoor_slash_Step_0_gml_363_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        with (obj_writer_ch1)
            skippable = false
        var _temp_local_var_51 = d
        skippable = false
    }
    if (con == 70.1 && (!gml_Script_d_ex_ch1()))
    {
        con = 69.2
        alarm[4] = 30
    }
    if (con == 70.2 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_55 = s
        image_speed = -0.24
    }
    if (con == 70.3)
    {
        var _temp_local_var_56 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 73 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_58 = k
        visible = true
        sprite_index = spr_krisd_ch1
    }
    if (con == 75)
    {
        global.flag[6] = 0
        if (global.plot < 251)
            global.plot = 251
        con = 76
        global.interact = 0
        with (obj_mainchara_ch1)
            visible = true
        var _temp_local_var_60 = k
        instance_destroy()
    }
}
