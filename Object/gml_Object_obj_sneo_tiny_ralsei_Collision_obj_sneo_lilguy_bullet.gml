if (active == false)
    return;
with (other)
    instance_destroy()
if (alarm[0] > 0)
    return;
hp -= 10
alarm[0] = 10
gml_Script_snd_play(170)
