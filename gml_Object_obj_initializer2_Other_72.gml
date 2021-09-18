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
            1
            if "dr.ini"
            {
                "dr.ini"
                global.game_won = ini_read_real("STATUS", "STATUS", 0)
                // WARNING: Popz'd an empty stack.
            }
            global.damagefont = font_add_sprite_ext(spr_numbersfontbig, "0123456789", 20, 0)
            global.damagefontgold = font_add_sprite_ext(spr_numbersfontbig_gold, "0123456789+-%", 20, 0)
            global.hpfont = font_add_sprite_ext(spr_numbersfontsmall, "0123456789-+", 0, 2)
            for (i = 0; i < 100; i += 1)
                global.tempflag[i] = 0
            global.heartx = 300
            global.hearty = 220
            1
            if (!1131)
                gml_Script_instance_create(0, 0, obj_time)
            global.screen_border_id = gml_Script_stringsetloc("Dynamic", "obj_initializer2_slash_Create_0_gml_22_0")
        }
        ("************* " + string(global.savedata_debuginfo))
    }
}
