if (room == room_town_mid_ch1)
{
    if (con == 20 && (!gml_Script_d_ex_ch1()))
    {
        alarm[4] = 5
        con = 21
    }
    if (con == 21)
        global.interact = 1
    if (con == 22)
    {
        global.interact = 1
        banim = gml_Script_scr_marker_ch1((bnpc.x - 1), (bnpc.y - 14), 3642)
        banim.depth = bnpc.depth
        with (bnpc)
            visible = false
        with (banim)
            image_speed = 0.334
        con = 23
        alarm[4] = 36
    }
    if (con == 24)
    {
        with (bnpc)
            instance_destroy()
        bnpc = gml_Script_instance_create_ch1((banim.x + 9), (banim.y + 18), 1408)
        with (bnpc)
            sprite_index = spr_npc_burgerpants_ch1
        with (banim)
            instance_destroy()
        con = 25
        alarm[4] = 20
    }
    if (con == 26)
    {
        global.fc = 19
        global.typer = 5
        global.fe = 0
        global.msc = 340
        gml_Script_scr_text_ch1(global.msc)
        con = 27
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 27 && (!gml_Script_d_ex_ch1()))
    {
        global.interact = 0
        con = 28
        if (global.flag[271] == 0)
            global.flag[271] = 1
    }
    if (con == 70 && global.flag[273] == 1)
    {
        if (global.interact == 0)
        {
            if (obj_mainchara_ch1.x <= 1060 || obj_mainchara_ch1.x >= 1200 || obj_mainchara_ch1.y >= 120)
            {
                global.interact = 1
                if (obj_mainchara_ch1.x <= 1060)
                    global.facing = 1
                if (obj_mainchara_ch1.x >= 1200)
                    global.facing = 3
                if (obj_mainchara_ch1.y >= 120)
                    global.facing = 2
                con = 71
                global.typer = 14
                global.fc = 6
                global.fe = 0
                global.msc = 380
                gml_Script_scr_text_ch1(global.msc)
                gml_Script_instance_create_ch1(0, 0, 1326)
            }
        }
    }
    if (con == 71 && (!gml_Script_d_ex_ch1()))
    {
        con = 72
        global.flag[273] = 2
        global.interact = 0
        global.facing = 0
    }
}
if (room == room_town_south_ch1)
{
    if (con == 50 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(381)
        con = 51
        alarm[4] = 28
    }
    if (con == 51)
    {
        global.interact = 1
        with (policewindow)
            image_index += 0.1
    }
    if (con == 52)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_town_event_slash_Step_0_gml_120_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 53
    }
    if (con == 53 && (!gml_Script_d_ex_ch1()))
    {
        global.interact = 0
        global.facing = 0
        con = 55
    }
}
if (room == room_torbathroom_ch1)
{
    if (con == 60 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_pause_ch1(global.currentsong[1])
        gml_Script_snd_play_ch1(366)
        con = 61
        alarm[4] = 30
    }
    if (con == 61)
        global.interact = 1
    if (con == 62)
    {
        specflush = 0
        gml_Script_snd_play_ch1(374)
        flush += 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_town_event_slash_Step_0_gml_157_0")
        if (flush == 3)
            specflush = 1
        if (flush == 6)
            specflush = 2
        if (flush == 9)
            specflush = 3
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 63
        if (specflush > 0)
            con = 67
    }
    if (con == 63 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_resume_ch1(global.currentsong[1])
        con = 64
        global.interact = 0
        global.facing = 0
    }
    if (con == 67 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(365)
        con = 68
        alarm[4] = 30
    }
    if (con == 69)
    {
        if (specflush == 1)
        {
            gml_Script_scr_torface_ch1(0, 1)
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_town_event_slash_Step_0_gml_186_0")
        }
        if (specflush == 2)
        {
            gml_Script_scr_torface_ch1(0, 3)
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_town_event_slash_Step_0_gml_191_0")
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_town_event_slash_Step_0_gml_192_0")
        }
        if (specflush == 3)
        {
            gml_Script_scr_torface_ch1(0, 5)
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_town_event_slash_Step_0_gml_197_0")
        }
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 63
        specflush = 0
    }
}
