if (con == 1)
{
    if (obj_mainchara_ch1.x >= tx && global.interact == 0)
    {
        global.interact = 1
        global.facing = 1
        with (obj_caterpillarchara_ch1)
            visible = false
        s = gml_Script_scr_dark_marker_ch1(global.cinstance[1].x, global.cinstance[1].y, 3544)
        r = gml_Script_scr_dark_marker_ch1(global.cinstance[0].x, global.cinstance[0].y, 3570)
        k = gml_Script_scr_dark_marker_ch1(obj_mainchara_ch1.x, obj_mainchara_ch1.y, 4197)
        with (obj_mainchara_ch1)
            visible = false
        var _temp_local_var_2 = s
        gml_Script_scr_depth_ch1()
        gml_Script_scr_move_to_point_over_time_ch1((obj_mainchara_ch1.x - 120), ((obj_mainchara_ch1.y + obj_mainchara_ch1.sprite_height) - sprite_height), 15)
    }
}
if (con == 3)
{
    con = 4
    global.currentsong[0] = gml_Script_snd_init_ch1("lancer.ogg")
    alarm[4] = 15
}
if (con == 5)
{
    global.currentsong[1] = gml_Script_mus_loop_ch1(global.currentsong[0])
    global.fe = 3
    global.fc = 5
    global.typer = 32
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_49_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_50_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_51_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_52_0")
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_53_0")
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_54_0")
    d = gml_Script_instance_create_ch1(0, 0, 1326)
    d.side = 0
    con = 6
}
if (con == 6 && gml_Script_d_ex_ch1() == 0)
{
    gml_Script_snd_free_all_ch1()
    global.fc = 1
    global.fe = 0
    global.typer = 30
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_66_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_67_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_68_0")
    gml_Script_scr_lanface_ch1(3, 6)
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_70_0")
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_71_0")
    gml_Script_scr_susface_ch1(6, 1)
    global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_73_0")
    gml_Script_scr_lanface_ch1(8, 7)
    global.msg[9] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_75_0")
    gml_Script_scr_susface_ch1(10, 2)
    global.msg[11] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_77_0")
    con = 7
    d = gml_Script_instance_create_ch1(0, 0, 1326)
    d.side = 0
}
if (con == 7 && gml_Script_d_ex_ch1() == 0)
{
    oy = obj_mainchara_ch1.y
    obj_mainchara_ch1.cutscene = true
    gml_Script_scr_pan_ch1(2, 0, 60)
    global.currentsong[0] = gml_Script_snd_init_ch1("s_neo.ogg")
    var _temp_local_var_7 = s
    depth = 100
    image_speed = 0.2
    hspeed = 2
}
if (con == 8)
{
    if (abs((s.x - (r.x - 20))) < 6)
    {
        var _temp_local_var_8 = r
        sprite_index = spr_ralseid_ch1
        y -= 1
    }
    if (abs((s.x - (obj_mainchara_ch1.x - 20))) < 6)
    {
        var _temp_local_var_9 = k
        sprite_index = spr_krisd_dark_ch1
        y -= 1
    }
    if (s.x > (obj_mainchara_ch1.x + 60))
    {
        var _temp_local_var_10 = s
        gml_Script_scr_halt_ch1()
    }
}
if (con == 9)
{
    global.facing = 1
    var _temp_local_var_11 = r
    sprite_index = spr_ralseir_ch1
}
if (con == 10 && gml_Script_d_ex_ch1() == 0)
{
    var _temp_local_var_14 = s
    hspeed = 1
    image_speed = 0.1
}
if (con == 12)
{
    var _temp_local_var_15 = s
    gml_Script_scr_halt_ch1()
}
if (con == 13 && gml_Script_d_ex_ch1() == 0)
{
    var _temp_local_var_17 = s
    hspeed = 2
    vspeed = ((((obj_scarelancerevent_ch1.y - y) + obj_scarelancerevent_ch1.sprite_height) - sprite_height) / 30)
    image_speed = 0.2
}
if (con == 16)
{
    var _temp_local_var_18 = s
    gml_Script_scr_halt_ch1()
}
if (con == 17.1)
{
    _temp_local_var_19.image_index = (s.image_index + 0.25)
    var _temp_local_var_20 = s
    var _temp_local_var_21 = s
    var _temp_local_var_22 = -9
    var _temp_local_var_23 = s
    if (s.image_index == 1)
        gml_Script_snd_play_ch1(381)
    if (s.image_index >= 3)
    {
        con = 17
        alarm[4] = 30
    }
}
if (con == 18)
{
    visible = false
    global.fe = 3
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_215_0")
    con = 19
    d = gml_Script_instance_create_ch1(0, 0, 1326)
    d.side = 0
}
if (con == 19 && gml_Script_d_ex_ch1() == 0)
{
    _temp_local_var_20.image_index = (s.image_index + 0.25)
    var _temp_local_var_25 = s
    var _temp_local_var_26 = -9
    var _temp_local_var_27 = -9
    var _temp_local_var_28 = s
    if (s.image_index >= 7)
        con = 20
    alarm[4] = 30
}
if (con == 21)
{
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_234_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_235_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 22
}
if (con == 22 && gml_Script_d_ex_ch1() == 0)
{
    var _temp_local_var_30 = s
    sprite_index = spr_susie_laughlancer_ch1
    image_speed = 0.25
    image_index = 0
}
if (con == 23 && gml_Script_d_ex_ch1() == 0)
{
    con = 26
    alarm[4] = 30
}
if (con == 27 && gml_Script_d_ex_ch1() == 0)
{
    gml_Script_snd_free_all_ch1()
    var _temp_local_var_33 = s
    sprite_index = spr_susie_finelancer_ch1
}
if (con == 28 && gml_Script_d_ex_ch1() == 0)
{
    gml_Script_instance_create_ch1((s.x + 20), (s.y - 10), 1486)
    var _temp_local_var_35 = s
    sprite_index = spr_susier_dark_ch1
    image_index = 0
    image_speed = 0
}
if (con == 30)
{
    hspeed = 0
    vspeed = 0
    con = 30.1
    alarm[4] = 10
}
if (con == 31.1)
{
    i = 0
    while (i < 3)
    {
        cc[i] = gml_Script_scr_dark_marker_ch1((gml_Script___view_get(0, 0) + 700), (y - 20), 3969)
        var _temp_local_var_36 = cc[i]
        gml_Script_scr_move_to_point_over_time_ch1((global.monstermakex[0] + 60), y, 30)
        depth = 50000
    }
    con = 31
    alarm[4] = 30
}
if (con == 32)
{
    i = 0
    while (i < 3)
    {
        var _temp_local_var_37 = cc[i]
        hspeed = 0
    }
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_328_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_329_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 33
}
if (con == 33 && gml_Script_d_ex_ch1() == 0)
{
    hspeed = 16
    global.fe = 3
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_scarelancerevent_slash_Step_0_gml_340_0")
    con = 34
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 34 && gml_Script_d_ex_ch1() == 0)
{
    gml_Script_scr_pan_to_obj_ch1(1347, 20)
    con = 35
    i = 0
    while (i < 3)
    {
        var _temp_local_var_40 = cc[i]
        hspeed = -4
    }
    var _temp_local_var_41 = k
    gml_Script_scr_move_to_point_over_time_ch1(obj_mainchara_ch1.x, obj_mainchara_ch1.y, 20)
}
if (con == 36)
{
    i = 0
    while (i < 3)
    {
        var _temp_local_var_44 = cc[i]
        depth = 0
        hspeed = 0
    }
    with (obj_caterpillarchara_ch1)
        visible = true
    with (obj_mainchara_ch1)
        visible = true
    var _temp_local_var_45 = s
    instance_destroy()
}
if (con == 37 && gml_Script_d_ex_ch1() == 0)
{
    global.currentsong[0] = gml_Script_snd_init_ch1("field_of_hopes.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.7, 1)
    gml_Script_snd_pause_ch1(global.currentsong[1])
    gml_Script_instance_create_ch1(0, 0, 1624)
    global.encounterno = 22
    gml_Script_scr_encountersetup_ch1(global.encounterno)
    global.specialbattle = 0
    global.flag[9] = 1
    global.batmusic[0] = gml_Script_snd_init_ch1("battle.ogg")
    gml_Script_instance_create_ch1(0, 0, 1488)
    for (i = 0; i < 3; i += 1)
    {
        if instance_exists(cc[i])
        {
            cc[i].i = i
            var _temp_local_var_49 = cc[i]
            gml_Script_scr_move_to_point_over_time_ch1(global.monstermakex[i], global.monstermakey[i], 25)
        }
    }
    con = 38
    if (global.plot < 45)
        global.plot = 45
    alarm[4] = 25
}
if (con == 39)
{
    var _temp_local_var_50 = cc[0]
    visible = false
}
