if (mcon == 3)
{
    global.currentsong[0] = gml_Script_snd_init_ch1("basement.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ch1(global.currentsong[0])
    mcon = 4
}
if (mcon == 2)
{
    gml_Script_snd_free_all_ch1()
    mcon = 3
}
if (mcon == 1)
    mcon = 2
if (con == 1)
{
    diamond = gml_Script_scr_dark_marker_ch1((x + 80), (y - 47), 3985)
    puzzwall = gml_Script_scr_dark_marker_ch1(1000, 0, 3591)
    gml_Script___view_set(0, 0, 200)
    global.interact = 1
    image_speed = 0
    with (obj_mainchara_ch1)
        visible = false
    with (obj_mainchara_ch1)
        cutscene = true
    global.encounterno = 20
    gml_Script_scr_encountersetup_ch1(global.encounterno)
    s = gml_Script_scr_dark_marker_ch1(500, (gml_Script___view_get(1, 0) - 20), 3550)
    var _temp_local_var_1 = s
    gml_Script_scr_depth_ch1()
    vspeed = 5
    image_speed = 0.25
}
if (con == 2)
{
    global.interact = 1
    if (s.y >= (global.heromakey[0] - 4))
    {
        var _temp_local_var_2 = s
        gml_Script_scr_halt_ch1()
        y = global.heromakey[0]
    }
}
if (con == 4)
{
    global.fc = 1
    global.typer = 30
    global.fe = 0
    global.msc = 310
    gml_Script_scr_text_ch1(global.msc)
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 150
}
if (con == 150)
{
    if (global.msc == 311)
    {
        var _temp_local_var_3 = s
        sprite_index = spr_susieu_dark_ch1
    }
}
if (con == 150 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_5 = s
    sprite_index = spr_susiel_dark_unhappy_ch1
}
if (con == 151 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_scr_pan_ch1(-5, 0, 30)
    var _temp_local_var_7 = s
    hspeed = -5
    image_speed = 0.25
}
if (con == 153)
{
    var _temp_local_var_8 = s
    gml_Script_scr_halt_ch1()
}
if (con == 155)
{
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_105_0")
    con = 160
    gml_Script_instance_create_ch1(0, 0, 1326)
    rep = 0
}
if (con == 160 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_10 = s
    sprite_index = spr_susier_dark_unhappy_ch1
}
if (con == 162)
    con = 163
if (con == 161)
{
    rep += 1
    gml_Script_snd_play_ch1(353)
    con = 162
}
if (con == 163)
{
    if (rep <= 20)
        con = 161
    else
    {
        con = 164
        var _temp_local_var_134 = exc
        instance_destroy()
    }
}
if (con == 164)
{
    global.fe = 9
    global.fc = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_147_0")
    con = 165
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 165 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_scr_pan_ch1(10, 0, 50)
    var _temp_local_var_12 = s
    sprite_index = spr_susier_dark_unhappy_ch1
    image_speed = 0.25
    hspeed = 10
}
if (con == 167)
{
    var _temp_local_var_13 = s
    gml_Script_scr_halt_ch1()
}
if (con == 169)
{
    var _temp_local_var_14 = s
    sprite_index = spr_susieu_dark_ch1
}
if (con == 170 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_16 = s
    sprite_index = spr_susiel_dark_unhappy_ch1
}
if (con == 172)
{
    global.fe = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_190_0")
    con = 174
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 174 && (!gml_Script_d_ex_ch1()))
{
    global.typer = 32
    global.fc = 0
    var _temp_local_var_18 = s
    sprite_index = spr_susier_dark_unhappy_ch1
}
if (con == 175 && (!gml_Script_d_ex_ch1()))
{
    global.fc = 1
    global.typer = 30
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_209_0")
    con = 176
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 176 && (!gml_Script_d_ex_ch1()))
{
    con = 177
    alarm[4] = 30
}
if (con == 178)
{
    var _temp_local_var_21 = s
    sprite_index = spr_susieu_dark_ch1
}
if (con == 180)
{
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_232_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 181
}
if (con == 181 && (!gml_Script_d_ex_ch1()))
{
    con = 182
    alarm[4] = 20
}
if (con == 183)
{
    gml_Script_snd_play_ch1(381)
    var _temp_local_var_23 = puzz1
    event_user(2)
}
if (con == 185)
{
    gml_Script_snd_play_ch1(381)
    var _temp_local_var_24 = puzz1
    event_user(3)
}
if (con == 187)
{
    gml_Script_snd_play_ch1(381)
    var _temp_local_var_25 = puzz1
    event_user(2)
}
if (con == 189)
{
    gml_Script_snd_free_all_ch1()
    gml_Script_instance_create_ch1(0, 0, 1464)
    gml_Script_snd_play_ch1(376)
    var _temp_local_var_26 = puzzwall
    instance_destroy()
}
if (con == 5 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_29 = s
    sprite_index = spr_susier_dark_ch1
}
if (con == 7)
{
    var _temp_local_var_30 = exc
    instance_destroy()
}
if (con == 8)
{
    gml_Script_scr_encountersetup_ch1(global.encounterno)
    gml_Script___view_set(0, 0, (gml_Script___view_get(0, 0) + 10))
    if (x <= (global.monstermakex[0] + 5))
    {
        x = global.monstermakex[0]
        con = 11
        var _temp_local_var_32 = s
        gml_Script_scr_halt_ch1()
    }
}
if (con == 11)
{
    var _temp_local_var_33 = s
    sprite_index = spr_susier_dark_unhappy_ch1
}
if (con == 12 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_35 = diamond
    hspeed = 8
}
if (con == 14)
{
    var _temp_local_var_36 = exc
    instance_destroy()
}
if (con == 15 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_battle_ch1
    var _temp_local_var_38 = s
    sprite_index = spr_susier_dark_unhappy_ch1
    hspeed = 4
    image_speed = 0.25
}
if (con == 17)
{
    var _temp_local_var_39 = s
    gml_Script_scr_halt_ch1()
}
if (con == 19)
{
    global.typer = 30
    global.fc = 1
    global.fe = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_385_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_386_0")
    gml_Script_scr_lanface_ch1(2, "C")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_388_0")
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_389_0")
    con = 20
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 20 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_rt_unhappy_ch1
    con = 21
    alarm[4] = 20
}
if (con == 22)
{
    global.fe = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_407_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_408_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_409_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_410_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 23
}
if (con == 23 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_42 = s
    hspeed = 4
    image_speed = 0.25
}
if (con == 25)
{
    var _temp_local_var_43 = s
    gml_Script_scr_halt_ch1()
}
if (con == 27)
{
    sprite_index = spr_lancer_battle_ch1
    global.typer = 30
    global.fc = 1
    global.fe = 9
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_440_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_441_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_442_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_443_0")
    gml_Script_scr_lanface_ch1(4, "C")
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_445_0")
    con = 28
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 28 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_45 = s
    sprite_index = spr_susiel_dark_unhappy_ch1
}
if (con == 30)
{
    global.fc = 1
    global.fe = 12
    global.typer = 30
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_462_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_463_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_464_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_465_0")
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_466_0")
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_467_0")
    global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_468_0")
    con = 31
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 31 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_47 = s
    hspeed = -2
    image_speed = 0.2
    sprite_index = spr_susiel_dark_unhappy_ch1
}
if (con == 31.5)
{
    var _temp_local_var_48 = s
    gml_Script_scr_halt_ch1()
}
if (con == 33)
{
    global.fe = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_500_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_501_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 33.1
}
if (con == 33.1 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_battle_hurt_ch1
    var _temp_local_var_50 = s
    sprite_index = spr_susier_dark_unhappy_ch1
}
if (con == 33.2)
{
    sprite_index = spr_lancer_battle_ch1
    var _temp_local_var_51 = exc
    instance_destroy()
}
if (con == 33.3 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_53 = s
    sprite_index = spr_susier_dark_unhappy_ch1
}
if (con == 33.4)
{
    var _temp_local_var_55 = s
    gml_Script_scr_halt_ch1()
}
if (con == 33.5)
{
    global.fe = 0
    global.fc = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_560_0")
    gml_Script_scr_lanface_ch1(1, 5)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_562_0")
    con = 34
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 34 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_57 = s
    image_index = 1
}
if (con == 36)
{
    var _temp_local_var_58 = s
    gml_Script_scr_halt_ch1()
}
if (con == 38)
{
    sprite_index = spr_lancer_battle_ch1
    image_index = 1
    global.fe = 3
    global.fc = 1
    global.typer = 30
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_595_0")
    gml_Script_scr_lanface_ch1(1, 5)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_597_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_598_0")
    con = 39
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 39 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_60 = s
    sprite_index = spr_susier_dark_laugh_ch1
    image_speed = 0.25
}
if (con == 41)
{
    var _temp_local_var_61 = s
    gml_Script_scr_halt_ch1()
    sprite_index = spr_susier_dark_ch1
}
if (con == 42 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_63 = s
    sprite_index = spr_susiel_dark_ch1
    hspeed = -3
    image_speed = 0.2
}
if (con == 43)
{
    if (s.x <= (global.heromakex[0] + 2))
    {
        var _temp_local_var_64 = s
        gml_Script_scr_halt_ch1()
    }
}
if (con == 45)
{
    global.fe = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_659_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 46
}
if (con == 46 && (!gml_Script_d_ex_ch1()))
{
    gml_Script_snd_free_all_ch1()
    var _temp_local_var_66 = s
    image_index = 0
    image_speed = 0.5
    sprite_index = spr_susieb_attack_ch1
}
if (con == 48)
{
    var _temp_local_var_67 = s
    image_speed = 0
}
if (con == 49.1)
{
    global.currentsong[0] = gml_Script_snd_init_ch1("vs_susie.ogg")
    global.fe = 4
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_691_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 50
}
if (con == 50 && (!gml_Script_d_ex_ch1()))
{
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.9, 1)
    var _temp_local_var_69 = s
    instance_destroy()
}
if (con == 53)
{
    s = gml_Script_scr_dark_marker_ch1(obj_herosusie_ch1.x, obj_herosusie_ch1.y, 3840)
    var _temp_local_var_71 = s
    gml_Script_scr_depth_ch1()
    image_index = 5
}
if (con == 55)
{
    sprite_index = spr_lancer_battle_ch1
    image_index = 0
    global.typer = 32
    global.fc = 5
    global.fe = 12
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_762_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_763_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 56
}
if (con == 56 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_74 = s
    sprite_index = spr_susieb_defeat_ch1
}
if (con == 58)
{
    global.fe = 12
    global.fc = 1
    global.typer = 30
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_781_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_782_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_783_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 59
}
if (con == 59 && (!gml_Script_d_ex_ch1()))
{
    image_index = 1
    global.fc = 5
    global.typer = 32
    global.fe = 5
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_794_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_795_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_796_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 60
}
if (con == 60 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_77 = s
    sprite_index = spr_susier_dark_unhappy_ch1
}
if (con == 62)
{
    global.typer = 30
    global.fc = 1
    global.fe = 12
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_814_0")
    gml_Script_scr_lanface_ch1(1, 5)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_816_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_817_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 63
}
if (con == 63 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_79 = s
    sprite_index = spr_susiel_dark_unhappy_ch1
    image_speed = 0.2
    hspeed = -2
}
if (con == 65)
{
    var _temp_local_var_80 = s
    gml_Script_scr_halt_ch1()
}
if (con == 67)
{
    global.typer = 30
    global.fc = 1
    global.fe = 12
    image_index = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_849_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_850_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 68
}
if (con == 68 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_82 = s
    hspeed = 6
    sprite_index = spr_susier_dark_ch1
    image_speed = 0.25
}
if (con == 70)
{
    var _temp_local_var_83 = s
    gml_Script_scr_halt_ch1()
}
if (con == 72)
{
    global.fe = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_878_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_879_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_880_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 73
}
if (con == 73 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_85 = s
    sprite_index = spr_susier_dark_unhappy_ch1
}
if (con == 74 && (!gml_Script_d_ex_ch1()))
{
    image_index = 0
    var _temp_local_var_87 = s
    sprite_index = spr_susier_dark_ch1
    hspeed = 12
    image_speed = 0.334
}
if (con == 76)
{
    var _temp_local_var_88 = s
    gml_Script_scr_halt_ch1()
}
if (con == 78)
{
    global.fc = 1
    global.typer = 30
    global.fe = 13
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_925_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_926_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_927_0")
    gml_Script_scr_lanface_ch1(3, 6)
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_929_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 79
}
if (con == 79 && (!gml_Script_d_ex_ch1()))
{
    con = 80
    alarm[4] = 30
}
if (con == 81)
{
    sprite_index = spr_lancer_lt_ch1
    global.fe = 3
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_944_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_945_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_946_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_947_0")
    gml_Script_scr_susface_ch1(4, "D")
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_949_0")
    gml_Script_scr_lanface_ch1(6, 3)
    global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_951_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 82
}
if (con == 82 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_rt_ch1
    gml_Script_scr_depth_ch1()
    vspeed = 0
    hspeed = 1
    con = 85
    alarm[4] = 20
}
if (con == 86)
{
    gml_Script_scr_halt_ch1()
    con = 86.1
    alarm[4] = 30
}
if (con == 87.1)
{
    sprite_index = spr_lancer_rt_unhappy_ch1
    global.fe = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_978_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 88
}
if (con == 88 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_92 = s
    sprite_index = spr_susier_dark_unhappy_ch1
}
if (con == 90)
{
    global.fc = 1
    global.typer = 30
    global.fe = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_995_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 91
}
if (con == 91 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_lt_unhappy_ch1
    con = 92
    alarm[4] = 50
}
if (con == 93)
{
    global.fc = 5
    global.typer = 32
    global.fe = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_1012_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_1013_0")
    gml_Script_scr_susface_ch1(2, 5)
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_1015_0")
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_lancerbattle2_event_slash_Step_0_gml_1016_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 94
}
if (con == 94 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_95 = s
    sprite_index = spr_susier_dark_ch1
}
if (con == 95 && (!gml_Script_d_ex_ch1()))
{
    hspeed = 10
    con = 96
    alarm[4] = 60
}
if (con == 97)
{
    var _temp_local_var_97 = s
    sprite_index = spr_susied_dark_unhappy_ch1
}
if (con == 98 && (!gml_Script_d_ex_ch1()))
{
    var _temp_local_var_99 = s
    sprite_index = spr_susier_dark_ch1
    hspeed = 10
    image_speed = 0.334
}
if (con == 100)
{
    gml_Script_instance_create_ch1(0, 0, 1460)
    con = 101
    alarm[4] = 60
}
if (con == 102)
{
    global.plot = 154
    global.entrance = 0
    global.interact = 3
    gml_Script_instance_create_ch1(0, 0, 1462)
    room_goto(room_cc_prison_cells_ch1)
}
