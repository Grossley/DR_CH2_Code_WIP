if (!global.is_console)
    argument0
else
{
    var name = argument0
    global.current_ini = name
    var file = ds_map_find_value(global.savedata, name)
    if file
        var data = ""
    else
        data = file
    data
}
return;
