audio_stop_all()
gml_Script_snd_play_ch1(438)
if (room != room_forest_fightsusie_ch1)
{
    global.screenshot = sprite_create_from_surface(application_surface, 0, 0, gml_Script___view_get(2, 0), gml_Script___view_get(3, 0), false, false, 0, 0)
    gml_Script_snd_free_all_ch1()
    room_goto(room_gameover_ch1)
}
else
{
    global.entrance = 0
    global.tempflag[9] = 1
    room_goto(room_forest_savepoint3_ch1)
}
return;
