global.entrance = 23
gml_Script_instance_create_ch1(0, 0, 1462)
if (room == room_town_south_ch1)
    room_goto(room_hospital_lobby_ch1)
if (room == room_hospital_lobby_ch1)
    room_goto(room_town_south_ch1)
if (room == room_town_mid_ch1)
    room_goto(room_alphysalley_ch1)
if (room == room_alphysalley_ch1)
    room_goto(room_town_mid_ch1)
if (room == room_town_north_ch1)
    room_goto(room_beach_ch1)
if (room == room_beach_ch1)
    room_goto(room_town_north_ch1)