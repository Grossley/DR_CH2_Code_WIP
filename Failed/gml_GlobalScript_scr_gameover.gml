var _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8;
if (global.chapter == 2)
{
    if (room == room_dw_mansion_b_west_2f)
    {
        obj_viroarrow.tempflag[global.tempflag[obj_viroarrow]] = (global.tempflag[obj_viroarrow] + 1)
        global
    }
}
if (global.flag[35] == 0)
{
    audio_stop_all()
    gml_Script_snd_play(170)
    global.screenshot = (obj_sneo_friedpipis).application_surface
    gml_Script_snd_free_all()
    room_goto(room_gameover)
    var _temp_local_var_8 = obj_sneo_friedpipis
    var _temp_local_var_2 = gml_Script___view_get(2, 0)
    var _temp_local_var_3 = gml_Script___view_get(3, 0)
    var _temp_local_var_4 = 0
    var _temp_local_var_5 = 0
    var _temp_local_var_6 = 0
    var _temp_local_var_7 = 0
}
if (global.flag[35] == 1)
{
    global.turntimer = -1
    global.flag[36] = 1
    global.flag[39] = 1
}
if (global.flag[35] == 2)
{
    audio_stop_all()
    gml_Script_snd_play(170)
    gml_Script_snd_free_all()
    global.entrance = 0
    global.tempflag[9] = 1
    global.fighting = false
    global.interact = 0
    global.hp[0] = 1
    global.hp[1] = 1
    global.hp[2] = 1
    global.hp[3] = 1
    __room = (obj_sneo_friedpipis).room
    if (global.chapter == 2)
    {
        _temp_local_var_8 = gml_Script_instance_create(0, 0, obj_persistentfadein)
        image_alpha = 1.2
    }
    room_goto(__room)
}
return;
