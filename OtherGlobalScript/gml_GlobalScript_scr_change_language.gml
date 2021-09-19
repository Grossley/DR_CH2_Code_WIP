if (global.lang == "en")
    global.lang = "ja"
else
    global.lang = "en"
gml_Script_ossafe_ini_open("true_config.ini")
ini_write_string("LANG", "LANG", global.lang)
gml_Script_ossafe_ini_close()
gml_Script_ossafe_savedata_save()
gml_Script_scr_84_init_localization()
return;
