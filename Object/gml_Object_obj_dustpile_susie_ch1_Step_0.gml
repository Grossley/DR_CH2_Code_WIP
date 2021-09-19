gml_Script_scr_depth_ch1()
siner += 1
if (con == 1 && gml_Script___view_get(0, 0) >= 280 && obj_mainchara_ch1.y > 535)
{
    darksus = gml_Script_scr_dark_marker_ch1(873, 602, 4184)
    darksus.image_speed = 0.2
    var _temp_local_var_2 = darksus
    gml_Script_scr_depth_ch1()
}
if (con == 3)
{
    var _temp_local_var_3 = darksus
    instance_destroy()
}
if (con == 4 && gml_Script___view_get(0, 0) >= 540 && obj_mainchara_ch1.y > 535)
{
    darksus2 = gml_Script_scr_dark_marker_ch1(1116, 720, 4184)
    darksus2.image_speed = 0.2
    var _temp_local_var_5 = darksus2
    gml_Script_scr_depth_ch1()
}
if (con == 5)
{
    var _temp_local_var_6 = darksus
    instance_destroy()
}
if (con == 11)
{
    var _temp_local_var_7 = s
    hspeed = 0
}
if (con == 13)
{
    global.fc = 1
    global.fe = 7
    global.typer = 30
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_57_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 14
}
if (con == 14 && instance_exists(obj_dialoguer_ch1) == 0)
{
    con = 15
    alarm[4] = 30
}
if (con == 15)
    image_alpha -= 0.04
if (con == 16)
{
    var _temp_local_var_9 = s
    sprite_index = spr_susiel_dark_ch1
}
if (con == 17 && instance_exists(obj_dialoguer_ch1) == 0)
{
    var _temp_local_var_11 = s
    sprite_index = spr_susier_dark_ch1
}
if (con == 19)
{
    var _temp_local_var_12 = s
    sprite_index = spr_susieu_dark_ch1
}
if (con == 21)
{
    global.fe = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_104_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 22
}
if (con == 22 && instance_exists(obj_dialoguer_ch1) == 0)
{
    con = 23
    alarm[4] = 30
}
if (con == 24)
{
    var _temp_local_var_14 = s
    sprite_index = spr_susiel_dark_ch1
}
if (con == 25 && instance_exists(obj_dialoguer_ch1) == 0)
{
    var _temp_local_var_16 = s
    hspeed = -4
    image_speed = 0.2
}
if (con == 27)
{
    thisremx = s.x
    thisremy = s.y
    s.speed = (point_distance(s.x, s.y, partysus.x, partysus.y) / 10)
    s.direction = point_direction(s.x, s.y, partysus.x, partysus.y)
    con = 28
    alarm[4] = 10
}
if (con == 29)
{
    var _temp_local_var_17 = s
    instance_destroy()
}
if (con == 31)
{
    global.fe = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_156_0")
    gml_Script_scr_getchar_ch1(2)
    con = 32
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 32 && instance_exists(obj_dialoguer_ch1) == 0)
{
    y -= 200
    con = 33
    global.interact = 0
    speedtimer = 0
}
if (con == 33 && global.interact == 0)
{
    speedtimer += 1
    if (obj_mainchara_ch1.x < 560)
    {
        global.flag[202] = 2
        global.interact = 1
        con = 34
        global.fc = 1
        global.typer = 30
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_182_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (obj_mainchara_ch1.x > 1760)
    {
        global.interact = 1
        con = 35
        global.fc = 1
        global.typer = 30
        global.fe = 0
        if (speedtimer < 80)
        {
            global.flag[202] = 1
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_197_0")
        }
        else
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_dustpile_susie_slash_Step_0_gml_201_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
}
if (con == 34 && instance_exists(obj_dialoguer_ch1) == 0)
{
    var _temp_local_var_22 = partysus
    visible = false
}
if (con == 35 && instance_exists(obj_dialoguer_ch1) == 0)
{
    var _temp_local_var_25 = partysus
    visible = false
}
if (con == 40)
{
    gml_Script_scr_losechar_ch1()
    global.facing = 0
    if (global.plot < 14)
        global.plot = 14
    global.interact = 0
    var _temp_local_var_27 = news
    instance_destroy()
}
