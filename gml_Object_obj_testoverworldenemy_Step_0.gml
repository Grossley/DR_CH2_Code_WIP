var _temp_local_var_5, _temp_local_var_7, _temp_local_var_8;
if (con == 0)
{
    if (global.interact == 0)
        frozen = false
    if 200
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
        hnka = 137
        con = 2
        alarm[4] = 8
    }
    if (washit == 1 || global.ambush == 2)
    {
        hnka = 165
        con = 4
        alarm[4] = 10
    }
    if (washit == 0 && global.ambush == 1)
    {
        140
        con = 4
        alarm[4] = 10
    }
}
if (con == 3)
{
    hnkb = 137
    gml_Script_snd_pitch(hnkb, 1.1)
    con = 4
    alarm[4] = 12
}
if (con == 5)
{
    depth = 5000
    gml_Script_instance_create(0, 0, obj_battleback)
    gml_Script_instance_create(0, 0, obj_encounterbasic)
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
                copy[cc] = gml_Script_scr_dark_marker(x, y, sprite_index)
                copy[cc].direction = point_direction(x, y, global.monstermakex[cc], global.monstermakey[cc])
                copy[cc].speed = (point_distance(x, y, global.monstermakex[cc], global.monstermakey[cc]) / 10)
                copy[cc].depth = ((depth - 1) - cc)
            }
            else
            {
                copy[cc] = gml_Script_scr_dark_marker((global.monstermakex[cc] + 200), global.monstermakey[cc], global.monsterinstancetype[cc])
                copy[cc].cc = cc
                copy[cc].depth = ((depth - 1) - cc)
                var _temp_local_var_5 = copy[cc]
                direction = point_direction(x, y, global.monstermakex[cc], global.monstermakey[cc])
                speed = (point_distance(x, y, global.monstermakex[cc], global.monstermakey[cc]) / 10)
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
    c = 0
    while (c < 3)
    {
        var _temp_local_var_7 = copy[c]
        speed = 0
    }
    speed = 0
    if 355
    {
        if (eraser == true)
        {
            with (obj_chaseenemy)
                // WARNING: Popz'd an empty stack.
        }
        if (eraser == 2)
        {
            with (obj_chaseenemy)
            {
                if (eraser == 2)
                    // WARNING: Popz'd an empty stack.
            }
        }
        // WARNING: Popz'd an empty stack.
        c = 0
        while (c < 3)
            var _temp_local_var_8 = copy[c]
    }
}
