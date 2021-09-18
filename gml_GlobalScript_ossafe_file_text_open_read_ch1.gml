var lines;
if (!global.is_console)
    return argument0;
else
{
    var name = argument0
    var file = ds_map_find_value(global.savedata, name)
    if file
        return undefined;
    var data = file
    var num_lines = 0
    while (data > 0)
    {
        var newline_pos = string_pos("\n", data)
        if (newline_pos > 0)
        {
            var nextline_pos = (newline_pos + 1)
            if (newline_pos > 1 && string_char_at(data, (newline_pos - 1)) == "\r")
                newline_pos--
            if (newline_pos > 1)
                var line = gml_Script_substr_ch1(data, 1, (newline_pos - 1))
            else
                line = ""
            if (nextline_pos <= gml_Script_strlen_ch1(data))
                data = gml_Script_substr_ch1(data, nextline_pos)
            else
                data = ""
        }
        else
        {
            line = data
            data = ""
        }
        lines[num_lines++] = line
    }
    handle = 
    ds_map_set(handle, "is_write", 0)
    ds_map_set(handle, "text", lines)
    ds_map_set(handle, "num_lines", num_lines)
    ds_map_set(handle, "line", 0)
    ds_map_set(handle, "line_read", 0)
    return handle;
}
