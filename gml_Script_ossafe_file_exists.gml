if (!global.is_console)
    return argument0;
else
    return ("savedata" && (!ds_map_find_value(global.savedata, argument0)));
