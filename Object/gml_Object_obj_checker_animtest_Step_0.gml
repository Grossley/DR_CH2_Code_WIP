if (type == 0)
{
    if (con == 1)
    {
        x = (gml_Script___view_get(0, 0) + 800)
        image_speed = 0.2
        sprite_index = spr_smallchecker_front
        global.interact = 1
        s = gml_Script_scr_dark_marker(-100, global.cinstance[1].y, 985)
        r = gml_Script_scr_dark_marker(-50, global.cinstance[0].y, 1014)
        k = gml_Script_scr_dark_marker(0, obj_mainchara.y, 652)
        with (obj_caterpillarchara)
            visible = false
        with (obj_mainchara)
            visible = false
        with (obj_marker)
        {
            hspeed = 5
            image_speed = 0.2
        }
        l = gml_Script_scr_dark_marker(500, obj_mainchara.y, 1293)
        con = -50
        alarm[4] = 28
    }
    if (con == -49)
    {
        gml_Script_snd_free_all()
        with (obj_marker)
            gml_Script_scr_halt()
        con = -48
        alarm[4] = 15
    }
    if (con == -47)
    {
        global.typer = 32
        global.fc = 5
        global.fe = 0
        name = "Guys"
        if (global.flag[214] == 1)
            name = "(name I'm not allowed to say)."
        if (global.flag[214] == 2)
            name = "Lancer Fan Club."
        if (global.flag[214] == 3)
            name = "Friendly Fun Gang."
        global.msg[0] = gml_Script_stringsetloc("* Hohoho..^1.&* Well STEP on my BOOTS./", "obj_checker_animtest_slash_Step_0_gml_47_0")
        global.msg[1] = gml_Script_stringsetsubloc("* If it isn't the ~1/", name, "obj_checker_animtest_slash_Step_0_gml_48_0")
        global.msg[2] = gml_Script_stringsetloc("* You boys or girls had better turn back while you can./", "obj_checker_animtest_slash_Step_0_gml_49_0")
        gml_Script_scr_ralface(3, 3)
        global.msg[4] = gml_Script_stringsetloc("* Lancer!!!&* What is it this time!?/", "obj_checker_animtest_slash_Step_0_gml_51_0")
        gml_Script_scr_lanface(5, 1)
        global.msg[6] = gml_Script_stringsetloc("* Hohoho..^1.&* I'm simply warning you...!/%", "obj_checker_animtest_slash_Step_0_gml_53_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        con = -46
        warnpitch = 0
    }
    if (con == -46 && (!gml_Script_d_ex()))
    {
        hitnoise = gml_Script_snd_play(184)
        gml_Script_snd_pitch(hitnoise, (1 + (warnpitch / 16)))
        var _temp_local_var_2 = l
        sprite_index = spr_lancer_lt
        hspeed = -10
    }
    if (con == -44)
    {
        var _temp_local_var_3 = l
        gml_Script_scr_halt()
    }
    if (con == -42)
    {
        global.fe = 2
        global.msg[0] = gml_Script_stringsetloc("* Something EXTREMELY dangerous is lying ahead!/%", "obj_checker_animtest_slash_Step_0_gml_82_0")
        if (warnpitch == 1)
        {
            global.fe = 1
            global.msg[0] = gml_Script_stringsetloc("* Hohoho^1! It's actually really inconvenient!/%", "obj_checker_animtest_slash_Step_0_gml_87_0")
        }
        if (warnpitch == 2)
        {
            global.fe = 3
            global.msg[0] = gml_Script_stringsetloc("* Ha^1! I can't go home at all because I'm so scared!/", "obj_checker_animtest_slash_Step_0_gml_92_0")
            gml_Script_scr_susface(1, 9)
            global.msg[2] = gml_Script_stringsetloc("* Wh..^1. What is it!?/%", "obj_checker_animtest_slash_Step_0_gml_94_0")
        }
        gml_Script_instance_create(0, 0, obj_dialoguer)
        if (warnpitch < 2)
        {
            con = -46
            warnpitch += 1
        }
        else
            con = -40
    }
    if (con == -40 && (!gml_Script_d_ex()))
    {
        ltimer = 0
        with (obj_marker)
        {
            if (sprite_index != spr_lancer_lt)
            {
                hspeed = 5
                image_speed = 0.25
            }
            else
            {
                sprite_index = spr_lancer_dt
                vspeed = -2
                depth = 100000
            }
        }
        con = -10
        alarm[4] = 96
    }
    if (con == -10)
    {
        ltimer += 1
        if (ltimer >= 20)
        {
            var _temp_local_var_5 = l
            gml_Script_scr_halt()
        }
        if (k.x >= 140)
            obj_mainchara.x = k.x
        global.interact = 1
    }
    if (con == -9)
    {
        gml_Script_snd_free_all()
        global.facing = 1
        con = -8
        with (obj_marker)
            gml_Script_scr_halt()
        obj_mainchara.x = k.x
        obj_mainchara.visible = true
        obj_mainchara.cutscene = true
        var _temp_local_var_6 = l
        sprite_index = spr_lancer_rt
    }
    if (con == -7)
    {
        global.fc = 2
        global.fe = 8
        global.typer = 31
        global.msg[0] = gml_Script_stringsetloc("* Oh^1, hey^1, little guy.../", "obj_checker_animtest_slash_Step_0_gml_178_0")
        gml_Script_scr_susface(1, 6)
        global.msg[2] = gml_Script_stringsetloc("* THAT??^1? THAT'S what you're afraid of???/", "obj_checker_animtest_slash_Step_0_gml_180_0")
        gml_Script_scr_lanface(3, 3)
        global.msg[4] = gml_Script_stringsetloc("* W..^1. Wow^1, purple girl^1!&* You aren't scared!?/", "obj_checker_animtest_slash_Step_0_gml_182_0")
        gml_Script_scr_susface(5, 2)
        global.msg[6] = gml_Script_stringsetloc("* Heh^1, why would I be^1? What's it gonna do?/", "obj_checker_animtest_slash_Step_0_gml_184_0")
        gml_Script_scr_lanface(7, 6)
        global.msg[8] = gml_Script_stringsetloc("* Hmm^1, well^1, normally.../%", "obj_checker_animtest_slash_Step_0_gml_186_0")
        con = -5.2
        gml_Script_instance_create(0, 0, obj_dialoguer)
    }
    if (con == -5.2 && gml_Script_d_ex() == 0)
    {
        sprite_index = spr_smallchecker_idle
        image_index = 0
        x += 40
        image_xscale = -2
        hspeed = 2
        con = 2
    }
    if (con == 2)
    {
        if (x > (gml_Script___view_get(0, 0) + 520))
        {
            image_index = 0
            image_xscale = 2
            sprite_index = spr_smallchecker_front
            hspeed = 0
            x = (gml_Script___view_get(0, 0) + 480)
            con = 1.1
            alarm[4] = 30
        }
    }
    if (con == 2.1)
    {
        gml_Script_snd_play(150)
        for (j = 0; j < 3; j += 1)
        {
            tile[j] = gml_Script_scr_marker(((480 - (j * 40)) + 400), (240 + (j * 40)), 2300)
            tile[j].image_alpha = 0
            tile[j].depth = 700000
        }
        ttimer = 0
        con = 2.2
    }
    if (con == 2.2)
    {
        j = 0
        while (j < 3)
        {
            _temp_local_var_7.image_alpha = (tile[j].image_alpha + 0.1)
            j += 1
            var _temp_local_var_9 = l
            var _temp_local_var_10 = l
            var _temp_local_var_11 = -9
            var _temp_local_var_12 = tile[j]
        }
        ttimer += 1
        if (ttimer >= 10)
            con = 2.3
    }
    if (con == 2.3)
    {
        j = 0
        while (j < 3)
        {
            _temp_local_var_7.image_alpha = (tile[j].image_alpha - 0.1)
            j += 1
            var _temp_local_var_13 = l
            var _temp_local_var_14 = l
            var _temp_local_var_15 = -9
            var _temp_local_var_16 = tile[j]
        }
        ttimer += 1
        if (ttimer >= 30)
            con = 3.1
    }
    if (con == 3.1)
        con = 4
    if (con == 4)
    {
        sprite_index = spr_smallchecker_front
        image_speed = 0
        image_index = 0
        crown = gml_Script_instance_create((x + 8), (gml_Script___view_get(1, 0) - 40), obj_marker)
        crown.image_xscale = 2
        crown.image_yscale = 2
        crown.sprite_index = spr_smallchecker_crown
        crown.vspeed = 4
        crown.depth = (depth - 1)
        con = 5
    }
    if (con == 5)
    {
        if (crown.y >= (y - 10))
        {
            sprite_index = spr_smallchecker_transform
            y += 2
            gml_Script_snd_play(152)
            var _temp_local_var_17 = crown
            instance_destroy()
        }
    }
    if (con == 7)
    {
        gml_Script_snd_play(146)
        image_speed = 0.25
        con = 8
    }
    if (con == 8)
    {
        image_speed += 0.01
        if (image_speed >= 0.5)
        {
            image_index = 1
            image_speed = 0
            con = 9
            alarm[4] = 60
        }
    }
    if (con == 10)
    {
        image_index = 0
        sprite_index = spr_smallchecker_transform2
        image_speed = 0.334
        con = 11
    }
    if (con == 11)
    {
        if (image_index >= 4)
        {
            image_index = 4
            image_speed = 0
            con = 12
            alarm[4] = 40
        }
    }
    if (con == 13)
    {
        x -= 18
        y -= 90
        gml_Script_snd_play(61)
        var _temp_local_var_18 = s
        sprite_index = spr_susie_shock_r
    }
    if (con == 17)
    {
        var _temp_local_var_20 = r
        sprite_index = spr_ralseir
    }
    if (con == 18 && (!gml_Script_d_ex()))
    {
        gml_Script_scr_unmarkify_caterpillar()
        global.facing = 1
        gml_Script_scr_caterpillar_facing(global.facing)
        global.encounterno = 12
        gml_Script_scr_encountersetup(global.encounterno)
        global.flag[9] = 1
        global.batmusic[0] = gml_Script_snd_init("checkers.ogg")
        global.specialbattle = 3
        gml_Script_instance_create(0, 0, obj_encounterbasic)
        gml_Script_instance_create(0, 0, obj_battleback)
        depth = 4000
        gml_Script_scr_move_to_point_over_time(global.monstermakex[0], global.monstermakey[0], 20)
        con = 19
        alarm[4] = 20
    }
    if (con == 20)
    {
        speed = 0
        con = 21
        alarm[4] = 10
    }
    if (con == 22)
    {
        visible = false
        type = 2
        con = 0
        victimer = 0
    }
}
if (type == 1)
{
    if (con == 1)
    {
        image_speed = 0
        image_index = 0
        crown = gml_Script_instance_create((x + 24), (y + 10), obj_marker)
        crown.image_xscale = 2
        crown.image_yscale = 2
        crown.sprite_index = spr_smallchecker_crown
        crown.depth = (depth - 1)
        sprite_index = spr_smallchecker_transform3
        con = 0.4
        windsound = false
        alarm[4] = 30
    }
    if (con == 1.4)
    {
        if (windsound == false)
        {
            gml_Script_snd_play(105)
            windsound = true
        }
        if (secondtime == false)
        {
            _temp_local_var_21.hspeed = (crown.hspeed + 0.2)
            var _temp_local_var_23 = r
            var _temp_local_var_24 = 
            var _temp_local_var_25 = -9
            var _temp_local_var_26 = crown
        }
        else
        {
            _temp_local_var_21.hspeed = (crown.hspeed + 0.4)
            _temp_local_var_23 = r
            _temp_local_var_24 = 
            _temp_local_var_25 = -9
            _temp_local_var_26 = crown
        }
        if (crown.hspeed >= 3)
            con = 1.5
    }
    if (con == 1.5)
    {
        var _temp_local_var_27 = crown
        maxy = (obj_checker_animtest.y + obj_checker_animtest.sprite_height)
        image_angle = -45
        y -= 10
        gravity = 0.5
        hspeed = 5
        friction = 0.2
    }
    if (con == 1.6)
    {
        if (crown.y >= ((crown.maxy - crown.sprite_height) - 10))
        {
            _temp_local_var_27.y = (crown.y + 10)
            crown.image_angle = 0
            crown.gravity = 0
            crown.vspeed = 0
            crown.friction = 0
            crown.hspeed = 1
            con = 0.9
            alarm[4] = 30
            var _temp_local_var_28 = r
            var _temp_local_var_29 = _temp_local_var_24
            var _temp_local_var_30 = -9
            var _temp_local_var_31 = crown
            if (secondtime == true)
            {
                alarm[4] = 10
                interactcrown = gml_Script_instance_create(crown.x, crown.y, obj_readable_room1)
                interactcrown.hspeed = 1
                interactcrown.image_xscale = 1.6
                interactcrown.image_yscale = 1
            }
        }
    }
    if (con == 1.9)
    {
        image_speed = 0.25
        gml_Script_snd_play(147)
        con = 2.1
    }
    if (con == 2.1)
    {
        image_speed += 0.01
        if (secondtime == true)
            image_speed += 0.01
        if (image_speed >= 0.5)
        {
            image_index = 1
            image_speed = 0
            con = 3
            maxy = ((y + sprite_height) - 30)
            alarm[4] = 30
            if (secondtime == true)
                alarm[4] = 10
        }
    }
    if (con == 4)
    {
        x += 40
        y += 46
        sprite_index = spr_smallchecker_legtuck
        image_index = 0
        image_speed = 0.25
        vspeed = -3
        gravity = 1
        if (secondtime == true)
        {
            vspeed = -6
            gravity = 2
            image_speed = 0.5
        }
        con = 5
    }
    if (con == 5)
    {
        if (image_index >= 2)
            image_speed = 0
        if (y >= (maxy - 4))
        {
            y = maxy
            gravity = 0
            vspeed = 0
            con = 6
            alarm[4] = 30
            if (secondtime == true)
                alarm[4] = 10
        }
    }
    if (con == 7)
    {
        image_angle -= 5
        hspeed = 3
        if (secondtime == true)
        {
            hspeed = 6
            image_angle -= 5
        }
        if (x >= (gml_Script___view_get(0, 0) + 720))
        {
            con = 8
            global.monster[0] = false
            global.monster[1] = false
            global.monster[2] = false
            gml_Script_scr_attackphase()
            with (obj_monsterparent)
                instance_destroy()
            instance_destroy()
        }
    }
}
if (type == 2)
{
    if (con == 0)
    {
        victimer += 1
        if (victimer >= 60)
            con = 1
    }
    if (con == 1)
    {
        if (global.fighting == false)
        {
            victimer = 0
            con = 2
        }
    }
    if (con == 2)
    {
        victimer += 1
        if (victimer >= 15)
        {
            global.typer = 30
            global.fe = 6
            global.fc = 1
            global.msg[0] = gml_Script_stringsetloc("* We..^1. We did it!?/%", "obj_checker_animtest_slash_Step_0_gml_589_0")
            gml_Script_instance_create(0, 0, obj_dialoguer)
            con = 3
        }
    }
    if (con == 3 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_33 = l
        hspeed = 18
    }
    if (con == 5)
    {
        var _temp_local_var_34 = l
        gml_Script_scr_halt()
        sprite_index = spr_lancer_lt
    }
    if (con == 7)
    {
        global.typer = 32
        global.fc = 5
        global.fe = 3
        global.msg[0] = gml_Script_stringsetloc("* Wow!^1! You clowns really ARE heroes!!/", "obj_checker_animtest_slash_Step_0_gml_624_0")
        global.msg[1] = gml_Script_stringsetloc("* You saved the next twenty minutes of my life!!/", "obj_checker_animtest_slash_Step_0_gml_625_0")
        gml_Script_scr_susface(2, 2)
        global.msg[3] = gml_Script_stringsetloc("* Yeah^1, yeah^1, I am pretty great^1, huh...?/%", "obj_checker_animtest_slash_Step_0_gml_627_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 7.2
    }
    if (con == 7.1 && (!gml_Script_d_ex()))
    {
        gml_Script_snd_play(65)
        var _temp_local_var_36 = s
        image_speed = 0.2
    }
    if (con == 7.2 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_38 = global.cinstance[0]
        visible = false
    }
    if (con == 50 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_41 = r
        sprite_index = spr_ralseid
    }
    if (con == 52)
    {
        var _temp_local_var_42 = r
        sprite_index = spr_ralseil
    }
    if (con == 53 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_44 = s
        sprite_index = spr_susied_dark
    }
    if (con == 55)
    {
        var _temp_local_var_45 = s
        sprite_index = spr_susier_dark
    }
    if (con == 56 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_47 = s
        sprite_index = spr_susiel_dark_unhappy
    }
    if (con == 58)
    {
        global.fc = 1
        global.fe = 0
        global.typer = 30
        global.msg[0] = gml_Script_stringsetloc("* Yeah^1, when you lay it out like that.../", "obj_checker_animtest_slash_Step_0_gml_732_0")
        global.msg[1] = gml_Script_stringsetloc("* I've been a pretty bad hero^1, haven't I?/", "obj_checker_animtest_slash_Step_0_gml_733_0")
        global.msg[2] = gml_Script_stringsetloc("* .../%", "obj_checker_animtest_slash_Step_0_gml_734_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
        con = 59
    }
    if (con == 59 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_49 = s
        vspeed = 2
        image_speed = 0.2
        sprite_index = spr_susied_dark_unhappy
    }
    if (con == 61)
    {
        var _temp_local_var_50 = k
        gml_Script_scr_depth()
    }
    if (con == 63)
    {
        global.msg[0] = gml_Script_stringsetloc("* Alright^1, Ralsei^1.&* You got it^1.&* I'll change my ways./", "obj_checker_animtest_slash_Step_0_gml_762_0")
        global.msg[1] = gml_Script_stringsetloc("* From now on^1, I won't be such a rotten hero anymore./%", "obj_checker_animtest_slash_Step_0_gml_763_0")
        con = 64
        gml_Script_instance_create(0, 0, obj_dialoguer)
    }
    if (con == 64 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_54 = s
        hspeed = 12
        sprite_index = spr_susier_dark
        image_speed = 0.5
    }
    if (con == 65)
    {
        if (s.x >= (gml_Script___view_get(0, 0) + 460))
        {
            var _temp_local_var_55 = s
            gml_Script_scr_halt()
        }
    }
    if (con == 66)
    {
        con = 67
        global.fc = 1
        global.fe = 3
        global.typer = 30
        global.msg[0] = gml_Script_stringsetloc("* I'll just be one of the BAD GUYS instead!/%", "obj_checker_animtest_slash_Step_0_gml_799_0")
        gml_Script_instance_create(0, 0, obj_dialoguer)
    }
    if (con == 67 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_60 = r
        sprite_index = spr_ralsei_shock_overworld
    }
    if (con == 69)
    {
        global.currentsong[0] = gml_Script_snd_init("lancer.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 0.6, 1)
        var _temp_local_var_61 = r
        sprite_index = spr_ralseir
    }
    if (con == 70 && (!gml_Script_d_ex()))
    {
        gml_Script_snd_volume(global.currentsong[1], 0, 50)
        gml_Script_snd_play(187)
        var _temp_local_var_63 = l
        sprite_index = spr_lancer_lt_laugh
        image_speed = 0.2
        hspeed = 12
    }
    if (con == 72)
        con = 22
    if (con == 22 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_66 = r
        hspeed = 6
        image_speed = 0.25
    }
    if (con == 24)
    {
        gml_Script_snd_free_all()
        global.facing = 2
        var _temp_local_var_67 = r
        gml_Script_scr_halt()
    }
    if (con == 28 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_69 = k
        hspeed = 8
        image_speed = 0.25
    }
    if (con == 30)
    {
        gml_Script_instance_create(0, 0, obj_fadeout)
        con = 31
        alarm[4] = 30
    }
    if (con == 32)
    {
        if (global.plot < 60)
        {
            global.plot = 60
            if (global.flag[215] == 1)
                global.flag[251] = 1
        }
        gml_Script_scr_losechar()
        gml_Script_scr_getchar(3)
        gml_Script_instance_create(0, 0, obj_persistentfadein)
        global.interact = 3
        global.entrance = 1
        room_goto_next()
    }
}
