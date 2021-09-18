var _temp_local_var_1;
if (caught[other.which] == 0)
{
    caught[other.which] = 1
    if (other.parentid.object_index == obj_maus_enemy)
    {
        56
        56
        gml_Script_snd_volume(56, 1, 0)
    }
    else
    {
        64
        64
        gml_Script_snd_volume(64, 0.8, 0)
    }
}
monsterhit[other.which] = 1
caught[other.which] = maker
var _temp_local_var_1 = 1
actfailure = 0
