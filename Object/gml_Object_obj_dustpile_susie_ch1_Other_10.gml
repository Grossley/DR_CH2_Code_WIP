if (bust == 0)
{
    gml_Script_snd_free_ch1(global.currentsong[0])
    global.interact = 1
    gml_Script_instance_create_ch1(0, 0, 1464)
    gml_Script_snd_play_ch1(456)
    con = 10
    bust = 1
    for (i = 0; i < 12; i += 1)
        gml_Script_instance_create_ch1(((x + 20) + (i * 6)), ((y + 20) + random(25)), 1474)
    s = gml_Script_scr_dark_marker_ch1((x + 10), y, 3554)
    with (s)
        gml_Script_scr_depth_ch1()
    alarm[4] = 2
    with (s)
        hspeed = 10
    with (obj_mainchara_ch1)
        cutscene = false
}
