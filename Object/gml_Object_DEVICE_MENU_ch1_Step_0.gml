if (!input_enabled)
    return;
if (MENU_NO == 1 || MENU_NO == 4 || MENU_NO == 6 || MENU_NO == 7)
{
    if gml_Script_left_p_ch1()
    {
        if (MENUCOORD[MENU_NO] == 1)
        {
            MENUCOORD[MENU_NO] = 0
            MOVENOISE = 1
        }
    }
    if gml_Script_right_p_ch1()
    {
        if (MENUCOORD[MENU_NO] == 0)
        {
            MENUCOORD[MENU_NO] = 1
            MOVENOISE = 1
        }
    }
    if (gml_Script_button1_p_ch1() && ONEBUFFER < 0)
    {
        ONEBUFFER = 2
        TWOBUFFER = 2
        SELNOISE = 1
        if (MENUCOORD[MENU_NO] == 0)
        {
            if (MENU_NO == 1)
            {
                if (FILE[MENUCOORD[0]] == 1)
                {
                    global.filechoice = MENUCOORD[0]
                    gml_Script_scr_windowcaption_ch1(gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_35_0"))
                    gml_Script_snd_free_all_ch1()
                    obj_loadscreen_ch1.loaded = 1
                    if gml_Script_ossafe_file_exists_ch1((("keyconfig_" + string(global.filechoice)) + ".ini"))
                    {
                        gml_Script_ossafe_ini_open_ch1((("keyconfig_" + string(global.filechoice)) + ".ini"))
                        for (i = 0; i < 10; i += 1)
                        {
                            readval = ini_read_real("KEYBOARD_CONTROLS", string(i), -1)
                            if (readval != -1)
                                global.input_k[i] = readval
                        }
                        for (i = 0; i < 10; i += 1)
                        {
                            readval = ini_read_real("GAMEPAD_CONTROLS", string(i), -1)
                            if (readval != -1)
                                global.input_g[i] = readval
                        }
                        readval = ini_read_real("SHOULDERLB_REASSIGN", "SHOULDERLB_REASSIGN", obj_gamecontroller.gamepad_shoulderlb_reassign)
                        if (readval != -1)
                            obj_gamecontroller.gamepad_shoulderlb_reassign = readval
                        global.button0 = global.input_g[4]
                        global.button1 = global.input_g[5]
                        global.button2 = global.input_g[6]
                        if global.is_console
                        {
                            global.screen_border_id = ini_read_string("BORDER", "TYPE", "Dynamic")
                            var _disable_border = (global.screen_border_id == "None" || global.screen_border_id == "なし")
                            gml_Script_scr_enable_screen_border_ch1((!_disable_border))
                        }
                        gml_Script_ossafe_ini_close_ch1()
                        gml_Script_ossafe_savedata_save_ch1()
                    }
                }
                if (FILE[MENUCOORD[0]] == 0)
                {
                    global.filechoice = MENUCOORD[0]
                    gml_Script_snd_free_all_ch1()
                    room_goto(PLACE_CONTACT_ch1)
                }
            }
            if (MENU_NO == 4)
            {
                if (TYPE == 0)
                {
                    TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_74_0")
                    if (NAME[0] == NAME[1] && NAME[1] == NAME[2])
                    {
                        if (TIME[0] == TIME[1] && TIME[1] == TIME[2])
                        {
                            if (PLACE[0] == PLACE[1] && PLACE[1] == PLACE[2])
                                TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_77_0")
                        }
                    }
                }
                event_user(5)
                if (TYPE == 0)
                {
                    if (NAME[0] == NAME[1] && NAME[1] == NAME[2])
                    {
                        if (TIME[0] == TIME[1] && TIME[1] == TIME[2])
                        {
                            if (PLACE[0] == PLACE[1] && PLACE[1] == PLACE[2] && TEMPCOMMENT != gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_86_0"))
                                TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_86_1")
                        }
                    }
                }
                if (TYPE == 1)
                    TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_91_0")
                MESSAGETIMER = 90
                SELNOISE = 0
                DEATHNOISE = true
                MENU_NO = 0
            }
            if (MENU_NO == 7)
            {
                FILE[MENUCOORD[5]] = 0
                NAME[MENUCOORD[5]] = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_105_0")
                TIME[MENUCOORD[5]] = 0
                PLACE[MENUCOORD[5]] = "------------"
                LEVEL[MENUCOORD[5]] = 0
                TIME_STRING[MENUCOORD[5]] = "--:--"
                gml_Script_ossafe_file_delete_ch1(("filech1_" + string(MENUCOORD[5])))
                iniwrite = gml_Script_ossafe_ini_open_ch1("dr.ini")
                ini_write_string(("G" + string(MENUCOORD[5])), "Name", "[EMPTY]")
                ini_write_real(("G" + string(MENUCOORD[5])), "Level", 0)
                ini_write_real(("G" + string(MENUCOORD[5])), "Love", 0)
                ini_write_real(("G" + string(MENUCOORD[5])), "Time", 0)
                ini_write_real(("G" + string(MENUCOORD[5])), "Room", 0)
                gml_Script_ossafe_ini_close_ch1()
                gml_Script_ossafe_savedata_save_ch1()
                if gml_Script_ossafe_file_exists_ch1((("keyconfig_" + string(MENUCOORD[5])) + ".ini"))
                    gml_Script_ossafe_file_delete_ch1((("keyconfig_" + string(MENUCOORD[5])) + ".ini"))
                TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_126_0")
                if (TYPE == 1)
                    TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_127_0")
                MESSAGETIMER = 90
                SELNOISE = 0
                DEATHNOISE = true
                MENU_NO = 0
            }
            if (MENU_NO == 6)
            {
                THREAT += 1
                MENU_NO = 7
                MENUCOORD[7] = 0
            }
        }
        if (MENUCOORD[MENU_NO] == 1)
        {
            if (MENU_NO == 4 && TYPE == 0)
            {
                TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_149_0")
                MESSAGETIMER = 90
            }
            if (MENU_NO == 6 || MENU_NO == 7)
            {
                if (TYPE == 0)
                {
                    TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_156_0")
                    if (THREAT >= 10)
                    {
                        TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_159_0")
                        THREAT = 0
                    }
                    MESSAGETIMER = 90
                }
            }
            MENU_NO = 0
        }
    }
    if (gml_Script_button2_p_ch1() && TWOBUFFER < 0)
    {
        ONEBUFFER = 1
        TWOBUFFER = 1
        BACKNOISE = true
        if (MENU_NO == 1)
            MENU_NO = 0
        if (MENU_NO == 4)
            MENU_NO = 2
        if (MENU_NO == 6)
            MENU_NO = 5
        if (MENU_NO == 7)
            MENU_NO = 5
    }
}
if (MENU_NO == 2 || MENU_NO == 3 || MENU_NO == 5)
{
    if gml_Script_down_p_ch1()
    {
        if (MENUCOORD[MENU_NO] < 3)
        {
            MENUCOORD[MENU_NO] += 1
            MOVENOISE = 1
        }
    }
    if gml_Script_up_p_ch1()
    {
        if (MENUCOORD[MENU_NO] > 0)
        {
            MENUCOORD[MENU_NO] -= 1
            MOVENOISE = 1
        }
    }
    if (gml_Script_button1_p_ch1() && ONEBUFFER < 0)
    {
        if (MENUCOORD[MENU_NO] < 3)
        {
            if (MENU_NO == 3)
            {
                if (MENUCOORD[2] != MENUCOORD[3])
                {
                    if (FILE[MENUCOORD[MENU_NO]] == 1)
                    {
                        TWOBUFFER = 2
                        ONEBUFFER = 2
                        SELNOISE = 1
                        MENUCOORD[4] = 0
                        MENU_NO = 4
                    }
                    else
                    {
                        TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_225_0")
                        MESSAGETIMER = 90
                        if (TYPE == 1)
                            TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_227_0")
                        DEATHNOISE = true
                        MENU_NO = 0
                        ONEBUFFER = 2
                        TWOBUFFER = 2
                        event_user(5)
                    }
                }
                else
                {
                    TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_238_0")
                    if (TYPE == 1)
                        TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_239_0")
                    MESSAGETIMER = 90
                    TWOBUFFER = 2
                    ONEBUFFER = 2
                    BACKNOISE = true
                }
            }
            if (MENU_NO == 2)
            {
                if (FILE[MENUCOORD[MENU_NO]] == 1)
                {
                    TWOBUFFER = 2
                    ONEBUFFER = 2
                    SELNOISE = 1
                    MENUCOORD[3] = 0
                    MENU_NO = 3
                }
                else
                {
                    TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_261_0")
                    if (FILE[0] == 0 && FILE[1] == 0 && FILE[2] == 0)
                        TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_264_0")
                    if (TYPE == 1)
                        TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_266_0")
                    MESSAGETIMER = 90
                    BACKNOISE = true
                    TWOBUFFER = 2
                    ONEBUFFER = 2
                }
            }
            if (MENU_NO == 5)
            {
                if (FILE[MENUCOORD[MENU_NO]] == 1)
                {
                    TWOBUFFER = 2
                    ONEBUFFER = 2
                    SELNOISE = 1
                    MENUCOORD[6] = 0
                    MENU_NO = 6
                }
                else
                {
                    TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_289_0")
                    if (FILE[0] == 0 && FILE[1] == 0 && FILE[2] == 0)
                        TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_292_0")
                    if (TYPE == 1)
                        TEMPCOMMENT = gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Step_0_gml_294_0")
                    MESSAGETIMER = 90
                    TWOBUFFER = 2
                    ONEBUFFER = 2
                    BACKNOISE = true
                }
            }
        }
        if (MENUCOORD[MENU_NO] == 3)
        {
            TWOBUFFER = 2
            ONEBUFFER = 2
            SELNOISE = 1
            MENU_NO = 0
        }
    }
    if (gml_Script_button2_p_ch1() && TWOBUFFER < 0)
    {
        TWOBUFFER = 2
        ONEBUFFER = 2
        BACKNOISE = true
        if (MENU_NO == 2 || MENU_NO == 5)
            MENU_NO = 0
        if (MENU_NO == 3)
            MENU_NO = 2
    }
}
if (MENU_NO == 0)
{
    if gml_Script_down_p_ch1()
    {
        if (MENUCOORD[0] < 3)
        {
            MENUCOORD[0] += 1
            MOVENOISE = 1
        }
        else if (MENUCOORD[0] != 6)
        {
            MENUCOORD[0] = 6
            MOVENOISE = 1
        }
    }
    if gml_Script_up_p_ch1()
    {
        if (MENUCOORD[0] > 0)
        {
            if (MENUCOORD[0] < 3)
                MENUCOORD[0] -= 1
            else if (MENUCOORD[0] == 3 || MENUCOORD[0] == 4 || MENUCOORD[0] == 5)
                MENUCOORD[0] = 2
            else if (MENUCOORD[0] == 6)
                MENUCOORD[0] -= 2
            MOVENOISE = 1
        }
    }
    if gml_Script_right_p_ch1()
    {
        if (MENUCOORD[0] >= 3 && MENUCOORD[0] <= 5)
        {
            MOVENOISE = 1
            MENUCOORD[0] += 1
            if (MENUCOORD[0] > 5)
                MENUCOORD[0] = 3
        }
    }
    if gml_Script_left_p_ch1()
    {
        if (MENUCOORD[0] >= 3 && MENUCOORD[0] <= 5)
        {
            MOVENOISE = 1
            MENUCOORD[0] -= 1
            if (MENUCOORD[0] < 3)
                MENUCOORD[0] = 5
        }
    }
    if (gml_Script_button1_p_ch1() && ONEBUFFER < 0)
    {
        MESSAGETIMER = -1
        if (MENUCOORD[0] <= 2)
        {
            MENUCOORD[1] = 0
            ONEBUFFER = 1
            TWOBUFFER = 1
            MENU_NO = 1
            SELNOISE = 1
        }
        if (MENUCOORD[0] == 3)
        {
            MENUCOORD[2] = 0
            ONEBUFFER = 1
            TWOBUFFER = 1
            MENU_NO = 2
            SELNOISE = 1
        }
        if (MENUCOORD[0] == 4)
        {
            MENUCOORD[5] = 0
            ONEBUFFER = 1
            TWOBUFFER = 1
            MENU_NO = 5
            SELNOISE = 1
        }
        if (MENUCOORD[0] == 5)
        {
            input_enabled = 0
            SELNOISE = 1
            gml_Script_snd_free_all_ch1()
            alarm[0] = 30
        }
        if (MENUCOORD[0] == 6)
        {
            gml_Script_scr_change_language_ch1()
            gml_Script_scr_84_load_ini_ch1()
            ONEBUFFER = 2
            TWOBUFFER = 2
            SELNOISE = 1
        }
    }
}
if (OBMADE == 1)
{
    OB_DEPTH += 1
    obacktimer += OBM
    if (obacktimer >= 20)
    {
        DV = gml_Script_instance_create_ch1(0, 0, 1639)
        DV.depth = (5 + OB_DEPTH)
        DV.OBSPEED = (0.01 * OBM)
        if (OB_DEPTH >= 60000)
            OB_DEPTH = 0
        obacktimer = 0
    }
}
if (MOVENOISE == 1)
{
    gml_Script_snd_play_ch1(492)
    MOVENOISE = 0
}
if (SELNOISE == 1)
{
    gml_Script_snd_play_ch1(493)
    SELNOISE = 0
}
if (BACKNOISE == true)
{
    gml_Script_snd_play_ch1(422)
    BACKNOISE = false
}
if (DEATHNOISE == true)
{
    gml_Script_snd_play_ch1(487)
    DEATHNOISE = false
}
ONEBUFFER -= 1
TWOBUFFER -= 1
