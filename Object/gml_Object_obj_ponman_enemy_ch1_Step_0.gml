if (global.monster[myself] == true)
{
    if (global.mnfight == 1 && talked == 0)
    {
        if (global.mercymod[myself] < 100)
            gml_Script_scr_randomtarget_ch1()
        if (!instance_exists(obj_darkener_ch1))
            gml_Script_instance_create_ch1(0, 0, 1522)
        global.typer = 50
        global.msg[0] = " "
        g = gml_Script_scr_enemyblcon_ch1((x - 160), y, 3)
        var _temp_local_var_2 = g.mywriter
        instance_destroy()
    }
    if (talked == 1 && global.mnfight == 1)
    {
        rtimer = 0
        gml_Script_scr_blconskip_ch1(5)
        if (global.mnfight == 2)
        {
            if (!instance_exists(obj_moveheart_ch1))
                gml_Script_scr_moveheart_ch1()
            if (!instance_exists(obj_growtangle_ch1))
                gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), 1628)
        }
    }
    if (global.mnfight == 2 && attacked == false)
    {
        rtimer += 1
        if (rtimer == 12)
        {
            global.turntimer = 150
            pontotal = gml_Script_scr_monsterpop_ch1()
            for (i = 0; i < 3; i += 1)
            {
                if (global.monster[i] == true && global.mercymod[i] >= 100)
                    pontotal -= 1
            }
            if (pontotal == 3)
                maxshot = 3
            if (pontotal == 2)
                maxshot = 4
            if (pontotal == 1)
                maxshot = 5
            if (pontotal <= 0)
            {
                global.turntimer = 10
                maxshot = 6
            }
            shotcount = 0
            totalshotcount = 0
            activetimer = 1
            shotbuffer = 8
            if (global.mercymod[myself] < 100)
                eyecon = 20
            turns += 1
            attacked = true
            global.typer = 6
            global.fc = 0
            rr = choose(0, 1, 2, 3, 4)
            if (rr == 0)
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_64_0")
            if (rr == 1)
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_65_0")
            if (rr == 2)
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_66_0")
            if (rr == 3)
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_67_0")
            if (rr == 4)
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_68_0")
            if (global.monsterstatus[myself] == true)
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_69_0")
            if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
                global.battlemsg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_70_0")
            if (global.mercymod[myself] >= global.mercymax[myself])
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_71_0")
            if (global.monstercomment[myself] == gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_72_0"))
                global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_72_1")
        }
        else
            global.turntimer = 120
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (battlecancel == 1)
                gml_Script_scr_mercyadd_ch1(myself, 100)
            if (battlecancel == 2)
            {
                with (obj_battlecontroller_ch1)
                    noreturn = true
                con = 1
                battlecancel = 3
            }
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
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_106_0")
        gml_Script_scr_battletext_default_ch1()
    }
    if (acting == 2 && actcon == 0)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_114_0")
        sleeping = true
        gml_Script_scr_mercyadd_ch1(myself, 100)
        gml_Script_scr_battletext_default_ch1()
        actcon = 1
    }
    if (acting == 3 && actcon == 0)
    {
        gml_Script_snd_pause_ch1(global.batmusic[1])
        if (lullabied == 0)
        {
            singy = gml_Script_snd_play_ch1(393)
            var _temp_local_var_11 = object_index
            lullabied = 1
        }
        else
        {
            singy = gml_Script_snd_play_ch1(394)
            _temp_local_var_11 = object_index
            lullabied = 0
        }
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_134_0")
        with (obj_heroralsei_ch1)
            visible = false
        ralsing = gml_Script_scr_dark_marker_ch1(obj_heroralsei_ch1.x, obj_heroralsei_ch1.y, 3848)
        var _temp_local_var_12 = ralsing
        image_speed = 0.2
    }
    if (acting == 4 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_150_0")
        if (gml_Script_scr_monsterpop_ch1() > 1)
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_152_0")
        for (i = 0; i < 3; i += 1)
        {
            global.monstercomment[i] = gml_Script_scr_84_get_lang_string_ch1("obj_ponman_enemy_slash_Step_0_gml_155_0")
            global.automiss[i] = true
        }
        gml_Script_scr_battletext_default_ch1()
    }
    if (actcon == 1 && (!instance_exists(obj_writer_ch1)))
    {
        actcon = 0
        gml_Script_scr_attackphase_ch1()
    }
    if (actcon == 10)
    {
        lullatimer += 1
        if (lullatimer >= 30)
            actcon = 11
    }
    if (actcon == 11 && instance_exists(obj_writer_ch1) == 0)
    {
        var _temp_local_var_16 = ralsing
        instance_destroy()
    }
}
if (global.myfight == 7)
    hspeed = 15
if (sleeping == true)
    eyecon = 999
if (eyecon == 0)
{
    eye_angle = (180 + (sin((siner / 8)) * 30))
    if (eye_radius < 8)
        eye_radius += 2
    else
        eye_radius = 8
    if (addup == false)
        image_index = 1
    else
        image_index = 3
    if (eye_angle > 200)
    {
        image_index = 0
        addup = true
    }
    if (eye_angle < 160)
    {
        image_index = 2
        addup = false
    }
}
if (eyecon == 10)
{
    activetimer = 0
    with (obj_regularbullet_ch1)
    {
        active = false
        image_alpha -= 0.1
    }
    image_index = 0
    eye_radius *= 0.7
    if (abs(eye_radius) < 0.5)
    {
        eye_radius = 0
        eye_angle = 0
    }
    if (global.turntimer <= 1)
        eyecon = 0
}
if (eyecon == 20)
{
    if (spinspeed < 10)
        spinspeed += 1
    if (pontotal > 1)
        siner += (spinspeed / 8)
    else
        siner += (spinspeed / 20)
    eye_angle = (180 + (sin((siner / 8)) * 70))
    if (eye_radius < 8)
        eye_radius += 1
    grandbuffer -= 1
    if instance_exists(obj_heart_ch1)
        x_angle = point_direction(((eyex + 28) + x), ((eyey + 32) + y), (obj_heart_ch1.x + 8), (obj_heart_ch1.y + 8))
    else
        x_angle = 0
    if (abs((x_angle - eye_angle)) < 25 && eye_angle >= 120 && eye_angle <= 240)
    {
        if (shotbuffer < 0 && shotcount < 3 && totalshotcount < maxshot)
        {
            shotcount += 1
            if (pontotal == 2)
                shotcount += 1
            if (pontotal == 3)
                shotcount += 1
            if (shotcount >= 3)
            {
                totalshotcount += 1
                shotcount = 0
                if (pontotal == 1)
                    shotbuffer = 10
                if (pontotal == 2)
                    shotbuffer = 13
                if (pontotal == 3)
                    shotbuffer = 22
            }
            if (totalshotcount >= maxshot)
                maxtimer = 1
            gml_Script_snd_play_ch1(438)
            bul = gml_Script_instance_create_ch1(((eyex + 28) + x), ((eyey + 32) + y), 1520)
            bul.speed = 2
            bul.timepoints = 2.5
            bul.target = mytarget
            bul.damage = (global.monsterat[myself] * 5)
            bul.friction = -0.11
            if (pontotal == 1)
                bul.friction = -0.12
            bul.direction = eye_angle
            var _temp_local_var_20 = bul
            sprite_index = spr_diamondbullet_ch1
            image_angle = direction
        }
    }
    if (maxtimer > 0)
        maxtimer += 1
    if (global.turntimer < 10)
        eyecon = 10
}
siner += 1
shotbuffer -= 1
if (becomesleep == true)
{
    eyecon = 999
    sleeping = true
    becomesleep = false
    sleep_index = 5
}
if (eye_angle < 0)
    eye_angle += 360
if (eye_angle > 360)
    eye_angle -= 360
eyex = lengthdir_x(eye_radius, eye_angle)
eyey = lengthdir_y(eye_radius, eye_angle)
