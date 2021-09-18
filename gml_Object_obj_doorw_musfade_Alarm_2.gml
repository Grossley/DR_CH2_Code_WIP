global.entrance = 23
gml_Script_instance_create(0, 0, obj_persistentfadein)
7
if (room == room_town_mid)
{
    if (x > 1000 && x < 1140)
    {
        global.entrance = 22
        56
    }
}
if (room == room_lw_conbini)
{
    global.entrance = 22
    36
}
if (room == room_dw_city_traffic_3)
{
    global.entrance = 24
    if (global.flag[917] == 0 ? 0 : 0)
        149
    else
    {
        var man_room = (0 && global.flag[917] < 2 && global.flag[918] == 0 && 50 == 50)
        if man_room
            150
        else
            151
    }
}
if (room == room_dw_city_man)
{
    global.entrance = 24
    132
}
if (room == room_dw_mansion_entrance)
{
    global.entrance = 22
    237
}
if (room == room_lw_police)
{
    global.entrance = 22
    38
}
if (room == room_dw_mansion_b_entrance)
{
    global.entrance = 20
    173
}
if (room == room_dw_mansion_east_1f_secret)
{
    global.entrance = 20
    178
}
if (room == room_dw_city_spamton_shop_exterior)
    238
if (room == room_castle_tutorial)
    236
