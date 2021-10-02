ossafe_file_text_read_real_ch1 = function(argument0) // gml_Script_ossafe_file_text_read_real_ch1
{
    if (!global.is_console)
        return file_text_read_real(argument0);
    else
    {
        var handle = argument0
        if ds_map_find_value(handle, "line_read")
            return 0;
        var line = ds_map_find_value(handle, "line")
        if (line >= ds_map_find_value(handle, "num_lines"))
            return 0;
        ds_map_set(handle, "line_read", 1)
        text = ds_map_find_value(handle, "text")
        return real(text[line]);
    }
}

