if gml_Script_i_ex(1126)
{
    with (obj_ch2_noellepuzzle_forcefield)
    {
        if (forcefield_id == other.forcefield_id)
        {
            gml_Script_snd_play(46)
            fadeout = 1
        }
    }
}
if gml_Script_i_ex(1013)
{
    with (obj_ch2_city_noelle_monologue)
        alarm[0] = 1
}
