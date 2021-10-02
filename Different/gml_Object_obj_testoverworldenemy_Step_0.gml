if (con == 0)
{
    if (global.interact == 0)
        frozen = false
    if scr_outside_camera(200)
        frozen = true
    else
        frozen = false
    if (global.interact != 0)
        frozen = true
    if (frozen == true)
    {
        if (hadfrozen == false)
        {
            remspeed = speed
            speed = 0
            hadfrozen = true
        }
    }
    if (frozen == false)
    {
        if (hadfrozen == true)
        {
            if (speed == 0)
                speed = remspeed
            hadfrozen = false
        }
    }
    if (frozen == false)
    {
        fliptimer += 1
        if (fliptimer >= 30)
        {
            vspeed = (-vspeed)
            fliptimer = 0
        }
    }
}
if (con == 1)
{
    sprite_index = touchsprite
    if (washit == 0 && global.ambush == 0)
    {
        hnka = snd_play(snd_tensionhorn)
        con = 2
        alarm[4] = 8
    }
    if (washit == 1 || global.ambush == 2)
    {
        hnka = snd_play(snd_break2)
        con = 4
        alarm[4] = 10
    }
    if (washit == 0 && global.ambush == 1)
    {
        snd_play(snd_battleenter)
        con = 4
        alarm[4] = 10
    }
}
if (con == 3)
{
    hnkb = snd_play(snd_tensionhorn)
    snd_pitch(hnkb, 1.1)
    con = 4
    alarm[4] = 12
}
if (con == 5)
{
    depth = 5000
    instance_create(0, 0, obj_battleback)
    instance_create(0, 0, obj_encounterbasic)
    con = 6
    sprite_index = slidesprite
    direction = point_direction(x, y, global.monstermakex[whichmonster], global.monstermakey[whichmonster])
    speed = (point_distance(x, y, global.monstermakex[whichmonster], global.monstermakey[whichmonster]) / 10)
    copyhave = 0
    copy[0] = self
    copy[1] = self
    copy[2] = self
    for (cc = 0; cc < 3; cc += 1)
    {
        if (global.monstertype[cc] != 0 && cc != whichmonster)
        {
            copyhave += 1
            if (global.monstertype[cc] == global.monstertype[whichmonster])
            {
                copy[cc] = scr_dark_marker(x, y, sprite_index)
                copy[cc].direction = point_direction(x, y, global.monstermakex[cc], global.monstermakey[cc])
                copy[cc].speed = (point_distance(x, y, global.monstermakex[cc], global.monstermakey[cc]) / 10)
                copy[cc].depth = ((depth - 1) - cc)
            }
            else
            {
                copy[cc] = scr_dark_marker((global.monstermakex[cc] + 200), global.monstermakey[cc], object_get_sprite(global.monsterinstancetype[cc]))
                copy[cc].cc = cc
                copy[cc].depth = ((depth - 1) - cc)
                with (copy[cc])
                {
                    direction = point_direction(x, y, global.monstermakex[cc], global.monstermakey[cc])
                    speed = (point_distance(x, y, global.monstermakex[cc], global.monstermakey[cc]) / 10)
                }
            }
        }
    }
    afterimagetimer = 0
    alarm[4] = 10
}
if (con == 6)
{
}
if (con == 7)
{
    for (c = 0; c < 3; c += 1)
    {
        with (copy[c])
            speed = 0
    }
    speed = 0
    if instance_exists(obj_battlecontroller)
    {
        if (eraser == true)
        {
            with (obj_chaseenemy)
                instance_destroy()
        }
        if (eraser == 2)
        {
            with (obj_chaseenemy)
            {
                if (eraser == 2)
                    instance_destroy()
            }
        }
        instance_destroy()
        for (c = 0; c < 3; c += 1)
        {
            with (copy[c])
                instance_destroy()
        }
    }
}
