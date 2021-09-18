var _temp_local_var_1, _temp_local_var_4, _temp_local_var_9, _temp_local_var_13, _temp_local_var_16;
if (init == 0)
{
    image_xscale = 0.5
    image_yscale = 0.5
    destroyed = 0
    shotcount = 0
    bouncecount = 0
    shottype = 0
    shottimer = 0
    init = 1
    con = 1
    if boss
    {
        rembossx = boss.x
        rembossy = boss.y
    }
    else
    {
        rembossx = bossx
        rembossy = bossy
    }
    var xscale = 1.5
    var yscale = 1.5
    if (type == 1)
    {
        xscale = 1
        yscale = 1
        moveframes *= 0.8
        hp = 10
    }
    gml_Script_scr_lerpvar("image_xscale", 0.5, xscale, 20, -1, "out")
    gml_Script_scr_lerpvar("image_yscale", 0.5, yscale, 20, -1, "out")
    if (type == 3)
    {
        sprite_index = spr_sneo_wireheart_biter
        hp = 3
        moveframes = 12
    }
    if (type == 4)
    {
        sprite_index = spr_sneo_wireheart_bomb
        hp = 1
    }
}
if (con == 1)
{
    if (bighearttype == 1)
        moveframes = 16
    targetx = (300 + random(70))
    targety = (145 + random_range(-70, 70))
    if (type == 3)
    {
        if (altbiter > 0 && altbiter < 3)
        {
            targetx = 150
            if (altbiter == 1)
                targety = 240
            else
                targety = 75
        }
        else
        {
            targetx = (170 + random(70))
            targety = (145 + random_range(-60, 60))
        }
        if (altbiter == 3)
        {
            targetx = 350
            targety = (130 + random_range(-45, 0))
        }
        if (altbiter == 4)
        {
            targetx = 350
            targety = (160 + random_range(45, 0))
        }
    }
    if (628 && obj_sneo_bulletcontroller.hearttargettimer < 1 && type != 3)
    {
        if (choose(0, 1, 2) == 0)
        {
            targety = (obj_heart.y + 10)
            obj_sneo_bulletcontroller.hearttargettimer = 6
        }
    }
    movetimer = 0
    con = 2
    if (type == 0 || type == 1)
    {
        var _temp_local_var_4 = boss
        heart_release_con = 1
    }
}
if (con == 2)
{
    movetimer += (1 / moveframes)
    x = gml_Script_lerp_ease_out(bossx, targetx, movetimer, 2)
    y = gml_Script_lerp_ease_out(bossy, targety, movetimer, 2)
    if (movetimer >= 1)
    {
        movetimer = 0
        con = 3
    }
}
if (con == 3)
{
    if (type == 3 && altbiter > 0 && altbiter < 3)
    {
        movetimer++
        if (altbiter == 1)
            y = lerp((gml_Script_cameray() + 240), (gml_Script_cameray() + 75), (movetimer / 21))
        if (altbiter == 2)
            y = lerp((gml_Script_cameray() + 75), (gml_Script_cameray() + 240), (movetimer / 21))
        if (movetimer >= 20)
        {
            movetimer = 0
            con = 10
            targety = y
        }
    }
    if (type == 3 && altbiter > 2)
    {
        movetimer++
        if (movetimer == 1)
            gml_Script_instance_create(x, y, obj_sneo_heart_laser)
        if (movetimer >= 16)
        {
            movetimer = 0
            con = 10
        }
    }
    else
    {
        con = 10
        movetimer = 0
    }
}
if (con == 10)
{
    movetimer += (1 / moveframes)
    x = gml_Script_lerp_ease_in(targetx, bossx, movetimer, 2)
    y = gml_Script_lerp_ease_in(targety, bossy, movetimer, 2)
    if ((movetimer > 0.5 && type == 0) || (movetimer > 0.5 && type == 1 && obj_spamton_neo_enemy.difficulty > 2))
    {
        var _temp_local_var_9 = boss
        heart_release_con = 0
    }
    if (movetimer >= 1)
    {
        movetimer = 0
        shottimer = 0
        con = 1
    }
}
if (con == 2 || con == 3 || con == 10)
{
    var radial = 5
    if (abs(((x - targetx) / (targetx - bossx))) < 0.2)
    {
        shottimer--
        if (shottimer <= 0)
        {
            if (type == 0)
            {
                firedtimer = 4
                var dir = 0
                if (bighearttype == 1 && y < obj_growtangle.y)
                    dir = (25 + random(10))
                if (bighearttype == 1 && y > obj_growtangle.y)
                    dir = ((random(10) * -1) - 25)
                i = 0
                while (i < radial)
                {
                    radialshot = gml_Script_instance_create(x, y, obj_collidebullet)
                    var _temp_local_var_13 = radialshot
                    gml_Script_scr_bullet_init()
                }
                shottimer = 10
                if (bighearttype == 1)
                    shottimer = 6
            }
            else if (type == 1)
            {
                firedtimer = 4
                i = 0
                while (i < radial)
                {
                    radialshot = gml_Script_instance_create(x, y, obj_collidebullet)
                    var _temp_local_var_16 = radialshot
                    gml_Script_scr_bullet_init()
                }
                shottimer = 6
            }
        }
    }
}
