if (con == 0 && image_index >= 3.5)
{
    gml_Script_snd_volume(snd_jump, 1, 0)
    gml_Script_snd_play(snd_jump)
    con = 1
}
if (con == 1 && image_index >= 9.5)
{
    var sa = gml_Script_snd_play_pitch(snd_bell, 0.6)
    var sb = gml_Script_snd_play_pitch(snd_bell, 0.8)
    gml_Script_snd_volume(sa, 0.5, 0)
    gml_Script_snd_volume(sb, 0.5, 0)
    con = 2
}
if (con == 2 && image_index >= 14.5)
{
    gml_Script_snd_play(snd_criticalswing)
    con = 3
}
