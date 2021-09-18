global.entrance = 24
gml_Script_instance_create(0, 0, obj_persistentfadein)
7
if (room == room_castle_town)
    65
if (room == room_town_south)
    51
if (room == room_library)
    38
if (room == room_town_church)
    48
if (room == room_townhall)
    40
if (room == room_schoollobby)
    39
if (room == room_town_school)
    59
if (room == room_town_mid)
    47
if (room == room_diner)
    36
if (room == room_town_north)
    49
if (room == room_flowershop_1f)
    34
if (room == room_castle_tutorial)
{
    if (global.plot < 12)
        70
    else
        71
}
if (room == room_dw_castle_area_2)
    65
if (room == room_dw_castle_area_2_transformed)
{
    if (y < 1050)
    {
        "in shop doors block"
        global.entrance
        if (x < 500)
            75
        if (x > 800)
            74
        if (x > 940)
            73
    }
    else
    {
        "in normal doors block"
        global.entrance
        if (x < 500)
            68
        if (x > 1320)
            65
        if (y > 1400)
            69
    }
}
if (room == room_dw_castle_cafe)
{
    global.entrance = 19
    71
}
if (room == room_dw_castle_restaurant)
{
    global.entrance = 20
    71
}
if (room == room_dw_castle_dojo)
{
    global.entrance = 21
    71
}
if (room == room_dw_castle_west_cliff)
{
    global.entrance = 18
    if (global.plot < 12)
        70
    else
        71
}
if (room == room_dw_castle_east_door)
{
}
if (room == room_dw_castle_area_1)
{
    global.entrance = 23
    if (global.plot < 12)
        70
    else
        71
}
