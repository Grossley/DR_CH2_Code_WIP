if gml_Script_i_ex(obj_ch2_noellepuzzle_forcefield)
{
    with (obj_ch2_noellepuzzle_forcefield)
    {
        if (forcefield_id == other.forcefield_id)
        {
            gml_Script_snd_play(snd_spearappear)
            fadeout = 1
        }
    }
}
