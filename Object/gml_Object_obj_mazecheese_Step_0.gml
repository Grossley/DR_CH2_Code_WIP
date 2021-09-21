if (con == 1 && myinteract == 3 && (!gml_Script_d_ex()))
{
    myinteract = 0
    if (type == 1)
        mousemarker = gml_Script_scr_dark_marker((((gml_Script_camerax() + 640) + 35) + 15), 278, spr_maus_idle)
    if (type == 2)
    {
        if (room == room_dw_city_postbaseball_2)
            mousemarker = gml_Script_scr_dark_marker((((gml_Script_camerax() + 640) + 35) + 15), 310, spr_maus_idle)
        else
        {
            var yax = (gml_Script_charaY() - 18)
            if (yax < 240)
                yax = 240
            mousemarker = gml_Script_scr_dark_marker((((gml_Script_camerax() + 640) + 35) + 15), yax, spr_maus_idle)
        }
    }
    mousemarker.hspeed = -10
    with (obj_caterpillarchara)
    {
        if (name == "noelle")
        {
            fun = true
            sprite_index = spr_noelle_shocked_dw
        }
    }
    gml_Script_snd_play(snd_mouse)
    con = 2
    alarm[4] = 20
}
if (con == 3)
{
    with (mousemarker)
        speed = 0
    with (obj_caterpillarchara)
    {
        if (name == "noelle")
        {
            fun = false
            sprite_index = spr_noelle_walk_right_dw
        }
    }
    con = 4
    alarm[4] = 10
}
if (con == 5 && (!gml_Script_d_ex()))
{
    if (type == 1)
        encounterflag = 536
    if (type == 2)
        encounterflag = 537
    global.flag[54] = encounterflag
    if (type == 1)
        gml_Script_scr_battle(66, false, mousemarker, 0, 0)
    if (type == 2)
    {
        if (room == room_dw_city_postbaseball_2)
            gml_Script_scr_battle(79, false, mousemarker, 0, 0)
        else
            gml_Script_scr_battle(54, false, mousemarker, 0, 0)
    }
    con = 6
    alarm[4] = 25
}
if (con == 7)
{
    if (x > 840)
    {
        with (obj_mazecheese)
        {
            image_index = 1
            type = 4
            con = 99
        }
        global.flag[361] = 1
    }
    if (x < 840)
    {
        with (obj_mazecheese)
            con = 0
        if instance_exists(obj_controller_city_cheesemaze)
            obj_controller_city_cheesemaze.cheeseCrushed = 1
        image_index = 1
        type = 4
        con = 8
        alarm[4] = 10
    }
}
if (con == 9 && (!instance_exists(obj_battlecontroller)))
{
    con = 10
    alarm[4] = 30
}
if (con == 10)
    global.interact = 1
if (con == 11)
{
    global.interact = 1
    global.fe = 0
    if (global.flag[310] == 0)
    {
        global.flag[310] = 1
        if gml_Script_scr_havechar(4)
        {
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\E8* I..^1. I never want to see cheese ever again.../%", "obj_mazecheese_slash_Step_0_gml_97_0")
        }
        else
        {
            global.flag[311] = 1
            gml_Script_scr_speaker("no_name")
            gml_Script_msgsetloc(0, "* (The cheese was destroyed in the heat of battle...)/", "obj_mazecheese_slash_Step_0_gml_102_0")
            gml_Script_msgnextloc("* (You realized you lost sight of what was important...)/%", "obj_mazecheese_slash_Step_0_gml_103_0")
        }
        gml_Script_d_make()
    }
    con = 12
}
if (con == 12 && (!gml_Script_d_ex()))
{
    global.interact = 0
    global.facing = 0
    con = 99
    type = 4
}
if (con == 15 && (!gml_Script_d_ex()))
{
    global.interact = 0
    global.facing = 0
    read = 0
    con = 0
}
if (room == room_dw_city_postbaseball_2)
{
    if (fallcon == 0)
    {
        gml_Script_snd_play(snd_fall)
        fallcon++
    }
    if (fallcon == 1)
    {
        if (y < 352)
        {
            vspeed += 1
            if (vspeed >= 12)
                vspeed = 12
        }
        if (y > 312)
        {
            vspeed = 0
            y = 312
            fallcon++
        }
    }
}
