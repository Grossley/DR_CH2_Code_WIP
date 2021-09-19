if (global.flag[362] == 0)
{
    if (obj_mainchara.x < 280 && con == -1)
    {
        con = 1
        timer = 0
        alarm[0] = 15
        global.interact = 1
        gml_Script_snd_play(176)
        var _temp_local_var_2 = mouse_a
        gml_Script_scr_emote("!", 20)
        gml_Script_scr_flip("x")
    }
    if (con == 2)
    {
        timer++
        if (timer < 30)
        {
            cx = 90
            cy = 200
            turnspeed = 40
            radius = 40
            lerpspeed = 0.125
            mouse_b.x = lerp(mouse_b.x, (cx + (sin((30 / turnspeed)) * 40)), lerpspeed)
            mouse_b.y = lerp(mouse_b.y, (cy + (cos((30 / turnspeed)) * 40)), lerpspeed)
            mouse_a.x = lerp(mouse_a.x, (cx + (sin((2.0943951023931953 + (30 / turnspeed))) * 40)), lerpspeed)
            mouse_a.y = lerp(mouse_a.y, (cy + (cos((2.0943951023931953 + (30 / turnspeed))) * 40)), lerpspeed)
            mouse_c.x = lerp(mouse_c.x, (cx + (sin((4.1887902047863905 + (30 / turnspeed))) * 40)), lerpspeed)
            mouse_c.y = lerp(mouse_c.y, (cy + (cos((4.1887902047863905 + (30 / turnspeed))) * 40)), lerpspeed)
        }
        if (timer >= 30)
        {
            if (turnspeed > 3)
                turnspeed = lerp(turnspeed, 3, 0.1)
            if (turnspeed < 10)
            {
                var _temp_local_var_5 = mouse_a
                gml_Script_scr_afterimage()
            }
            if (turnspeed < 6)
            {
                if (radius > 1)
                    radius = lerp(radius, 0, 0.25)
                else
                {
                    radius = 0
                    gml_Script_snd_play(225)
                    con = 2.1
                }
            }
            if (radius < 10)
            {
                if (whiteall.image_alpha == 0)
                    whiteall.image_alpha = 0.03
                _temp_local_var_7.image_alpha = (whiteall.image_alpha * 1.2)
                var _temp_local_var_8 = 
                var _temp_local_var_9 = mouse_a
                var _temp_local_var_10 = -9
                var _temp_local_var_11 = whiteall
            }
            mouse_a.x = (cx + (sin((timer / turnspeed)) * radius))
            mouse_a.y = (cy + (cos((timer / turnspeed)) * radius))
            mouse_b.x = (cx + (sin((2.0943951023931953 + (timer / turnspeed))) * radius))
            mouse_b.y = (cy + (cos((2.0943951023931953 + (timer / turnspeed))) * radius))
            mouse_c.x = (cx + (sin((4.1887902047863905 + (timer / turnspeed))) * radius))
            mouse_c.y = (cy + (cos((4.1887902047863905 + (timer / turnspeed))) * radius))
        }
    }
    if (con == 2.1)
    {
        _temp_local_var_8.image_alpha = (whiteall.image_alpha * 1.2)
        var _temp_local_var_12 = mouse_a
        var _temp_local_var_13 = -9
        var _temp_local_var_14 = -9
        var _temp_local_var_15 = whiteall
        if (whiteall.image_alpha >= 1)
        {
            timer = 0
            con = 2.2
        }
    }
    if (con == 2.2)
    {
        if (timer == 0)
        {
            var _temp_local_var_16 = mouse_a
            visible = false
        }
        timer++
        if (timer > 15)
        {
            _temp_local_var_21.image_alpha = (whiteall.image_alpha * 0.9)
            var _temp_local_var_22 = 
            var _temp_local_var_23 = 
            var _temp_local_var_24 = -9
            var _temp_local_var_25 = whiteall
        }
        if (whiteall.image_alpha <= 0.01)
        {
            var _temp_local_var_26 = whiteall
            instance_destroy()
            other.con = 3
        }
    }
    if (con == 3)
    {
        con = 4
        alarm[0] = 15
    }
    if (con == 5)
    {
        con = 9
        alarm[0] = 30
        encounterflag = 543
        global.flag[54] = encounterflag
        global.flag[9] = 2
        gml_Script_scr_battle(83, 0, mauswheel, 0, 0)
    }
    if (con == 10 && (!gml_Script_i_ex(355)))
    {
        global.flag[362] = 1
        global.flag[9] = 0
        gml_Script_scr_tempsave()
        var _temp_local_var_28 = swatchling_npc_a
        sprite_index = spr_npc_swatchling_down
    }
}
