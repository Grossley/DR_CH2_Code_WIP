var _temp_local_var_1, _temp_local_var_15;
wallcheck = 0
press_l = 0
press_r = 0
press_d = 0
press_u = 0
bkx = 0
bky = 0
bkxy = 0
jelly = 2
press_l = 1
press_r = 1
press_u = 1
press_d = 1
px = 0
py = 0
if canmove
{
    if (press_r == 1)
        px = wspeed
    if (press_l == 1)
        px = (-wspeed)
    if (press_d == 1)
        py = wspeed
    if (press_u == 1)
        py = (-wspeed)
}
xmeet = 0
ymeet = 0
xymeet = 0
if place_meeting((x + px), (y + py), obj_battlesolid)
    xymeet = 1
if place_meeting((x + px), y, obj_battlesolid)
{
    if place_meeting((x + px), y, obj_battlesolid)
    {
        g = wspeed
        while (g > 0)
        {
            mvd = 0
            if (press_d == 0 && (!place_meeting((x + px), (y - g), obj_battlesolid)))
            {
                y -= g
                py = 0
                break
            }
            else if (press_u == 0 && mvd == 0 && (!place_meeting((x + px), (y + g), obj_battlesolid)))
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
            if (!place_meeting((x + i), y, obj_battlesolid))
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
            if (!place_meeting((x + i), y, obj_battlesolid))
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
if place_meeting(x, (y + py), obj_battlesolid)
{
    ymeet = 1
    bky = 0
    if place_meeting(x, (y + py), obj_battlesolid)
    {
        g = wspeed
        while (g > 0)
        {
            mvd = 0
            if (press_r == 0 && (!place_meeting((x - g), (y + py), obj_battlesolid)))
            {
                x -= g
                px = 0
                break
            }
            else if (mvd == 0 && press_l == 0 && (!place_meeting((x + g), (y + py), obj_battlesolid)))
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
            if (!place_meeting(x, (y + i), obj_battlesolid))
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
            if (!place_meeting(x, (y + i), obj_battlesolid))
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
if place_meeting((x + px), (y + py), obj_battlesolid)
{
    xymeet = 1
    bkxy = 0
    i = px
    j = py
    while (j != 0 || i != 0)
    {
        if (!place_meeting((x + i), (y + j), obj_battlesolid))
        {
            px = i
            py = j
            bkxy = 1
        }
        else
        {
            if (j >= 1)
            {
                if (j > 0)
                    j -= 1
                if (j < 0)
                    j += 1
            }
            else
                j = 0
            if (i >= 1)
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
if ((x + px) >= ((gml_Script___view_get(0, 0) + 640) - sprite_width))
    px = (((gml_Script___view_get(0, 0) + 640) - sprite_width) - x)
if ((x + px) <= 0)
    px = (-x)
if ((y + py) <= 0)
    py = (-y)
if ((y + py) >= (((gml_Script___view_get(1, 0) + 320) - sprite_height) + boundaryup))
    py = ((((gml_Script___view_get(1, 0) + 320) - sprite_height) - y) + boundaryup)
x += px
y += py
if (dmgnoise == true)
{
    dmgnoise = false
    170
    170
}
global.inv -= 1
if (global.inv > 0)
    image_speed = 0.25
else
{
    image_speed = 0
    image_index = 0
}
global.heartx = ((x + 2) - gml_Script___view_get(0, 0))
global.hearty = ((y + 2) - gml_Script___view_get(1, 0))
if (color == 0x000001)
{
    wspeed = 5
    if (chargeshot_delay > 0)
        chargeshot_delay--
    if 1
    {
        if (589 < 3 && chargeshot_delay == 0)
        {
            gml_Script_instance_create((x + 10), (y + 10), obj_yheart_shot)
            131
        }
    }
    if (z_hold == 20)
    {
        chargeshot_sound = 130
        gml_Script_snd_pitch(chargeshot_sound, 0.1)
        gml_Script_snd_volume(chargeshot_sound, 0, 0)
        gml_Script_snd_volume(chargeshot_sound, 0.3, 20)
    }
    if (z_hold >= 20 && z_hold < 40)
        gml_Script_snd_pitch(chargeshot_sound, (0.1 + ((z_hold - 20) / 20)))
    if (z_hold >= 40)
        image_index = 2
    if (z_hold >= 40)
    {
    }
    else
        var _temp_local_var_15 = 0
    chargeshot_sound
    135
    bigshot = gml_Script_instance_create((x + 10), (y + 10), obj_yheart_shot)
    bigshot.big = 1
    bigshot.sprite_index = spr_yheart_bigshot
    bigshot.hspeed = (4 * f)
    bigshot.friction = (-0.2 * f)
    bigshot.image_alpha = 0.5
    bigshot.image_xscale = 0.1
    bigshot.image_yscale = 2
    z_hold = 0
    chargeshot_delay = 5
    image_index = 0
    if (global.chapter == 2 && 694)
        obj_spamton_neo_enemy.bigshotused = 1
    if (global.chapter == 2 && 694 && obj_spamton_neo_enemy.bigshotcount > 0)
    {
        bigshot.hspeed = (10 * f)
        bigshot.trail = 1
        obj_spamton_neo_enemy.bigshotcount--
        if (obj_spamton_neo_enemy.bigshotcount == 0)
        {
            gml_Script_instance_create(x, y, obj_supercharge_end)
            161
            var a = 45
            repeat (8)
            {
                part = gml_Script_instance_create((other.x + 10), (other.y + 10), obj_yheart_sneo_particle)
                part.direction = (a + random(15))
                part.image_xscale = (2 + random(2))
                part.image_yscale = (2 + random(2))
                part.speed = 16
                part.friction = 0.8
                a += 45
            }
        }
        else
        {
            a = 45
            repeat (8)
            {
                part = gml_Script_instance_create((other.x + 10), (other.y + 10), obj_yheart_sneo_particle)
                part.direction = (a + random(15))
                part.speed = 8
                part.friction = 0.8
                a += 45
            }
        }
    }
    if (global.chapter == 2 && 694 && obj_spamton_neo_enemy.bigshotcount > 0)
        z_hold_f += 1
    z_hold_f += 1
    z_hold = (z_hold_f * 2)
}
