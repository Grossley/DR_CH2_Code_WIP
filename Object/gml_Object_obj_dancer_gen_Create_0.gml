areas = 3
areax1[0] = 120
areay1[0] = 100
areax2[0] = 760
areay2[0] = 580
areax1[1] = 880
areay1[1] = 360
areax2[1] = 1360
areay2[1] = 880
areax1[2] = 200
areay1[2] = 720
areax2[2] = 760
areay2[2] = 1360
battlealpha = 0
if (room == room_forest_dancers1)
{
    var i = 0
    while (i < 5)
    {
        sc = gml_Script_instance_create(320, (160 + (80 * i)), obj_scissordancer)
        var _temp_local_var_1 = sc
        hspeed = 0
        vspeed = -5
    }
    i = 0
    while (i < 4)
    {
        sc = gml_Script_instance_create((520 + (80 * i)), 450, obj_scissordancer)
        var _temp_local_var_2 = sc
        vspeed = 0
        hspeed = -5
    }
    i = 0
    while (i < 2)
    {
        sc = gml_Script_instance_create(500, (170 - (80 * i)), obj_scissordancer)
        var _temp_local_var_3 = sc
        vspeed = 5
        hspeed = 0
    }
    i = 0
    while (i < 4)
    {
        sc = gml_Script_instance_create(960, (440 - (80 * i)), obj_scissordancer)
        var _temp_local_var_4 = sc
        vspeed = 5
    }
    i = 0
    while (i < 4)
    {
        sc = gml_Script_instance_create(960, (40 - (80 * i)), obj_scissordancer)
        var _temp_local_var_5 = sc
        vspeed = 5
    }
    sc = gml_Script_instance_create(280, 830, obj_scissordancer)
    var _temp_local_var_6 = sc
    vspeed = -5
    hspeed = 0
}
if (null.room == room_cc_4f)
{
    areax1[0] = 260
    areay1[0] = 40
    areax2[0] = 1120
    areay2[0] = 820
    areas = 1
}
tile_fade = false
if (null.room == room_forest_dancers1)
    var _temp_local_var_10 = 1
else
    var _temp_local_var_7 = null.room == room_cc_4f
if 1
{
    alpha_changed = false
    tile_fade = true
    tilearray = gml_Script_tile_get_ids_at_depth(777777)
    for (i = 0; i < array_length_1d(tilearray); i++)
        gml_Script_tile_set_alpha(tilearray[i], 0)
}
