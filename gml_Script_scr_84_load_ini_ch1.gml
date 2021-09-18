for (i = 0; i < 3; i += 1)
    FILE[i] = 0
for (i = 0; i < 3; i += 1)
{
    FILE[i] = 0
    NAME[i] = "DEVICE_MENU_slash_Create_0_gml_97_0"
    TIME[i] = 0
    PLACE[i] = "------------"
    LEVEL[i] = 0
    TIME_STRING[i] = "--:--"
    INITLANG[i] = 0
}
if "filech1_0"
{
    FILE[0] = 1
    NAME[0] = "DEVICE_MENU_slash_Create_0_gml_107_0"
}
if "filech1_1"
{
    FILE[1] = 1
    NAME[1] = "DEVICE_MENU_slash_Create_0_gml_112_0"
}
if "filech1_2"
{
    FILE[2] = 1
    NAME[2] = "DEVICE_MENU_slash_Create_0_gml_117_0"
}
if "dr.ini"
{
    "dr.ini"
    for (i = 0; i < 3; i += 1)
    {
        if (FILE[i] == 1)
        {
            var room_index = ini_read_real(("G" + string(i)), "Room", 0)
            var room_offset = room_index
            if (room_index < 280)
                room_offset = (280 + room_index)
            PLACE[i] = room_offset
            TIME[i] = ini_read_real(("G" + string(i)), "Time", 0)
            NAME[i] = ini_read_string(("G" + string(i)), "Name", "------")
            LEVEL[i] = 1
            INITLANG[i] = ini_read_real(("G" + string(i)), "InitLang", 0)
            TIME_SECONDS_TOTAL[i] = (TIME[i] / 30)
            TIME_MINUTES[i] = (TIME_SECONDS_TOTAL[i] / 60)
            TIME_SECONDS[i] = (TIME_SECONDS_TOTAL[i] - (TIME_MINUTES[i] * 60))
            TIME_SECONDS_STRING[i] = TIME_SECONDS[i]
            if (TIME_SECONDS[i] == 0)
                TIME_SECONDS_STRING[i] = "00"
            if (TIME_SECONDS[i] < 10 && TIME_SECONDS[i] >= 1)
                TIME_SECONDS_STRING[i] = ("0" + string(TIME_SECONDS[i]))
            TIME_STRING[i] = ((TIME_MINUTES[i] + ":") + TIME_SECONDS_STRING[i])
        }
    }
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
return;
