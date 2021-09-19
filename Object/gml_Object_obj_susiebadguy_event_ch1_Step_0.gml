var _temp_local_var_1, _temp_local_var_2, _temp_local_var_5, _temp_local_var_8, _temp_local_var_10, _temp_local_var_11, _temp_local_var_12, _temp_local_var_16, _temp_local_var_17, _temp_local_var_21, _temp_local_var_23, _temp_local_var_25, _temp_local_var_28;
if (con == 1)
{
    if (obj_mainchara_ch1.x >= (x - 200) && global.interact == 0)
    {
        gml_Script_snd_free_all_ch1()
        global.facing = 1
        with (obj_caterpillarchara_ch1)
        {
            fun = true
            if (rsprite == spr_ralseir_ch1)
                sprite_index = spr_ralseir_ch1
        }
        with (obj_mainchara_ch1)
            cutscene = true
        global.interact = 1
        sprite_index = spr_lancer_lt_ch1
        var _temp_local_var_2 = s
        sprite_index = spr_susiel_dark_ch1
    }
}
if (con == 3)
{
    global.currentsong[0] = gml_Script_snd_init_ch1("lancer.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.7, 1)
    global.typer = 31
    global.fc = 2
    global.fe = 10
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_30_0")
    gml_Script_scr_susface_ch1(1, 2)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_32_0")
    gml_Script_scr_lanface_ch1(3, 1)
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_34_0")
    gml_Script_scr_susface_ch1(5, 2)
    global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_36_0")
    gml_Script_scr_lanface_ch1(7, 2)
    global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_38_0")
    gml_Script_scr_susface_ch1(9, 4)
    global.msg[10] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_40_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 4
}
if (con == 4 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_dt_ch1
    gml_Script_snd_play_ch1(378)
    gml_Script_instance_create_ch1(0, 0, 1464)
    con = 5
    alarm[4] = 5
}
if (con == 6)
{
    global.typer = 32
    global.fc = 5
    global.fe = 2
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_60_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 7
}
if (con == 7 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_5 = s
    sprite_index = spr_susied_dark_ch1
}
if (con == 9 && (!gml_Script_d_ex_ch1()))
{
    global.typer = 30
    global.fc = 1
    global.fe = 2
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_79_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 10
}
if (con == 10 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_rt_ch1
    var _temp_local_var_8 = s
    sprite_index = spr_susiel_dark_ch1
}
if (con == 12)
{
    global.typer = 30
    global.fc = 1
    global.fe = 3
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_97_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 13
}
if (con == 13 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_snd_play_ch1(413)
    whitefade = gml_Script_scr_dark_marker_ch1(-10, -10, 4277)
    var _temp_local_var_10 = whitefade
    image_alpha = 0
    image_xscale = 1000
    image_yscale = 1000
    depth = -100
}
if (con == 14)
{
    wtimer += 1
    if (wtimer <= 25)
    {
        var _temp_local_var_11 = whitefade
        image_alpha += 0.04
    }
    if (wtimer == 26)
    {
        sprite_index = spr_lancer_pose_ch1
        var _temp_local_var_12 = s
        sprite_index = spr_susieb_spellready_ch1
    }
    if (wtimer > 28)
    {
        var _temp_local_var_16 = whitefade
        image_alpha -= 0.04
    }
    if (wtimer >= 60)
    {
        var _temp_local_var_17 = whitefade
        instance_destroy()
    }
}
if (con == 15 && (!gml_Script_d_ex_ch1()))
{
    global.typer = 32
    global.fc = 5
    global.fe = 3
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_158_0")
    if (global.flag[214] == 1)
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_161_0")
    if (global.flag[214] == 2)
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_165_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 16
}
if (con == 16 && (!gml_Script_d_ex_ch1()))
{
    alarm[4] = 30
    con = 17
}
if (con == 18)
{
    gml_Script_snd_free_all_ch1()
    global.fc = 2
    global.fe = 8
    global.typer = 31
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_185_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 19
}
if (con == 19 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_21 = s
    image_speed = 0
    image_index = 0
    sprite_index = spr_susiel_dark_unhappy_ch1
    image_xscale = 2
    x -= 60
}
if (con == 20 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_lt_ch1
    var _temp_local_var_23 = s
    sprite_index = spr_susiel_dark_ch1
}
if (con == 21 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_25 = s
    sprite_index = spr_susier_dark_ch1
}
if (con == 23)
{
    global.typer = 30
    global.fc = 1
    global.fe = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_247_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 24
}
if (con == 24 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_rt_ch1
    con = 25
    alarm[4] = 30
}
if (con == 26)
{
    global.fc = 5
    global.fe = 3
    global.typer = 32
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_susiebadguy_event_slash_Step_0_gml_265_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 27
}
if (con == 27 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_dt_ch1
    vspeed = 16
    var _temp_local_var_28 = s
    sprite_index = spr_susied_dark_ch1
    image_speed = 0.5
    vspeed = 16
}
if (con == 28.1)
{
    gml_Script_scr_pan_ch1(-4, 0, 30)
    con = 28
    alarm[4] = 30
}
if (con == 29)
{
    global.currentsong[0] = gml_Script_snd_init_ch1("forest.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.7, 1)
    global.facing = 0
    with (obj_caterpillarchara_ch1)
        fun = false
    with (obj_mainchara_ch1)
        cutscene = false
    global.interact = 0
    global.plot = 70
    con = 30
}
