if (con == 0)
{
    if (global.interact == 0)
        frozen = false
    if gml_Script_scr_outside_camera_ch1(200)
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
    hnka = gml_Script_snd_play_ch1(405)
    con = 2
    alarm[4] = 8
}
if (con == 3)
{
    hnkb = gml_Script_snd_play_ch1(405)
    gml_Script_snd_pitch_ch1(hnkb, 1.1)
    con = 4
    alarm[4] = 12
}
if (con == 5)
{
    depth = 5000
    gml_Script_instance_create_ch1(0, 0, 1624)
    gml_Script_instance_create_ch1(0, 0, 1488)
    con = 6
    sprite_index = slidesprite
    direction = point_direction(x, y, global.monstermakex[0], global.monstermakey[0])
    speed = (point_distance(x, y, global.monstermakex[0], global.monstermakey[0]) / 10)
    copyhave = 0
    for (cc = 0; cc < 2; cc += 1)
    {
        if (global.monstertype[(cc + 1)] != 0)
        {
            copyhave += 1
            if (global.monstertype[(cc + 1)] == global.monstertype[0])
            {
                copy[cc] = gml_Script_scr_dark_marker_ch1(x, y, sprite_index)
                copy[cc].direction = point_direction(x, y, global.monstermakex[(cc + 1)], global.monstermakey[(cc + 1)])
                copy[cc].speed = (point_distance(x, y, global.monstermakex[(cc + 1)], global.monstermakey[(cc + 1)]) / 10)
                copy[cc].depth = ((depth - 1) - cc)
            }
            else
            {
                copy[cc] = gml_Script_scr_dark_marker_ch1((global.monstermakex[(cc + 1)] + 200), global.monstermakey[(cc + 1)], object_get_sprite(global.monsterinstancetype[(cc + 1)]))
                copy[cc].cc = cc
                copy[cc].depth = ((depth - 1) - cc)
                with (copy[cc])
                {
                    direction = point_direction(x, y, global.monstermakex[(cc + 1)], global.monstermakey[(cc + 1)])
                    speed = (point_distance(x, y, global.monstermakex[(cc + 1)], global.monstermakey[(cc + 1)]) / 10)
                }
            }
        }
    }
    alarm[4] = 10
}
if (con == 7)
{
    if (copyhave > 0)
    {
        for (c = 0; c < copyhave; c += 1)
        {
            with (copy[c])
                speed = 0
        }
    }
    speed = 0
    if instance_exists(obj_battlecontroller_ch1)
    {
        if (eraser == true)
        {
            with (obj_chaseenemy_ch1)
                instance_destroy()
        }
        instance_destroy()
        if (copyhave > 0)
        {
            for (c = 0; c < copyhave; c += 1)
            {
                with (copy[c])
                    instance_destroy()
            }
        }
    }
}
