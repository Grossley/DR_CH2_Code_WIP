if (global.chapter == 2)
{
    if (room == room_dw_mansion_b_west_2f)
    {
        global.tempflag[33] = (global.tempflag[33] + 1)
    }
}
if (global.flag[35] == 0)
{
    audio_stop_all()
    gml_Script_snd_play(snd_hurt1)
    global.screenshot = sprite_create_from_surface(application_surface, 0, 0, gml_Script___view_get(2, 0), gml_Script___view_get(3, 0), false, false, 0, 0)
    gml_Script_snd_free_all()
    room_goto(room_gameover)
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
    gml_Script_snd_play(snd_hurt1)
    gml_Script_snd_free_all()
    global.entrance = 0
    global.tempflag[9] = 1
    global.fighting = false
    global.interact = 0
    global.hp[0] = 1
    global.hp[1] = 1
    global.hp[2] = 1
    global.hp[3] = 1
    __room = room
    if (global.chapter == 2)
    {
        with (gml_Script_instance_create(0, 0, obj_persistentfadein))
            image_alpha = 1.2
    }
    room_goto(__room)
}
return;
