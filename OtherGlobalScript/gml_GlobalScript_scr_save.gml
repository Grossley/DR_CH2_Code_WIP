gml_Script_scr_saveprocess(global.filechoice)
filechoicebk2 = global.filechoice
global.filechoice = 9
gml_Script_scr_saveprocess(9)
global.filechoice = filechoicebk2
iniwrite = gml_Script_ossafe_ini_open("dr.ini")
ini_write_string(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "Name", global.truename)
ini_write_real(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "Level", global.lv)
ini_write_real(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "Love", global.llv)
ini_write_real(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "Time", global.time)
ini_write_real(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "Date", date_current_datetime())
ini_write_real(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "Room", room)
ini_write_real(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "InitLang", global.flag[912])
var uraboss = 0
if (global.chapter == 1)
{
    if (global.flag[241] == 6)
        uraboss = 1
    else if (global.flag[241] == 7)
        uraboss = 2
}
if (global.chapter == 2)
{
    if (global.flag[571] == 1)
        uraboss = 1
    else if (global.flag[571] == 2)
        uraboss = 2
}
ini_write_real(gml_Script_scr_ini_chapter(global.chapter, global.filechoice), "UraBoss", uraboss)
gml_Script_ossafe_ini_close()
gml_Script_ossafe_savedata_save()
return;
