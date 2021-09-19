var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_12, _temp_local_var_13, _temp_local_var_29, _temp_local_var_31, _temp_local_var_33, _temp_local_var_35, _temp_local_var_37;
gml_Script_scr_depth()
wallcheck = 0
nowx = x
nowy = y
if (press_d == 0 && press_l == 0 && press_u == 0 && press_r == 0)
    nopress = 1
press_l = 0
press_r = 0
press_d = 0
press_u = 0
bkx = 0
bky = 0
bkxy = 0
jelly = 2
if (!roomenterfreezeend)
{
    if (global.interact == 3)
    {
        if (global.flag[21] > 0)
        {
            obj_debug_ballooner.flag[global.flag[obj_debug_ballooner]] = (global.flag[obj_debug_ballooner] - 1)
            global
        }
        else
        {
            roomenterfreezeend = 1
            global.interact = 0
            global.flag[21] = -10
        }
    }
}
if (global.interact == 0)
{
    if (gml_Script_button3_p() && threebuffer < 0)
    {
        if (global.flag[7] == 0 && battlemode == 0 && swordmode == 0)
        {
            with (obj_darkcontroller)
                threebuffer = 2
            with (obj_overworldc)
            {
                movenoise = true
                threebuffer = 2
            }
            global.menuno = 0
            global.interact = 5
            threebuffer = 2
            twobuffer = 2
        }
    }
}
if (swordcon == 1)
{
    swordtimer++
    if (swordtimer >= 15)
    {
        var _temp_local_var_4 = slashmarker
        instance_destroy()
    }
}
if (global.interact == 0)
{
    if (global.flag[11] == 1)
    {
        if (gml_Script_button2_h() && twobuffer < 0)
            run = 0
        else
            run = 1
    }
    else if (gml_Script_button2_h() && twobuffer < 0)
        run = 1
    else
        run = 0
    if (autorun > 0)
    {
        if (autorun == 1)
        {
            run = 1
            runtimer = 200
        }
        if (autorun == 2)
        {
            run = 1
            runtimer = 50
        }
    }
    if (run == 1)
    {
        if (darkmode == false)
        {
            wspeed = (bwspeed + 1)
            if (runtimer > 10)
                wspeed = (bwspeed + 2)
            if (runtimer > 60)
                wspeed = (bwspeed + 3)
        }
        if (darkmode == true)
        {
            wspeed = (bwspeed + 2)
            if (runtimer > 10)
                wspeed = (bwspeed + 4)
            if (runtimer > 60)
                wspeed = (bwspeed + 5)
        }
    }
    if (run == 0)
        wspeed = bwspeed
    if gml_Script_left_h()
        press_l = 1
    if gml_Script_right_h()
        press_r = 1
    if gml_Script_up_h()
        press_u = 1
    if gml_Script_down_h()
        press_d = 1
    px = 0
    py = 0
    pressdir = -1
    if (press_r == 1)
    {
        px = wspeed
        pressdir = 1
    }
    if (press_l == 1)
    {
        px = (-wspeed)
        pressdir = 3
    }
    if (press_d == 1)
    {
        py = wspeed
        pressdir = 0
    }
    if (press_u == 1)
    {
        py = (-wspeed)
        pressdir = 2
    }
    if (nopress == 1 && pressdir != -1)
        global.facing = pressdir
    if (global.facing == 2)
    {
        if (press_d == 1)
            global.facing = 0
        if (press_u == 0 && pressdir != -1)
            global.facing = pressdir
    }
    if (global.facing == 0)
    {
        if (press_u == 1)
            global.facing = 2
        if (press_d == 0 && pressdir != -1)
            global.facing = pressdir
    }
    if (global.facing == 3)
    {
        if (press_r == 1)
            global.facing = 1
        if (press_l == 0 && pressdir != -1)
            global.facing = pressdir
    }
    if (global.facing == 1)
    {
        if (press_l == 1)
            global.facing = 3
        if (press_r == 0 && pressdir != -1)
            global.facing = pressdir
    }
    if (press_r == 1)
        swordfacing = 1
    if (press_l == 1)
        swordfacing = -1
    if (swordmode == 1)
    {
        if (gml_Script_button1_p() && swordcon == 0 && global.interact == 0)
        {
            global.interact = 4
            swordsprite = rsprite
            slashmarker = gml_Script_scr_dark_marker(x, y, rsprite)
            slashmarker.depth = depth
            slashmarker.image_speed = 1
            if (swordfacing == -1)
            {
                _temp_local_var_4.x = (slashmarker.x + sprite_width)
                slashmarker.image_xscale = (-image_xscale)
                var _temp_local_var_12 = -9
                var _temp_local_var_13 = slashmarker
            }
            image_alpha = 0
            fun = true
            gml_Script_snd_play(174)
            image_index = 0
            image_speed = 0.5
            swordtimer = 0
            swordcon = 1
            press_l = 0
            press_r = 0
            press_u = 0
            press_d = 0
            swordhitbox = gml_Script_instance_create(slashmarker.x, slashmarker.y, obj_swordhitbox)
            swordhitbox.image_xscale = slashmarker.image_xscale
            swordhitbox.image_yscale = image_yscale
        }
    }
    nopress = 0
    xmeet = 0
    ymeet = 0
    xymeet = 0
    if place_meeting((x + px), (y + py), obj_solidblock)
        xymeet = 1
    if place_meeting((x + px), y, obj_solidblock)
    {
        if place_meeting((x + px), y, obj_solidblock)
        {
            g = wspeed
            while (g > 0)
            {
                mvd = 0
                if (press_d == 0 && (!place_meeting((x + px), (y - g), obj_solidblock)))
                {
                    y -= g
                    py = 0
                    break
                }
                else if (press_u == 0 && mvd == 0 && (!place_meeting((x + px), (y + g), obj_solidblock)))
                {
                    y += g
                    py = 0
                    break
                }
                else
                {
                    g -= 1
                    continue
                }
            }
        }
        xmeet = 1
        bkx = 0
        if (px > 0)
        {
            i = px
            while (i >= 0)
            {
                if (!place_meeting((x + i), y, obj_solidblock))
                {
                    px = i
                    bkx = 1
                    break
                }
                else
                {
                    i -= 1
                    continue
                }
            }
        }
        if (px < 0)
        {
            i = px
            while (i <= 0)
            {
                if (!place_meeting((x + i), y, obj_solidblock))
                {
                    px = i
                    bkx = 1
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
        }
        if (bkx == 0)
            px = 0
    }
    if place_meeting(x, (y + py), obj_solidblock)
    {
        ymeet = 1
        bky = 0
        if place_meeting(x, (y + py), obj_solidblock)
        {
            g = wspeed
            while (g > 0)
            {
                mvd = 0
                if (press_r == 0 && (!place_meeting((x - g), (y + py), obj_solidblock)))
                {
                    x -= g
                    px = 0
                    break
                }
                else if (mvd == 0 && press_l == 0 && (!place_meeting((x + g), (y + py), obj_solidblock)))
                {
                    x += g
                    px = 0
                    break
                }
                else
                {
                    g -= 1
                    continue
                }
            }
        }
        if (py > 0)
        {
            i = py
            while (i >= 0)
            {
                if (!place_meeting(x, (y + i), obj_solidblock))
                {
                    py = i
                    bky = 1
                    break
                }
                else
                {
                    i -= 1
                    continue
                }
            }
        }
        if (py < 0)
        {
            i = py
            while (i <= 0)
            {
                if (!place_meeting(x, (y + i), obj_solidblock))
                {
                    py = i
                    bky = 1
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
        }
        if (bky == 0)
            py = 0
    }
    if place_meeting((x + px), (y + py), obj_solidblock)
    {
        xymeet = 1
        bkxy = 0
        i = px
        j = py
        while (j != 0 || i != 0)
        {
            if (!place_meeting((x + i), (y + j), obj_solidblock))
            {
                px = i
                py = j
                bkxy = 1
            }
            else
            {
                if (abs(j) >= 1)
                {
                    if (j > 0)
                        j -= 1
                    if (j < 0)
                        j += 1
                }
                else
                    j = 0
                if (abs(i) >= 1)
                {
                    if (i > 0)
                        i -= 1
                    if (i < 0)
                        i += 1
                }
                else
                    i = 0
                continue
            }
        }
        if (bkxy == 0)
        {
            px = 0
            py = 0
        }
    }
    runmove = false
    if (run == 1 && xmeet == 0 && ymeet == 0 && xymeet == 0)
    {
        if (abs(px) > 0 || abs(py) > 0)
        {
            runmove = true
            runtimer += 1
            runcounter += 1
        }
        else
            runtimer = 0
    }
    else
        runtimer = 0
    x += px
    y += py
}
if (fun == false)
{
    walk = false
    if (x != nowx && nopress == 0)
        walk = true
    if (y != nowy && nopress == 0)
        walk = true
    if (walk == true)
        walkbuffer = 6
    if (walkbuffer > 3 && fun == false)
    {
        walktimer += 1.5
        if (runmove == true)
            walktimer += 1.5
        if (walktimer >= 40)
            walktimer -= 40
        if (walktimer < 10)
            image_index = 0
        if (walktimer >= 10)
            image_index = 1
        if (walktimer >= 20)
            image_index = 2
        if (walktimer >= 30)
            image_index = 3
    }
    if (walkbuffer <= 0 && fun == false)
    {
        if (walktimer < 10)
            walktimer = 9.5
        if (walktimer >= 10 && walktimer < 20)
            walktimer = 19.5
        if (walktimer >= 20 && walktimer < 30)
            walktimer = 29.5
        if (walktimer >= 30)
            walktimer = 39.5
        image_index = 0
    }
    walkbuffer -= 0.75
}
if (fun == false)
{
    if (global.facing == 0)
        sprite_index = dsprite
    if (global.facing == 1)
        sprite_index = rsprite
    if (global.facing == 2)
        sprite_index = usprite
    if (global.facing == 3)
        sprite_index = lsprite
}
if (stepping == 1 && fun == false)
{
    if (image_index == 1 && stepped == false)
    {
        if (global.flag[31] == 0)
            gml_Script_snd_play(190)
        stepped = true
    }
    if (image_index == 0 || image_index == 2)
        stepped = false
    if (image_index == 3 && stepped == false)
    {
        stepped = true
        if (global.flag[31] == 0)
            gml_Script_snd_play(191)
    }
}
if (onebuffer < 0)
{
    if (global.interact == 0)
    {
        if gml_Script_button1_p()
        {
            thisinteract = 0
            d = (global.darkzone + 1)
            if (global.facing == 1)
            {
                if collision_rectangle((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), ((x + sprite_width) + (13 * d)), (y + sprite_height), obj_interactable, 0, 1)
                    thisinteract = 1
                if collision_rectangle((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), ((x + sprite_width) + (13 * d)), (y + sprite_height), obj_interactablesolid, 0, 1)
                    thisinteract = 2
            }
            if (thisinteract > 0)
            {
                if (thisinteract == 1)
                    interactedobject = collision_rectangle((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), ((x + sprite_width) + (13 * d)), (y + sprite_height), obj_interactable, 0, 1)
                if (thisinteract == 2)
                    interactedobject = collision_rectangle((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), ((x + sprite_width) + (13 * d)), (y + sprite_height), obj_interactablesolid, 0, 1)
                if (interactedobject != -4)
                {
                    var _temp_local_var_29 = interactedobject
                    facing = 3
                }
            }
            thisinteract = 0
            if (global.facing == 3)
            {
                if collision_rectangle((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), (x - (13 * d)), (y + sprite_height), obj_interactable, 0, 1)
                    thisinteract = 1
                if collision_rectangle((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), (x - (13 * d)), (y + sprite_height), obj_interactablesolid, 0, 1)
                    thisinteract = 2
            }
            if (thisinteract > 0)
            {
                if (thisinteract == 1)
                    interactedobject = collision_rectangle((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), (x - (13 * d)), (y + sprite_height), obj_interactable, 0, 1)
                if (thisinteract == 2)
                    interactedobject = collision_rectangle((x + (sprite_width / 2)), ((y + (6 * d)) + (sprite_height / 2)), (x - (13 * d)), (y + sprite_height), obj_interactablesolid, 0, 1)
                if (interactedobject != -4)
                {
                    var _temp_local_var_31 = interactedobject
                    facing = 1
                }
            }
            thisinteract = 0
            if (global.facing == 0)
            {
                if collision_rectangle((x + (4 * d)), (y + (28 * d)), ((x + sprite_width) - (4 * d)), ((y + sprite_height) + (15 * d)), obj_interactable, 0, 1)
                    thisinteract = 1
                if collision_rectangle((x + (4 * d)), (y + (28 * d)), ((x + sprite_width) - (4 * d)), ((y + sprite_height) + (15 * d)), obj_interactablesolid, 0, 1)
                    thisinteract = 2
            }
            if (thisinteract > 0)
            {
                if (thisinteract == 1)
                    interactedobject = collision_rectangle((x + (4 * d)), (y + (28 * d)), ((x + sprite_width) - (4 * d)), ((y + sprite_height) + (15 * d)), obj_interactable, 0, 1)
                if (thisinteract == 2)
                    interactedobject = collision_rectangle((x + (4 * d)), (y + (28 * d)), ((x + sprite_width) - (4 * d)), ((y + sprite_height) + (15 * d)), obj_interactablesolid, 0, 1)
                if (interactedobject != -4)
                {
                    var _temp_local_var_33 = interactedobject
                    facing = 2
                }
            }
            thisinteract = 0
            if (global.facing == 2)
            {
                if collision_rectangle((x + 3), ((y + sprite_height) - (5 * d)), ((x + sprite_width) - (5 * d)), (y + (5 * d)), obj_interactable, 0, 1)
                    thisinteract = 1
                if collision_rectangle((x + 3), ((y + sprite_height) - (5 * d)), ((x + sprite_width) - (5 * d)), (y + (5 * d)), obj_interactablesolid, 0, 1)
                    thisinteract = 2
            }
            if (thisinteract > 0)
            {
                if (thisinteract == 1)
                    interactedobject = collision_rectangle((x + (3 * d)), ((y + sprite_height) - (5 * d)), ((x + sprite_width) - (5 * d)), (y + (5 * d)), obj_interactable, 0, 1)
                if (thisinteract == 2)
                    interactedobject = collision_rectangle((x + (3 * d)), ((y + sprite_height) - (5 * d)), ((x + sprite_width) - (5 * d)), (y + (5 * d)), obj_interactablesolid, 0, 1)
                if (interactedobject != -4)
                {
                    var _temp_local_var_35 = interactedobject
                    facing = 0
                }
            }
        }
    }
}
onebuffer -= 1
twobuffer -= 1
threebuffer -= 1
var _temp_local_var_37 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_doorparent, 0, 0)
event_user(9)
