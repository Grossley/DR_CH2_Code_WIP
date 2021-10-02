ossafe_file_text_read_string_ch1 = function(argument0) // gml_Script_ossafe_file_text_read_string_ch1
{
    if (!global.is_console)
        return file_text_read_string(argument0);
    else
    {
        var handle = argument0
        if ds_map_find_value(handle, "line_read")
            return "";
        var line = ds_map_find_value(handle, "line")
        if (line >= ds_map_find_value(handle, "num_lines"))
            return "";
        ds_map_set(handle, "line_read", 1)
        text = ds_map_find_value(handle, "text")
        return text[line];
    }
}

