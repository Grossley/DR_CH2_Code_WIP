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
            // WARNING: Popz'd an empty stack.
            // WARNING: Popz'd an empty stack.
            // WARNING: Popz'd an empty stack.
            global.damagefont = font_add_sprite_ext(spr_numbersfontbig_ch1, "0123456789", 20, 0)
            global.hpfont = font_add_sprite_ext(spr_numbersfontsmall_ch1, gml_Script_scr_84_get_lang_string_ch1("obj_initializer2_slash_Create_0_gml_2_0"), 0, 2)
            for (i = 0; i < 100; i += 1)
                global.tempflag[i] = 0
            global.heartx = 300
            global.hearty = 220
            1
            if (!1645)
                gml_Script_instance_create_ch1(0, 0, 1645)
        }
    }
}
