global.entrance = 24
gml_Script_instance_create_ch1(0, 0, 1462)
if (room == room_castle_town_ch1)
    327
if (room == room_castle_tutorial_ch1)
    325
if (room == room_field_shop1_ch1)
    413
if (room == room_man_ch1)
    362
if (room == room_forest_area5_ch1)
{
    ch = 50
    if (ch == 50 && global.flag[910] == 0)
        422
    else
        368
}
if (room == room_town_krisyard_ch1)
    285
if (room == room_torhouse_ch1)
    287
if (room == room_town_school_ch1)
    309
if (room == room_schoollobby_ch1)
    294
if (room == room_cc_1f_ch1)
{
    if (x >= 1300)
        389
    else
        411
}
if (room == room_cc_5f_ch1)
    414
if (room == room_cc_prisonelevator_ch1)
{
    if (global.flag[239] == 0)
        387
    if (global.flag[239] == 1)
        394
    if (global.flag[239] == 2)
        403
    if (global.flag[239] == 3)
        391
}
if (room == room_cc_prison_to_elevator_ch1)
{
    global.flag[239] = 0
    389
}
if (room == room_cc_1f_ch1)
{
    global.flag[239] = 1
    389
}
if (room == room_cc_prison_prejoker_ch1)
{
    global.flag[239] = 3
    389
}
if (room == room_cc_entrance_ch1)
    384
