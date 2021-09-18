var _temp_local_var_1, _temp_local_var_2, _temp_local_var_11, _temp_local_var_12, _temp_local_var_16, _temp_local_var_20;
if (global.monster[myself] == true)
{
    if (global.mnfight == 1 && talked == 0)
    {
        if (global.mercymod[myself] < 100)
            // WARNING: Popz'd an empty stack.
        if (!361)
            gml_Script_instance_create(0, 0, obj_darkener)
        global.typer = 50
        global.msg[0] = gml_Script_stringsetloc(" ", "obj_ponman_enemy_slash_Step_0_gml_10_0")
        g = gml_Script_scr_enemyblcon((x - 160), y, 3)
        var _temp_local_var_2 = g.mywriter
    }
    if (talked == 1 && global.mnfight == 1)
    {
        rtimer = 0
        5
        if (global.mnfight == 2)
        {
            if (!377)
                // WARNING: Popz'd an empty stack.
            if (!869)
                gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
        }
    }
    if (global.mnfight == 2 && attacked == false)
    {
        rtimer += 1
        if (rtimer == 12)
        {
            global.turntimer = 150
            pontotal = 
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
                global.battlemsg[0] = gml_Script_stringsetloc("* Ponman advances one step at a time.", "obj_ponman_enemy_slash_Step_0_gml_64_0")
            if (rr == 1)
                global.battlemsg[0] = gml_Script_stringsetloc("* Ponman listens politely^1, despite having no ears.", "obj_ponman_enemy_slash_Step_0_gml_65_0")
            if (rr == 2)
                global.battlemsg[0] = gml_Script_stringsetloc("* Ponman seems hypnotized by your idle animation.", "obj_ponman_enemy_slash_Step_0_gml_66_0")
            if (rr == 3)
                global.battlemsg[0] = gml_Script_stringsetloc("* Ponman gazes enigmatically.", "obj_ponman_enemy_slash_Step_0_gml_67_0")
            if (rr == 4)
                global.battlemsg[0] = gml_Script_stringsetloc("* Smells like a pawn shop.", "obj_ponman_enemy_slash_Step_0_gml_68_0")
            if (global.monsterstatus[myself] == true)
                global.battlemsg[0] = gml_Script_stringsetloc("* Ponman can't keep its eye open.", "obj_ponman_enemy_slash_Step_0_gml_69_0")
            if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
                global.battlemsg[0] = gml_Script_stringsetloc("* Ponman looks dilated.", "obj_ponman_enemy_slash_Step_0_gml_70_0")
            if (global.mercymod[myself] >= global.mercymax[myself])
                global.msg[0] = gml_Script_stringsetloc("* Ponman is sleeping soundly.", "obj_ponman_enemy_slash_Step_0_gml_71_0")
            if (global.monstercomment[myself] == "(Sleepy)")
                global.msg[0] = gml_Script_stringsetloc("* The enemies became SLEEPY from Ralsei's lullaby!", "obj_ponman_enemy_slash_Step_0_gml_72_0")
        }
        else
            global.turntimer = 120
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (battlecancel == 1)
                gml_Script_scr_mercyadd(myself, 100)
            if (battlecancel == 2)
            {
                with (obj_battlecontroller)
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
        global.msg[0] = gml_Script_stringsetloc("* PONMAN - AT 8 DF 0&* Its nucleus doubles as an eyespot./%", "obj_ponman_enemy_slash_Step_0_gml_106_0")
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 2 && actcon == 0)
    {
        global.msg[0] = gml_Script_stringsetloc("* You whispered goodnight to Ponman^1.&* It fell asleep.../%", "obj_ponman_enemy_slash_Step_0_gml_114_0")
        sleeping = true
        gml_Script_scr_mercyadd(myself, 100)
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 3 && actcon == 0)
    {
        global.batmusic[1]
        if (lullabied == 0)
        {
            singy = snd_ralseising1
            var _temp_local_var_11 = object_index
            lullabied = 1
        }
        else
        {
            singy = snd_ralseising2
            _temp_local_var_11 = object_index
            lullabied = 0
        }
        global.msg[0] = gml_Script_stringsetloc("* Ralsei sang a soft and entrancing lullaby!/%", "obj_ponman_enemy_slash_Step_0_gml_134_0")
        with (obj_heroralsei)
            visible = false
        ralsing = gml_Script_scr_dark_marker(obj_heroralsei.x, obj_heroralsei.y, 1479)
        var _temp_local_var_12 = ralsing
        image_speed = 0.2
    }
    if (acting == 4 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = gml_Script_stringsetloc("* You and Ralsei warned Ponman about Susie^1.&* The enemy went on guard.../%", "obj_ponman_enemy_slash_Step_0_gml_150_0")
        if (gml_Script_scr_monsterpop() > 1)
            global.msg[0] = gml_Script_stringsetloc("* You and Ralsei warned the enemies about Susie^1.&* Everyone went on guard./%", "obj_ponman_enemy_slash_Step_0_gml_152_0")
        for (i = 0; i < 3; i += 1)
        {
            global.monstercomment[i] = "(Warned)"
            global.automiss[i] = true
        }
        gml_Script_scr_battletext_default()
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
    {
        actcon = 0
        gml_Script_scr_attackphase()
    }
    if (actcon == 10)
    {
        lullatimer += 1
        if (lullatimer >= 30)
            actcon = 11
    }
    if (actcon == 11 && instance_exists(obj_writer) == 0)
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
    with (obj_regularbullet)
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
    if instance_exists(obj_heart)
        x_angle = point_direction(((eyex + 28) + x), ((eyey + 32) + y), (obj_heart.x + 8), (obj_heart.y + 8))
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
            gml_Script_snd_play(170)
            bul = gml_Script_instance_create(((eyex + 28) + x), ((eyey + 32) + y), obj_regularbullet)
            bul.speed = 2
            bul.timepoints = 2.5
            bul.target = mytarget
            bul.damage = (global.monsterat[myself] * 5)
            bul.friction = -0.11
            if (pontotal == 1)
                bul.friction = -0.12
            bul.direction = eye_angle
            var _temp_local_var_20 = bul
            sprite_index = spr_diamondbullet
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
