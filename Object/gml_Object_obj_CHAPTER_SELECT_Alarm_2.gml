var _temp_local_var_1;
audio_stop_all()
global.lang_loaded = ""
var _temp_local_var_1 = chaptertoload_temp
switch chaptertoload_temp
{
    case 1:
        room_goto(ROOM_INITIALIZE_ch1)
        break
    case 2:
        room_goto(ROOM_INITIALIZE)
        break
}

