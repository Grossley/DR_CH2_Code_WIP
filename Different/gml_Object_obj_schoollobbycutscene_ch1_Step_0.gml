if (con > 0 && type == 1)
{
    if (con == 2)
    {
        with (obj_mainchara_ch1)
            vspeed = 0
        with (t)
        {
            vspeed = 0
            image_index = 0
            image_speed = 0
        }
        con = 3
        alarm[4] = 40
    }
    if (con == 4)
    {
        with (t)
            sprite_index = spr_toriel_hug_ch1
        con = 5
        alarm[4] = 20
    }
    if (con == 6)
    {
        with (obj_writer_ch1)
            instance_destroy()
        with (t)
            image_index = 1
        con = 7
        alarm[4] = 5
    }
    if (con == 8)
    {
        with (t)
        {
            image_speed = 0
            image_index = 2
        }
        con = 11
        alarm[4] = 55
    }
    if (con == 12)
    {
        with (obj_writer_ch1)
            instance_destroy()
        with (t)
            image_speed = -0.2
        con = 13
        alarm[4] = 10
    }
    if (con == 14)
    {
        with (t)
        {
            image_index = 0
            image_speed = 0
            sprite_index = spr_toriel_d_ch1
        }
        k = scr_marker_ch1((t.x + 4), (t.y + 21), spr_krisu_ch1)
        con = 15
        alarm[4] = 20
    }
    if (con == 16)
    {
        with (t)
            sprite_index = spr_toriel_l_ch1
        scr_pan_ch1(-3, 0, 118)
        with (k)
        {
            sprite_index = spr_krisl_ch1
            hspeed = -3
            image_speed = 0.25
        }
        con = 17
        alarm[4] = 30
    }
    if (con == 18)
    {
        with (t)
        {
            sprite_index = spr_toriel_r_ch1
            hspeed = 2
            image_speed = 0.2
        }
        con = 18.1
        alarm[4] = 78
    }
    if (con == 19.1)
    {
        fade = instance_create_ch1(0, 0, obj_fadeout_ch1)
        fade.fadespeed = 0.02
        con = 19
        alarm[4] = 10
    }
    if (con == 20)
    {
        with (k)
        {
            hspeed = 0
            sprite_index = spr_krisu_ch1
            vspeed = -0.5
        }
        con = 21
        alarm[4] = 40
    }
    if (con == 23)
    {
        instance_create_ch1(0, 0, obj_persistentfadein_ch1)
        room_goto(room_alphysclass_ch1)
    }
    if (con == 22)
    {
        snd_free_all_ch1()
        con = 23
    }
}
if (con > 0 && type == 2)
{
    if (con == 0.1)
        global.interact = 1
    if (con == 1.1)
    {
        with (k)
            sprite_index = spr_krisr_ch1
        with (s)
        {
            sprite_index = spr_susie_eatchalk_ch1
            image_speed = 0.2
        }
        con = 1.2
        chalksound = false
    }
    if (con == 1.2)
    {
        if (s.image_index >= 16 && chalksound == false)
        {
            chalksound = true
            snd_play_ch1(snd_noise_ch1)
        }
        if (s.image_index >= 21)
        {
            with (s)
            {
                sprite_index = spr_susier_ch1
                image_speed = 0
                image_index = 0
            }
            con = 0.3
            alarm[4] = 40
        }
    }
    if (con == 1.3)
    {
        s.sprite_index = spr_susied_ch1
        con = 0.4
        alarm[4] = 30
    }
    if (con == 1.4)
    {
        s.sprite_index = spr_susiel_ch1
        s.hspeed = -0.5
        s.image_speed = 0.1
        con = 0.5
        alarm[4] = 40
    }
    if (con == 1.5)
    {
        with (s)
        {
            x = 220
            hspeed = 0
            image_index = 0
            image_speed = 0
        }
        con = 1
        instance_create_ch1((s.x + 10), (s.y - 10), obj_excblcon_ch1)
        with (obj_excblcon_ch1)
            alarm[0] = 40
        snd_play_ch1(snd_b_ch1)
        alarm[4] = 70
    }
    if (con == 2)
    {
        global.fc = 1
        global.fe = 0
        with (k)
            sprite_index = spr_krisr_ch1
        global.facing = 1
        global.typer = 10
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_193_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_194_0")
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
        con = 2.1
    }
    if (con == 2.1 && d_ex_ch1() == 0)
    {
        s.sprite_index = spr_susieu_ch1
        con = 1.6
        alarm[4] = 60
    }
    if (con == 2.6)
    {
        s.sprite_index = spr_susier_ch1
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_209_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_210_0")
        con = 3
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
    }
    if (con == 3 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        con = 4
        alarm[4] = 90
    }
    if (con == 5)
    {
        with (s)
            sprite_index = spr_susier_lookup_ch1
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_225_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_226_0")
        con = 6
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
    }
    if (con == 6 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        con = 7
        alarm[4] = 60
    }
    if (con == 8)
    {
        with (s)
            sprite_index = spr_susied_plain_ch1
        con = 9
        alarm[4] = 30
    }
    if (con == 10)
    {
        with (s)
            sprite_index = spr_susiel_ch1
        con = 11
        alarm[4] = 60
    }
    if (con == 12)
    {
        global.fe = 1
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_254_0")
        con = 13
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
    }
    if (con == 13 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        with (s)
        {
            hspeed = -1
            image_speed = 0.1
        }
        alarm[4] = 56
        con = 14
    }
    if (con == 15)
    {
        with (k)
        {
            image_speed = 0.1
            hspeed = -0.5
        }
        con = 16
        alarm[4] = 80
    }
    if (con == 17)
    {
        with (k)
        {
            hspeed = 0
            image_index = 0
            image_speed = 0
        }
        with (s)
        {
            hspeed = 0
            image_index = 0
            image_speed = 0
        }
        con = 18
        alarm[4] = 50
    }
    if (con == 19)
    {
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_303_0")
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
        con = 20
    }
    if (con == 20 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        con = 21
        with (k)
            visible = false
        with (s)
        {
            sprite_index = spr_susie_krisshoulder_ch1
            image_index = 0
            image_speed = 0.2
        }
        alarm[4] = 25
    }
    if (con == 22)
    {
        with (s)
            image_speed = 0
        con = 23
        alarm[4] = 30
    }
    if (con == 24)
    {
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_330_0")
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
        con = 25
    }
    if (con == 25 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        con = 27
        alarm[4] = 50
    }
    if (con == 28)
    {
        with (s)
        {
            sprite_index = spr_susie_krisgrab_ch1
            image_index = 0
            image_speed = 0.334
        }
        con = 29
        alarm[4] = 9
    }
    if (con == 30)
    {
        snd_play_ch1(snd_locker_ch1)
        con = 31
        alarm[4] = 6
    }
    if (con == 32)
    {
        with (s)
            image_speed = 0
        con = 33
        alarm[4] = 60
    }
    if (con == 34)
    {
        global.fe = 2
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_374_0")
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
        con = 35
    }
    if (con == 35 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        global.currentsong[0] = snd_init_ch1("s_neo.ogg")
        global.currentsong[1] = mus_loop_ch1(global.currentsong[0])
        con = 36
        alarm[4] = 60
    }
    if (con == 37)
    {
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_389_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_390_0")
        global.msg[2] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_391_0")
        global.msg[3] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_392_0")
        global.msg[4] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_393_0")
        global.msg[5] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_394_0")
        global.msg[6] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_395_0")
        global.msg[7] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_396_0")
        global.msg[8] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_397_0")
        global.msg[9] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_398_0")
        global.msg[10] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_399_0")
        global.msg[11] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_400_0")
        global.msg[12] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_401_0")
        global.msg[13] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_402_0")
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
        con = 38
    }
    if (instance_exists(obj_dialoguer_ch1) == 0 && con == 38)
    {
        snd_free_ch1(global.currentsong[0])
        with (s)
        {
            sprite_index = spr_susie_grabsmile_ch1
            image_index = 0
            image_speed = 0.2
        }
        con = 39
        alarm[4] = 20
    }
    if (con == 40)
    {
        with (s)
            image_speed = 0
        con = 41
        alarm[4] = 30
    }
    if (con == 42)
    {
        global.fe = 3
        global.typer = 2
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_432_0")
        d = instance_create_ch1(0, 0, obj_dialoguer_ch1)
        with (d)
            skippable = false
        con = 43
    }
    if (con == 43 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        global.currentsong[0] = snd_init_ch1("s_neo_clip.ogg")
        audio_sound_pitch(global.currentsong[0], 0.667)
        global.currentsong[1] = mus_play_ch1(global.currentsong[0])
        with (s)
        {
            image_index = 0
            image_speed = (1/15)
            sprite_index = spr_susie_krisgrab_eat_ch1
        }
        con = 43.5
        alarm[4] = 89
    }
    if (con == 44.5)
    {
        snd_free_ch1(global.currentsong[0])
        with (s)
            image_speed = 0
        con = 44
        alarm[4] = 60
    }
    if (con == 45)
    {
        with (s)
        {
            sprite_index = spr_susie_krisdrop_ch1
            image_speed = 0.334
            image_index = 0
        }
        snd_play_ch1(snd_noise_ch1)
        con = 46
        alarm[4] = 12
    }
    if (con == 47)
    {
        with (s)
            image_speed = 0
        con = 48
        alarm[4] = 30
    }
    if (con == 49)
    {
        global.typer = 10
        global.fe = 0
        with (k)
        {
            visible = true
            sprite_index = spr_krisr_sit_ch1
        }
        k.x = (s.x - 19)
        with (s)
        {
            image_index = 0
            sprite_index = spr_susier_ch1
        }
        con = 50
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_499_0")
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
    }
    if (con == 50 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        with (s)
        {
            hspeed = 2
            image_speed = 0.2
        }
        con = 51
        alarm[4] = 30
    }
    if (con == 52)
    {
        with (s)
        {
            image_index = 0
            image_speed = 0
            hspeed = 0
        }
        con = 53
        alarm[4] = 30
    }
    if (con == 54)
    {
        with (s)
            sprite_index = spr_susier_lookup_ch1
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_532_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_533_0")
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
        con = 55
    }
    if (con == 55 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        with (s)
            sprite_index = spr_susiel_ch1
        con = 56
        alarm[4] = 30
    }
    if (con == 57)
    {
        global.msc = 104
        scr_text_ch1(global.msc)
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
        con = 57.1
        choosetimer = 0
    }
    if (con == 57.1)
    {
        if instance_exists(obj_choicer_old_ch1)
        {
            choosetimer += 1
            if (choosetimer >= 30)
            {
                if (obj_choicer_old_ch1.choiced == false)
                {
                    with (obj_choicer_old_ch1)
                    {
                        canchoose = true
                        mychoice = 1
                        event_user(0)
                    }
                }
                con = 58
            }
        }
        if (!d_ex_ch1())
            con = 58
    }
    if (con == 58 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        with (s)
            sprite_index = spr_susier_ch1
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_582_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_583_0")
        global.msg[2] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_584_0")
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
        con = 59
    }
    if (con == 59 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        with (s)
        {
            image_speed = 0.2
            hspeed = 2
        }
        con = 60
        alarm[4] = 20
    }
    if (con == 61)
    {
        with (s)
        {
            hspeed = 0
            image_speed = 0
            image_index = 0
        }
        con = 62
        alarm[4] = 30
    }
    if (con == 63)
    {
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_616_0")
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
        con = 64
    }
    if (con == 64 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        interact = instance_create_ch1(110, 200, obj_readable_room1_ch1)
        obj_mainchara_ch1.x = (k.x + 6)
        obj_mainchara_ch1.y = (k.y + 2)
        with (k)
            instance_destroy()
        global.facing = 1
        global.interact = 0
        with (obj_mainchara_ch1)
            visible = true
        con = 1
        type = 3
        scon = 1
    }
}
if (type == 3)
{
    with (s)
        scr_depth_ch1()
    if (scon == 1)
    {
        if (s.x < 448)
        {
            with (s)
            {
                hspeed = 3
                image_speed = 0.2
                if (obj_mainchara_ch1.px > 3)
                {
                    obj_schoollobbycutscene_ch1.ran += 1
                    hspeed = (obj_mainchara_ch1.px + 1)
                    image_speed = 0.4
                }
            }
        }
        else
        {
            with (s)
            {
                x = 450
                sprite_index = spr_susiel_ch1
                hspeed = 0
                image_index = 0
                image_speed = 0
            }
            scon = 2
        }
    }
    if (scon == 2)
    {
        if (obj_mainchara_ch1.x >= 404)
            scon = 3
    }
    if (scon == 3)
    {
        with (s)
        {
            sprite_index = spr_susieu_ch1
            image_speed = 0.2
            vspeed = -3
            if (obj_mainchara_ch1.py < -3)
            {
                obj_schoollobbycutscene_ch1.ran += 1
                vspeed = (obj_mainchara_ch1.py - 1)
                image_speed = 0.4
            }
        }
        if (s.y <= 42)
        {
            with (s)
            {
                sprite_index = spr_susied_ch1
                speed = 0
                image_index = 0
                image_speed = 0
            }
            scon = 4
        }
    }
    if (scon == 4)
    {
        if (obj_mainchara_ch1.y <= 80 && global.interact == 0)
        {
            global.interact = 1
            scon = 5
            global.fc = 1
            global.typer = 10
            global.fe = 1
            if (ran < 15)
            {
                global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_719_0")
                global.msg[1] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_720_0")
                global.msg[2] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_721_0")
                global.msg[3] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_722_0")
            }
            if (ran >= 15)
            {
                global.flag[200] = 1
                global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_727_0")
                global.msg[1] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_728_0")
                global.msg[2] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_729_0")
                global.msg[3] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_730_0")
            }
            instance_create_ch1(0, 0, obj_dialoguer_ch1)
        }
    }
    if (scon == 5 && instance_exists(obj_dialoguer_ch1) == 0)
    {
        with (obj_doorC_ch1)
            instance_destroy()
        with (s)
        {
            vspeed = -1
            sprite_index = spr_susieu_ch1
            image_speed = 0.2
        }
        with (obj_mainchara_ch1)
        {
            fun = true
            sprite_index = spr_krisu_ch1
            image_speed = 0.2
            move_towards_point(450, 20, 1)
        }
        f = instance_create_ch1(0, 0, obj_fadeout_ch1)
        with (f)
            fadespeed = 0.03
        scon = 6
        con = 5
        alarm[4] = 34
    }
    if (con == 6)
    {
        global.plot = 4
        instance_create_ch1(0, 0, obj_persistentfadein_ch1)
        room_goto(room_schooldoor_ch1)
        con = 7
    }
    if (obj_mainchara_ch1.x >= 560 && global.interact == 0)
    {
        obj_mainchara_ch1.x = 558
        global.interact = 1
        global.facing = 3
        global.fc = 1
        global.typer = 10
        global.fe = 0
        dex = 1
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_776_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_777_0")
        global.msg[2] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_778_0")
        global.msg[3] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_779_0")
        global.msg[4] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_780_0")
        if (teast > 0)
            global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_784_0")
        teast += 1
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
    }
    if (obj_mainchara_ch1.y >= 300 && global.interact == 0)
    {
        obj_mainchara_ch1.y = 298
        global.interact = 1
        global.facing = 2
        global.fc = 1
        global.typer = 10
        global.fe = 0
        dex = 1
        global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_799_0")
        global.msg[1] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_800_0")
        global.msg[2] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_801_0")
        if (tsouth > 0)
            global.msg[0] = scr_84_get_lang_string_ch1("obj_schoollobbycutscene_slash_Step_0_gml_805_0")
        tsouth += 1
        instance_create_ch1(0, 0, obj_dialoguer_ch1)
    }
    if (dex == 1 && instance_exists(obj_dialoguer_ch1) == 0 && global.interact == 1)
    {
        dex = 0
        global.interact = 0
    }
}
if (type == 4)
{
    if (global.flag[272] == 0 && global.interact == 0 && con == 0)
    {
        if (obj_mainchara_ch1.y >= 320)
        {
            global.fc = 0
            global.typer = 5
            global.interact = 1
            global.msc = 365
            scr_text_ch1(global.msc)
            snd_play_ch1(snd_phone_ch1)
            if (global.flag[272] == 0)
                global.flag[272] = 1
            con = 2
            instance_create_ch1(0, 0, obj_dialoguer_ch1)
        }
    }
    if (con == 2 && (!d_ex_ch1()))
    {
        global.interact = 0
        con = 3
    }
}
