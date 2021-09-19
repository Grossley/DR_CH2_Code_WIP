if (!global.is_console)
    return file_delete(argument0);
else if (!is_undefined(ds_map_find_value(global.savedata, argument0)))
    ds_map_delete(global.savedata, argument0)
return;
