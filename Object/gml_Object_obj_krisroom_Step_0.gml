if (global.chapter == 1)
{
    if (con > 0 && con < 50)
    {
        if (con == 1 && instance_exists(obj_dialoguer) == 0)
        {
            with (t)
            {
                image_index = 0
                image_speed = 0.25
                vspeed = -2
                sprite_index = spr_toriel_u
            }
            alarm[4] = 20
            con = 2
        }
        if (con == 3)
        {
            with (t)
            {
                image_index = 0
                image_speed = 0
                vspeed = 0
            }
            alarm[4] = 10
            con = 4
        }
        if (con == 5)
        {
            with (t)
            {
                image_speed = 0.25
                sprite_index = spr_toriel_windowopen
            }
            alarm[4] = 10
            con = 6
            with (wallwindow)
                image_index = 1
            gml_Script_snd_play(51)
        }
        if (con == 7)
        {
            with (t)
                image_speed = 0
            con = 8
            alarm[4] = 20
        }
        if (con == 9)
        {
            with (t)
            {
                sprite_index = spr_toriel_d
                image_index = 0
                image_speed = 0.25
                vspeed = 2
            }
            alarm[4] = 20
            con = 10
        }
        if (con == 11)
        {
            with (t)
            {
                image_index = 0
                image_speed = 0
                vspeed = 0
            }
            alarm[4] = 20
            con = 12
        }
        if (con == 13)
        {
            with (t)
                sprite_index = spr_toriel_rt
            alarm[4] = 20
            con = 14
        }
        if (con == 15)
        {
            global.fe = 0
            with (t)
                image_speed = 0.25
            global.msg[0] = gml_Script_stringsetloc("* I will wait outside for you^1, alright?/%", "obj_krisroom_slash_Step_0_gml_94_0")
            d = gml_Script_instance_create(0, 0, obj_dialoguer)
            con = 20
        }
        if (con == 20 && instance_exists(obj_dialoguer) == 0)
        {
            with (t)
            {
                image_index = 0
                sprite_index = spr_toriel_d
                image_speed = 0.25
                vspeed = 3
            }
            alarm[4] = 90
            con = 21
        }
        if (con == 22)
        {
            gml_Script_snd_play(51)
            image_index = 1
            alarm[4] = 40
            con = 23
        }
        if (con == 24)
        {
            with (obj_mainchara)
            {
                fun = true
                image_speed = 0.25
                sprite_index = spr_krisl
                hspeed = -1
            }
            alarm[4] = 40
            if gml_Script_button2_h()
            {
                with (obj_mainchara)
                {
                    fun = true
                    image_speed = 0.25
                    sprite_index = spr_krisl
                    hspeed = -4
                }
                alarm[4] = 10
            }
            con = 25
        }
        if (con == 26)
        {
            global.facing = 3
            with (obj_mainchara)
            {
                image_index = 0
                hspeed = 0
                image_speed = 0
                fun = false
            }
            con = 27
            alarm[4] = 20
            if gml_Script_button2_h()
                alarm[4] = 5
        }
        if (con == 28)
        {
            global.facing = 0
            with (obj_mainchara)
            {
                image_index = 0
                hspeed = 0
                sprite_index = spr_krisd
                image_speed = 0
                fun = false
            }
            gml_Script_scr_depth()
            con = 30
            global.interact = 0
            gml_Script_scr_tempsave()
            if (global.plot < 1)
                global.plot = 1
        }
    }
    if (con >= 50 && con < 100)
    {
        global.interact = 1
        global.facing = 1
        if (con == 50 && (!gml_Script_d_ex()))
        {
            _remfilechoice = global.filechoice
            global.filechoice += 3
            gml_Script_scr_save()
            global.filechoice = _remfilechoice
            gml_Script_mus_volume(global.currentsong[1], 0, 100)
            fade = gml_Script_instance_create(0, 0, obj_fadeout)
            with (fade)
                fadespeed = 0.01
            con = 51
            alarm[4] = 100
        }
        if (con == 52)
        {
            gml_Script_snd_free_all()
            con = 53
            alarm[4] = 150
        }
        if (con == 54)
        {
            gml_Script_scr_windowcaption(" ")
            room_goto(room_myroom_dark)
        }
    }
    if (con >= 100 && con < 150)
    {
        global.interact = 1
        global.facing = 1
        if (con == 100 && (!gml_Script_d_ex()))
        {
            gml_Script_mus_volume(global.currentsong[1], 0, 50)
            fade = gml_Script_instance_create(0, 0, obj_fadeout)
            with (fade)
            {
                fadespeed = 0.02
                depth = 10000
            }
            con = 101
            alarm[4] = 50
        }
        if (con == 102)
        {
            gml_Script_snd_free_all()
            con = 103
            alarm[4] = 50
        }
        if (con == 104)
        {
            gml_Script_scr_windowcaption(" ")
            global.typer = 5
            global.fc = 0
            global.msg[0] = gml_Script_stringsetloc("* (But^1, when you opened your eyes...)/%", "obj_krisroom_slash_Step_0_gml_283_0")
            gml_Script_instance_create(0, 0, obj_dialoguer)
            con = 105
        }
        if (con == 105 && (!gml_Script_d_ex()))
        {
            gml_Script_instance_create(0, 0, obj_persistentfadein)
            gml_Script_scr_windowcaption(gml_Script_stringsetloc("THE DARK", "obj_krisroom_slash_Step_0_gml_293_0"))
            global.plot = 10
            gml_Script_scr_become_dark()
        }
    }
}
if (global.chapter == 2)
{
    if (con == 2)
    {
        talkedtimes = 0
        global.flag[6] = 1
        gml_Script_scr_speaker("toriel")
        con = 3
        alarm[4] = 50
    }
    if (con == 4 && (!instance_exists(obj_writer)))
    {
        gml_Script_msgsetloc(0, "Kris...? /%", "obj_krisroom_slash_Step_0_gml_321_0")
        if (talkedtimes == 1)
            gml_Script_msgsetloc(0, "Kris, honey...&Are you awake...?^6 %%", "obj_krisroom_slash_Step_0_gml_322_0")
        if (talkedtimes == 2)
            gml_Script_msgsetloc(0, "... w.... wait!^6 %%", "obj_krisroom_slash_Step_0_gml_323_0")
        if (talkedtimes == 3)
            gml_Script_msgsetloc(0, "Is that a...^6 %%", "obj_krisroom_slash_Step_0_gml_324_0")
        if (talkedtimes == 4)
            gml_Script_msgsetloc(0, "A knife!!?^6 %%", "obj_krisroom_slash_Step_0_gml_325_0")
        gml_Script_instance_create(100, 100, obj_writer)
        gml_Script_scr_writer_autocenter(1)
        gml_Script_scr_writer_setspeed(3)
        talkedtimes++
        con = 5
        if (talkedtimes == 5)
            con = 6
    }
    if (con == 5)
    {
        con = 3
        alarm[4] = 15
    }
    if (con == 6 && (!instance_exists(obj_writer)))
    {
        gml_Script_snd_free_all()
        whitefade = gml_Script_instance_create(0, 0, obj_fadeout)
        whitefade.fadespeed = 0.01
        whitefade.image_blend = c_white
        gml_Script_msgsetloc(0, "NOOOOOOOO---!!! %%", "obj_krisroom_slash_Step_0_gml_353_0")
        gml_Script_instance_create(100, 100, obj_writer)
        gml_Script_scr_writer_autocenter(1)
        gml_Script_scr_writer_setspeed(8)
        gml_Script_scr_writer_setshake(1)
        con = 7
        alarm[4] = 100
    }
    if (con == 8 && (!instance_exists(obj_writer)))
    {
        global.flag[6] = 0
        with (whitefade)
            instance_destroy()
        with (obj_marker)
            instance_destroy()
        show_border = 1
        cutscene_master = gml_Script_scr_cutscene_make()
        tor = 0
        tor_actor = gml_Script_instance_create(151, 207, obj_actor)
        gml_Script_scr_actor_setup(tor, tor_actor, "toriel")
        tor_actor.sprite_index = spr_toriel_u
        gml_Script_c_sel(0)
        gml_Script_c_walk_wait("u", 4, 27.5)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(5)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walk_wait("r", 4, 12.5)
        gml_Script_c_halt()
        gml_Script_c_wait(30)
        gml_Script_c_speaker("toriel")
        gml_Script_c_fe(5)
        gml_Script_c_msgsetloc(0, "* Kris^1, did you eat all of the pie!?/%", "obj_krisroom_slash_Step_0_gml_388_0")
        gml_Script_c_talk_wait()
        gml_Script_c_soundplay(216)
        gml_Script_c_sprite(3)
        gml_Script_c_wait(60)
        gml_Script_c_speaker("toriel")
        gml_Script_c_msgsetloc(0, "\\E3* It is YOUR knife in this empty tin, is it not!?/", "obj_krisroom_slash_Step_0_gml_393_0")
        gml_Script_c_msgnextloc("\\E8* Oh, Kris.../%", "obj_krisroom_slash_Step_0_gml_394_0")
        gml_Script_c_talk_wait()
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(7)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_msgsetloc(0, "\\E4* Am I going to have to lock the oven again?/%", "obj_krisroom_slash_Step_0_gml_399_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(11)
        gml_Script_c_walk_wait("l", 2, 25)
        gml_Script_c_sprite(10)
        gml_Script_c_halt()
        gml_Script_c_msgsetloc(0, "\\E1* Well^1, hurry out of bed^1. It is time for school./%", "obj_krisroom_slash_Step_0_gml_406_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(8)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walk_wait("d", 2, 75)
        con = 9
    }
    if (con == 9 && (!instance_exists(obj_cutscene_master)))
        con = 22
    if (con == 22)
    {
        gml_Script_snd_play(51)
        image_index = 1
        alarm[4] = 40
        con = 23
    }
    if (con == 24)
    {
        with (obj_mainchara)
        {
            fun = true
            image_speed = 0.25
            sprite_index = spr_krisl
            hspeed = -1
        }
        alarm[4] = 40
        if gml_Script_button2_h()
        {
            with (obj_mainchara)
            {
                fun = true
                image_speed = 0.25
                sprite_index = spr_krisl
                hspeed = -4
            }
            alarm[4] = 10
        }
        con = 25
    }
    if (con == 26)
    {
        global.facing = 3
        with (obj_mainchara)
        {
            image_index = 0
            hspeed = 0
            image_speed = 0
            fun = false
        }
        con = 27
        alarm[4] = 20
        if gml_Script_button2_h()
            alarm[4] = 5
    }
    if (con == 28)
    {
        global.facing = 0
        with (obj_mainchara)
        {
            image_index = 0
            hspeed = 0
            sprite_index = spr_krisd
            image_speed = 0
            fun = false
        }
        gml_Script_scr_depth()
        con = 30
        global.interact = 0
        gml_Script_scr_tempsave()
        if (global.plot < 1)
            global.plot = 1
    }
}
