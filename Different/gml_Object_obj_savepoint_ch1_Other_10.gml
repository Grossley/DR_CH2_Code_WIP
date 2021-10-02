global.msc = 0
global.typer = 5
if (global.darkzone == true)
    global.typer = 6
global.fc = 0
global.fe = 0
global.interact = 1
nodialogue = 1
if (room == room_dark1a_ch1)
{
    nodialogue = 0
    global.msg[0] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_17_0")
    global.msg[1] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_18_0")
}
if (room == room_dark_eyepuzzle_ch1)
{
    nodialogue = 0
    if (global.hp[1] < global.maxhp[1])
    {
        global.msg[0] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_26_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_27_0")
        global.msg[2] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_28_0")
    }
    if (global.hp[1] < 30)
    {
        global.msg[0] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_33_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_34_0")
    }
    if (global.hp[1] == global.maxhp[1])
    {
        global.msg[0] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_39_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_40_0")
        global.msg[2] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_41_0")
    }
    if (talked >= true)
        nodialogue = 1
}
if (room == room_castle_town_ch1)
{
    nodialogue = 0
    global.msg[0] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_51_0")
    global.msg[1] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_52_0")
    global.msg[2] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_53_0")
    if scr_havechar_ch1(3)
    {
        global.msg[0] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_57_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_58_0")
    }
}
if (room == room_field_start_ch1)
{
    nodialogue = 0
    global.msg[0] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_66_0")
    global.msg[1] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_67_0")
    if (global.plot >= 37)
    {
        global.msg[0] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_71_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_72_0")
    }
}
if (room == room_field_shop1_ch1)
{
    nodialogue = 0
    global.msg[0] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_80_0")
    global.msg[1] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_81_0")
    if (scr_havechar_ch1(2) == 0)
    {
        global.msg[0] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_84_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_85_0")
    }
}
if (room == room_field_checkers3_ch1)
{
    nodialogue = 0
    tname = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_92_0")
    if (global.flag[214] == 1)
        tname = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_93_0")
    if (global.flag[214] == 2)
        tname = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_94_0")
    if (global.flag[214] == 3)
        tname = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_95_0")
    global.msg[0] = scr_84_get_subst_string_ch1(scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_96_0"), tname)
}
if (room == room_forest_savepoint1_ch1)
{
    nodialogue = 0
    global.msg[0] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_102_0")
    global.msg[1] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_103_0")
}
if (room == room_forest_savepoint2_ch1)
{
    nodialogue = 0
    global.msg[0] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_110_0")
    global.msg[1] = scr_84_get_lang_string_ch1("obj_savepoint_slash_Other_10_gml_111_0")
}
myinteract = 3
if (nodialogue == 0)
    mydialoguer = instance_create_ch1(0, 0, obj_dialoguer_ch1)
talked += 1
snd_play_ch1(snd_power_ch1)
for (i = 0; i < 4; i += 1)
{
    if (global.hp[i] < global.maxhp[i])
        global.hp[i] = global.maxhp[i]
}
