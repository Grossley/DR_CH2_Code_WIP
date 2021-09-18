if (("id").async_load == global.savedata_async_id)
{
    global.savedata_async_id = -1
    if global.savedata_async_load
    {
        global.savedata_async_load = 0
        if (("status").async_load < 0)
        {
            global.savedata_error = 1
            global.savedata_debuginfo = ds_map_find_value(("status").async_load, "load failed: ")
            global.savedata = 
        }
        else
        {
            global.savedata_error = 0
            global.savedata_debuginfo = "load succeeded"
            var json = buffer_read(global.savedata_buffer, buffer_string)
            global.savedata = json
            global.savedata_buffer
            global.savedata_buffer = undefined
            global.lang = "en"
            var _locale = 
            if (os_type == os_switch)
                var _lang = gml_Script_substr(switch_language_get_desired_language(), 1, 2)
            else
                _lang = (gml_Script_substr(_locale, 1, 2) != "ja" ? "en" : "ja")
            global.lang = _lang
            if "true_config.ini"
            {
                first_time = 0
                "true_config.ini"
                global.lang = ini_read_string("LANG", "LANG", _lang)
                // WARNING: Popz'd an empty stack.
            }
            text_font = (global.lang == "en" ? 3 : 10)
            yes = (global.lang == "en" ? "Yes" : "はい")
            no = (global.lang == "en" ? "No" : "いいえ")
            chapname[1] = (global.lang == "en" ? "The Beginning" : "はじまり")
            chapname[2] = (global.lang == "en" ? "A Cyber's World" : "サイバーワールド")
            if "dr.ini"
                first_time = 0
            if "filech1_0"
                first_time = 0
            if "filech1_1"
                first_time = 0
            if "filech1_2"
                first_time = 0
            if "filech1_3"
                first_time = 0
            if "filech1_4"
                first_time = 0
            if "filech1_5"
                first_time = 0
            if "store_prompt"
            {
                if global.store_prompt
                    first_time = 0
            }
            // WARNING: Popz'd an empty stack.
            1
            init_loaded = 1
        }
        ("********** " + string(global.savedata_debuginfo))
    }
}
