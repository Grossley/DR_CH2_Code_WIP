var _temp_local_var_1, _temp_local_var_3, _temp_local_var_4, _temp_local_var_6, _temp_local_var_7;
if (con == 1)
{
    if (myinteract == 3)
    {
    }
    else
        var _temp_local_var_7 = 0
}
else
    var _temp_local_var_7 = 0
myinteract = 0
if (type == 1)
    mousemarker = gml_Script_scr_dark_marker((((gml_Script_camerax() + 640) + 35) + 15), 278, 1740)
if (type == 2)
{
    if (room == room_dw_city_postbaseball_2)
        mousemarker = gml_Script_scr_dark_marker((((gml_Script_camerax() + 640) + 35) + 15), 310, 1740)
    else
    {
        var yax = 18
        if (yax < 240)
            yax = 240
        mousemarker = gml_Script_scr_dark_marker((((gml_Script_camerax() + 640) + 35) + 15), yax, 1740)
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
176
con = 2
alarm[4] = 20
if (con == 3)
{
    var _temp_local_var_1 = mousemarker
    speed = 0
}
if (con == 5)
    _temp_local_var_1 = (!mousemarker)
else
    var _temp_local_var_6 = 0
if (!mousemarker)
{
    if (type == 1)
        encounterflag = 536
    if (type == 2)
        encounterflag = 537
    global.flag[54] = encounterflag
    if (type == 1)
        gml_Script_scr_battle(66, 0, mousemarker, 0, 0)
    if (type == 2)
    {
        if (room == room_dw_city_postbaseball_2)
            gml_Script_scr_battle(79, 0, mousemarker, 0, 0)
        else
            gml_Script_scr_battle(54, 0, mousemarker, 0, 0)
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
        if 1212
            obj_controller_city_cheesemaze.cheeseCrushed = 1
        image_index = 1
        type = 4
        con = 8
        alarm[4] = 10
    }
}
if (con == 9 && (!355))
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
        if 4
        {
            "noelle"
            gml_Script_msgsetloc(0, "\\E8* I..^1. I never want to see cheese ever again.../%", "obj_mazecheese_slash_Step_0_gml_97_0")
        }
        else
        {
            global.flag[311] = 1
            "no_name"
            gml_Script_msgsetloc(0, "* (The cheese was destroyed in the heat of battle...)/", "obj_mazecheese_slash_Step_0_gml_102_0")
            gml_Script_msgnextloc("* (You realized you lost sight of what was important...)/%", "obj_mazecheese_slash_Step_0_gml_103_0")
        }
        // WARNING: Popz'd an empty stack.
    }
    con = 12
}
if (con == 12)
{
}
else
    var _temp_local_var_4 = 0
global.interact = 0
global.facing = 0
con = 99
type = 4
if (con == 15)
{
}
else
    var _temp_local_var_3 = 0
global.interact = 0
global.facing = 0
read = 0
con = 0
if (room == room_dw_city_postbaseball_2)
{
    if (fallcon == 0)
    {
        93
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
