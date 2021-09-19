if (active == false)
    return;
with (other)
{
    gml_Script_snd_play_pitch(141, (1.1 + random(0.2)))
    instance_destroy()
    event_user(0)
}
if (alarm[0] > 0)
    return;
hp -= 10
alarm[0] = 10
gml_Script_snd_play(170)
