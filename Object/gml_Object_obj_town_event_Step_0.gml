if (room == room_town_mid)
{
    if (con == 20 && (!gml_Script_d_ex()))
    {
        alarm[4] = 5
        con = 21
    }
    if (con == 21)
        global.interact = 1
    if (con == 22)
    {
        global.interact = 1
        banim = gml_Script_scr_marker((bnpc.x - 1), (bnpc.y - 14), 1067)
        banim.depth = bnpc.depth
        var _temp_local_var_2 = bnpc
        visible = false
    }
    if (con == 24)
    {
        var _temp_local_var_4 = bnpc
        instance_destroy()
    }
    if (con == 26)
    {
        global.fc = 19
        global.typer = 5
        global.fe = 0
        global.msc = 340
        gml_Script_scr_text(global.msc)
        con = 27
        gml_Script_instance_create(0, 0, obj_dialoguer)
    }
    if (con == 27 && (!gml_Script_d_ex()))
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
            if (obj_mainchara.x <= 1060 || obj_mainchara.x >= 1200 || obj_mainchara.y >= 120)
            {
                global.interact = 1
                if (obj_mainchara.x <= 1060)
                    global.facing = 1
                if (obj_mainchara.x >= 1200)
                    global.facing = 3
                if (obj_mainchara.y >= 120)
                    global.facing = 2
                con = 71
                global.typer = 14
                global.fc = 6
                global.fe = 0
                global.msc = 380
                gml_Script_scr_text(global.msc)
                gml_Script_instance_create(0, 0, obj_dialoguer)
            }
        }
    }
    if (con == 71 && (!gml_Script_d_ex()))
    {
        con = 72
        global.flag[273] = 2
        global.interact = 0
        global.facing = 0
    }
}
if (null.room == room_town_south)
{
    if (con == 50 && (!gml_Script_d_ex()))
    {
        gml_Script_snd_play(64)
        con = 51
        alarm[4] = 28
    }
    if (con == 51)
    {
        global.interact = 1
        var _temp_local_var_12 = policewindow
        image_index += 0.1
    }
    if (con == 52)
    {
        global.msg[0] = gml_Script_stringsetloc("* (They just closed the blinds...)/%", "obj_town_event_slash_Step_0_gml_120_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 53
    }
    if (con == 53 && (!gml_Script_d_ex()))
    {
        global.interact = 0
        global.facing = 0
        con = 55
    }
}
if (policewindow.room == room_torbathroom)
{
    if (con == 60 && (!gml_Script_d_ex()))
    {
        gml_Script_snd_pause(global.currentsong[1])
        gml_Script_snd_play(49)
        con = 61
        alarm[4] = 30
    }
    if (con == 61)
        global.interact = 1
    if (con == 62)
    {
        specflush = 0
        gml_Script_snd_play(57)
        flush += 1
        global.msg[0] = gml_Script_stringsetloc("* (You flushed the toilet!)/%", "obj_town_event_slash_Step_0_gml_157_0")
        if (flush == 3)
            specflush = 1
        if (flush == 6)
            specflush = 2
        if (flush == 9)
            specflush = 3
        gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 63
        if (specflush > 0 && global.plot >= 210)
            con = 67
    }
    if (con == 63 && (!gml_Script_d_ex()))
    {
        gml_Script_snd_resume(global.currentsong[1])
        con = 64
        global.interact = 0
        global.facing = 0
    }
    if (con == 67 && (!gml_Script_d_ex()))
    {
        gml_Script_snd_play(48)
        con = 68
        alarm[4] = 30
    }
    if (con == 69)
    {
        if (specflush == 1)
        {
            gml_Script_scr_torface(0, 1)
            global.msg[1] = gml_Script_stringsetloc("* Kris...^1?&* Is everything..^1. alright in there?/%", "obj_town_event_slash_Step_0_gml_186_0")
        }
        if (specflush == 2)
        {
            gml_Script_scr_torface(0, 3)
            global.msg[1] = gml_Script_stringsetloc("* Kris^1, WHAT are you doing?/", "obj_town_event_slash_Step_0_gml_191_0")
            global.msg[2] = gml_Script_stringsetloc("* You did not put a bath bomb in the toilet again^1, did you?/%", "obj_town_event_slash_Step_0_gml_192_0")
        }
        if (specflush == 3)
        {
            gml_Script_scr_torface(0, 5)
            global.msg[1] = gml_Script_stringsetloc("* Kris^1, if anything bad happens^1, you are paying for the plumbing bill./%", "obj_town_event_slash_Step_0_gml_197_0")
        }
        gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 63
        specflush = 0
    }
}
