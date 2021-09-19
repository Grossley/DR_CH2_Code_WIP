var _temp_local_var_1, _temp_local_var_2, _temp_local_var_4, _temp_local_var_5, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_10, _temp_local_var_11;
if (lcon == 1)
{
    orx = x
    ory = y
    ang = 0
    ltimer = 0
    shrinktimer = 0
    lcon = 1.5
}
if (lcon == 1.5)
{
    ltimer += 1
    if (ltimer >= 10)
    {
        ltimer = 0
        lcon = 2
        gml_Script_snd_play_ch1(421)
    }
}
if (lcon >= 6 && lcon < 10)
{
    btimer += 1
    if (btimer >= 10)
    {
        xoff = lengthdir_x(40, (image_angle - 20))
        yoff = lengthdir_y(40, (image_angle - 20))
        gml_Script_snd_play_ch1(362)
        bullet = gml_Script_instance_create_ch1((x - xoff), (y - yoff), 1520)
        var _temp_local_var_2 = bullet
        target = obj_lancerbike_ch1.target
        damage = obj_lancerbike_ch1.damage
        if (target == 0)
        {
            if (global.hp[1] <= (global.maxhp[1] / 2))
                damage = ceil((global.hp[1] / 3))
        }
        timepoints = 0
        sprite_index = spr_spadebullet_ch1
        move_towards_point((obj_heart_ch1.x + 8), (obj_heart_ch1.y + 8), 4)
        image_angle = direction
        friction = -0.4
    }
}
if (lcon == 2)
{
    ltimer += 1
    shrinktimer += 1
    hspeed = (sin((ltimer / 3)) * 5)
    image_yscale = (2 - (sin((ltimer / 5)) * 1))
    if (shrinktimer > 4)
        image_yscale = (2 - ((sin((ltimer / 5)) * 1) * (8 / shrinktimer)))
    if (ltimer > 7)
    {
        image_angle -= (abs(sin((ltimer / 5))) * 4)
        ang = (-image_angle)
    }
    if (ltimer > 4 && abs(sin((ltimer / 5))) <= 0.06)
    {
        lcon = 5
        image_yscale = 2
        direction = 180
        speed = 4
    }
}
if (lcon == 5)
{
    if (speed < 16)
        speed += 2
    if (ang < 45)
        ang += 4
    image_angle = (-ang)
    if (x < (gml_Script___view_get(0, 0) + 80))
        lcon = 6
}
if (lcon == 6)
{
    if (ang < 135)
        ang += 10
    image_angle = (-ang)
    if (x <= (gml_Script___view_get(0, 0) + 5))
    {
        lcon = 7
        direction = 90
    }
}
if (lcon == 7)
{
    if (y < (gml_Script___view_get(1, 0) + 80))
    {
        if (ang < 225)
            ang += 10
        if (y <= (gml_Script___view_get(1, 0) + 5))
        {
            direction = 0
            lcon = 8
        }
    }
    else if (ang < 135)
        ang += 10
    image_angle = (-ang)
}
if (lcon == 8)
{
    if (x >= (gml_Script___view_get(0, 0) + 540))
    {
        if (ang < 315)
            ang += 10
        if (x >= (gml_Script___view_get(0, 0) + 630))
        {
            direction = 270
            lcon = 9
        }
    }
    else if (ang < 225)
        ang += 10
    image_angle = (-ang)
}
if (lcon == 9)
{
    if (y > (ory - 70))
    {
        if (ang < 360)
            ang += 10
        if (y >= (ory - 5))
        {
            y = ory
            direction = 180
            lcon = 10
        }
    }
    else if (ang < 315)
        ang += 10
    image_angle = (-ang)
}
if (lcon == 10)
{
    ang = 0
    image_angle = 0
    if (x <= orx)
    {
        speed = 0
        x = orx
        lcon = 11
        ltimer = 0
    }
}
if (lcon == 11)
{
    sprite_index = spr_lancerbike_l_ch1
    ltimer += 1
    if (ltimer >= 25)
    {
        with (obj_regularbullet_ch1)
        {
            active = false
            image_alpha -= 0.2
        }
        image_alpha = 1
    }
    if (ltimer >= 30)
    {
        lcon = 0
        endcon = 1
    }
}
if (racecon == 1)
{
    sy = 0
    s_moveup = 0
    if instance_exists(obj_susieandlancer_event_ch1)
    {
        s = obj_susieandlancer_event_ch1.s
        sy = s.y
        s_moveup = 1
    }
    else if instance_exists(obj_susieenemy_ch1)
    {
        s = obj_susieenemy_ch1
        sy = s.y
        s_moveup = 1
    }
    orx = x
    ory = y
    ang = 0
    racecon = 2
    vspeed = (-14 * choose(1, -1))
    rtimer = 0
    maxr = (15 + random(25))
}
if (racecon == 2)
{
    if (s_moveup == 1)
    {
        if (s.y > -20)
        {
            _temp_local_var_2.y = (s.y - 10)
            var _temp_local_var_4 = -9
            var _temp_local_var_5 = s
        }
    }
    if (y < (topy + 10))
        vspeed = 12
    if (y > (bottomy - 10))
        vspeed = -12
    rtimer += 1
    if (rtimer > maxr)
    {
        vspeed = 0
        racecon = 3
        rtimer = 0
    }
}
if (racecon == 3)
{
    rtimer += 1
    if (rtimer == 5 || rtimer == 10)
    {
        gml_Script_snd_play_ch1(441)
        honkimg = gml_Script_instance_create_ch1((x - 60), (y - 40), 1510)
        var _temp_local_var_7 = honkimg
        sprite_index = spr_lancernoise_ch1
    }
    if (rtimer >= 25)
    {
        gml_Script_snd_play_ch1(452)
        racecon = 4
        hspeed = -20
        rtimer = 0
        ang = 0
    }
}
if (racecon == 4)
{
    if (s_moveup == 1)
    {
        _temp_local_var_7.y = (s.y + 10)
        var _temp_local_var_8 = -9
        var _temp_local_var_9 = s
        var _temp_local_var_10 = -9
        var _temp_local_var_11 = s
        if (s.y >= sy)
        {
            s.y = sy
            s_moveup = 0
        }
    }
    rtimer += 1
    ang += ((rtimer * 2) + 4)
    if (ang > 50)
        ang = 50
    image_angle = (-ang)
    if (x <= (gml_Script___view_get(0, 0) - 40))
    {
        ang = 0
        image_angle = 0
        x = (gml_Script___view_get(0, 0) + 740)
        y = ory
        hspeed = -12
        racecon = 5
    }
}
if (racecon == 5)
{
    if (x <= (orx + 5))
    {
        hspeed = 0
        x = orx
        racecon = 0
        endcon = 1
    }
}
if (endcon == 1)
{
    global.turntimer = 2
    with (obj_lancerboss_ch1)
    {
        visible = true
        if (turns >= 4)
        {
            con = 1
            with (obj_battlecontroller_ch1)
                noreturn = true
        }
    }
    with (obj_lancerboss3_ch1)
        visible = true
    instance_destroy()
}
with (obj_lancerboss_ch1)
{
    if (compliment >= 3)
    {
        with (obj_dmgwriter_ch1)
            spec = 1
    }
}
