if (("id").async_load == global.savedata_async_id)
{
    global.savedata_async_id = -1
    if global.savedata_async_load
        var type = "load"
    else
        type = "save"
    if (("status").async_load < 0)
    {
        global.savedata_error = 1
        global.savedata_debuginfo = ds_map_find_value(("status").async_load, (type + " failed: "))
        if global.savedata_async_load
        {
            global.savedata = 
            global.savedata_async_load = 0
        }
    }
    else
    {
        global.savedata_error = 0
        global.savedata_debuginfo = (type + " succeeded")
        if global.savedata_async_load
        {
            var json = buffer_read(global.savedata_buffer, buffer_string)
            global.savedata = json
            global.savedata_async_load = 0
        }
        else if (os_type == os_switch)
            // WARNING: Popz'd an empty stack.
    }
    global.savedata_buffer
    global.savedata_buffer = undefined
}
