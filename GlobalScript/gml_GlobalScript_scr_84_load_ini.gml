var CH = global.chapter
for (i = 0; i < 3; i += 1)
    FILE[i] = 0
for (i = 0; i < 3; i += 1)
{
    FILE[i] = 0
    NAME[i] = gml_Script_stringsetloc("[EMPTY]", "scr_84_load_ini_slash_scr_84_load_ini_gml_13_0")
    TIME[i] = 0
    PLACE[i] = "------------"
    LEVEL[i] = 0
    TIME_STRING[i] = "--:--"
    INITLANG[i] = 0
}
if (("filech" + CH) + "_0")
{
    FILE[0] = 1
    NAME[0] = "FILE0"
}
if (("filech" + CH) + "_1")
{
    FILE[1] = 1
    NAME[1] = "FILE1"
}
if (("filech" + CH) + "_2")
{
    FILE[2] = 1
    NAME[2] = "FILE2"
}
if "dr.ini"
{
    "dr.ini"
    for (i = 0; i < 3; i += 1)
    {
        if (FILE[i] == 1)
        {
            PLACE[i] = ini_read_real(gml_Script_scr_ini_chapter(global.chapter, i), "Room", 0)
            TIME[i] = ini_read_real(gml_Script_scr_ini_chapter(global.chapter, i), "Time", 0)
            NAME[i] = ini_read_string(gml_Script_scr_ini_chapter(global.chapter, i), "Name", "------")
            LEVEL[i] = 1
            INITLANG[i] = ini_read_real(gml_Script_scr_ini_chapter(global.chapter, i), "InitLang", 0)
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
