if (!global.is_console)
    return argument0;
else
{
    var handle = argument0
    if ds_map_find_value(handle, "is_write")
        ds_map_set(global.savedata, ds_map_find_value(handle, "filename"), ds_map_find_value(handle, "data"))
    handle
}
return;
