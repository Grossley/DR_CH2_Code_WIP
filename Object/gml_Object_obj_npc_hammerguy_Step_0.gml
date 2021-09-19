var ral_sprite, _temp_local_var_1, _temp_local_var_2, _temp_local_var_4, _temp_local_var_8, _temp_local_var_10, _temp_local_var_18, _temp_local_var_19, _temp_local_var_20, _temp_local_var_21;
if (myinteract == 3)
{
}
if (myinteract == 3 && con == 0)
{
    if (gml_Script_i_ex(mydialoguer) == 0)
    {
        sprite_index = spr_hammerguy
        image_speed = 0.1
        global.interact = 0
        myinteract = 0
        with (obj_mainchara)
            onebuffer = 5
    }
}
if (con >= 5)
{
    if (con == 10 || con == 30 || con == 50)
    {
        if (!gml_Script_d_ex())
        {
            gml_Script_snd_pause(global.currentsong[1])
            sprite_index = spr_hammerguy_powerup
            image_index = 0
            image_speed = 0.5
            gml_Script_snd_play(64)
            con += 1
            alarm[4] = 30
            charcycle = 0
            charamt = 0
            if (global.char[1] > 0)
                charamt = 1
            if (global.char[2] > 0)
                charamt = 2
            charcycle = charamt
        }
    }
    if (con == 12 || con == 32 || con == 52 || con == 72)
    {
        hitmode = 1
        sprite_index = spr_hammerguy_hit
        image_speed = 0.5
        image_index = 0
        con += 1
    }
    if (con == 15)
    {
        var _temp_local_var_4 = char
        instance_destroy()
    }
    if (con == 13)
    {
        chartype = global.char[charcycle]
        if (charcycle == 0)
        {
            with (obj_mainchara)
                visible = false
            var xpos = (global.chapter == 1 ? 390 : (x + 105))
            var ypos = (global.chapter == 1 ? 125 : (y + 30))
            char = gml_Script_scr_dark_marker(xpos, ypos, 650)
            var _temp_local_var_8 = char
            depth = 400000
        }
        if (charcycle == 1 || charcycle == 2)
        {
            var _temp_local_var_10 = global.cinstance[(charcycle - 1)]
            visible = false
        }
        con = 14
        alarm[4] = 36
    }
    if (con == 16 || con == 36 || con == 56 || con == 76)
    {
        hitmode = 0
        sprite_index = spr_hammerguy
        image_speed = 0.05
        image_index = 0
        gml_Script_snd_resume(global.currentsong[1])
        con += 1
    }
    if (con == 17)
    {
        global.hp[1] = global.maxhp[1]
        global.hp[2] = global.maxhp[2]
        global.hp[3] = global.maxhp[3]
        global.typer = 6
        global.fc = 0
        gml_Script_snd_play(162)
        global.msg[0] = gml_Script_stringsetloc("* (Somehow^1, everyone's HP was restored.)/", "obj_npc_hammerguy_slash_Step_0_gml_108_0")
        global.msg[1] = gml_Script_stringsetloc("* Well^1, well^1! Don't you feel better after a nice massage^1? Huh-Hah!!/%", "obj_npc_hammerguy_slash_Step_0_gml_109_0")
        mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 18
    }
    if (con == 18 || con == 38 || con == 58)
    {
        if (!gml_Script_d_ex())
        {
            myinteract = 0
            global.interact = 0
            with (obj_mainchara)
                onebuffer = 10
            con = 0
        }
    }
    if (hitmode == 1)
    {
        if (image_index == 4)
            gml_Script_snd_play(56)
        if (image_index >= 10)
            image_index = 0
    }
    if (con == 33)
    {
        char = gml_Script_scr_dark_marker(385, 160, 1187)
        var _temp_local_var_18 = char
        depth = 400000
    }
    if (con == 35)
    {
        var _temp_local_var_19 = char
        instance_destroy()
    }
    if (con == 37)
    {
        gml_Script_scr_keyitemremove(3)
        global.typer = 6
        global.fc = 0
        gml_Script_snd_play(172)
        global.msg[0] = gml_Script_stringsetloc("* (The Broken Cake was fixed beyond recognition.)/", "obj_npc_hammerguy_slash_Step_0_gml_153_0")
        global.msg[1] = gml_Script_stringsetloc("* (The Broken Cake became the TOPCAKE.)/", "obj_npc_hammerguy_slash_Step_0_gml_154_0")
        global.msg[2] = gml_Script_stringsetloc("* This is truly a tremendous cake^1.&* Use its power wisely.../%", "obj_npc_hammerguy_slash_Step_0_gml_155_0")
        mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 38
    }
    if (con == 53)
    {
        char = gml_Script_scr_dark_marker(390, 170, 1188)
        var _temp_local_var_20 = char
        depth = 400000
    }
    if (con == 55)
    {
        var _temp_local_var_21 = char
        instance_destroy()
    }
    if (con == 57)
    {
        gml_Script_scr_keyitemremove(4)
        gml_Script_scr_keyitemremove(6)
        gml_Script_scr_keyitemremove(7)
        gml_Script_scr_keyitemget(5)
        global.typer = 6
        global.fc = 0
        gml_Script_snd_play(172)
        global.msg[0] = gml_Script_stringsetloc("* (The Broken Key parts were fixed beyond recognition.)/", "obj_npc_hammerguy_slash_Step_0_gml_184_0")
        global.msg[1] = gml_Script_stringsetloc("* (The Broken Key parts became the Prison Key.)/", "obj_npc_hammerguy_slash_Step_0_gml_185_0")
        global.msg[2] = gml_Script_stringsetloc("* .... Hmm^1,  this KEY has a terrible energy coming from it.../", "obj_npc_hammerguy_slash_Step_0_gml_186_0")
        global.msg[3] = gml_Script_stringsetloc("* Please understand that I only fixed it.../", "obj_npc_hammerguy_slash_Step_0_gml_187_0")
        global.msg[4] = gml_Script_stringsetloc("* So that you will never have to use it./%", "obj_npc_hammerguy_slash_Step_0_gml_188_0")
        mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 58
    }
}
if (con == 70 && (!instance_exists(obj_fusionmenu)))
{
    global.interact = 1
    times_fused++
    if (times_fused == 1)
    {
        gml_Script_scr_speaker("no_name")
        gml_Script_msgsetloc(0, "* Huh-hah^1! Let's feel my technique!/%", "obj_npc_hammerguy_slash_Step_0_gml_216_0")
        gml_Script_d_make()
    }
    else if (times_fused >= 2)
    {
        gml_Script_scr_speaker("no_name")
        gml_Script_msgsetloc(0, "* Let's pick up the pace./%", "obj_npc_hammerguy_slash_Step_0_gml_221_0")
        gml_Script_d_make()
    }
    con = 71
}
if (con == 71)
    global.interact = 1
if (con == 71 && (!gml_Script_d_ex()))
    con = 72
if (con == 73)
{
    con = 75
    alarm[4] = (times_fused == 1 ? 50 : 18)
}
if (con == 77)
{
    con = 78
    gml_Script_msgsetsubloc(0, "* (You got ~1!)/%", fusionResultName, "obj_npc_hammerguy_slash_Step_0_gml_251_0")
    gml_Script_snd_play(172)
    gml_Script_d_make()
}
if (con == 78 && (!gml_Script_d_ex()))
{
    con = 0
    global.interact = 0
    myinteract = 0
}