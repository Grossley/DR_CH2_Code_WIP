var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_6, _temp_local_var_8, _temp_local_var_11, _temp_local_var_18, _temp_local_var_26, _temp_local_var_28, _temp_local_var_30, _temp_local_var_31, _temp_local_var_32, _temp_local_var_34, _temp_local_var_36;
if (con == 1)
{
    if (obj_mainchara_ch1.x >= 140 && global.interact == 0)
    {
        r = global.cinstance[0]
        var _temp_local_var_2 = r
        sprite_index = rsprite
        fun = true
    }
}
if (con == 2 && (!gml_Script_d_ex_ch1()))
{
    exc = gml_Script_instance_create_ch1((s.x + 30), (s.y - 20), 1486)
    con = 3
    var _temp_local_var_4 = s
    sprite_index = spr_susiel_dark_ch1
}
if (con == 4)
{
    global.typer = 31
    global.fc = 2
    global.fe = 8
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_suitspuzzle_event_slash_Step_0_gml_41_0")
    gml_Script_scr_susface_ch1(1, 7)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_suitspuzzle_event_slash_Step_0_gml_43_0")
    gml_Script_scr_lanface_ch1(3, 6)
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_suitspuzzle_event_slash_Step_0_gml_45_0")
    gml_Script_scr_susface_ch1(5, 0)
    global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_suitspuzzle_event_slash_Step_0_gml_47_0")
    gml_Script_scr_ralface_ch1(7, 6)
    global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_suitspuzzle_event_slash_Step_0_gml_49_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 5
}
if (con == 5 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_6 = r
    sprite_index = spr_ralseiu_ch1
}
if (con == 7)
{
    var _temp_local_var_8 = r
    sprite_index = spr_ralseir_ch1
}
if (con == 8 && (!gml_Script_d_ex_ch1()))
{
    global.facing = 0
    var _temp_local_var_11 = r
    fun = false
}
if (con == 9 && obj_mainchara_ch1.x < 40 && global.interact == 0)
{
    global.facing = 1
    with (obj_mainchara_ch1)
        x = 32
    global.interact = 1
    global.typer = 30
    global.fc = 1
    global.fe = 0
    if (talked == 0)
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_suitspuzzle_event_slash_Step_0_gml_133_0")
    else
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_suitspuzzle_event_slash_Step_0_gml_137_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 10
}
if (con == 10 && (!gml_Script_d_ex_ch1()))
{
    talked += 1
    with (obj_mainchara_ch1)
        x = 32
    global.interact = 0
    con = 9
}
if (con == 15 && global.interact == 0)
{
    if (obj_suitspuzz_ch1.won == 1)
    {
        global.facing = 1
        var _temp_local_var_18 = global.cinstance[0]
        fun = true
        sprite_index = rsprite
    }
}
if (con == 12)
{
    var _temp_local_var_26 = s
    sprite_index = spr_susiel_dark_ch1
}
if (con == 13 && (!gml_Script_d_ex_ch1()))
{
    global.fe = 2
    var _temp_local_var_28 = s
    sprite_index = spr_susier_dark_ch1
    image_speed = 0.5
    hspeed = 14
}
if (con == 14 && (!gml_Script_d_ex_ch1()))
{
    con = 15
    alarm[4] = 30
}
if (con == 16)
{
    var _temp_local_var_30 = s
    x = (gml_Script___view_get(0, 0) + gml_Script___view_get(2, 0))
    sprite_index = spr_susiel_dark_ch1
    hspeed = -12
}
if (con == 17)
{
    if (s.x <= 380)
    {
        var _temp_local_var_31 = s
        gml_Script_scr_halt_ch1()
    }
}
if (con == 19)
{
    var _temp_local_var_32 = s
    sprite_index = spr_susieu_dark_ch1
}
if (con == 20 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_34 = s
    sprite_index = spr_susier_dark_ch1
    image_speed = 0.5
    hspeed = 12
}
if (con == 22)
{
    var _temp_local_var_36 = global.cinstance[0]
    fun = false
}
