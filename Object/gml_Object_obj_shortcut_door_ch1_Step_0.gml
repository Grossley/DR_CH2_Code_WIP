if (myinteract == 3)
{
}
if (myinteract == 3 && con == 0)
{
    if (instance_exists(mydialoguer) == 0)
    {
        global.interact = 0
        myinteract = 0
        with (obj_mainchara_ch1)
            onebuffer = 5
    }
}
if (con >= 5)
{
    if (con == 50)
    {
        var _temp_local_var_2 = weirdlight
        instance_destroy()
    }
    if (con == 51)
        global.interact = 1
    if (con == 51 && (!gml_Script_d_ex_ch1()))
    {
        global.interact = 1
        con = 52
        doortimer = 0
    }
    if (con == 52)
    {
        doortimer += 1
        if (doortimer >= 6)
        {
            gml_Script_snd_free_all_ch1()
            gml_Script_snd_play_ch1(379)
            dark_marker = gml_Script_scr_dark_marker_ch1((gml_Script___view_get(0, 0) - 10), (gml_Script___view_get(1, 0) - 10), 4277)
            var _temp_local_var_4 = dark_marker
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
            gml_Script_snd_play_ch1(380)
            global.interact = 3
            gml_Script_instance_create_ch1(0, 0, 1462)
            global.entrance = 23
            room_goto(door_destination)
        }
    }
}
