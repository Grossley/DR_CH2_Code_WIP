if (active == true)
{
    gml_Script_snd_stop(170)
    gml_Script_snd_play(170)
    if (target != 3)
        gml_Script_scr_damage()
    if (target == 3)
        gml_Script_scr_damage_all_overworld()
    with (obj_darkcontroller)
        charcon = 1
    global.interact = 1
    with (obj_mainchara)
        alarm[1] = 7
    hit = 1
}
