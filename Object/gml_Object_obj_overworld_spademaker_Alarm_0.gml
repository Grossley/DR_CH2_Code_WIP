if (homing == 1)
{
    dir = random(360)
    radius = (200 + random(40))
    dirx = lengthdir_x(radius, dir)
    diry = lengthdir_y(radius, dir)
    xx = ((dirx + obj_mainchara.x) + 10)
    yy = ((diry + obj_mainchara.y) + 40)
    gml_Script_instance_create(xx, yy, obj_overworld_spade_homing)
    alarm[0] = 10
}
if (homing == 0)
{
    radius = (-300 + random(1000))
    if (global.facing == 3)
        radius *= -1
    alarm[0] = 5
    fallspade = gml_Script_instance_create((obj_mainchara.x + radius), (gml_Script___view_get(1, 0) - 500), obj_overworld_spade)
    var _temp_local_var_1 = fallspade
    image_angle = 270
    gravity = 0.08
    speed = 0
    vspeed = 6
    hspeed = (-0.8 + random(1.6))
}
if (homing == 2)
{
    alarmamt = (10 - (intensity / 20))
    if (alarmamt < 5)
        alarmamt = 5
    var _temp_local_var_2 = sidespade[side]
    speed = 11
}
if (homing == 3)
{
    radius = (100 + random(900))
    if (global.facing == 3)
        radius -= 500
    alarm[0] = 7
    fallspade = gml_Script_instance_create((obj_mainchara.x + radius), choose((gml_Script___view_get(1, 0) + 550), (gml_Script___view_get(1, 0) - 100)), obj_overworld_spade)
    damage -= 4
    damage += (global.battledf[0] * 2)
    image_xscale = 1.5
    image_yscale = 1.5
    friction = -0.1
    sprite_index = spr_diamondbullet
    if (fallspade >= (y.room_height / 2))
    {
        image_angle = 135
        vspeed = -5
        hspeed = -5
    }
    else
    {
        image_angle = 225
        vspeed = 5
        hspeed = -5
    }
}
if (homing == 4)
{
    slow_bonus = (1 - (global.hp[1] / global.maxhp[1]))
    alarm[0] = (20 + (15 * slow_bonus))
    side = choose(0, 1)
    if (obj_mainchara.y >= 400)
    {
        i = 0
        while (i < 6)
        {
            fallspade = gml_Script_instance_create(((220 + (20 * i)) + (side * 120)), (gml_Script___view_get(1, 0) + 500), obj_overworld_spade)
            fallspade.vvalue = (-10 + (3 * slow_bonus))
            fallspade.fvalue = (-0.5 + (0.2 * slow_bonus))
            var _temp_local_var_5 = fallspade
            damage -= 4
            damage += (global.battledf[0] * 2)
            image_angle = 90
            image_xscale = 1.5
            image_yscale = 1.5
            vspeed = vvalue
            friction = fvalue
            sprite_index = spr_diamondbullet
        }
    }
}
if (side == 0)
    side = 1
else
    side = 0
