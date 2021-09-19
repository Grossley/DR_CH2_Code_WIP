if (con > 0 && con < 40)
{
    if (con == 1)
        global.interact = 1
    if (con == 2)
    {
        var _temp_local_var_2 = k
        gml_Script_scr_halt()
    }
    if (con == 4)
    {
        global.typer = 10
        global.fc = 1
        global.fe = 0
        global.msg[0] = gml_Script_stringsetloc("* Well^1, here's the closet^1.&* Too bad.../", "obj_darkdoor_slash_Step_0_gml_21_0")
        global.msg[1] = gml_Script_stringsetloc("\\E2* We were just starting to have fun./%", "obj_darkdoor_slash_Step_0_gml_22_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 4.5
    }
    if (con == 4.5 && instance_exists(obj_dialoguer) == 0)
    {
        gml_Script_snd_play(59)
        image_index = 1
        con = 5.5
        alarm[4] = 60
    }
    if (con == 6.5)
    {
        global.currentsong[0] = gml_Script_snd_init("creepydoor.ogg")
        gml_Script_mus_loop(global.currentsong[0])
        open = 1
        con = 6
        alarm[4] = 60
    }
    if (con == 7)
    {
        var _temp_local_var_5 = s
        vspeed = 0.5
        image_speed = 0.1
    }
    if (con == 9)
    {
        var _temp_local_var_7 = s
        gml_Script_scr_halt()
    }
    if (con == 11)
    {
        global.fe = 5
        global.msg[0] = gml_Script_stringsetloc("\\E5* .../", "obj_darkdoor_slash_Step_0_gml_72_0")
        global.msg[1] = gml_Script_stringsetloc("* Hey^1, Kris^1, is it me^1, or.../", "obj_darkdoor_slash_Step_0_gml_73_0")
        global.msg[2] = gml_Script_stringsetloc("\\E6* Is it REALLY dark in there?/%", "obj_darkdoor_slash_Step_0_gml_74_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        var _temp_local_var_9 = s
        sprite_index = spr_susiel
    }
    if (con == 12 && instance_exists(obj_dialoguer) == 0)
    {
        var _temp_local_var_11 = s
        sprite_index = spr_susieu
    }
    if (con == 14)
    {
        var _temp_local_var_12 = s
        sprite_index = spr_susiel
    }
    if (con == 15 && instance_exists(obj_dialoguer) == 0)
    {
        var _temp_local_var_14 = k
        vspeed = 0.5
        image_speed = 0.1
    }
    if (con == 15.5)
    {
        var _temp_local_var_15 = k
        gml_Script_scr_halt()
    }
    if (con == 17)
    {
        var _temp_local_var_16 = s
        sprite_index = spr_susiel
    }
    if (con == 18 && instance_exists(obj_dialoguer) == 0)
    {
        var _temp_local_var_18 = s
        sprite_index = spr_susieu
    }
    if (con == 20)
    {
        var _temp_local_var_19 = s
        sprite_index = spr_susiel
    }
    if (con == 21 && instance_exists(obj_dialoguer) == 0)
    {
        var _temp_local_var_21 = s
        sprite_index = spr_susieu
        vspeed = -0.5
        image_speed = 0.1
    }
    if (con == 23)
    {
        fade = gml_Script_instance_create(0, 0, obj_fadeout)
        var _temp_local_var_23 = fade
        fadespeed = 0.03
    }
    if (con == 25)
    {
        con = 26
        global.plot = 5
        gml_Script_instance_create(0, 0, obj_persistentfadein)
        room_goto(room_insidecloset)
    }
}
if (con >= 40)
{
    if (con == 40)
    {
        gml_Script_snd_free_all()
        global.currentsong[0] = gml_Script_snd_init("mus_birdnoise.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 0.6, 0.7)
        global.interact = 1
        s = gml_Script_scr_marker(479, 92, 975)
        var _temp_local_var_24 = s
        gml_Script_scr_depth()
    }
    if (con == 42)
    {
        global.typer = 10
        global.fc = 1
        global.fe = 0
        global.flag[29] = 1
        global.msg[0] = gml_Script_stringsetloc("* Man^1, the sun's already setting.../", "obj_darkdoor_slash_Step_0_gml_194_0")
        global.msg[1] = gml_Script_stringsetloc("\\E3* Everyone else must have gone home by now./%", "obj_darkdoor_slash_Step_0_gml_195_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 43
    }
    if (con == 43 && (!gml_Script_d_ex()))
    {
        k = gml_Script_scr_marker(obj_mainchara.x, obj_mainchara.y, 659)
        var _temp_local_var_26 = k
        gml_Script_scr_depth()
    }
    if (con == 45)
    {
        global.fe = 2
        global.msg[0] = gml_Script_stringsetloc("\\E2* Guess Alphys'll know better than to ask US next time^1, huh?/%", "obj_darkdoor_slash_Step_0_gml_215_0")
        con = 50
        gml_Script_instance_create(0, 0, obj_dialoguer)
    }
    if (con == 50 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_29 = s
        hspeed = -2
        image_speed = 0.2
        sprite_index = spr_susiel
    }
    if (con == 52)
    {
        var _temp_local_var_31 = s
        gml_Script_scr_halt()
    }
    if (con == 52.1)
    {
        global.fe = 0
        global.msg[0] = gml_Script_stringsetloc("* .../%", "obj_darkdoor_slash_Step_0_gml_252_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 52.2
    }
    if (con == 52.2 && (!gml_Script_d_ex()))
    {
        con = 53
        alarm[4] = 30
    }
    if (con == 54)
    {
        var _temp_local_var_36 = s
        sprite_index = spr_susier_plain
    }
    if (con == 55 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_39 = k
        sprite_index = spr_krisd
    }
    if (con == 57)
    {
        var _temp_local_var_41 = s
        gml_Script_scr_halt()
    }
    if (con == 59)
    {
        global.fe = 0
        global.msg[0] = gml_Script_stringsetloc("\\E0* .../", "obj_darkdoor_slash_Step_0_gml_298_0")
        global.msg[1] = gml_Script_stringsetloc("\\E1* .../", "obj_darkdoor_slash_Step_0_gml_299_0")
        global.msg[2] = gml_Script_stringsetloc("\\E0* ... Kris?/%", "obj_darkdoor_slash_Step_0_gml_300_0")
        con = 60
        d = gml_Script_instance_create(0, 0, obj_dialoguer)
        var _temp_local_var_42 = d
        side = 0
    }
    if (con == 60 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_44 = s
        sprite_index = spr_susier_plain
    }
    if (con == 62)
    {
        var _temp_local_var_45 = s
        vspeed = -2
        hspeed = 0.75
        image_speed = 0.25
        sprite_index = spr_susieu
    }
    if (con == 64)
    {
        var _temp_local_var_47 = s
        gml_Script_scr_halt()
        sprite_index = spr_susier_plain
    }
    if (con == 66)
    {
        var _temp_local_var_48 = k
        visible = false
    }
    if (con == 68)
    {
        var _temp_local_var_50 = s
        image_speed = 0
    }
    if (con == 70)
    {
        global.fe = 8
        global.flag[6] = 1
        global.msg[0] = gml_Script_stringsetloc("\\E8* Let's go back there tomorrow, alright?/%", "obj_darkdoor_slash_Step_0_gml_363_0")
        d = gml_Script_instance_create(0, 0, obj_dialoguer)
        with (obj_writer)
            skippable = false
        var _temp_local_var_51 = d
        skippable = false
    }
    if (con == 70.1 && (!gml_Script_d_ex()))
    {
        con = 69.2
        alarm[4] = 30
    }
    if (con == 70.2 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_55 = s
        image_speed = -0.24
    }
    if (con == 70.3)
    {
        var _temp_local_var_56 = s
        gml_Script_scr_halt()
    }
    if (con == 73 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_58 = k
        visible = true
        sprite_index = spr_krisd
    }
    if (con == 75)
    {
        global.flag[6] = 0
        if (global.plot < 251)
            global.plot = 251
        con = 76
        global.interact = 0
        with (obj_mainchara)
            visible = true
        var _temp_local_var_60 = k
        instance_destroy()
    }
}
