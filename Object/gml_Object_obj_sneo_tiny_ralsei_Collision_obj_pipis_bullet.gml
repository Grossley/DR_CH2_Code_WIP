if (active == false)
    return;
with (other)
    event_user(1)
if (alarm[0] > 0)
    return;
hp -= 10
alarm[0] = 10
sn = gml_Script_snd_play(170)
