if (victory == false)
{
    if (weird == 0)
    {
        if (con == -2)
        {
            if (icon == 0 && obj_mainchara.x >= 278)
            {
                global.flag[7] = 1
                global.interact = 1
                noeX = 0
                noeY = 0
                krX = obj_mainchara.x
                krY = obj_mainchara.y
                with (obj_caterpillarchara)
                {
                    if (name == "noelle")
                    {
                        other.noeX = x
                        other.noeY = y
                    }
                }
                cutscene_master = gml_Script_scr_cutscene_make()
                gml_Script_scr_maincharacters_actors()
                icon = 1
            }
            if (icon == 1)
            {
                icon = -999
                gml_Script_c_pannable(true)
                gml_Script_c_pan(320, 0, 25)
                gml_Script_c_sel(kr)
                gml_Script_c_walkdirect(410, 246, 28)
                gml_Script_c_sel(no)
                gml_Script_c_walkdirect(448, 270, 38)
                gml_Script_c_sel(no)
                gml_Script_c_wait(40)
                gml_Script_c_wait(5)
                gml_Script_c_facing("r")
                gml_Script_c_speaker("noelle")
                gml_Script_c_msgsetloc(0, "\\E1* Looks like another electric wall./%", "obj_controller_city_mice2_slash_Step_0_gml_25_0")
                gml_Script_c_talk_wait()
                gml_Script_c_walkdirect_wait(678, 270, 30)
                gml_Script_c_facing("u")
                gml_Script_c_walkdirect_wait(678, 228, 12)
                gml_Script_c_wait(7)
                gml_Script_c_speaker("noelle")
                gml_Script_c_msgsetloc(0, "\\E5* Huh? This hole has a switch inside of it.../", "obj_controller_city_mice2_slash_Step_0_gml_32_0")
                gml_Script_c_msgnextloc("\\E4* Maybe we could try to put something inside...?/%", "obj_controller_city_mice2_slash_Step_0_gml_33_0")
                gml_Script_c_talk_wait()
                gml_Script_c_walkdirect_wait(468, 228, 38)
                gml_Script_c_facing("l")
                gml_Script_c_speaker("noelle")
                gml_Script_c_msgsetloc(0, "\\E0* What do you think^1, Kris?/%", "obj_controller_city_mice2_slash_Step_0_gml_39_0")
                gml_Script_c_talk_wait()
                gml_Script_c_sel(kr)
                gml_Script_c_actortokris()
                gml_Script_c_sel(no)
                gml_Script_c_actortocaterpillar()
                gml_Script_c_var_instance(id, "icon", 2)
                gml_Script_c_pannable(false)
                gml_Script_c_terminatekillactors()
            }
            if (icon == 2)
            {
                forcefield = gml_Script_scr_forcefield(40, 280, 2, 6, true, false)
                global.interact = 0
                icon = 3
                if gml_Script_i_ex(obj_cybercity_mousesign)
                {
                    with (obj_cybercity_mousesign)
                    {
                        start = 1
                        fade_in = 1
                    }
                }
            }
        }
    }
    if (weird == 1)
    {
        if (con == -2)
        {
            if (icon == 0 && obj_mainchara.x >= 278)
            {
                global.flag[7] = 1
                global.interact = 1
                cutscene_master = gml_Script_scr_cutscene_make()
                gml_Script_scr_maincharacters_actors()
                icon = 1
            }
            if (icon == 1)
            {
                icon = -9999
                gml_Script_c_pannable(true)
                gml_Script_c_pan(320, 0, 25)
                gml_Script_c_sel(kr)
                gml_Script_c_walkdirect(410, 240, 48)
                gml_Script_c_sel(no)
                gml_Script_c_autofacing(0)
                gml_Script_c_facing("r")
                gml_Script_c_walkdirect_wait(424, 282, 32)
                gml_Script_c_walkdirect_wait(484, 222, 16)
                gml_Script_c_facing("r")
                gml_Script_c_wait(30)
                gml_Script_c_speaker("noelle")
                gml_Script_c_pannable(false)
                gml_Script_c_sel(kr)
                gml_Script_c_facing("r")
                gml_Script_c_actortocaterpillar()
                gml_Script_c_actortokris()
                gml_Script_c_var_instance(id, "icon", 2)
                gml_Script_c_terminatekillactors()
            }
            if (icon == 2)
            {
                forcefield = gml_Script_scr_forcefield(40, 280, 2, 6, true, false)
                with (obj_caterpillarchara)
                {
                    x = 484
                    y = 222
                    gml_Script_scr_caterpillar_interpolate()
                }
                global.msc = 1205
                gml_Script_scr_text(global.msc)
                gml_Script_d_make()
                icon++
                timer = 0
            }
            if (icon == 4 && (!gml_Script_d_ex()))
            {
                timer++
                if (timer == 1)
                {
                    gml_Script_snd_volume(global.currentsong[1], 0, 30)
                    with (obj_mainchara)
                    {
                        fun = true
                        image_speed = 0.25
                        gml_Script_scr_move_to_point_over_time((x + 80), y, 40)
                    }
                    with (obj_caterpillarchara)
                    {
                        other.noellemarker = gml_Script_scr_marker(x, y, sprite_index)
                        visible = false
                    }
                    gml_Script_scr_darksize(noellemarker)
                }
                if (timer == 5)
                {
                    with (noellemarker)
                    {
                        image_speed = 0.25
                        gml_Script_scr_move_to_point_over_time((x + 80), y, 30)
                    }
                }
                if (timer == 35)
                {
                    noellemarker.image_speed = 0
                    noellemarker.image_index = 0
                }
                if (timer == 41)
                    obj_mainchara.fun = false
                if (timer == 42)
                {
                    with (obj_caterpillarchara)
                    {
                        gml_Script_setxy(other.noellemarker.x, other.noellemarker.y)
                        gml_Script_scr_caterpillar_interpolate()
                        gml_Script_scr_caterpillar_facing(3)
                    }
                }
                if (timer == 49)
                {
                    with (obj_caterpillarchara)
                        visible = true
                    gml_Script_safe_delete(noellemarker)
                }
                if (timer == 50)
                {
                    global.msc = 1224
                    gml_Script_scr_text(global.msc)
                    gml_Script_d_make()
                    icon++
                    timer = 0
                }
            }
            if (icon == 6 && (!gml_Script_d_ex()))
            {
                timer++
                if (timer == 1)
                {
                    gml_Script_snd_volume(global.currentsong[1], 0, 30)
                    with (obj_mainchara)
                    {
                        fun = true
                        image_speed = 0.25
                        gml_Script_scr_move_to_point_over_time((x + 80), y, 40)
                    }
                    with (obj_caterpillarchara)
                    {
                        other.noellemarker = gml_Script_scr_marker(x, y, sprite_index)
                        visible = false
                    }
                    gml_Script_scr_darksize(noellemarker)
                }
                if (timer == 5)
                {
                    with (noellemarker)
                    {
                        image_speed = 0.25
                        gml_Script_scr_move_to_point_over_time((x + 80), y, 30)
                    }
                }
                if (timer == 35)
                {
                    noellemarker.image_speed = 0
                    noellemarker.image_index = 0
                }
                if (timer == 41)
                    obj_mainchara.fun = false
                if (timer == 42)
                {
                    with (obj_caterpillarchara)
                    {
                        gml_Script_setxy(other.noellemarker.x, other.noellemarker.y)
                        gml_Script_scr_caterpillar_interpolate()
                        gml_Script_scr_caterpillar_facing(3)
                    }
                }
                if (timer == 49)
                {
                    with (obj_caterpillarchara)
                        visible = true
                    gml_Script_safe_delete(noellemarker)
                }
                if (timer == 50)
                {
                    global.msc = 1226
                    gml_Script_scr_text(global.msc)
                    gml_Script_d_make()
                    icon++
                    timer = 0
                }
            }
            if (icon == 8 && (!gml_Script_d_ex()))
            {
                timer++
                if (timer == 1)
                {
                    gml_Script_snd_volume(global.currentsong[1], 0, 30)
                    with (obj_mainchara)
                    {
                        fun = true
                        image_speed = 0.25
                        gml_Script_scr_move_to_point_over_time((x + 80), y, 40)
                    }
                    with (obj_caterpillarchara)
                    {
                        other.noellemarker = gml_Script_scr_marker(x, y, sprite_index)
                        visible = false
                    }
                    gml_Script_scr_darksize(noellemarker)
                }
                if (timer == 5)
                {
                    with (noellemarker)
                    {
                        image_speed = 0.25
                        gml_Script_scr_move_to_point_over_time((x + 80), y, 30)
                    }
                }
                if (timer == 35)
                {
                    noellemarker.image_speed = 0
                    noellemarker.image_index = 0
                }
                if (timer == 41)
                    obj_mainchara.fun = false
                if (timer == 42)
                {
                    with (obj_caterpillarchara)
                    {
                        gml_Script_setxy(other.noellemarker.x, other.noellemarker.y)
                        gml_Script_scr_caterpillar_interpolate()
                        gml_Script_scr_caterpillar_facing(3)
                    }
                }
                if (timer == 49)
                {
                    with (obj_caterpillarchara)
                        visible = true
                    gml_Script_safe_delete(noellemarker)
                }
                if (timer == 50)
                {
                    global.msc = 1228
                    gml_Script_scr_text(global.msc)
                    gml_Script_d_make()
                    icon++
                    timer = 0
                }
            }
            if (icon == 10 && (!gml_Script_d_ex()))
            {
                timer++
                if (timer == 1)
                {
                    gml_Script_snd_volume(global.currentsong[1], 0, 30)
                    with (obj_mainchara)
                    {
                        fun = true
                        image_speed = 0.25
                        gml_Script_scr_move_to_point_over_time(716, y, 40)
                    }
                    with (obj_caterpillarchara)
                    {
                        other.noellemarker = gml_Script_scr_marker(x, y, sprite_index)
                        visible = false
                    }
                    gml_Script_scr_darksize(noellemarker)
                }
                if (timer == 5)
                {
                    with (noellemarker)
                    {
                        image_speed = 0.25
                        gml_Script_scr_move_to_point_over_time(760, y, 30)
                    }
                }
                if (timer == 35)
                {
                    noellemarker.image_speed = 0
                    noellemarker.image_index = 0
                }
                if (timer == 41)
                    obj_mainchara.fun = false
                if (timer == 42)
                {
                    with (obj_caterpillarchara)
                    {
                        gml_Script_setxy(other.noellemarker.x, other.noellemarker.y)
                        gml_Script_scr_caterpillar_interpolate()
                        gml_Script_scr_caterpillar_facing(3)
                    }
                }
                if (timer == 49)
                {
                    with (obj_caterpillarchara)
                        visible = true
                    gml_Script_safe_delete(noellemarker)
                }
                if (timer == 50)
                {
                    global.msc = 1230
                    gml_Script_scr_text(global.msc)
                    gml_Script_d_make()
                    icon++
                    timer = 0
                }
            }
            if (icon == 12 && (!gml_Script_d_ex()))
            {
                if (timer == 0)
                {
                    fadeout = gml_Script_instance_create(0, 0, obj_fadeout)
                    fadeout.depth = 100
                }
                timer++
                if (timer == 45)
                {
                    gml_Script_scr_camerareset(1)
                    gml_Script_snd_play(snd_icespell)
                    with (obj_mice2Switch)
                        gml_Script_scr_createFrozen(0)
                    with (obj_rotationController_track)
                        gml_Script_scr_createFrozen(1)
                    with (obj_forcefield)
                        instance_destroy()
                    obj_mainchara.x = 708
                    obj_mainchara.y = 258
                    with (obj_caterpillarchara)
                    {
                        x = 760
                        y = 240
                        gml_Script_scr_caterpillar_interpolate()
                    }
                }
                if (timer == 90)
                {
                    fadein = gml_Script_instance_create(0, 0, obj_fadein)
                    with (fadeout)
                        instance_destroy()
                }
                if (timer == 140)
                {
                    gml_Script_scr_speaker("noelle")
                    gml_Script_scr_speaker("noelle")
                    gml_Script_msgsetloc(0, "\\E2* Th..^1. there^1, looks like I..^1. I did it?/", "obj_controller_city_mice2_slash_Step_0_gml_452_0")
                    gml_Script_msgnextloc("\\Ee* (I just..^1. listened to Kris's command.)/", "obj_controller_city_mice2_slash_Step_0_gml_453_0")
                    gml_Script_msgnextloc("\\EW* (And somehow^1, before I knew it...)/", "obj_controller_city_mice2_slash_Step_0_gml_454_0")
                    gml_Script_msgnextloc("\\EZ* (The puzzle was finished.)/", "obj_controller_city_mice2_slash_Step_0_gml_455_0")
                    gml_Script_msgnextloc("\\Ee* (What was I thinking^1? Kris wasn't trying to hurt me...)/", "obj_controller_city_mice2_slash_Step_0_gml_456_0")
                    gml_Script_msgnextloc("\\Ed* (They were just making me stronger.)/%", "obj_controller_city_mice2_slash_Step_0_gml_457_0_b")
                    gml_Script_d_make()
                    timer = 0
                    icon++
                }
            }
            if (icon == 13 && (!gml_Script_d_ex()))
            {
                icon = 6
                gml_Script_snd_play(snd_ominous)
                gml_Script_snd_free_all()
                victory = 2
                global.flag[915] = 5
                global.flag[368] = 1
                global.plot = 77
                gml_Script_scr_tempsave()
                global.flag[7] = 0
                global.interact = 0
            }
            if (icon == 999)
            {
                gml_Script_snd_free_all()
                musicer = gml_Script_instance_create(x, y, obj_musicer_city)
                global.interact = 0
                icon = 3
                weird = 0
                if gml_Script_i_ex(obj_cybercity_mousesign)
                {
                    with (obj_cybercity_mousesign)
                    {
                        start = 1
                        fade_in = 1
                    }
                }
            }
        }
    }
}
if (victory == false && instance_exists(obj_npc_facing))
{
    if (con == -2)
    {
        if (obj_mainchara.x <= 220)
        {
            global.interact = 1
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E8* Kris^1, wait a second!/%", "obj_controller_city_mice2_slash_Step_0_gml_67_0")
            gml_Script_d_make()
            con = -3
        }
    }
    if (con == -3 && (!gml_Script_d_ex()))
    {
        obj_mainchara.x = 221
        global.interact = 0
        global.facing = 1
        con = -2
    }
}
if (victory == true)
{
    if (con == -2)
    {
        global.flag[7] = 1
        global.interact = 1
        timer++
        if (timer > 20)
        {
            with (obj_rotationController_track)
            {
                rotate = 0
                with (controlled)
                    move = 0
                global.facing = 0
            }
            con++
        }
    }
    if (con == -1 && (!gml_Script_d_ex()) && (!gml_Script_i_ex(obj_holemouse)) && (!gml_Script_i_ex(obj_noelle_scared)))
    {
        global.interact = 1
        if (scarecount > 0)
        {
            obj_caterpillarchara.x = obj_npc_facing.x
            obj_caterpillarchara.y = obj_npc_facing.y
            obj_caterpillarchara.visible = true
            with (obj_caterpillarchara)
                gml_Script_scr_caterpillar_facing(1)
            with (obj_npc_facing)
                instance_destroy()
        }
        if (obj_caterpillarchara.x >= 518)
            walkpoint = obj_caterpillarchara.x
        else
            walkpoint = 518
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
        con++
    }
    if (con == 0 && (!gml_Script_d_ex()))
    {
        con = -999
        global.interact = 1
        gml_Script_c_sel(no)
        gml_Script_c_facing("r")
        gml_Script_c_sel(kr)
        gml_Script_c_wait(6)
        gml_Script_c_sel(no)
        gml_Script_c_walkdirect(no_actor.x, 166, 8)
        gml_Script_c_wait(8)
        gml_Script_c_walkdirect(walkpoint, 166, 16)
        gml_Script_c_wait(16)
        gml_Script_c_facing("r")
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E0* Kris^1! You did it^1! We should be able to.../%", "obj_controller_city_mice2_slash_Step_0_gml_134_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(4)
        gml_Script_c_sprite(spr_noelle_shocked_dw)
        gml_Script_c_wait(4)
        gml_Script_c_msgsetloc(0, "\\E2* ..^1. huh?/", "obj_controller_city_mice2_slash_Step_0_gml_197_0")
        gml_Script_c_msgnextloc("\\E1* The forcefield's still up./%", "obj_controller_city_mice2_slash_Step_0_gml_198_0")
        gml_Script_c_talk_wait()
        gml_Script_c_walkdirect_wait(walkpoint, 218, 12)
        gml_Script_c_walkdirect_wait(678, 218, 24)
        gml_Script_c_facing("u")
        gml_Script_c_msgsetloc(0, "\\E3* D-did we miss something? H-hello?/%", "obj_controller_city_mice2_slash_Step_0_gml_277_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(id, "con", 5)
        gml_Script_c_actortokris()
        gml_Script_c_actortocaterpillar()
        gml_Script_c_terminatekillactors()
    }
    if (con == 5)
    {
        obj_caterpillarchara.visible = false
        scaredNoelle = gml_Script_instance_create(678, 218, obj_npc_room)
        scaredNoelle.sprite_index = spr_noelle_walk_up_headtilt_dw
        scaredNoelle.image_xscale = 2
        scaredNoelle.image_yscale = 2
        with (scaredNoelle)
            gml_Script_scr_depth()
        with (noelle)
            instance_destroy()
        global.interact = 0
        global.flag[7] = 0
        con++
    }
    if (con == 5.9 && (!gml_Script_d_ex()))
    {
        obj_mainchara.x = 221
        global.interact = 0
        global.facing = 1
        con = 6
    }
    if (con == 6)
    {
        timer = 0
        if (obj_mainchara.x <= 220)
        {
            global.interact = 1
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E8* Kris^1, wait a second!/%", "obj_controller_city_mice2_slash_Step_0_gml_316_0")
            gml_Script_d_make()
            con = 5.9
        }
        with (obj_mice2Switch)
        {
            if (toggle == 1)
            {
                with (obj_rotationController_track)
                {
                    rotate = 0
                    with (controlled)
                        move = 0
                }
                gml_Script_instance_create(x, y, obj_shake)
                gml_Script_snd_play(snd_noise)
                gml_Script_snd_play(snd_impact)
                other.endNoelle = gml_Script_instance_create(obj_noelle_scared.x, obj_noelle_scared.y, obj_marker)
                other.endNoelle.visible = true
                other.endNoelle.sprite_index = spr_noelle_shocked_dw
                other.endNoelle.image_index = image_index
                other.endNoelle.image_xscale = image_xscale
                other.endNoelle.image_yscale = image_yscale
                other.endNoelle.image_speed = 0
                global.interact = 1
                global.facing = 0
                other.con++
                other.timer = 0
                with (obj_noelle_scared)
                    instance_destroy()
            }
        }
    }
    if (con == 7)
    {
        timer++
        if (timer == 45)
        {
            walkDist = floor(((endNoelle.x - obj_mainchara.x) / 8))
            with (endNoelle)
                gml_Script_scr_move_to_point_over_time(obj_mainchara.x, y, other.walkDist)
            endNoelle.image_speed = 0.25
            endNoelle.sprite_index = spr_noelle_walk_left_mad_dw
            timer = 0
            con++
            with (endNoelle)
                gml_Script_scr_depth()
        }
    }
    if (con == 8)
    {
        gml_Script_scr_speaker("noelle")
        gml_Script_msgsetloc(0, "\\E8* Kris^1, I can't believe you made those mice--/%", "obj_controller_city_mice2_slash_Step_0_gml_380_0")
        gml_Script_d_make()
        timer++
        con = 8.1
        with (endNoelle)
            gml_Script_scr_depth()
    }
    if (con == 8.1)
    {
        if (endNoelle.x == obj_caterpillarchara.x)
            endNoelle.image_speed = 0
        timer++
        if (timer >= walkDist)
        {
            endNoelle.sprite_index = spr_noelle_walk_up_dw
            endNoelle.image_index = 0
            endNoelle.image_speed = 0
            timer = 0
            if (!gml_Script_d_ex())
                con = 9
        }
    }
    if (con == 9)
    {
        timer++
        if (timer == 15)
        {
            endNoelle.sprite_index = spr_noelle_walk_right_dw
            timer = 0
            con++
        }
    }
    if (con == 10)
    {
        timer++
        if (timer == 15)
        {
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E3* Huh?/%", "obj_controller_city_mice2_slash_Step_0_gml_420_0")
            gml_Script_d_make()
            timer = 0
            con++
        }
    }
    if (con == 11 && (!gml_Script_d_ex()))
    {
        obj_caterpillarchara.x = endNoelle.x
        obj_caterpillarchara.y = endNoelle.y
        with (endNoelle)
            instance_destroy()
        global.interact = 1
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
        con++
    }
    if (con == 12)
    {
        con = -999
        gml_Script_c_sel(no)
        gml_Script_c_facing("u")
        gml_Script_c_wait(15)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E2* I..^1. I guess landing on the switch turned off the forcefield.../%", "obj_controller_city_mice2_slash_Step_0_gml_434_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(8)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E4* Let's go^1, Kris./%", "obj_controller_city_mice2_slash_Step_0_gml_457_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(id, "con", 13)
        gml_Script_c_var_instance(id, "timer", 0)
        gml_Script_c_actortokris()
        gml_Script_c_actortocaterpillar()
        gml_Script_c_terminatekillactors()
        global.flag[7] = 0
    }
    if (con == 13)
    {
        if (timer == 0)
            gml_Script_scr_camerareset(20)
        timer++
        if (timer == 20)
        {
            global.facing = 0
            with (obj_caterpillarchara)
                gml_Script_scr_caterpillar_interpolate()
            global.flag[368] = 1
            global.plot = 77
            global.interact = 0
            gml_Script_scr_tempsave()
            con++
        }
    }
}
if instance_exists(obj_noelle_scared)
{
    if (obj_noelle_scared.x == 370 && obj_noelle_scared.y == 166 && obj_noelle_scared.con == 0 && obj_noelle_scared.jostlecon == 0 && scared == 0 && obj_noelle_scared.jostletimer > 5)
    {
        scarecount++
        global.interact = 1
        with (obj_noelle_scared)
        {
            other.scaredNoelle = gml_Script_instance_create(x, y, obj_npc_facing)
            other.scaredNoelle.sprite_index = sprite_index
            other.scaredNoelle.image_xscale = 2
            other.scaredNoelle.image_yscale = 2
            with (other.scaredNoelle)
                gml_Script_scr_set_facing_sprites("noelledark")
            other.scaredNoelle.y = other.scaredNoelle.ystart
            with (other.scaredNoelle)
                gml_Script_scr_depth()
            instance_destroy()
        }
        scared++
    }
}
if (scared == 1 && (!gml_Script_d_ex()))
{
    gml_Script_scr_speaker("noelle")
    if (scarecount == 1)
        gml_Script_msgsetloc(0, "\\E2* I..^1. I wish they wouldn't jump out at me like that!/%", "obj_controller_city_mice2_slash_Step_0_gml_500_0")
    if (scarecount > 1)
        gml_Script_msgsetloc(0, "\\E3* (How many more times am I gonna get hit by mice...?)/%", "obj_controller_city_mice2_slash_Step_0_gml_546_0")
    gml_Script_d_make()
    scared++
}
if (scared == 2)
{
    if (!gml_Script_d_ex())
    {
        scared++
        global.interact = 0
    }
}
