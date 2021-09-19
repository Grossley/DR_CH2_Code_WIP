switch argument1
{
    case 0:
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_6_0")
        break
    case 1:
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_9_0")
        gml_Script_snd_play_ch1(447)
        gml_Script_scr_writetext_ch1(0, "x", 0, 0)
        script_execute(gml_Script_scr_litemshift_ch1, argument0, 0)
        break
    case 2:
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_18_0")
        gml_Script_scr_lweaponeq_ch1(argument0, argument1)
        gml_Script_snd_play_ch1(440)
        gml_Script_scr_writetext_ch1(0, "x", 0, 0)
        break
    case 3:
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_26_0")
        script_execute(gml_Script_scr_lrecoitem_ch1, 1)
        script_execute(gml_Script_scr_litemshift_ch1, argument0, 0)
        break
    case 4:
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_34_0")
        gml_Script_scr_writetext_ch1(0, "x", 0, 0)
        break
    case 5:
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_42_0")
        gml_Script_scr_writetext_ch1(0, "x", 0, 0)
        break
    case 6:
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_48_0")
        gml_Script_scr_lweaponeq_ch1(argument0, argument1)
        gml_Script_snd_play_ch1(440)
        gml_Script_scr_writetext_ch1(0, "x", 0, 0)
        break
    case 7:
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_56_0")
        gml_Script_scr_lweaponeq_ch1(argument0, argument1)
        gml_Script_snd_play_ch1(440)
        gml_Script_scr_writetext_ch1(0, "x", 0, 0)
        break
    case 8:
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_63_0")
        gml_Script_snd_play_ch1(372)
        gml_Script_scr_writetext_ch1(0, "x", 0, 0)
        break
    case 201:
        tempsaid = 0
        gml_Script_snd_play_ch1(370)
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_72_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_73_0")
        if (room == room_krisroom_ch1 || room == room_krishallway_ch1 || room == room_torbathroom_ch1)
        {
            tempsaid = 1
            global.flag[268] = 1
            gml_Script_scr_torface_ch1(1, 0)
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_82_0")
            global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_83_0")
            global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_84_0")
            gml_Script_scr_noface_ch1(5)
            global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_86_0")
        }
        if (room == room_torhouse_ch1)
        {
            tempsaid = 1
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_92_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_93_0")
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_94_0")
        }
        if (tempsaid == 0 && global.plot >= 250)
        {
            if (global.flag[272] == 0)
            {
                global.msc = 365
                gml_Script_scr_text_ch1(global.msc)
            }
            if (global.flag[272] == 1)
            {
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_109_0")
                gml_Script_scr_torface_ch1(1, 1)
                global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_111_0")
                global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_112_0")
                global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_113_0")
                global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_114_0")
                gml_Script_scr_noface_ch1(6)
                global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_116_0")
            }
            if (global.flag[272] >= 2)
            {
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_121_0")
                gml_Script_scr_torface_ch1(1, 1)
                global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_123_0")
                global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_124_0")
                global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_125_0")
                gml_Script_scr_noface_ch1(5)
                global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("scr_litemuseb_slash_scr_litemuseb_gml_127_0")
            }
            global.flag[272] += 1
        }
        gml_Script_scr_writetext_ch1(0, "x", 0, 0)
        break
    case 202:
        global.msc = 375
        gml_Script_scr_text_ch1(global.msc)
        global.typer = 5
        global.fc = 0
        gml_Script_instance_create_ch1(0, 0, 1326)
        break
}

return;
