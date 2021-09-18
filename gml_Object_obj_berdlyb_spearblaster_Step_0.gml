if (con == 0 && image_index >= 3.5)
{
    gml_Script_snd_volume(159, 1, 0)
    159
    con = 1
}
if (con == 1 && image_index >= 9.5)
{
    var sa = gml_Script_snd_play_pitch(39, 0.6)
    var sb = gml_Script_snd_play_pitch(39, 0.8)
    gml_Script_snd_volume(sa, 0.5, 0)
    gml_Script_snd_volume(sb, 0.5, 0)
    con = 2
}
if (con == 2 && image_index >= 14.5)
{
    158
    con = 3
}
