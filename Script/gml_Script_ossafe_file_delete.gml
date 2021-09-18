if (!global.is_console)
    return argument0;
else if (!ds_map_find_value(global.savedata, argument0))
    ds_map_delete(global.savedata, argument0)
return;
