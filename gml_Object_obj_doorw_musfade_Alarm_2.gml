global.entrance = 23
gml_Script_instance_create(0, 0, obj_persistentfadein)
event_user(7)
if (room == room_town_mid)
{
    if (x > 1000 && x < 1140)
    {
        global.entrance = 22
        room_goto(room_lw_conbini)
    }
}
if (room == room_lw_conbini)
{
    global.entrance = 22
    room_goto(room_town_mid)
}
if (room == room_dw_city_traffic_3)
{
    global.entrance = 24
    if (global.flag[917] == 0 && gml_Script_scr_sideb_get_phase() == 0)
        room_goto(room_dw_city_dog_traffic)
    else
    {
        var man_room = (gml_Script_scr_sideb_get_phase() == 0 && global.flag[917] < 2 && global.flag[918] == 0 && ceil(random(50)) == 50)
        if man_room
            room_goto(room_dw_city_man)
        else
            room_goto(room_dw_city_moss)
    }
}
if (room == room_dw_city_man)
{
    global.entrance = 24
    room_goto(room_dw_city_traffic_3)
}
if (room == room_dw_mansion_entrance)
{
    global.entrance = 22
    room_goto(room_shop_ch2_swatch)
}
if (room == room_lw_police)
{
    global.entrance = 22
    room_goto(room_town_south)
}
if (room == room_dw_mansion_b_entrance)
{
    global.entrance = 20
    room_goto(room_dw_mansion_east_1f_secret)
}
if (room == room_dw_mansion_east_1f_secret)
{
    global.entrance = 20
    room_goto(room_dw_mansion_b_entrance)
}
if (room == room_dw_city_spamton_shop_exterior)
    room_goto(room_shop_ch2_spamton)
if (room == room_castle_tutorial)
    room_goto(room_shop_ch2_music)
