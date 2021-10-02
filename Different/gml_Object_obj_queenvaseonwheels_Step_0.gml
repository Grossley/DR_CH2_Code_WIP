if (active == true)
{
    if (global.interact == 0)
    {
        t = ((t + increment) % 360)
        shift = (amplitude * dsin(t))
        x = (xx + shift)
        if (type == 0)
        {
            if (place_meeting(x, y, obj_caterpillarchara) || place_meeting(x, y, obj_mainchara) || place_meeting(x, y, obj_actor))
            {
                if instance_exists(obj_controller_dw_mansion_east_1f_a)
                    obj_controller_dw_mansion_east_1f_a.triggered = 1
                image_index = 1
                snd_play(choose(165, 166))
                brokenpot = scr_dark_marker(x, y, sprite_index)
                brokenpot.image_index = 1
                with (brokenpot)
                    scr_depth_alt()
                if (room == room_dw_mansion_east_2f_c)
                {
                    if instance_exists(obj_swatch_potchaser)
                    {
                        with (obj_swatch_potchaser)
                        {
                            newenem = instance_create(x, y, obj_chaseenemy)
                            with (newenem)
                            {
                                if (other.sprite_index == spr_npc_swatchling_scared)
                                {
                                    if (other.image_xscale == -2)
                                    {
                                        x = (other.x - 110)
                                        y = (other.y + 2)
                                    }
                                    else
                                    {
                                        x = (other.x - 12)
                                        y = (other.y + 2)
                                    }
                                }
                                else if (other.image_xscale == -2)
                                {
                                    x = (other.x - 142)
                                    y = other.y
                                }
                                else
                                {
                                    x = (other.x + 24)
                                    y = other.y
                                }
                                myencounter = 56
                                sprite_index = spr_npc_swatchling_sweep_walk
                                touchsprite = spr_npc_swatchling_sweep_walk
                                radius = 10000
                                ignoresolid = true
                                alertcon = 0
                                eraser = true
                                facing = 1
                            }
                            instance_destroy()
                        }
                    }
                    if instance_exists(obj_controller_dw_mansion_potBalance)
                        obj_controller_dw_mansion_potBalance.triggered = 1
                }
                active = false
            }
        }
        if (type == 1)
        {
            if (con == 0)
            {
                if (place_meeting(x, y, obj_caterpillarchara) || place_meeting(x, y, obj_mainchara) || place_meeting(x, y, obj_actor))
                {
                    active = false
                    global.interact = 1
                    con = 1
                }
            }
        }
    }
}
else
    image_index = 1
if (x > xprevious)
    going = "right"
if (x < xprevious)
    going = "left"
tellspeed = (x - xprevious)
if (con == 1)
{
    pipismarker = scr_dark_marker(x, (y - (sprite_height / 2)), spr_pipis_egg)
    wheel1 = scr_marker((x - 8), ((y - 8) + (active * 8)), spr_thrash_wheel)
    wheel2 = scr_marker((x + 8), ((y - 8) + (active * 8)), spr_thrash_wheel)
    wheel1.hspeed = 16
    wheel2.hspeed = -16
    wheel1.friction = 0.5
    wheel2.friction = 0.5
    wheel1.depth = (depth + 10)
    wheel2.depth = (depth - 10)
    scr_doom(wheel1, 30)
    scr_doom(wheel2, 30)
    scr_darksize(pipismarker)
    visible = false
    myinteract = 0
    snd_play_pitch(snd_spamton_laugh, 1.4)
    con = 2
    timer = 0
    boss = true
}
if (con == 2)
{
    timer++
    if (timer == 15)
    {
        alarm[4] = 30
        global.flag[9] = 2
        scr_battle(102, false, pipismarker, obj_sneo_friedpipis, obj_sneo_friedpipis)
    }
}
if (con == 3)
    instance_destroy()
