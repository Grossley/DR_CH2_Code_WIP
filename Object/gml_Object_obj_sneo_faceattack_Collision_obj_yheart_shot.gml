if (type == 0 || image_alpha < 0.9)
    return;
if (broken == 1)
{
    gml_Script_snd_play(39)
    var _temp_local_var_2 = other
    event_user(0)
}
if (invincibilitytimer > 0 && other.big == 0)
{
    var _temp_local_var_4 = other
    instance_destroy()
}
shake = 6
if (other.big == 0)
{
    if (type == 1)
        obj_spamton_neo_enemy.eyeshp -= 1
    if (type == 2)
        obj_spamton_neo_enemy.nosehp -= 1
    if (type == 3)
        obj_spamton_neo_enemy.mouthhp -= 1
}
else
{
    if (type == 1)
        obj_spamton_neo_enemy.eyeshp -= 4
    if (type == 2)
        obj_spamton_neo_enemy.nosehp -= 4
    if (type == 3)
        obj_spamton_neo_enemy.mouthhp -= 4
}
gml_Script_snd_play(166)
invincibilitytimer = 10
hurtflashtimer = 3
if ((type == 1 && obj_spamton_neo_enemy.eyeshp <= 0) || (type == 2 && obj_spamton_neo_enemy.nosehp <= 0) || (type == 3 && obj_spamton_neo_enemy.mouthhp <= 0))
{
    broken = 1
    image_index = 2
    gml_Script_snd_volume(220, 1, 0)
    gml_Script_snd_play(220)
    explodetimer = 16
}
var _temp_local_var_7 = other
event_user(0)
