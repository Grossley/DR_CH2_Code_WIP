var lang_string_id = argument0
var str = ds_map_find_value(global.lang_map, lang_string_id)
if is_undefined(str)
{
    if (!ds_map_find_value(global.lang_missing_map, lang_string_id))
    {
        ds_map_add(global.lang_missing_map, lang_string_id, 1)
        show_debug_message((((("ERROR: string id " + lang_string_id) + " for language ") + global.lang) + " is missing"))
    }
    str = "--missing-string--"
}
return str;
