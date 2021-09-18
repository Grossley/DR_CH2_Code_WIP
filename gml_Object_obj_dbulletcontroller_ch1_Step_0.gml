var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_10, _temp_local_var_12, _temp_local_var_14, _temp_local_var_18, _temp_local_var_19, _temp_local_var_20, _temp_local_var_21, _temp_local_var_22, _temp_local_var_24, _temp_local_var_25, _temp_local_var_26, _temp_local_var_27, _temp_local_var_29, _temp_local_var_31, _temp_local_var_43, _temp_local_var_45, _temp_local_var_46, _temp_local_var_47, _temp_local_var_49, _temp_local_var_52, _temp_local_var_62, _temp_local_var_63, _temp_local_var_66, _temp_local_var_68, _temp_local_var_71, _temp_local_var_76, _temp_local_var_77, _temp_local_var_81;
btimer += 1
if (type == 0)
{
    if (btimer >= (timermax * ratio))
    {
        btimer = 0
        dir = (30 + random(120))
        radius = (140 + random(80))
        xx = lengthdir_x(radius, dir)
        yy = lengthdir_y(radius, dir)
        bm = gml_Script_instance_create_ch1(((obj_heart_ch1.x + 8) + xx), ((obj_heart_ch1.y + 8) + yy), 1554)
        if (bm.y < (gml_Script___view_get(1, 0) + 40))
            bm.y = (gml_Script___view_get(1, 0) + 40)
        bm.damage = damage
        bm.target = target
    }
}
if (type == 1)
{
    if (btimer >= (9 * ratio))
    {
        btimer = 0
        radius = (140 + random(40))
        yy = (radius * side)
        xx = (-100 + random(200))
        num = choose(0, 1, 2, 3)
        if (num == 3)
            xx = (-10 + random(20))
        d = gml_Script_instance_create_ch1(((obj_heart_ch1.x + 8) + xx), ((obj_heart_ch1.y + 8) + yy), 1555)
        d.damage = damage
        d.target = target
    }
}
if (type == 2)
{
    if (btimer >= (20 * ratio))
    {
        xx = (gml_Script___view_get(0, 0) - 20)
        if (side == 1)
            xx = (gml_Script___view_get(0, 0) + 660)
        yy = (miny + random((maxy - miny)))
        bul = gml_Script_instance_create_ch1(xx, yy, 1552)
        bul.speed = 12
        bul.damage = damage
        bul.target = target
        if (side == 1)
        {
            bul.direction = 180
            bul.image_angle = 180
        }
        btimer = 0
    }
}
if (type == 3)
{
    if (btimer >= (20 * ratio))
    {
        btimer = 0
        if (side == 1)
            dir = choose(225, 315)
        if (side == -1)
            dir = choose(45, 135)
        radius = 400
        xx = lengthdir_x(radius, dir)
        yy = lengthdir_y(radius, dir)
        d = gml_Script_instance_create_ch1(((obj_heart_ch1.x + 8) + xx), ((obj_heart_ch1.y + 8) + yy), 1553)
        d.direction = (dir + 180)
        d.speed = 20
        d.friction = 1
        d.damage = damage
        d.target = target
        var _temp_local_var_1 = d
        image_angle = direction
    }
}
if (type == 4)
{
    if (btimer >= (30 * ratio))
    {
        btimer = 0
        if (side == -1)
            dir = 225
        if (side == 1)
            dir = 315
        radius = 400
        xx = lengthdir_x(radius, dir)
        yy = lengthdir_y(radius, dir)
        d = gml_Script_instance_create_ch1(((obj_heart_ch1.x + 8) + xx), ((obj_heart_ch1.y + 8) + yy), 1553)
        d.damage = damage
        d.target = target
        d.direction = (dir + 180)
        d.speed = 20
        d.friction = 1
        var _temp_local_var_2 = d
        image_angle = direction
    }
}
if (type == 6)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (made == 0)
    {
        d = gml_Script_instance_create_ch1((300 + xx), (-20 + yy), 1550)
        e = gml_Script_instance_create_ch1((360 + xx), (-60 + yy), 1550)
        d.target = target
        d.damage = damage
        e.target = target
        e.damage = damage
        made = 1
    }
}
if (type == 7)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (made < 3 && btimer >= 15)
    {
        btimer = 0
        mine = gml_Script_instance_create_ch1((300 + xx), (-20 + yy), 1550)
        mine.damage = damage
        mine.target = target
        with (obj_dicebul_ch1)
        {
            gravity = (0.15 + gravbonus)
            image_xscale = 1
            image_yscale = 1
        }
        made += 1
    }
}
if (type == 8)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (made < 4 && btimer >= 15)
    {
        btimer = 0
        mine = gml_Script_instance_create_ch1((300 + xx), (yy - 40), 1550)
        mine.damage = damage
        mine.target = target
        var _temp_local_var_5 = mine
        hspeed = (1.2 + random(1.2))
        hspeed *= choose(-1, 1)
        gravbonus = random(0.1)
        gravity = (0.15 + gravbonus)
        image_xscale = 0.7
        image_yscale = 0.7
    }
}
if (type == 10)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (btimer >= 15)
    {
        btimer = 0
        dicecomet = gml_Script_instance_create_ch1(choose((xx + 680), (xx - 100)), (0 - random(100)), 1550)
        dicecomet.damage = damage
        dicecomet.target = target
        var _temp_local_var_6 = dicecomet
        image_xscale = 2
        image_yscale = 2
        if (x > (gml_Script___view_get(0, 0) + 320))
            hspeed = (-6 - random(1))
        else
            hspeed = (6 + random(1))
        vspeed = (2 + random(2))
    }
}
if (type == 11)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (made < 4 && btimer >= 15)
    {
        btimer = 0
        bb = gml_Script_instance_create_ch1((300 + xx), (-20 + yy), 1550)
        bb.damage = damage
        bb.target = target
        with (obj_dicebul_ch1)
        {
            gravity = (0.15 + gravbonus)
            image_xscale = 1
            image_yscale = 1
        }
        if (made == 3)
        {
            var _temp_local_var_8 = bb
            green = 1
            image_blend = c_lime
        }
        made += 1
    }
}
if (type == 12)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (made == 0)
    {
        db = gml_Script_instance_create_ch1((320 + xx), (-20 + yy), 1550)
        db.image_xscale = 1
        db.image_yscale = 1
        db.damage = damage
        db.target = target
        made = 1
    }
}
if (type == 13)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (made < 2 && btimer >= 20)
    {
        db[made] = gml_Script_instance_create_ch1((320 + xx), (-20 + yy), 1550)
        db[made].image_xscale = 1
        db[made].image_yscale = 1
        db[made].damage = damage
        db[made].target = target
        if (made == 1)
        {
            var _temp_local_var_10 = db[1]
            green = 1
            image_blend = c_lime
        }
        made += 1
    }
}
if (type == 14)
{
    if (btimer >= 10)
    {
        xx = (gml_Script___view_get(0, 0) - 20)
        if (side == 1)
            xx = (gml_Script___view_get(0, 0) + 660)
        yy = (miny + random((maxy - miny)))
        bul = gml_Script_instance_create_ch1(xx, yy, 1520)
        bul.sprite_index = spr_smallbullet_ch1
        bul.hspeed = -8
        bul.damage = damage
        bul.target = target
        if (side == 1)
        {
            bul.direction = 180
            bul.image_angle = 180
        }
        btimer = 0
    }
}
if (type == 20 || type == 22)
{
    if instance_exists(obj_lancerboss3_ch1)
    {
        if (made == 0)
        {
            gml_Script_snd_play_ch1(453)
            whistletimer = 0
            made = 1
            with (obj_lancerboss3_ch1)
                idlesprite = spr_lancerbike_l_ch1
        }
        if (made == 1)
        {
            whistletimer += 1
            if (whistletimer >= 30)
            {
                with (obj_lancerboss3_ch1)
                    idlesprite = spr_lancerbike_ch1
                made = 2
            }
        }
    }
    if (type == 20)
        bmax = 8
    if (type == 22)
        bmax = 6
    if (btimer >= bmax)
    {
        radius = ((-80 + random(160)) + 8)
        fallspade = gml_Script_instance_create_ch1((obj_heart_ch1.x + radius), (gml_Script___view_get(1, 0) - 20), 1520)
        fallspade.damage = damage
        fallspade.target = target
        var _temp_local_var_12 = fallspade
        sprite_index = spr_spadebullet_ch1
        image_angle = 270
        gravity = 0.3
        speed = 0
        vspeed = 3
        hspeed = (-0.6 + random(1.2))
    }
}
if (type == 21 || type == 23 || type == 25)
{
    if (type == 21)
        bmax = 9
    if (type == 23)
        bmax = 7
    if (type == 25)
        bmax = 4
    with (obj_regularbullet_ch1)
        image_alpha += 0.2
    if (btimer >= bmax)
    {
        if (side == 0)
            radius = 80
        else
            radius = 560
        sidespade[side] = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + radius), ((obj_growtangle_ch1.y - (obj_growtangle_ch1.sprite_height / 2)) + random(obj_growtangle_ch1.sprite_height)), 1520)
        if (side == 0)
            sidespade[side].direction = 0
        if (side == 1)
            sidespade[side].direction = 180
        sidespade[side].image_alpha = 0
        sidespade[side].damage = damage
        sidespade[side].target = target
        var _temp_local_var_14 = sidespade[side]
        sprite_index = spr_spadebullet_ch1
        speed = 5
        friction = -0.1
        image_angle = direction
    }
}
if (type == 24)
{
    bmax = (difficulty + 5)
    with (obj_regularbullet_ch1)
    {
        if instance_exists(obj_heart_ch1)
        {
            xdiff = (x - (obj_heart_ch1.x + 8))
            if (y >= (obj_heart_ch1.y - 240) && abs(xdiff) <= 30)
            {
                if (xdiff >= 0 && hspeed < 5)
                    hspeed += 0.4
                if (xdiff < 0 && hspeed > -5)
                    hspeed -= 0.4
            }
            if (y >= (obj_heart_ch1.y - 100))
            {
                if (abs(xdiff) <= 60)
                {
                    if (xdiff >= 0)
                    {
                        if (hspeed < 2)
                            hspeed += 0.25
                        if (xdiff < 10)
                            x += 3
                        if (xdiff < 20)
                            x += 3
                        if (xdiff < 30)
                            x += 3
                        if (xdiff < 40)
                            x += 2
                        if (xdiff < 60)
                            x += 1
                    }
                    else
                    {
                        if (hspeed > -2)
                            hspeed -= 0.25
                        if (xdiff > -10)
                            x -= 3
                        if (xdiff > -20)
                            x -= 3
                        if (xdiff > -30)
                            x -= 3
                        if (xdiff > -40)
                            x -= 2
                        if (xdiff > -60)
                            x -= 1
                    }
                }
            }
        }
    }
    if (btimer >= bmax)
    {
        radius = ((-80 + random(160)) + 8)
        fallspade = gml_Script_instance_create_ch1((obj_heart_ch1.x + radius), -20, 1520)
        fallspade.damage = damage
        fallspade.target = target
        var _temp_local_var_18 = fallspade
        sprite_index = spr_spadebullet_ch1
        image_angle = 270
        gravity = 0.3
        speed = 0
        vspeed = 3
        hspeed = (-0.6 + random(1.2))
    }
}
if (type == 26)
{
    with (obj_regularbullet_ch1)
    {
        if (sprite_index == spr_blockbullet_ch1)
            image_alpha += 0.1
    }
    timer = 35
    if (gml_Script_scr_monsterpop_ch1() == 2)
        timer = 52.5
    if (gml_Script_scr_monsterpop_ch1() == 3)
        timer = 77
    if (btimer >= timer)
    {
        x_c = (gml_Script___view_get(0, 0) + 300)
        y_c = (gml_Script___view_get(1, 0) + 140)
        x_o = 200
        y_o = -60
        y_o_o = (-80 + random(160))
        y_o += y_o_o
        v_s = ((-y_o_o) / 160)
        h_s = -2
        for (i = 0; i < 2; i += 1)
        {
            upallow = choose(0, 1, 2)
            rightallow = choose(0, 1, 2)
            for (j = 0; j < 2; j += 1)
            {
                bul[i][j] = gml_Script_instance_create_ch1(((x_c + x_o) + (i * 80)), ((y_c + y_o) + (j * 80)), 1520)
                gml_Script_scr_bullet_inherit_ch1(bul[i][j])
                if (j == upallow)
                {
                    _temp_local_var_18.y = (bul[i][j].y + choose(0, 40))
                    var _temp_local_var_19 = sidespade[side]
                    var _temp_local_var_20 = fallspade
                    var _temp_local_var_21 = -9
                    var _temp_local_var_22 = bul[i][j]
                }
                if (i == 1 && j == 1)
                {
                    _temp_local_var_19.x = (bul[i][j].x + choose(0, -40))
                    bul[i][j].y = (((y_c + y_o) + choose(0, 40)) + (j * 80))
                    var _temp_local_var_24 = fallspade
                    var _temp_local_var_25 = -9
                    var _temp_local_var_26 = -9
                    var _temp_local_var_27 = bul[i][j]
                }
                bul[i][j].hspeed = h_s
                bul[i][j].vspeed = v_s
                bul[i][j].friction = -0.07
                if (gml_Script_scr_monsterpop_ch1() >= 2)
                    bul[i][j].friction = -0.1
                bul[i][j].sprite_index = spr_blockbullet_ch1
                bul[i][j].image_alpha = 0
            }
        }
        btimer = 0
    }
}
if (type == 27)
{
    timer = 15
    if (gml_Script_scr_monsterpop_ch1() == 2)
        timer = 25.5
    if (gml_Script_scr_monsterpop_ch1() == 3)
        timer = 34.5
    lx = ((obj_battlesolid_ch1.x - (obj_battlesolid_ch1.sprite_width / 2)) + 8)
    ly = ((obj_battlesolid_ch1.y + (obj_battlesolid_ch1.sprite_height / 2)) - 15)
    if (btimer >= timer)
    {
        prevmade = made
        made = choose(0, 1, 2, 3)
        if (made == prevmade)
            made = choose(0, 1, 2, 3)
        btimer = 0
        block = gml_Script_instance_create_ch1(100, 100, 1599)
        block.xpos = made
        gml_Script_scr_bullet_inherit_ch1(block)
        testblock = collision_point(((lx + (made * block.sprite_width)) + 8), ((ly - (block.sprite_height * 3)) - 10), obj_blockbullet_fall_ch1, 0, 1)
        if (testblock > obj_pipis_bullet_cone)
        {
            if (testblock.halt == 1)
            {
                var _temp_local_var_29 = block
                instance_destroy()
            }
        }
    }
    legoa = collision_point((lx + 15), ly, obj_blockbullet_fall_ch1, 0, 1)
    legob = collision_point(((lx + 15) + 34), ly, obj_blockbullet_fall_ch1, 0, 1)
    legoc = collision_point(((lx + 15) + 68), ly, obj_blockbullet_fall_ch1, 0, 1)
    legod = collision_point(((lx + 15) + 102), ly, obj_blockbullet_fall_ch1, 0, 1)
    if (legoa > 1 && legob > 1 && legoc > 1 && legod > 1)
    {
        var _temp_local_var_31 = legoa
        con = 3
    }
}
if (type == 30)
{
    bmax = 34
    if (gml_Script_scr_monsterpop_ch1() == 2)
        bmax = 46
    if (gml_Script_scr_monsterpop_ch1() == 3)
        bmax = 60
    if (btimer >= bmax)
    {
        rab = gml_Script_instance_create_ch1((obj_battlesolid_ch1.x + obj_battlesolid_ch1.sprite_width), obj_battlesolid_ch1.y, 1597)
        gml_Script_scr_bullet_inherit_ch1(rab)
        btimer = 0
    }
}
if (type == 32)
{
    skiprab = 0
    if instance_exists(obj_carrotthrower_ch1)
    {
        skiprab = 1
        type = 30
    }
    if (made == 0 && skiprab == 0)
    {
        made = 1
        rab = gml_Script_instance_create_ch1(obj_battlesolid_ch1.x, obj_battlesolid_ch1.y, 1596)
        gml_Script_scr_bullet_inherit_ch1(rab)
        instance_destroy()
    }
}
if (type == 33)
{
    if (btimer >= (26 * ratio))
    {
        hs = gml_Script_instance_create_ch1(obj_battlesolid_ch1.x, obj_battlesolid_ch1.y, 1556)
        hs.maxradius = 50
        hs.type = 1
        btimer = 0
        hs.thisx = ((obj_battlesolid_ch1.x - 50) + random(100))
        hs.thisy = ((obj_battlesolid_ch1.y - 50) + random(100))
        gml_Script_scr_bullet_inherit_ch1(hs)
    }
}
if (type == 34)
{
    if (btimer >= 28)
    {
        typechoice = choose(0, 1, 2, 3)
        xx = 0
        yy = 0
        if (typechoice == 0 || typechoice == 3)
        {
            xx = (((gml_Script___view_get(0, 0) + 320) + random(300)) - random(300))
            yy = -60
        }
        if (typechoice == 1)
        {
            xx = (gml_Script___view_get(0, 0) - 60)
            yy = random(320)
        }
        if (typechoice == 2)
        {
            xx = (gml_Script___view_get(0, 0) + 700)
            yy = random(320)
        }
        chain = gml_Script_instance_create_ch1(xx, yy, 1572)
        gml_Script_scr_bullet_inherit_ch1(1572)
        btimer = 0
    }
}
if (type == 35)
{
    if (btimer >= 22)
    {
        typechoice = choose(0, 1, 2, 3)
        xx = 0
        yy = 0
        if (typechoice == 0 || typechoice == 3)
        {
            xx = (((gml_Script___view_get(0, 0) + 320) + random(300)) - random(300))
            yy = -60
        }
        if (typechoice == 1)
        {
            xx = (gml_Script___view_get(0, 0) - 60)
            yy = random(320)
        }
        if (typechoice == 2)
        {
            xx = (gml_Script___view_get(0, 0) + 700)
            yy = random(320)
        }
        chain = gml_Script_instance_create_ch1(xx, yy, 1572)
        gml_Script_scr_bullet_inherit_ch1(chain)
        btimer = 0
    }
}
if (type == 36)
{
    if (btimer >= 16)
    {
        typechoice = choose(0, 1, 2, 3)
        xx = 0
        yy = 0
        if (typechoice == 0 || typechoice == 3)
        {
            xx = (((gml_Script___view_get(0, 0) + 320) + random(300)) - random(300))
            yy = -60
        }
        if (typechoice == 1)
        {
            xx = (gml_Script___view_get(0, 0) - 60)
            yy = random(320)
        }
        if (typechoice == 2)
        {
            xx = (gml_Script___view_get(0, 0) + 700)
            yy = random(320)
        }
        chain = gml_Script_instance_create_ch1(xx, yy, 1572)
        gml_Script_scr_bullet_inherit_ch1(chain)
        btimer = 0
    }
}
if (type >= 80 && type <= 84)
{
    maxtimer = 40
    if (type == 81)
        maxtimer = 30
    if (type == 82)
        maxtimer = 26
    if (type == 83)
        maxtimer = 19
    if (type == 84)
        maxtimer = 14
    if (btimer >= maxtimer)
    {
        btimer = 0
        lx = obj_battlesolid_ch1.x
        ly = obj_battlesolid_ch1.y
        side = choose(0, 1)
        if (type == 81 || type == 84)
        {
            side = made
            if (made == 0)
                made = 1
            else
                made = 0
        }
        if (side == 0)
        {
            puzz1 = gml_Script_instance_create_ch1((obj_heart_ch1.x + 8), (ly - 150), 1576)
            puzz1.side = 3
            puzz2 = gml_Script_instance_create_ch1((obj_heart_ch1.x + 8), (ly + 150), 1576)
            puzz2.side = 1
            if (type == 82)
                puzz1.timer = 10
            if (type == 82)
                puzz2.timer = 10
            if (type == 83 || type == 84)
                puzz1.timer = 15
            if (type == 83 || type == 84)
                puzz2.timer = 15
            gml_Script_scr_bullet_inherit_ch1(puzz1)
            gml_Script_scr_bullet_inherit_ch1(puzz2)
        }
        if (side == 1)
        {
            puzz1 = gml_Script_instance_create_ch1((lx + 150), (obj_heart_ch1.y + 8), 1576)
            puzz1.side = 2
            puzz2 = gml_Script_instance_create_ch1((lx - 150), (obj_heart_ch1.y + 8), 1576)
            puzz2.side = 0
            if (type == 82)
                puzz1.timer = 10
            if (type == 82)
                puzz2.timer = 10
            if (type == 83)
                puzz1.timer = 15
            if (type == 83)
                puzz2.timer = 15
            gml_Script_scr_bullet_inherit_ch1(puzz1)
            gml_Script_scr_bullet_inherit_ch1(puzz2)
        }
        if (type == 83)
        {
            with (obj_jigsawbullet_ch1)
                joker = 1
        }
    }
}
if (type == 85)
{
    if (made == 0)
    {
        cheer = 0
        cheertimer = 0
        remhp[0] = global.hp[global.char[0]]
        remhp[1] = global.hp[global.char[1]]
        with (obj_susieenemy_ch1)
            visible = false
        with (obj_lancerboss3_ch1)
            visible = false
        fakelan = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 580), (obj_battlesolid_ch1.y + 160), 1516)
        var _temp_local_var_43 = fakelan
        depth += 1
        image_xscale = 2
        image_yscale = 2
        visible = true
        sprite_index = spr_lancerbike_ch1
        active = false
        image_speed = 0.2
    }
    if (made == 1)
    {
        if instance_exists(fakelan)
        {
            if (cheer == 0)
            {
                if (global.inv > 10)
                {
                    cheer = 1
                    gml_Script_snd_play_ch1(453)
                    var _temp_local_var_45 = fakelan
                    sprite_index = spr_lancerbike_l_ch1
                }
            }
            if (cheer == 1)
            {
                cheertimer += 1
                if (cheertimer >= 30)
                {
                    cheertimer = 0
                    var _temp_local_var_46 = fakelan
                    sprite_index = spr_lancerbike_ch1
                }
            }
        }
        if instance_exists(fakesus)
        {
            var _temp_local_var_47 = fakesus
            if (image_index < 5)
                image_index += 0.334
        }
    }
    if (made == 1 && global.turntimer <= 10)
    {
        var _temp_local_var_49 = fakesus
        visible = false
    }
    if (btimer >= 27 && instance_exists(obj_battlesolid_ch1) && global.turntimer > 10)
    {
        var _temp_local_var_52 = fakesus
        image_index = 0
        gml_Script_snd_play_ch1(442)
    }
}
if (joker == 1)
{
    if (type == 45)
    {
        if (btimer >= 18)
        {
            xx = choose(0, 1)
            basex = (gml_Script___view_get(0, 0) + 320)
            if instance_exists(obj_growtangle_ch1)
                basex = obj_growtangle_ch1.x
            if (xx == 0)
                idealx = ((basex - 180) - random(100))
            if (xx == 1)
                idealx = ((basex + 180) + random(100))
            bomb = gml_Script_instance_create_ch1(idealx, -20, 1587)
            gml_Script_scr_bullet_inherit_ch1(bomb)
            if (bomb.type == 2)
                bomb.type = choose(0, 1, 2, 3)
            btimer = 0
        }
    }
    if (type == 46)
    {
        if (btimer >= 12)
        {
            xx = choose(0, 1)
            basex = (gml_Script___view_get(0, 0) + 320)
            if instance_exists(obj_growtangle_ch1)
                basex = obj_growtangle_ch1.x
            if (xx == 0)
                idealx = ((basex - 180) - random(100))
            if (xx == 1)
                idealx = ((basex + 180) + random(100))
            bomb = gml_Script_instance_create_ch1(idealx, -20, 1587)
            gml_Script_scr_bullet_inherit_ch1(bomb)
            if (bomb.type == 2)
                bomb.type = choose(0, 1, 2, 3)
            btimer = 0
        }
    }
    if (type == 47)
    {
        if (btimer >= 12)
        {
            xx = choose(0, 1)
            basex = (gml_Script___view_get(0, 0) + 320)
            if instance_exists(obj_growtangle_ch1)
                basex = obj_growtangle_ch1.x
            if (xx == 0)
                idealx = ((basex - 180) - random(100))
            if (xx == 1)
                idealx = ((basex + 180) + random(100))
            bomb = gml_Script_instance_create_ch1(idealx, -20, 1587)
            gml_Script_scr_bullet_inherit_ch1(bomb)
            bomb.type = 1
            btimer = 0
        }
    }
    if (type == 48)
    {
        if (btimer >= 12)
        {
            xx = choose(0, 1)
            basex = (gml_Script___view_get(0, 0) + 320)
            if instance_exists(obj_growtangle_ch1)
                basex = obj_growtangle_ch1.x
            if (xx == 0)
                idealx = ((basex - 180) - random(100))
            if (xx == 1)
                idealx = ((basex + 180) + random(100))
            bomb = gml_Script_instance_create_ch1(idealx, -20, 1587)
            gml_Script_scr_bullet_inherit_ch1(bomb)
            bomb.type = 0
            btimer = 0
        }
    }
    if (type == 49)
    {
        if (btimer >= 20)
        {
            xx = choose(0, 1)
            basex = (gml_Script___view_get(0, 0) + 320)
            if instance_exists(obj_growtangle_ch1)
                basex = obj_growtangle_ch1.x
            if (xx == 0)
                idealx = ((basex - 180) - random(100))
            if (xx == 1)
                idealx = ((basex + 180) + random(100))
            bomb = gml_Script_instance_create_ch1(idealx, -20, 1587)
            gml_Script_scr_bullet_inherit_ch1(bomb)
            bomb.type = 2
            btimer = 0
        }
    }
    if (type == 50)
    {
        if (btimer >= 12)
        {
            xx = choose(0, 1)
            basex = (gml_Script___view_get(0, 0) + 320)
            if instance_exists(obj_growtangle_ch1)
                basex = obj_growtangle_ch1.x
            if (xx == 0)
                idealx = ((basex - 180) - random(100))
            if (xx == 1)
                idealx = ((basex + 180) + random(100))
            bomb = gml_Script_instance_create_ch1(idealx, -20, 1587)
            gml_Script_scr_bullet_inherit_ch1(bomb)
            bomb.type = 3
            btimer = 0
        }
    }
    if (type == 55)
    {
        if (btimer >= 40 && made == 0)
        {
            btimer = 0
            made = 1
            scythe = gml_Script_instance_create_ch1((obj_battlesolid_ch1.x - 200), obj_battlesolid_ch1.y, 1591)
            gml_Script_scr_bullet_inherit_ch1(scythe)
            scythe.image_angle = (270 + random(120))
        }
    }
    if (type == 56)
    {
        if (btimer >= 29 && made == 0)
        {
            btimer = 0
            xchoose = choose(-250)
            scythe = gml_Script_instance_create_ch1((obj_battlesolid_ch1.x + xchoose), obj_battlesolid_ch1.y, 1591)
            gml_Script_scr_bullet_inherit_ch1(scythe)
            scythe.image_angle = random(90)
            scythe.type = 3
            scythe.friction = -0.25
            if (xchoose > 0)
                scythe.hspeed = -1
            if (xchoose < 0)
                scythe.hspeed = 1
        }
    }
    if (type == 57)
    {
        if (btimer >= 40 && made == 0)
        {
            btimer = 0
            made = 1
            scythe = gml_Script_instance_create_ch1((obj_battlesolid_ch1.x - 140), obj_battlesolid_ch1.y, 1591)
            gml_Script_scr_bullet_inherit_ch1(scythe)
            scythe.anglespeed = -12
            scythe.image_angle = (270 + random(120))
        }
    }
    if (type == 58)
    {
        if (btimer >= 40 && made == 0)
        {
            btimer = 0
            made = 1
            scythe = gml_Script_instance_create_ch1((obj_battlesolid_ch1.x - 150), obj_battlesolid_ch1.y, 1591)
            scythe.anglespeed = -17
            scythe.image_angle = (270 + random(120))
        }
    }
    if (type == 60)
    {
        if (btimer >= 40 && made == 0)
        {
            btimer = 0
            made = 1
            for (i = 0; i < 3; i += 1)
            {
                for (j = 0; j < 7; j += 1)
                {
                    horse1 = gml_Script_instance_create_ch1((obj_battlesolid_ch1.x + 150), ((obj_battlesolid_ch1.y - 80) + (i * 80)), 1592)
                    horse1.siner = (j * 18)
                    horse1.vsin = (j * 9)
                    gml_Script_scr_bullet_inherit_ch1(horse1)
                }
            }
        }
    }
    if (type == 61)
    {
        if (btimer >= 40 && made == 0)
        {
            btimer = 0
            made = 1
            horse = 0
            vseed = random(300)
            for (j = 0; j < 3; j += 1)
            {
                for (i = 0; i < 3; i += 1)
                {
                    horse1 = gml_Script_instance_create_ch1((obj_battlesolid_ch1.x + 150), ((obj_battlesolid_ch1.y - 80) + (i * 80)), 1592)
                    horse1.siner = (j * 42)
                    horse1.vsin = (0 + vseed)
                    horse1.image_index = 0
                    horse1.altmode = 2
                    horse1.sinspeed = 1.1
                    gml_Script_scr_bullet_inherit_ch1(horse1)
                    horse1 = gml_Script_instance_create_ch1((obj_battlesolid_ch1.x + 150), ((obj_battlesolid_ch1.y - 80) + (i * 80)), 1592)
                    horse1.siner = ((j * 42) + 21)
                    horse1.vsin = (0 + vseed)
                    horse1.image_index = 1
                    horse1.altmode = 1
                    horse1.sinspeed = 1.1
                    gml_Script_scr_bullet_inherit_ch1(horse1)
                    chance = floor(random(50))
                    if (chance == 1)
                        horse1.image_index = 2
                }
                if (horse == 0)
                    horse = 1
                else
                    horse = 0
            }
        }
    }
    if (type == 62)
    {
        if (btimer >= 40 && made == 0)
        {
            btimer = 0
            made = 1
            for (i = 0; i < 3; i += 1)
            {
                for (j = 0; j < 7; j += 1)
                {
                    horse1 = gml_Script_instance_create_ch1((obj_battlesolid_ch1.x + 150), ((obj_battlesolid_ch1.y - 80) + (i * 80)), 1592)
                    horse1.siner = (j * 18)
                    horse1.vsin = (j * 9)
                    horse1.sinspeed = 1.15
                    horse1.altmode = 3
                    gml_Script_scr_bullet_inherit_ch1(horse1)
                }
            }
        }
    }
    if (type == 65)
    {
        if (btimer >= 60)
        {
            ring = gml_Script_instance_create_ch1(obj_battlesolid_ch1.x, obj_battlesolid_ch1.y, 1594)
            ring.maxspade = 10
            ring.grav = 0.4
            gml_Script_scr_bullet_inherit_ch1(ring)
            btimer = 0
        }
    }
    if (type == 66)
    {
        if (btimer >= 30)
        {
            ring = gml_Script_instance_create_ch1(obj_battlesolid_ch1.x, obj_battlesolid_ch1.y, 1594)
            ring.maxspade = 6
            ring.grav = 3
            ring.size = 1.5
            gml_Script_scr_bullet_inherit_ch1(ring)
            btimer = 0
        }
    }
    if (type == 67)
    {
        if (btimer >= 20)
        {
            ring = gml_Script_instance_create_ch1(obj_battlesolid_ch1.x, obj_battlesolid_ch1.y, 1594)
            ring.grav = 0.2
            ring.maxspade = 4
            ring.special = 1
            gml_Script_scr_bullet_inherit_ch1(ring)
            btimer = 0
        }
    }
    if (type == 68)
    {
        with (obj_heart_ch1)
            wspeed = 5
        if (btimer >= 54)
        {
            ring = gml_Script_instance_create_ch1(obj_battlesolid_ch1.x, obj_battlesolid_ch1.y, 1594)
            ring.side = choose(0, 1)
            ring.grav = 0.45
            ring.maxspade = 10
            gml_Script_scr_bullet_inherit_ch1(ring)
            btimer = 0
        }
    }
    if (type == 70)
    {
        if (btimer >= 20 && global.turntimer >= 30)
        {
            jokerx = choose(((obj_battlesolid_ch1.x - 100) - random(100)), ((obj_battlesolid_ch1.x + 100) + random(100)))
            jokery = choose((obj_battlesolid_ch1.y - random(100)), (obj_battlesolid_ch1.y + random(100)))
            jokern = gml_Script_instance_create_ch1(jokerx, jokery, 1593)
            jokern.type = 1
            gml_Script_scr_bullet_inherit_ch1(jokern)
            jokern.active = false
            btimer = 0
        }
    }
    if (type == 71)
    {
        if (btimer >= 9 && global.turntimer >= 20)
        {
            jokerx = choose(((obj_battlesolid_ch1.x - 100) - random(100)), ((obj_battlesolid_ch1.x + 100) + random(100)))
            jokery = choose((obj_battlesolid_ch1.y - random(100)), (obj_battlesolid_ch1.y + random(100)))
            jokern = gml_Script_instance_create_ch1(jokerx, jokery, 1593)
            gml_Script_scr_bullet_inherit_ch1(jokern)
            jokern.active = false
            btimer = 0
        }
    }
    if (type == 72)
    {
        if (btimer >= 18)
        {
            btimer = 0
            if (side == 1)
                dir = choose(225, 315)
            if (side == -1)
                dir = choose(45, 135)
            radius = 360
            xx = lengthdir_x(radius, dir)
            yy = lengthdir_y(radius, dir)
            d = gml_Script_instance_create_ch1(((obj_heart_ch1.x + 8) + xx), ((obj_heart_ch1.y + 8) + yy), 1553)
            d.direction = (dir + 180)
            d.speed = 20
            d.friction = 1
            d.type = 2
            d.damage = damage
            d.target = target
            var _temp_local_var_62 = d
            image_angle = direction
        }
    }
    if (type == 73)
    {
        if (btimer >= 4)
        {
            btimer = 0
            radius = (140 + random(40))
            yy = (radius * side)
            xx = (-100 + random(200))
            num = choose(0, 1, 2, 3)
            if (num == 3)
                xx = (-10 + random(20))
            if instance_exists(obj_battlesolid_ch1)
            {
                db = gml_Script_instance_create_ch1(((obj_heart_ch1.x + 8) + xx), (obj_battlesolid_ch1.y + 100), 1555)
                var _temp_local_var_63 = db
                type = 1
            }
        }
    }
    if (type == 74)
    {
        if (btimer >= 9)
        {
            btimer = 0
            radius = (140 + random(40))
            yy = (radius * side)
            xx = (-100 + random(200))
            num = choose(0, 1, 2, 3)
            if (num == 3)
                xx = (-10 + random(20))
            d = gml_Script_instance_create_ch1(((obj_heart_ch1.x + 8) + xx), ((obj_heart_ch1.y + 8) + yy), 1555)
            d.grazepoints = 12
            d.timepoints = 2
            d.damage = damage
            d.target = target
        }
    }
    if (type == 75 || type == 76)
    {
        if (btimer >= 0 && special == 0)
        {
            gml_Script_snd_play_ch1(363)
            scythe = gml_Script_instance_create_ch1(0, 0, 1589)
            obj_centerscythe_ch1.damage = damage
            obj_centerscythe_ch1.grazepoints = grazepoints
            obj_centerscythe_ch1.timepoints = timepoints
            obj_centerscythe_ch1.inv = inv
            obj_centerscythe_ch1.target = target
            obj_centerscythe_ch1.grazed = 0
            obj_centerscythe_ch1.grazetimer = 0
            special = 1
        }
    }
    if (type == 77)
    {
        global.sp = 10
        with (obj_heart_ch1)
            wspeed = 10
        if (special == 0)
        {
            gml_Script_snd_play_ch1(469)
            prevmake = 0
            special = 1
            rank = 16
            realtimer = 0
            chase = 0
            made = 0
            amount = 0
            jokertimer = 0
            darkfader = gml_Script_scr_dark_marker_ch1((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) - 10), 3937)
            var _temp_local_var_66 = darkfader
            depth = 2
            image_alpha = 0
            image_blend = c_black
            image_xscale = 200
            image_yscale = 2
        }
        if (realtimer >= 0 && realtimer < 10)
        {
            var _temp_local_var_68 = darkfader
            image_alpha += 0.1
        }
        if (realtimer == 10)
        {
            with (obj_battlesolid_ch1)
                instance_destroy()
        }
        if (realtimer == 20)
            gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 40), -60, 1590)
        if (realtimer == 40)
            gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 570), -60, 1590)
        if (realtimer >= 60 && amount < 30)
        {
            if (btimer >= rank)
            {
                if (rank > 7)
                    rank -= 1
                which = floor(random(5))
                if (which == prevmake)
                    which = floor(random(5))
                if (chase == 3)
                {
                    which = floor(((obj_heart_ch1.x + 8) / 90))
                    chase = 0
                }
                scythe = gml_Script_instance_create_ch1(((gml_Script___view_get(0, 0) + 40) + (90 * which)), -60, 1590)
                if (which == 1)
                    scythe2 = gml_Script_instance_create_ch1(((gml_Script___view_get(0, 0) + 40) + 450), -60, 1590)
                if (which == 0)
                    scythe2 = gml_Script_instance_create_ch1(((gml_Script___view_get(0, 0) + 40) + 540), -60, 1590)
                prevmake = which
                btimer = 0
                chase += 1
                amount += 1
            }
        }
        if (amount >= (29 - made) && special == 1)
        {
            jokertimer = 0
            jokerin = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 100), 1593)
            var _temp_local_var_71 = jokerin
            type = 66
            depth = -30
        }
        if (special == 2)
        {
            jokertimer += 1
            if (jokertimer == 10)
                gml_Script_snd_play_ch1(gml_Script_scr_84_get_sound_ch1("snd_joker_neochaos"))
            if (jokertimer == 40 || jokertimer == 98)
            {
                scythe = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 40), -60, 1590)
                scythe = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 580), -60, 1590)
            }
            if (jokertimer == 46 || jokertimer == 86)
            {
                scythe = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 130), -60, 1590)
                scythe = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 490), -60, 1590)
            }
            if (jokertimer == 52 || jokertimer == 80)
            {
                scythe = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 220), -60, 1590)
                scythe = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 400), -60, 1590)
            }
            if (jokertimer == 66 || jokertimer == 98)
                scythe = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 310), -60, 1590)
            if (jokertimer == 130)
            {
                lastscythe = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 320), -320, 1590)
                p = 0
                vol = 0
                vol2 = 1
                rumnoise = audio_play_sound(snd_rumble_ch1, 50, true)
                var _temp_local_var_76 = lastscythe
                vspeed = 1
                gravity = 0.02
                image_xscale = 16
                image_yscale = 16
                scale = 16
                rotspeed = 0
                remrot = 160
                image_angle = 160
            }
            if (jokertimer >= 131)
            {
                var _temp_local_var_77 = lastscythe
                x = (xstart + random(8))
            }
        }
        if (special == 3)
        {
            with (obj_heart_ch1)
            {
                x = (gml_Script___view_get(0, 0) + 320)
                y = (gml_Script___view_get(1, 0) + 120)
            }
            vol -= 0.1
            audio_sound_gain(rumnoise, vol, 0)
            var _temp_local_var_81 = fadewhite
            image_alpha -= 0.1
        }
        realtimer += 1
    }
}
