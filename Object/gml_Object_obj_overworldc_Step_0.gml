hasitems = global.litem[0] != 0
if (global.interact == 5)
{
    currentmenu = global.menuno
    if (global.menuno < 6)
        currentspot = global.menucoord[global.menuno]
    if gml_Script_button1_p()
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] == 0)
            {
                global.menuno = 9
                script_execute(gml_Script_scr_litemuseb, global.menucoord[1], global.litem[global.menucoord[1]])
            }
            if (global.menucoord[5] == 1)
            {
                global.menuno = 9
                script_execute(gml_Script_scr_litemdesc, global.litem[global.menucoord[1]])
                script_execute(gml_Script_scr_writetext, 0, "x", 0, 0)
            }
            if (global.menucoord[5] == 2)
            {
                dontthrow = 0
                dontthrowtype = 0
                global.menuno = 9
                if (global.litem[global.menucoord[1]] == 5)
                    dontthrow = 1
                if (global.litem[global.menucoord[1]] == 9)
                {
                    dontthrow = 1
                    dontthrowtype = 1
                }
                if (global.litem[global.menucoord[1]] == 11)
                {
                    dontthrow = 1
                    dontthrowtype = 2
                }
                if (dontthrow == 0)
                {
                    i = round(random(30))
                    if (i == 0)
                        global.msg[0] = gml_Script_stringsetsubloc("* You bid a quiet farewell to the ~1.", global.litemname[global.menucoord[1]], "obj_overworldc_slash_Step_0_gml_34_0_b")
                    if (i == 1)
                        global.msg[0] = gml_Script_stringsetsubloc("* You put the ~1 on the ground and gave it a little pat.", global.litemname[global.menucoord[1]], "obj_overworldc_slash_Step_0_gml_34_0")
                    if (i == 2)
                        global.msg[0] = gml_Script_stringsetsubloc("* You threw the ~1 on the ground like the piece of trash it is.", global.litemname[global.menucoord[1]], "obj_overworldc_slash_Step_0_gml_36_0")
                    if (i == 3)
                        global.msg[0] = gml_Script_stringsetsubloc("* You abandoned the ~1.", global.litemname[global.menucoord[1]], "obj_overworldc_slash_Step_0_gml_38_0_b")
                    if (i > 3)
                        global.msg[0] = gml_Script_stringsetsubloc("* The ~1 was thrown away.", global.litemname[global.menucoord[1]], "obj_overworldc_slash_Step_0_gml_38_0")
                    global.msg[0] += "/%"
                    if (global.litem[global.menucoord[1]] == 8)
                    {
                        global.msg[0] = gml_Script_stringsetloc("* What Egg?/%", "obj_overworldc_slash_Step_0_gml_42_0")
                        if (global.flag[263] == 0)
                            global.flag[263] = 1
                    }
                    script_execute(gml_Script_scr_writetext, 0, "x", 0, 0)
                    script_execute(gml_Script_scr_litemshift, global.menucoord[1], 0)
                }
                if (dontthrow == 1)
                {
                    if (dontthrowtype == 0)
                    {
                        global.msc = 10
                        gml_Script_scr_text(global.msc)
                        script_execute(gml_Script_scr_writetext, 10, "x", 0, 0)
                    }
                    else if (dontthrowtype == 1)
                    {
                        gml_Script_msgsetloc(0, "* (You fumbled and caught them^1. You can't throw these away!)/%", "obj_overworldc_slash_Step_0_gml_61_0")
                        script_execute(gml_Script_scr_writetext, 0, "x", 0, 0)
                    }
                    else if (dontthrowtype == 2)
                    {
                        gml_Script_msgsetloc(0, "* (You didn't quite understand why...)/", "obj_overworldc_slash_Step_0_gml_66_0")
                        gml_Script_msgnextloc("* (But, the thought of discarding it felt very wrong.)/%", "obj_overworldc_slash_Step_0_gml_67_0")
                        script_execute(gml_Script_scr_writetext, 0, "x", 0, 0)
                    }
                }
            }
        }
        if (global.menuno == 3)
        {
            global.menuno = 9
            script_execute(gml_Script_scr_litemuseb, global.menucoord[3], global.phone[global.menucoord[3]])
        }
        if (global.menuno == 1)
        {
            global.menuno = 5
            global.menucoord[5] = 0
        }
        if (global.menuno == 0)
            global.menuno += (global.menucoord[0] + 1)
        if (global.menuno == 3)
        {
            script_execute(gml_Script_scr_phonename)
            global.menucoord[3] = 0
        }
        if (global.menuno == 1)
        {
            if (global.litem[0] != 0)
            {
                global.menucoord[1] = 0
                script_execute(gml_Script_scr_litemname)
            }
            else
                global.menuno = 0
        }
    }
    if gml_Script_up_p()
    {
        if (global.menuno == 0)
        {
            if (global.menucoord[0] != 0)
                global.menucoord[0] -= 1
        }
        if (global.menuno == 1)
        {
            if (global.menucoord[1] != 0)
                global.menucoord[1] -= 1
        }
        if (global.menuno == 3)
        {
            if (global.menucoord[3] != 0)
                global.menucoord[3] -= 1
        }
    }
    if gml_Script_down_p()
    {
        if (global.menuno == 0)
        {
            if (global.menucoord[0] != 2)
                global.menucoord[0] += 1
        }
        if (global.menuno == 1)
        {
            if (global.menucoord[1] != 7)
            {
                if (global.litem[(global.menucoord[1] + 1)] != 0)
                    global.menucoord[1] += 1
            }
        }
        if (global.menuno == 3)
        {
            if (global.menucoord[3] != 7)
            {
                if (global.phone[(global.menucoord[3] + 1)] != 0)
                    global.menucoord[3] += 1
            }
        }
    }
    if (gml_Script_button2_p() && buffer >= 0)
    {
        if (global.menuno == 0)
        {
            global.menuno = -1
            global.interact = 0
        }
        else if (global.menuno <= 3)
            global.menuno = 0
        if (global.menuno == 5)
            global.menuno = 1
    }
    if gml_Script_right_p()
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] != 2)
                global.menucoord[5] += 1
        }
    }
    if gml_Script_left_p()
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] != 0)
                global.menucoord[5] -= 1
        }
    }
    if (gml_Script_button3_p() && threebuffer <= 0)
    {
        if (global.menuno == 0)
        {
            global.menuno = -1
            global.interact = 0
            with (obj_mainchara)
                threebuffer = 2
        }
    }
    if (currentmenu < global.menuno && global.menuno != 9)
        selnoise = true
    else if (global.menuno >= 0 && global.menuno < 6)
    {
        if (currentspot != global.menucoord[global.menuno])
            movenoise = true
    }
}
if (global.menuno == 9 && instance_exists(obj_dialoguer) == 0)
{
    global.menuno = -1
    global.interact = 0
}
if (selnoise == true)
{
    gml_Script_snd_play(260)
    selnoise = false
}
if (movenoise == true)
{
    gml_Script_snd_play(259)
    movenoise = false
}
if gml_Script_scr_debug()
{
    if keyboard_check_pressed(ord("S"))
        gml_Script_instance_create(0, 0, obj_savemenu)
    if keyboard_check_pressed(ord("F"))
        room_speed = 58
    if keyboard_check_pressed(ord("L"))
        gml_Script_scr_load()
    if (keyboard_check_pressed(ord("R")) && keyboard_check(vk_backspace))
        gml_Script_game_restart_true()
    if keyboard_check_pressed(ord("R"))
    {
        room_restart()
        global.interact = 0
    }
}
threebuffer--
