if (!"chemg_last_get_font")
    global.chemg_last_get_font = ""
if (argument0 != global.chemg_last_get_font)
    global.chemg_last_get_font = argument0
return ds_map_find_value(global.font_map, argument0);
