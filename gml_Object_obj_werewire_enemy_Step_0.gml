var _temp_local_var_1, _temp_local_var_7, _temp_local_var_12, _temp_local_var_15;
if (global.monster[myself] == true)
{
    if (global.monsterstatus[myself] == false)
        myself
    if ("enemytalk" && talked == 0 && talkwait != 1)
    {
        // WARNING: Popz'd an empty stack.
        if (!361)
            gml_Script_instance_create(0, 0, obj_darkener)
        gml_Script_instance_create((x - 102), (y + 18), obj_werewire_zzt_balloon)
        219
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && "enemytalk")
    {
        rtimer = 0
        if ((!talkwait) && (!478) && (!62) && global.mnfight == 1)
            global.mnfight = 2
        if "bullets"
        {
            if (!869)
            {
                if 1
                    gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
                else
                {
                    battlebox = gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 240), obj_growtangle)
                    battlebox.maxyscale = 1.33
                }
            }
            if (!377)
                // WARNING: Popz'd an empty stack.
        }
    }
    if ("bullets" && attacked == false)
    {
        rtimer += 1
        if (rtimer == 15)
        {
            rr = (1 ? choose(0, 1) : 3)
            if (rr == 0 || rr == 1)
            {
                if (!483)
                    210
                shootcon = 0
                shootmode = 1
                shoottimer = 0
                var _temp_local_var_7 = object_index
                shootwait = ((random(5) + (initid * 30)) - 30)
            }
            else if (rr == 3)
            {
                global.turntimer = 170
                hangsparktimer = 0
                shootmode = 2
                xmovement_finished = 0
                targetx = (gml_Script___view_get(0, 0) + 260)
                hangvspeed = 0
                hanghspeed = 0
                hangcon = 1
                hangsiner = 0
                sprite_index = spr_werewire_hang
            }
            turns += 1
            global.typer = 6
            global.fc = 0
            if (global.mercymod[myself] >= global.mercymax[myself])
                global.battlemsg[0] = gml_Script_stringsetloc("* Werewire's wire is loose!", "obj_werewire_enemy_slash_Step_0_gml_98_0")
            else
            {
                rr = choose(0, 1, 2, 3, 4)
                if (rr == 0)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Werewire crackles incomprehensibly.", "obj_werewire_enemy_slash_Step_0_gml_102_0")
                if (rr == 1)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Werewire shuffles menacingly.", "obj_werewire_enemy_slash_Step_0_gml_103_0")
                if (rr == 2)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Werewire dusts sparks off its shoulders.", "obj_werewire_enemy_slash_Step_0_gml_104_0")
                if (rr == 3)
                    global.battlemsg[0] = gml_Script_stringsetloc("* The atmosphere is electric.", "obj_werewire_enemy_slash_Step_0_gml_105_0")
                if (rr == 4)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Smells like ozone.", "obj_werewire_enemy_slash_Step_0_gml_106_0")
            }
            attacked = true
            var attackcheck = 0
            var misscheck = 0
            for (var i = 0; i < 3; i++)
            {
                if (global.charaction[i] == 1)
                    attackcheck = 1
            }
            if (attackcheck == 1)
            {
                for (i = 0; i < 3; i++)
                {
                    if (global.monsterhp[i] == global.monstermaxhp[i] && global.monster[i] == true)
                        misscheck++
                }
            }
            if misscheck
                global.battlemsg[0] = gml_Script_stringsetsubloc("* Try timing your attacks by pressing ~1!", gml_Script_scr_get_input_name(4), "obj_werewire_enemy_slash_Step_0_gml_122_0")
        }
        else if (!483)
            60
    }
    if (shootcon == 0 && shootmode == 1)
    {
        if (global.turntimer >= 10)
            shootwait--
        if (shootwait <= 0 && global.turntimer >= 40)
        {
            shootwait = (((werewire_count * 6) + random(7)) * werewire_count)
            if (easymode == 1)
                shootwait = (((werewire_count * 10) + random(4)) * werewire_count)
            if (werewire_count == 3)
                shootwait = (((werewire_count * 5) + random(7)) * werewire_count)
            if (werewerewire == 1)
                shootwait = 0
            if ("Chirashi" > 0)
                shootwait += (10 * werewire_count)
            shootcon = 1
            shoottimer = 0
        }
        else if (global.turntimer < 40)
            shootmode = 0
    }
    if (shootcon == 1)
    {
        // WARNING: Popz'd an empty stack.
        damage = global.monsterat[myself]
        shootcon = choose(2, 20)
        sprite_index = spr_werewire_attack_2
        if (shootcon == 20)
            sprite_index = spr_werewire_attack_1
        image_index = 0
        image_speed = 0
        siner = 0
        siner_timer = 0
        stop_anim = 1
        anim_timer_2 = 0
        shootcount = 0
    }
    if (shootcon == 2)
    {
        anim_add = 0.25
        if (werewerewire == 1)
            anim_add = 0.5
        if (image_index < 3)
            image_index += (anim_add * m)
        if (image_index >= 3)
        {
            shootcon = 3
            shoottimer = 0
            shootcount = 0
        }
    }
    if (shootcon == 3)
    {
        shoottimer -= 1
        if (shoottimer <= 0)
        {
            gml_Script_snd_play_x(219, 1, 1.5)
            i = 0
            while (i < 3)
            {
                lasercircle = gml_Script_instance_create((x - 52), (y + 18), obj_werewire_bullet_lasercircle)
                lasercircle.damage = (global.monsterat[myself] * 5)
                lasercircle.target = mytarget
                lasercircle.grazepoints = 1
                if 628
                    laser_angle = ((point_direction(lasercircle.x, lasercircle.y, (obj_heart.x + 8), (obj_heart.y + 8)) - 2) + random(4))
                else
                    laser_angle += (-2 + random(4))
                lasercircle.my_angle = ((laser_angle - 5) + (5 * i))
                lasercircle.my_angle_change = (((-1 + i) * 0.8) * m)
                var _temp_local_var_12 = lasercircle
                my_speed = 4
                my_accel = 0.2
                my_length = 4
            }
            shoottimer = (10 / m)
            shootcount += 1
        }
        if (shootcount >= 3)
        {
            shootcon = 4
            shootimer = 0
        }
    }
    if (shootcon == 4)
    {
        shoottimer += 1
        threshold = 10
        if (werewerewire == 1)
            threshold = 2
        if (shoottimer >= (threshold / m))
        {
            image_index += (0.25 * m)
            if (image_index >= 9)
            {
                shootcon = 0
                image_index = 0
                sprite_index = spr_werewire_idle
                image_speed = 0.16
                stop_anim = 0
            }
        }
    }
    if (shootcon == 20)
    {
        bx1[0] = -24
        bx1[1] = -40
        bx1[2] = -48
        bx1[3] = -46
        bx1[4] = -26
        by1[0] = -54
        by1[1] = -30
        by1[2] = 6
        by1[3] = 46
        by1[4] = 72
        if 628
            bullet_angle = ((point_direction((x + bx1[2]), (y + by1[2]), (obj_heart.x + 8), (obj_heart.y + 8)) - 10) + random(20))
        else
            bullet_angle += (-10 + random(20))
        shootcon = 21
    }
    if (shootcon == 21)
    {
        shoottimer += 1
        if (shoottimer >= (15 / m))
        {
            image_index += (0.25 * m)
            if (image_index == 2)
                gml_Script_snd_play_x(120, 1, 1)
            if (image_index >= 2 && image_index <= 3)
            {
                repeat (2)
                {
                    if (shootcount < 5)
                    {
                        bullet[shootcount] = gml_Script_instance_create((x + bx1[shootcount]), (y + by1[shootcount]), obj_werewire_bullet_lasersquare)
                        bullet[shootcount].damage = (global.monsterat[myself] * 5)
                        bullet[shootcount].target = mytarget
                        bullet[shootcount].grazepoints = 5
                        bullet[shootcount].sprite_index = spr_bullet_werewire_spark
                        bullet[shootcount].stretch = 0
                        bullet[shootcount].image_speed = 0.2
                        bullet[shootcount].image_xscale = 4
                        bullet[shootcount].image_yscale = 4
                        bullet[shootcount].direction = ((bullet_angle - 28) + (shootcount * 14))
                        bullet[shootcount].image_angle = bullet[shootcount].direction
                        bullet[shootcount].speed = ((9 - initid) - werewerewire)
                        bullet[shootcount].friction = 1
                        shootcount += 1
                    }
                }
            }
            if (image_index >= 4)
            {
                i = 0
                while (i < 5)
                {
                    var _temp_local_var_15 = bullet[i]
                    if (speed <= 0)
                        speed = 0.2
                    friction = -0.25
                }
                shootcon = 0
                image_index = 0
                sprite_index = spr_werewire_idle
                image_speed = 0.16
                stop_anim = 0
            }
        }
    }
    if (hangcon == 1)
    {
        // WARNING: Popz'd an empty stack.
        hangvspeed -= (1 * m)
        hangy += hangvspeed
        if ((y + hangy) <= (gml_Script___view_get(1, 0) + 60))
        {
            hangcon = 2
            hangtimer = 0
        }
    }
    if (hangcon == 2)
    {
        hangy += hangvspeed
        if (hangvspeed >= 0)
            hangvspeed *= 0.5
        if (hangvspeed <= 1)
        {
            hangvspeed = 0
            hangcon = 3
        }
    }
    if (hangcon >= 1 && hangcon <= 3)
    {
        if (xmovement_finished == 0)
        {
            x -= ((x - targetx) / (6 * m))
            if (x <= (targetx + 2))
            {
                x = targetx
                xmovement_finished = 1
            }
        }
    }
    if (hangcon == 3)
    {
        if (xmovement_finished == 1)
            hangcon = 4
    }
    if (hangcon >= 2 && hangcon < 5 && global.turntimer >= 30)
    {
        hangsparktimer++
        if (hangsparktimer >= 6)
        {
            hangsparktimer = 0
            shootcount = 0
            bullet[shootcount] = gml_Script_instance_create((x + hangx), ((y + hangy) + 80), obj_werewire_bullet_lasersquare)
            bullet[shootcount].damage = (global.monsterat[myself] * 5)
            bullet[shootcount].target = mytarget
            bullet[shootcount].grazepoints = 6
            bullet[shootcount].sprite_index = spr_bullet_werewire_spark
            bullet[shootcount].stretch = 0
            bullet[shootcount].image_speed = 0.2
            bullet[shootcount].image_xscale = 4
            bullet[shootcount].image_yscale = 4
            bullet[shootcount].hspeed = (-3 + random(6))
            bullet[shootcount].image_angle = bullet[shootcount].direction
            bullet[shootcount].vspeed = (-9 + random(2))
            bullet[shootcount].gravity = 0.5
        }
    }
    if (hangcon == 4)
    {
        hangsiner += (1 * m)
        x += (sin((hangsiner / 12)) * 3)
        if (global.turntimer <= 20)
            hangcon = 5
    }
    if (hangcon == 5)
    {
        hangy -= ((hangy - init_hangy) / (8 / m))
        if (hangy >= (init_hangy - 4))
            hangy = init_hangy
        x -= (((x - remx) / (8 / m)) - 1)
        if (x >= (remx - 1))
            x = remx
        if (hangy == init_hangy && x == remx)
        {
            hangcon = 0
            sprite_index = spr_werewire_idle
        }
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        gml_Script_msgsetloc(0, "* WEREWIRE - Controlled by the Queen's wire, it's sleepwalking through a nightmare!/%", "obj_werewire_enemy_slash_Step_0_gml_393_0")
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 2 && actcon == 0)
    {
        var simultext = (simultotal == 1 ? gml_Script_stringsetloc("* You jiggled your body. The wire loosened in turn!/%", "obj_werewire_enemy_slash_Step_0_gml_399_0") : gml_Script_stringsetloc("* You jiggled your body!/%", "obj_werewire_enemy_slash_Step_0_gml_399_1"))
        gml_Script_scr_act_charsprite("kris", 1427, 0.25, 1)
        gml_Script_msgset(0, simultext)
        gml_Script_scr_mercyadd(myself, 50)
        "kris"
        actcon = (simulorderkri == 0 ? 20 : -1)
    }
    if (acting == 3 && actcon == 0)
    {
        actcon = 12
        alarm[4] = 15
        with (obj_monsterparent)
        {
            // WARNING: Popz'd an empty stack.
            if (global.monstertype[myself] == 33)
                (((15 + 206) + 640) - (initid * 100))
            else
                gml_Script_scr_move_to_point_over_time(740, y, 15)
        }
    }
    if (actcon == 13)
    {
        gml_Script_msgsetsubloc(0, "* Press ~1 to throw, aim for the weakpoint!", gml_Script_scr_get_input_name(6), "obj_werewire_enemy_slash_Step_0_gml_425_0")
        with (obj_werewire_enemy)
        {
            target = gml_Script_instance_create(x, y, obj_werewire_throwtarget)
            target.maker = id
        }
        with (obj_herokris)
            visible = false
        with (obj_herosusie)
            visible = false
        throwsus = gml_Script_instance_create(obj_herosusie.x, obj_herosusie.y, obj_werewire_throwkris)
        // WARNING: Popz'd an empty stack.
        actcon = 14
    }
    if (actcon == 15)
    {
        with (obj_monsterparent)
            15
        actcon = 16
        alarm[4] = 15
    }
    if (actcon == 17)
    {
        actcon = 1
        with (obj_werewire_enemy)
        {
            gml_Script_scr_mercyadd(myself, mercyaccumulated)
            mercyaccumulated = 0
        }
    }
    if (actingsus == 1 && actconsus == 1)
    {
        simultext = (simultotal == 1 ? gml_Script_stringsetloc("* Susie yanked on the wire! It loosened a little bit./%", "obj_werewire_enemy_slash_Step_0_gml_457_0") : gml_Script_stringsetloc("* Susie yanked the wire!/%", "obj_werewire_enemy_slash_Step_0_gml_457_1"))
        gml_Script_msgset(0, simultext)
        gml_Script_scr_mercyadd(myself, 25)
        "susie"
        actconsus = (simulordersus == 0 ? 20 : 0)
    }
    if (actingral == 1 && actconral == 1)
    {
        simultext = (simultotal == 1 ? gml_Script_stringsetloc("* Ralsei sang a snake-charming song to the wire! It loosened a little bit./%", "obj_werewire_enemy_slash_Step_0_gml_469_0") : gml_Script_stringsetloc("* Ralsei charmed the wire!/%", "obj_werewire_enemy_slash_Step_0_gml_469_1"))
        gml_Script_msgset(0, simultext)
        gml_Script_scr_mercyadd(myself, 25)
        "ralsei"
        actconral = (simulorderral == 0 ? 20 : 0)
    }
    if (actingnoe == 1 && actconnoe == 1)
    {
        simultext = (simultotal == 1 ? gml_Script_stringsetloc("* Noelle pulled out the plug like a fairy light!/%", "obj_werewire_enemy_slash_Step_0_gml_481_0") : gml_Script_stringsetloc("* Noelle pulled on the plug!/%", "obj_werewire_enemy_slash_Step_0_gml_481_1"))
        gml_Script_msgset(0, simultext)
        gml_Script_scr_mercyadd(myself, 50)
        "noelle"
        actconnoe = (simulordernoe == 0 ? 20 : 0)
    }
    if (actcon == 10 && (!62))
    {
    }
    if (actcon == 1 && (!62))
    {
        // WARNING: Popz'd an empty stack.
        // WARNING: Popz'd an empty stack.
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20 || actconnoe == 20)
    {
        actconsus = -1
        actconral = -1
        actconnoe = -1
        actcon = 1
    }
}
