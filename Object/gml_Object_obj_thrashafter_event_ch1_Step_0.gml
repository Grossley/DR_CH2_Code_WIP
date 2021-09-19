if (con == 1)
{
    if (obj_mainchara_ch1.x >= (x - 140) && global.interact == 0)
    {
        gml_Script_snd_free_all_ch1()
        global.facing = 1
        global.interact = 1
        sprite_index = spr_lancer_lt_ch1
        exc = gml_Script_instance_create_ch1((x + 40), (y - 20), 1486)
        gml_Script_scr_caterpillar_facing_ch1(global.facing)
        con = 2
        alarm[4] = 30
    }
}
if (con == 3)
{
    global.fe = 6
    global.fc = 5
    global.typer = 32
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_22_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_23_0")
    gml_Script_scr_ralface_ch1(2, 6)
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_25_0")
    gml_Script_scr_susface_ch1(4, 0)
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_27_0")
    global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_28_0")
    name = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_29_0")
    if (global.flag[214] == 1)
        name = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_30_0")
    if (global.flag[214] == 2)
        name = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_31_0")
    if (global.flag[214] == 3)
        name = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_32_0")
    gml_Script_scr_lanface_ch1(7, 3)
    global.msg[8] = gml_Script_scr_84_get_subst_string_ch1(gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_34_0"), name)
    global.msg[9] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_35_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 4
}
if (con == 4 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_rt_unhappy_ch1
    hspeed = 4
    con = 5
    alarm[4] = 10
}
if (con == 5)
{
    hspeed = 0
    con = 6
    alarm[4] = 20
}
if (con == 7)
{
    global.fe = 7
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_59_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_60_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_61_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 8
}
if (con == 8 && (!gml_Script_d_ex_ch1()))
{
    con = 9
    alarm[4] = 20
}
if (con == 10)
{
    global.typer = 30
    global.fe = 12
    global.fc = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_77_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_78_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_79_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_80_0")
    con = 11
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 11 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_lt_ch1
    hspeed = -8
    con = 12
    alarm[4] = 10
}
if (con == 13)
{
    gml_Script_scr_halt_ch1()
    con = 14
    alarm[4] = 15
}
if (con == 15)
{
    global.fc = 5
    global.fe = 6
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_104_0")
    gml_Script_scr_susface_ch1(1, 2)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_106_0")
    gml_Script_scr_lanface_ch1(3, 3)
    global.msg[4] = gml_Script_scr_84_get_subst_string_ch1(gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_108_0"), name)
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_109_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 16
}
if (con == 16 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_dt_ch1
    con = 17
    alarm[4] = 60
}
if (con == 18)
{
    sprite_index = spr_lancer_lt_ch1
    global.fe = 3
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_125_0")
    gml_Script_scr_susface_ch1(1, 2)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_127_0")
    gml_Script_scr_ralface_ch1(3, 3)
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_129_0")
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_130_0")
    gml_Script_scr_lanface_ch1(6, 8)
    global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_132_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 19
    global.currentsong[0] = gml_Script_snd_init_ch1("fanfare.ogg")
}
if (con == 19 && (!gml_Script_d_ex_ch1()))
{
    global.currentsong[1] = gml_Script_mus_play_ch1(global.currentsong[0])
    global.fc = 0
    global.typer = 51
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_144_0")
    d = gml_Script_instance_create_ch1(0, 0, 1326)
    d.skippable = false
    con = 20
    alarm[4] = 120
}
if (con == 21)
{
    gml_Script_snd_free_all_ch1()
    with (obj_dialoguer_ch1)
        instance_destroy()
    with (obj_writer_ch1)
        instance_destroy()
    global.typer = 30
    global.fe = 8
    global.fc = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_event_slash_Step_0_gml_159_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 22
}
if (con == 22 && (!gml_Script_d_ex_ch1()))
{
    sprite_index = spr_lancer_dt_ch1
    vspeed = -8
    con = 24
    alarm[4] = 10
}
if (con == 25 && (!gml_Script_d_ex_ch1()))
{
    npc = gml_Script_instance_create_ch1(x, y, 1408)
    npc.sprite_index = spr_lancer_dt_ch1
    con = 26
    global.interact = 0
    global.flag[229] = 1
    instance_destroy()
}
