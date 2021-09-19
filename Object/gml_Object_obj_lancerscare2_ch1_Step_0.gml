if (mcon == 2)
    mcon = 3
if (mcon == 1)
{
    global.currentsong[0] = gml_Script_snd_init_ch1("lancer_susie.ogg")
    mcon = 2
}
if (con == 1)
{
    gml_Script_snd_free_all_ch1()
    mm = 0.5
    image_blend = merge_color(c_white, c_black, mm)
    global.interact = 1
    sus = gml_Script_scr_dark_marker_ch1((obj_mainchara_ch1.x - 100), global.cinstance[1].y, 3544)
    ral = gml_Script_scr_dark_marker_ch1((obj_mainchara_ch1.x - 50), global.cinstance[0].y, 3570)
    k = gml_Script_scr_dark_marker_ch1(obj_mainchara_ch1.x, obj_mainchara_ch1.y, 4197)
    r = ral
    s = sus
    with (obj_caterpillarchara_ch1)
        visible = false
    with (obj_mainchara_ch1)
        visible = false
    with (obj_marker_ch1)
    {
        hspeed = 6
        image_speed = 0.2
    }
    con = 2
    alarm[4] = 30
    mcon = 1
}
if (con == 2)
    global.interact = 1
if (con == 3)
{
    global.facing = 1
    con = 4
    with (obj_marker_ch1)
        gml_Script_scr_halt_ch1()
    obj_mainchara_ch1.x = k.x
    obj_mainchara_ch1.visible = true
    var _temp_local_var_1 = k
    instance_destroy()
}
if (con == 5)
{
    global.currentsong[1] = gml_Script_mus_loop_ch1(global.currentsong[0])
    global.fc = 5
    global.fe = 1
    global.typer = 32
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_60_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_61_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_62_0")
    con = 6
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 6 && gml_Script_d_ex_ch1() == 0)
{
    sprite_index = spr_lancer_dt_ch1
    con = 7
    alarm[4] = 25
}
if (con == 8)
{
    sprite_index = spr_lancer_lt_ch1
    con = 9
    alarm[4] = 25
}
if (con == 10)
{
    global.fe = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_84_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_85_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_86_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 11
}
if (con == 11 && gml_Script_d_ex_ch1() == 0)
{
    sprite_index = spr_lancer_lt_laugh_ch1
    image_speed = 0.5
    bucket = gml_Script_scr_dark_marker_ch1((x + 20), y, 3590)
    bucket.hspeed = -4
    bucket.depth = (depth + 10)
    gml_Script_snd_free_all_ch1()
    gml_Script_snd_play_ch1(454)
    gml_Script_snd_play_ch1(376)
    lightning = gml_Script_scr_dark_marker_ch1(200, 0, 3589)
    lightning.image_alpha = 3
    con = 12
    ctimer = 0
}
if (con == 12)
{
    if (mm > 0)
        mm -= 0.05
    else
        mm = 0
    image_blend = merge_color(c_white, c_black, mm)
    var _temp_local_var_4 = lightning
    image_alpha -= 0.1
}
if (con == 15)
{
    global.currentsong[1] = gml_Script_mus_loop_ch1(global.currentsong[0])
    global.fe = 3
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_137_0")
    gml_Script_scr_susface_ch1(1, 7)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_139_0")
    gml_Script_scr_lanface_ch1(3, 2)
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_141_0")
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_142_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 16
}
if (con == 14)
{
    con = 15
    global.currentsong[0] = gml_Script_snd_init_ch1("lancer.ogg")
}
if (con == 16 && gml_Script_d_ex_ch1() == 0)
{
    var _temp_local_var_7 = sus
    sprite_index = spr_susiel_dark_ch1
}
if (con == 18)
{
    var _temp_local_var_8 = sus
    sprite_index = spr_susier_dark_ch1
    hspeed = 6
    image_speed = 0.25
}
if (con == 20)
{
    var _temp_local_var_9 = sus
    gml_Script_scr_halt_ch1()
}
if (con == 25)
{
    if instance_exists(obj_writer_ch1)
    {
        if (obj_writer_ch1.msgno == 4)
        {
            var _temp_local_var_10 = sus
            sprite_index = spr_susied_dark_ch1
        }
        if (obj_writer_ch1.msgno == 5)
        {
            var _temp_local_var_11 = sus
            sprite_index = spr_susier_dark_ch1
        }
        if (obj_writer_ch1.msgno == 6)
        {
            var _temp_local_var_12 = sus
            sprite_index = spr_susied_dark_ch1
        }
        if (obj_writer_ch1.msgno == 8)
        {
            var _temp_local_var_13 = sus
            sprite_index = spr_susier_dark_ch1
        }
    }
}
if (con == 25 && gml_Script_d_ex_ch1() == 0)
{
    var _temp_local_var_15 = sus
    sprite_index = spr_susied_dark_ch1
}
if (con == 27)
{
    var _temp_local_var_16 = sus
    sprite_index = spr_susier_dark_ch1
}
if (con == 60 && gml_Script_d_ex_ch1() == 0)
{
    con = 61
    alarm[4] = 30
}
if (con == 62)
{
    global.fe = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_245_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_246_0")
    gml_Script_scr_ralface_ch1(2, 8)
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_248_0")
    gml_Script_scr_susface_ch1(4, 0)
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_250_0")
    gml_Script_scr_lanface_ch1(6, 1)
    global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_252_0")
    con = 63
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 63 && gml_Script_d_ex_ch1() == 0)
{
    fd = gml_Script_instance_create_ch1(0, 0, 1460)
    con = 64
    alarm[4] = 40
}
if (con == 65)
{
    gml_Script_snd_play_ch1(381)
    obj_mainchara_ch1.x = (bucket.x - 50)
    r.x = (bucket.x - 100)
    s.x = (bucket.x - 150)
    con = 66
    alarm[4] = 20
}
if (con == 66)
{
    var _temp_local_var_19 = fd
    instance_destroy()
}
if (con == 68)
{
    global.fe = 0
    global.msc = 175
    gml_Script_scr_text_ch1(global.msc)
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 28
}
if (con == 28 && gml_Script_d_ex_ch1() == 0)
{
    gml_Script_mus_volume_ch1(global.currentsong[1], 0, 30)
    hspeed = 16
    image_speed = 0.5
    var _temp_local_var_21 = bucket
    hspeed = 16
}
if (con == 30)
{
    gml_Script_snd_free_ch1(global.currentsong[1])
    global.fe = 0
    global.fc = 1
    global.typer = 30
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_311_0")
    con = 31
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 31 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_23 = sus
    sprite_index = spr_susiel_dark_ch1
    hspeed = -6
    image_speed = 0.25
}
if (con == 33)
{
    var _temp_local_var_24 = sus
    sprite_index = spr_susier_dark_ch1
    gml_Script_scr_halt_ch1()
}
if (con == 35)
{
    global.fe = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerscare2_slash_Step_0_gml_343_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 37
}
if (con == 37 && (!gml_Script_d_ex_ch1()))
{
    with (obj_savepoint_ch1)
        visible = true
    s = sus
    r = ral
    gml_Script_snd_free_all_ch1()
    gml_Script_scr_unmarkify_caterpillar_ch1()
    gml_Script_scr_caterpillar_facing_ch1(1)
    global.facing = 1
    con = 38
    global.interact = 0
    instance_destroy()
    if (global.plot <= 55)
        global.plot = 55
    gml_Script_scr_tempsave_ch1()
}
