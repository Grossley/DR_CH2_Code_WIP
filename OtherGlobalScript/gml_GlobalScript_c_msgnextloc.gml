var str = argument0
var localized_string_id = argument1
if (!gml_Script_is_english())
    str = gml_Script_scr_84_get_lang_string(localized_string_id)
gml_Script_c_msgnext(str)
return;
