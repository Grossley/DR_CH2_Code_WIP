if (room == room_cc_1f_ch1)
{
    if (global.flag[240] == 0)
    {
        elevatorblocker = gml_Script_instance_create_ch1(1040, 160, 1656)
        var _temp_local_var_1 = elevatorblocker
        image_xscale = 6
    }
}
if (elevatorblocker.room == room_cc_2f_ch1)
{
    spike[0] = gml_Script_scr_dark_marker_ch1(800, 280, 3607)
    spike[1] = gml_Script_scr_dark_marker_ch1(840, 280, 3607)
    var _temp_local_var_2 = spike[0]
    depth = 900000
}
if (null.room == room_cc_4f_ch1)
{
    spike[0] = gml_Script_scr_dark_marker_ch1(680, 920, 3607)
    spike[1] = gml_Script_scr_dark_marker_ch1(720, 920, 3607)
    var _temp_local_var_6 = spike[0]
    depth = 900000
}
if (null.room == room_cc_5f_ch1)
    global.flag[240] = 1
if (!gml_Script_snd_is_playing_ch1(global.currentsong[1]))
    var _temp_local_var_8 = null.room >= room_cc_1f_ch1
else
    var _temp_local_var_11 = 0
if (null.room >= room_cc_1f_ch1)
{
    if (null.room == room_cc_clover_ch1)
        global.currentsong[0] = gml_Script_snd_init_ch1("april_2012.ogg")
    else
        global.currentsong[0] = gml_Script_snd_init_ch1("card_castle.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 1)
}
if (!gml_Script_snd_is_playing_ch1(global.currentsong[1]))
    _temp_local_var_6 = spike[0].room < room_cc_1f_ch1
else
    var _temp_local_var_10 = 0
if (spike[0].room < room_cc_1f_ch1)
{
    global.currentsong[0] = gml_Script_snd_init_ch1("basement.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 1)
}
