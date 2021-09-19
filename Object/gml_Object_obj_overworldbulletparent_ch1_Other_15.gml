if (active == true)
{
    gml_Script_snd_stop_ch1(438)
    gml_Script_snd_play_ch1(438)
    if (target != 3)
        gml_Script_scr_damage_ch1()
    if (target == 3)
        gml_Script_scr_damage_all_overworld_ch1()
    with (obj_darkcontroller_ch1)
        charcon = 1
    global.interact = 1
    with (obj_mainchara_ch1)
        alarm[1] = 7
}
