var _temp_local_var_1, _temp_local_var_4, _temp_local_var_7, _temp_local_var_9, _temp_local_var_14, _temp_local_var_15, _temp_local_var_16, _temp_local_var_17;
if (myinteract == 3)
{
}
if (myinteract == 3 && con == 0)
{
    if (mydialoguer == 0)
    {
        sprite_index = spr_hammerguy_ch1
        image_speed = 0.1
        global.interact = 0
        myinteract = 0
        with (obj_mainchara_ch1)
            onebuffer = 5
    }
}
if (con >= 5)
{
    if (con == 10 || con == 30 || con == 50)
    {
        global.currentsong[1]
        sprite_index = spr_hammerguy_powerup_ch1
        image_index = 0
        image_speed = 0.5
        381
        con += 1
        alarm[4] = 30
        charcycle = 0
        charamt = 0
        if (global.char[1] > 0)
            charamt = 1
        if (global.char[2] > 0)
            charamt = 2
        charcycle = charamt
    }
    if (con == 12 || con == 32 || con == 52)
    {
        hitmode = 1
        sprite_index = spr_hammerguy_hit_ch1
        image_speed = 0.5
        image_index = 0
        con += 1
    }
    if (con == 15)
        var _temp_local_var_4 = char
    if (con == 13)
    {
        chartype = global.char[charcycle]
        if (charcycle == 0)
        {
            with (obj_mainchara_ch1)
                visible = false
            char = gml_Script_scr_dark_marker_ch1(390, 125, 4194)
            var _temp_local_var_7 = char
            depth = 400000
        }
        if (charcycle == 1 || charcycle == 2)
        {
            var _temp_local_var_9 = global.cinstance[(charcycle - 1)]
            visible = false
        }
        con = 14
        alarm[4] = 36
    }
    if (con == 16 || con == 36 || con == 56)
    {
        hitmode = 0
        sprite_index = spr_hammerguy_ch1
        image_speed = 0.05
        image_index = 0
        gml_Script_snd_resume_ch1(global.currentsong[1])
        con += 1
    }
    if (con == 17)
    {
        global.hp[1] = global.maxhp[1]
        global.hp[2] = global.maxhp[2]
        global.hp[3] = global.maxhp[3]
        global.typer = 6
        global.fc = 0
        gml_Script_snd_play_ch1(430)
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_hammerguy_slash_Step_0_gml_108_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_hammerguy_slash_Step_0_gml_109_0")
        mydialoguer = gml_Script_instance_create_ch1(0, 0, 1326)
        con = 18
    }
    if (con == 18 || con == 38 || con == 58)
    {
        if (!gml_Script_d_ex_ch1())
        {
            myinteract = 0
            global.interact = 0
            with (obj_mainchara_ch1)
                onebuffer = 10
            con = 0
        }
    }
    if (hitmode == 1)
    {
        if (image_index == 4)
            gml_Script_snd_play_ch1(373)
        if (image_index >= 10)
            image_index = 0
    }
    if (con == 33)
    {
        char = gml_Script_scr_dark_marker_ch1(385, 160, 3699)
        var _temp_local_var_14 = char
        depth = 400000
    }
    if (con == 35)
    {
        var _temp_local_var_15 = char
        instance_destroy()
    }
    if (con == 37)
    {
        gml_Script_scr_keyitemremove_ch1(3)
        global.typer = 6
        global.fc = 0
        gml_Script_snd_play_ch1(440)
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_hammerguy_slash_Step_0_gml_153_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_hammerguy_slash_Step_0_gml_154_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_hammerguy_slash_Step_0_gml_155_0")
        mydialoguer = gml_Script_instance_create_ch1(0, 0, 1326)
        con = 38
    }
    if (con == 53)
    {
        char = gml_Script_scr_dark_marker_ch1(390, 170, 3700)
        var _temp_local_var_16 = char
        depth = 400000
    }
    if (con == 55)
    {
        var _temp_local_var_17 = char
        instance_destroy()
    }
    if (con == 57)
    {
        gml_Script_scr_keyitemremove_ch1(4)
        gml_Script_scr_keyitemremove_ch1(6)
        gml_Script_scr_keyitemremove_ch1(7)
        gml_Script_scr_keyitemget_ch1(5)
        global.typer = 6
        global.fc = 0
        gml_Script_snd_play_ch1(440)
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_hammerguy_slash_Step_0_gml_184_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_hammerguy_slash_Step_0_gml_185_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_hammerguy_slash_Step_0_gml_186_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_hammerguy_slash_Step_0_gml_187_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_hammerguy_slash_Step_0_gml_188_0")
        mydialoguer = gml_Script_instance_create_ch1(0, 0, 1326)
        con = 58
    }
}
