if (!input_enabled)
    return;
if (MENU_NO == obj_pipis_bullet_cone || MENU_NO == obj_afterimage_anim || MENU_NO == obj_spamtonpainting || MENU_NO == obj_growtangle_spark || MENU_NO == obj_berdlyb_tornado_old)
{
    if gml_Script_left_p()
    {
        if (MENUCOORD[MENU_NO] == 1)
        {
            MENUCOORD[MENU_NO] = 0
            MOVENOISE = 1
        }
    }
    if gml_Script_right_p()
    {
        if (MENUCOORD[MENU_NO] == 0)
        {
            MENUCOORD[MENU_NO] = 1
            MOVENOISE = 1
        }
    }
    if (gml_Script_button1_p() && ONEBUFFER < 0)
    {
        ONEBUFFER = 2
        TWOBUFFER = 2
        SELNOISE = 1
        if (MENUCOORD[MENU_NO] == 0)
        {
            if (MENU_NO == obj_pipis_bullet_cone || MENU_NO == obj_berdlyb_tornado_old)
            {
                var FILECHECK = 0
                var FILESLOT = 0
                var DONAMING = 0
                if (MENU_NO == obj_pipis_bullet_cone)
                    FILESLOT = MENUCOORD[0]
                if (MENU_NO == obj_berdlyb_tornado_old)
                    FILESLOT = MENUCOORD[10]
                if (MENU_NO == obj_pipis_bullet_cone && FILE[MENUCOORD[0]] == 1)
                    FILECHECK = 1
                if (MENU_NO == obj_berdlyb_tornado_old)
                {
                    if INCOMPLETE_LOAD
                    {
                        if (INCOMPLETEFILE_PREV[FILESLOT] == 1)
                            FILECHECK = 1
                        else
                            FILECHECK = -1
                    }
                    else if (COMPLETEFILE_PREV[FILESLOT] == 1)
                        FILECHECK = 1
                    else
                        FILECHECK = -1
                }
                if FILECHECK
                {
                    global.filechoice = FILESLOT
                    gml_Script_snd_free_all()
                    f = gml_Script_instance_create(0, 0, obj_persistentfadein)
                    f.image_xscale = 1000
                    f.image_yscale = 1000
                    if gml_Script_ossafe_file_exists((("keyconfig_" + string(global.filechoice)) + ".ini"))
                    {
                        gml_Script_ossafe_ini_open((("keyconfig_" + string(global.filechoice)) + ".ini"))
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
                        if (!global.is_console)
                            ini_close()
                        else
                        {
                            readval = ini_read_real("SHOULDERLB_REASSIGN", "SHOULDERLB_REASSIGN", obj_gamecontroller.gamepad_shoulderlb_reassign)
                            if (readval != -1)
                                obj_gamecontroller.gamepad_shoulderlb_reassign = readval
                            global.button0 = global.input_g[4]
                            global.button1 = global.input_g[5]
                            global.button2 = global.input_g[6]
                            global.screen_border_id = ini_read_string("BORDER", "TYPE", "Dynamic")
                            var _disable_border = (global.screen_border_id == "None" || global.screen_border_id == "なし")
                            gml_Script_scr_enable_screen_border((!_disable_border))
                            gml_Script_ossafe_ini_close()
                            gml_Script_ossafe_savedata_save()
                        }
                    }
                    if (MENU_NO == obj_pipis_bullet_cone)
                    {
                        gml_Script_scr_load()
                        return;
                    }
                    if (MENU_NO == obj_berdlyb_tornado_old)
                    {
                        if (INCOMPLETE_LOAD == 0)
                        {
                            global.filechoice += 3
                            gml_Script_scr_load_chapter1()
                            global.filechoice -= 3
                        }
                        else
                            gml_Script_scr_load_chapter1()
                        if (global.flag[914] == 0)
                            global.flag[914] = (global.chapter - 1)
                        FILECHECK = -2
                        STARTGAME = 1
                    }
                }
                if (FILECHECK == 0)
                {
                    global.filechoice = FILESLOT
                    var namer = gml_Script_instance_create(0, 0, DEVICE_NAMER)
                    namer.REMMENU = MENU_NO
                    REMMENU = MENU_NO
                    MENU_NO = self
                }
                if (FILECHECK == -1)
                    gml_Script_snd_play(143)
            }
            if (MENU_NO == obj_afterimage_anim)
            {
                var temp_comment_is_interesting = 0
                if (TYPE == 0)
                {
                    TEMPCOMMENT = gml_Script_stringsetloc("IT CONFORMED TO THE REFLECTION.", "DEVICE_MENU_slash_Step_0_gml_74_0")
                    if (NAME[0] == NAME[1] && NAME[1] == NAME[2])
                    {
                        if (TIME[0] == TIME[1] && TIME[1] == TIME[2])
                        {
                            if (PLACE[0] == PLACE[1] && PLACE[1] == PLACE[2])
                            {
                                temp_comment_is_interesting = 1
                                TEMPCOMMENT = gml_Script_stringsetloc("WHAT AN INTERESTING BEHAVIOR.", "DEVICE_MENU_slash_Step_0_gml_77_0")
                            }
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
                            if (PLACE[0] == PLACE[1] && PLACE[1] == PLACE[2] && (!temp_comment_is_interesting))
                                TEMPCOMMENT = gml_Script_stringsetloc("PREPARATIONS ARE COMPLETE.", "DEVICE_MENU_slash_Step_0_gml_86_0")
                        }
                    }
                }
                if (TYPE == 1)
                    TEMPCOMMENT = gml_Script_stringsetloc("Copy complete.", "DEVICE_MENU_slash_Step_0_gml_91_0")
                MESSAGETIMER = 90
                SELNOISE = 0
                DEATHNOISE = true
                MENU_NO = obj_sneo_friedpipis
            }
            if (MENU_NO == obj_growtangle_spark)
            {
                FILE[MENUCOORD[5]] = 0
                NAME[MENUCOORD[5]] = gml_Script_stringsetloc("[EMPTY]", "DEVICE_MENU_slash_Step_0_gml_105_0")
                TIME[MENUCOORD[5]] = 0
                PLACE[MENUCOORD[5]] = "------------"
                LEVEL[MENUCOORD[5]] = 0
                TIME_STRING[MENUCOORD[5]] = "--:--"
                gml_Script_ossafe_file_delete(((("filech" + string(global.chapter)) + "_") + string(MENUCOORD[5])))
                iniwrite = gml_Script_ossafe_ini_open("dr.ini")
                ini_write_string(gml_Script_scr_ini_chapter(global.chapter, MENUCOORD[5]), "Name", "[EMPTY]")
                ini_write_real(gml_Script_scr_ini_chapter(global.chapter, MENUCOORD[5]), "Level", 0)
                ini_write_real(gml_Script_scr_ini_chapter(global.chapter, MENUCOORD[5]), "Love", 0)
                ini_write_real(gml_Script_scr_ini_chapter(global.chapter, MENUCOORD[5]), "Time", 0)
                ini_write_real(gml_Script_scr_ini_chapter(global.chapter, MENUCOORD[5]), "Room", 0)
                ini_write_real(gml_Script_scr_ini_chapter(global.chapter, MENUCOORD[5]), "Date", 0)
                ini_write_real(gml_Script_scr_ini_chapter(global.chapter, MENUCOORD[5]), "UraBoss", 0)
                gml_Script_ossafe_ini_close()
                gml_Script_ossafe_savedata_save()
                if gml_Script_ossafe_file_exists((("keyconfig_" + string(MENUCOORD[5])) + ".ini"))
                    gml_Script_ossafe_file_delete((("keyconfig_" + string(MENUCOORD[5])) + ".ini"))
                TEMPCOMMENT = gml_Script_stringsetloc("IT WAS AS IF IT WAS NEVER THERE AT ALL.", "DEVICE_MENU_slash_Step_0_gml_126_0")
                if (TYPE == 1)
                    TEMPCOMMENT = gml_Script_stringsetloc("Erase complete.", "DEVICE_MENU_slash_Step_0_gml_127_0")
                MESSAGETIMER = 90
                SELNOISE = 0
                DEATHNOISE = true
                MENU_NO = obj_sneo_friedpipis
            }
            if (MENU_NO == obj_spamtonpainting)
            {
                THREAT += 1
                MENU_NO = obj_growtangle_spark
                MENUCOORD[7] = 0
            }
        }
        if (MENU_NO >= obj_sneo_friedpipis)
        {
            if (MENUCOORD[MENU_NO] == 1)
            {
                if (MENU_NO == obj_afterimage_anim && TYPE == 0)
                {
                    TEMPCOMMENT = gml_Script_stringsetloc("IT RETAINED ITS ORIGINAL SHAPE.", "DEVICE_MENU_slash_Step_0_gml_149_0")
                    MESSAGETIMER = 90
                }
                if (MENU_NO == obj_spamtonpainting || MENU_NO == obj_growtangle_spark)
                {
                    if (TYPE == 0)
                    {
                        TEMPCOMMENT = gml_Script_stringsetloc("THEN IT WAS SPARED.", "DEVICE_MENU_slash_Step_0_gml_156_0")
                        if (THREAT >= 10)
                        {
                            TEMPCOMMENT = gml_Script_stringsetloc("VERY INTERESTING.", "DEVICE_MENU_slash_Step_0_gml_159_0")
                            THREAT = 0
                        }
                        MESSAGETIMER = 90
                    }
                }
                if (MENU_NO == obj_berdlyb_tornado_old)
                    MENU_NO = obj_gigaqueen_intro_fight
                else
                    MENU_NO = obj_sneo_friedpipis
            }
        }
    }
    if (gml_Script_button2_p() && TWOBUFFER < 0)
    {
        ONEBUFFER = 1
        TWOBUFFER = 1
        if (MENU_NO != obj_sneo_friedpipis)
            BACKNOISE = true
        if (MENU_NO == obj_pipis_bullet_cone)
            MENU_NO = obj_sneo_friedpipis
        else if (MENU_NO == obj_afterimage_anim)
            MENU_NO = obj_84_lang_helper
        else if (MENU_NO == obj_spamtonpainting)
            MENU_NO = obj_ch2_scene26_henshin_flash
        else if (MENU_NO == obj_growtangle_spark)
            MENU_NO = obj_ch2_scene26_henshin_flash
        else if (MENU_NO == obj_berdlyb_tornado_old)
            MENU_NO = obj_gigaqueen_intro_fight
    }
}
if (MENU_NO == obj_84_lang_helper || MENU_NO == obj_pipisFireworkGenerator || MENU_NO == obj_ch2_scene26_henshin_flash)
{
    if gml_Script_down_p()
    {
        if (MENUCOORD[MENU_NO] < 3)
        {
            MENUCOORD[MENU_NO] += 1
            MOVENOISE = 1
        }
    }
    if gml_Script_up_p()
    {
        if (MENUCOORD[MENU_NO] > 0)
        {
            MENUCOORD[MENU_NO] -= 1
            MOVENOISE = 1
        }
    }
    if (gml_Script_button1_p() && ONEBUFFER < 0)
    {
        if (MENUCOORD[MENU_NO] < 3)
        {
            if (MENU_NO == obj_pipisFireworkGenerator)
            {
                if (MENUCOORD[2] != MENUCOORD[3])
                {
                    if (FILE[MENUCOORD[MENU_NO]] == 1)
                    {
                        TWOBUFFER = 2
                        ONEBUFFER = 2
                        SELNOISE = 1
                        MENUCOORD[4] = 0
                        MENU_NO = obj_afterimage_anim
                    }
                    else
                    {
                        TEMPCOMMENT = gml_Script_stringsetloc("THE DIVISION IS COMPLETE.", "DEVICE_MENU_slash_Step_0_gml_225_0")
                        MESSAGETIMER = 90
                        if (TYPE == 1)
                            TEMPCOMMENT = gml_Script_stringsetloc("Copy complete.", "DEVICE_MENU_slash_Step_0_gml_227_0")
                        DEATHNOISE = true
                        MENU_NO = obj_sneo_friedpipis
                        ONEBUFFER = 2
                        TWOBUFFER = 2
                        event_user(5)
                    }
                }
                else
                {
                    TEMPCOMMENT = gml_Script_stringsetloc("IT IS IMMUNE TO ITS OWN IMAGE.", "DEVICE_MENU_slash_Step_0_gml_238_0")
                    if (TYPE == 1)
                        TEMPCOMMENT = gml_Script_stringsetloc("You can't copy there.", "DEVICE_MENU_slash_Step_0_gml_239_0")
                    MESSAGETIMER = 90
                    TWOBUFFER = 2
                    ONEBUFFER = 2
                    BACKNOISE = true
                }
            }
            if (MENU_NO == obj_84_lang_helper)
            {
                if (FILE[MENUCOORD[MENU_NO]] == 1)
                {
                    TWOBUFFER = 2
                    ONEBUFFER = 2
                    SELNOISE = 1
                    MENUCOORD[3] = 0
                    MENU_NO = obj_pipisFireworkGenerator
                }
                else
                {
                    TEMPCOMMENT = gml_Script_stringsetloc("IT IS BARREN AND CANNOT BE COPIED.", "DEVICE_MENU_slash_Step_0_gml_261_0")
                    if (FILE[0] == 0 && FILE[1] == 0 && FILE[2] == 0)
                        TEMPCOMMENT = gml_Script_stringsetloc("BUT THERE WAS NOTHING LEFT TO COPY.", "DEVICE_MENU_slash_Step_0_gml_264_0")
                    if (TYPE == 1)
                        TEMPCOMMENT = gml_Script_stringsetloc("It can't be copied.", "DEVICE_MENU_slash_Step_0_gml_266_0")
                    MESSAGETIMER = 90
                    BACKNOISE = true
                    TWOBUFFER = 2
                    ONEBUFFER = 2
                }
            }
            if (MENU_NO == obj_ch2_scene26_henshin_flash)
            {
                if (FILE[MENUCOORD[MENU_NO]] == 1)
                {
                    TWOBUFFER = 2
                    ONEBUFFER = 2
                    SELNOISE = 1
                    MENUCOORD[6] = 0
                    MENU_NO = obj_spamtonpainting
                }
                else
                {
                    TEMPCOMMENT = gml_Script_stringsetloc("BUT IT WAS ALREADY GONE.", "DEVICE_MENU_slash_Step_0_gml_289_0")
                    if (FILE[0] == 0 && FILE[1] == 0 && FILE[2] == 0)
                        TEMPCOMMENT = gml_Script_stringsetloc("BUT THERE WAS NOTHING LEFT TO ERASE.", "DEVICE_MENU_slash_Step_0_gml_292_0")
                    if (TYPE == 1)
                        TEMPCOMMENT = gml_Script_stringsetloc("There's nothing to erase.", "DEVICE_MENU_slash_Step_0_gml_294_0")
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
            MENU_NO = obj_sneo_friedpipis
        }
    }
    if (gml_Script_button2_p() && TWOBUFFER < 0)
    {
        TWOBUFFER = 2
        ONEBUFFER = 2
        BACKNOISE = true
        if (MENU_NO == obj_84_lang_helper || MENU_NO == obj_ch2_scene26_henshin_flash)
            MENU_NO = obj_sneo_friedpipis
        if (MENU_NO == obj_pipisFireworkGenerator)
            MENU_NO = obj_84_lang_helper
    }
}
if (MENU_NO == obj_sneo_friedpipis || MENU_NO == obj_gigaqueen_intro_fight)
{
    var M = MENU_NO
    var MAXY = 8
    if (M == obj_gigaqueen_intro_fight)
        MAXY = 3
    if gml_Script_down_p()
    {
        if (MENUCOORD[M] < MAXY)
        {
            if (MENUCOORD[M] < 3)
                MENUCOORD[M] += 1
            else if (MENUCOORD[M] == 3)
                MENUCOORD[M] = 5
            else if (MENUCOORD[M] == 4)
                MENUCOORD[M] = 6
            else if (MENUCOORD[M] == 7 && CANQUIT == 1)
                MENUCOORD[M] = 8
            MOVENOISE = 1
        }
    }
    if gml_Script_up_p()
    {
        if (MENUCOORD[M] > 0)
        {
            if (MENUCOORD[M] < 3)
                MENUCOORD[M] -= 1
            else if (MENUCOORD[M] == 3 || MENUCOORD[M] == 4 || MENUCOORD[M] == 7)
                MENUCOORD[M] = 2
            else if (MENUCOORD[M] == 5 || MENUCOORD[M] == 6)
                MENUCOORD[M] -= 2
            else if (MENUCOORD[M] == 8)
                MENUCOORD[M] = 7
            MOVENOISE = 1
        }
    }
    if gml_Script_right_p()
    {
        if (MENUCOORD[M] >= 3 && MENUCOORD[M] < 7)
        {
            MOVENOISE = 1
            if (MENUCOORD[M] == 4)
                MENUCOORD[M] = 7
            else if (MENUCOORD[M] == 6 && CANQUIT == 1)
                MENUCOORD[M] = 8
            else
            {
                MENUCOORD[M]
                M.MENUCOORD[MENUCOORD[M]]++
                self
            }
        }
    }
    if gml_Script_left_p()
    {
        if (MENUCOORD[M] >= 4 && MENUCOORD[M] != 5)
        {
            if (MENUCOORD[M] == 7)
                MENUCOORD[M] = 4
            else if (MENUCOORD[M] == 8)
                MENUCOORD[M] = 6
            else
            {
                MENUCOORD[M]
                M.MENUCOORD[MENUCOORD[M]]--
                self
            }
            MOVENOISE = 1
        }
    }
    if (gml_Script_button1_p() && ONEBUFFER < 0)
    {
        MESSAGETIMER = -1
        if (MENUCOORD[M] <= 2)
        {
            FILECHECK = 1
            if (MENU_NO == 10)
            {
                if (INCOMPLETE_LOAD == 0 && COMPLETEFILE_PREV[MENUCOORD[M]] != 1)
                    FILECHECK = 0
                if (INCOMPLETE_LOAD == 1 && INCOMPLETEFILE_PREV[MENUCOORD[M]] != 1)
                    FILECHECK = 0
            }
            if FILECHECK
            {
                MENUCOORD[(M + 1)] = 0
                ONEBUFFER = 1
                TWOBUFFER = 1
                MENU_NO = (M + 1)
                SELNOISE = 1
            }
            else
            {
                ONEBUFFER = 4
                gml_Script_snd_play(143)
            }
        }
        if (MENUCOORD[M] == 3)
        {
            if (M == 0)
            {
                MENUCOORD[2] = 0
                ONEBUFFER = 1
                TWOBUFFER = 1
                MENU_NO = 2
                SELNOISE = 1
            }
            else
            {
                MENUCOORD[0] = 5
                ONEBUFFER = 1
                TWOBUFFER = 1
                MENU_NO = 0
                SELNOISE = 1
            }
        }
        if (MENUCOORD[M] == 4)
        {
            MENUCOORD[5] = 0
            ONEBUFFER = 1
            TWOBUFFER = 1
            MENU_NO = 5
            SELNOISE = 1
        }
        if (MENUCOORD[M] == 5)
        {
            MENUCOORD[10] = 0
            ONEBUFFER = 1
            TWOBUFFER = 1
            MENU_NO = 10
            SELNOISE = 1
        }
        if (MENUCOORD[M] == 6)
        {
            SELNOISE = 1
            gml_Script_scr_change_language()
            gml_Script_scr_84_load_ini()
        }
        if (MENUCOORD[M] == 7)
        {
            input_enabled = 0
            SELNOISE = 1
            gml_Script_snd_free_all()
            alarm[0] = 30
        }
        if (MENUCOORD[M] == 8 && CANQUIT)
        {
            SELNOISE = 1
            gml_Script_ossafe_game_end()
        }
    }
    if (gml_Script_button2_p() && TWOBUFFER < 0)
    {
        ONEBUFFER = 1
        TWOBUFFER = 1
        BACKNOISE = true
        if (MENU_NO == 10)
            MENU_NO = 0
    }
}
if (OBMADE == 1)
{
    OB_DEPTH += 1
    obacktimer += OBM
    if (obacktimer >= 20)
    {
        DV = gml_Script_instance_create(0, 0, DEVICE_OBACK_4)
        DV.depth = (5 + OB_DEPTH)
        DV.OBSPEED = (0.01 * OBM)
        if (OB_DEPTH >= 60000)
            OB_DEPTH = 0
        obacktimer = 0
    }
}
if (MOVENOISE == 1)
{
    gml_Script_snd_play(259)
    MOVENOISE = 0
}
if (SELNOISE == 1)
{
    gml_Script_snd_play(260)
    SELNOISE = 0
}
if (BACKNOISE == true)
{
    gml_Script_snd_play(154)
    BACKNOISE = false
}
if (DEATHNOISE == true)
{
    gml_Script_snd_play(254)
    DEATHNOISE = false
}
ONEBUFFER -= 1
TWOBUFFER -= 1
if (STARTGAME == 1)
{
    gml_Script_snd_free_all()
    if (global.chapter == 1)
        room_goto(PLACE_CONTACT)
    if (global.chapter >= 2)
        room_goto(room_krisroom)
}