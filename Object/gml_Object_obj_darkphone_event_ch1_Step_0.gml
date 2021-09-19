if (con == 0)
{
    con = 1
    alarm[4] = 40
}
if (con == 1)
    global.interact = 1
if (con == 2)
{
    sndplay = false
    if gml_Script_snd_is_playing_ch1(global.currentsong[1])
    {
        sndplay = true
        gml_Script_snd_pause_ch1(global.currentsong[1])
    }
    gml_Script_snd_play_ch1(371)
    con = 3
    alarm[4] = 200
}
if (con == 4)
{
    with (obj_dialoguer_ch1)
        instance_destroy()
    with (obj_writer_ch1)
        instance_destroy()
    con = 7
}
if (con == 7)
{
    gml_Script_snd_stop_ch1(371)
    if (sndplay == true)
        gml_Script_snd_resume_ch1(global.currentsong[1])
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_darkphone_event_slash_Step_0_gml_42_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 5
    global.interact = 6
    instance_destroy()
}
