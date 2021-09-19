var _temp_local_var_1, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_10, _temp_local_var_11, _temp_local_var_13, _temp_local_var_16, _temp_local_var_19;
if (con > 0 && con < 50)
{
    if (con == 1 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        var _temp_local_var_3 = t
        image_index = 0
        image_speed = 0.25
        vspeed = -2
        sprite_index = spr_toriel_u_ch1
    }
    if (con == 3)
    {
        var _temp_local_var_4 = t
        image_index = 0
        image_speed = 0
        vspeed = 0
    }
    if (con == 5)
    {
        var _temp_local_var_5 = t
        image_speed = 0.25
        sprite_index = spr_toriel_windowopen_ch1
    }
    if (con == 7)
    {
        var _temp_local_var_7 = t
        image_speed = 0
    }
    if (con == 9)
    {
        var _temp_local_var_8 = t
        sprite_index = spr_toriel_d_ch1
        image_index = 0
        image_speed = 0.25
        vspeed = 2
    }
    if (con == 11)
    {
        var _temp_local_var_9 = t
        image_index = 0
        image_speed = 0
        vspeed = 0
    }
    if (con == 13)
    {
        var _temp_local_var_10 = t
        sprite_index = spr_toriel_rt_ch1
    }
    if (con == 15)
    {
        global.fe = 0
        var _temp_local_var_11 = t
        image_speed = 0.25
    }
    if (con == 20 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        var _temp_local_var_13 = t
        image_index = 0
        sprite_index = spr_toriel_d_ch1
        image_speed = 0.25
        vspeed = 3
    }
    if (con == 22)
    {
        gml_Script_snd_play_ch1(368)
        image_index = 1
        alarm[4] = 40
        con = 23
    }
    if (con == 24)
    {
        with (obj_mainchara_ch1)
        {
            fun = true
            image_speed = 0.25
            sprite_index = spr_krisl_ch1
            hspeed = -1
        }
        alarm[4] = 40
        if gml_Script_button2_h_ch1()
        {
            with (obj_mainchara_ch1)
            {
                fun = true
                image_speed = 0.25
                sprite_index = spr_krisl_ch1
                hspeed = -4
            }
            alarm[4] = 10
        }
        con = 25
    }
    if (con == 26)
    {
        global.facing = 3
        with (obj_mainchara_ch1)
        {
            image_index = 0
            hspeed = 0
            image_speed = 0
            fun = false
        }
        con = 27
        alarm[4] = 20
        if gml_Script_button2_h_ch1()
            alarm[4] = 5
    }
    if (con == 28)
    {
        global.flag[10] = 1
        global.facing = 0
        with (obj_mainchara_ch1)
        {
            image_index = 0
            hspeed = 0
            sprite_index = spr_krisd_ch1
            image_speed = 0
            fun = false
        }
        gml_Script_scr_depth_ch1()
        con = 30
        global.interact = 0
        gml_Script_scr_tempsave_ch1()
        if (global.plot < 1)
            global.plot = 1
    }
}
if (con >= 50 && con < 100)
{
    global.interact = 1
    global.facing = 1
    if (con == 50 && (!gml_Script_d_ex_ch1()))
    {
        _remfilechoice = global.filechoice
        global.filechoice += 3
        gml_Script_scr_save_ch1()
        global.filechoice = _remfilechoice
        gml_Script_mus_volume_ch1(global.currentsong[1], 0, 100)
        fade = gml_Script_instance_create_ch1(0, 0, 1460)
        var _temp_local_var_16 = fade
        fadespeed = 0.01
    }
    if (con == 52)
    {
        gml_Script_snd_free_all_ch1()
        con = 53
        alarm[4] = 150
    }
    if (con == 54)
    {
        gml_Script_scr_windowcaption_ch1(" ")
        room_goto(room_myroom_dark_ch1)
    }
}
if (con >= 100 && con < 150)
{
    global.interact = 1
    global.facing = 1
    if (con == 100 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_mus_volume_ch1(global.currentsong[1], 0, 50)
        fade = gml_Script_instance_create_ch1(0, 0, 1460)
        var _temp_local_var_19 = fade
        fadespeed = 0.02
        depth = 10000
    }
    if (con == 102)
    {
        gml_Script_snd_free_all_ch1()
        con = 103
        alarm[4] = 50
    }
    if (con == 104)
    {
        gml_Script_scr_windowcaption_ch1(" ")
        global.typer = 5
        global.fc = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_krisroom_slash_Step_0_gml_281_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 105
    }
    if (con == 105 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_instance_create_ch1(0, 0, 1462)
        gml_Script_scr_windowcaption_ch1(gml_Script_scr_84_get_lang_string_ch1("obj_krisroom_slash_Step_0_gml_289_0"))
        global.plot = 10
        gml_Script_scr_become_dark_ch1()
        room_goto(room_dark1_ch1)
    }
}
