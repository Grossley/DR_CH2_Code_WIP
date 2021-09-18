global.is_console = (os_type == os_switch || os_type == os_ps4)
global.screen_border_id = "Dynamic"
global.screen_border_active = 1
global.screen_border_alpha = 1
global.screen_border_state = 0
global.screen_border_dynamic_fade_id = 0
global.screen_border_dynamic_fade_level = 0
global.savedata_async_id = -1
global.savedata_async_load = 0
global.savedata_error = 0
global.savedata_debuginfo = ""
if global.is_console
    // WARNING: Popz'd an empty stack.
else
{
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
