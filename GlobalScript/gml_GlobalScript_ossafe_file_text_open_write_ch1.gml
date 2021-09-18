if (!global.is_console)
    return argument0;
else
{
    var handle = 
    ds_map_set(handle, "is_write", 1)
    ds_map_set(handle, "filename", argument0)
    ds_map_set(handle, "data", "")
    return handle;
}
