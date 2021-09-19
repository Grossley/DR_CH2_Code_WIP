if (init == 0)
{
    init = 1
    bridge = gml_Script_instance_create(120, 322, obj_marker)
    bridge.visible = true
    bridge.sprite_index = spr_dw_city_mice3fakeplat
    bridge.image_speed = 0
    bridge.image_xscale = 2
    bridge.image_yscale = 2
    bridge.depth = 700000
}
if (con == 0)
{
    with (obj_mainchara)
    {
        if place_meeting(x, y, obj_trigger_area)
        {
            with (obj_trigger_area)
                instance_destroy()
            gml_Script_mus_volume(global.currentsong[1], 0, 16)
            other.con++
        }
    }
}
if (weird == 1)
{
    if (con == 1)
    {
        global.interact = 1
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
        con = 2
    }
    if (con == 2)
    {
        con = -1
        gml_Script_c_sel(kr)
        gml_Script_c_walkdirect(164, 70, 28)
        gml_Script_c_sel(no)
        gml_Script_c_walkdirect(178, 24, 28)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E2* I'll..^1. go ahead and do the puzzle!/%", "obj_controller_city_mice3_slash_Step_0_gml_53_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(15)
        gml_Script_c_walkdirect_wait(38, 32, 22)
        gml_Script_c_walkdirect_wait(38, 264, 40)
        gml_Script_c_walkdirect_wait(198, 254, 32)
        gml_Script_c_walkdirect_wait(198, 246, 16)
        gml_Script_c_sprite(728)
        gml_Script_c_wait(15)
        gml_Script_c_fadeout(15)
        gml_Script_c_wait(30)
        gml_Script_c_var_instance(id, "noface", 1)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "* Isn't it a good thing?/", "obj_controller_city_mice3_slash_Step_0_gml_74_0_b")
        gml_Script_c_msgnextloc("* I'm solving things by myself. Taking new things for myself. Defeating enemies by myself./", "obj_controller_city_mice3_slash_Step_0_gml_75_0_b")
        gml_Script_c_msgnextloc("* And every time I do it.../", "obj_controller_city_mice3_slash_Step_0_gml_76_0_b")
        gml_Script_c_msgnextloc("* I'm getting stronger./", "obj_controller_city_mice3_slash_Step_0_gml_77_0")
        gml_Script_c_msgnextloc("* ..^1. what did I do when we got that ring? ..^1. when I solved that puzzle?/", "obj_controller_city_mice3_slash_Step_0_gml_78_0")
        gml_Script_c_msgnextloc("* ..^1. It..^1. It doesn't matter. It doesn't matter if I can't remember./", "obj_controller_city_mice3_slash_Step_0_gml_79_0")
        gml_Script_c_msgnextloc("* It doesn't matter if the battles are blurring together./", "obj_controller_city_mice3_slash_Step_0_gml_80_0")
        gml_Script_c_msgnextloc("* If Kris tells me to do it.../", "obj_controller_city_mice3_slash_Step_0_gml_81_0")
        gml_Script_c_msgnextloc("* I can do things I could never do before./", "obj_controller_city_mice3_slash_Step_0_gml_82_0")
        gml_Script_c_msgnextloc("* Isn't it a good thing?/", "obj_controller_city_mice3_slash_Step_0_gml_83_0")
        gml_Script_c_msgnextloc("* ... I'm getting stronger./", "obj_controller_city_mice3_slash_Step_0_gml_84_0")
        gml_Script_c_msgnextloc("* .../", "obj_controller_city_mice3_slash_Step_0_gml_85_0")
        gml_Script_c_msgnextloc("* As long as I..^1. just do what they say./", "obj_controller_city_mice3_slash_Step_0_gml_86_0")
        gml_Script_c_msgnextloc("* As long as I.../%", "obj_controller_city_mice3_slash_Step_0_gml_87_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(id, "noface", 0)
        gml_Script_c_wait(15)
        gml_Script_c_soundplay(251)
        gml_Script_c_var_instance(id, "solve", 1)
        gml_Script_c_wait(60)
        gml_Script_c_setxy(108, 26)
        gml_Script_c_facing("r")
        gml_Script_c_fadein(15)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E4* All finished^1, Kris^1. Should we find some more enemies?/%", "obj_controller_city_mice3_slash_Step_0_gml_88_0")
        gml_Script_c_talk_wait()
        gml_Script_c_soundplay(196)
        gml_Script_c_var_instance(id, "con", 3)
        gml_Script_c_actortocaterpillar()
        gml_Script_c_actortokris()
        gml_Script_c_terminatekillactors()
    }
    if (con == 3)
    {
        global.facing = 0
        with (obj_caterpillarchara)
            gml_Script_scr_caterpillar_interpolate()
        global.flag[7] = 0
        global.interact = 0
        global.flag[379] = 1
        global.plot = 78
        con++
        obj_musicer_city.update = 1
        gml_Script_snd_free_all()
        gml_Script_scr_tempsave()
    }
    if (noface == 1)
        global.fc = 0
    if (solve == 1)
    {
        layer_set_visible(layer_get_id("BG_Tiles_HiddenPath"), 1)
        layer_set_visible(layer_get_id("BG_Tiles_HiddenPath_Sidewalk"), 1)
        var _temp_local_var_1 = fakeWall
        instance_destroy()
    }
}
if (weird == 0)
{
    if (con == 1)
    {
        noExit = gml_Script_instance_create(40, 0, obj_solidblocksized)
        noExit.image_xscale = 2
        noExit.image_yscale = 0.6
        global.interact = 1
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
        con = 2
    }
    if (con == 2)
    {
        con = -999
        global.flag[7] = 1
        gml_Script_c_sel(kr)
        gml_Script_c_walkdirect(164, 70, 28)
        gml_Script_c_sel(no)
        gml_Script_c_walkdirect(178, 24, 28)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E1* It's a dead end...?/%", "obj_controller_city_mice3_slash_Step_0_gml_49_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(15)
        gml_Script_c_sel(no)
        gml_Script_c_walkdirect(38, 32, 22)
        gml_Script_c_wait(15)
        gml_Script_c_sel(kr)
        gml_Script_c_walkdirect(40, 70, 20)
        gml_Script_c_wait(6)
        gml_Script_c_sel(no)
        gml_Script_c_walkdirect(38, 264, 40)
        gml_Script_c_wait(16)
        gml_Script_c_sel(kr)
        gml_Script_c_walkdirect(40, 220, 30)
        gml_Script_c_wait(25)
        gml_Script_c_sel(no)
        gml_Script_c_walkdirect(278, 254, 32)
        gml_Script_c_wait(8)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("r")
        gml_Script_c_wait(24)
        gml_Script_c_wait(3)
        gml_Script_c_sel(no)
        gml_Script_c_actortoobject(1290)
        gml_Script_c_var_instance(id, "con", 6)
        gml_Script_c_actortocaterpillar()
        gml_Script_c_actortokris()
        gml_Script_c_terminatekillactors()
        con = 5.5
    }
    if (con == 6)
    {
        obj_caterpillarchara.visible = false
        if instance_exists(obj_trigger_area)
        {
            with (obj_trigger_area)
            {
                other.noelle = gml_Script_instance_create(x, y, obj_marker)
                other.noelle.visible = true
                other.noelle.sprite_index = spr_noelle_walk_right_dw
                other.noelle.image_speed = 0
                other.noelle.image_index = 0
                other.noelle.image_xscale = 2
                other.noelle.image_yscale = 2
                other.con = 7
                instance_destroy()
            }
        }
    }
    if (con == 7)
    {
        var _temp_local_var_3 = noelle
        gml_Script_scr_depth()
    }
    if (con == 8 && (!gml_Script_d_ex()))
    {
        leaveBlock = gml_Script_instance_create(40, 180, obj_solidblocksized)
        con++
    }
    if (con == 9)
    {
        timer++
        if (timer == 5)
        {
            gml_Script_snd_play(61)
            gml_Script_instance_create(0, 0, obj_shake)
            var _temp_local_var_5 = bridge
            instance_destroy()
        }
    }
    if (con == 10)
    {
        timer++
        if (timer > 24)
        {
            var _temp_local_var_6 = obj_masterPlatformController.plat[(obj_masterPlatformController.currentPlatform - 1)]
            x = (lx + random_range(-2, 2))
        }
        if (timer == 25)
        {
            with (obj_rotationtile_tower)
                freeze = 1
            noelle.sprite_index = spr_noelle_shocked_dw
            noelle.image_index = 3
            global.currentsong[0] = gml_Script_snd_init("creepychase.ogg")
            global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\EE* Kris!^1! The platform's falling!^1! H-help me!!/%", "obj_controller_city_mice3_slash_Step_0_gml_168_0")
            d = gml_Script_d_make()
            d.side = 0
            con++
        }
    }
    if (con == 11)
    {
        if (gml_Script_i_ex(317) && (!gml_Script_d_ex()))
        {
            with (obj_cybercity_mousesign)
            {
                if (!fade_in)
                {
                    start = 1
                    fade_in = 1
                }
            }
        }
        var _temp_local_var_8 = obj_masterPlatformController.plat[0]
        x = (lx + random_range(-2, 2))
    }
    if (con == 12)
    {
        var _temp_local_var_9 = obj_masterPlatformController.plat[0]
        if (phase == 3)
            x = (lx + random_range(-2, 2))
    }
    if (con == 11 && (!gml_Script_d_ex()))
    {
        obj_mouseTowerTrigger.blocked = 0
        timer = 0
        global.interact = 0
        forcefield = gml_Script_instance_create(0, 140, obj_forcefield)
        forcefield.image_xscale = 6
        forcefield.image_yscale = 2
        forcefield.depth = (obj_dw_city_mice3Fence.depth - 50)
        con++
    }
    if (con == 12 && (!gml_Script_d_ex()))
    {
        if (obj_mouseTowerTrigger.rotate == 1)
        {
            if (towerinit == 0)
            {
                with (obj_rotationtile_tower)
                    freeze = 0
                with (obj_masterPlatformController)
                {
                    init = 1
                    plat[(currentPlatform - 1)].falltimer = 0
                }
                towerinit = 1
            }
        }
        if (exttrig == "success")
        {
            timer++
            obj_mouseTowerTrigger.blocked = 1
            with (obj_rotationtile_tower)
                freeze = 1
            with (obj_masterPlatformController)
                freeze = 1
            gml_Script_mus_volume(global.currentsong[1], 0, 16)
            if (timer == 60)
                con = 15.9
        }
        if (exttrig == "fell")
        {
            gml_Script_mus_volume(global.currentsong[1], 0, 16)
            with (obj_rotationtile_tower)
                freeze = 1
            obj_mouseTowerTrigger.blocked = 1
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\EE* KRIS!!!!!!!/", "obj_controller_city_mice3_slash_Step_0_gml_208_0")
            gml_Script_msgnextloc("\\E8* Gosh^1, you're lucky Dess isn't here!/", "obj_controller_city_mice3_slash_Step_0_gml_209_0")
            gml_Script_msgnextloc("\\E8* Otherwise YOU'D be facedown in a mousepile!/", "obj_controller_city_mice3_slash_Step_0_gml_210_0")
            gml_Script_msgnextloc("\\E8* .../", "obj_controller_city_mice3_slash_Step_0_gml_211_0")
            gml_Script_msgnextloc("\\E6* S..^1. sorry^1, I didn't mean to get so mad./", "obj_controller_city_mice3_slash_Step_0_gml_212_0")
            gml_Script_msgnextloc("\\E0* Sure..^1. okay^1, we can try again./%", "obj_controller_city_mice3_slash_Step_0_gml_213_0")
            d = gml_Script_d_make()
            d.side = 0
            obj_noelle_scared.image_index = 0
            con++
        }
    }
    if (con == 13 && (!gml_Script_d_ex()))
    {
        global.currentsong[0] = gml_Script_snd_init("boxing_game.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
        gml_Script_snd_pitch(global.currentsong[1], 1.2)
        con = 20
    }
    if (con == 15.9)
    {
        obj_noelle_scared.sprite_index = spr_noelle_walk_left_mad_dw
        gml_Script_scr_speaker("noelle")
        gml_Script_msgsetloc(0, "\\E8* Kris!^1! What are you doing!^1! You made me --/%", "obj_controller_city_mice3_slash_Step_0_gml_230_0")
        timer = 0
        d = gml_Script_d_make()
        d.side = 0
        con = 16
    }
    if (con == 16 && (!gml_Script_d_ex()))
    {
        with (obj_rotationtile_tower)
            freeze = 1
        with (obj_masterPlatformController)
            freeze = 1
        timer++
        if (timer == 15)
        {
            obj_noelle_scared.sprite_index = spr_noelle_walk_left_dw
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E3* H..^1. huh?/%", "obj_controller_city_mice3_slash_Step_0_gml_249_0")
            d = gml_Script_d_make()
            d.side = 0
            timer = 0
            con++
        }
    }
    if (con == 17 && (!gml_Script_d_ex()))
    {
        timer++
        if (timer == 15)
        {
            obj_noelle_scared.sprite_index = spr_noelle_walk_right_smile_dw
            obj_noelle_scared.image_index = 0
            obj_noelle_scared.image_speed = 0
        }
        if (timer == 45)
        {
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E6* S-sorry^1, Kris^1, you just saved me^1, didn't you...?/%", "obj_controller_city_mice3_slash_Step_0_gml_270_0")
            d = gml_Script_d_make()
            d.side = 0
            timer = 0
            con++
        }
    }
    if (con == 18 && (!gml_Script_d_ex()))
    {
        timer++
        obj_noelle_scared.sprite_index = spr_noelle_shocked_dw
        obj_noelle_scared.image_index = 3
        with (obj_noelle_scared)
            con = 0
        with (obj_masterPlatformController)
            freeze = 0
        if (timer == 40)
        {
            var _temp_local_var_16 = obj_masterPlatformController.plat[(obj_masterPlatformController.currentPlatform - 1)]
            gml_Script_scr_shakeobj()
        }
    }
    if (con == 19 && (!gml_Script_d_ex()))
    {
        obj_noelle_scared.sprite_index = spr_noelle_walk_left_dw
        obj_noelle_scared.image_index = 0
        with (obj_rotationtile_tower)
            freeze = 0
        with (obj_rotationtile_tower)
            falltimer = 0
        with (obj_masterPlatformController)
            plat[(currentPlatform - 1)].falltimer = 0
        timer = 0
        con++
    }
    if (con == 20 && (!gml_Script_d_ex()))
    {
        with (obj_rotationtile_tower)
            freeze = 0
        obj_mouseTowerTrigger.blocked = 0
        if (micescore == 2)
            timer++
        if (timer == 10)
            con++
    }
    if (con == 21)
    {
        berdly = gml_Script_instance_create(40, -120, obj_marker)
        berdly.image_xscale = 2
        berdly.image_yscale = 2
        berdly.image_speed = 0.25
        berdly.sprite_index = spr_berdly_walk_down_dw
        var _temp_local_var_19 = berdly
        gml_Script_scr_move_to_point_over_time(40, 163, 48)
    }
    if (con == 22)
    {
        var _temp_local_var_20 = berdly
        gml_Script_scr_depth()
    }
    if gml_Script_i_ex(berdly)
        berdly.visible = true
    if (con == 23)
    {
        if (micescore >= micetarget)
        {
            with (obj_rotationtile_tower)
                freeze = 1
            solve = 1
            obj_mouseTowerTrigger.blocked = 1
            obj_mouseTowerTrigger.rotate = 0
            if gml_Script_i_ex(monologue)
            {
                var _temp_local_var_21 = monologue
                instance_destroy()
            }
            obj_dw_city_mice3Fence.image_index = 1
            layer_set_visible(layer_get_id("BG_Tiles_HiddenPath"), 1)
            layer_set_visible(layer_get_id("BG_Tiles_HiddenPath_Sidewalk"), 1)
            var _temp_local_var_22 = fakeWall
            instance_destroy()
        }
    }
    if (con == 24)
    {
        timer++
        if (timer == 5)
        {
            berdly.x = 38
            berdly.sprite_index = spr_berdly_walk_up_dw
            image_speed = 0.25
            var _temp_local_var_23 = berdly
            gml_Script_scr_move_to_point_over_time(38, 38, 16)
        }
    }
    if (con == 24.1 && (!gml_Script_d_ex()))
    {
        timer++
        if (timer == 16)
        {
            berdly.sprite_index = spr_berdly_walk_right_dw
            berdly.image_speed = 0
            berdly.x = 45
            berdly.y = obj_sneo_final_forme_mouth_back
            global.interact = 1
            gml_Script_scr_speaker("berdly")
            gml_Script_msgsetloc(0, "\\EN* What./", "obj_controller_city_mice3_slash_Step_0_gml_419_0")
            gml_Script_msgnextloc("\\EN* How did you.../%", "obj_controller_city_mice3_slash_Step_0_gml_420_0")
            gml_Script_d_make()
            gml_Script_mus_volume(global.currentsong[1], 0, 30)
            timer = 0
            con = 24.2
        }
    }
    if (con == 24.2 && (!gml_Script_d_ex()))
    {
        var _temp_local_var_26 = berdly
        gml_Script_scr_depth()
    }
    if (con == 25 && (!gml_Script_d_ex()))
    {
        timer++
        if (timer == 15)
        {
            gml_Script_scr_speaker("berdly")
            gml_Script_msgsetloc(0, "\\EC* HOW DID YOU SOLVE THAT??/%", "obj_controller_city_mice3_slash_Step_0_gml_445_0")
            gml_Script_d_make()
            timer = 0
            con++
        }
    }
    if (con == 26 && (!gml_Script_d_ex()))
    {
        timer++
        if (timer == 1)
        {
            var _temp_local_var_29 = berdly
            gml_Script_instance_create((x + (sprite_width / 2)), (y - 20), obj_excblcon)
        }
        if (timer == 35)
            berdly.sprite_index = spr_berdly_walk_right_dw
        if (timer == 50)
        {
            gml_Script_scr_speaker("berdly")
            gml_Script_msgsetloc(0, "\\ED* Even a broken clock is right once a day./%", "obj_controller_city_mice3_slash_Step_0_gml_466_0")
            timer = 0
            gml_Script_d_make()
            con = 27
        }
    }
    if (con == 27 && (!gml_Script_d_ex()))
    {
        if (timer == 0)
        {
            berdly.sprite_index = spr_berdly_walk_right_dw
            var _temp_local_var_31 = berdly
            gml_Script_scr_move_to_point_over_time((x + 255), y, 30)
        }
        timer++
        if (timer == 30)
        {
            berdly.image_speed = 0
            berdly.image_index = 0
        }
        if (timer == 60)
        {
            gml_Script_scr_speaker("berdly")
            gml_Script_msgsetloc(0, "\\E9* And Kris^1, if anyone asks.../%", "obj_controller_city_mice3_slash_Step_0_gml_487_0")
            timer = 0
            gml_Script_d_make()
            con++
        }
    }
    if (con == 28 && (!gml_Script_d_ex()))
    {
        timer++
        if (timer == 15)
        {
            berdly.sprite_index = spr_berdly_mad_dw
            gml_Script_scr_speaker("berdly")
            gml_Script_msgsetloc(0, "\\ED* I solved the puzzle!!/", "obj_controller_city_mice3_slash_Step_0_gml_500_0")
            gml_Script_msgnextloc("\\EC* It's not fair for YOU to get extra credit for a fluke!!/", "obj_controller_city_mice3_slash_Step_0_gml_501_0")
            gml_Script_msgnextloc("\\ED* Get it!? Let NO ONE think otherwise^1! ESPECIALLY Susie!/", "obj_controller_city_mice3_slash_Step_0_gml_502_0")
            gml_Script_msgnextloc("\\EC* You KNOW she'd just..^1. lord it over me!/%", "obj_controller_city_mice3_slash_Step_0_gml_503_0")
            timer = 0
            gml_Script_d_make()
            con++
        }
    }
    if (con == 29 && (!gml_Script_d_ex()))
    {
        berdly.sprite_index = spr_berdly_walk_right_dw_unhappy
        berdly.image_speed = 0.25
        gml_Script_scr_move_to_point_over_time((y.room_width + 64), 64, berdly)
    }
    if (con == 30)
    {
        global.interact = 1
        timer++
        if (timer == 64)
        {
            timer = 0
            con++
        }
    }
    if (con == 31)
    {
        timer++
        if (timer >= 25)
            con++
    }
    if (con == 32)
    {
        bridge = gml_Script_instance_create(120, 320, obj_marker)
        bridge.sprite_index = spr_dw_city_mice3fakeplat
        bridge.image_speed = 0
        bridge.image_xscale = 2
        bridge.image_yscale = 2
        bridge.depth = 890000
        gml_Script_snd_play(61)
        with (obj_rotationtile_tower)
            freeze = 1
        with (obj_masterPlatformController)
            freeze = 1
        if gml_Script_i_ex(noelle)
        {
            var _temp_local_var_35 = noelle
            instance_destroy()
        }
        noelle = gml_Script_instance_create(obj_noelle_scared.x, obj_noelle_scared.y, obj_marker)
        noelle.sprite_index = obj_noelle_scared.sprite_index
        noelle.image_xscale = 2
        noelle.image_yscale = 2
        noelle.image_speed = 0
        var _temp_local_var_36 = noelle
        gml_Script_scr_depth()
    }
    if (con == 32.5)
    {
        timer++
        if (timer == 30)
        {
            timer = 0
            if (noelle.y > 256)
                noelle.sprite_index = spr_noelle_walk_up_dw
            if (noelle.y <= 256)
                noelle.sprite_index = spr_noelle_walk_down_dw
            con = 33
        }
    }
    if (con == 33)
    {
        disttopt = floor((abs((noelle.y - 256)) / 2))
        disttopt = clamp(disttopt, 1, 8)
        show_debug_message(("disttopt=" + string(disttopt)))
        var _temp_local_var_37 = noelle
        gml_Script_scr_move_to_point_over_time(x, 256, other.disttopt)
    }
    if (con == 34)
    {
        timer++
        if (timer == disttopt)
        {
            noelle.sprite_index = spr_noelle_walk_left_dw
            var _temp_local_var_38 = noelle
            gml_Script_scr_move_to_point_over_time(36, y, 64)
        }
    }
    if (con == 35)
    {
        timer++
        if (noelle.x < 100)
        {
            _temp_local_var_38.image_alpha = (bridge.image_alpha * 0.8)
            var _temp_local_var_39 = noelle
            var _temp_local_var_40 = noelle
            var _temp_local_var_41 = -9
            var _temp_local_var_42 = bridge
        }
        if (timer == 52)
        {
            with (obj_rotationtile_tower)
                gml_Script_scr_move_to_point_over_time(x, choose(62, 63, 64, 65, 66, 67, 68, 69, 70).room_height, noelle)
        }
        if (timer == 64)
        {
            noelle.sprite_index = spr_noelle_walk_right_dw
            noelle.image_index = 0
            noelle.image_speed = 0
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E2* Gosh./", "obj_controller_city_mice3_slash_Step_0_gml_631_0")
            gml_Script_msgnextloc("\\E3* ..^1. Y'know^1, I don't think I'm afraid of mice anymore./", "obj_controller_city_mice3_slash_Step_0_gml_632_0")
            gml_Script_msgnextloc("\\E6* Actually^1, I think they might be kind of..^1. cute?/", "obj_controller_city_mice3_slash_Step_0_gml_633_0")
            gml_Script_msgnextloc("\\E8* Anyways^1, let's keep going./%", "obj_controller_city_mice3_slash_Step_0_gml_634_0")
            d = gml_Script_d_make()
            d.side = 0
            global.facing = 0
            timer = 0
            var _temp_local_var_43 = bridge
            instance_destroy()
        }
    }
    if (con == 36 && (!gml_Script_d_ex()))
    {
        noelle.sprite_index = spr_noelle_walk_up_dw
        noelle.image_speed = 0.25
        var _temp_local_var_45 = noelle
        gml_Script_scr_move_to_point_over_time(obj_caterpillarchara.x, obj_caterpillarchara.y, 12)
    }
    if (con == 37)
    {
        if (noelle.x == obj_caterpillarchara.x && noelle.y == obj_caterpillarchara.y)
        {
            var _temp_local_var_47 = leaveBlock
            instance_destroy()
        }
    }
    if (con == 38 && (!gml_Script_d_ex()))
    {
        gml_Script_snd_free_all()
        global.facing = 0
        with (obj_caterpillarchara)
            gml_Script_scr_caterpillar_interpolate()
        global.flag[7] = 0
        obj_mouseTowerTrigger.rotate = 0
        global.interact = 0
        global.flag[379] = 1
        global.plot = 78
        var _temp_local_var_50 = noExit
        instance_destroy()
    }
}
