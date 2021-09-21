TYPE = 0
if gml_Script_ossafe_file_exists_ch1("filech1_3")
    TYPE = 1
if gml_Script_ossafe_file_exists_ch1("filech1_4")
    TYPE = 1
if gml_Script_ossafe_file_exists_ch1("filech1_5")
    TYPE = 1
if (TYPE == 0)
{
    gml_Script_scr_windowcaption_ch1(gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Create_0_gml_8_0"))
    global.currentsong[0] = gml_Script_snd_init_ch1("AUDIO_DRONE.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ch1(global.currentsong[0])
}
if (TYPE == 1)
{
    gml_Script_instance_create_ch1(0, 0, obj_fadein_ch1)
    global.tempflag[10] = 1
    gml_Script_scr_windowcaption_ch1(gml_Script_scr_84_get_lang_string_ch1("DEVICE_MENU_slash_Create_0_gml_17_0"))
    global.currentsong[0] = gml_Script_snd_init_ch1("AUDIO_STORY.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 0.95)
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
input_enabled = 1
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
}
MENU_NO = 0
for (i = 0; i < 8; i += 1)
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
CANQUIT = 1
if (global.is_console == 1)
    CANQUIT = 0
ONEBUFFER = 2
TWOBUFFER = 0
THREAT = 0
TEMPMESSAGE = " "
MESSAGETIMER = 0
version_text = ""
if (os_type == os_switch)
    version_text = "1.03a "
if (os_type == os_ps4)
    version_text = "1.02 "
gml_Script_scr_84_load_ini_ch1()
