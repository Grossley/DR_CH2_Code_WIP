var _temp_local_var_2, _temp_local_var_3, _temp_local_var_4;
if (myinteract == 3)
{
}
if (myinteract == 3 && con == 0)
{
    if (mydialoguer == 0)
    {
        global.interact = 0
        myinteract = 0
        with (obj_mainchara)
            onebuffer = 5
    }
}
if (con >= 5)
{
    if (con == 50)
        var _temp_local_var_2 = weirdlight
    if (con == 51)
        global.interact = 1
    if (con == 51)
    {
    }
    else
        var _temp_local_var_4 = 0
    global.interact = 1
    con = 52
    doortimer = 0
    if (con == 52)
    {
        doortimer += 1
        if (doortimer >= 6)
        {
            // WARNING: Popz'd an empty stack.
            62
            dark_marker = gml_Script_scr_dark_marker((gml_Script___view_get(0, 0) - 10), (gml_Script___view_get(1, 0) - 10), 2528)
            var _temp_local_var_3 = dark_marker
            image_xscale = 700
            image_yscale = 700
            depth = -100
            image_blend = c_black
        }
    }
    if (con == 53)
    {
        doortimer += 1
        if (doortimer >= 30)
        {
            global.facing = 0
            con = 54
            gml_Script_snd_play(63)
            global.interact = 3
            gml_Script_instance_create(0, 0, obj_persistentfadein)
            global.entrance = 23
            room_goto(door_destination)
        }
    }
}
