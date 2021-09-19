if gml_Script_scr_debug_ch1()
{
    if keyboard_check_pressed(ord("2"))
    {
        if (mergecon == 0 && cno < cmax)
        {
            mergecon = 1
            newcno = (cno + 1)
        }
    }
    if keyboard_check_pressed(ord("0"))
    {
        if (global.interact == 0)
        {
            global.interact = 1
            if (movecon == 0)
                movecon = 1
            if (mergecon == 0 && cno > 0)
                newcno = (cno - 1)
        }
    }
    if keyboard_check_pressed(ord("1"))
    {
        if (movecon == 4)
            movecon = 2
        if (movecon == 0)
        {
            movecon = 3
            if (cno > 0)
                newcno = (cno - 1)
        }
    }
}
if (movecon == 1)
{
    with (obj_mainchara_ch1)
        cutscene = true
    maxrectspeed = 14
    movetimer = 0
    movecon = 2
    doorcon = 2
    charadjustcon = 1
    rectspacing = 120
    shakecon = 1
    rectcon = 1
}
if (movecon == 2)
{
    movetimer += 1
    if (movetimer == 10)
    {
        mergecon = 1
        mergespeed = 0.05
    }
    if (movetimer == 30)
    {
        if (charadjustcon >= 2)
            charadjustcon = 3
        cno = newcno
        doorcon = 1
        shakecon = 3
        rectcon = 3
    }
    if (movetimer >= 40)
    {
        movecon = 0
        if (global.interact == 1)
            global.interact = 0
        charadjustcon = 0
    }
}
if (movecon == 3)
{
    with (obj_mainchara_ch1)
        cutscene = true
    doorcon = 2
    maxrectspeed = 10
    movetimer = 0
    movecon = 4
    rectspacing = 240
    shakecon = 1
    rectcon = 1
}
if (mergecon == 1)
{
    prev_bg_c = bg_c[cno]
    ideal_bg_c = bg_c[newcno]
    if (movecon == 0)
        cno = newcno
    mergecon = 2
    mergetimer = 0
    merge_amt = 0
}
if (mergecon == 2)
{
    merge_amt += mergespeed
    if (merge_amt >= 1)
    {
        merge_amt = 1
        mergecon = 3
    }
    cur_bg_c = merge_color(prev_bg_c, ideal_bg_c, merge_amt)
}
if (mergecon == 3)
    mergecon = 0
if (shakecon == 1)
{
    shakeamt = 0
    shaketimer = 0
    shakecon = 2
}
if (shakecon == 2)
{
    if (abs(gml_Script___view_get(1, 0)) < 4)
        gml_Script___view_set(1, 0, (gml_Script___view_get(1, 0) - (dir * 0.5)))
}
if (shakecon == 3)
{
    gml_Script_snd_play_ch1(446)
    shakeamt = 4
    shakecon = 4
}
if (shakecon == 4)
{
    if (shakeamt >= 0)
    {
        gml_Script___view_set(0, 0, ((0 - random(shakeamt)) + random(shakeamt)))
        gml_Script___view_set(1, 0, ((0 - random(shakeamt)) + random(shakeamt)))
        shakeamt -= 0.5
    }
    else
    {
        gml_Script___view_set(0, 0, 0)
        gml_Script___view_set(1, 0, 0)
        shakecon = 0
    }
}
if (rectcon == 1)
{
    rectcon = 0
    rectspeed = 0
    rect_alpha = 0
    recty = 0
    rectcon = 2
}
if (rectcon == 2)
{
    if (dir == 1)
    {
        if (rectspeed < maxrectspeed)
            rectspeed += 1
    }
    if (dir == -1)
    {
        if (rectspeed > (-maxrectspeed))
            rectspeed -= 1
    }
    if (rect_alpha < 0.2)
        rect_alpha += 0.02
    recty += rectspeed
    if (recty >= rectspacing)
        recty -= rectspacing
    if (recty <= (-rectspacing))
        recty += rectspacing
}
if (rectcon == 3)
{
    if (rectspeed >= 6)
        rectspeed = 6
    if (rectspeed <= -6)
        rectspeed = -6
    if (rectspeed > 0)
        rectspeed -= 0.5
    if (rectspeed < 0)
        rectspeed += 0.5
    if (rect_alpha > 0)
        rect_alpha -= 0.02
    recty += rectspeed
    if (recty >= rectspacing)
        recty -= rectspacing
    if (recty <= (-rectspacing))
        recty += rectspacing
    if (rectspeed == 0 && rect_alpha == 0)
        rectcon = 0
}
if (doorcon == 1)
{
    if (doorx <= 40)
        doorx += 5
}
if (doorcon == 2)
{
    if (doorx >= 0)
        doorx -= 5
    if (doorx <= 0)
    {
        doorx = 0
        doorcon = 0
    }
}
if (charadjustcon == 1)
{
    ccount = 0
    exist[0] = 0
    exist[1] = 0
    charremy[0] = 0
    charremy[1] = 0
    if instance_exists(global.cinstance[0])
    {
        exist[0] = 1
        charremy[0] = global.cinstance[0].y
    }
    if instance_exists(global.cinstance[1])
    {
        exist[1] = 1
        charremy[1] = global.cinstance[1].y
    }
    charadjustcon = 2
}
if (charadjustcon == 2)
{
    for (i = 0; i < 2; i += 1)
    {
        if (exist[i] == 1)
        {
            var _temp_local_var_4 = global.cinstance[i]
            if (y >= 260)
                y -= 10
        }
    }
}
if (charadjustcon == 3)
{
    ok[0] = 0
    ok[1] = 0
    for (i = 0; i < 2; i += 1)
    {
        if (exist[i] == 1)
        {
            if (global.cinstance[i].y < charremy[i])
            {
                var _temp_local_var_5 = global.cinstance[i]
                y += 10
            }
            if (global.cinstance[i].y >= charremy[i])
                ok[i] = 1
        }
        else
            ok[i] = 1
    }
    if (ok[0] == 1 && ok[1] == 1)
        charadjustcon = 0
}
if (con >= 1)
{
    if (con == 1)
    {
        with (obj_caterpillarchara_ch1)
            instance_destroy()
        with (obj_mainchara_ch1)
            visible = false
        global.interact = 1
        k = gml_Script_scr_dark_marker_ch1(300, 420, 4198)
        s = gml_Script_scr_dark_marker_ch1(300, 460, 3551)
        r = gml_Script_scr_dark_marker_ch1(300, 500, 3567)
        cc[0] = k
        cc[1] = s
        cc[2] = r
        i = 0
        while (i < 3)
        {
            var _temp_local_var_7 = cc[i]
            gml_Script_scr_depth_ch1()
            vspeed = -4
            image_speed = 0.25
        }
        con = 2
    }
    if (con == 2)
    {
        global.interact = 1
        if (k.y <= 200)
        {
            var _temp_local_var_8 = k
            gml_Script_scr_halt_ch1()
            sprite_index = spr_krisd_dark_ch1
        }
        if (s.y <= 200 && s.x == s.xstart)
        {
            var _temp_local_var_10 = s
            gml_Script_scr_halt_ch1()
            x -= 1
            hspeed = -4
            image_speed = 0.25
            sprite_index = spr_susiel_dark_ch1
        }
        if (s.x <= 240)
        {
            var _temp_local_var_11 = s
            gml_Script_scr_halt_ch1()
            x = 240
            sprite_index = spr_susier_dark_ch1
        }
        if (r.y <= 275 && r.x == r.xstart)
        {
            jup = 1
            var _temp_local_var_13 = r
            hspeed = 1.25
            vspeed = -2.25
        }
        if (jup == 1)
            a_timer += 1
        if (a_timer >= 48)
        {
            var _temp_local_var_14 = r
            gml_Script_scr_halt_ch1()
        }
    }
    if (con == 3)
    {
        var _temp_local_var_15 = k
        gml_Script_scr_halt_ch1()
    }
    if (con == 5)
    {
        var _temp_local_var_18 = r
        sprite_index = spr_ralseid_ch1
    }
    if (con == 6 && (!gml_Script_d_ex_ch1()))
    {
        ele_noise = gml_Script_snd_init_ch1("elevator.ogg")
        ele_noise_ind = gml_Script_mus_loop_ext_ch1(ele_noise, 0.6, 0.1)
        var _temp_local_var_20 = r
        sprite_index = spr_ralseiu_ch1
    }
    if (con == 7)
    {
        pitchcount += 0.015
        gml_Script_snd_pitch_ch1(ele_noise_ind, pitchcount)
    }
    if (con == 8)
    {
        var _temp_local_var_21 = r
        sprite_index = spr_ralseid_ch1
    }
    if (con == 9 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_23 = r
        vspeed = 2
        image_speed = 0.2
    }
    if (con == 11)
    {
        var _temp_local_var_24 = r
        gml_Script_scr_halt_ch1()
    }
    if (con == 13)
    {
        var _temp_local_var_26 = r
        image_speed = 0
        image_index = 2
    }
    if (con == 16)
    {
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_419_0")
        con = 17
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 17 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_28 = s
        hspeed = -4
        image_speed = 0.2
    }
    if (con == 19)
    {
        var _temp_local_var_30 = s
        gml_Script_scr_halt_ch1()
        sprite_index = spr_susier_wall_ch1
    }
    if (con == 21)
    {
        global.fc = 1
        global.typer = 30
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_448_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_449_0")
        gml_Script_scr_ralface_ch1(2, "B")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_451_0")
        gml_Script_scr_susface_ch1(4, 0)
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_453_0")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_454_0")
        gml_Script_scr_ralface_ch1(7, "B")
        global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_456_0")
        gml_Script_scr_susface_ch1(9, 7)
        global.msg[10] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_458_0")
        global.msg[11] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_459_0")
        global.msg[12] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_460_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 22
    }
    if (con == 22 && (!gml_Script_d_ex_ch1()))
    {
        con = 23
        alarm[4] = 90
    }
    if (con == 24)
    {
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_476_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_477_0")
        gml_Script_scr_ralface_ch1(2, 3)
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_479_0")
        gml_Script_scr_susface_ch1(4, 6)
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_481_0")
        gml_Script_scr_ralface_ch1(6, 6)
        global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_483_0")
        global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_484_0")
        global.msg[9] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_485_0")
        gml_Script_scr_susface_ch1(10, 0)
        global.msg[11] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_487_0")
        global.msg[12] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_488_0")
        con = 25
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 25 && (!gml_Script_d_ex_ch1()))
    {
        con = 26
        alarm[4] = 90
    }
    if (con == 27)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_503_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_504_0")
        gml_Script_scr_ralface_ch1(2, 0)
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_506_0")
        gml_Script_scr_susface_ch1(4, 0)
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_508_0")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_509_0")
        gml_Script_scr_ralface_ch1(7, 6)
        global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_511_0")
        gml_Script_scr_susface_ch1(9, 0)
        global.msg[10] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_513_0")
        global.msg[11] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_514_0")
        gml_Script_scr_ralface_ch1(12, 8)
        global.msg[13] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_516_0")
        gml_Script_scr_susface_ch1(14, 2)
        global.msg[15] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_518_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 28
    }
    if (con == 28 && (!gml_Script_d_ex_ch1()))
    {
        con = 29
        alarm[4] = 45
    }
    if (con == 30)
    {
        movecon = 2
        con = 31
        gml_Script_snd_volume_ch1(ele_noise_ind, 0, 60)
        alarm[4] = 60
    }
    if (con == 31)
    {
        if (pitchcount > 0.1)
            pitchcount -= 0.015
        gml_Script_snd_pitch_ch1(ele_noise_ind, pitchcount)
        global.interact = 1
    }
    if (con == 32)
    {
        gml_Script_snd_free_ch1(ele_noise)
        var _temp_local_var_34 = r
        image_speed = -0.25
    }
    if (con == 34)
    {
        var _temp_local_var_35 = r
        sprite_index = spr_ralseid_ch1
        image_index = 0
        vspeed = 4
        image_speed = 0.25
    }
    if (con == 35)
    {
        if (r.y >= 270)
        {
            var _temp_local_var_36 = r
            vspeed = 0
            hspeed = -6
            sprite_index = spr_ralseil_ch1
        }
    }
    if (con == 36)
    {
        if (r.x <= 300)
        {
            var _temp_local_var_37 = r
            gml_Script_scr_halt_ch1()
            sprite_index = spr_ralseiu_ch1
        }
    }
    if (con == 38)
    {
        global.fc = 2
        global.typer = 31
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_605_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 0
        con = 39
    }
    if (con == 39 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_39 = r
        sprite_index = spr_ralseid_ch1
        vspeed = 4
        image_speed = 0.25
    }
    if (con == 40)
    {
        if (obj_mainchara_ch1.x != kremx || obj_mainchara_ch1.y != kremy)
            movecounter += 1
        if (movecounter >= 3)
        {
            con = 41
            global.interact = 1
            global.fc = 1
            global.typer = 30
            global.fe = 0
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_644_0")
            gml_Script_instance_create_ch1(0, 0, 1326)
        }
    }
    if (con == 41 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_43 = s
        sprite_index = spr_susier_dark_unhappy_ch1
        image_speed = 0.1
        hspeed = 2
    }
    if (con == 44)
    {
        var _temp_local_var_44 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 46)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_674_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_675_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_676_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_677_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 47
    }
    if (con == 47 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_46 = s
        sprite_index = spr_susieu_dark_ch1
    }
    if (con == 49)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_691_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 50
    }
    if (con == 50 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_48 = s
        sprite_index = spr_susiel_dark_unhappy_ch1
    }
    if (con == 52)
    {
        var _temp_local_var_49 = s
        sprite_index = spr_susier_dark_ch1
    }
    if (con == 53 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_51 = s
        sprite_index = spr_susied_dark_ch1
        vspeed = 4
        image_speed = 0.25
    }
    if (con == 54)
    {
        if (s.y >= 260)
        {
            global.facing = 0
            var _temp_local_var_52 = s
            gml_Script_scr_halt_ch1()
            hspeed = 4
            sprite_index = spr_susier_dark_ch1
            image_speed = 0.25
        }
    }
    if (con == 55)
    {
        if (s.x >= 300)
        {
            var _temp_local_var_53 = s
            gml_Script_scr_halt_ch1()
            vspeed = 3
            sprite_index = spr_susied_dark_unhappy_ch1
            image_speed = 0.125
        }
    }
    if (con == 56)
    {
        gml_Script_snd_free_all_ch1()
        if (s.y >= 320)
        {
            var _temp_local_var_54 = s
            gml_Script_scr_halt_ch1()
        }
    }
    if (con == 58)
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("charjoined.ogg")
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_774_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_775_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 0
        con = 59
    }
    if (con == 59 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_56 = s
        vspeed = 6
        image_speed = 0.25
    }
    if (con == 61)
    {
        global.currentsong[1] = gml_Script_mus_play_ch1(global.currentsong[0])
        gml_Script_snd_volume_ch1(global.currentsong[1], 0.8, 0)
        global.typer = 6
        global.fc = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_elevatorcontroller_slash_Step_0_gml_798_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 0
        con = 62
        alarm[4] = 110
    }
    if (con == 63)
    {
        if (global.plot < 165)
            global.plot = 165
        with (obj_dialoguer_ch1)
            instance_destroy()
        with (obj_writer_ch1)
            instance_destroy()
        gml_Script_snd_free_all_ch1()
        global.interact = 0
        global.flag[239] = 1
        con = 64
    }
    if (con == 100)
    {
        global.interact = 1
        if (movecon == 0)
            movecon = 1
        con = 101
        gml_Script_snd_play_ch1(363)
        ele_noise = gml_Script_snd_init_ch1("elevator.ogg")
        ele_noise_ind = gml_Script_mus_loop_ext_ch1(ele_noise, 0.7, 0.5)
        pitchcount = 0.5
        volcount = 0.7
        pitchtimer = 0
        alarm[4] = 40
    }
    if (con == 101)
    {
        global.interact = 1
        pitchtimer += 1
        if (pitchtimer < 10)
            pitchcount += 0.04
        if (pitchtimer >= 30)
        {
            if (pitchcount > 0)
                pitchcount -= 0.08
            volcount -= 0.05
        }
        gml_Script_snd_pitch_ch1(ele_noise_ind, pitchcount)
        gml_Script_snd_volume_ch1(ele_noise_ind, volcount, 0)
    }
    if (con == 102)
    {
        gml_Script_snd_free_ch1(ele_noise)
        con = 0
        global.flag[239] = cno
        global.interact = 0
        global.facing = 0
    }
}
