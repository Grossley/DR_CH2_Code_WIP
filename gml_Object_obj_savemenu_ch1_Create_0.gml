cur_jewel = 0
saved = 0
coord = 0
ini_ex = 0
buffer = 3
name = gml_Script_scr_84_get_lang_string_ch1("obj_savemenu_slash_Create_0_gml_7_0")
level = 1
love = 1
time = 0
roome = 0
endme = 0
global.interact = 1
if gml_Script_ossafe_file_exists_ch1("dr.ini")
{
    ini_ex = 1
    iniread = gml_Script_ossafe_ini_open_ch1("dr.ini")
    name = ini_read_string(("G" + string(global.filechoice)), "Name", "Kris")
    level = ini_read_real(("G" + string(global.filechoice)), "Level", 1)
    love = ini_read_real(("G" + string(global.filechoice)), "Love", 1)
    time = ini_read_real(("G" + string(global.filechoice)), "Time", 0)
    var room_index = ini_read_real(("G" + string(global.filechoice)), "Room", 0)
    var room_offset = room_index
    if (room_index < 280)
        room_offset = (280 + room_index)
    roome = room_offset
    gml_Script_ossafe_ini_close_ch1()
    gml_Script_ossafe_savedata_save_ch1()
}
d = (global.darkzone + 1)
minutes = floor((time / 1800))
seconds = round((((time / 1800) - minutes) * 60))
if (seconds == 60)
    seconds = 59
if (seconds < 10)
    seconds = ("0" + string(seconds))
gml_Script_scr_roomname_ch1(roome)
if (d == 2)
    heartsprite = spr_heart_ch1
if (d == 1)
    heartsprite = spr_heartsmall_ch1
if (d == 1)
    name = gml_Script_scr_84_get_lang_string_ch1("obj_savemenu_slash_Create_0_gml_43_0")
