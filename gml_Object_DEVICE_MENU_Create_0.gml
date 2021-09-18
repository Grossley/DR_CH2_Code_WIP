TYPE = 1
SUBTYPE = 0
CH = global.chapter
if (("filech" + CH) + "_3")
    SUBTYPE = 1
if (("filech" + CH) + "_4")
    SUBTYPE = 1
if (("filech" + CH) + "_5")
    SUBTYPE = 1
COMPLETEFILE_PREV[0] = (("filech" + string((global.chapter - 1))) + "_3")
COMPLETEFILE_PREV[1] = (("filech" + string((global.chapter - 1))) + "_4")
COMPLETEFILE_PREV[2] = (("filech" + string((global.chapter - 1))) + "_5")
INCOMPLETEFILE_PREV[0] = (("filech" + string((global.chapter - 1))) + "_0")
INCOMPLETEFILE_PREV[1] = (("filech" + string((global.chapter - 1))) + "_1")
INCOMPLETEFILE_PREV[2] = (("filech" + string((global.chapter - 1))) + "_2")
INCOMPLETE_LOAD = 0
if global.is_console
{
    if (global.game_won == 1)
    {
        if (COMPLETEFILE_PREV[0] == 0 && COMPLETEFILE_PREV[1] == 0 && COMPLETEFILE_PREV[2] == 0)
        {
            if (INCOMPLETEFILE_PREV[0] == 1 || INCOMPLETEFILE_PREV[1] == 1 || INCOMPLETEFILE_PREV[2] == 1)
                INCOMPLETE_LOAD = 1
        }
    }
}
if (TYPE == 0)
{
    gml_Script_stringsetloc("CONTACT", "DEVICE_MENU_slash_Create_0_gml_8_0")
    global.currentsong[0] = "AUDIO_DRONE.ogg"
    global.currentsong[1] = global.currentsong[0]
}
if (TYPE == 1)
{
    gml_Script_instance_create(0, 0, obj_fadein)
    global.tempflag[10] = 1
    gml_Script_stringsetloc("DELTARUNE", "DEVICE_MENU_slash_Create_0_gml_17_0")
    if (SUBTYPE == 0)
        global.currentsong[0] = "menu.ogg"
    if (SUBTYPE == 1)
        global.currentsong[0] = "AUDIO_STORY.ogg"
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 0.95)
}
BGMADE = 0
BG_ALPHA = 0
BG_SINER = 0
OBMADE = 0
OB_DEPTH = 0
obacktimer = 0
OBM = 0.5
COL_A = 32768
COL_B = 65280
COL_PLUS = merge_color(c_lime, c_white, 0.5)
jamod = 0
if (TYPE == 1)
{
    BGSINER = 0
    BGMAGNITUDE = 6
    COL_A = merge_color(c_silver, c_navy, 0.2)
    COL_B = 16777215
    COL_PLUS = merge_color(c_yellow, c_white, 0.5)
    BGMADE = 1
    BG_ALPHA = 0
    ANIM_SINER = 0
    ANIM_SINER_B = 0
    TRUE_ANIM_SINER = 0
    if (SUBTYPE == 0)
    {
        COL_A = merge_color(c_silver, c_maroon, 0.2)
        COL_B = 16777215
        COL_PLUS = merge_color(c_yellow, c_white, 0.4)
        BGMADE = 0
    }
}
MENU_NO = 0
for (i = 0; i < 12; i += 1)
    MENUCOORD[i] = 0
XL = 210
YL = 40
YS = 5
HEARTX = 75
HEARTY = 110
HEARTXCUR = 75
HEARTYCUR = 75
MOVENOISE = 0
SELNOISE = 0
BACKNOISE = false
DEATHNOISE = false
STARTGAME = 0
REMMENU = 0
CANQUIT = 1
if (global.is_console == 1)
    CANQUIT = 0
ONEBUFFER = 2
TWOBUFFER = 0
THREAT = 0
TEMPMESSAGE = " "
MESSAGETIMER = 0
version_text = "1.00"
if (os_type == os_switch)
    version_text = "1.03a"
if (os_type == os_ps4)
    version_text = "1.02"
for (i = 0; i < 3; i += 1)
    FILE[i] = 0
for (i = 0; i < 3; i += 1)
{
    FILE[i] = 0
    NAME[i] = gml_Script_stringsetloc("[EMPTY]", "DEVICE_MENU_slash_Create_0_gml_97_0")
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
    var cadd = 3
    if INCOMPLETE_LOAD
        cadd = 0
    for (i = 0; i < 3; i++)
    {
        COMPLETEFILE_PREV_NAME[i] = gml_Script_stringsetloc("NO DATA", "DEVICE_MENU_slash_Create_0_gml_182_0")
        COMPLETEFILE_PREV_TIME[i] = 0
        COMPLETEFILE_PREV_PLACE[i] = gml_Script_stringsetloc("CHAPTER 1", "DEVICE_MENU_slash_Create_0_gml_221_0")
        INCOMPLETEFILE_PREV_NAME[i] = gml_Script_stringsetloc("NO DATA", "DEVICE_MENU_slash_Create_0_gml_185_0")
        INCOMPLETEFILE_PREV_TIME[i] = 0
        var loadcompletion = 0
        if (COMPLETEFILE_PREV[i] == 1 && INCOMPLETE_LOAD == 0)
            loadcompletion = 1
        if (INCOMPLETEFILE_PREV[i] == 1 && INCOMPLETE_LOAD == 1)
            loadcompletion = 1
        if loadcompletion
        {
            COMPLETEFILE_PREV_NAME[i] = gml_Script_stringsetloc("UNKNOWN FILE", "DEVICE_MENU_slash_Create_0_gml_190_0")
            COMPLETEFILE_PREV_NAME[i] = ini_read_string(gml_Script_scr_ini_chapter((global.chapter - 1), (i + cadd)), "Name", "------")
            COMPLETEFILE_PREV_TIME[i] = ini_read_real(gml_Script_scr_ini_chapter((global.chapter - 1), (i + cadd)), "Time", 0)
            COMPLETEFILE_PREV_PLACE[i] = gml_Script_stringsetloc("CHAPTER 1", "DEVICE_MENU_slash_Create_0_gml_237_0")
            COMPLETETIME_SECONDS_TOTAL[i] = (COMPLETEFILE_PREV_TIME[i] / 30)
            COMPLETETIME_MINUTES[i] = (COMPLETETIME_SECONDS_TOTAL[i] / 60)
            COMPLETETIME_SECONDS[i] = (COMPLETETIME_SECONDS_TOTAL[i] - (COMPLETETIME_MINUTES[i] * 60))
            COMPLETETIME_SECONDS_STRING[i] = COMPLETETIME_SECONDS[i]
            if (COMPLETETIME_SECONDS[i] == 0)
                COMPLETETIME_SECONDS_STRING[i] = "00"
            if (COMPLETETIME_SECONDS[i] < 10 && COMPLETETIME_SECONDS[i] >= 1)
                COMPLETETIME_SECONDS_STRING[i] = ("0" + string(COMPLETETIME_SECONDS[i]))
            COMPLETETIME_STRING[i] = ((COMPLETETIME_MINUTES[i] + ":") + COMPLETETIME_SECONDS_STRING[i])
        }
        if INCOMPLETEFILE_PREV[i]
        {
            INCOMPLETEFILE_PREV_NAME[i] = gml_Script_stringsetloc("UNKNOWN FILE", "DEVICE_MENU_slash_Create_0_gml_205_0")
            INCOMPLETEFILE_PREV_NAME[i] = ini_read_string(gml_Script_scr_ini_chapter((global.chapter - 1), i), "Name", "------")
            INCOMPLETEFILE_PREV_TIME[i] = ini_read_real(gml_Script_scr_ini_chapter((global.chapter - 1), i), "Time", 0)
        }
    }
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
var INITMENU = 0
if "dr.ini"
{
    if (FILE[0] == 0 && FILE[1] == 0 && FILE[2] == 0)
    {
        if (COMPLETEFILE_PREV[0] == 1 || COMPLETEFILE_PREV[1] == 1 || COMPLETEFILE_PREV[2] == 1)
            INITMENU = 10
        if (INCOMPLETE_LOAD == 1)
            INITMENU = 10
    }
}
MENU_NO = INITMENU
depth = 5
jamod = 0
input_enabled = 1
