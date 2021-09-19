var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_6, _temp_local_var_11, _temp_local_var_12, _temp_local_var_13, _temp_local_var_15, _temp_local_var_16, _temp_local_var_17, _temp_local_var_18, _temp_local_var_19, _temp_local_var_20, _temp_local_var_22, _temp_local_var_24, _temp_local_var_25, _temp_local_var_38;
toggle = 0
if (!ignoreHardWork)
{
    with (obj_alleySwitch)
    {
        if (toggle == 1)
        {
            other.toggle = 1
            other.bothToggled = 1
        }
        if (toggle == 0)
            other.bothToggled = 0
        other.toggledtimer = 0
    }
}
if (!ignoreHardWork)
{
    if (toggle == 1)
    {
        hasToggled = 1
        if gml_Script_i_ex(forcefield)
        {
            var _temp_local_var_1 = forcefield
            instance_destroy()
        }
    }
    else if (!gml_Script_i_ex(forcefield))
        forcefield = gml_Script_scr_forcefield(680, 1040, 2, 8, 1, 1)
}
toggledtimer++
timer++
if (hasToggled == 1 && con == 0)
{
    if (toggle == 1)
        timer = 0
    if (toggle == 0 && timer >= 30 && toggledtimer < 90 && obj_mainchara.x >= 386 && obj_mainchara.y > 1024)
    {
        if (global.flag[915] == 3 && global.flag[916] == 0)
            weirdRoute = 1
        else
            weirdRoute = 0
        con++
    }
}
if (weirdRoute == 0)
{
    if (con == 1 && global.interact == 0)
    {
        global.flag[7] = 1
        global.interact = 1
        gml_Script_scr_speaker("noelle")
        gml_Script_msgsetloc(0, "\\E1* Hmm^1, looks like you need to hold it down./%", "obj_controller_dw_city_big_2_slash_Step_0_gml_59_0")
        d = gml_Script_d_make()
        con++
    }
    if (con == 2)
    {
        if (!gml_Script_i_ex(d))
        {
            global.interact = 0
            con++
        }
    }
    if (con == 101)
    {
        if (!gml_Script_i_ex(d))
        {
            global.interact = 0
            con++
        }
    }
    if (con == 102)
    {
        obj_mainchara.y = 1024
        global.facing = 0
        global.interact = 0
        if (noelleWaiting == 0)
            con = 3
        if (noelleWaiting == 1)
            con = 10
        if (noelleWaiting == 2)
            con = 55
        if (noelleWaiting == 3)
            con = 71
        if (noelleWaiting == 6)
            con = 58
    }
    if (con == 3)
    {
        if (obj_mainchara.y < 1000)
            global.flag[7] = 0
        else
            global.flag[7] = 1
        if (toggle == 1)
            con++
    }
    if (con == 4)
    {
        global.interact = 1
        global.facing = 1
        gml_Script_scr_speaker("noelle")
        gml_Script_msgsetloc(0, "\\E0* Kris^1, you keep standing on this one!/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_120_0")
        d = gml_Script_d_make()
        con++
    }
    if (con == 5)
    {
        if (!gml_Script_i_ex(d))
        {
            global.interact = 0
            con++
        }
    }
    if (con == 6)
    {
        noellePuzzle = gml_Script_instance_create(obj_caterpillarchara.x, obj_caterpillarchara.y, obj_marker)
        noellePuzzle.sprite_index = spr_noelle_walk_right_dw
        noellePuzzle.image_xscale = 2
        noellePuzzle.image_yscale = 2
        noellePuzzle.image_speed = 0.25
        noellePuzzle.starty = noellePuzzle.y
        noellePuzzle.startx = noellePuzzle.x
        noellePuzzle.depth = obj_caterpillarchara.depth
        obj_caterpillarchara.visible = false
        con++
    }
    if (con == 7)
    {
        if (toggle == 1)
        {
            var _temp_local_var_6 = noellePuzzle
            if (starty > 1064)
            {
                if (y > 1064)
                {
                    y -= 2
                    image_speed = 0.25
                    sprite_index = spr_noelle_walk_up_dw
                }
                else
                {
                    image_speed = 0
                    y = 1064
                    starty = 1064
                }
            }
            if (starty < 1064)
            {
                if (y < 1064)
                {
                    y += 2
                    image_speed = 0.25
                    sprite_index = spr_noelle_walk_down_dw
                }
                else
                {
                    image_speed = 0
                    y = 1064
                    starty = 1064
                }
            }
            if (starty == 1064 && startx < 758)
            {
                if (x < 758)
                {
                    image_speed = 0.25
                    sprite_index = spr_noelle_walk_right_dw
                    x += 2
                }
                else
                {
                    image_speed = 0
                    x = 758
                    startx = 758
                }
            }
            if (starty == 1064 && startx > 758)
            {
                if (x > 758)
                {
                    image_speed = 0.25
                    sprite_index = spr_noelle_walk_left_dw
                    x -= 2
                }
                else
                {
                    image_speed = 0
                    x = 758
                    startx = 758
                }
            }
            gml_Script_scr_depth()
        }
        if (toggle == 0)
        {
            noellePuzzle.startx = noellePuzzle.x
            noellePuzzle.starty = noellePuzzle.y
            noellePuzzle.image_speed = 0
            noellePuzzle.speed = 0
            con = 20
        }
    }
    if (con == 8)
    {
        global.interact = 1
        gml_Script_scr_speaker("noelle")
        gml_Script_msgsetloc(0, "\\E0* OK^1, now you come over here!/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_249_0")
        d = gml_Script_d_make()
        con++
        if revengeNoelle
            con = 54
    }
    if (con == 9)
    {
        if (!gml_Script_i_ex(d))
        {
            global.interact = 0
            con++
        }
    }
    if (con == 10)
    {
        noelleWaiting = 1
        if (obj_mainchara.y <= 1020)
        {
            global.interact = 1
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E8* Kris^1! Get back here!!/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_270_0")
            d = gml_Script_d_make()
            con = 101
        }
        if (obj_mainchara.x >= 698)
        {
            global.interact = 1
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E4* Nice teamwork!/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_280_0")
            d = gml_Script_d_make()
            con = 11
        }
    }
    if (con == 11 && (!gml_Script_d_ex()))
    {
        if (global.flag[915] > 0)
            gml_Script_scr_sideb_fail()
        with (obj_caterpillarchara)
        {
            x = other.noellePuzzle.x
            y = other.noellePuzzle.y
            other.noellePuzzle.visible = false
            visible = true
            gml_Script_scr_caterpillar_interpolate()
        }
        var _temp_local_var_11 = noellePuzzle
        instance_destroy()
    }
    if (con == 20)
    {
        global.interact = 1
        if (noellePuzzle.x <= 650)
        {
            con = 21
            noellePuzzle.startx = noellePuzzle.x
        }
        if (noellePuzzle.x > 650)
            con = 50
    }
    if (con == 21)
    {
        var _temp_local_var_12 = noellePuzzle
        if (startx > 560)
        {
            if (x > 560)
            {
                x -= 8
                sprite_index = spr_noelle_walk_left_dw
                image_speed = 0.25
            }
            else
            {
                image_speed = 0
                x = 560
                startx = 560
            }
        }
        if (startx < 560)
        {
            if (x < 560)
            {
                x += 4
                sprite_index = spr_noelle_walk_right_dw
                image_speed = 0.25
            }
            else
            {
                image_speed = 0
                x = 560
                startx = 560
            }
        }
        if (x == 560)
        {
            sprite_index = spr_noelle_walk_left_dw
            image_speed = 0
            image_index = 0
            other.con++
        }
    }
    if (con == 22)
    {
        failurecount++
        if (failurecount == 1)
        {
            global.facing = 1
            global.msc = 1161
            gml_Script_scr_text(global.msc)
            d = gml_Script_d_make()
            con = 70
        }
        if (failurecount == 2)
        {
            global.facing = 1
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E8* (This is reminding me of our group projects...)/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_393_0")
            d = gml_Script_d_make()
            con = 70
        }
        if (failurecount > 2)
        {
            global.facing = 1
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E8* .../%", "obj_controller_dw_city_big_2_slash_Step_0_gml_401_0")
            d = gml_Script_d_make()
            con = 70
            if (revengeNoelle == 0)
                revengeNoelle = 1
        }
    }
    if (con == 50)
    {
        var _temp_local_var_13 = noellePuzzle
        move_towards_point(718, 1064, 8)
        image_speed = 0.25
        sprite_index = spr_noelle_cower_right
    }
    if (con == 51)
    {
        if (!gml_Script_i_ex(d))
            con++
    }
    if (con == 52)
    {
        var _temp_local_var_15 = noellePuzzle
        if (x < 758)
            x += 4
        else
            x = 758
    }
    if (con == 53)
    {
        gml_Script_scr_speaker("noelle")
        gml_Script_msgsetloc(0, "\\E8* Alright^1, now it's your turn!/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_471_0")
        d = gml_Script_d_make()
        noelleWaiting = 1
        con++
    }
    if (con == 54)
    {
        if (!gml_Script_i_ex(d))
        {
            global.interact = 0
            con++
        }
    }
    if (con == 55)
    {
        noelleWaiting = 2
        if (obj_mainchara.y <= 1020)
        {
            global.interact = 1
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E8* Kris^1! Get back here!!/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_495_0")
            d = gml_Script_d_make()
            con = 101
        }
        if (obj_mainchara.x >= 590)
            con++
    }
    if (con == 56)
    {
        if gml_Script_i_ex(noellePuzzle)
        {
            if (noellePuzzle.x <= 798)
            {
                _temp_local_var_15.x = (noellePuzzle.x + 12)
                noellePuzzle.image_index = 1
                var _temp_local_var_16 = noellePuzzle
                var _temp_local_var_17 = noellePuzzle
                var _temp_local_var_18 = -9
                var _temp_local_var_19 = noellePuzzle
            }
            else
            {
                var _temp_local_var_38 = noellePuzzle
                x = 798
                sprite_index = spr_noelle_laugh_dw
                image_speed = 0.25
            }
        }
    }
    if (con == 57)
    {
        if (obj_mainchara.x <= 420)
            timer = 61
        if (timer > 60)
        {
            var _temp_local_var_20 = noellePuzzle
            if (x > 760)
                x -= 8
            else
            {
                other.ignoreHardWork = 0
                gml_Script_snd_play(64)
                with (obj_alleySwitch)
                {
                    if (x > 600)
                        toggle = 0
                }
                with (obj_forcefield)
                    instance_destroy()
                x = 758
                image_speed = 0
                image_index = 0
                other.con++
            }
        }
    }
    if (con == 58)
    {
        noelleWaiting = 6
        if (obj_mainchara.y <= 1020)
        {
            global.interact = 1
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E8* Kris^1! Get back here!!/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_563_0")
            d = gml_Script_d_make()
            con = 101
        }
        if (obj_mainchara.x >= 698)
        {
            global.interact = 1
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E8* Fahahaha^1! How'd you like that!?/", "obj_controller_dw_city_big_2_slash_Step_0_gml_572_0")
            gml_Script_msgnextloc("\\E8* You should have seen the look on your face!!/", "obj_controller_dw_city_big_2_slash_Step_0_gml_573_0")
            gml_Script_msgnextloc("\\E2* (Hey^1, why do they look so hurt...? Gosh...)/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_574_0")
            d = gml_Script_d_make()
            con = 11
        }
    }
    if (con == 70)
    {
        if (!gml_Script_i_ex(d))
        {
            global.interact = 0
            con++
        }
    }
    if (con == 71)
    {
        noelleWaiting = 3
        if (obj_mainchara.y <= 1020)
        {
            global.interact = 1
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E8* Kris^1! Get back here!!/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_600_0")
            d = gml_Script_d_make()
            con = 101
        }
        if (toggle == 1)
        {
            noellePuzzle.starty = noellePuzzle.y
            noellePuzzle.startx = noellePuzzle.x
            con = 7
        }
    }
}
if (weirdRoute == 1)
{
    if (con == 1 && global.interact == 0)
    {
        global.flag[7] = 1
        global.interact = 1
        gml_Script_scr_speaker("noelle")
        gml_Script_msgsetloc(0, "\\E1* When you step off the switch^1, the lightning comes back.../", "obj_controller_dw_city_big_2_slash_Step_0_gml_622_0")
        gml_Script_msgnextloc("\\E5* .../", "obj_controller_dw_city_big_2_slash_Step_0_gml_623_0")
        gml_Script_msgnextloc("\\E4* How about..^1. I hold it down^1, and you go across?/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_624_0")
        d = gml_Script_d_make()
        con++
    }
    if (con == 2)
    {
        if (!gml_Script_i_ex(d))
        {
            noellePuzzle = gml_Script_instance_create(obj_caterpillarchara.x, obj_caterpillarchara.y, obj_marker)
            noellePuzzle.image_xscale = 2
            noellePuzzle.image_yscale = 2
            noellePuzzle.sprite_index = obj_caterpillarchara.sprite_index
            noellePuzzle.image_speed = 0
            obj_caterpillarchara.visible = false
            con++
        }
    }
    if (con == 3)
    {
        var _temp_local_var_22 = noellePuzzle
        gml_Script_scr_depth()
        targX = 476
        targY = 1054
        if (x > targX)
            sprite_index = spr_noelle_walk_left_dw
        if (x < targX)
            sprite_index = spr_noelle_walk_right_dw
        if (distance_to_point((targX - (x - bbox_left)), (targY - (y - bbox_top))) > 2.1)
        {
            move_towards_point(targX, targY, 4)
            image_speed = 0.25
        }
        else
        {
            gml_Script_scr_depth()
            sprite_index = spr_noelle_walk_right_dw
            image_index = 0
            hspeed = 0
            vspeed = 0
            speed = 0
            x = targX
            y = targY
            image_speed = 0
            other.con++
        }
    }
    if (con == 4)
    {
        noelleWaitCheck = gml_Script_instance_create(480, 1120, obj_readable_room1)
        noelleWaitCheck.image_xscale = 2
        noelleWaitCheck.image_yscale = 2
        noelleWaitCheck.extflag = "weird"
        global.interact = 0
        con++
    }
    if (con == 5)
    {
        if (obj_mainchara.y <= 1020)
        {
            global.interact = 1
            gml_Script_scr_speaker("no_name")
            gml_Script_msgsetloc(0, "* (Shouldn't leave now.)/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_693_0")
            d = gml_Script_d_make()
            con = 6
        }
        if (obj_mainchara.x >= 666)
        {
            timer = 0
            con = 9
        }
    }
    if (con == 6)
    {
        if (!gml_Script_i_ex(d))
            con++
    }
    if (con == 7)
    {
        obj_mainchara.y = 1022
        global.facing = 0
        global.interact = 0
        if (fakeStep == 0)
            con = 5
        if (fakeStep == 1)
            con = 10
    }
    if (con == 9)
    {
        noellePuzzle.image_speed = 0.25
        if (timer == 15 || bothToggled == 1)
        {
            noellePuzzle.image_speed = 0
            noellePuzzle.image_index = 0
            fakeStep = 1
            if (bothToggled == 1)
            {
                timer = 0
                con = 11
            }
            else
                con++
        }
    }
    if (con == 10)
    {
        if (obj_mainchara.y <= 1020)
        {
            global.interact = 1
            gml_Script_scr_speaker("no_name")
            gml_Script_msgsetloc(0, "* (Shouldn't leave now.)/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_739_0")
            d = gml_Script_d_make()
            con = 6
        }
        if (obj_mainchara.x > 880)
        {
            global.interact = 1
            gml_Script_scr_speaker("no_name")
            gml_Script_msgsetloc(0, "* (Shouldn't leave now.)/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_749_0")
            d = gml_Script_d_make()
            con = 20
        }
        if (bothToggled == 1)
        {
            timer = 0
            con = 11
        }
    }
    if (con == 11)
    {
        if gml_Script_i_ex(noellePuzzle)
            noellePuzzle.sprite_index = spr_noelle_walk_right_dw
        global.interact = 1
        if (timer > 15)
        {
            global.facing = 3
            var _temp_local_var_24 = noelleWaitCheck
            instance_destroy()
        }
    }
    if (con == 12)
    {
        newtargx = (obj_mainchara.x - 80)
        newtargy = (obj_mainchara.y - 18)
        if (timer == 0)
        {
            var _temp_local_var_25 = noellePuzzle
            sprite_index = spr_noelle_walk_right_dw
            image_speed = 0.25
            gml_Script_scr_move_to_point_over_time(other.newtargx, other.newtargy, 32)
        }
        timer++
        if (noellePuzzle.x == newtargx && noellePuzzle.y == newtargy)
        {
            obj_caterpillarchara.x = newtargx
            obj_caterpillarchara.y = newtargy
            obj_caterpillarchara.visible = true
            with (obj_caterpillarchara)
                gml_Script_scr_caterpillar_facing(1)
            with (obj_caterpillarchara)
                gml_Script_scr_caterpillar_interpolate()
            noellePuzzle.visible = false
            con = 13
        }
    }
    if (con == 13)
    {
        gml_Script_scr_speaker("noelle")
        gml_Script_msgsetloc(0, "\\E8* N..^1. Nice teamwork!/%", "obj_controller_dw_city_big_2_slash_Step_0_gml_843_0")
        gml_Script_d_make()
        con = 13.5
    }
    if (con == 13.5 && (!gml_Script_d_ex()))
    {
        global.flag[7] = 0
        global.interact = 0
        con = 13.6
    }
    if (con == 13.6)
    {
        if (obj_mainchara.x > 1000 || obj_mainchara.x < 420)
        {
            global.interact = 1
            global.msc = 1163
            gml_Script_scr_text(global.msc)
            gml_Script_d_make()
            con = 14
        }
    }
    if (con == 14 && (!gml_Script_d_ex()))
    {
        gml_Script_snd_play(196)
        global.flag[915] = 4
        global.interact = 0
        con++
    }
    if (con == 20)
    {
        if (!gml_Script_i_ex(d))
            con++
    }
    if (con == 21)
    {
        obj_mainchara.x = 876
        global.facing = 3
        global.interact = 0
        con = 10
    }
}
if (weird_prompt && (!gml_Script_d_ex()))
{
    weird_prompt = 0
    myinteract = 3
    global.interact = 1
    global.msc = 1193
    gml_Script_scr_text(global.msc)
    gml_Script_d_make()
}
if (myinteract == 3)
{
    if (!gml_Script_d_ex())
    {
        global.interact = 0
        myinteract = 0
        with (obj_mainchara)
            onebuffer = 3
    }
}