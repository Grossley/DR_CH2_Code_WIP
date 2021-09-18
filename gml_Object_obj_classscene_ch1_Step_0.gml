var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_6, _temp_local_var_11, _temp_local_var_14, _temp_local_var_16, _temp_local_var_18, _temp_local_var_19, _temp_local_var_21, _temp_local_var_23, _temp_local_var_24, _temp_local_var_26, _temp_local_var_27, _temp_local_var_28, _temp_local_var_30, _temp_local_var_31, _temp_local_var_33, _temp_local_var_34, _temp_local_var_35, _temp_local_var_37, _temp_local_var_38, _temp_local_var_40, _temp_local_var_43;
if (con == 1)
{
    alarm[4] = 30
    con = 1.5
}
if (con == 2.5)
{
    global.currentsong[0] = "mus_school.ogg"
    global.fe = 0
    global.fc = 11
    global.typer = 20
    global.msg[0] = "obj_classscene_slash_Step_0_gml_14_0"
    d = gml_Script_instance_create_ch1(0, 0, 1326)
    con = 3
}
if (con == 3 && 1326 == 0)
{
    380
    var _temp_local_var_2 = door
    image_index = 1
}
if (con == 5)
{
    with (obj_mainchara_ch1)
    {
        fun = true
        sprite_index = spr_krisd_ch1
        image_speed = 0.2
        vspeed = 2
    }
    con = 6
    alarm[4] = 10
}
if (con == 7)
{
    with (obj_mainchara_ch1)
    {
        image_index = 0
        vspeed = 0
        image_speed = 0
    }
    var _temp_local_var_4 = door
    image_index = 0
}
if (con == 9)
{
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_60_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_61_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_62_0")
    con = 10
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 10 && instance_exists(obj_dialoguer_ch1) == 0)
{
    gml_Script_mus_loop_ch1(global.currentsong[0])
    gml_Script___view_set(9, 0, -4)
    door_readable = gml_Script_instance_create_ch1(244, 51, 1405)
    alphys2 = alphys
    alphys = gml_Script_instance_create_ch1(alphys.x, (alphys.y + alphys.sprite_height), 1407)
    var _temp_local_var_6 = alphys2
    instance_destroy()
}
if (con == 20 && instance_exists(obj_dialoguer_ch1) == 0)
{
    global.interact = 1
    con = 21
    alarm[4] = 2
}
if (con == 21)
    global.interact = 1
if (con == 22)
{
    global.typer = 13
    global.fc = 12
    global.fe = 3
    global.facing = 2
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_107_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_108_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_109_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_110_0")
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_111_0")
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_112_0")
    con = 23
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 23 && instance_exists(obj_dialoguer_ch1) == 0)
{
    gml_Script_instance_create_ch1(0, 0, 1464)
    gml_Script_snd_stop_all_ch1()
    gml_Script_snd_free_ch1(global.currentsong[0])
    var _temp_local_var_11 = door
    image_index = 0
    image_speed = 0.5
    sprite_index = spr_classdoorslam_ch1
    depth = 5000
}
if (con == 25)
{
    gml_Script_snd_play_ch1(378)
    alphys2 = alphys
    alphys = gml_Script_scr_marker_ch1(alphys.x, alphys.y, 3483)
    var _temp_local_var_14 = alphys
    gml_Script_scr_depth_ch1()
}
if (con == 27)
{
    var _temp_local_var_16 = door
    image_speed = 0
    depth = 500000
}
if (con == 29 && instance_exists(obj_dialoguer_ch1) == 0)
{
    var _temp_local_var_18 = sus
    image_speed = 0.1
    vspeed = 0.5
}
if (con == 31)
{
    var _temp_local_var_19 = sus
    image_index = 0
    image_speed = 0
    vspeed = 0
}
if (con == 33)
{
    global.fe = 2
    global.fc = 11
    global.typer = 22
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_190_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 28
    alarm[4] = 20
}
if (con == 35)
{
    global.fc = 1
    global.fe = 0
    global.typer = 10
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_203_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_204_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_205_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_206_0")
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_207_0")
    gml_Script_scr_susface_ch1(5, 0)
    global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_209_0")
    global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_210_0")
    con = 36
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 36 && instance_exists(obj_dialoguer_ch1) == 0)
{
    con = 37
    alarm[4] = 40
    var _temp_local_var_21 = alphys
    sprite_index = spr_alphysd_ch1
}
if (con == 38)
{
    global.fc = 11
    global.typer = 20
    global.fe = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_230_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_231_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 39
}
if (con == 39 && instance_exists(obj_dialoguer_ch1) == 0)
{
    var _temp_local_var_23 = alphys
    sprite_index = spr_alphysr_ch1
    hspeed = 3
    image_speed = 0.2
}
if (con == 41)
{
    var _temp_local_var_24 = alphys
    sprite_index = spr_alphysu_ch1
    image_index = 0
    image_speed = 0
    hspeed = 0
}
if (con == 43)
{
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_263_0")
    con = 44
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 44 && instance_exists(obj_dialoguer_ch1) == 0)
{
    con = 45
    var _temp_local_var_26 = alphys
    sprite_index = spr_alphysl_ch1
}
if (con == 47)
{
    var _temp_local_var_27 = alphys
    sprite_index = spr_alphysr_ch1
}
if (con == 49)
{
    var _temp_local_var_28 = alphys
    sprite_index = spr_alphysd_ch1
}
if (con == 51)
{
    global.fe = 8
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_294_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_295_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_296_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_298_0")
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_299_0")
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_300_0")
    global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_301_0")
    global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_302_0")
    global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_classscene_slash_Step_0_gml_303_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 51.1
}
if (con == 51.1 && gml_Script_d_ex_ch1() == 0)
{
    var _temp_local_var_30 = alphys
    sprite_index = spr_alphysd_ch1
}
if (con == 51.2)
{
    var _temp_local_var_31 = alphys
    sprite_index = spr_alphysd_ch1
}
if (con == 51.3 && gml_Script_d_ex_ch1() == 0)
{
    var _temp_local_var_33 = alphys
    sprite_index = spr_alphysr_ch1
}
if (con == 51.4)
{
    var _temp_local_var_34 = alphys
    sprite_index = spr_alphysd_ch1
}
if (con == 52)
{
    if instance_exists(obj_writer_ch1)
    {
        if (obj_writer_ch1.msgno == 4)
        {
            var _temp_local_var_35 = alphys
            sprite_index = spr_alphysr_ch1
        }
    }
}
if (con == 52 && instance_exists(obj_dialoguer_ch1) == 0)
{
    var _temp_local_var_37 = sus
    vspeed = -1
    sprite_index = spr_susieu_ch1
    image_speed = 0.2
}
if (con == 54)
{
    var _temp_local_var_38 = sus
    instance_destroy()
}
if (con == 56)
{
    var _temp_local_var_40 = sus
    instance_destroy()
}
if (con == 57 && instance_exists(obj_dialoguer_ch1) == 0)
{
    var _temp_local_var_43 = door_readable
    instance_destroy()
}
