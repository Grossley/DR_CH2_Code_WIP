xx = gml_Script___view_get(0, 0)
yy = gml_Script___view_get(1, 0)
if (global.interact == 5)
{
    charcon = 1
    if (global.submenu == 5 || global.submenu == 22)
    {
        global.charselect = global.submenucoord[global.submenu]
        global.faceaction[0] = 0
        global.faceaction[1] = 0
        global.faceaction[2] = 0
        global.faceaction[global.charselect] = 7
        if gml_Script_left_p()
        {
            movenoise = true
            if (global.submenucoord[global.submenu] > 0)
                global.submenucoord[global.submenu] -= 1
            else
                global.submenucoord[global.submenu] = (chartotal - 1)
        }
        if gml_Script_right_p()
        {
            movenoise = true
            if (global.submenucoord[global.submenu] < (chartotal - 1))
                global.submenucoord[global.submenu] += 1
            else
                global.submenucoord[global.submenu] = 0
        }
        if (gml_Script_button1_p() && onebuffer < 0 && twobuffer < 0)
        {
            onebuffer = 2
            if (global.submenu == 5)
            {
                gml_Script_scr_itemuse(global.item[global.submenucoord[2]])
                if (usable == true && replaceable == false)
                    gml_Script_scr_itemshift(global.submenucoord[2], 0)
                else if (replaceable > false)
                    global.item[global.submenucoord[2]] = replaceable
                gml_Script_scr_itemdesc()
                global.submenu = 2
                global.faceaction[global.charselect] = 0
                global.charselect = -1
            }
            if (global.submenu == 22)
            {
                gml_Script_scr_spell_overworld(global.spell[global.char[global.submenucoord[20]]][global.submenucoord[21]])
                global.tension -= global.spellcost[global.char[global.submenucoord[20]]][global.submenucoord[21]]
            }
        }
        close = 0
        if (gml_Script_button2_p() && twobuffer < 0 && onebuffer < 0)
            close = 1
        if (global.submenu == 22)
        {
            if (global.spellcost[global.char[global.submenucoord[20]]][global.submenucoord[21]] > global.tension)
                close = 1
        }
        if (close == 1)
        {
            cancelnoise = true
            global.faceaction[global.charselect] = 0
            global.charselect = -1
            twobuffer = 2
            if (global.submenu == 5)
                global.submenu = 2
            if (global.submenu == 22)
                global.submenu = 21
        }
    }
    if (global.submenu == 6 || global.submenu == 7 || global.menuno == 3)
    {
        global.charselect = 3
        global.faceaction[0] = 7
        global.faceaction[1] = 7
        global.faceaction[2] = 7
        if (gml_Script_button1_p() && onebuffer < 0 && global.submenu == 6)
        {
            onebuffer = 2
            global.faceaction[0] = 0
            global.faceaction[1] = 0
            global.faceaction[2] = 0
            gml_Script_scr_itemuse(global.item[global.submenucoord[2]])
            if (usable == true && replaceable == false)
                gml_Script_scr_itemshift(global.submenucoord[2], 0)
            else if (replaceable > false)
                global.item[global.submenucoord[2]] = replaceable
            gml_Script_scr_itemdesc()
            global.charselect = -1
            global.submenu = 2
        }
        if (gml_Script_button1_p() && onebuffer < 0 && global.submenu == 7)
        {
            onebuffer = 2
            global.faceaction[0] = 0
            global.faceaction[1] = 0
            global.faceaction[2] = 0
            throwitem = global.item[global.submenucoord[2]]
            gml_Script_scr_itemshift(global.submenucoord[2], 0)
            gml_Script_scr_itemdesc()
            global.charselect = -1
            global.submenu = 3
            gml_Script_snd_play(snd_heavyswing)
            if (throwitem == 4)
            {
                if (global.char[2] == 3 || global.char[1] == 3)
                {
                    global.interact = 1
                    gml_Script_scr_closemenu()
                    global.fc = 2
                    global.typer = 31
                    global.fe = 9
                    global.msg[0] = gml_Script_stringsetloc("* .../%", "obj_darkcontroller_slash_Step_0_gml_135_0")
                    if (global.flag[207] == 1)
                    {
                        global.fc = 0
                        global.typer = 6
                        global.msg[0] = gml_Script_stringsetloc("* (You tossed the Manual hard.^1)&* (Its pages scatter in the wind.)/", "obj_darkcontroller_slash_Step_0_gml_141_0")
                        gml_Script_scr_ralface(1, 9)
                        global.msg[2] = gml_Script_stringsetloc("* ............../", "obj_darkcontroller_slash_Step_0_gml_143_0")
                        global.msg[3] = gml_Script_stringsetloc("\\E5* Umm..^1.&* Th-that's OK^1, Kris^1!&* I can always.../", "obj_darkcontroller_slash_Step_0_gml_144_0")
                        global.msg[4] = gml_Script_stringsetloc("\\E6* I'll just make a better one next time!/%", "obj_darkcontroller_slash_Step_0_gml_145_0")
                        global.flag[207] = 2
                    }
                    if (global.flag[207] == 0)
                    {
                        global.fc = 0
                        global.typer = 6
                        global.msg[0] = gml_Script_stringsetloc("* (You drop the manual on the floor with a resounding thud.)/", "obj_darkcontroller_slash_Step_0_gml_153_0")
                        gml_Script_scr_ralface(1, 0)
                        global.msg[2] = gml_Script_stringsetloc("* Hey^1, Kris^1.&* What are you doing...?/", "obj_darkcontroller_slash_Step_0_gml_155_0")
                        global.msg[3] = gml_Script_stringsetloc("\\E3* Oh no^1!&* Is that the manual?/", "obj_darkcontroller_slash_Step_0_gml_156_0")
                        global.msg[4] = gml_Script_stringsetloc("\\E1* Looks like you accidentallly dropped it.../", "obj_darkcontroller_slash_Step_0_gml_157_0")
                        global.msg[5] = gml_Script_stringsetloc("\\E8* Here you go^1, Kris^1!&* You don't wanna lose that!/", "obj_darkcontroller_slash_Step_0_gml_158_0")
                        gml_Script_scr_noface(6)
                        global.msg[7] = gml_Script_stringsetloc("* (You got the Manual.^1)&* (Again.)/%", "obj_darkcontroller_slash_Step_0_gml_160_0")
                        gml_Script_scr_itemget(4)
                        global.flag[207] = 1
                    }
                    dl = gml_Script_instance_create(0, 0, obj_dialoguer)
                    dl.free = 1
                }
            }
        }
        if (gml_Script_button1_p() && onebuffer < 0 && global.menuno == 3)
        {
            twobuffer = 2
            onebuffer = 2
            global.faceaction[0] = 0
            global.faceaction[1] = 0
            global.faceaction[2] = 0
            global.charselect = -1
            global.interact = 6
            gml_Script_scr_talkroom()
            global.menuno = -1
            charcon = 0
        }
        if (gml_Script_button2_p() && twobuffer < 0)
        {
            cancelnoise = true
            twobuffer = 2
            global.faceaction[0] = 0
            global.faceaction[1] = 0
            global.faceaction[2] = 0
            if (global.submenu == 6)
                global.submenu = 2
            if (global.submenu == 7)
                global.submenu = 3
            if (global.menuno == 3)
                global.menuno = 0
            global.charselect = -1
        }
    }
    if (global.menuno == 5)
    {
        if (global.submenu == 30)
        {
            sndbuffer = 0
            m_quit = false
            if gml_Script_up_p()
            {
                movenoise = true
                global.submenucoord[30] -= 1
                if (global.submenucoord[30] < 0)
                    global.submenucoord[30] = 0
            }
            if gml_Script_down_p()
            {
                movenoise = true
                global.submenucoord[30] += 1
                if (global.submenucoord[30] > 6)
                    global.submenucoord[30] = 6
            }
            if (gml_Script_button1_p() && onebuffer < 0)
            {
                upbuffer = 2
                downbuffer = 2
                onebuffer = 2
                twobuffer = 2
                selectnoise = true
                if (global.submenucoord[30] == 0)
                    global.submenu = 33
                if (global.submenucoord[30] == 1)
                {
                    global.submenu = 35
                    global.submenucoord[35] = 0
                    control_select_con = 0
                    control_flash_timer = 0
                }
                if (global.submenucoord[30] == 2)
                {
                    if (global.flag[8] == 0)
                        global.flag[8] = 1
                    else
                        global.flag[8] = 0
                }
                if global.is_console
                {
                    if (global.submenucoord[30] == 3)
                    {
                        if (global.flag[11] == 0)
                            global.flag[11] = 1
                        else
                            global.flag[11] = 0
                    }
                    if (global.submenucoord[30] == 4)
                    {
                        if global.disable_border
                            selectnoise = false
                        else
                        {
                            global.submenu = 36
                            check_border = true
                            border_select = false
                        }
                    }
                    if (global.submenucoord[30] == 5)
                        global.submenu = 34
                    if (global.submenucoord[30] == 6)
                        m_quit = true
                }
                else
                {
                    if (global.submenucoord[30] == 3)
                    {
                        with (obj_time)
                            fullscreen_toggle = true
                    }
                    if (global.submenucoord[30] == 4)
                    {
                        if (global.flag[11] == 0)
                            global.flag[11] = 1
                        else
                            global.flag[11] = 0
                    }
                    if (global.submenucoord[30] == 5)
                        global.submenu = 34
                    if (global.submenucoord[30] == 6)
                        m_quit = true
                }
            }
            if (gml_Script_button2_p() && twobuffer < 0)
            {
                m_quit = true
                cancelnoise = true
            }
            if (m_quit == true)
            {
                onebuffer = 2
                twobuffer = 2
                global.menuno = 0
                global.submenu = 0
            }
        }
        if (global.submenu == 31 || global.submenu == 32 || global.submenu == 33)
        {
            se_select = 0
            sndbuffer -= 1
            muschange = false
            sndchange = false
            audchange = false
            if gml_Script_right_h()
            {
                if (global.submenu == 31)
                {
                    sndchange = true
                    if (global.flag[15] < 1)
                        global.flag[15] += 0.05
                }
                if (global.submenu == 32)
                {
                    muschange = true
                    if (global.flag[16] < 1)
                        global.flag[16] += 0.05
                }
                if (global.submenu == 33)
                {
                    if (global.flag[17] < 1)
                        global.flag[17] += 0.02
                    audchange = true
                }
            }
            if gml_Script_left_h()
            {
                if (global.submenu == 31)
                {
                    sndchange = true
                    if (global.flag[15] > 0)
                        global.flag[15] -= 0.05
                }
                if (global.submenu == 32)
                {
                    muschange = true
                    if (global.flag[16] > 0)
                        global.flag[16] -= 0.05
                }
                if (global.submenu == 33)
                {
                    audchange = true
                    if (global.flag[17] >= 0.02)
                        global.flag[17] -= 0.02
                }
            }
            if (sndchange == true && sndbuffer < 0)
            {
                audio_group_set_gain(1, global.flag[15], 0)
                gml_Script_snd_play(snd_noise)
                sndbuffer = 2
            }
            if (muschange == true)
            {
                if gml_Script_snd_is_playing(global.currentsong[1])
                    gml_Script_mus_volume(global.currentsong[1], (getmusvol * global.flag[16]), 0)
            }
            if (audchange == true && sndbuffer < 0)
            {
                gml_Script_snd_play(snd_noise)
                sndbuffer = 2
                audio_set_master_gain(0, global.flag[17])
            }
            if (gml_Script_button1_p() && onebuffer < 0)
                se_select = 1
            if (gml_Script_button2_p() && twobuffer < 0)
                se_select = 1
            if (se_select == 1)
            {
                selectnoise = true
                onebuffer = 2
                twobuffer = 2
                global.submenu = 30
            }
        }
        if (global.submenu == 34)
        {
            global.submenucoord[34] = (global.submenucoord[34] + 1)
            if (global.submenucoord[34] == 1)
            {
                global.chapter_return = 2
                gml_Script_snd_free_all()
                var lastfade = gml_Script_instance_create(gml_Script_camerax(), gml_Script_cameray(), obj_fadeout)
                lastfade.fadespeed = 0.05
                lastfade.x = (gml_Script_camerax() - 20)
                lastfade.y = (gml_Script_cameray() - 20)
                lastfade.image_xscale *= 3
                lastfade.image_yscale *= 2
                lastfade.depth = -900000
            }
            if (global.submenucoord[34] >= 50)
                gml_Script_game_restart_true()
        }
        if (global.submenu == 35)
        {
            control_select_timer = 0
            control_flash_timer -= 1
            controls_quitmenu = 0
            if (!global.is_console)
            {
                gamepad_exists = obj_gamecontroller.gamepad_active
                gamepad_id = 0
            }
            if (control_select_con == 1)
            {
                gamepad_accept = -1
                new_gamepad_key = -1
                key_accept = -1
                new_key = -1
                if (!global.is_console)
                {
                    if keyboard_check_pressed(vk_anykey)
                    {
                        for (var i = ord("0"); i <= 90; i += 1)
                        {
                            if keyboard_check_pressed(i)
                            {
                                new_key = i
                                control_select_con = 2
                            }
                        }
                        if keyboard_check_pressed(ord(";"))
                        {
                            new_key = ord(";")
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(vk_printscreen)
                        {
                            new_key = vk_printscreen
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(vk_delete)
                        {
                            new_key = vk_delete
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(ord("/"))
                        {
                            new_key = ord("/")
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(ord("\\"))
                        {
                            new_key = ord("\\")
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(ord("]"))
                        {
                            new_key = ord("]")
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(ord("["))
                        {
                            new_key = ord("[")
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(vk_numpad0)
                        {
                            new_key = vk_numpad0
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(vk_insert)
                        {
                            new_key = vk_insert
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(ord("="))
                        {
                            new_key = ord("=")
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(vk_left)
                        {
                            new_key = vk_left
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(vk_right)
                        {
                            new_key = vk_right
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(vk_up)
                        {
                            new_key = vk_up
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(vk_down)
                        {
                            new_key = vk_down
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(vk_backspace)
                        {
                            new_key = vk_backspace
                            control_select_con = 2
                        }
                        if keyboard_check_pressed(vk_alt)
                        {
                            new_key = vk_alt
                            control_select_con = 2
                        }
                        if (os_type == os_windows)
                        {
                            if (string(keyboard_key) == "91" || string(keyboard_key) == "92")
                            {
                                new_key = -1
                                control_select_con = 0
                            }
                        }
                        if keyboard_check_pressed(vk_return)
                        {
                            new_key = -1
                            control_select_con = 0
                        }
                        if keyboard_check_pressed(vk_shift)
                        {
                            new_key = -1
                            control_select_con = 0
                        }
                        if keyboard_check_pressed(vk_control)
                        {
                            new_key = -1
                            control_select_con = 0
                        }
                        if keyboard_check_pressed(vk_escape)
                        {
                            new_key = -1
                            control_select_con = 0
                        }
                    }
                }
                if (obj_gamecontroller.gamepad_active && control_select_con == 1)
                {
                    for (i = 0; i < array_length_1d(gamepad_controls); i++)
                    {
                        if gamepad_button_check_pressed(obj_gamecontroller.gamepad_id, gamepad_controls[i])
                        {
                            new_gamepad_key = gamepad_controls[i]
                            control_select_con = 2
                        }
                    }
                }
            }
            if (gml_Script_button1_p() && control_select_con == 0 && onebuffer < 0)
            {
                onebuffer = 2
                if (global.submenucoord[35] < 7)
                {
                    control_select_con = 1
                    keyboard_lastkey = -1
                    selectnoise = true
                }
                if (global.submenucoord[35] == 7)
                {
                    gml_Script_snd_play(snd_levelup)
                    gml_Script_scr_controls_default()
                    control_flash_timer = 10
                }
                if (global.submenucoord[35] == 8)
                    controls_quitmenu = 1
            }
            if (control_select_con == 0)
            {
                if (gml_Script_down_p() && controls_quitmenu == 0 && downbuffer < 0)
                {
                    if (global.submenucoord[35] < 8)
                    {
                        global.submenucoord[35] += 1
                        movenoise = true
                    }
                }
                if (gml_Script_up_p() && controls_quitmenu == 0 && upbuffer < 0)
                {
                    if (global.submenucoord[35] > 0)
                    {
                        global.submenucoord[35] -= 1
                        movenoise = true
                    }
                }
                if (gml_Script_button1_p() && controls_quitmenu == 0 && onebuffer < 2)
                {
                    cancelnoise = true
                    onebuffer = 2
                    twobuffer = 2
                    if (global.submenucoord[35] == 8)
                        controls_quitmenu = 1
                }
            }
            if (control_select_con == 2)
            {
                if (new_key != -1)
                {
                    dupe = -1
                    for (i = 0; i < 7; i += 1)
                    {
                        if (global.input_k[i] == new_key)
                            dupe = i
                    }
                    if (dupe >= 0)
                        global.input_k[dupe] = global.input_k[global.submenucoord[35]]
                    global.input_k[global.submenucoord[35]] = new_key
                    entercancel = -1
                    shiftcancel = -1
                    ctrlcancel = -1
                    for (i = 0; i < 7; i += 1)
                    {
                        if (global.input_k[i] == vk_return)
                        {
                            global.input_k[7] = -1
                            entercancel = 1
                        }
                        if (global.input_k[i] == vk_shift)
                        {
                            global.input_k[8] = -1
                            shiftcancel = 1
                        }
                        if (global.input_k[i] == vk_control)
                        {
                            global.input_k[9] = -1
                            ctrlcancel = 1
                        }
                    }
                    if (entercancel == -1)
                        global.input_k[7] = vk_return
                    if (shiftcancel == -1)
                        global.input_k[8] = vk_shift
                    if (ctrlcancel == -1)
                        global.input_k[9] = vk_control
                }
                else
                {
                    dupe = -1
                    if (new_gamepad_key == gp_shoulderlb)
                        obj_gamecontroller.gamepad_shoulderlb_reassign = true
                    for (i = 0; i < 7; i += 1)
                    {
                        if (global.input_g[i] == new_gamepad_key)
                            dupe = i
                    }
                    if (dupe >= 0)
                        global.input_g[dupe] = global.input_g[global.submenucoord[35]]
                    global.input_g[global.submenucoord[35]] = new_gamepad_key
                    if global.is_console
                    {
                        global.button0 = global.input_g[4]
                        global.button1 = global.input_g[5]
                        global.button2 = global.input_g[6]
                    }
                }
                upbuffer = 2
                downbuffer = 2
                onebuffer = 2
                twobuffer = 2
                selectnoise = true
                control_select_con = 0
            }
            if (controls_quitmenu == 1)
            {
                selectnoise = true
                onebuffer = 2
                twobuffer = 2
                gml_Script_ossafe_ini_open((("keyconfig_" + string(global.filechoice)) + ".ini"))
                for (i = 0; i < 10; i += 1)
                    ini_write_real("KEYBOARD_CONTROLS", string(i), global.input_k[i])
                for (i = 0; i < 10; i += 1)
                    ini_write_real("GAMEPAD_CONTROLS", string(i), global.input_g[i])
                ini_write_real("SHOULDERLB_REASSIGN", "SHOULDERLB_REASSIGN", obj_gamecontroller.gamepad_shoulderlb_reassign)
                gml_Script_ossafe_ini_close()
                gml_Script_ossafe_savedata_save()
                controls_quitmenu = 0
                control_select_con = 0
                global.submenucoord[35] = 0
                global.submenu = 30
            }
        }
        if (global.is_console && global.submenu == 36)
        {
            if gml_Script_right_p()
            {
                if (selected_border < (array_length_1d(border_options) - 1))
                {
                    selected_border++
                    check_border = true
                }
            }
            if gml_Script_left_p()
            {
                if (selected_border > 0)
                {
                    selected_border--
                    check_border = true
                }
            }
            if (check_border == true)
            {
                var _border = border_options[selected_border]
                if (_border == border_options[2])
                    gml_Script_scr_enable_screen_border(0)
                else
                    gml_Script_scr_enable_screen_border(1)
                global.screen_border_id = border_options[selected_border]
                check_border = false
            }
            if (gml_Script_button1_p() && onebuffer < 0)
                border_select = true
            if (gml_Script_button2_p() && twobuffer < 0)
                border_select = true
            if (border_select == true)
            {
                onebuffer = 2
                twobuffer = 2
                gml_Script_ossafe_ini_open((("keyconfig_" + string(global.filechoice)) + ".ini"))
                ini_write_string("BORDER", "TYPE", global.screen_border_id)
                gml_Script_ossafe_ini_close()
                gml_Script_ossafe_savedata_save()
                control_select_con = 0
                global.submenu = 30
            }
        }
    }
    if (global.menuno == 4)
    {
        if (global.submenu == 21)
        {
            charcoord = global.char[global.submenucoord[20]]
            if gml_Script_up_p()
            {
                if (global.submenucoord[21] > 0)
                {
                    global.submenucoord[21] -= 1
                    movenoise = true
                }
            }
            if gml_Script_down_p()
            {
                if (global.submenucoord[21] < 5)
                {
                    if (global.spell[charcoord][(global.submenucoord[21] + 1)] != 0)
                    {
                        global.submenucoord[21] += 1
                        movenoise = true
                    }
                }
            }
            if (gml_Script_button1_p() && onebuffer < 0)
            {
                if (global.spellusable[charcoord][global.submenucoord[21]] == true && global.tension >= global.spellcost[charcoord][global.submenucoord[21]])
                {
                    if (global.spelltarget[charcoord][global.submenucoord[21]] == 1)
                    {
                        global.submenu = 22
                        onebuffer = 2
                        twobuffer = 2
                    }
                }
            }
            if (gml_Script_button2_p() && twobuffer < 0)
            {
                cancelnoise = true
                deschaver = 0
                onebuffer = 2
                twobuffer = 2
                global.submenucoord[21] = 0
                global.submenu = 20
            }
        }
        if (global.submenu == 20)
        {
            if gml_Script_left_p()
            {
                movenoise = true
                global.submenucoord[20] -= 1
                if (global.submenucoord[20] < 0)
                    global.submenucoord[20] = (chartotal - 1)
                if (chartotal >= 2)
                    dograndom = ceil(random(100))
            }
            if gml_Script_right_p()
            {
                movenoise = true
                global.submenucoord[20] += 1
                if (global.submenucoord[20] > (chartotal - 1))
                    global.submenucoord[20] = 0
                if (chartotal >= 2)
                    dograndom = ceil(random(100))
            }
            if (gml_Script_button1_p() && onebuffer < 0)
            {
                selectnoise = true
                deschaver = 1
                global.submenu = 21
                onebuffer = 2
            }
            if (gml_Script_button2_p() && twobuffer < 0)
            {
                cancelnoise = true
                twobuffer = 2
                global.menuno = 0
                global.submenu = 0
                global.charselect = -1
            }
        }
    }
    if (global.menuno == 1)
    {
        if (global.submenu == 2 || global.submenu == 3)
        {
            if (gml_Script_left_p() || gml_Script_right_p())
            {
                sm = global.submenucoord[2]
                if (sm == 0 || sm == 2 || sm == 4 || sm == 6 || sm == 8 || sm == 10)
                {
                    if (global.item[(global.submenucoord[2] + 1)] != 0)
                    {
                        global.submenucoord[2] += 1
                        movenoise = true
                    }
                }
                if (sm == 1 || sm == 3 || sm == 5 || sm == 7 || sm == 9 || sm == 11)
                {
                    global.submenucoord[2] -= 1
                    movenoise = true
                }
            }
            if gml_Script_down_p()
            {
                sm = global.submenucoord[2]
                if (sm == 0 || sm == 2 || sm == 4 || sm == 6 || sm == 8)
                {
                    if (global.item[(global.submenucoord[2] + 2)] != 0)
                    {
                        global.submenucoord[2] += 2
                        movenoise = true
                    }
                }
                if (sm == 1 || sm == 3 || sm == 5 || sm == 7 || sm == 9)
                {
                    if (global.item[(global.submenucoord[2] + 2)] != 0)
                    {
                        global.submenucoord[2] += 2
                        movenoise = true
                    }
                    else if (global.item[(global.submenucoord[2] + 1)] != 0)
                    {
                        global.submenucoord[2] += 1
                        movenoise = true
                    }
                }
            }
            if gml_Script_up_p()
            {
                sm = global.submenucoord[2]
                if (sm == 2 || sm == 4 || sm == 6 || sm == 8 || sm == 10)
                {
                    global.submenucoord[2] -= 2
                    movenoise = true
                }
                if (sm == 3 || sm == 5 || sm == 7 || sm == 9 || sm == 11)
                {
                    global.submenucoord[2] -= 2
                    movenoise = true
                }
            }
            if (gml_Script_button2_p() && twobuffer < 0)
            {
                cancelnoise = true
                twobuffer = 2
                deschaver = 0
                global.submenu = 1
            }
        }
        if (global.submenu == 4)
        {
            if (gml_Script_left_p() || gml_Script_right_p())
            {
                sm = global.submenucoord[4]
                if (sm == 0 || sm == 2 || sm == 4 || sm == 6 || sm == 8 || sm == 10)
                {
                    if (global.keyitem[(global.submenucoord[4] + 1)] != 0)
                    {
                        global.submenucoord[4] += 1
                        movenoise = true
                    }
                }
                if (sm == 1 || sm == 3 || sm == 5 || sm == 7 || sm == 9 || sm == 11)
                {
                    movenoise = true
                    global.submenucoord[4] -= 1
                }
            }
            if gml_Script_down_p()
            {
                sm = global.submenucoord[4]
                if (sm == 0 || sm == 2 || sm == 4 || sm == 6 || sm == 8)
                {
                    if (global.keyitem[(global.submenucoord[4] + 2)] != 0)
                    {
                        movenoise = true
                        global.submenucoord[4] += 2
                    }
                }
                if (sm == 1 || sm == 3 || sm == 5 || sm == 7 || sm == 9)
                {
                    if (global.keyitem[(global.submenucoord[4] + 2)] != 0)
                    {
                        global.submenucoord[4] += 2
                        movenoise = true
                    }
                    else if (global.keyitem[(global.submenucoord[4] + 1)] != 0)
                    {
                        movenoise = true
                        global.submenucoord[4] += 1
                    }
                }
            }
            if gml_Script_up_p()
            {
                sm = global.submenucoord[4]
                if (sm == 2 || sm == 4 || sm == 6 || sm == 8 || sm == 10)
                {
                    global.submenucoord[4] -= 2
                    movenoise = true
                }
                if (sm == 3 || sm == 5 || sm == 7 || sm == 9 || sm == 11)
                {
                    global.submenucoord[4] -= 2
                    movenoise = true
                }
            }
            if (gml_Script_button1_p() && onebuffer < 0)
            {
                onebuffer = 2
                twobuffer = 1
                if (keyitemusable[sm] == 1)
                {
                    global.charselect = 3
                    gml_Script_scr_itemuse((global.keyitem[sm] + 300))
                }
                else
                    gml_Script_snd_play(snd_cantselect)
            }
            if (gml_Script_button2_p() && twobuffer < 0)
            {
                if (global.chapter == 2)
                {
                    with (obj_lancergotchi)
                        instance_destroy()
                }
                cancelnoise = true
                twobuffer = 2
                deschaver = 0
                global.submenu = 1
            }
        }
        if (global.submenu == 3)
        {
            if (gml_Script_button1_p() && onebuffer < 0)
            {
                selectnoise = true
                onebuffer = 3
                global.submenu = 7
            }
            if (global.item[global.submenucoord[2]] == 0)
            {
                if (global.submenucoord[2] == 0)
                {
                    global.submenu = 1
                    deschaver = 0
                    twobuffer = 2
                    onebuffer = 2
                }
                if (global.submenucoord[2] > 0)
                    global.submenucoord[2] -= 1
            }
        }
        if (global.submenu == 2)
        {
            if (gml_Script_button1_p() && onebuffer < 0 && twobuffer < 0)
            {
                onebuffer = 3
                gml_Script_scr_iteminfo(global.item[global.submenucoord[2]])
                if (itemtarget == 1)
                {
                    selectnoise = true
                    global.submenu = 5
                }
                if (itemtarget == 2)
                    global.submenu = 6
            }
            if (global.item[global.submenucoord[2]] == 0)
            {
                if (global.submenucoord[2] == 0)
                {
                    global.submenu = 1
                    deschaver = 0
                    twobuffer = 2
                    onebuffer = 2
                }
                if (global.submenucoord[2] > 0)
                    global.submenucoord[2] -= 1
            }
        }
        if (global.submenu == 1)
        {
            if gml_Script_left_p()
            {
                if (global.submenucoord[1] == 0)
                {
                    global.submenucoord[1] = 2
                    movenoise = true
                }
                else
                {
                    global.submenucoord[1] -= 1
                    movenoise = true
                }
            }
            if gml_Script_right_p()
            {
                if (global.submenucoord[1] == 2)
                {
                    global.submenucoord[1] = 0
                    movenoise = true
                }
                else
                {
                    global.submenucoord[1] += 1
                    movenoise = true
                }
            }
            if gml_Script_button1_p()
            {
                global.submenu = (global.submenucoord[1] + 2)
                if (global.submenu == 4)
                {
                    selectnoise = true
                    deschaver = 1
                    if (global.chapter == 2)
                    {
                        if gml_Script_scr_keyitemcheck(8)
                        {
                            if (!instance_exists(obj_lancergotchi))
                                gml_Script_instance_create(x, y, obj_lancergotchi)
                        }
                    }
                }
                if (global.submenu == 2 || global.submenu == 3)
                {
                    deschaver = 1
                    gml_Script_scr_itemdesc()
                    if (global.item[0] == 0)
                    {
                        global.submenu = 1
                        deschaver = 0
                    }
                    else
                        selectnoise = true
                }
            }
            if (gml_Script_button2_p() && onebuffer < 0 && twobuffer < 0)
            {
                cancelnoise = true
                twobuffer = 2
                global.menuno = 0
                global.submenu = 0
            }
        }
    }
    if (global.menuno == 2)
    {
        if (global.submenu == 12 || global.submenu == 13 || global.submenu == 14)
        {
            _up_pressed = 0
            if gml_Script_up_h()
            {
                if gml_Script_up_p()
                    _up_pressed = 1
                hold_up += 1
                if (hold_up >= 8)
                {
                    _up_pressed = 1
                    hold_up = 6
                }
                if (_up_pressed == 1)
                {
                    if (global.submenucoord[global.submenu] > 0)
                    {
                        global.submenucoord[global.submenu] -= 1
                        movenoise = true
                    }
                    if (global.submenu == 12)
                    {
                        if (global.submenucoord[global.submenu] < pagemax[0])
                        {
                            pagemax[0] -= 1
                            movenoise = true
                        }
                    }
                    if (global.submenu == 13 || global.submenu == 14)
                    {
                        if (global.submenucoord[global.submenu] < pagemax[1])
                        {
                            movenoise = true
                            pagemax[1] -= 1
                        }
                    }
                }
            }
            else
                hold_up = 0
            _down_pressed = 0
            if gml_Script_down_h()
            {
                if (gml_Script_down_p() == 1)
                    _down_pressed = 1
                hold_down += 1
                if (hold_down >= 8)
                {
                    _down_pressed = 1
                    hold_down = 6
                }
                var __equipmenumax = 47
                if (global.submenucoord[global.submenu] < __equipmenumax && _down_pressed == 1)
                {
                    movenoise = true
                    if (global.submenu == 12)
                        nextone = global.weapon[global.submenucoord[(global.submenu + 1)]]
                    if (global.submenu == 13 || global.submenu == 14)
                        nextone = global.armor[global.submenucoord[(global.submenu + 1)]]
                    global.submenucoord[global.submenu] += 1
                    if (global.submenu == 12)
                    {
                        if (global.submenucoord[global.submenu] > (pagemax[0] + 5) && pagemax[0] < __equipmenumax)
                        {
                            pagemax[0] += 1
                            movenoise = true
                        }
                    }
                    if (global.submenu == 13 || global.submenu == 14)
                    {
                        if (global.submenucoord[global.submenu] > (pagemax[1] + 5) && pagemax[1] < __equipmenumax)
                        {
                            pagemax[1] += 1
                            movenoise = true
                        }
                    }
                }
            }
            else
                hold_down = 0
            if (gml_Script_button1_p() && onebuffer < 0)
            {
                onebuffer = 5
                canequip = false
                wwho = global.char[global.submenucoord[10]]
                wmsg = " "
                if (global.submenu == 12)
                {
                    gml_Script_scr_weaponinfo(global.weapon[global.submenucoord[global.submenu]])
                    if (wwho == 2)
                        wmsg = wmessage2temp
                    if (wwho == 3)
                        wmsg = wmessage3temp
                    if (wwho == 4)
                        wmsg = wmessage4temp
                    if (wwho == 1 && weaponchar1temp == 1)
                        canequip = true
                    if (wwho == 2 && weaponchar2temp == 1)
                        canequip = true
                    if (wwho == 3 && weaponchar3temp == 1)
                        canequip = true
                    if (wwho == 4 && weaponchar4temp == 1)
                        canequip = true
                }
                if (global.submenu == 13 || global.submenu == 14)
                {
                    gml_Script_scr_armorinfo(global.armor[global.submenucoord[global.submenu]])
                    if (wwho == 2)
                        wmsg = amessage2temp
                    if (wwho == 3)
                        wmsg = amessage3temp
                    if (wwho == 4)
                        wmsg = amessage4temp
                    if (wwho == 1 && armorchar1temp == true)
                        canequip = true
                    if (wwho == 2 && armorchar2temp == true)
                        canequip = true
                    if (wwho == 3 && armorchar3temp == true)
                        canequip = true
                    if (wwho == 4 && armorchar4temp == true)
                        canequip = true
                }
                if (canequip == true)
                {
                    hold_up = 0
                    hold_down = 0
                    gml_Script_snd_play(snd_equip)
                    if (global.submenu == 12)
                    {
                        oldequip = global.charweapon[wwho]
                        newequip = global.weapon[global.submenucoord[global.submenu]]
                        global.charweapon[wwho] = newequip
                        global.weapon[global.submenucoord[global.submenu]] = oldequip
                        gml_Script_scr_weaponinfo_mine()
                        gml_Script_scr_weaponinfo_all()
                        twobuffer = 2
                        global.submenu = 11
                    }
                    if (global.submenu == 13 || global.submenu == 14)
                    {
                        if (global.submenu == 13)
                            oldequip = global.chararmor1[wwho]
                        if (global.submenu == 14)
                            oldequip = global.chararmor2[wwho]
                        newequip = global.armor[global.submenucoord[global.submenu]]
                        if (global.submenu == 13)
                            global.chararmor1[wwho] = newequip
                        if (global.submenu == 14)
                            global.chararmor2[wwho] = newequip
                        global.armor[global.submenucoord[global.submenu]] = oldequip
                        gml_Script_scr_armorinfo_mine()
                        gml_Script_scr_armorinfo_all()
                        twobuffer = 2
                        gml_Script_scr_dmenu_armor_selection_match()
                        global.submenu = 11
                    }
                }
                else
                    gml_Script_snd_play(snd_cantselect)
                gml_Script_scr_itemcomment(global.submenucoord[10], wmsg)
            }
            if (gml_Script_button2_p() && twobuffer < 0)
            {
                cancelnoise = true
                hold_up = 0
                hold_down = 0
                twobuffer = 2
                gml_Script_scr_dmenu_armor_selection_match()
                global.submenu = 11
            }
        }
        if (global.submenu == 11)
        {
            if gml_Script_up_p()
            {
                movenoise = true
                global.submenucoord[11] -= 1
                if (global.submenucoord[11] == -1)
                    global.submenucoord[11] = 2
            }
            if gml_Script_down_p()
            {
                movenoise = true
                global.submenucoord[11] += 1
                if (global.submenucoord[11] == 3)
                    global.submenucoord[11] = 0
            }
            if (gml_Script_button1_p() && onebuffer < 0)
            {
                selectnoise = true
                onebuffer = 2
                global.submenu = (12 + global.submenucoord[11])
                gml_Script_scr_dmenu_armor_selection_match()
            }
            if (gml_Script_button2_p() && twobuffer < 0)
            {
                cancelnoise = true
                deschaver = 0
                twobuffer = 2
                global.submenu = 10
            }
        }
        if (global.submenu == 10)
        {
            if gml_Script_left_p()
            {
                movenoise = true
                global.submenucoord[10] -= 1
                if (global.submenucoord[10] < 0)
                    global.submenucoord[10] = (chartotal - 1)
            }
            if gml_Script_right_p()
            {
                movenoise = true
                global.submenucoord[10] += 1
                if (global.submenucoord[10] > (chartotal - 1))
                    global.submenucoord[10] = 0
            }
            global.charselect = global.submenucoord[10]
            if (gml_Script_button1_p() && onebuffer < 0)
            {
                selectnoise = true
                deschaver = 1
                global.submenucoord[11] = 0
                global.submenu = 11
                onebuffer = 2
            }
            if (gml_Script_button2_p() && twobuffer < 0)
            {
                cancelnoise = true
                twobuffer = 2
                global.menuno = 0
                global.submenu = 0
                global.charselect = -1
            }
        }
    }
    if (global.menuno == 0)
    {
        global.submenu = 0
        if gml_Script_left_p()
        {
            if (global.menucoord[0] == 0)
            {
                global.menucoord[0] = 4
                movenoise = true
            }
            else
            {
                global.menucoord[0] -= 1
                if (global.menucoord[0] == 2)
                    global.menucoord[0] -= 1
                movenoise = true
            }
        }
        if gml_Script_right_p()
        {
            if (global.menucoord[0] == 4)
            {
                global.menucoord[0] = 0
                movenoise = true
            }
            else
            {
                global.menucoord[0] += 1
                if (global.menucoord[0] == 2)
                    global.menucoord[0] += 1
                movenoise = true
            }
        }
        if (gml_Script_button1_p() && onebuffer < 0 && twobuffer < 0)
        {
            selectnoise = true
            onebuffer = 2
            global.menuno = (global.menucoord[0] + 1)
            if (global.menuno == 1)
            {
                global.submenu = 1
                global.submenucoord[1] = 0
                global.submenucoord[2] = 0
                global.submenucoord[3] = 0
                global.submenucoord[4] = 0
            }
            if (global.menuno == 2)
            {
                gml_Script_scr_weaponinfo_all()
                gml_Script_scr_armorinfo_all()
                gml_Script_scr_weaponinfo_mine()
                gml_Script_scr_armorinfo_mine()
                global.submenucoord[10] = 0
                global.submenucoord[11] = 0
                global.submenucoord[12] = 0
                global.submenucoord[13] = 0
                global.submenucoord[14] = 0
                pagemax[0] = 0
                pagemax[1] = 0
                global.submenu = 10
                global.charselect = global.submenucoord[10]
            }
            if (global.menuno == 3)
                global.menuno = 0
            if (global.menuno == 4)
            {
                global.submenu = 20
                gml_Script_scr_spellinfo_all()
            }
            if (global.menuno == 5)
            {
                global.submenu = 30
                global.submenucoord[30] = 0
            }
        }
        close = 0
        if (gml_Script_button2_p() && twobuffer < 0)
            close = 1
        if (gml_Script_button3_p() && threebuffer < 0)
            close = 1
        if (close == 1)
        {
            if (global.menuno == 0)
            {
                global.menuno = -1
                global.interact = 0
                charcon = 0
                with (obj_mainchara)
                {
                    threebuffer = 2
                    twobuffer = 2
                }
            }
        }
    }
}
if (global.interact == 6)
{
    if (!instance_exists(obj_dialoguer))
        global.interact = 0
}
if (charcon == 1)
{
    drawchar = 1
    bpy = 60
    tpy = 80
    if (global.interact == 5)
    {
        if (tp < (tpy - 1))
        {
            if ((tpy - tp) <= 40)
                tp += round(((tpy - tp) / 2.5))
            else
                tp += 30
        }
        else
            tp = tpy
    }
    if (bp < (bpy - 1) && charcon == 1)
    {
        if ((bpy - bp) <= 40)
            bp += round(((bpy - bp) / 2.5))
        else
            bp += 30
    }
    else
        bp = bpy
}
if (charcon == 0)
{
    if (tp > 0)
    {
        if (tp >= 80)
            tp -= round((tp / 2.5))
        else
            tp -= 30
    }
    else
        tp = 0
    if (bp > 0)
    {
        if (bp >= 40)
            bp -= round((bp / 2.5))
        else
            bp -= 30
    }
    else
        bp = 0
    if (bp == 0)
        drawchar = 0
}
if (movenoise == true)
{
    gml_Script_snd_play(snd_menumove)
    movenoise = false
}
if (selectnoise == true)
{
    gml_Script_snd_play(snd_select)
    selectnoise = false
}
if (cancelnoise == true)
{
    gml_Script_snd_play(snd_smallswing)
    cancelnoise = false
}
onebuffer -= 1
twobuffer -= 1
threebuffer -= 1
upbuffer -= 1
downbuffer -= 1
if gml_Script_scr_debug()
{
    if keyboard_check_pressed(ord("S"))
        gml_Script_instance_create(0, 0, obj_savemenu)
    if keyboard_check_pressed(ord("L"))
        gml_Script_scr_load()
    if (keyboard_check_pressed(ord("R")) && keyboard_check(vk_backspace))
        gml_Script_game_restart_true()
    if (keyboard_check_pressed(ord("R")) && (!keyboard_check(vk_backspace)))
    {
        gml_Script_snd_free_all()
        room_restart()
        global.interact = 0
    }
}
