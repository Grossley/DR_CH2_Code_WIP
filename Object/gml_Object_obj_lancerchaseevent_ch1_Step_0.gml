var _temp_local_var_1, _temp_local_var_2, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_9, _temp_local_var_14, _temp_local_var_16, _temp_local_var_17, _temp_local_var_18, _temp_local_var_20;
if (con == 1 && obj_mainchara_ch1.x >= 1060 && global.interact == 0)
{
    global.flag[7] = 1
    with (obj_mainchara_ch1)
        cutscene = true
    global.interact = 1
    gml_Script_scr_pan_ch1(4, 0, 20)
    con = 2
    alarm[4] = 30
}
if (con == 3)
{
    global.facing = 1
    var _temp_local_var_2 = susie
    sprite_index = spr_susiel_dark_ch1
}
if (con == 4 && instance_exists(obj_dialoguer_ch1) == 0)
{
    lancer = gml_Script_scr_dark_marker_ch1(1150, 370, 4078)
    global.facing = 2
    var _temp_local_var_5 = susie
    sprite_index = spr_susieu_dark_ch1
}
if (con == 6)
{
    con = 7
    alarm[4] = 30
}
if (con == 8)
{
    var _temp_local_var_6 = lancer
    image_index = 1
}
if (con == 9)
{
    var _temp_local_var_7 = b[0]
    image_alpha += 0.04
}
if (con == 10)
{
    var _temp_local_var_9 = lancer
    image_index = 0
}
if (aftercon == true)
{
    var _temp_local_var_14 = b[0]
    a = gml_Script_scr_afterimage_ch1()
    a.image_alpha = 0.6
}
if (con == 11)
{
    if ( >= (gml_Script___view_get(1, 0).room_height - 480))
        gml_Script___view_set(1, 0, (b[0].room_height - 480))
}
if (con == 12)
{
    var _temp_local_var_16 = susie
    hspeed = 16
    sprite_index = spr_susie_shock_ch1
}
if (con == 14)
{
    var _temp_local_var_17 = susie
    hspeed = 0
}
if (con == 15.1)
{
    var _temp_local_var_18 = susie
    sprite_index = spr_susiel_dark_unhappy_ch1
}
if (con == 15.2)
{
    with (obj_panner_ch1)
        instance_destroy()
    with (obj_mainchara_ch1)
        cutscene = false
    con = 15
    alarm[4] = 10
}
if (con == 16)
{
    aftercon = false
    global.fe = 9
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerchaseevent_slash_Step_0_gml_137_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 17
}
if (con == 17 && instance_exists(obj_dialoguer_ch1) == 0)
{
    var _temp_local_var_20 = susie
    sprite_index = spr_susier_dark_unhappy_ch1
    image_speed = 0.334
    hspeed = 14
}
if (con == 19)
    con = 20