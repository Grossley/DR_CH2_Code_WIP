if (!global.is_console)
    return file_text_writeln(argument0);
else
{
    var handle = argument0
    ds_map_set(handle, "data", (ds_map_find_value(handle, "data") + "\r\n"))
}
return;
