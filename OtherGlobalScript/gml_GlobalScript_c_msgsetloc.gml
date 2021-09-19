var msg_index = argument0
var english = argument1
var localized_string_id = argument2
var str = english
if (!gml_Script_is_english())
    str = gml_Script_scr_84_get_lang_string(localized_string_id)
gml_Script_c_msgset(msg_index, str)
return;
