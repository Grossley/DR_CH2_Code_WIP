global.is_console = (os_type == os_switch || os_type == os_ps4)
global.chapter_debug_init = 0
global.savedata_async_id = -1
global.savedata_async_load = 0
global.savedata_error = 0
global.savedata_debuginfo = ""
"DELTARUNE Chapter 1&2"
if 1645
{
    with (obj_time_ch1)
        // WARNING: Popz'd an empty stack.
}
if 1131
{
    with (obj_time)
        // WARNING: Popz'd an empty stack.
}
if 1665
{
    with (obj_debugcontroller_ch1)
        // WARNING: Popz'd an empty stack.
}
if "chapter_return"
{
    global.lang_loaded = ""
    var load_chapter = global.chapter_return
    global.chapter_return = -1
    // WARNING: Popz'd an empty stack.
    if (load_chapter == 1)
    {
        280
        return;
    }
    else if (load_chapter == 2)
    {
        10
        return;
    }
}
if (os_type == os_switch && (!"switchlogin"))
{
    for (var _id = -1; _id < 0; _id = switch_accounts_select_account(1, 0, 0))
    {
    }
    global.switchlogin = _id
    global.switchlogin
}
first_time = global.is_console
init_loaded = 0
display_height = 
display_width = 
window_size_multiplier = 1
for (_ww = 2; _ww < 6; _ww += 1)
{
    if (display_width > (640 * _ww) && display_height > (480 * _ww))
        window_size_multiplier = _ww
}
if (window_size_multiplier > 1)
{
    window_set_size((640 * window_size_multiplier), (480 * window_size_multiplier))
    alarm[0] = 1
}
if global.is_console
{
    1
    0
}
global.debug = 1
con = "init"
file_found = 0
highestUncompletedChapter = 0
highestCompletedChapter = 0
stringset = "0"
yes = "Yes"
no = "No"
mpos = 0
chapterselectinit = 0
timer = 0
drawcolor = 0
yy = (room_height / 2)
xx = (room_width / 2)
fademax = 10
fade = fademax
chaptertoload = 0
chaptertoload_temp = 0
console = (os_type == os_switch || os_type == os_ps4)
latestAvailableChapter = 2
chapname[0] = " - - "
chapname[1] = "The Beginning"
chapname[2] = "A Cyber's World"
chapname[3] = " - - "
chapname[4] = " - - "
chapname[5] = " - - "
chapname[6] = " - - "
chapname[7] = " - - "
text_font = 3
roominit = 0
scale = 1
fadeout = 1
xscale = 1
yscale = 1
spr_aftereffect = 0
confirm_choice_index = 0
move_noise = 0
select_noise = 0
for (i = 0; i < 10; i += 1)
{
    global.input_pressed[i] = 0
    global.input_held[i] = 0
    global.input_released[i] = 0
}
if global.is_console
{
    if (os_type == os_switch)
    {
        // WARNING: Popz'd an empty stack.
        1
        7
    }
    if (os_type == os_ps4)
        0
    // WARNING: Popz'd an empty stack.
}
else
{
    var _locale = 
    var _lang = (gml_Script_substr(_locale, 1, 2) != "ja" ? "en" : "ja")
    global.lang = _lang
    if "true_config.ini"
    {
        "true_config.ini"
        global.lang = ini_read_string("LANG", "LANG", _lang)
        var is_fullscreen = ini_read_real("SCREEN", "FULLSCREEN", 0)
        is_fullscreen
        // WARNING: Popz'd an empty stack.
    }
    text_font = (global.lang == "en" ? 3 : 10)
    yes = (global.lang == "en" ? "Yes" : "はい")
    no = (global.lang == "en" ? "No" : "いいえ")
    chapname[1] = (global.lang == "en" ? "The Beginning" : "はじまり")
    chapname[2] = (global.lang == "en" ? "A Cyber's World" : "サイバーワールド")
    // WARNING: Popz'd an empty stack.
    1
    init_loaded = 1
}
