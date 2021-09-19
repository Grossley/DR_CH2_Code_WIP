var _temp_local_var_1, _temp_local_var_3, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_9, _temp_local_var_11, _temp_local_var_12;
if (con == 0)
{
    gml_Script_scr_windowcaption_ch1(" ")
    global.facing = 0
    con = 1
    alarm[4] = 90
}
if (con == 2)
{
    global.darkzone = false
    global.flag[29] = 1
    global.typer = 10
    global.fe = 0
    global.fc = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_unusedclassevent_slash_Step_0_gml_16_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 3
}
if (con == 3 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_snd_play_ch1(378)
    con = 4
    alarm[4] = 15
}
if (con == 5)
{
    gml_Script_snd_play_ch1(452)
    con = 6
    alarm[4] = 15
}
if (con == 7)
{
    gml_Script_snd_play_ch1(376)
    con = 8
    alarm[4] = 15
}
if (con == 9)
{
    gml_Script_snd_play_ch1(373)
    con = 10
    alarm[4] = 15
}
if (con == 11)
{
    gml_Script_snd_play_ch1(383)
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_unusedclassevent_slash_Step_0_gml_52_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 12
    alarm[4] = 15
}
if (con == 13 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_snd_play_ch1(368)
    con = 14
    alarm[4] = 15
}
if (con == 15)
{
    gml_Script_snd_play_ch1(445)
    con = 16
    alarm[4] = 15
}
if (con == 17)
{
    gml_Script_snd_play_ch1(378)
    con = 18
    alarm[4] = 15
}
if (con == 19)
{
    gml_Script_scr_windowcaption_ch1(gml_Script_scr_84_get_lang_string_ch1("obj_unusedclassevent_slash_Step_0_gml_81_0"))
    gml_Script_snd_play_ch1(381)
    lightsoff = 0
    s = gml_Script_scr_marker_ch1(146, 70, 3540)
    var _temp_local_var_3 = s
    depth = 100000
}
if (con == 25)
{
    global.fc = 1
    global.fe = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_unusedclassevent_slash_Step_0_gml_94_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_unusedclassevent_slash_Step_0_gml_95_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_unusedclassevent_slash_Step_0_gml_96_0")
    con = 26
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 26 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_5 = s
    image_speed = 0.1
    vspeed = 0.5
}
if (con == 28)
{
    var _temp_local_var_6 = s
    gml_Script_scr_halt_ch1()
}
if (con == 30)
{
    var _temp_local_var_7 = s
    sprite_index = spr_susier_plain_ch1
}
if (con == 31 && (!gml_Script_d_ex_ch1()))
{
    con = 32
    alarm[4] = 60
}
if (con == 33)
{
    var _temp_local_var_9 = s
    sprite_index = spr_susied_plain_ch1
}
if (con == 34 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_11 = s
    vspeed = 2
    image_speed = 0.2
}
if (con == 35)
{
    if (s.y >= 140)
    {
        gml_Script_snd_play_ch1(379)
        var _temp_local_var_12 = s
        visible = false
    }
}
if (con == 37)
{
    global.interact = 0
    if (global.plot < 250)
        global.plot = 250
    con = 38
}
