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
