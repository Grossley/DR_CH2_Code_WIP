if (instance_exists(obj_lottery_holemouse_generator) && inert == 0)
{
    obj_lottery_holemouse_generator.gentimer = 15
    obj_lottery_holemouse_generator.mousecreate = 1
    gml_Script_snd_play(176)
    timer = 0
    freezeplayer = 1
}