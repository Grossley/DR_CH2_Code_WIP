audio_stop_all()
gml_Script_snd_play_ch1(438)
if (room != room_forest_fightsusie_ch1)
{
    global.screenshot = (obj_sneo_friedpipis).application_surface
    gml_Script_snd_free_all_ch1()
    room_goto(room_gameover_ch1)
    var _temp_local_var_1 = 0
    var _temp_local_var_2 = gml_Script___view_get(2, 0)
    var _temp_local_var_3 = gml_Script___view_get(3, 0)
    var _temp_local_var_4 = 0
    var _temp_local_var_5 = 0
    var _temp_local_var_6 = 0
    var _temp_local_var_7 = 0
}
else
{
    global.entrance = 0
    global.tempflag[9] = 1
    room_goto(room_forest_savepoint3_ch1)
}
return;
