if (!global.is_console)
    return file_text_write_string(argument0, argument1);
else
{
    var handle = argument0
    ds_map_set(handle, "data", (ds_map_find_value(handle, "data") + argument1))
}
return;
