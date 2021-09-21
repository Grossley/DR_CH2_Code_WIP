instance_destroy()
with (other)
{
    gml_Script_snd_play_pitch(snd_bomb, (1.1 + random(0.2)))
    gml_Script_scr_afterimage_cut()
    instance_destroy()
}
gml_Script_snd_play(snd_damage)
