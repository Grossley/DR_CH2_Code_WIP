var msg_index = argument0
var str = argument1
var localized_string_id = argument2
if (!gml_Script_is_english())
    str = gml_Script_scr_84_get_lang_string(localized_string_id)
gml_Script_msgset(msg_index, str)
return;
