if (global.chapter == 1)
{
    if (con == 1)
    {
        alarm[4] = 30
        con = 1.5
    }
    if (con == 2.5)
    {
        global.currentsong[0] = gml_Script_snd_init("mus_school.ogg")
        global.fe = 0
        global.fc = 11
        global.typer = 20
        global.msg[0] = gml_Script_stringsetloc("\\E0* So^1, does everyone have a.../%", "obj_classscene_slash_Step_0_gml_18_0")
        d = gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 3
    }
    if (con == 3 && instance_exists(obj_dialoguer) == 0)
    {
        gml_Script_snd_play(63)
        var _temp_local_var_2 = door
        image_index = 1
    }
    if (con == 5)
    {
        with (obj_mainchara)
        {
            fun = true
            sprite_index = spr_krisd
            image_speed = 0.2
            vspeed = 2
        }
        con = 6
        alarm[4] = 10
    }
    if (con == 7)
    {
        with (obj_mainchara)
        {
            image_index = 0
            vspeed = 0
            image_speed = 0
        }
        var _temp_local_var_4 = door
        image_index = 0
    }
    if (con == 9)
    {
        global.msg[0] = gml_Script_stringsetloc("\\E3* Oh... K-Kris...^1!&* We thought you weren't coming today!/", "obj_classscene_slash_Step_0_gml_64_0")
        global.msg[1] = gml_Script_stringsetloc("\\E0* We're doing group projects this month.../", "obj_classscene_slash_Step_0_gml_65_0")
        global.msg[2] = gml_Script_stringsetloc("\\E6* Uhhhh..^1. so^1, walk around and find a partner^1, ok?/%", "obj_classscene_slash_Step_0_gml_66_0")
        con = 10
        gml_Script_instance_create(0, 0, obj_dialoguer)
    }
    if (con == 10 && instance_exists(obj_dialoguer) == 0)
    {
        gml_Script_mus_loop(global.currentsong[0])
        gml_Script___view_set(9, 0, -4)
        door_readable = gml_Script_instance_create(244, 51, obj_readable_room1)
        alphys2 = alphys
        alphys = gml_Script_instance_create(alphys.x, (alphys.y + alphys.sprite_height), obj_npc_facing)
        var _temp_local_var_6 = alphys2
        instance_destroy()
    }
    if (con == 20 && instance_exists(obj_dialoguer) == 0)
    {
        global.interact = 1
        con = 21
        alarm[4] = 2
    }
    if (con == 21)
        global.interact = 1
    if (con == 22)
    {
        global.typer = 13
        global.fc = 12
        global.fe = 3
        global.facing = 2
        global.msg[0] = gml_Script_stringsetloc("* Hey^1! What^1? No^1!&* I do NOT approve this^1!&* ABORT!!/", "obj_classscene_slash_Step_0_gml_111_0")
        global.msg[1] = gml_Script_stringsetloc("\\TN\\FN\\E2* What^1? B-but Kris doesn't have a.../", "obj_classscene_slash_Step_0_gml_112_0")
        global.msg[2] = gml_Script_stringsetloc("\\Ta\\Fa\\E1* Noelle^1, what were you saying?/", "obj_classscene_slash_Step_0_gml_113_0")
        global.msg[3] = gml_Script_stringsetloc("\\TB\\FB\\E6* She was just saying we're FINE being alone!/", "obj_classscene_slash_Step_0_gml_114_0")
        global.msg[4] = gml_Script_stringsetloc("\\Tn\\FN\\E3* A-actually^1, I just wanted to know if.../", "obj_classscene_slash_Step_0_gml_115_0")
        global.msg[5] = gml_Script_stringsetloc("\\Ta\\Fa\\E6* Noelle^1, can you PLEASE SPEAK UP?/%", "obj_classscene_slash_Step_0_gml_116_0")
        con = 23
        gml_Script_instance_create(0, 0, obj_dialoguer)
    }
    if (con == 23 && instance_exists(obj_dialoguer) == 0)
    {
        gml_Script_instance_create(0, 0, obj_shake)
        gml_Script_snd_stop_all()
        gml_Script_snd_free(global.currentsong[0])
        var _temp_local_var_11 = door
        image_index = 0
        image_speed = 0.5
        sprite_index = spr_classdoorslam
        depth = 5000
    }
    if (con == 25)
    {
        gml_Script_snd_play(61)
        alphys2 = alphys
        alphys = gml_Script_scr_marker(alphys.x, alphys.y, 924)
        var _temp_local_var_14 = alphys
        gml_Script_scr_depth()
    }
    if (con == 27)
    {
        var _temp_local_var_16 = door
        image_speed = 0
        depth = 500000
    }
    if (con == 29 && instance_exists(obj_dialoguer) == 0)
    {
        var _temp_local_var_18 = sus
        image_speed = 0.1
        vspeed = 0.5
    }
    if (con == 31)
    {
        var _temp_local_var_19 = sus
        image_index = 0
        image_speed = 0
        vspeed = 0
    }
    if (con == 33)
    {
        global.fe = 2
        global.fc = 11
        global.typer = 22
        global.msg[0] = gml_Script_stringsetloc("* H..^1.&* Hi^1, SUSIE./%", "obj_classscene_slash_Step_0_gml_194_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 28
        alarm[4] = 20
    }
    if (con == 35)
    {
        global.fc = 1
        global.fe = 0
        global.typer = 10
        global.msg[0] = gml_Script_stringsetloc("* .../", "obj_classscene_slash_Step_0_gml_207_0")
        global.msg[1] = gml_Script_stringsetloc("* ... am I late?/", "obj_classscene_slash_Step_0_gml_208_0")
        global.msg[2] = gml_Script_stringsetloc("\\Ta\\Fa\\E4* Ohh^1, n-no^1!&* You're fine^1!&* W-we were just^1, uh.../", "obj_classscene_slash_Step_0_gml_209_0")
        global.msg[3] = gml_Script_stringsetloc("\\E5* Ch-choosing partners for the next group project^1, and.../", "obj_classscene_slash_Step_0_gml_210_0")
        global.msg[4] = gml_Script_stringsetloc("\\E6* Ummm^1, Susie^1, you're with Kris!/", "obj_classscene_slash_Step_0_gml_211_0")
        gml_Script_scr_susface(5, 0)
        global.msg[6] = gml_Script_stringsetloc("* .../", "obj_classscene_slash_Step_0_gml_213_0")
        global.msg[7] = gml_Script_stringsetloc("* ... great./%", "obj_classscene_slash_Step_0_gml_214_0")
        con = 36
        gml_Script_instance_create(0, 0, obj_dialoguer)
    }
    if (con == 36 && instance_exists(obj_dialoguer) == 0)
    {
        con = 37
        alarm[4] = 40
        var _temp_local_var_21 = alphys
        sprite_index = spr_alphysd
    }
    if (con == 38)
    {
        global.fc = 11
        global.typer = 20
        global.fe = 6
        global.msg[0] = gml_Script_stringsetloc("\\E5* .../", "obj_classscene_slash_Step_0_gml_234_0")
        global.msg[1] = gml_Script_stringsetloc("\\E6* N-now that everyone's here^1, I'll write the assignment!/%", "obj_classscene_slash_Step_0_gml_235_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 39
    }
    if (con == 39 && instance_exists(obj_dialoguer) == 0)
    {
        var _temp_local_var_23 = alphys
        sprite_index = spr_alphysr
        hspeed = 3
        image_speed = 0.2
    }
    if (con == 41)
    {
        var _temp_local_var_24 = alphys
        sprite_index = spr_alphysu
        image_index = 0
        image_speed = 0
        hspeed = 0
    }
    if (con == 43)
    {
        global.msg[0] = gml_Script_stringsetloc("* .../%", "obj_classscene_slash_Step_0_gml_267_0")
        con = 44
        gml_Script_instance_create(0, 0, obj_dialoguer)
    }
    if (con == 44 && instance_exists(obj_dialoguer) == 0)
    {
        con = 45
        var _temp_local_var_26 = alphys
        sprite_index = spr_alphysl
    }
    if (con == 47)
    {
        var _temp_local_var_27 = alphys
        sprite_index = spr_alphysr
    }
    if (con == 49)
    {
        var _temp_local_var_28 = alphys
        sprite_index = spr_alphysd
    }
    if (con == 51)
    {
        global.fe = 8
        global.msg[0] = gml_Script_stringsetloc("* Uh..^1.&* H-has anyone seen the chalk?/", "obj_classscene_slash_Step_0_gml_298_0")
        global.msg[1] = gml_Script_stringsetloc("\\E4* This is the third time it's gone missing^1, and.../", "obj_classscene_slash_Step_0_gml_299_0")
        global.msg[2] = gml_Script_stringsetloc("\\E9* Y-you all know I can't start class without some!/%", "obj_classscene_slash_Step_0_gml_300_0")
        global.msg[3] = gml_Script_stringsetloc("\\FN\\TN\\E1* Ummm^1, there might be a box in the supply closet.../", "obj_classscene_slash_Step_0_gml_302_0")
        global.msg[4] = gml_Script_stringsetloc("\\E0* Do you want me to - %", "obj_classscene_slash_Step_0_gml_303_0")
        global.msg[5] = gml_Script_stringsetloc("\\Ta\\Fa\\E6* G-good idea^1, Noelle^1!&* Susie^1, s-since you came in last.../", "obj_classscene_slash_Step_0_gml_304_0")
        global.msg[6] = gml_Script_stringsetloc("\\E7* Can you go get that for me...?/", "obj_classscene_slash_Step_0_gml_305_0")
        global.msg[7] = gml_Script_stringsetloc("\\FS\\TS\\E0* .../", "obj_classscene_slash_Step_0_gml_306_0")
        global.msg[8] = gml_Script_stringsetloc("* ... whatever./%%", "obj_classscene_slash_Step_0_gml_307_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 51.1
    }
    if (con == 51.1 && gml_Script_d_ex() == 0)
    {
        var _temp_local_var_30 = alphys
        sprite_index = spr_alphysd
    }
    if (con == 51.2)
    {
        var _temp_local_var_31 = alphys
        sprite_index = spr_alphysd
    }
    if (con == 51.3 && gml_Script_d_ex() == 0)
    {
        var _temp_local_var_33 = alphys
        sprite_index = spr_alphysr
    }
    if (con == 51.4)
    {
        var _temp_local_var_34 = alphys
        sprite_index = spr_alphysd
    }
    if (con == 52)
    {
        if instance_exists(obj_writer)
        {
            if (obj_writer.msgno == 4)
            {
                var _temp_local_var_35 = alphys
                sprite_index = spr_alphysr
            }
        }
    }
    if (con == 52 && instance_exists(obj_dialoguer) == 0)
    {
        var _temp_local_var_37 = sus
        vspeed = -1
        sprite_index = spr_susieu
        image_speed = 0.2
    }
    if (con == 54)
    {
        var _temp_local_var_38 = sus
        instance_destroy()
    }
    if (con == 56)
    {
        var _temp_local_var_40 = sus
        instance_destroy()
    }
    if (con == 57 && instance_exists(obj_dialoguer) == 0)
    {
        var _temp_local_var_43 = door_readable
        instance_destroy()
    }
}
if (global.chapter == 2)
{
    if (con == 1)
    {
        susie_fake = gml_Script_scr_marker(145, 170, 979)
        var _temp_local_var_46 = susie_fake
        gml_Script_scr_depth()
    }
    if (con == 2.5)
    {
        global.currentsong[0] = gml_Script_snd_init("mus_school.ogg")
        con = 3
    }
    if (con == 3 && instance_exists(obj_dialoguer) == 0)
    {
        gml_Script_snd_play(63)
        var _temp_local_var_48 = door
        image_index = 1
    }
    if (con == 5)
    {
        with (obj_mainchara)
        {
            fun = true
            sprite_index = spr_krisd
            image_speed = 0.2
            vspeed = 2
        }
        con = 6
        alarm[4] = 10
    }
    if (con == 7)
    {
        with (obj_mainchara)
        {
            image_index = 0
            vspeed = 0
            image_speed = 0
        }
        var _temp_local_var_50 = door
        image_index = 0
    }
    if (con == 9)
    {
        gml_Script_scr_speaker("alphys")
        gml_Script_msgsetloc(0, "\\E0* Kris^1, there you are!/", "obj_classscene_slash_Step_0_gml_493_0")
        gml_Script_msgnextloc("\\EA* (Even Susie showed up before you^1, eheh...)/%", "obj_classscene_slash_Step_0_gml_494_0")
        alttalk = 0
        if (global.flag[201] == 1 && global.flag[269] == 0)
        {
            alttalk = 1
            gml_Script_msgsetloc(0, "\\E3* (Kris^1! You're okay!!)/", "obj_classscene_slash_Step_0_gml_500_0")
            gml_Script_msgnextloc("\\E9* (I was really worried after you disappeared yesterday...)/", "obj_classscene_slash_Step_0_gml_501_0")
            gml_Script_msgnextloc("\\E0* (I guess we can talk about that after class.)/%", "obj_classscene_slash_Step_0_gml_502_0")
        }
        con = 10
        gml_Script_instance_create(0, 0, obj_dialoguer)
    }
    if (con == 10 && instance_exists(obj_dialoguer) == 0)
    {
        global.currentsong[1] = gml_Script_mus_loop(global.currentsong[0])
        gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
        su = 1
        su_actor = gml_Script_instance_create(susie_fake.x, susie_fake.y, obj_actor)
        gml_Script_scr_actor_setup(su, su_actor, "susie")
        su_actor.sprite_index = spr_susieu
        var _temp_local_var_53 = susie_fake
        visible = false
    }
    if (customconb == 1)
    {
        customtimer++
        if (customtimer >= 30)
        {
            customtimer = 0
            customconb = 2
            customcon = 0
            with (obj_actor)
                image_speed = 0
            with (obj_npc_facing)
                image_speed = 0
            gml_Script_c_waitcustom_end()
        }
    }
    if (con == 11 && (!instance_exists(obj_cutscene_master)))
    {
        with (obj_actor)
            visible = false
        with (obj_npc_facing)
            instance_destroy()
        with (obj_tem_school)
            instance_destroy()
        with (obj_actor)
        {
            if (name == "alphys")
            {
                visible = true
                sprite_index = rsprite
            }
        }
        with (obj_fadeout)
            instance_destroy()
        with (obj_mainchara)
        {
            fun = false
            y += 8
        }
        conwait = 0
        con = 13
        alarm[4] = 15
        global.facing = 2
    }
    if (con == 13)
        global.facing = 2
    if (con == 14)
    {
        gml_Script_scr_speaker("alphys")
        gml_Script_msgsetloc(0, "\\E7* Have a nice day^1, everyone!/", "obj_classscene_slash_Step_0_gml_715_0")
        gml_Script_msgnextloc("\\E9* And P-PLEASE^1! Remember your group projects!/%", "obj_classscene_slash_Step_0_gml_716_0")
        d = gml_Script_d_make()
        d.side = 1
        con = 15
    }
    if (con == 15 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_61 = al_actor
        gml_Script_scr_emote("!", 20)
    }
    if (con == 17)
    {
        gml_Script_scr_speaker("alphys")
        gml_Script_msgsetloc(0, "\\E1* Oh^1, um..^1. Kris? Are..^1. you okay?/", "obj_classscene_slash_Step_0_gml_739_0")
        gml_Script_msgnextloc("\\E5* You were^1, um^1, s-sleeping all class.../", "obj_classscene_slash_Step_0_gml_740_0")
        gml_Script_msgnextloc("\\E0* D-don't worry^1! I'm not mad^1! J..^1. just concerned!/", "obj_classscene_slash_Step_0_gml_741_0")
        gml_Script_msgnextloc("\\EA* (Usually you only sleep through the start.)/", "obj_classscene_slash_Step_0_gml_742_0")
        if (alttalk == 1)
        {
            gml_Script_scr_speaker("alphys")
            gml_Script_msgnextloc("\\E3* ... Kris..^1. Where did you and Susie go yesterday?/", "obj_classscene_slash_Step_0_gml_747_0")
            gml_Script_msgnextloc("\\E3* .../", "obj_classscene_slash_Step_0_gml_748_0")
            gml_Script_msgnextloc("\\EA* .../", "obj_classscene_slash_Step_0_gml_749_0")
            gml_Script_msgnextloc("\\E5* Um^1, if you don't want to tell me^1, that's okay./", "obj_classscene_slash_Step_0_gml_750_0")
            gml_Script_msgnextloc("\\E9* I was just really..^1. worried about you./", "obj_classscene_slash_Step_0_gml_751_0")
            gml_Script_msgnextloc("\\E6* If... If Susie causes you any trouble^1, then.../", "obj_classscene_slash_Step_0_gml_752_0")
            gml_Script_msgnextloc("\\E8* Okay^1, I..^1. I can't really do anything. Eheh./", "obj_classscene_slash_Step_0_gml_753_0")
            gml_Script_msgnextloc("\\E0* But... I'm looking out for you^1, okay?/%", "obj_classscene_slash_Step_0_gml_754_0")
        }
        else
            gml_Script_msgnextloc("\\E0* Good luck and rest well tonight^1, okay?/%", "obj_classscene_slash_Step_0_gml_758_0")
        d = gml_Script_d_make()
        d.side = 1
        con = 18
    }
    if (con == 18 && (!gml_Script_d_ex()))
    {
        alphys_npc = gml_Script_instance_create(alphys.x, alphys.y, obj_npc_facing)
        _temp_local_var_61.y = (alphys_npc.y + alphys_npc.sprite_height)
        var _temp_local_var_63 = 
        var _temp_local_var_64 = 
        var _temp_local_var_65 = -9
        var _temp_local_var_66 = alphys_npc
        fun = false
    }
}
