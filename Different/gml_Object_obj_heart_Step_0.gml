wallcheck = 0
press_l = 0
press_r = 0
press_d = 0
press_u = 0
bkx = 0
bky = 0
bkxy = 0
jelly = 2
if left_h()
    press_l = 1
if right_h()
    press_r = 1
if up_h()
    press_u = 1
if down_h()
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
    if button2_h()
    {
        px = ceil((px * 0.5))
        py = ceil((py * 0.5))
    }
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
            if (abs(j) >= 1)
            {
                if (j > 0)
                    j -= 1
                if (j < 0)
                    j += 1
            }
            else
                j = 0
            if (abs(i) >= 1)
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
if ((x + px) >= ((__view_get((0 << 0), 0) + 640) - sprite_width))
    px = (((__view_get((0 << 0), 0) + 640) - sprite_width) - x)
if ((x + px) <= 0)
    px = (-x)
if ((y + py) <= 0)
    py = (-y)
if ((y + py) >= (((__view_get((1 << 0), 0) + 320) - sprite_height) + boundaryup))
    py = ((((__view_get((1 << 0), 0) + 320) - sprite_height) - y) + boundaryup)
x += px
y += py
if (dmgnoise == true)
{
    dmgnoise = false
    snd_stop(snd_hurt1)
    snd_play(snd_hurt1)
}
global.inv -= 1
if (global.inv > 0)
    image_speed = 0.25
else
{
    image_speed = 0
    image_index = 0
}
global.heartx = ((x + 2) - __view_get((0 << 0), 0))
global.hearty = ((y + 2) - __view_get((1 << 0), 0))
if (color == 0x000001)
{
    wspeed = 5
    if (chargeshot_delay > 0)
        chargeshot_delay--
    if (button1_p() || (z_hold >= 10 && z_hold <= 39 && button1_r()))
    {
        if (instance_number(obj_yheart_shot) < 3 && chargeshot_delay == 0)
        {
            instance_create((x + 10), (y + 10), obj_yheart_shot)
            snd_play(snd_heartshot_dr_b)
        }
    }
    if (z_hold == 20)
    {
        chargeshot_sound = snd_loop(snd_chargeshot_charge)
        snd_pitch(chargeshot_sound, 0.1)
        snd_volume(chargeshot_sound, 0, 0)
        snd_volume(chargeshot_sound, 0.3, 20)
    }
    if (z_hold >= 20 && z_hold < 40)
        snd_pitch(chargeshot_sound, (0.1 + ((z_hold - 20) / 20)))
    if (z_hold >= 40)
        image_index = 2
    if (z_charge < 15)
        chargeshotcount = 0
    if (z_hold >= 40 && button1_r())
    {
        snd_stop(chargeshot_sound)
        snd_play(snd_chargeshot_fire)
        bigshot = instance_create((x + 10), (y + 10), obj_yheart_shot)
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
        chargeshotcount++
        if (chargeshotcount > 1)
        {
            with (obj_spamton_neo_enemy)
                event_user(4)
        }
        if (global.chapter == 2 && instance_exists(obj_spamton_neo_enemy))
            obj_spamton_neo_enemy.bigshotused = 1
        if (global.chapter == 2 && instance_exists(obj_spamton_neo_enemy) && obj_spamton_neo_enemy.bigshotcount > 0)
        {
            bigshot.hspeed = (10 * f)
            bigshot.trail = 1
            obj_spamton_neo_enemy.bigshotcount--
            if (obj_spamton_neo_enemy.bigshotcount == 0)
            {
                instance_create(x, y, obj_supercharge_end)
                snd_play(snd_stardrop)
                var a = random(45)
                repeat (8)
                {
                    part = instance_create((other.x + 10), (other.y + 10), obj_yheart_sneo_particle)
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
                a = random(45)
                repeat (8)
                {
                    part = instance_create((other.x + 10), (other.y + 10), obj_yheart_sneo_particle)
                    part.direction = (a + random(15))
                    part.speed = 8
                    part.friction = 0.8
                    a += 45
                }
            }
        }
    }
    if button1_h()
    {
        if (global.chapter == 2 && instance_exists(obj_spamton_neo_enemy) && obj_spamton_neo_enemy.bigshotcount > 0)
            z_hold_f += 1
        z_hold_f += 1
    }
    else
    {
        z_hold_f = 0
        snd_stop(chargeshot_sound)
    }
    z_hold = (z_hold_f * 2)
}
