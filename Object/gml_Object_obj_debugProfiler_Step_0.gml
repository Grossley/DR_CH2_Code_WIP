var _temp_local_var_7;
if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("C")))
{
    gml_Script_snd_play_pitch(55, 1.2)
    if (!gml_Script_i_ex(27))
        gml_Script_instance_create(x, y, obj_debug_drawInput)
    else
        gml_Script_safe_delete(27)
}
if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(vk_up))
{
    gml_Script_snd_play(21)
    if (showdebug == 0)
        showdebug = 1
    else
        showdebug = 0
    show_debug_overlay(showdebug)
    gml_Script_scr_debug_print(("showdebug = " + string(showdebug)))
}
if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("D")))
{
    if (writedisplay == 0)
        writedisplay = 1
    else
        writedisplay = 0
    for (var i = (array_length_1d(global.flag) - 1); i > -1; i--)
        lastval[i] = global.flag[i]
    gml_Script_snd_play_pitch(289, 1.1)
}
if (writedisplay == 1)
{
    for (i = (array_length_1d(global.flag) - 1); i > -1; i--)
    {
        if (lastval[i] != global.flag[i])
            gml_Script_debug_message(((((("global.flag[" + string(i)) + "] has been changed from ") + string(lastval[i])) + " to ") + string(global.flag[i])))
    }
    for (i = (array_length_1d(global.flag) - 1); i > -1; i--)
        lastval[i] = global.flag[i]
}
if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("P")))
{
    var dump_date = ((((((((((string(date_get_year(date_current_datetime())) + "_") + string(date_get_month(date_current_datetime()))) + "_") + string(date_get_day(date_current_datetime()))) + "_") + string(date_get_hour(date_current_datetime()))) + "_") + string(date_get_minute(date_current_datetime()))) + "_") + string(date_get_second(date_current_datetime())))
    ini_open((("activeObjectList_" + dump_date) + ".txt"))
    ini_write_string("objects", "total number of objects at call", string(instance_count))
    with (all)
    {
        var sid = (("[" + string(id)) + "]")
        var writestring = object_get_name(object_index)
        if (persistent == true)
            writestring += " [persistent object]"
        if (visible == false)
            writestring += " [not visible]"
        ini_write_string("objects", sid, writestring)
    }
    ini_close()
    gml_Script_snd_play(57)
    file_text_open_read((("activeObjectList_" + dump_date) + ".txt"))
}
if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("T")))
{
    gml_Script_snd_play_pitch(110, 0.8)
    if (cutsceneshow == 1)
        cutsceneshow = 0
    else
        cutsceneshow = 1
    gml_Script_scr_debug_print(("cutsceneshow = " + string(cutsceneshow)))
}
if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("G")))
{
    global.chemg_god_mode = (1 - global.chemg_god_mode)
    if (global.chemg_god_mode == 1)
        gml_Script_snd_play_pitch(154, 1.5)
    if (global.chemg_god_mode == 0)
        gml_Script_snd_play_pitch(154, 0.5)
}
if (global.chemg_god_mode == 1)
{
    for (i = 0; i < 6; i++)
    {
        if (global.hp[i] < global.maxhp[i])
        {
            var _temp_local_var_7 = global.hp[i]
            global.hp[i] = (global.hp[i] + 1)
        }
    }
}
if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("B")))
{
    with (obj_solidblock)
        visible = true
    gml_Script_snd_play(113)
}
if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("W")))
{
    windowswitcher = (1 - windowswitcher)
    if (windowswitcher == 0)
        window_set_size(1280, 960)
    if (windowswitcher == 1)
        window_set_size(640, 480)
    alarm[1] = 1
}
if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("I")))
{
    gml_Script_snd_play_pitch(55, 1.2)
    interactshower = (1 - interactshower)
}
if (keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("M")))
{
    gml_Script_scr_change_language()
    gml_Script_scr_84_load_ini()
    room_restart()
}
