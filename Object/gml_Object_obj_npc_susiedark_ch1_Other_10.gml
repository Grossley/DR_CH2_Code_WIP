myinteract = 3
global.msc = 0
global.typer = 30
global.fc = 1
global.fe = 0
global.interact = 1
if (room == room_castle_town_ch1)
{
    global.fe = 1
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_susiedark_slash_Other_10_gml_13_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_susiedark_slash_Other_10_gml_14_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_susiedark_slash_Other_10_gml_15_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_susiedark_slash_Other_10_gml_16_0")
    if (talked >= 1)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_susiedark_slash_Other_10_gml_20_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_susiedark_slash_Other_10_gml_21_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_npc_susiedark_slash_Other_10_gml_22_0")
    }
}
talked += 1
mydialoguer = gml_Script_instance_create_ch1(0, 0, 1326)