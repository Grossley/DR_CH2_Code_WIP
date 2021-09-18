var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3;
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
    hnka = 405
    con = 2
    alarm[4] = 8
}
if (con == 3)
{
    hnkb = 405
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
                copy[cc] = gml_Script_scr_dark_marker_ch1((global.monstermakex[(cc + 1)] + 200), global.monstermakey[(cc + 1)], global.monsterinstancetype[(cc + 1)])
                copy[cc].cc = cc
                copy[cc].depth = ((depth - 1) - cc)
                var _temp_local_var_1 = copy[cc]
                direction = point_direction(x, y, global.monstermakex[(cc + 1)], global.monstermakey[(cc + 1)])
                speed = (point_distance(x, y, global.monstermakex[(cc + 1)], global.monstermakey[(cc + 1)]) / 10)
            }
        }
    }
    alarm[4] = 10
}
if (con == 7)
{
    if (copyhave > 0)
    {
        c = 0
        while (c < copyhave)
        {
            var _temp_local_var_2 = copy[c]
            speed = 0
        }
    }
    speed = 0
    if 1513
    {
        if (eraser == true)
        {
            with (obj_chaseenemy_ch1)
                // WARNING: Popz'd an empty stack.
        }
        // WARNING: Popz'd an empty stack.
        if (copyhave > 0)
        {
            c = 0
            while (c < copyhave)
                var _temp_local_var_3 = copy[c]
        }
    }
}
