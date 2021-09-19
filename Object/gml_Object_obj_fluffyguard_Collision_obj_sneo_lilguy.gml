if (active == false)
    return;
with (other)
{
    gml_Script_snd_play_pitch(141, (1.1 + random(0.2)))
    gml_Script_scr_afterimage_cut()
    instance_destroy()
}
if (alarm[0] > 0)
    return;
gml_Script_snd_play(166)
hp -= 10
alarm[0] = 10
gml_Script_snd_play(170)
